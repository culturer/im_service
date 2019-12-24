package models

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

const Pro_Persion = 0 //设备权限  私人 家庭
const Pro_Faimily = 1

func RegiesterDB() {

	//注册驱动
	err := orm.RegisterDriver("mysql", orm.DRMySQL)
	if err != nil {
		logs.Error("注册MYSQL驱动发生问题！ ", err.Error())
	}
	var db_url string = beego.AppConfig.String("username_DB") + ":" + beego.AppConfig.String("password_DB") + "@tcp(" + beego.AppConfig.String("host_DB") + ")/" + beego.AppConfig.String("name_DB") + "?charset=" + beego.AppConfig.String("charset") + "&loc=Local"
	// orm.RegisterDataBase("default", "mysql", "root:78901214@tcp(127.0.0.1:3306)/yoo_home?charset=utf8")

	logs.Info("数据库链接", db_url)
	err = orm.RegisterDataBase("default", "mysql", db_url)
	if err != nil {
		logs.Info("数据库连接发生异常！", err)
	}
	//注册model
	orm.RegisterModel(new(TUser))
	orm.RegisterModel(new(TUserList))
	orm.RegisterModel(new(TCategory))
	orm.RegisterModel(new(TGroup))
	orm.RegisterModel(new(TGroupList))
	orm.RegisterModel(new(TFamily))
	orm.RegisterModel(new(TFamilyTag))
	orm.RegisterModel(new(TDevice))
	orm.RegisterModel(new(TApply))
	orm.RegisterModel(new(TVisitor))
	orm.RegisterModel(new(TArticle))
	orm.RegisterModel(new(TComment))
	orm.RegisterModel(new(TReply))
	orm.RegisterModel(new(TLikes))
	orm.RegisterModel(new(TCircle))
	orm.RegisterModel(new(TCManager))
	orm.RegisterModel(new(TCGrad))
	orm.RegisterModel(new(TCUser))
	orm.RegisterModel(new(TCArticle))
	orm.RegisterModel(new(TCClassArticle))
	orm.RegisterModel(new(TRecommendArticle))
}
