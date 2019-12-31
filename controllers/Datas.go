package controllers

import "im_service/models"

type Article struct {
	Article  *models.TArticle
	Comments []*models.TComment
	Likes    []*models.TLikes
	Replys   []*models.TReply
}

type Circle struct {
	CUser  *models.TCUser
	Circle *models.TCircle
}
