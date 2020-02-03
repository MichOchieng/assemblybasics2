.syntax unified

.section .vectors 	
.skip 4	
.word start

.section .text
.thumb_func
start:
	/*Question 1*/
	/*Shifts binary version of 4 left once, multiplying by 2*/
	/*mov r0, #0b0100
	lsl r1,r0,1	*/
	/*Shifts binary version of 8 right once, dividing by 2*/
	/*mov r2,r1
	lsr r3,r2,1	
	b .*/

	/*Question 2*/
	/*First store values{*/	
	/*IN*/
	ldrb r2,=0x49
	ldrb r3,=0x4e
	strb r2,[r0,0]
	strb r3,[r0,1]
	/*HIS*/
	ldrb r3,=0x48
	ldrb r4,=0x53
	strb r3,[r0,2]
	strb r2,[r0,3]
	strb r4,[r0,4]
	/*HOUSE*/
	ldrb r5,=0x4f
	ldrb r6,=0x55
	ldrb r7,=0x45
	strb r3,[r0,5]
	strb r5,[r0,6]
	strb r6,[r0,7]
	strb r4,[r0,8]
	strb r7,[r0,9]
	/*AT*/
	ldrb r8,=0x41
	ldrb r9,=0x54
	strb r8,[r0,10]
	strb r9,[r0,11]
	/*RLYEH*/
	ldrb r10,=0x52
	ldrb r11,=0x4c
	ldrb r12,=0x59
	strb r10,[r0,12]
	strb r11,[r0,13]
	strb r12,[r0,14]
	strb r7,[r0,15]
	strb r3,[r0,16]

	b .
	/*Question 3*/
	/*255066640 × 235553 = 60081712251920*/
	/*ldr r0,=#0x0f340210
	ldr r1,=#0x00039821	
	mul r4,r0,r1*/
	/*
		The answer given in r4 is 3709715472. This is significantly off from 60081712251920
		but is most likely due to the actual result overflowing the max 32-bit size
	*/
	/*b .*/
	
