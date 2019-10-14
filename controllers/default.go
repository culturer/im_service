package controllers

import (
	"github.com/astaxie/beego"
	"time"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "test", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return

}
