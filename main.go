package main

import (
	config "golang-postgresql/configs"
	"golang-postgresql/controllers"
	"time"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

// https://viblo.asia/p/restful-web-api-crud-using-gorm-in-golang-4P856nRA5Y3

func main() {
	router := gin.Default();

	// GIN CORS
	router.Use(cors.New(cors.Config{
		AllowOrigins:     []string{"http://localhost:5173"},
		AllowMethods:     []string{"GET", "POST", "PUT", "PATCH", "DELETE"},
		AllowHeaders:     []string{"Origin"},
		ExposeHeaders:    []string{"Content-Length"},
		AllowCredentials: true,
		AllowOriginFunc: func(origin string) bool {
		  return origin == "https://github.com"
		},
		MaxAge: 12 * time.Hour,
	}));

	// Database connect
	db := config.DatabaseConnect();

	// API Endpoint
	router.GET("/", controllers.HandleRunServer);

	router.GET("/books", func(ctx *gin.Context) {
		controllers.GetAllBooks(ctx, db);
	});

	router.Run("localhost:5000");
}