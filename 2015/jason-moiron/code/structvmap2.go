package main

func main() {
	x := map[string]int{"a": 0xaa, "b": 0xbb}
	b := x["a"] + x["b"] // HL
	println(b)
}
