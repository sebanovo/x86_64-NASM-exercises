section .data
    aster db "*", 0     ; Asterisco
    c db 0              ; Contador inicializado en 0
    limite db 5         ; Límite superior (5 asteriscos)
section .bss
section .text
    extern printf
    global main
main:
    sub rsp, 0x20

CICLO: 
    mov al, [c]
    cmp al, byte[limite]   ; Compara el contador con el límite (5)
    je CICLO_FIN            ; Si alcanza el límite, termina el ciclo

    mov rcx, aster
    call printf             ; Imprime asterisco

    inc byte[c]             ; Incrementa el contador
    jmp CICLO               ; Repite el ciclo

CICLO_FIN:
    add rsp, 0x20

    ret
