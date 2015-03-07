package main

import "testing"

func noop(int) {}

func BenchmarkMapAccess(b *testing.B) {
	m := map[int]int{0: 0, 1: 1} // HL
	for i := 0; i < b.N; i++ {
		_ = m[0] + m[1]
	}
}

func BenchmarkSliceAccess(b *testing.B) {
	m := []int{0, 1}
	for i := 0; i < b.N; i++ {
		_ = m[0] + m[1]
	}
}

func BenchmarkStructAccess(b *testing.B) {
	m := struct{ a, b int }{0, 1} // HL
	for i := 0; i < b.N; i++ {
		_ = m.a + m.b
	}
}

func BenchmarkArrayAccess(b *testing.B) {
	m := [2]int{0, 1}
	for i := 0; i < b.N; i++ {
		_ = m[0] + m[1]
	}
}
