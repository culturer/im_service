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
//const getClass = 5

func (this *CircleController) Post() {
	options, err := this.GetInt("options", -1)
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
			//case addReply:
			//	this.addReply()
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
	sql := fmt.Sprintf("select * from t_article where article_id in (select article_id from t_c_article where circle_id = %d)  order by create_time desc limit %d,%d ", circleId, pageSize, pageCount)
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
	sql := fmt.Sprintf("select * from t_article where article_id in (select article_id from t_c_class_article where circle_id = %d)  order by create_time desc limit %d,%d ", circleId, pageSize, pageCount)
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
	var grads []*models.TCGrad
	sql := fmt.Sprintf("select * from t_c_grad where circle_id=%d", circleId)
	_, err = o.Raw(sql).QueryRows(&grads)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "circle": circle, "grads": grads, "time": time.Now().Format("2006-01-02 15:04:05")}
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

func (this *CircleController) dealError(err error) {
	if err != nil {
		logs.Error("RecommendController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
