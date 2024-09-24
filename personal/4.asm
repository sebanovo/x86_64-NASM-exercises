; IMPRIME UN TRIANGULO DE ASTERISCOS alrevez
; **********
; *********
; ********
; *******
; ******
; *****
; ****
; ***
; **
; *
section .data
	aster db "*", 0
        newline db 10, 0
        n db 10
section .b20
section .text
	extern printf
	global main

main:
        mov rcx, [n]
	CICLO1:
                push rcx
                CICLO2:
                        push rcx
                        sub rsp, 0x20
                        mov rcx, aster
                        call printf
                        add rsp , 0x20
                        pop rcx
                        loop CICLO2
                pop rcx

                push rcx
                sub rsp, 0x20
                mov rcx, newline
                call printf
                add rsp , 0x20
                pop rcx

		loop CICLO1
	ret
