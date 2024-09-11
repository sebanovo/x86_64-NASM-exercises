;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with:
;assemble: -->> nasm -f win64 -o 221044043.o 221044043.asm -l 221044043.lst
;link: -->> gcc -o 221044043 221044043.o
;run: -->> 221044043
;debugger: -->> x64dbg 221044043
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-----------------------------------------
;C:\Ensamblador\MinGW64\bin
;C:\Ensamblador\programa

;file: 221044043.asm (nombre programa)
;registro: 221044043
;nombres y apellidos: Pablo Daniel Castedo Suarez

global main
extern printf, scanf

segment .data
; aquí se declaran variables inicializadas

segment .bss
;Block Started by Symbol (BSS)
; aquí van las variables declaradas pero sin inicializar

segment .text

main:
; etiqueta de indica el comienzo del programa principal
; aquí van las intrucciones 
;...
;...
ret

;==========================================
;============= subrutina ==================
;==========================================
; aquí instrucciones subrutina (funcion)
;...
;...
ret