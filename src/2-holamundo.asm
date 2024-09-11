section .data
    msg db "Hola mundo", 0

section .text
    global main
    extern printf 

main:
	sub rsp, 0x20
	mov rcx, msg 
	call printf
	add rsp, 0x20

    ret 
