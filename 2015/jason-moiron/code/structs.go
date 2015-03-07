package main

import "fmt"
import "unsafe"

type X struct {
	a, b int64
}

func main() {
	v := X{a: 0, b: 1}
	fmt.Printf("&v:   %p\n", &v)   // HL
	fmt.Printf("&v.a: %p\n", &v.a) // HL
	fmt.Printf("&v.b: %p\n", &v.b) // HL
	fmt.Printf("Sizeof(v): %d\n", unsafe.Sizeof(v))
}
