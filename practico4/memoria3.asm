segment .data
NOMBRE    DW  "floresguzman"; en mayuscula   apellido del alumno
REGISTRO  DB  "201023456789";colocar registro del alumno
ab     DD  00402000H
aa     DD  011223344H 
 z	   db  +127
 a     DD  -32768
bb     db  0000_0001b
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