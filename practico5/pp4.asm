segment .data
segment .bss
segment .text 
   global _main 
_main:
   jmp limpiar
   inicio:
      mov rax,"12345678"
      mov rbx,"ABCDefgh"
      xor rax,rbx
      and rax,rbx
      or  rax,rbx
      not rbx
      neg rbx
      jmp fin
      limpiar:
               sub rax,rax
   	  sub rbx,rbx
   	  sub rcx,rcx
   	  sub rdx,rdx
      jmp inicio
      fin:
   ret