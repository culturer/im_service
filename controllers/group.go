package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	"time"
)

type GroupController struct {
	beego.Controller
}

//创建群
const groupCreate = 0

//添加群
const groupAdd = 1

//搜索群
const groupSearch = 2

//更新群信息
const groupUpdate = 3

//踢人
const groupDelUser = 4

//禁言
const groupBanUser = 5

//查询群列表
const groupList = 6

func (this *GroupController) Post() {

	options, err := this.GetInt("options", -1)
	this.dealError(err)

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
		case groupList:
			this.groupList()

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

//创建群1.创建群，2.绑定群关系
func (this *GroupController) groupCreate() {
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	o := orm.NewOrm()
	var group models.TGroup
	group.Belong = userId
	group.Icon = this.GetString("icon", "")
	group.Name = this.GetString("name", "")
	group.MaxCount, err = this.GetInt("count", 100)
	this.dealError(err)
	id, err := o.Insert(&group)
	this.dealError(err)
	group.Id = id
	var groupList models.TGroupList
	groupList.Belong = userId
	groupList.Group = &group
	groupList.Sort = 0
	groupListId, err := o.Insert(&groupList)
	this.dealError(err)
	groupList.Id = groupListId
	this.Data["json"] = map[string]interface{}{"status": 200, "group": group, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//添加群
func (this *GroupController) groupAdd() {
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	groupId, err := this.GetInt64("groupId", -1)
	this.dealError(err)
	var group models.TGroup
	o := orm.NewOrm()
	sql := fmt.Sprintf("select * from t_group where id=%d  ", groupId)
	err = o.Raw(sql).QueryRow(&group)
	this.dealError(err)
	var groupList models.TGroupList
	groupList.Belong = userId
	groupList.Group = &group
	groupList.Msg = this.GetString("msg", "")
	groupList.Sort = 0
	groupListId, err := o.Insert(&groupList)
	this.dealError(err)
	groupList.Id = groupListId
	this.Data["json"] = map[string]interface{}{"status": 200, "group": group, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//搜索群
func (this *GroupController) groupSearch() {
	groupId, err := this.GetInt64("groupId", -1)
	this.dealError(err)
	sql := fmt.Sprintf("select * from t_group where id=%d  ", groupId)
	var group models.TGroup
	o := orm.NewOrm()
	err = o.Raw(sql).QueryRow(&group)
	this.Data["json"] = map[string]interface{}{"status": 200, "group": group, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//更新群信息
func (this *GroupController) groupUpdate() {

}

//踢人
func (this *GroupController) groupDelUser() {
	groupId, err := this.GetInt64("groupId", -1)
	this.dealError(err)
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	o := orm.NewOrm()
	num, err := o.Delete(&models.TGroupList{Belong: userId, Group: &models.TGroup{Id: groupId}})
	this.dealError(err)
	logs.Info("del num --- ", num)
	this.Data["json"] = map[string]interface{}{"status": 200, "num": num, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//禁言
func (this *GroupController) groupBanUser() {

}

//查询群列表
func (this *GroupController) groupList() {
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	var groups []models.TGroupList
	o := orm.NewOrm()
	_, err = o.QueryTable("t_group_list").Filter("belong", userId).RelatedSel("group").All(&groups)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "groups": groups, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *GroupController) dealError(err error) {
	if err != nil {
		logs.Error("GroupController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
