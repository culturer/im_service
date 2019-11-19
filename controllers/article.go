package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	"time"
)

type ArticleController struct {
	beego.Controller
}

const getFriendsArticle = 0 //获取好友动态
const createArticle = 1     //获取好友动态

type Article struct {
	Article  *models.TArticle
	Comments []*models.TComment
	Likes    []*models.TLikes
}

func (this *ArticleController) Post() {
	options, err := this.GetInt("options", -1)
	this.dealError(err)
	//检查请求的方法
	if options != -1 {
		switch options {
		case getFriendsArticle:
			this.getFriendsArticle()
		case createArticle:
			this.createArticle()
		}
	}

	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "options is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) getFriendsArticle() {
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	page, err := this.GetInt("page", 0)
	this.dealError(err)
	pageSize, err := beego.AppConfig.Int("article_page_size")
	this.dealError(err)
	var tmpArticles []models.TArticle
	sql := fmt.Sprintf("select * from t_article where belong_id=%d order by create_time desc limit %d,%d ", userId, page*pageSize, pageSize)
	o := orm.NewOrm()
	_, err = o.Raw(sql).QueryRows(&tmpArticles)
	logs.Info("articles ", tmpArticles)
	this.dealError(err)
	articles := make([]Article, 0)
	for i := 0; i < len(tmpArticles); i++ {
		tmpArticle := Article{}
		tmpArticle.Article = &tmpArticles[i]
		sql = fmt.Sprintf("select * from t_comment where article_id=%d order by create_time ", tmpArticles[i].Id)
		logs.Info("sql", sql)
		var tmpComments []*models.TComment
		_, err = o.Raw(sql).QueryRows(&tmpComments)
		this.dealError(err)
		logs.Info("comment ", tmpComments)
		tmpArticle.Comments = tmpComments
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

func (this *ArticleController) createArticle() {

}

func (this *ArticleController) dealError(err error) {
	if err != nil {
		logs.Error("ArticleController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
