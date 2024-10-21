;; dec3
segment .data		
    PF       DQ +1010.1110000		
    NOM      DQ -1010.1110000		
    APELLIDO DW "01A"		
    LETRA    DD "ABCDCDFGH"		
    CICLO    DW +0B_0000_0000_0000_1001		
    A        DB -0B_0111_1111  		
    B        DB -0B_0000_0001		
    C        DQ -1   		
    D        DW +0B0111_1111_1111_1111		
segment .bss		
    C1  RESQ 1		
    C2  RESD 1		
segment .text 		
    global main 		
main:		
    ret
