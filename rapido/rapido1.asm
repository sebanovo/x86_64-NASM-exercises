section .data
    fileName db "C:\\Users\\HP\\Documents\\Ejercicios\\C-C++\\assembler\\x86_64-NASM-exercises\\build\\syscall.txt", 0   ; Ruta completa del archivo
    dataToWrite db "Hello, syscall!", 0                    ; Texto a escribir
    dataLen equ $ - dataToWrite                            ; Longitud del texto

section .bss
    fileHandle resq 1                                      ; Para almacenar el handle del archivo

section .text
    global main

main:
    ; Paso 1: Crear/Abrir el archivo usando NtCreateFile
    ; Número de syscall de NtCreateFile para Windows 10 (verificar en la tabla para tu versión específica)
    mov rax, 0x55                                          ; Número de syscall para NtCreateFile
    mov rcx, fileHandle                                    ; Salida: dirección para almacenar el handle
    mov rdx, fileName                                      ; Entrada: nombre del archivo
    mov r8, 0x40100080                                     ; Opciones de acceso (GENERIC_WRITE)
    mov r9, 1                                              ; Opciones de compartir (0 = no compartir)
    mov qword [rsp+8*0], 0                                 ; Atributos (NULL)
    mov qword [rsp+8*1], 2                                 ; Disposición (FILE_OVERWRITE_IF)
    mov qword [rsp+8*2], 0                                 ; Opciones (NULL)
    syscall                                                ; Llamada al sistema para crear/abrir el archivo

    ; Guardar el handle del archivo en `fileHandle`
    mov [fileHandle], rax

    ; Paso 2: Escribir en el archivo usando NtWriteFile
    ; Número de syscall para NtWriteFile
    mov rax, 0x3F                                          ; Número de syscall para NtWriteFile
    mov rcx, [fileHandle]                                  ; Handle del archivo
    mov rdx, dataToWrite                                   ; Dirección de los datos a escribir
    mov r8, dataLen                                        ; Longitud de los datos
    mov r9, 0                                              ; Offset de escritura (NULL para posición actual)
    mov qword [rsp+8*0], 0                                 ; Opciones adicionales (NULL)
    syscall                                                ; Llamada al sistema para escribir en el archivo

    ; Paso 3: Cerrar el archivo usando NtClose
    mov rax, 0x19                                          ; Número de syscall para NtClose
    mov rcx, [fileHandle]                                  ; Handle del archivo
    syscall                                                ; Llamada al sistema para cerrar el archivo

    ; Salir del programa
    mov rax, 60                                            ; Syscall para salir (exit)
    xor rdi, rdi                                           ; Código de salida 0
    syscall
