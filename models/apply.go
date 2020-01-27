package models

import (
	"encoding/json"
	"time"
)

//好友,群，亲戚申请

const StatusSend int8 = 0
const StatusAgree int8 = 1
const StatusRefuse int8 = 2
const StatusIgnore int8 = 3

const TypeRelations = 0
const TypeFriends = 1
const TypeGroups = 2
const TypeHomes = 3

type TApply struct {
	Id           int64
	Type         int8   //申请类型 亲戚，好友，群，家庭
	Status       int8   //申请是否通过 0已发送 ，1已同意 ，2已拒绝 ， 3忽略
	UserId       int64  //谁发出的申请
	ToId         int64  //发给谁的
	Msg          string //申请留言
	FromUsername string
	ToUsername   string
	FromIcon     string
	ToIcon       string
	CreateTime   time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
}

func (this TApply) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type apply TApply
	// 定义一个新的结构体
	tmpApply := struct {
		apply
		CreateTime string `json:"CreateTime"`
	}{
		apply:      (apply)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpApply)
}
