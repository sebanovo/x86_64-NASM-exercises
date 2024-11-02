extern printf, scanf
section .data
	vector dq 10,9,8,7,6,5,4,3,2,1
	fmt db "%llu, ", 0
	n db 10
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
	jl intercambiar

	inc rdi
	cmp rdi, 9
	jle for2
	inc rsi
	cmp rsi, 9
	jl for1 

	sub rsp, 0x20
	mov rcx, n 
	call printf
	add rsp, 0x20
	call print
ret

intercambiar: 
	mov r9, qword[vector + rsi * 8]
	mov r10, qword[vector + (rdi + 1) * 8]
	mov qword[vector + rsi * 8], r10 
	mov qword[vector + (rdi + 1) * 8], r9
    jmp for2	

print: 
	mov rsi, 0
	ciclo:
	sub rsp, 0x20
	mov rcx, fmt
	mov rdx, qword[vector + rsi * 8]
	call printf
	add rsp, 0x20
	inc rsi	
	cmp rsi, 10
	jl ciclo
	ret