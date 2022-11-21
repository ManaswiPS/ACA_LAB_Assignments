	AREA Program,CODE,READONLY
	ENTRY
Main
	LDR R0,=Value
	LDR R1,[R0]           ;Load higher 16 bit
	LDR R2,[R0,#2]		  ;Load lower 16 bit
	
	ADD R3,R1,R2
	
	LDR R0,=0x40000000
	STR R3,[R0]
Value DCD 0x11112222
	END