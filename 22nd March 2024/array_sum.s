		AREA sum,CODE,READONLY
		ENTRY
		EXPORT __main
__main ; RESULT IS STORED IN R2 IT SEEMS
		LDR R0,=array;
		MOV R1,#4;
		LDR R2,[R0],#4;
loop
		LDR R3,[R0],#4;
		CMP R2,R3;
		BHI large;
		MOV R2,R3;
large
		SUBS R1,#1;
		CMP R1,#1;
		BNE loop;
		LDR R4,=result;
		STR R2,[R4];
STOP B STOP
array DCD 0X03;
	  DCD 0X041; RESULT IS THISS
	  DCD 0X05;
	  DCD 0X01;

		AREA res,data,readwrite;
result DCD 0X00;
	END