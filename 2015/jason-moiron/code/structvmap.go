package main

func main() {
	x := struct{ a, b int }{0xaa, 0xbb} // HL
	b := x.a + x.b                      // HL
	println(b)
}
