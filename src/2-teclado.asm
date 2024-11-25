global main
extern printf, scanf

section .data
	msj1 db "ingresar una cadena (max. 50 caracteres): " , 0
	msj2 db "la cadena ingresada es %s", 10, 0
	fmt db "%s", 0
	
section .bss
	cadena resb 50
section .text

main: 
	sub rsp, 0x20	

	mov rcx, msj1
	call printf

	mov rcx, fmt
	mov rdx, cadena
	call scanf

	mov rcx, msj2
	mov rdx, cadena
	call printf

	add rsp, 0x20
	ret