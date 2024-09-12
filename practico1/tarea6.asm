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
	
	MOV AL, -10
	; (+10) 0000 1010
	; (-10) 1111 0110
	; hex = F6
	MOV BL, -5
	; (+5)  0000 0101
	; (-5)  1111 1011
	; hex = FB
	MOV CL, -7
	; (+7)  0000 0111
	; (-7)  1111 1001
	; hex = F9
	MOV DL, -2
	; (+2)  0000 0010
	; (-2)  1111 1110
	; hex = FE
	MOV RAX, -1
	; hex = FFFF FFFF FFFF FFFF 
	MOV RBX, RAX
	; hex = FFFF FFFF FFFF FFFF 
	MOV EAX, EBX
	; EAX = FFFF FFFF
	; RAX = 0000 0000 FFFF FFFF 
	ret