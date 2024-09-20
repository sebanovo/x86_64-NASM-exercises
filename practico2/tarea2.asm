segment .data							
;   WORD difinicion sin signo							
	d1  dw  5551  ; decimal						
	d2  dw  0x15AF  ;hexadecimal						
	d3  dw  15AFh   ;hexadecmial						
	d4  dw  0101010110101111b   ; binario						
;  WORD definicion  con signo 							
    d5  dw  +551							
	d6  dw  -0x15AF						
	d7  dw  -15AFh						
	d8  dw  -0b0101010110101111						
	d9  dw  +0b0101_0101_1010_1111						
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