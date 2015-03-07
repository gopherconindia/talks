"".main t=1 size=336 value=0 args=0x0 locals=0x58
    ; snip
	0x00a4 00164 (structvmap2.go:5)	LEAQ	go.string."a"+0(SB),BX
	0x00ab 00171 (structvmap2.go:5)	MOVQ	(BX),CX
	0x00ae 00174 (structvmap2.go:5)	MOVQ	8(BX),BP
	0x00b2 00178 (structvmap2.go:5)	MOVQ	$type.map[string]int+0(SB),BX
    ; snip a bunch of copying to temp variables
	0x00db 00219 (structvmap2.go:5)	CALL	,runtime.mapaccess1_faststr(SB) // HL
    ; snip some more temp vars, val copied to tmp
	0x00e8 00232 (structvmap2.go:5)	MOVQ	BP,"".autotmp_0001+40(SP)
	0x00ed 00237 (structvmap2.go:5)	LEAQ	go.string."b"+0(SB),BX
    ; same map access dance for "b"
	0x0136 00310 (structvmap2.go:5)	ADDQ	BP,BX

