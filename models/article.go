package models

import (
	"encoding/json"
	"time"
)

//文章表
type TArticle struct {
	Id int64

	BelongId int64  //作者编号
	Icon     string //作者头像
	Username string //作者昵称

	Imgs       string    `orm:"type(type(text) )"` //图片，存json
	Video      string    //短视频链接
	Audio      string    //背景音乐
	Content    string    `orm:"type(type(text) )"` //内容
	IsInvalid  bool      //是否禁止
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间

}

//点赞
type TLikes struct {
	Id         int64
	BelongId   int64     //谁点的
	Username   string    //昵称
	Icon       string    //头像
	ArticleId  int64     //文章编号
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
}

//评论
type TComment struct {
	Id         int64
	BelongId   int64     //谁发的
	Username   string    //昵称
	Icon       string    //头像
	ArticleId  int64     //文章编号
	Content    string    //评论内容
	IsInvalid  bool      //是否禁止
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
}

//评论回复
type TReply struct {
	Id         int64
	BelongId   int64     //谁发的
	Username   string    //昵称
	Icon       string    //头像
	ArticleId  int64     //文章编号
	CommentId  int64     //评论编号
	Content    string    //回复内容
	IsInvalid  bool      //是否禁止
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
}

func (this TArticle) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type article TArticle
	// 定义一个新的结构体
	tmpArticle := struct {
		article
		CreateTime string `json:"CreateTime"`
	}{
		article:    (article)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpArticle)
}

func (this TLikes) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type likes TLikes
	// 定义一个新的结构体
	tmpLikes := struct {
		likes
		CreateTime string `json:"CreateTime"`
	}{
		likes:      (likes)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpLikes)
}

func (this TComment) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type comment TComment
	// 定义一个新的结构体
	tmpComment := struct {
		comment
		CreateTime string `json:"CreateTime"`
	}{
		comment:    (comment)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpComment)
}

func (this TReply) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type reply TReply
	// 定义一个新的结构体
	tmpReply := struct {
		reply
		CreateTime string `json:"CreateTime"`
	}{
		reply:      (reply)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpReply)
}
