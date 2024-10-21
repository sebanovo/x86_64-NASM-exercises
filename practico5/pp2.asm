segment .data
	;aqui se declaran variables inicializadas
	x1 dd -0.025
	x2 DQ -0.025 
	x3 dd +0.25
	X4 DQ +0.25  
segment .bss
	;aqui van las variables declaradas pero sin inicializar
	v1 resd 1
	v2 resw 1
	v3 resb 1
segment .text 
	global _main 
_main:
	jmp limpiar
	inicio:
	mov RAX,x2
	mov RBX,x1
	mov rdx,[eax]
	mov rcx,[ebx]
	xor dl,cl
	and cx,dx
	not ecx
	neg dx
	or cx,dx
	jmp fin
	limpiar:
	SUB  RAX,RAX
	SUB  RBX,RBX
	SUB  RCX,RCX
	SUB  RDX,RDX
	XOR  R8,R8
	XOR  R9,R9
	XOR  R10,R10
	XOR  R11,R11
	XOR  R12,R12
	XOR  R13,R13
	XOR  R14,R14
	XOR  R15,R15
	jmp inicio
	fin:
	ret


