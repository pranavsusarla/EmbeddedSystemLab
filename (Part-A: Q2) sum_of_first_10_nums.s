		AREA sum,CODE,READONLY
		ENTRY
		EXPORT __main

__main
		MOV R0,#1;
loop
		ADD R1,R0;
		ADD R0,#1;
		ADD R3, R1, #0;
		CMP R0,#11
		BNE loop; BNE -> Branch Not Equal
		LDR R2,=Result;
		STR R1,[R2];
STOP B STOP
		AREA MulRes,DATA,READWRITE
Result DCD 0X00;
		END 
			
; DONT USE ANY SPACES LIKE MUL R1, R2; do it like this MUL R1,R2;
