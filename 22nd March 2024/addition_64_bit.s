		AREA sixtyfour,CODE,READONLY
		ENTRY
		EXPORT __main
			
L1 DCD 0XF0000001;
L2 DCD 0X10000001;
H1 DCD 0X20000000;
H2 DCD 0X30000000;
__main
		;do something here
		LDR R0,L1;
		LDR R1,L2;
		LDR R2,H1;
		LDR R3,H2;
		ADD R4,R0,R1;
		ADD R5,R2,R3;
		LDR R6,=LOWER;
		STR R4,[R6];
		LDR R8,=HIGHER;
		STR R5,[R8];
STOP B STOP
		AREA sixtyfour,DATA,READWRITE
LOWER DCD 0X00;
HIGHER DCD 0X00;
		END
