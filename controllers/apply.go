package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	"time"
)

type ApplyController struct {
	beego.Controller
}

//新建申请
const apply_add = 0

//获取申请列表
const apply_getDatas = 1

func (this *ApplyController) Post() {
	options, err := this.GetInt("options", -1)
	this.dealError(err)
	//检查请求的方法
	if options != -1 {
		switch options {
		case apply_add:
			this.apply_add()
		case apply_getDatas:
			this.apply_getDatas()
		}
	}
	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "options is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ApplyController) apply_add() {
	logs.Info("apply_add")
	o := orm.NewOrm()
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	logs.Info("userId : ", userId)
	toId, err := this.GetInt64("toId", -1)
	logs.Info("toId : ", toId)
	this.dealError(err)

	//查询，去重
	var apply models.TApply
	sql := fmt.Sprintf("select * from t_apply where user_id=%d and to_id= %d ", userId, toId)
	o.Raw(sql).QueryRow(&apply)
	this.dealError(err)

	msg := this.GetString("msg", "")
	fromUsername := this.GetString("fromUsername", "")
	fromIcon := this.GetString("fromIcon", "")
	toUsername := this.GetString("toUsername", "")
	toIcon := this.GetString("toIcon", "")

	apply.Msg = msg
	apply.CreateTime = time.Now()
	apply.FromUsername = fromUsername
	apply.FromIcon = fromIcon
	apply.ToUsername = toUsername
	apply.ToIcon = toIcon

	if &apply != nil && apply.Id != 0 {
		_, err = o.Update(&apply)
		logs.Info("update apply", apply)
		this.dealError(err)
	} else {
		myType, err := this.GetInt8("type", 0)
		this.dealError(err)
		myStatus, err := this.GetInt8("status", models.StatusSend)
		this.dealError(err)
		logs.Info("myType : ", myType)
		apply.UserId = userId
		apply.ToId = toId
		apply.Type = myType
		apply.Status = myStatus

		_, err = o.Insert(&apply)
		this.dealError(err)

	}
	this.Data["json"] = map[string]interface{}{"status": 200, "apply": apply, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ApplyController) apply_getDatas() {
	var applies []models.TApply
	userId, _ := this.GetInt64("userId", -1)
	o := orm.NewOrm()
	sql := fmt.Sprintf("select * from t_apply where user_id=%d or to_id=%d order by create_time desc ", userId, userId)
	logs.Info("sql :", sql)
	o.Raw(sql).QueryRows(&applies)
	this.Data["json"] = map[string]interface{}{"status": 200, "applies": applies, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ApplyController) dealError(err error) {
	if err != nil {
		logs.Error("ConfigController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
