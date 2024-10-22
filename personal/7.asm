section .data
section .bss
section .text
	global main
main:
	mov rax, -1
	mov eax , 2 ; borra y afecta

	mov rax, 0x3333333333333
	not eax ; borra y afecta

	mov rax, 0x3333333333333
	neg eax ; borra y afecta

	mov rax, 0x3333333333333
	sub eax, -2 ; borra y afecta

	mov rax, 0x3333333333333 
	add eax, 1; borra y afecta

	mov rax, 0x3333333333333
	and eax, 0x22222222  ; borra y afecta

	mov rax, 0x3333333333333 
	or eax, 0x22222222  ; borra y afecta

	mov rax, 0x3333333333333 
	xor eax, 0x22222222  ; borra y afecta
	; en conclusion cualquier operación en un registro de 32 bits
	; borra lo que se hizo en el registro de 64
	ret	
