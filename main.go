package main

import (
	"fmt"
	"github.com/sensorario/gol"
	"net/http"
	"time"
)

func main() {
	go forever()
	// select {}

	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":5000", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Ciaone, mondo!")
}

func forever() {
	l := gol.NewCustomLogger("/app/logs")
	for {
		l.Info(fmt.Sprintf("%v+\n", time.Now()))
		time.Sleep(time.Second)
	}
}
