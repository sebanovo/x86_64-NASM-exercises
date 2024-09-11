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
	
	MOV CL, 0B0001_0001
	; hex = 11
	MOV CH, 0B1110_1000
	; hex = E8
	; CH CL
	; E8 11
	MOV DL, 0B1100_0000
	; hex = C0
	MOV DH, 0B1011_1000
	; hex = B8
	; DH DL
	; B8 C0
	ret
