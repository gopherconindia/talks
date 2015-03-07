"".main t=1 size=80 value=0 args=0x0 locals=0x18
    ; go has optimised some stuff away; use -N to turn it off
	0x001a 00026 (structvmap.go:4)	MOVQ	$170,BX
	0x0021 00033 (structvmap.go:4)	MOVQ	$187,AX
	0x0028 00040 (structvmap.go:5)	MOVQ	BX,"".x+8(SP)
	0x002d 00045 (structvmap.go:5)	MOVQ	AX,"".x+16(SP)
	0x0032 00050 (structvmap.go:5)	ADDQ	AX,BX
    ; ...
