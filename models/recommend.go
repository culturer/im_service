package models

import (
	"encoding/json"
	"time"
)

//好友,群，亲戚申请
type TRecommendWord struct {
	Id         int64
	Word       string
	ArticleId  int64
	CreateTime time.Time `orm:"auto_now_add;type(datetime)"` //创建时间
}

func (this TRecommendWord) MarshalJSON() ([]byte, error) {
	// 定义一个该结构体的别名
	type recommend TRecommendWord
	// 定义一个新的结构体
	tmpApply := struct {
		recommend
		CreateTime string `json:"CreateTime"`
	}{
		recommend:  (recommend)(this),
		CreateTime: this.CreateTime.Format("2006-01-02 15:04:05"),
	}
	return json.Marshal(tmpApply)
}
