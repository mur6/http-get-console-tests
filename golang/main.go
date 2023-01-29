package main

import (
    "encoding/json"
    "fmt"
    "io/ioutil"
    "net/http"
)

type ExchangeRate struct {
    Rates map[string]float64 `json:"rates"`
}

func main() {
    response, err := http.Get("https://api.exchangerate-api.com/v4/latest/JPY")
    if err != nil {
        fmt.Println(err)
        return
    }
    defer response.Body.Close()

    body, err := ioutil.ReadAll(response.Body)
    if err != nil {
        fmt.Println(err)
        return
    }

    var rate ExchangeRate
    json.Unmarshal(body, &rate)

    fmt.Println(1 / rate.Rates["USD"])
}
