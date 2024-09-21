;; IMPRIME ASTERISCOS EN LINEA *****
segment .data
	aster db "*", 0
    c db 5
segment .bss
segment .text
	extern printf
	global main

main:
    sub rsp, 0x20

	CICLO: 
		cmp byte[c], 0
		je CICLO_FIN 

        mov rcx, aster
	 	call printf	
	 	dec byte[c]
		jmp CICLO

	CICLO_FIN:
    add rsp, 0x20

	ret