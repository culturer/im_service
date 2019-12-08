package models

import "time"

//圈子表
type TCircle struct {
	Id         int64
	Name       string    //圈子名称
	Icon       string    //头像
	Msg        string    //简介
	members    int64     //会员数
	ShopId     int64     //商城编号
	Belong1    int64     //圈主
	Belong2    int64     //副圈主
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
}

//圈子管理团队
type TCManager struct {
	Id          int64
	CircleId    int64     //管理的圈子编号
	ManagerGrad int32     //管理员等级
	Username    string    //用户名
	UserIcon    string    //用户头像
	UserId      int64     //用户编号
	ViewCount   int64     //浏览帖子数
	SignTime    time.Time `orm:"type(datetime)"`
	SignCount   int64     //签到次数
	SignAlian   int64     //连续签到数
	ReplyCount  int64     //回复数
	ReplyLen    int64     //回复字数
}

//圈子等级
type TCGrad struct {
	Id        int64
	CircleId  int64  //圈子编号
	GradnName string //圈子名称
	GradCount int8   //具体的等级数
	IsManager bool   //是否是管理员等级
}

//圈子用户对应的表
type TCUser struct {
	Id          int64
	UserId      int64     //用户编号
	Username    string    //用户名
	UserIcon    string    //用户头像
	CircleId    int64     //圈子编号
	CircleGrad  int8      //圈子等级
	SignTime    time.Time `orm:"type(datetime)"`
	SignCount   int64     //签到次数
	SignAlian   int64     //连续签到数
	ReplyCount  int64     //回复数
	ReplyLen    int64     //回复字数
	ViewCount   int64     //浏览帖子数
	GetDataTime time.Time `orm:"type(datetime)"` //上次请求数据的时间
}

//圈子对应的帖子编号
type TCArticle struct {
	Id        int64
	ArticleId int64 //文章编号
	BelongId  int64 //用户编号
}