; HELLO WORD USING WINDOWS API 
extern GetStdHandle
extern WriteFile
extern Sleep
extern ExitProcess
 
%define STD_OUTPUT_HANDLE (-11)
 
section .data
hello_str db "Hello World", 13, 10
hello_size equ ($ - hello_str)
 
output_handle dq 0
 
section .text
 
global main
main:
    ;Aligne la pile
    and rsp, -16 
    mov rbp, rsp
 
    ;Récupère l'output standart
    mov ecx, STD_OUTPUT_HANDLE
    call GetStdHandle
    mov [output_handle], rax
     
    ;Affiche le message
    ;Shadow Space
    sub rsp, 48
    mov rcx, [output_handle]
    mov rdx, hello_str
    mov r8d, hello_size
    mov r9, 0
    mov QWORD [rsp + 32], 0
    call WriteFile
    ;Détruit l'espace de pile alloué pour les paramètres de la fonction
    add rsp, 48
     
    ;Pause de 1000 millisecondes pour donner le temps de voir
    ;Shadow Space
    sub rsp, 0x20
    mov ecx, 1000
    call Sleep

    ;Quitte
    xor rcx, rcx
    call ExitProcess
    ret