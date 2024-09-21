segment .data
	format db "%d",0 

	mensaje1 db "Introduce el numero1: " ,0
	mensaje2 db "Introduce el numero2: " ,0
	mensaje3 db "%d + %d = %d", 0

segment .bss
	numero1 resb 1
	numero2 resb 1

segment .text
    extern printf
    extern scanf
	global main

main: 
	sub rsp, 0x20	

	mov rcx, mensaje1
	call printf

	mov rcx, format
    mov rdx, numero1
	call scanf

	mov rcx, mensaje2
	call printf

	mov rcx, format
    mov rdx, numero2
	call scanf

	mov rcx, mensaje3
	movzx rdx, byte[numero1]
	movzx r8, byte[numero2]
    mov r9, rdx
    add r9, r8
	call printf

	add rsp, 0x20
	ret