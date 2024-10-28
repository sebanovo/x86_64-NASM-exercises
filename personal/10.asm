global main
extern printf, abs

section .data
    n1 db -5                        ; Define n1 como un entero de 32 bits
    fmt db "abs(%d) = %d", 0

section .bss
    result resd 1                   ; Reserva espacio para el resultado en 32 bits

section .text

main:
   sub rsp, 8                       ; Alineamos la pila
   mov edi, [n1]                    ; Pasa n1 a `edi` (32 bits para `abs`)
   call dword[abs]                         ; Llama a abs
   mov [result], eax                ; Guarda el resultado de `eax` en result
   add rsp, 8                       ; Restaura la pila

   sub rsp, 0x20                    ; Alineamos la pila para printf
   mov rcx, fmt                     ; Primer argumento: formato
   mov edx, [n1]                    ; Segundo argumento: el valor de n1
   mov r8d, [result]                ; Tercer argumento: el resultado de abs
   call printf                      ; Llama a printf
   add rsp, 0x20                    ; Restaura la pila

   ret
