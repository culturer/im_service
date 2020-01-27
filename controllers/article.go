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
const createArticle = 1     //创建动态
const addComment = 2        //新增评论
const addLikes = 3          //点赞
const delArticle = 4        //删除文章
const addReply = 5          //回复评论
const getSelfArticle = 6    //获取自己的动态

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
		case addComment:
			this.addComment()
		case addLikes:
			this.addLikes()
		case delArticle:
			this.delArticle()
		case addReply:
			this.addReply()
		case getSelfArticle:
			this.getSelfArticle()
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
	sql := fmt.Sprintf("select * from t_article where belong_id=%d or belong_id in (select friend from t_user_list where belong=%d) order by create_time desc limit %d,%d ", userId, userId, page*pageSize, pageSize)
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
		tmpArticle.Comments = tmpComments
		//查询评论的回复
		sql = fmt.Sprintf("select * from t_reply where article_id=%d order by create_time ", tmpArticles[i].Id)
		logs.Info("sql", sql)
		var tmpReplys []*models.TReply
		_, err = o.Raw(sql).QueryRows(&tmpReplys)
		this.dealError(err)
		tmpArticle.Replys = tmpReplys
		//查询点赞信息
		sql = fmt.Sprintf("select * from t_likes where article_id=%d order by create_time ", tmpArticles[i].Id)
		var tmpLikes []*models.TLikes
		_, err = o.Raw(sql).QueryRows(&tmpLikes)
		this.dealError(err)
		tmpArticle.Likes = tmpLikes
		articles = append(articles, tmpArticle)
	}
	this.Data["json"] = map[string]interface{}{"status": 200, "articles": articles, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) createArticle() {

	belongId, err := this.GetInt64("belongId", -1)
	this.dealError(err)
	icon := this.GetString("icon", "")
	username := this.GetString("username", "")
	images := this.GetString("images", "")
	video := this.GetString("video", "")
	content := this.GetString("content", "")

	var article models.TArticle
	article.BelongId = belongId
	article.Icon = icon
	article.Username = username
	article.Imgs = images
	article.Video = video
	article.Content = content
	o := orm.NewOrm()
	articleId, err := o.Insert(&article)
	this.dealError(err)
	article.Id = articleId

	this.Data["json"] = map[string]interface{}{"status": 200, "article": article, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) addComment() {
	belongId, err := this.GetInt64("belongId", -1)
	this.dealError(err)
	articleId, err := this.GetInt64("articleId", -1)
	this.dealError(err)
	username := this.GetString("username", "")
	icon := this.GetString("icon", "")
	content := this.GetString("content", "")

	var comment models.TComment
	comment.BelongId = belongId
	comment.ArticleId = articleId
	comment.Username = username
	comment.Icon = icon
	comment.Content = content

	o := orm.NewOrm()
	commentId, err := o.Insert(&comment)
	this.dealError(err)
	comment.Id = commentId

	this.Data["json"] = map[string]interface{}{"status": 200, "comment": comment, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) addLikes() {
	belongId, err := this.GetInt64("belongId", -1)
	this.dealError(err)
	articleId, err := this.GetInt64("articleId", -1)
	this.dealError(err)
	username := this.GetString("username", "")
	icon := this.GetString("icon", "")

	var like models.TLikes
	like.Icon = icon
	like.BelongId = belongId
	like.ArticleId = articleId
	like.Username = username

	o := orm.NewOrm()
	likeId, err := o.Insert(&like)
	this.dealError(err)
	like.Id = likeId

	this.Data["json"] = map[string]interface{}{"status": 200, "like": like, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) delArticle() {
	articleId, err := this.GetInt64("articleId", -1)
	logs.Info("articleId:", articleId)
	this.dealError(err)
	belongId, err := this.GetInt64("belongId", -1)
	logs.Info("belongId:", belongId)
	this.dealError(err)
	o := orm.NewOrm()
	_, err = o.Delete(&models.TArticle{Id: articleId, BelongId: belongId})
	this.dealError(err)
	_, err = o.Delete(&models.TComment{ArticleId: articleId})
	this.dealError(err)
	_, err = o.Delete(&models.TLikes{ArticleId: articleId})
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "msg": "del article success !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) addReply() {

	belongId, err := this.GetInt64("belongId", -1)
	this.dealError(err)
	articleId, err := this.GetInt64("articleId", -1)
	this.dealError(err)
	commentId, err := this.GetInt64("commentId", -1)
	this.dealError(err)
	username := this.GetString("username", "")
	icon := this.GetString("icon", "")
	content := this.GetString("content", "")

	var reply models.TReply
	reply.Username = username
	reply.BelongId = belongId
	reply.ArticleId = articleId
	reply.CommentId = commentId
	reply.Icon = icon
	reply.Content = content

	o := orm.NewOrm()
	replyId, err := o.Insert(&reply)
	this.dealError(err)
	reply.Id = replyId

	this.Data["json"] = map[string]interface{}{"status": 200, "reply": reply, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ArticleController) getSelfArticle() {

}

func (this *ArticleController) dealError(err error) {
	if err != nil {
		logs.Error("ArticleController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
