; SERIE 
; p = (1^3 + 2^3 + 3^3...+ n^3) / n
section .data
	format db "%d", 0
	n dq 5
section .bss
	resultado resq 1
section .text
	extern printf
	global main

main:
	mov rcx, 1
	xor rdx, rdx

	CICLO: 
		mov rbx, rcx
		mov rax, rbx
		imul rax, rax
		imul rax, rbx

		add rdx, rax 
		inc rcx
		cmp rcx, [n]
		jle CICLO

	mov rax, rdx	
	cqo	; xor rdx, rdx
	idiv qword[n]	
	mov [resultado] , rax
	sub rsp, 0x20
	mov rcx, format
	mov rdx, [resultado]
	call printf
	add rsp, 0x20

	ret	