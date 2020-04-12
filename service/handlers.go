package service

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

// Handler
func Home(c echo.Context) error {
	return c.String(http.StatusOK, "Hello CDNagent!")
}
