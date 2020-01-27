package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	"time"
)

type RecommendController struct {
	beego.Controller
}

const getRecommends = 0 //获取好友动态
//const createArticle = 1     //获取好友动态
//const addComment = 2
//const addLikes = 3
//const delArticle = 4
//const addReply = 5

func (this *RecommendController) Post() {
	options, err := this.GetInt("options", -1)
	this.dealError(err)
	//检查请求的方法
	if options != -1 {
		switch options {
		case getRecommends:
			this.getRecommends()
			//case createArticle:
			//	this.createArticle()
			//case addComment:
			//	this.addComment()
			//case addLikes:
			//	this.addLikes()
			//case delArticle:
			//	this.delArticle()
			//case addReply:
			//	this.addReply()
		}
	}
	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "options is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *RecommendController) getRecommends() {

	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	sex, err := this.GetBool("sex", false)
	this.dealError(err)
	age, err := this.GetInt8("age")
	logs.Info("userId:", userId, "age:", age, "sex:", sex)

	var tmpArticles []models.TArticle
	sql := fmt.Sprintf("select * from t_article order by create_time desc limit %d,%d ", 0, 30)
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

func (this *RecommendController) dealError(err error) {
	if err != nil {
		logs.Error("RecommendController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
