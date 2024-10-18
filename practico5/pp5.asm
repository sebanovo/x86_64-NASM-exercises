segment .data
segment .bss
segment .text 
   global _main 
_main:
   jmp limpiar
   inicio:
      mov rax,"00001234"
      mov rbx,"00001111"
      xor rax,rbx
      and eax,ebx
      or  eax,ebx
      not ebx
      neg ebx
      jmp fin
      limpiar:
             sub eax,ebx
   	  sub ebx,ecx
   	  sub ebx,eax
   	  sub eax,edx
      jmp inicio
      fin:
   ret