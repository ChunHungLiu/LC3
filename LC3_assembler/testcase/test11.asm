;label is too long(ok)	
	.ORIG	0X3002 LDR	R1, R3, 0X0
	ld R0, PTR
	and	R2, R2, #0 
	LD	r3, 3
	GETC
;Test
TEST123456789123456789	AdD	R4, R1, #-4
 OUTPUT 	BRz	OUTPUT
; Match

	NOT	R1,R1
	
	ADD 	R1,R1,R0  ; ; ; ;
	JMp	R7
	
		
 	JSR	x3
	NOT	R1 , R1
	BRnp	GETCHAR 
	ADD 	R2, R2, #1
	.blkw 9
	.STRINGZ "APPLE BANANA	GG" 
	GETCHAR ADD	R3, R3, #1
	LDR	R1, R3, #0
	BRnzp   TEST123456789123456789 
	
	LD	R0,ASCII
	ADD	R0, R0, R2
	OUT
	TRAP 0X25
ASCII .FilL	X30
PTR	.FILL	0X4000
	
.END
