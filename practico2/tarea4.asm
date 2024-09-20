segment .data
	var1  DQ  0xFF_FF_FF_FF_FF_FF_FF_FF
	var2  DQ  -1						
	var3  DQ  "ABCDEFGH"     						
	var4  DQ  "012345678"						
	var5  DQ  "abcdefgh"						
segment .bss						
segment .text 						
	global main 						
main: 
	XOR RAX,RAX
	XOR RBX,RBX
	XOR RCX,RCX
	XOR EDX,EDX
	XOR R8,R8
	XOR R9,R9
	XOR R10,R10
	XOR R11,R11
	XOR R12,R12
	XOR R13,R13
	XOR R14,R14
	XOR R15,R15
	ret