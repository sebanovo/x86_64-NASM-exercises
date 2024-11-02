extern printf

global main
section .data
	texto db "Hola mundo", 10, 0
section .text
main: 	
	sub rsp, 0x20
	mov rcx, texto
	call printf
	add rsp, 0x20
	ret
