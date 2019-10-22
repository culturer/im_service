package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	"time"
	//"github.com/astaxie/beego/logs"
)

type UserController struct {
	beego.Controller
}

//登陆
const userLogin = 0

//注册
const userRegister = 1

//搜索
const userSearch = 2

//修改用户信息
const userUpdate = 3

//充值VIP
const addUserVip = 4

//新增好友分类
const addCategory = 5

//修改好友分类
const updateCategory = 6

//删除好友分类
const delCategory = 7

//更新好友列表
const updateUserList = 8

//删除好友
const delUserList = 9

//添加好友
const addUserList = 10

//获取好友列表
const getUserList = 11

//申请添加好友
const addApply = 12

//获取申请列表
const getApplyList = 13

//查看好友信息
const getUserInfo = 14

//处理好友请求 通过，拒绝，忽略
const optionApply  = 15

func (this *UserController) Get() {
	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "test", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *UserController) Post() {

	options, err := this.GetInt("options", -1)
	this.dealError(err)
	//检查请求的方法
	if options != -1 {
		switch options {
		case userLogin:
			this.login()
		case userRegister:
			this.register()
		case userSearch:
			this.search()
		case userUpdate:
			this.update()
		case addUserVip:
			this.addVip()
		case addCategory:
			this.addCategory()
		case updateCategory:
			this.updateCategory()
		case delCategory:
			this.delCategory()
		case updateUserList:
			this.updateUserList()
		case delUserList:
			this.delUserList()
		case addUserList:
			this.addUserList()
		case getUserList:
			this.getUserList()
		case addApply:
			this.addApply()
		case getApplyList:
			this.getApplyList()
		case getUserInfo:
			this.getUserInfo()
		case optionApply:
			this.optionApply()
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

//登陆
func (this *UserController) login() {

	tel := this.GetString("tel", "")
	pwd := this.GetString("pwd", "")
	logs.Info("tel --- ", tel, " || pwd --- "+pwd)

	var user models.TUser
	o := orm.NewOrm()
	err := o.QueryTable("t_user").Filter("tel", tel).Filter("pwd", pwd).RelatedSel().One(&user)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "user": user, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//注册
func (this *UserController) register() {
	msg := this.GetString("msg", "") //短信验证码
	o := orm.NewOrm()
	var user models.TUser
	user.Tel = this.GetString("tel", "")
	user.Pwd = this.GetString("pwd", "")
	var family models.TFamily
	user.Family = &family
	user.CreateTime = time.Now()
	user.LoginTime = time.Now()
	user.BanTime = time.Now().AddDate(10000, 0, 0)
	id, err := o.Insert(&user)
	logs.Info("register", "验证码[", msg, "]", user)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "id": id, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//搜索
func (this *UserController) search() {

}

//修改用户信息
func (this *UserController) update() {

}

//充值VIP
func (this *UserController) addVip() {

}

//新增好友分类
func (this *UserController) addCategory() {

}

//修改好友分类
func (this *UserController) updateCategory() {

}

//删除好友分类
func (this *UserController) delCategory() {

}

//更新好友列表
func (this *UserController) updateUserList() {

}

//删除好友
func (this *UserController) delUserList() {

}

//获取添加好友列表
func (this *UserController) getApplyList() {
	var applies []models.TApply
	userId, _ := this.GetInt64("userId", -1)
	o := orm.NewOrm()
	//_,err := o.QueryTable("t_apply").Filter("user_id",userId).Filter("to_id",userId).Distinct().OrderBy("create_time").All(&applies)
	//this.dealError(err)
	sql := fmt.Sprintf("select * from t_apply where user_id=%d or to_id=%d order by create_time desc ", userId, userId)
	logs.Info("sql :", sql)
	o.Raw(sql).QueryRows(&applies)
	this.Data["json"] = map[string]interface{}{"status": 200, "applies": applies, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//申请添加好友
func (this *UserController) addApply() {
	logs.Info("addApply")
	o := orm.NewOrm()
	var apply models.TApply
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	logs.Info("userId : ", userId)
	friendId, err := this.GetInt64("friendId", -1)
	logs.Info("friendId : ", friendId)
	this.dealError(err)
	//查询，去重
	sql := fmt.Sprintf("select * from t_apply where user_id=%d and to_id= %d ", userId, friendId)
	o.Raw(sql).QueryRow(&apply)
	//err = o.QueryTable("t_apply").Filter("user_id",userId).Filter("to_id",friendId).One(&apply)
	this.dealError(err)

	fromCategoryId, err := this.GetInt64("fromCategoryId", -1)
	this.dealError(err)
	logs.Info("fromCategoryId : ", fromCategoryId)
	msg := this.GetString("msg", "")
	logs.Info("msg : ", msg)
	fromUsername := this.GetString("fromUsername", "")
	logs.Info("fromUsername : ", fromUsername)
	fromIcon := this.GetString("fromIcon", "")
	logs.Info("fromIcon : ", fromIcon)

	toUsername := this.GetString("toUsername", "")
	logs.Info("toUsername : ", toUsername)
	toIcon := this.GetString("toIcon", "")
	logs.Info("toIcon : ", toIcon)

	apply.Msg = msg
	apply.CreateTime = time.Now()
	apply.FromCategoryId = fromCategoryId
	apply.FromUsername = fromUsername
	apply.FromIcon = fromIcon
	apply.ToUsername = toUsername
	apply.ToIcon = toIcon

	if &apply != nil && apply.Id != 0 {
		_, err = o.Update(&apply)
		logs.Info("update apply", apply)
		this.dealError(err)
		this.Data["json"] = map[string]interface{}{"status": 200, "apply": apply, "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	} else {
		myType, err := this.GetInt("type", 0)
		this.dealError(err)
		logs.Info("myType : ", myType)

		apply.UserId = userId
		apply.ToId = friendId
		apply.Type = myType
		apply.Status = 0

		_, err = o.Insert(&apply)
		this.dealError(err)

		this.Data["json"] = map[string]interface{}{"status": 200, "apply": apply, "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return

	}
}

//添加好友
func (this *UserController) addUserList() {
	var apply models.TApply
	var user models.TUser
	var userList models.TUserList
	tel := this.GetString("tel", "")
	msg := this.GetString("msg", "")
	userId, err := this.GetInt64("userId", -1)
	applyId, err := this.GetInt64("applyId", -1)
	categoryId, err := this.GetInt64("categoryId", -1)
	this.dealError(err)
	o := orm.NewOrm()
	err = o.QueryTable("t_apply").Filter("id", applyId).One(&apply)
	this.dealError(err)
	apply.Status = 0
	_, err = o.Update(apply)
	this.dealError(err)
	err = o.QueryTable("t_user").Filter("tel", tel).RelatedSel().One(&user)
	this.dealError(err)
	userList.Belong = userId
	userList.Friend = &user
	userList.CategoryId = categoryId
	userList.Msg = msg
	userList.Sort = 0
	id, err := o.Insert(userList)
	this.Data["json"] = map[string]interface{}{"status": 200, "id": id, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

//获取好友列表
func (this *UserController) getUserList() {
	userId, err := this.GetInt64("userId", -1)
	this.dealError(err)
	//查好友分类
	var categorys []*models.TCategory
	o := orm.NewOrm()
	_, err = o.QueryTable("t_category").Filter("user_id", userId).All(&categorys)
	this.dealError(err)
	//查好友
	var friends []models.TUserList
	_, err = o.QueryTable("t_user_list").Filter("belong", userId).RelatedSel("friend").All(&friends)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200, "categorys": categorys, "friends": friends, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *UserController) getUserInfo() {
	tel := this.GetString("tel", "")
	if tel != "" {
		var user models.TUser
		o := orm.NewOrm()
		err := o.QueryTable("t_user").Filter("tel", tel).One(&user)
		this.dealError(err)
		user.Family = nil
		user.Pwd = ""
		this.Data["json"] = map[string]interface{}{"status": 200, "user": user, "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "unknow tel !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *UserController)optionApply() {

	do,err:= this.GetInt8("do",0)
	this.dealError(err)
	applyId, err := this.GetInt64("applyId", -1)
	this.dealError(err)
	logs.Info("applyId",applyId)
	var apply models.TApply
	o := orm.NewOrm()
	sql := fmt.Sprintf("select * from t_apply where id=%d  ", applyId)
	logs.Info("sql :", sql)
	o.Raw(sql).QueryRow(&apply)
	apply.Status = do
	_, err = o.Update(&apply)
	this.dealError(err)
	this.Data["json"] = map[string]interface{}{"status": 200,"apply_status":apply.Status, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return

}



func (this *UserController) dealError(err error) {
	if err != nil {
		logs.Error("UserController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
