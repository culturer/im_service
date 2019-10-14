package main

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"im_service/models"
	_ "im_service/routers"
)

func init() {
	models.RegiesterDB()
}

func main() {
	// 自动建表
	orm.RunSyncdb("default", false, true)
	orm.Debug = true

	//创建附件目录
	//os.Mkdir("pictures", os.ModePerm)
	//beego.SetStaticPath("pictures", "pictures")
	//beego.SetStaticPath("/", "root")
	beego.BConfig.WebConfig.Session.SessionOn = true
	beego.BConfig.WebConfig.TemplateLeft = "[["
	beego.BConfig.WebConfig.TemplateRight = "]]"
	beego.Run()
	beego.Run()
}

