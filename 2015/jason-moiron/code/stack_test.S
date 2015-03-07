"".stacked t=1 size=96 value=0 args=0x400 locals=0x400 // HL
    ; snip
	0x0034 00052 (stack_test.go:6)	LEAQ	"".autotmp_0000+0(SP),DI
	0x0038 00056 (stack_test.go:6)	MOVL	$0,AX
	0x003a 00058 (stack_test.go:6)	DUFFZERO	,$
	0x003f 00063 (stack_test.go:6)	LEAQ	"".autotmp_0000+0(SP),BX
	0x0043 00067 (stack_test.go:6)	LEAQ	"".~r0+1032(FP),BP
	0x004b 00075 (stack_test.go:6)	MOVQ	BP,DI
	0x004e 00078 (stack_test.go:6)	MOVQ	BX,SI
	0x0051 00081 (stack_test.go:6)	DUFFCOPY	,$
	0x0056 00086 (stack_test.go:6)	ADDQ	$1024,SP
	0x005d 00093 (stack_test.go:6)	RET	,
// OMIT
"".heaped t=1 size=112 value=0 args=0x8 locals=0x18 // HL
    ;snip
	0x0023 00035 (stack_test.go:10)	MOVQ	$type.[128]int64+0(SB),BX
	0x002a 00042 (stack_test.go:10)	MOVQ	BX,(SP)
	0x002e 00046 (stack_test.go:10)	PCDATA	$0,$0
	0x002e 00046 (stack_test.go:10)	CALL	,runtime.newobject(SB) // HL
	0x0033 00051 (stack_test.go:10)	MOVQ	8(SP),BX
	0x0038 00056 (stack_test.go:10)	MOVQ	BX,"".autotmp_0001+16(SP)
	0x003d 00061 (stack_test.go:10)	MOVQ	"".autotmp_0001+16(SP),DI
	0x0042 00066 (stack_test.go:10)	CMPQ	DI,$0
	0x0046 00070 (stack_test.go:10)	JEQ	$1,94
	0x0048 00072 (stack_test.go:10)	MOVL	$0,AX
	0x004a 00074 (stack_test.go:10)	DUFFZERO	,$
	0x004f 00079 (stack_test.go:10)	MOVQ	"".autotmp_0001+16(SP),BX
	0x0054 00084 (stack_test.go:10)	MOVQ	BX,"".~r0+32(FP)
	0x0059 00089 (stack_test.go:10)	ADDQ	$24,SP
	0x005d 00093 (stack_test.go:10)	RET	,
	0x005e 00094 (stack_test.go:10)	MOVL	AX,(DI)
	0x0060 00096 (stack_test.go:10)	JMP	,72
// OMIT
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 77 07 e8  dH..%....H;a.w..
	0x0010 00 00 00 00 eb ea 48 83 ec 18 48 c7 44 24 20 00  ......H...H.D$ .
	0x0020 00 00 00 48 8d 1d 00 00 00 00 48 89 1c 24 e8 00  ...H......H..$..
	0x0030 00 00 00 48 8b 5c 24 08 48 89 5c 24 10 48 8b 7c  ...H.\$.H.\$.H.|
	0x0040 24 10 48 83 ff 00 74 16 31 c0 e8 00 00 00 00 48  $.H...t.1......H
	0x0050 8b 5c 24 10 48 89 5c 24 20 48 83 c4 18 c3 89 07  .\$.H.\$ H......
	0x0060 eb e6                                            ..
	rel 5+4 t=9 +0
	rel 16+4 t=3 runtime.morestack_noctxt+0
	rel 38+4 t=7 type.[128]int64+0
	rel 47+4 t=3 runtime.newobject+0
	rel 75+4 t=3 runtime.duffzero+0
