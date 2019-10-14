package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"time"
	//"github.com/astaxie/beego/logs"

)

type FamilyController struct {
	beego.Controller
}

//创建
const familyCreate  = 0
//添加
const familyAdd  = 1
//搜索
const familySearch  = 2
//更新
const familyUpdate  = 3
//添加成员
const familyAddMember  = 5
//剔除成员
const familyDelMember = 6
//添加亲戚
const familyAddrelatives  = 7
//删除亲戚
const familyDelrelatives  = 8
//修改亲属信息
const familyUpdaterelatives  = 9
//添加设备
const familyAddDevices  = 10
//更新设备信息
const familyUpdateDevices  = 11
//删除设备信息
const familyDelDevices  = 12
//新增访客
const familyAddVisitor  = 13
//访客管理
const familyUpdateVisitor  = 14

func (this *FamilyController) Post() {

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
			case familyCreate:
				this.familyCreate()
			case familyAdd:
				this.familyAdd()
			case familySearch:
				this.familySearch()
			case familyUpdate:
				this.familyUpdate()
			case familyAddMember:
				this.familyAddMember()
			case familyDelMember:
				this.familyDelMember()
			case familyAddrelatives:
				this.familyAddrelatives()
			case familyDelrelatives:
				this.familyDelrelatives()
			case familyUpdaterelatives:
				this.familyUpdaterelatives()
			case familyAddDevices:
				this.familyAddDevices()
			case familyUpdateDevices:
				this.familyUpdateDevices()
			case familyDelDevices:
				this.familyDelDevices()
			case familyAddVisitor:
				this.familyAddVisitor()
			case familyUpdateVisitor:
				this.familyUpdateVisitor()
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

//创建
func (this *FamilyController) familyCreate() {
	tel := this.GetString("tel","")
	pwd := this.GetString("pwd","")
	logs.Info("tel --- ",tel , " || pwd --- "+pwd)

}

//新建家庭
func (this *FamilyController) familyAdd() {

}

//搜索
func (this *FamilyController) familySearch() {

}

//更新信息
func (this *FamilyController) familyUpdate() {

}

//添加成员
func (this *FamilyController) familyAddMember() {

}

//剔除成员
func (this *FamilyController) familyDelMember() {

}

//添加亲戚
func (this *FamilyController) familyAddrelatives() {

}

//移除亲戚
func (this *FamilyController) familyDelrelatives() {

}

//更新亲戚信息
func (this *FamilyController) familyUpdaterelatives() {

}

//添加设备
func (this *FamilyController) familyAddDevices() {

}

//更新设备信息
func (this *FamilyController) familyUpdateDevices() {

}

//删除设备
func (this *FamilyController) familyDelDevices() {

}

//添加访客
func (this *FamilyController) familyAddVisitor() {

}

//更新访客信息
func (this *FamilyController) familyUpdateVisitor() {

}
