package controllers

import (
	"golang-postgresql/models"

	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

func GetAllBooks(ctx *gin.Context, db *gorm.DB) {
	books := []models.Book{};

	db.Raw("SELECT * FROM book").Scan(&books);

	ctx.JSON(200, gin.H{
		"status": 200,
		"data": &books,
	}) 
}