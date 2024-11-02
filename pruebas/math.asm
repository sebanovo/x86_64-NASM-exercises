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

%endif