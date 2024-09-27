;; dec2
segment .data				
    PF   DQ   +0B0.00000001011111111100000011111100000111110				
    NOM  DQ   -0B0.00000001011111111100000011111100000111110				
    CICLO  DW +0B_0000_0000_0000_1111				
    A   DD   -0B_0111_1111  				
    B   DD   -0B_0000_0001				
    C   DD   -1   				
    D   DW   +0B0111_1111_1111_1111				
segment .bss				
    C1  RESD 1				
    C2  RESD 1				
segment .text 				
    global main 				
main:				
    ret