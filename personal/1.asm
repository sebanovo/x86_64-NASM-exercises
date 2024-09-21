;; IMPRIMIR UNA SUMA POR PANTALLA
segment .data
	num1 db 30
	num2 db 40
    format db "%d + %d = %d", 10,0
segment .bss
segment .text
	global main
	extern printf
main: 
	mov al, [num1]
	mov bl, [num2]
	add al, bl 

	sub rsp, 0x20
	mov rcx, format
    movzx rdx, byte[num1]
    movzx r8, byte[num2]
    movzx r9, al 
	call printf
	add rsp, 0x20
	ret