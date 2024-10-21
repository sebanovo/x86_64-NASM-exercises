;; dec1
segment .data				
	PF    DQ +0B11110001.00110011001100110011011110011001100111011				
	REG   DD -0B0.000000000000110011001100110011011110011001100111				
	CICLO DW +0B_0000_0000_0000_1111				
	A     DB -0B_0111_1111  			
	B     DB -0B_0000_0001			
	C     DW +0XFFFF   			
	D     DW +0B0111_1111_1111_1111			
segment .bss				
	C1  RESD 1				
	C2  RESD 1			
segment .text 				
	global main 				
main:				
	ret