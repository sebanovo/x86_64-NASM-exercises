;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with:
;assemble: -->> nasm -f win64 -o 221044043.o 221044043.asm -l 221044043.lst
;link: -->> gcc -o 221044043 221044043.o
;run: -->> 221044043
;debugger: -->> x64dbg 221044043
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-----------------------------------------
global main
extern printf, scanf

segment .data

segment .rdata

segment .bss

segment .text

main:

	ret