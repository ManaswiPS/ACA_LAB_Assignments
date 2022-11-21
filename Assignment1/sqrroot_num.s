; SQUARE ROOT
	AREA PROGRAM,CODE,READONLY
    ENTRY
Main
    LDR R2,=0x40000000
	LDR R2,[R2];A
    LDR R0,=0x01 ; D
    LDR R1,=0x01 ;E
loop1   
	SUB R2,R2,R0
    CMP R2,#0
    BEQ loop
    ADD R0,#1
    ADD R0,#1
    ADD R1,#1
    B loop1
loop
    LDR R3,=0x40000030
    STR R1,[R3]
    
STOP B STOP
    END