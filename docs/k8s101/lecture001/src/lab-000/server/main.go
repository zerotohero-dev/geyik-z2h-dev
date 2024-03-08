/*
 * ( Geyik Academy )
 *   `--(_   _)--'
 *        Y-Y    
 *       /@@ \  Si audes scire,
 *      /     \    cervam sapientiae insequere.
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
