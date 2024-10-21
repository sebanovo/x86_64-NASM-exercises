segment .data
segment .bss
segment .text 
   global _main 
_main:
   jmp limpiar
   inicio:
   mov eax,011H
   mov ebx,22
   and eax,ebx
   jmp fin
   limpiar:
   AND eax,ebx
   sub ebx,eax
   not ecx
   or edx,edx
   jmp inicio
   fin:
   ret