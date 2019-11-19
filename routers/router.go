package routers

import (
	"github.com/astaxie/beego"
	"im_service/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/user", &controllers.UserController{})
	beego.Router("/group", &controllers.GroupController{})
	beego.Router("/config", &controllers.ConfigController{})
	beego.Router("/article", &controllers.ArticleController{})
}
