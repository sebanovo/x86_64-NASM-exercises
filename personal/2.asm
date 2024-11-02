;; PIDE 2 NÚMEROS E IMPRIME LA SUMA
section .data
	format db "%d",0 

	mensaje1 db "Introduce el numero1: " ,0
	mensaje2 db "Introduce el numero2: " ,0
	mensaje3 db "%d + %d = %d", 0

section .bss
	numero1 resb 4 ; entero de 32 bits con signo
	numero2 resb 4 ; entero de 32 bits con signo

section .text
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
    mov edx, [numero1]    
    mov r8d, [numero2]    
    mov r9d, edx 
    add r9d, r8d   
    call printf

	add rsp, 0x20
	ret