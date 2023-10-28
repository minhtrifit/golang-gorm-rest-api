package models

import (
	"time"

	"gorm.io/gorm"
)

type Book struct {
	gorm.Model
	ID        string    `json:"id"`
	Name      string    `json:"name"`
	Author    string    `json:"author"`
	Price    string    `json:"Price"`
	Image    string    `json:"Image"`
	Published time.Time `json:"published"`
}