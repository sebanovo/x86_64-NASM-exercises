section .data
    hello db 'Hello, World!', 0   ; Mensaje con terminador nulo
    helloLen equ $ - hello        ; Longitud del mensaje

section .text
    global main
    extern ExitProcess, WriteConsoleA, GetStdHandle

main:
    ; Obtener el handle para la salida estándar (STD_OUTPUT_HANDLE)
    sub rsp, 28h                ; Reservar espacio para la pila de 64 bits
    mov rcx, -11                ; STD_OUTPUT_HANDLE (-11)
    call GetStdHandle

    ; Escribir el mensaje en la consola
    mov r9, 0                   ; Parámetro opcional para la cantidad de bytes escritos (NULL)
    mov r8, helloLen             ; Longitud del mensaje
    mov rdx, hello               ; Puntero al mensaje
    mov rcx, rax                 ; Handle de la consola (devuelto por GetStdHandle)
    call WriteConsoleA           ; Llamada a la API de Windows para escribir en la consola

    ; Terminar el programa
    mov rcx, 0                   ; Código de salida (0 para éxito)
    call ExitProcess             ; Llamada a la API de Windows para salir