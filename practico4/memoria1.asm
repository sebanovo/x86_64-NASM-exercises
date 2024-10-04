segment .data
;aqui se declaran variables inicializadas
var1	DB	233		;entero sin signo a nivel de byte
var2	DB	+77		;entero con signo a nivel de byte
var3	DB  -91		;entero con signo a nivel de byte (negativo)
;----------------------------------------------------
var4	DW	233		;entero sin signo a nivel de word
var5	DW	+77		;entero con signo a nivel de word
var6	DW  -91		;entero con signo a nivel de word (negativo)
;----------------------------------------------------
var7	DD	233		;entero sin signo a nivel de Double word
var8	DD	+77		;entero con signo a nivel de Double word
var9	DD  -91		;entero con signo a nivel de Double word (negativo)
segment .bss
;block storage start
;aqui van las variables declaradas pero sin inicializar

segment .text 
global main 					
main:
 XOR RAX,RAX
 XOR RBX,RBX
 XOR RCX,RCX
 XOR EDX,EDX
ret