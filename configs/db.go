package configs

import (
	"fmt"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

const (
	host     = "localhost"
	port     = 5432
	user     = "postgres"
	password = "123"
	dbName   = "BookManagement"
)

func DatabaseConnect() *gorm.DB {
	dsn := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbName);
	db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	if err != nil {
		println(Red, "Connnect to database failed!", Reset);
		panic(err);
	}

	println(Green, "Connnect to database successfully!", Reset);
	return db;
}