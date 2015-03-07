START 1 OMIT
func Swap64g(b []byte) uint64 {
	return uint64(b[0])<<56 |
		uint64(b[1])<<48 |
		uint64(b[2])<<40 |
		uint64(b[3])<<32 |
		uint64(b[4])<<24 |
		uint64(b[5])<<16 |
		uint64(b[6])<<8 |
		uint64(b[7])
}
END 1 OMIT

START 2 OMIT
func Swap64s(b []byte) uint64
END 2 OMIT

START 3 OMIT
// func Swap64s(b []byte) uint64
TEXT ·Swap64s(SB),$0-32
    MOVQ    b+0(FP),SI
    MOVQ    (SI),AX
    BSWAPQ  AX
    MOVQ    AX,ret+24(FP)
    RET
END 3 OMIT
