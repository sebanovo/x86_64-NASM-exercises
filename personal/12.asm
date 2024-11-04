[bits 64]

extern printf
global main
section .data
	vector dq 10,9,8,7,5,4,3,2,1  
	n equ ($ - vector) / 8 
	fmt db "%llu, ", 0
	salto db 10, 0
section .text

main:
	call print
	mov rsi, 0
	for1: 
	mov rdi, rsi
	for2: 
	mov r9, qword[vector + rsi * 8]
	mov r10, qword[vector + (rdi + 1) * 8]
	cmp r10, r9
	jl L1 
	jmp L2 

	L1: 
	mov r9, qword[vector + rsi * 8]
	mov r10, qword[vector + (rdi + 1) * 8]
	mov qword[vector + rsi * 8], r10 
	mov qword[vector + (rdi + 1) * 8], r9

	L2:
	inc rdi
	cmp rdi, n - 1
	jle for2
	inc rsi
	cmp rsi, n - 1
	jl for1 

	sub rsp , 0x20
	mov rcx, salto
	call printf
	add rsp , 0x20

	call print
	ret

print: 
	mov rsi, 0
	ciclo:
	sub rsp, 0x20
	mov rcx, fmt
	mov rdx, qword[vector + rsi * 8]
	call printf
	add rsp, 0x20
	inc rsi	
	cmp rsi, n 
	jl ciclo
	ret
