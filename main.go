package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("Full Cycle Rocks")
	http.ListenAndServe(":8080", nil)
}
