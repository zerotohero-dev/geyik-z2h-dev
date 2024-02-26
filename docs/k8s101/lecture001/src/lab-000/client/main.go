package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"time"
)

func main() {
	for {
		resp, err := http.Get("http://server:8080")
		if err != nil {
			log.Printf("Error making request: %v", err)
			continue
		}

		body, err := io.ReadAll(resp.Body)
		if err != nil {
			log.Printf("Error reading response: %v", err)
			_ = resp.Body.Close()
			continue
		}
		_ = resp.Body.Close()

		fmt.Printf("Response from server: %s\n", body)

		time.Sleep(5 * time.Second)
	}
}
