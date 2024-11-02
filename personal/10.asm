global main
extern printf, abs

section .data
    n1 dq -5                        ; Define n1 como un entero de 32 bits
    fmt db "abs(%lld) = %lld", 0

section .bss
    result resq 1                   ; Reserva espacio para el resultado en 32 bits

section .text

main:
   sub rsp, 0x20                       ; Alineamos la pila
   mov edi, [n1]                    ; Pasa n1 a `edi` (32 bits para `abs`)
   mov rcx, [n1]
   call qword abs                         ; Llama a abs
   mov [result], eax                ; Guarda el resultado de `eax` en result
   add rsp, 0x20                       ; Restaura la pila

   sub rsp, 0x20                    ; Alineamos la pila para printf
   mov rcx, fmt                     ; Primer argumento: formato
   mov rdx, [n1]                    ; Segundo argumento: el valor de n1
   mov r8, [result]                ; Tercer argumento: el resultado de abs
   call printf                      ; Llama a printf
   add rsp, 0x20                    ; Restaura la pila

   ret