"".BenchmarkStackAlloc t=1 size=176 value=0 args=0x8 locals=0x410
	0x0000 00000 (stack_test.go:13)	TEXT	"".BenchmarkStackAlloc+0(SB),$1040-8
	0x0000 00000 (stack_test.go:13)	MOVQ	(TLS),CX
	0x0009 00009 (stack_test.go:13)	LEAQ	-912(SP),AX
	0x0011 00017 (stack_test.go:13)	CMPQ	AX,16(CX)
	0x0015 00021 (stack_test.go:13)	JHI	,30
	0x0017 00023 (stack_test.go:13)	CALL	,runtime.morestack_noctxt(SB)
	0x001c 00028 (stack_test.go:13)	JMP	,0
	0x001e 00030 (stack_test.go:13)	SUBQ	$1040,SP
	0x0025 00037 (stack_test.go:13)	FUNCDATA	$0,gclocals·519efd86263089ddb84df3cfe7fd2992+0(SB)
	0x0025 00037 (stack_test.go:13)	FUNCDATA	$1,gclocals·3280bececceccd33cb74587feedb1f9f+0(SB)
	0x0025 00037 (stack_test.go:14)	MOVQ	$0,"".i+1024(SP)
	0x0031 00049 (stack_test.go:14)	MOVQ	"".b+1048(FP),BP
	0x0039 00057 (stack_test.go:14)	CMPQ	BP,$0
	0x003d 00061 (stack_test.go:14)	JEQ	$1,135
	0x003f 00063 (stack_test.go:14)	MOVQ	112(BP),BX
	0x0043 00067 (stack_test.go:14)	MOVQ	"".i+1024(SP),BP
	0x004b 00075 (stack_test.go:14)	CMPQ	BX,BP
	0x004e 00078 (stack_test.go:14)	JLE	$0,155
	0x0050 00080 (stack_test.go:15)	PCDATA	$0,$0
	0x0050 00080 (stack_test.go:15)	CALL	,"".stacked(SB)
	0x0055 00085 (stack_test.go:14)	MOVQ	"".i+1024(SP),BX
	0x005d 00093 (stack_test.go:14)	MOVQ	BX,"".autotmp_0002+1032(SP)
	0x0065 00101 (stack_test.go:14)	MOVQ	"".autotmp_0002+1032(SP),BX
	0x006d 00109 (stack_test.go:14)	ADDQ	$1,BX
	0x0071 00113 (stack_test.go:14)	MOVQ	BX,"".i+1024(SP)
	0x0079 00121 (stack_test.go:14)	MOVQ	"".b+1048(FP),BP
	0x0081 00129 (stack_test.go:14)	CMPQ	BP,$0
	0x0085 00133 (stack_test.go:14)	JNE	$1,63
	0x0087 00135 (stack_test.go:14)	MOVL	AX,(BP)
	0x008a 00138 (stack_test.go:14)	MOVQ	112(BP),BX
	0x008e 00142 (stack_test.go:14)	MOVQ	"".i+1024(SP),BP
	0x0096 00150 (stack_test.go:14)	CMPQ	BX,BP
	0x0099 00153 (stack_test.go:14)	JGT	$0,80
	0x009b 00155 (stack_test.go:17)	ADDQ	$1040,SP
	0x00a2 00162 (stack_test.go:17)	RET	,
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 84 24 70 fc ff  dH..%....H..$p..
	0x0010 ff 48 3b 41 10 77 07 e8 00 00 00 00 eb e2 48 81  .H;A.w........H.
	0x0020 ec 10 04 00 00 48 c7 84 24 00 04 00 00 00 00 00  .....H..$.......
	0x0030 00 48 8b ac 24 18 04 00 00 48 83 fd 00 74 48 48  .H..$....H...tHH
	0x0040 8b 5d 70 48 8b ac 24 00 04 00 00 48 39 eb 7e 4b  .]pH..$....H9.~K
	0x0050 e8 00 00 00 00 48 8b 9c 24 00 04 00 00 48 89 9c  .....H..$....H..
	0x0060 24 08 04 00 00 48 8b 9c 24 08 04 00 00 48 83 c3  $....H..$....H..
	0x0070 01 48 89 9c 24 00 04 00 00 48 8b ac 24 18 04 00  .H..$....H..$...
	0x0080 00 48 83 fd 00 75 b8 89 45 00 48 8b 5d 70 48 8b  .H...u..E.H.]pH.
	0x0090 ac 24 00 04 00 00 48 39 eb 7f b5 48 81 c4 10 04  .$....H9...H....
	0x00a0 00 00 c3                                         ...
	rel 5+4 t=9 +0
	rel 24+4 t=3 runtime.morestack_noctxt+0
	rel 81+4 t=3 "".stacked+0
