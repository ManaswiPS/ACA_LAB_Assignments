	AREA Program,CODE,READONLY
	ENTRY
Main
	LDR R0,=0x40000000
	LDR R1,[R0]
	
	LDR R0,=0x40000004
	LDR R2,[R0]
	
	ADD R3,R1,R2
	LDR R0,=0x40000008
	STR R3,[R0]
	
	END
	
	
	