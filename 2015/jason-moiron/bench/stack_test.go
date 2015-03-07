package main

import "testing"

func stacked() [128]int64 {
	return [128]int64{}
}

func heaped() *[128]int64 {
	return &[128]int64{}
}

func BenchmarkStackAlloc(b *testing.B) {
	for i := 0; i < b.N; i++ {
		stacked()
	}
}

func BenchmarkHeapAlloc(b *testing.B) {
	for i := 0; i < b.N; i++ {
		heaped()
	}
}
