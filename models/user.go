package models

import (
	"encoding/json"
	"time"
)

//用户表
type TUser struct {
	Id         int64
	Name       string    `orm:"size(50)"` //名字
	UserName   string    `orm:"size(50)"` //昵称
	Icon       string    //头像
	Tel        string    //手机号
	Email      string    //邮箱
	IdCard     string    //身份证号
	Sex        bool      //性别
	Pwd        string    //密码
	Sign       string    //签名
	City       int       //城市
	Birth      time.Time `orm:"auto_now_add;type(datetime)"` //生日
	Vip        time.Time `orm:"auto_now_add;type(datetime)"` //会员时间
	VipGrad    int       //会员等级
	Grad       int       //等级
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
	LoginTime  time.Time `orm:"auto_now_add;type(datetime)"` //最后登录时间
	BanTime    time.Time `orm:"type(datetime)"`              //封号时间

	Family *TFamily `orm:"rel(fk)"` //家庭

}

func (this TUser) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type user TUser
	// 定义一个新的结构体
	tmpStudent := struct {
		user
		Birth      string `json:"Birth"`
		Vip        string `json:"Vip"`
		CreateTime string `json:"CreateTime"`
		LoginTime  string `json:"LoginTime"`
		BanTime    string `json:"BanTime"`
	}{
		user:       (user)(this),
		Birth:      this.Birth.Format("2006-01-02 15:04:05"),
		Vip:        this.Vip.Format("2006-01-02 15:04:05"),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
		LoginTime:  this.LoginTime.Format("2006-01-02 15:04:05"),
		BanTime:    this.BanTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpStudent)
}

//好友分类
type TCategory struct {
	Id     int64
	UserId int64
	Name   string
	sort   int
}

//好友表
type TUserList struct {
	Id         int64
	CategoryId int64
	Sort       int    //排序
	Msg        string //备注
	Belong     int64  //所属
	Friend     *TUser `orm:"rel(fk)"` //好友信息
}
