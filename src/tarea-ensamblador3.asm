segment .data
segment .bss
segment .text 
	global main 
main:
	; limpiamos registros de proposito general
	XOR  RAX,RAX
	XOR  RBX,RBX
	XOR  RCX,RCX
	XOR  RDX,RDX
	XOR  R8,R8
	XOR  R9,R9
	XOR  R10,R10
	XOR  R11,R11
	XOR  R12,R12
	XOR  R13,R13
	XOR  R14,R14
	XOR  R15,R15
	
	MOV AX, 0B0001_0001
	; hex = 0011
	MOV CX, 0B1110_1000
	; hex = 00E8
	MOV DX, 0B1100_0000
	; hex = 00C0
	MOV BH, 0B1011_1000	
	; hex = B800
	ret
