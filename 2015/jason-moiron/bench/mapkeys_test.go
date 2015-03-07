package main

import "testing"

var empty = struct{}{}

func BenchmarkStringKeys(b *testing.B) {
	s, n := "reasonably-long-but-present-unique-identifier", "non-present-unique-id"
	m := map[string]struct{}{s: empty} // HL
	for i := 0; i < b.N; i++ {
		_, _ = m[s]
		_, _ = m[n]
	}
}

func BenchmarkIntKeys(b *testing.B) {
	m := map[int]struct{}{0xdeadbeef: empty} // HL
	for i := 0; i < b.N; i++ {
		_, _ = m[0xdeadbeef]
		_, _ = m[0xf007ba11]
	}
}

func BenchmarkStructKeys(b *testing.B) {
	type key struct{ a, b int }
	k, n := key{0, 1}, key{1, 2}
	m := map[key]struct{}{k: empty} // HL
	for i := 0; i < b.N; i++ {
		_, _ = m[k]
		_, _ = m[n]
	}
}
