package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/qiniu/api.v7/auth/qbox"
	"github.com/qiniu/api.v7/storage"
	"time"
)

type ConfigController struct {
	beego.Controller
}

const get7NiuToken = 0

func (this *ConfigController) Post() {
	options, err := this.GetInt("options", -1)
	this.dealError(err)
	//检查请求的方法
	if options != -1 {
		switch options {
		case userLogin:
			this.get7NiuToken()
		}
	}

	this.Data["json"] = map[string]interface{}{"status": 400, "msg": "options is null !", "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ConfigController) get7NiuToken() {
	accessKey := beego.AppConfig.String("qiniu_AK")
	secretKey := beego.AppConfig.String("qiniu_SK")
	bucket := beego.AppConfig.String("qiniu_Bucket")
	putPolicy := storage.PutPolicy{
		Scope: bucket,
	}
	mac := qbox.NewMac(accessKey, secretKey)
	upToken := putPolicy.UploadToken(mac)
	this.Data["json"] = map[string]interface{}{"status": 200, "token": upToken, "time": time.Now().Format("2006-01-02 15:04:05")}
	this.ServeJSON()
	return
}

func (this *ConfigController) dealError(err error) {
	if err != nil {
		logs.Error("ConfigController", err.Error())
		this.Data["json"] = map[string]interface{}{"status": 400, "msg": err.Error(), "time": time.Now().Format("2006-01-02 15:04:05")}
		this.ServeJSON()
		return
	}
}
