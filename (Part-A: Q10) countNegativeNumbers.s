		area neg, code, readonly
		entry
		export __main
__main
		ldr R0,=array;
		mov R1,#4;
		MOV R2,#0; R2 contains the count of negative numbers
loop
		ldr R3,[R0],#4;
		cmp R3,#0;
		blt large; branch if less than
		b loop2
large
		add r2,#1;
loop2
		sub R1,#1;
		cmp R1,#0;
		bne loop;
		ldr R5,=result;
		str R2,[R5];
stop b stop
array dcd 0xFFFFFFFA;
	  dcd 0x041;
	  dcd 0x05;
	  dcd 0x01;
		  
	  area res, data, readwrite
result dcd 0x00;
		end;
