package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	"time"
)

type CircleController struct {
	beego.Controller
}

const getCircleArticles = 0      //获取最新动态
const getCircleClassArticles = 1 //获取精华动态
const getShopDatas = 2           //获取商城动态
const getCircleInfo = 3          //获取圈子基本信息
const getCuserInfo = 4           //获取圈子对应的用户信息
const searchCircle = 5           //搜索圈子
const getRecommendsLabel = 6     //搜索圈子
const checkCircleName = 7        //圈子核名
const createCircle = 8           //新建圈子
const getCircleList = 9          //获取圈子列表
const signCircle = 10            //圈子签到
const focusCircle = 11           //关注圈子

func (this *CircleController) Post() {
	options, err := this.GetInt("options", -1)
	logs.Info(options)
	this.dealError(err)
	//检查请求的方法
	if options != -1 {
		switch options {
		case getCircleArticles:
			this.getCircleArticles()
		case getCircleClassArticles:
			this.getCircleClassArticles()
		case getShopDatas:
			this.getShopDatas()
		case getCircleInfo:
			this.getCircleInfo()
		case getCuserInfo:
			this.getCuserInfo()
		case searchCircle:
			this.searchCircle()
		case getRecommendsLabel:
			this.getRecommendsLabel()
		case checkCircleName:
			this.checkCircleName()
		case createCircle:
			this.createCircle()
		case getCircleList:
			this.getCircleList()
		case signCircle:
			this.signCircle()
		case focusCircle:
			this.focusCircle()
		}
	}
	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "options is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) getCircleArticles() {
	pageSize, err := this.GetInt("page_size", 30)
	this.dealError(err)
	pageCount, err := this.GetInt("page_count", 0)
	this.dealError(err)
	circleId, err := this.GetInt64("circleId", -1)
	this.dealError(err)
	var tmpArticles []models.TArticle
	//备用sql,调试成功后删除
	sql := fmt.Sprintf("select * from t_article where id in (select article_id from t_c_article where circle_id = %d)  order by create_time desc limit %d,%d ", circleId, pageCount, pageSize)
	logs.Info(sql)
	//sql := fmt.Sprintf("select * from t_article where id in (select article_id from t_c_article where circle_id = %d)  order by create_time desc  ", circleId)
	o := orm.NewOrm()
	_, err = o.Raw(sql).QueryRows(&tmpArticles)
	this.dealError(err)
	articles := make([]Article, 0)
	for i := 0; i < len(tmpArticles); i++ {
		tmpArticle := Article{}
		tmpArticle.Article = &tmpArticles[i]
		//查询评论
		sql = fmt.Sprintf("select * from t_comment where article_id=%d order by create_time ", tmpArticles[i].Id)
		logs.Info("sql", sql)
		var tmpComments []*models.TComment
		_, err = o.Raw(sql).QueryRows(&tmpComments)
		this.dealError(err)
		logs.Info("comment ", tmpComments)
		tmpArticle.Comments = tmpComments
		//查询评论的回复
		sql = fmt.Sprintf("select * from t_reply where article_id=%d order by create_time ", tmpArticles[i].Id)
		logs.Info("sql", sql)
		var tmpReplys []*models.TReply
		_, err = o.Raw(sql).QueryRows(&tmpReplys)
		this.dealError(err)
		logs.Info("replys ", tmpReplys)
		tmpArticle.Replys = tmpReplys
		//查询点赞信息
		sql = fmt.Sprintf("select * from t_likes where article_id=%d order by create_time ", tmpArticles[i].Id)
		var tmpLikes []*models.TLikes
		_, err = o.Raw(sql).QueryRows(&tmpLikes)
		this.dealError(err)
		logs.Info("likes", tmpLikes)
		tmpArticle.Likes = tmpLikes
		articles = append(articles, tmpArticle)
		logs.Info("articles", articles)
	}
	this.Data["json"] = map[string]interface{}{"status": 200, "articles": articles, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) getCircleClassArticles() {
	pageSize, err := this.GetInt("page_size", 30)
	this.dealError(err)
	pageCount, err := this.GetInt("page_count", 0)
	this.dealError(err)
	circleId, err := this.GetInt64("circleId", -1)
	this.dealError(err)
	var tmpArticles []models.TArticle
	sql := fmt.Sprintf("select * from t_article where id in (select article_id from t_c_article where circle_id = %d) and article_id in (select article_id from t_comment group by article_id having count(*)>20) order by create_time desc limit %d,%d ", circleId, pageSize, pageCount)
	o := orm.NewOrm()
	_, err = o.Raw(sql).QueryRows(&tmpArticles)
	this.dealError(err)
	articles := make([]Article, 0)
	for i := 0; i < len(tmpArticles); i++ {
		tmpArticle := Article{}
		tmpArticle.Article = &tmpArticles[i]
		//查询评论
		sql = fmt.Sprintf("select * from t_comment where article_id=%d order by create_time ", tmpArticles[i].Id)
		logs.Info("sql", sql)
		var tmpComments []*models.TComment
		_, err = o.Raw(sql).QueryRows(&tmpComments)
		this.dealError(err)
		logs.Info("comment ", tmpComments)
		tmpArticle.Comments = tmpComments
		//查询评论的回复
		sql = fmt.Sprintf("select * from t_reply where article_id=%d order by create_time ", tmpArticles[i].Id)
		logs.Info("sql", sql)
		var tmpReplys []*models.TReply
		_, err = o.Raw(sql).QueryRows(&tmpReplys)
		this.dealError(err)
		logs.Info("replys ", tmpReplys)
		tmpArticle.Replys = tmpReplys
		//查询点赞信息
		sql = fmt.Sprintf("select * from t_likes where article_id=%d order by create_time ", tmpArticles[i].Id)
		var tmpLikes []*models.TLikes
		_, err = o.Raw(sql).QueryRows(&tmpLikes)
		this.dealError(err)
		logs.Info("likes", tmpLikes)
		tmpArticle.Likes = tmpLikes
		articles = append(articles, tmpArticle)
		logs.Info("articles", articles)
	}
	this.Data["json"] = map[string]interface{}{"status": 200, "articles": articles, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) getShopDatas() {

}

func (this *CircleController) getCircleInfo() {
	circleId, err := this.GetInt64("circleId", -1)
	this.dealError(err)
	o := orm.NewOrm()
	var circle models.TCircle
	err = o.QueryTable("t_circle").Filter("id", circleId).One(&circle)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "circle": circle, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) getCuserInfo() {

	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	circleId, err := this.GetInt64("circleId", -1)
	this.dealError(err)
	var cuser models.TCUser
	o := orm.NewOrm()
	err = o.QueryTable("t_c_user").Filter("user_id", userId).Filter("circle_id", circleId).One(&cuser)
	this.Data["json"] = map[string]interface{}{"status": 200, "cuser": cuser, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) searchCircle() {
	match := this.GetString("match", "")
	if match != "" {
		var circle models.TCircle
		o := orm.NewOrm()
		err := o.QueryTable("t_circle").Filter("name", match).One(&circle)
		this.dealError(err)
		//var relative []*models.TCircle
		//sql := fmt.Sprintf("select * from t_circle where name LIKE %s", match)
		this.Data["json"] = map[string]interface{}{"status": 200, "circle": circle, "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	} else {
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": "match is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}

func (this *CircleController) getRecommendsLabel() {
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	logs.Info("userId --- ", userId)

}

func (this *CircleController) checkCircleName() {
	name := this.GetString("name", "")
	logs.Info(name)
	if name != "" {
		var circle models.TCircle
		o := orm.NewOrm()
		err := o.QueryTable("t_circle").Filter("name", name).One(&circle)
		if err != nil && err.Error() == "<QuerySeter> no row found" {
			this.Data["json"] = map[string]interface{}{"status": 200, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
			this.ServeJSON()
			return
		}
		this.dealError(err)
	} else {
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": "参数错误", "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}

func (this *CircleController) createCircle() {
	name := this.GetString("name", "")
	msg := this.GetString("msg", "")
	icon := this.GetString("icon", "")
	belong1, err := this.GetInt64("belong1")
	this.dealError(err)
	belong2, err := this.GetInt64("belong2")
	this.dealError(err)
	circle := models.TCircle{Name: name, Msg: msg, Icon: icon, Belong2: belong2, Belong1: belong1}
	o := orm.NewOrm()
	_id, err := o.Insert(&circle)
	circle.Id = _id
	cUser := models.TCUser{UserId: belong1, CircleId: circle.Id, CircleGrad: 0, SignTime: time.Now(), SignCount: 0, SignAlian: 0, ReplyCount: 0, ReplyLen: 0, ViewCount: 0, GetDataTime: time.Now()}
	cUserId, err := o.Insert(&cUser)
	cUser.Id = cUserId
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "circle": circle, "cuser": cUser, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) getCircleList() {
	userId, err := this.GetInt64("userId")
	this.dealError(err)
	//var circles []*Circle
	var cusers []*models.TCUser
	sql := fmt.Sprintf("select * from t_c_user where user_id = %d  order by circle_grad ", userId)
	o := orm.NewOrm()
	_, err = o.Raw(sql).QueryRows(&cusers)
	if cusers == nil || len(cusers) == 0 {
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": "还没有关注圈子哦！", "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
	var circles []*models.TCircle
	sql1 := fmt.Sprintf("select * from t_circle where id in (select circle_id from t_c_user where user_id = %d )", userId)
	_, err = o.Raw(sql1).QueryRows(&circles)
	this.Data["json"] = map[string]interface{}{"status": 200, "circle": circles, "cusers": cusers, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) signCircle() {
	userId, err := this.GetInt64("userId")
	this.dealError(err)
	circleId, err := this.GetInt64("circleId")
	this.dealError(err)
	var cUser models.TCUser
	o := orm.NewOrm()
	err = o.QueryTable("t_c_user").Filter("user_id", userId).Filter("circle_id", circleId).One(&cUser)
	this.dealError(err)
	if cUser.SignTime.Day() == time.Now().Day() {
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": "今天已经签到过了哦！", "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	} else {
		if cUser.SignTime.AddDate(0, 0, 1).Day() == time.Now().Day() {
			cUser.SignAlian = cUser.SignAlian + 1
		} else {
			cUser.SignAlian = 1
		}
		cUser.SignTime = time.Now()
		cUser.SignCount = cUser.SignCount + 1
		_, err = o.Update(&cUser)
		this.dealError(err)
		this.Data["json"] = map[string]interface{}{"status": 200, "msg": "签到成功！", "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}

func (this *CircleController) focusCircle() {
	logs.Info("关注圈子")
	userId, err := this.GetInt64("userId")
	this.dealError(err)
	circleId, err := this.GetInt64("circleId")
	this.dealError(err)
	cuser := models.TCUser{CircleId: circleId, UserId: userId, SignTime: time.Now(), SignCount: 0, SignAlian: 0, CircleGrad: 0, ReplyLen: 0, ReplyCount: 0, ViewCount: 0, GetDataTime: time.Now()}
	o := orm.NewOrm()
	cUserId, err := o.Insert(&cuser)
	cuser.Id = cUserId
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "cuser": cuser, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *CircleController) dealError(err error) {
	if err != nil {
		logs.Error("RecommendController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