"".BenchmarkHeapAlloc t=1 size=128 value=0 args=0x8 locals=0x18
	0x0000 00000 (stack_test.go:19)	TEXT	"".BenchmarkHeapAlloc+0(SB),$24-8
	0x0000 00000 (stack_test.go:19)	MOVQ	(TLS),CX
	0x0009 00009 (stack_test.go:19)	CMPQ	SP,16(CX)
	0x000d 00013 (stack_test.go:19)	JHI	,22
	0x000f 00015 (stack_test.go:19)	CALL	,runtime.morestack_noctxt(SB)
	0x0014 00020 (stack_test.go:19)	JMP	,0
	0x0016 00022 (stack_test.go:19)	SUBQ	$24,SP
	0x001a 00026 (stack_test.go:19)	FUNCDATA	$0,gclocals·519efd86263089ddb84df3cfe7fd2992+0(SB)
	0x001a 00026 (stack_test.go:19)	FUNCDATA	$1,gclocals·3280bececceccd33cb74587feedb1f9f+0(SB)
	0x001a 00026 (stack_test.go:20)	MOVQ	$0,"".i+8(SP)
	0x0023 00035 (stack_test.go:20)	MOVQ	"".b+32(FP),BP
	0x0028 00040 (stack_test.go:20)	CMPQ	BP,$0
	0x002c 00044 (stack_test.go:20)	JEQ	$1,100
	0x002e 00046 (stack_test.go:20)	MOVQ	112(BP),BX
	0x0032 00050 (stack_test.go:20)	MOVQ	"".i+8(SP),BP
	0x0037 00055 (stack_test.go:20)	CMPQ	BX,BP
	0x003a 00058 (stack_test.go:20)	JLE	$0,117
	0x003c 00060 (stack_test.go:21)	PCDATA	$0,$0
	0x003c 00060 (stack_test.go:21)	CALL	,"".heaped(SB)
	0x0041 00065 (stack_test.go:20)	MOVQ	"".i+8(SP),BX
	0x0046 00070 (stack_test.go:20)	MOVQ	BX,"".autotmp_0003+16(SP)
	0x004b 00075 (stack_test.go:20)	MOVQ	"".autotmp_0003+16(SP),BX
	0x0050 00080 (stack_test.go:20)	ADDQ	$1,BX
	0x0054 00084 (stack_test.go:20)	MOVQ	BX,"".i+8(SP)
	0x0059 00089 (stack_test.go:20)	MOVQ	"".b+32(FP),BP
	0x005e 00094 (stack_test.go:20)	CMPQ	BP,$0
	0x0062 00098 (stack_test.go:20)	JNE	$1,46
	0x0064 00100 (stack_test.go:20)	MOVL	AX,(BP)
	0x0067 00103 (stack_test.go:20)	MOVQ	112(BP),BX
	0x006b 00107 (stack_test.go:20)	MOVQ	"".i+8(SP),BP
	0x0070 00112 (stack_test.go:20)	CMPQ	BX,BP
	0x0073 00115 (stack_test.go:20)	JGT	$0,60
	0x0075 00117 (stack_test.go:23)	ADDQ	$24,SP
	0x0079 00121 (stack_test.go:23)	RET	,
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 77 07 e8  dH..%....H;a.w..
	0x0010 00 00 00 00 eb ea 48 83 ec 18 48 c7 44 24 08 00  ......H...H.D$..
	0x0020 00 00 00 48 8b 6c 24 20 48 83 fd 00 74 36 48 8b  ...H.l$ H...t6H.
	0x0030 5d 70 48 8b 6c 24 08 48 39 eb 7e 39 e8 00 00 00  ]pH.l$.H9.~9....
	0x0040 00 48 8b 5c 24 08 48 89 5c 24 10 48 8b 5c 24 10  .H.\$.H.\$.H.\$.
	0x0050 48 83 c3 01 48 89 5c 24 08 48 8b 6c 24 20 48 83  H...H.\$.H.l$ H.
	0x0060 fd 00 75 ca 89 45 00 48 8b 5d 70 48 8b 6c 24 08  ..u..E.H.]pH.l$.
	0x0070 48 39 eb 7f c7 48 83 c4 18 c3                    H9...H....
	rel 5+4 t=9 +0
	rel 16+4 t=3 runtime.morestack_noctxt+0
	rel 61+4 t=3 "".heaped+0
