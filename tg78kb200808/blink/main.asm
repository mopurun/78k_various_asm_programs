;making
;mopurun



VT	CSEG 	AT 	0H
	DW	_main,_main
	
OP1	CSEG 	AT 	80H
	DB	6EH,01H,00H,00H,00H
OP2	CSEG 	AT 	1080H
	DB	6EH,01H,00H,00H,00H
	
	
C1	CSEG 	AT 	8FH
_main:
	;MOV	OSCCTL,#01H
	MOVW	AX,#0FEDFH
	MOVW	SP,AX
	MOV	PM6,#0FCH 

loop:

	MOV	P6,#01H  
	
	CALL	!delay
	
	MOV	P6,#02H 
	
	CALL 	!delay
	
	BR	$loop
	
delay:
	MOV	A,#0FFH	
delay_loop1:
	MOV	X,#0FFH
delay_loop2:	
	NOP
	DEC	X
	BNZ	$delay_loop2
	DEC	A	
	BNZ	$delay_loop1
	
	RET
	
	

END
