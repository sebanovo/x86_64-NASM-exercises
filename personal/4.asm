;; IMPRIME UN TRIANGULO DE ASTERISCOS
segment .data
	aster db "*", 0
	espacio db 10, 0
    i db 0
    j db 0

segment .bss
segment .text
	extern printf
	global main

main:
    sub rsp, 0x20

	CICLO1: 
		cmp byte[i], 5
		je CICLO_FIN
		inc byte[i]

		mov byte[j], 0
		CICLO2: 
		    cmp byte[j], i
			je CICLO1

			mov rcx, aster
			call printf

			inc byte[j]
			jmp CICLO2

		mov rcx,espacio 
		call printf
		jmp CICLO1

	CICLO_FIN:

    add rsp, 0x20
	ret