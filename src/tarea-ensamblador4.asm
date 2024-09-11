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
	
	MOV AL, 10
	; 0000 1010
	; hex = 0A
	MOV AH, 11
	; 0000 1011
	; hex = 0B
	; AH AL
	; 0B 0A 
	MOV BL, 12
	; 0000 1100
	; hex = 0C
	MOV BH, 15
	; 0000 1111
	; hex = 0F
	; BH BL
	; 0F 0C
	MOV RCX, RAX
	; hex = 0000 0000 0000 0B0A
	MOV RDX, RBX	
	; hex = 0000 0000 0000 0F0C 
	ret