package main

import "math"

func main() {
	NaN := math.NaN()
	m := map[float64]bool{NaN: true, NaN: true, NaN: false}
	println(len(m))
}
