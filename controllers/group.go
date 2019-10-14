package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"time"
	//"github.com/astaxie/beego/logs"

)

type GroupController struct {
	beego.Controller
}

//创建群
const groupCreate  = 0
//添加群
const groupAdd  = 1
//搜索群
const groupSearch  = 2
//更新群信息
const groupUpdate  = 3
//踢人
const groupDelUser  = 4
//禁言
const groupBanUser  = 5

func (this *GroupController) Post() {

	options,err := this.GetInt("options",-1)
	if err!=nil {
		logs.Info(err)
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
	//检查请求的方法
	if options != -1 {
		switch options {
		case groupCreate:
			this.groupCreate()
		case groupAdd:
			this.groupAdd()
		case groupSearch:
			this.groupSearch()
		case groupUpdate:
			this.groupUpdate()
		case groupDelUser:
			this.groupDelUser()
		case groupBanUser:
			this.groupBanUser()
		default:
			this.Data["json"] = map[string]interface{}{"status": 400, "msg": "没有对应处理方法", "time": time.Now().Format("2006-01-02 15:04:05")}
			this.ServeJSON()
			return
		}
	}
	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "options is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}


//创建群
func (this *GroupController) groupCreate() {
	tel := this.GetString("tel","")
	pwd := this.GetString("pwd","")
	logs.Info("tel --- ",tel , " || pwd --- "+pwd)

}

//添加群
func (this *GroupController) groupAdd() {

}

//搜索群
func (this *GroupController) groupSearch() {

}

//更新群信息
func (this *GroupController) groupUpdate() {

}

//踢人
func (this *GroupController) groupDelUser() {

}

//禁言
func (this *GroupController) groupBanUser() {

}
