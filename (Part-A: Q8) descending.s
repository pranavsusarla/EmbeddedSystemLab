	area descending, code, readonly
	export __main
__main
	mov r8,#4;
	ldr r2,=cvalue;
	ldr r3,=dvalue;
loop0
	ldr r1,[r2],#4;
region
	str r1,[r3],#4;
	subs r8,r8,#1;
	cmp r8,#0;
	bne loop0;

start1
	mov r5,#3;
	mov r7,#0;
	ldr r1,=dvalue;
loop
	ldr r2,[r1],#4;
	ldr r3,[r1];
	cmp r2,r3;
	bgt loop2;
	str r2,[r1],#-4;
	str r3,[r1];
	mov r7,#1;
	add r1,#4;

loop2
	subs r5,r5,#1;
	cmp r5,#0;
	bne loop;
	cmp r7,#0;
	bne start1;
	
	nop;
	nop;
	nop;

cvalue  dcd 0x44444444;
		dcd 0x11111111;
		dcd 0x33333333;
		dcd 0x22222222;

	area dst, data,readwrite;
dvalue dcd 0x0;
	end
