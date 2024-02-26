/*
 *  ( Vadideki Geyik )
 *   `--(_   _)--'
 *        Y-Y
 *       /@@ \   don’t miss the deer,
 *      /     \    go kiss the deer.
 *      `--'.  \             ,
 *          |   `.__________/)
 */

package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	_, _ = fmt.Fprintf(w, "Hello from the server!")
}

func main() {
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