"".init t=1 size=80 value=0 args=0x0 locals=0x0
	0x0000 00000 (stack_test.go:23)	TEXT	"".init+0(SB),$0-0
	0x0000 00000 (stack_test.go:23)	MOVQ	(TLS),CX
	0x0009 00009 (stack_test.go:23)	CMPQ	SP,16(CX)
	0x000d 00013 (stack_test.go:23)	JHI	,22
	0x000f 00015 (stack_test.go:23)	CALL	,runtime.morestack_noctxt(SB)
	0x0014 00020 (stack_test.go:23)	JMP	,0
	0x0016 00022 (stack_test.go:23)	NOP	,
	0x0016 00022 (stack_test.go:23)	NOP	,
	0x0016 00022 (stack_test.go:23)	FUNCDATA	$0,gclocals·3280bececceccd33cb74587feedb1f9f+0(SB)
	0x0016 00022 (stack_test.go:23)	FUNCDATA	$1,gclocals·3280bececceccd33cb74587feedb1f9f+0(SB)
	0x0016 00022 (stack_test.go:23)	MOVB	"".initdone·+0(SB),BL
	0x001c 00028 (stack_test.go:23)	CMPB	BL,$0
	0x001f 00031 (stack_test.go:23)	JEQ	,52
	0x0021 00033 (stack_test.go:23)	MOVB	"".initdone·+0(SB),BL
	0x0027 00039 (stack_test.go:23)	CMPB	BL,$2
	0x002a 00042 (stack_test.go:23)	JNE	,45
	0x002c 00044 (stack_test.go:23)	RET	,
	0x002d 00045 (stack_test.go:23)	PCDATA	$0,$0
	0x002d 00045 (stack_test.go:23)	CALL	,runtime.throwinit(SB)
	0x0032 00050 (stack_test.go:23)	UNDEF	,
	0x0034 00052 (stack_test.go:23)	MOVB	$1,"".initdone·+0(SB)
	0x003b 00059 (stack_test.go:23)	PCDATA	$0,$0
	0x003b 00059 (stack_test.go:23)	CALL	,testing.init(SB)
	0x0040 00064 (stack_test.go:23)	MOVB	$2,"".initdone·+0(SB)
	0x0047 00071 (stack_test.go:23)	RET	,
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 77 07 e8  dH..%....H;a.w..
	0x0010 00 00 00 00 eb ea 8a 1d 00 00 00 00 80 fb 00 74  ...............t
	0x0020 13 8a 1d 00 00 00 00 80 fb 02 75 01 c3 e8 00 00  ..........u.....
	0x0030 00 00 0f 0b c6 05 00 00 00 00 01 e8 00 00 00 00  ................
	0x0040 c6 05 00 00 00 00 02 c3                          ........
	rel 5+4 t=9 +0
	rel 16+4 t=3 runtime.morestack_noctxt+0
	rel 24+4 t=7 "".initdone·+0
	rel 35+4 t=7 "".initdone·+0
	rel 46+4 t=3 runtime.throwinit+0
	rel 54+4 t=7 "".initdone·+-1
	rel 60+4 t=3 testing.init+0
	rel 66+4 t=7 "".initdone·+-1
gclocals·3280bececceccd33cb74587feedb1f9f t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·f5ade30bbce0849e822a7fbe23cb9872 t=7 dupok size=40 value=0
	0x0000 01 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00                          ........
