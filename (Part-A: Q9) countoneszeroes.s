	area onezero, code, readonly
	export __main
		
__main
	ldr r0, =src;
	eor r5, r5, r5; exclusive or
	eor r6, r6, r6;
	mov r2, #2;
	
up
	mov r1, #32;
	ldr r3, [r0];
	
top
	tst r3, #1;
	beq inc_zero;
	add r6, #1;
	b down;

inc_zero
	add r5, #1;

down
	lsr r3, #1;
	sub r1, #1;
	cmp r1, #0;
	bne top;
	add r0, #4;
	sub r2, #1;
	cmp r2, #0;
	bne up;
	ldr r7, =ones;
	str r6, [r7];
	ldr r8, =zeroes;
	str r5, [r8];

src dcd 0xAA55AA55, 0x11111111;
	
	area count, data, readwrite
ones dcd 0x0;
zeroes dcd 0x0;
	end

; results are stored in R5, R6;
