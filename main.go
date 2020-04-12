package main

import (
	"github.com/istherepie/cdnagent/service"
)

// Main func
func main() {
	e := service.Create()
	e.Logger.Fatal(e.Start(":8080"))
}