gclocals·a7a3692b8e27e823add69ec4239ba55f t=7 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·a7a3692b8e27e823add69ec4239ba55f t=7 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·3280bececceccd33cb74587feedb1f9f t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·519efd86263089ddb84df3cfe7fd2992 t=7 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 02 00 00 00              ............
gclocals·3280bececceccd33cb74587feedb1f9f t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·519efd86263089ddb84df3cfe7fd2992 t=7 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 02 00 00 00              ............
gclocals·3280bececceccd33cb74587feedb1f9f t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·3280bececceccd33cb74587feedb1f9f t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
"".initdone· t=22 size=1 value=0
"".stacked·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".stacked+0
runtime.throwreturn·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.throwreturn+0
"".heaped·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".heaped+0
runtime.newobject·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.newobject+0
"".BenchmarkStackAlloc·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkStackAlloc+0
"".BenchmarkHeapAlloc·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkHeapAlloc+0
"".init·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
runtime.throwinit·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.throwinit+0
testing.init·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 testing.init+0
runtime.gcbits.0x48844400000000000000000000000000 t=7 dupok size=16 value=0
	0x0000 48 84 44 00 00 00 00 00 00 00 00 00 00 00 00 00  H.D.............
go.string."[]int64" t=7 dupok size=24 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	0x0010 5b 5d 69 6e 74 36 34 00                          []int64.
	rel 0+8 t=1 go.string."[]int64"+16
type.[]int64 t=7 dupok size=80 value=0
	0x0000 18 00 00 00 00 00 00 00 96 8e 76 88 00 08 08 17  ..........v.....
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 16+8 t=1 runtime.algarray+272
	rel 24+8 t=1 runtime.gcbits.0x48844400000000000000000000000000+0
	rel 40+8 t=1 go.string."[]int64"+0
	rel 56+8 t=1 go.weak.type.*[]int64+0
	rel 64+8 t=1 runtime.zerovalue+0
	rel 72+8 t=1 type.int64+0
go.typelink.[]int64/[]int64 t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[]int64+0
runtime.gcbits.0x000000000000000000000000000000 t=7 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
go.string."[128]int64" t=7 dupok size=32 value=0
	0x0000 00 00 00 00 00 00 00 00 0a 00 00 00 00 00 00 00  ................
	0x0010 5b 31 32 38 5d 69 6e 74 36 34 00                 [128]int64.
	rel 0+8 t=1 go.string."[128]int64"+16
type.[128]int64 t=7 dupok size=96 value=0
	0x0000 00 04 00 00 00 00 00 00 5e 53 d1 dd 00 08 08 91  ........^S......
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00  ................
	rel 16+8 t=1 runtime.algarray+0
	rel 24+8 t=1 runtime.gcbits.0x000000000000000000000000000000+0
	rel 40+8 t=1 go.string."[128]int64"+0
	rel 56+8 t=1 go.weak.type.*[128]int64+0
	rel 64+8 t=1 runtime.zerovalue+0
	rel 72+8 t=1 type.int64+0
	rel 80+8 t=1 type.[]int64+0
go.typelink.[128]int64/[128]int64 t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[128]int64+0
runtime.gcbits.0x88000000000000000000000000000000 t=7 dupok size=16 value=0
	0x0000 88 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
go.string."*[128]int64" t=7 dupok size=32 value=0
	0x0000 00 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00  ................
	0x0010 2a 5b 31 32 38 5d 69 6e 74 36 34 00              *[128]int64.
	rel 0+8 t=1 go.string."*[128]int64"+16
type.*[128]int64 t=7 dupok size=80 value=0
	0x0000 08 00 00 00 00 00 00 00 d4 ae 8a df 00 08 08 36  ...............6
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 16+8 t=1 runtime.algarray+80
	rel 24+8 t=1 runtime.gcbits.0x88000000000000000000000000000000+0
	rel 40+8 t=1 go.string."*[128]int64"+0
	rel 56+8 t=1 go.weak.type.**[128]int64+0
	rel 64+8 t=1 runtime.zerovalue+0
	rel 72+8 t=1 type.[128]int64+0
go.string."runtime" t=7 dupok size=24 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	0x0010 72 75 6e 74 69 6d 65 00                          runtime.
	rel 0+8 t=1 go.string."runtime"+16
go.importpath.runtime. t=7 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."runtime"+16
go.string."testing" t=7 dupok size=24 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	0x0010 74 65 73 74 69 6e 67 00                          testing.
	rel 0+8 t=1 go.string."testing"+16
go.importpath.testing. t=7 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."testing"+16
runtime.zerovalue t=7 dupok size=0 value=0
