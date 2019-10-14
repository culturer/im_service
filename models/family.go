package models

import (
	"encoding/json"
	"time"
)

//家庭表
type TFamily struct {
	Id   int64
	Manager int64													//管理员
	Name string `orm:"size(50)"`									//家庭名称
	Icon string 													//头像
	latitude float64												//经纬度
	longitude float64
	Pwd string														//密码
	Sign string														//公告
	Grad int														//等级
	CreateTime time.Time `orm:"auto_now_add;type(date)"`				//创建时间
	LoginTime time.Time `orm:"auto_now_add;type(datetime)"`			//最后登录时间
	IsRead bool														//是否开启已读未读

	Members []*TUser `orm:"reverse(many)"` 							//家庭成员列表
	Relatives []*TFamilyTag `orm:"reverse(many)"` 					//亲戚列表
	Devices []*TDevice `orm:"rel(m2m)"` 							//设备列表
	Vistitors []*TVisitor`orm:"reverse(many)"`						//访客列表
}

type TFamilyTag struct {
	Id int64
	Msg string 						   								//备注
	Sort	int														//活跃度
	User *TUser `orm:"rel(fk)"`										//谁的加的亲戚
	TFamily *TFamily `orm:"rel(fk)"`								//亲戚家庭
}

//设备权限  家庭
type TDevice struct {
	Id int64
	IsVisitor bool													//是否是访客设备
	SubId	int64													//字段预留
	Name	string													//名称
	Msg		string													//描述
	Status int 														//设备状态
	Pro int															//权限	Pro_Persion 或者 Pro_Faimily
	IsPwd	bool													//需要密码？
	Pwd	string														//密码
	Family *TFamily `orm:"rel(fk)"`									//对应的家庭
	User *TUser `orm:"rel(fk)"`										//对应的用户
	CreateTime time.Time `orm:"auto_now_add;type(date)"`			//创建时间
}

type TVisitor struct {
	Id int64
	Visitor *TUser`orm:"rel(fk)"`									//访客
	Family *TFamily`orm:"rel(fk)"`
	Msg string														//备注
	StartTime time.Time	 `orm:"auto_now_add;type(datetime)"`
	EndtTime time.Time	 `orm:"auto_now_add;type(datetime)"`
}

func (this TFamily) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type family TFamily
	// 定义一个新的结构体
	tmpFamily:= struct {
		family
		CreateTime string `json:"CreateTime"`
		LoginTime  string `json:"LoginTime"`
	}{
		family:(family)(this),
		CreateTime:this.CreateTime.Format("2006-01-02 15:04:05"),
		LoginTime:this.LoginTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpFamily)
}

func (this TDevice) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type device TDevice
	// 定义一个新的结构体
	tmpDevice:= struct {
		device
		CreateTime string `json:"CreateTime"`
	}{
		device:(device)(this),
		CreateTime:this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpDevice)
}

func (this TVisitor) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type visitor TVisitor
	// 定义一个新的结构体
	tmpVisitor:= struct {
		visitor
		StartTime string `json:"StartTime"`
		EndtTime  string `json:"EndtTime"`
	}{
		visitor:(visitor)(this),
		StartTime:this.StartTime.Format("2006-01-02 15:04:05"),
		EndtTime:this.EndtTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpVisitor)
}