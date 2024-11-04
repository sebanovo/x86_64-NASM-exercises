%ifndef MATH_H 
%define MATH_H

add_numbers:
    mov rax, rdi
    add rax, rsi
    ret

multiply_numbers:
    mov rax, rdi
    imul rax, rsi
    ret

; convencion cdcel (32 bits)
cube: 
    push rbp 
    mov rbp, rsp
    mov rbx, [rbp+16] 
    ; prologo
    mov rax, 1
    mov rcx, 3
    .ciclo:
    imul rbx 
    loop .ciclo 
    ; epilogo

    ; mov rsp,  rbp 
    ; pop rbp
    leave
    ret
    ; ret 8 ;" limpia el parámetro de la pila (equivalente a `add rsp, 8` seguido de `ret`)
    ; leave es lo mismo que: 
    ; mov rsp,  rbp 
    ; pop rbp
suma: 
    push rbp 
    mov rbp, rsp
    mov [rbp-16], rcx
    mov [rbp-24], rdx 

    mov rax, [rbp-16]
    add rax , [rbp-24]
    leave
    ret

%endif