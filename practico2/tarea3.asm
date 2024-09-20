segment .data				
	dato0  DD  +10.05    ;4120CCCC				
	dato   DD  -10.05    ;C120CCCC				
	dato1  DD  +0x12345678    			
	dato2  DD  -1			
	dato3  DD  "1234"				
	Dato4  DD  "0123456789"				
	dato5  dd  0x1234				
segment .bss				
segment .text 				
	global main 				
main:				
	XOR RAX,RAX
	XOR RBX,RBX
	XOR RCX,RCX
	XOR EDX,EDX
	ret