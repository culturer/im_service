package models

import (
	"encoding/json"
	"time"
)

type TGroup struct {
	Id          int64
	Icon        string    //头像
	Name        string    `orm:"size(50)"` //名称
	Sign        string    //公告
	Msg         string    //简介
	Pwd         string    //进群密码
	City        int       //城市
	IsCity      bool      //是否是本地群
	Administers string    //管理员列表
	Belong      int64     //群主Id
	MemCount    int       //群成员数目
	MaxCount    int       //最大群成员数
	IsPay       bool      //是否付费进群
	PayNum      int       //付费金额，单位为分
	Pri         int       //进群方式 免验证，管理员验证，付费
	Grad        int       //群等级
	CreateTime  time.Time `orm:"auto_now_add;type(datetime)"` //创建时间

}

//群表
type TGroupList struct {
	Id     int64
	Sort   int     //排序
	Msg    string  //备注
	Belong int64   //所属
	Group  *TGroup `orm:"rel(fk)"` //好友信息
}

func (this TGroup) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type group TGroup
	// 定义一个新的结构体
	tmpGroup := struct {
		group
		CreateTime string `json:"CreateTime"`
	}{
		group:      (group)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpGroup)
}
