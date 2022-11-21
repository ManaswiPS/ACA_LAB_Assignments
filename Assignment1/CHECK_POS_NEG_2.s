;8. Find whether the 32-bit number is negative or a positive number.
    AREA RESET, CODE, READONLY
    ENTRY
MAIN
    LDR R0, =NUM
    LDR R0, [R0]
    LDR R1, =COMPARE
    LDR R1, [R1]
    AND R1, R1, R0
    CMP R1, #0
    BEQ POS
    MOV R0, #1
    B STOP
POS
    MOV R0, #0
    B STOP
STOP B STOP
    SWI &11
    
NUM DCD 0x82345678
COMPARE DCD 0x80000000
    
    END