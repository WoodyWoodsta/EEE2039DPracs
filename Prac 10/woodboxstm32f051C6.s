	.cpu cortex-m0
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.code	16
	.file	"woodboxstm32f051C6.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_EnableIRQ, %function
NVIC_EnableIRQ:
.LFB24:
	.file 1 "./Libraries/core_cm0.h"
	.loc 1 516 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 1 517 0
	ldr	r3, .L2
	add	r2, r7, #7
	ldrb	r2, [r2]
	mov	r1, r2
	mov	r2, #31
	and	r2, r1
	mov	r1, #1
	lsl	r1, r1, r2
	mov	r2, r1
	str	r2, [r3]
	.loc 1 518 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	-536813312
	.cfi_endproc
.LFE24:
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.align	2
	.global	programError
	.code	16
	.thumb_func
	.type	programError, %function
programError:
.LFB33:
	.file 2 "woodboxstm32f051C6.c"
	.loc 2 17 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 18 0
	ldr	r3, .L6
	mov	r2, #231
	strh	r2, [r3, #20]
.L5:
	.loc 2 20 0 discriminator 1
	b	.L5
.L7:
	.align	2
.L6:
	.word	1207960576
	.cfi_endproc
.LFE33:
	.size	programError, .-programError
	.align	2
	.global	delayms
	.code	16
	.thumb_func
	.type	delayms, %function
delayms:
.LFB34:
	.loc 2 27 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 29 0
	ldr	r3, [r7, #4]
	ldr	r2, .L11
	mul	r3, r2
	str	r3, [r7, #4]
	.loc 2 30 0
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L10:
	.loc 2 31 0
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L9:
	.loc 2 30 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L10
	.loc 2 33 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	615
	.cfi_endproc
.LFE34:
	.size	delayms, .-delayms
	.align	2
	.global	delaypointms
	.code	16
	.thumb_func
	.type	delaypointms, %function
delaypointms:
.LFB35:
	.loc 2 35 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 37 0
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #1
	str	r3, [r7, #4]
	.loc 2 38 0
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L14
.L15:
	.loc 2 39 0
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L14:
	.loc 2 38 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L15
	.loc 2 41 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE35:
	.size	delaypointms, .-delaypointms
	.align	2
	.global	initLEDs
	.code	16
	.thumb_func
	.type	initLEDs, %function
initLEDs:
.LFB36:
	.loc 2 49 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 50 0
	ldr	r3, .L17
	ldr	r2, .L17
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #11
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 2 51 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3]
	.loc 2 52 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3]
	.loc 2 53 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3]
	.loc 2 54 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #64
	orr	r2, r1
	str	r2, [r3]
	.loc 2 55 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #1
	orr	r2, r1
	str	r2, [r3]
	.loc 2 56 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #3
	orr	r2, r1
	str	r2, [r3]
	.loc 2 57 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #5
	orr	r2, r1
	str	r2, [r3]
	.loc 2 58 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #7
	orr	r2, r1
	str	r2, [r3]
	.loc 2 60 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	1073876992
	.word	1207960576
	.cfi_endproc
.LFE36:
	.size	initLEDs, .-initLEDs
	.align	2
	.global	incrementLEDs
	.code	16
	.thumb_func
	.type	incrementLEDs, %function
incrementLEDs:
.LFB37:
	.loc 2 62 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 2 63 0
	ldr	r3, .L20
	ldrh	r3, [r3, #20]
	uxth	r2, r3
	mov	r3, #15
	add	r3, r7, r3
	strb	r2, [r3]
	.loc 2 64 0
	ldr	r2, .L20
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	uxth	r1, r3
	mov	r3, #15
	add	r3, r7, r3
	ldrb	r3, [r3]
	sxtb	r3, r3
	uxth	r3, r3
	add	r3, r1, r3
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r2, #20]
	.loc 2 66 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	1207960576
	.cfi_endproc
.LFE37:
	.size	incrementLEDs, .-incrementLEDs
	.align	2
	.global	initPB
	.code	16
	.thumb_func
	.type	initPB, %function
initPB:
.LFB38:
	.loc 2 70 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 71 0
	ldr	r3, .L23
	ldr	r2, .L23
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #10
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 2 72 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 2 73 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 2 74 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 2 75 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #64
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 2 76 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	1073876992
	.cfi_endproc
.LFE38:
	.size	initPB, .-initPB
	.align	2
	.global	getPB
	.code	16
	.thumb_func
	.type	getPB, %function
getPB:
.LFB39:
	.loc 2 78 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 2 79 0
	mov	r3, #15
	add	r3, r7, r3
	mov	r2, #0
	strb	r2, [r3]
	.loc 2 80 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L26
	.loc 2 81 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	mov	r2, r3
	mov	r3, #1
	and	r3, r2
	neg	r2, r3
	adc	r3, r3, r2
	uxtb	r2, r3
	mov	r3, #15
	add	r3, r7, r3
	strb	r2, [r3]
	b	.L27
.L26:
	.loc 2 83 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L28
	.loc 2 84 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	uxtb	r3, r3
	mvn	r3, r3
	uxtb	r2, r3
	mov	r3, #15
	add	r3, r7, r3
	add	r1, r2, #0
	mov	r2, #2
	and	r2, r1
	strb	r2, [r3]
	b	.L27
.L28:
	.loc 2 86 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	bne	.L29
	.loc 2 87 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	uxtb	r3, r3
	mvn	r3, r3
	uxtb	r2, r3
	mov	r3, #15
	add	r3, r7, r3
	add	r1, r2, #0
	mov	r2, #4
	and	r2, r1
	strb	r2, [r3]
	b	.L27
.L29:
	.loc 2 89 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #3
	bne	.L27
	.loc 2 90 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	uxtb	r3, r3
	mvn	r3, r3
	uxtb	r2, r3
	mov	r3, #15
	add	r3, r7, r3
	add	r1, r2, #0
	mov	r2, #8
	and	r2, r1
	strb	r2, [r3]
.L27:
	.loc 2 93 0
	mov	r3, #15
	add	r3, r7, r3
	ldrb	r3, [r3]
	sxtb	r3, r3
	.loc 2 94 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE39:
	.size	getPB, .-getPB
	.align	2
	.global	enableInterruptPB
	.code	16
	.thumb_func
	.type	enableInterruptPB, %function
enableInterruptPB:
.LFB40:
	.loc 2 96 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	add	r3, r7, #6
	add	r2, r1, #0
	strb	r2, [r3]
	.loc 2 97 0
	ldr	r3, .L51
	ldr	r2, .L51
	ldr	r2, [r2, #24]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #24]
	.loc 2 99 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L32
	.loc 2 100 0
	ldr	r3, .L51+4
	ldr	r2, .L51+4
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
	.loc 2 101 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3]
	.loc 2 102 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L33
	.loc 2 103 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #8]
	b	.L36
.L33:
	.loc 2 104 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L35
	.loc 2 105 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L35:
	.loc 2 106 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	beq	.LCB548
	b	.L36	@long jump
.LCB548:
	.loc 2 107 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 108 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L32:
	.loc 2 111 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L37
	.loc 2 112 0
	ldr	r3, .L51+4
	ldr	r2, .L51+4
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
	.loc 2 113 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2]
	mov	r1, #2
	orr	r2, r1
	str	r2, [r3]
	.loc 2 114 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L38
	.loc 2 115 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #2
	orr	r2, r1
	str	r2, [r3, #8]
	b	.L36
.L38:
	.loc 2 116 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L40
	.loc 2 117 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #2
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L40:
	.loc 2 118 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	beq	.LCB614
	b	.L36	@long jump
.LCB614:
	.loc 2 119 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #2
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 120 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #2
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L37:
	.loc 2 123 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	bne	.L41
	.loc 2 124 0
	ldr	r3, .L51+4
	ldr	r2, .L51+4
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
	.loc 2 125 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3]
	.loc 2 126 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L42
	.loc 2 127 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #8]
	b	.L36
.L42:
	.loc 2 128 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L44
	.loc 2 129 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L44:
	.loc 2 130 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	bne	.L36
	.loc 2 131 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 132 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L41:
	.loc 2 135 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #3
	bne	.L36
	.loc 2 136 0
	ldr	r3, .L51+4
	ldr	r2, .L51+4
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
	.loc 2 137 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3]
	.loc 2 138 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L45
	.loc 2 139 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3, #8]
	b	.L36
.L45:
	.loc 2 140 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L46
	.loc 2 141 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L36
.L46:
	.loc 2 142 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	bne	.L36
	.loc 2 143 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #8]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 144 0
	ldr	r3, .L51+8
	ldr	r2, .L51+8
	ldr	r2, [r2, #12]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3, #12]
.L36:
	.loc 2 148 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	beq	.L47
	.loc 2 148 0 is_stmt 0 discriminator 1
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L48
.L47:
	.loc 2 149 0 is_stmt 1
	mov	r0, #5
	bl	NVIC_EnableIRQ
	b	.L31
.L48:
	.loc 2 150 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	beq	.L50
	.loc 2 150 0 is_stmt 0 discriminator 1
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #3
	bne	.L31
.L50:
	.loc 2 151 0 is_stmt 1
	mov	r0, #6
	bl	NVIC_EnableIRQ
.L31:
	.loc 2 153 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L52:
	.align	2
.L51:
	.word	1073876992
	.word	1073807360
	.word	1073808384
	.cfi_endproc
.LFE40:
	.size	enableInterruptPB, .-enableInterruptPB
	.align	2
	.global	initADCPot
	.code	16
	.thumb_func
	.type	initADCPot, %function
initADCPot:
.LFB41:
	.loc 2 159 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	add	r3, r7, #6
	add	r2, r1, #0
	strb	r2, [r3]
	.loc 2 160 0
	ldr	r3, .L61
	ldr	r2, .L61
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #10
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 2 161 0
	ldr	r3, .L61
	ldr	r2, .L61
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #2
	orr	r2, r1
	str	r2, [r3, #24]
	.loc 2 164 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #2
	bne	.L54
	.loc 2 165 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #240
	lsl	r1, r1, #6
	orr	r2, r1
	str	r2, [r3]
	b	.L55
.L54:
	.loc 2 167 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L56
	.loc 2 168 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #192
	lsl	r1, r1, #4
	orr	r2, r1
	str	r2, [r3]
	b	.L55
.L56:
	.loc 2 170 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L55
	.loc 2 171 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #192
	lsl	r1, r1, #6
	orr	r2, r1
	str	r2, [r3]
.L55:
	.loc 2 176 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #12
	beq	.L57
	.loc 2 178 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #10
	bne	.L58
	.loc 2 179 0
	ldr	r3, .L61+4
	ldr	r2, .L61+4
	ldr	r2, [r2, #12]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L57
.L58:
	.loc 2 181 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #8
	bne	.L59
	.loc 2 182 0
	ldr	r3, .L61+4
	ldr	r2, .L61+4
	ldr	r2, [r2, #12]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3, #12]
	b	.L57
.L59:
	.loc 2 184 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #6
	bne	.L57
	.loc 2 185 0
	ldr	r3, .L61+4
	ldr	r2, .L61+4
	ldr	r2, [r2, #12]
	mov	r1, #24
	orr	r2, r1
	str	r2, [r3, #12]
.L57:
	.loc 2 189 0
	ldr	r3, .L61+4
	ldr	r2, .L61+4
	ldr	r2, [r2, #8]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 190 0
	mov	r8, r8
.L60:
	.loc 2 190 0 is_stmt 0 discriminator 3
	ldr	r3, .L61+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L60
	.loc 2 192 0 is_stmt 1
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L62:
	.align	2
.L61:
	.word	1073876992
	.word	1073816576
	.cfi_endproc
.LFE41:
	.size	initADCPot, .-initADCPot
	.align	2
	.global	getPot
	.code	16
	.thumb_func
	.type	getPot, %function
getPot:
.LFB42:
	.loc 2 195 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 2 196 0
	mov	r3, #14
	add	r3, r7, r3
	mov	r2, #0
	strh	r2, [r3]
	.loc 2 197 0
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #8]
	mov	r1, #1
	bic	r2, r1
	str	r2, [r3, #8]
	.loc 2 198 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bne	.L64
	.loc 2 199 0
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #40]
	mov	r1, #64
	bic	r2, r1
	str	r2, [r3, #40]
	.loc 2 200 0
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #40]
	mov	r1, #32
	orr	r2, r1
	str	r2, [r3, #40]
	b	.L65
.L64:
	.loc 2 202 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L65
	.loc 2 203 0
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #40]
	mov	r1, #32
	bic	r2, r1
	str	r2, [r3, #40]
	.loc 2 204 0
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #40]
	mov	r1, #64
	orr	r2, r1
	str	r2, [r3, #40]
.L65:
	.loc 2 207 0
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #8]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 208 0
	mov	r8, r8
.L66:
	.loc 2 208 0 is_stmt 0 discriminator 3
	ldr	r3, .L69
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L66
	.loc 2 209 0 is_stmt 1
	ldr	r3, .L69
	ldr	r2, .L69
	ldr	r2, [r2, #8]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 2 210 0
	mov	r8, r8
.L67:
	.loc 2 210 0 is_stmt 0 discriminator 2
	ldr	r3, .L69
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L67
	.loc 2 211 0 is_stmt 1
	ldr	r3, .L69
	ldr	r2, [r3, #64]
	mov	r3, #14
	add	r3, r7, r3
	strh	r2, [r3]
	.loc 2 213 0
	mov	r3, #14
	add	r3, r7, r3
	ldrh	r3, [r3]
	.loc 2 214 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
	.word	1073816576
	.cfi_endproc
.LFE42:
	.size	getPot, .-getPot
	.align	2
	.global	initTIM6
	.code	16
	.thumb_func
	.type	initTIM6, %function
initTIM6:
.LFB43:
	.loc 2 219 0
	.cfi_startproc
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r5, r0
	mov	r4, r1
	mov	r0, r2
	mov	r1, r3
	add	r3, r7, #6
	add	r2, r5, #0
	strh	r2, [r3]
	add	r3, r7, #4
	add	r2, r4, #0
	strh	r2, [r3]
	add	r3, r7, #3
	add	r2, r0, #0
	strb	r2, [r3]
	add	r3, r7, #2
	add	r2, r1, #0
	strb	r2, [r3]
	.loc 2 220 0
	ldr	r3, .L74
	ldr	r2, .L74
	ldr	r2, [r2, #28]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3, #28]
	.loc 2 222 0
	add	r3, r7, #2
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L72
	.loc 2 223 0
	ldr	r2, .L74+4
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	uxth	r3, r3
	mov	r1, #128
	orr	r3, r1
	uxth	r3, r3
	strh	r3, [r2]
.L72:
	.loc 2 226 0
	ldr	r3, .L74+4
	add	r2, r7, #6
	ldrh	r2, [r2]
	str	r2, [r3, #44]
	.loc 2 227 0
	ldr	r2, .L74+4
	add	r3, r7, #4
	ldrh	r3, [r3]
	strh	r3, [r2, #40]
	.loc 2 229 0
	add	r3, r7, #3
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #1
	bne	.L73
	.loc 2 230 0
	ldr	r2, .L74+4
	ldr	r3, .L74+4
	ldrh	r3, [r3, #12]
	uxth	r3, r3
	mov	r1, #1
	orr	r3, r1
	uxth	r3, r3
	strh	r3, [r2, #12]
	.loc 2 231 0
	mov	r0, #17
	bl	NVIC_EnableIRQ
.L73:
	.loc 2 235 0
	ldr	r2, .L74+4
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	uxth	r3, r3
	mov	r1, #1
	orr	r3, r1
	uxth	r3, r3
	strh	r3, [r2]
	.loc 2 236 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r7, pc}
.L75:
	.align	2
.L74:
	.word	1073876992
	.word	1073745920
	.cfi_endproc
.LFE43:
	.size	initTIM6, .-initTIM6
	.align	2
	.global	clearInterruptTIM6
	.code	16
	.thumb_func
	.type	clearInterruptTIM6, %function
clearInterruptTIM6:
.LFB44:
	.loc 2 258 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 259 0
	ldr	r2, .L77
	ldr	r3, .L77
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	mov	r1, #1
	bic	r3, r1
	uxth	r3, r3
	strh	r3, [r2, #16]
	.loc 2 260 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L78:
	.align	2
.L77:
	.word	1073745920
	.cfi_endproc
.LFE44:
	.size	clearInterruptTIM6, .-clearInterruptTIM6
.Letext0:
	.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\4.9 2015q2\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\4.9 2015q2\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 5 "./Libraries/stm32f0xx.h"
	.file 6 "./Libraries/woodboxstm32f051C6.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa52
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1b
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1d
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x41
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x13
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0x1
	.byte	0x5
	.byte	0xc7
	.4byte	0x1ae
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 -14
	.uleb128 0x6
	.4byte	.LASF18
	.sleb128 -13
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 -5
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 -2
	.uleb128 0x6
	.4byte	.LASF21
	.sleb128 -1
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 2
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 3
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 4
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 5
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 6
	.uleb128 0x6
	.4byte	.LASF29
	.sleb128 7
	.uleb128 0x6
	.4byte	.LASF30
	.sleb128 8
	.uleb128 0x6
	.4byte	.LASF31
	.sleb128 9
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 10
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 11
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 12
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 13
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 14
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 15
	.uleb128 0x6
	.4byte	.LASF38
	.sleb128 16
	.uleb128 0x6
	.4byte	.LASF39
	.sleb128 17
	.uleb128 0x6
	.4byte	.LASF40
	.sleb128 18
	.uleb128 0x6
	.4byte	.LASF41
	.sleb128 19
	.uleb128 0x6
	.4byte	.LASF42
	.sleb128 20
	.uleb128 0x6
	.4byte	.LASF43
	.sleb128 21
	.uleb128 0x6
	.4byte	.LASF44
	.sleb128 22
	.uleb128 0x6
	.4byte	.LASF45
	.sleb128 23
	.uleb128 0x6
	.4byte	.LASF46
	.sleb128 24
	.uleb128 0x6
	.4byte	.LASF47
	.sleb128 25
	.uleb128 0x6
	.4byte	.LASF48
	.sleb128 26
	.uleb128 0x6
	.4byte	.LASF49
	.sleb128 27
	.uleb128 0x6
	.4byte	.LASF50
	.sleb128 28
	.uleb128 0x6
	.4byte	.LASF51
	.sleb128 29
	.uleb128 0x6
	.4byte	.LASF52
	.sleb128 30
	.uleb128 0x6
	.4byte	.LASF53
	.sleb128 31
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x15f
	.4byte	0xc3
	.uleb128 0x8
	.2byte	0x320
	.byte	0x1
	.2byte	0x118
	.4byte	0x24c
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11a
	.4byte	0x263
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x11b
	.4byte	0x268
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x11c
	.4byte	0x278
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x11d
	.4byte	0x268
	.byte	0x84
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x11e
	.4byte	0x27d
	.2byte	0x100
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x11f
	.4byte	0x268
	.2byte	0x104
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x120
	.4byte	0x282
	.2byte	0x180
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x121
	.4byte	0x268
	.2byte	0x184
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x122
	.4byte	0x287
	.2byte	0x200
	.uleb128 0xb
	.ascii	"IP\000"
	.byte	0x1
	.2byte	0x123
	.4byte	0x2a7
	.2byte	0x300
	.byte	0
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x25c
	.uleb128 0xd
	.4byte	0x25c
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF64
	.uleb128 0xe
	.4byte	0x24c
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x278
	.uleb128 0xd
	.4byte	0x25c
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	0x24c
	.uleb128 0xe
	.4byte	0x24c
	.uleb128 0xe
	.4byte	0x24c
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x297
	.uleb128 0xd
	.4byte	0x25c
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x2a7
	.uleb128 0xd
	.4byte	0x25c
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0x297
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x124
	.4byte	0x1ba
	.uleb128 0xe
	.4byte	0xb8
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x2cd
	.uleb128 0xd
	.4byte	0x25c
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x44
	.byte	0x5
	.2byte	0x17c
	.4byte	0x37d
	.uleb128 0x10
	.ascii	"ISR\000"
	.byte	0x5
	.2byte	0x17e
	.4byte	0x2b8
	.byte	0
	.uleb128 0x10
	.ascii	"IER\000"
	.byte	0x5
	.2byte	0x17f
	.4byte	0x2b8
	.byte	0x4
	.uleb128 0x10
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x180
	.4byte	0x2b8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x181
	.4byte	0x2b8
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x182
	.4byte	0x2b8
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x183
	.4byte	0x2b8
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x184
	.4byte	0xb8
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x185
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0x10
	.ascii	"TR\000"
	.byte	0x5
	.2byte	0x186
	.4byte	0x2b8
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x187
	.4byte	0xb8
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x188
	.4byte	0x2b8
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x189
	.4byte	0x37d
	.byte	0x2c
	.uleb128 0x10
	.ascii	"DR\000"
	.byte	0x5
	.2byte	0x18a
	.4byte	0x2b8
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x38d
	.uleb128 0xd
	.4byte	0x25c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x18b
	.4byte	0x2cd
	.uleb128 0xf
	.byte	0x18
	.byte	0x5
	.2byte	0x23a
	.4byte	0x3f0
	.uleb128 0x10
	.ascii	"IMR\000"
	.byte	0x5
	.2byte	0x23c
	.4byte	0x2b8
	.byte	0
	.uleb128 0x10
	.ascii	"EMR\000"
	.byte	0x5
	.2byte	0x23d
	.4byte	0x2b8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x23e
	.4byte	0x2b8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x23f
	.4byte	0x2b8
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x240
	.4byte	0x2b8
	.byte	0x10
	.uleb128 0x10
	.ascii	"PR\000"
	.byte	0x5
	.2byte	0x241
	.4byte	0x2b8
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x242
	.4byte	0x399
	.uleb128 0xe
	.4byte	0xad
	.uleb128 0xf
	.byte	0x2c
	.byte	0x5
	.2byte	0x269
	.4byte	0x4c1
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x26b
	.4byte	0x2b8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x26c
	.4byte	0x3fc
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x26d
	.4byte	0xad
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x26e
	.4byte	0x2b8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x26f
	.4byte	0x2b8
	.byte	0xc
	.uleb128 0x10
	.ascii	"IDR\000"
	.byte	0x5
	.2byte	0x270
	.4byte	0x3fc
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x271
	.4byte	0xad
	.byte	0x12
	.uleb128 0x10
	.ascii	"ODR\000"
	.byte	0x5
	.2byte	0x272
	.4byte	0x3fc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x273
	.4byte	0xad
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x274
	.4byte	0x2b8
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x275
	.4byte	0x2b8
	.byte	0x1c
	.uleb128 0x10
	.ascii	"AFR\000"
	.byte	0x5
	.2byte	0x276
	.4byte	0x4c1
	.byte	0x20
	.uleb128 0x10
	.ascii	"BRR\000"
	.byte	0x5
	.2byte	0x277
	.4byte	0x3fc
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x278
	.4byte	0xad
	.byte	0x2a
	.byte	0
	.uleb128 0xe
	.4byte	0x2bd
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x279
	.4byte	0x401
	.uleb128 0xf
	.byte	0x1c
	.byte	0x5
	.2byte	0x27f
	.4byte	0x510
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x281
	.4byte	0x2b8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x282
	.4byte	0xb8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x283
	.4byte	0x520
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x284
	.4byte	0x2b8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	0xb8
	.4byte	0x520
	.uleb128 0xd
	.4byte	0x25c
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0x510
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x285
	.4byte	0x4d2
	.uleb128 0xf
	.byte	0x38
	.byte	0x5
	.2byte	0x2b5
	.4byte	0x5f0
	.uleb128 0x10
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x2b7
	.4byte	0x2b8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x2b8
	.byte	0x4
	.uleb128 0x10
	.ascii	"CIR\000"
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x2b8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2ba
	.4byte	0x2b8
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x2bb
	.4byte	0x2b8
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x2bc
	.4byte	0x2b8
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x2bd
	.4byte	0x2b8
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x2be
	.4byte	0x2b8
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x2bf
	.4byte	0x2b8
	.byte	0x20
	.uleb128 0x10
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x2c0
	.4byte	0x2b8
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x2c1
	.4byte	0x2b8
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2c2
	.4byte	0x2b8
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x2c3
	.4byte	0x2b8
	.byte	0x30
	.uleb128 0x10
	.ascii	"CR2\000"
	.byte	0x5
	.2byte	0x2c4
	.4byte	0x2b8
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x2c5
	.4byte	0x531
	.uleb128 0xf
	.byte	0x54
	.byte	0x5
	.2byte	0x309
	.4byte	0x7d8
	.uleb128 0x10
	.ascii	"CR1\000"
	.byte	0x5
	.2byte	0x30b
	.4byte	0x3fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x30c
	.4byte	0xad
	.byte	0x2
	.uleb128 0x10
	.ascii	"CR2\000"
	.byte	0x5
	.2byte	0x30d
	.4byte	0x3fc
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x30e
	.4byte	0xad
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x30f
	.4byte	0x3fc
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x310
	.4byte	0xad
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x311
	.4byte	0x3fc
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x312
	.4byte	0xad
	.byte	0xe
	.uleb128 0x10
	.ascii	"SR\000"
	.byte	0x5
	.2byte	0x313
	.4byte	0x3fc
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x314
	.4byte	0xad
	.byte	0x12
	.uleb128 0x10
	.ascii	"EGR\000"
	.byte	0x5
	.2byte	0x315
	.4byte	0x3fc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x316
	.4byte	0xad
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x317
	.4byte	0x3fc
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x318
	.4byte	0xad
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x319
	.4byte	0x3fc
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x31a
	.4byte	0xad
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x31b
	.4byte	0x3fc
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x31c
	.4byte	0xad
	.byte	0x22
	.uleb128 0x10
	.ascii	"CNT\000"
	.byte	0x5
	.2byte	0x31d
	.4byte	0x2b8
	.byte	0x24
	.uleb128 0x10
	.ascii	"PSC\000"
	.byte	0x5
	.2byte	0x31e
	.4byte	0x3fc
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x31f
	.4byte	0xad
	.byte	0x2a
	.uleb128 0x10
	.ascii	"ARR\000"
	.byte	0x5
	.2byte	0x320
	.4byte	0x2b8
	.byte	0x2c
	.uleb128 0x10
	.ascii	"RCR\000"
	.byte	0x5
	.2byte	0x321
	.4byte	0x3fc
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x322
	.4byte	0xad
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x323
	.4byte	0x2b8
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x324
	.4byte	0x2b8
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x325
	.4byte	0x2b8
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x326
	.4byte	0x2b8
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x327
	.4byte	0x3fc
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x328
	.4byte	0xad
	.byte	0x46
	.uleb128 0x10
	.ascii	"DCR\000"
	.byte	0x5
	.2byte	0x329
	.4byte	0x3fc
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x32a
	.4byte	0xad
	.byte	0x4a
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x32b
	.4byte	0x3fc
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x32c
	.4byte	0xad
	.byte	0x4e
	.uleb128 0x10
	.ascii	"OR\000"
	.byte	0x5
	.2byte	0x32d
	.4byte	0x3fc
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x32e
	.4byte	0xad
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x32f
	.4byte	0x5fc
	.uleb128 0x5
	.4byte	.LASF119
	.byte	0x1
	.byte	0x6
	.byte	0x18
	.4byte	0x803
	.uleb128 0x6
	.4byte	.LASF120
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF121
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF122
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x1
	.byte	0x6
	.byte	0x19
	.4byte	0x81b
	.uleb128 0x11
	.ascii	"NO\000"
	.sleb128 0
	.uleb128 0x11
	.ascii	"YES\000"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x1
	.byte	0x6
	.byte	0x1a
	.4byte	0x83a
	.uleb128 0x6
	.4byte	.LASF125
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF126
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF127
	.sleb128 2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x203
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x860
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x203
	.4byte	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0x2
	.byte	0x11
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x2
	.byte	0x1b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a1
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x2
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x2
	.byte	0x1c
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x2
	.byte	0x23
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d1
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x2
	.byte	0x23
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x2
	.byte	0x24
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0x2
	.byte	0x31
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x2
	.byte	0x3e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x914
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x2
	.byte	0x3e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x19
	.4byte	.LASF133
	.byte	0x2
	.byte	0x3f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0x2
	.byte	0x46
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF141
	.byte	0x2
	.byte	0x4e
	.4byte	0x97
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95b
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x2
	.byte	0x4e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x2
	.byte	0x4f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x2
	.byte	0x60
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98d
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x2
	.byte	0x60
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x16
	.4byte	.LASF139
	.byte	0x2
	.byte	0x60
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x2
	.byte	0x9f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0x1c
	.ascii	"POT\000"
	.byte	0x2
	.byte	0x9f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1c
	.ascii	"RES\000"
	.byte	0x2
	.byte	0x9f
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0x2
	.byte	0xc3
	.4byte	0xad
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f5
	.uleb128 0x1c
	.ascii	"POT\000"
	.byte	0x2
	.byte	0xc3
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x2
	.byte	0xc4
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x2
	.byte	0xdb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa43
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x2
	.byte	0xdb
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x2
	.byte	0xdb
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF146
	.byte	0x2
	.byte	0xdb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x2
	.byte	0xdb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x2
	.2byte	0x102
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF83:
	.ascii	"RESERVED\000"
.LASF91:
	.ascii	"APB1ENR\000"
.LASF29:
	.ascii	"EXTI4_15_IRQn\000"
.LASF80:
	.ascii	"BSRR\000"
.LASF28:
	.ascii	"EXTI2_3_IRQn\000"
.LASF87:
	.ascii	"APB2RSTR\000"
.LASF132:
	.ascii	"amount\000"
.LASF19:
	.ascii	"SVC_IRQn\000"
.LASF147:
	.ascii	"bufferEnable\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF43:
	.ascii	"TIM16_IRQn\000"
.LASF92:
	.ascii	"BDCR\000"
.LASF25:
	.ascii	"FLASH_IRQn\000"
.LASF89:
	.ascii	"AHBENR\000"
.LASF27:
	.ascii	"EXTI0_1_IRQn\000"
.LASF146:
	.ascii	"interruptEnable\000"
.LASF139:
	.ascii	"mode\000"
.LASF45:
	.ascii	"I2C1_IRQn\000"
.LASF20:
	.ascii	"PendSV_IRQn\000"
.LASF117:
	.ascii	"TIM_TypeDef\000"
.LASF144:
	.ascii	"userARR\000"
.LASF145:
	.ascii	"userPSC\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"int8_t\000"
.LASF93:
	.ascii	"AHBRSTR\000"
.LASF111:
	.ascii	"BDTR\000"
.LASF23:
	.ascii	"PVD_VDDIO2_IRQn\000"
.LASF55:
	.ascii	"ISER\000"
.LASF137:
	.ascii	"result\000"
.LASF143:
	.ascii	"initTIM6\000"
.LASF107:
	.ascii	"CCR1\000"
.LASF108:
	.ascii	"CCR2\000"
.LASF109:
	.ascii	"CCR3\000"
.LASF58:
	.ascii	"RSERVED1\000"
.LASF99:
	.ascii	"CCMR1\000"
.LASF101:
	.ascii	"CCMR2\000"
.LASF47:
	.ascii	"SPI1_IRQn\000"
.LASF123:
	.ascii	"BOOL\000"
.LASF152:
	.ascii	"NVIC_EnableIRQ\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF124:
	.ascii	"TRIGGER\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF151:
	.ascii	"D:\\_EmbeddedDev\\Projects\\_Archive\\EEE2039DPracs"
	.ascii	"\\Prac 10\000"
.LASF76:
	.ascii	"MODER\000"
.LASF70:
	.ascii	"CHSELR\000"
.LASF128:
	.ascii	"length\000"
.LASF54:
	.ascii	"IRQn_Type\000"
.LASF50:
	.ascii	"USART2_IRQn\000"
.LASF127:
	.ascii	"R_AND_F\000"
.LASF95:
	.ascii	"RCC_TypeDef\000"
.LASF136:
	.ascii	"button\000"
.LASF125:
	.ascii	"RISE\000"
.LASF97:
	.ascii	"DIER\000"
.LASF68:
	.ascii	"SMPR\000"
.LASF79:
	.ascii	"PUPDR\000"
.LASF119:
	.ascii	"POTSEL\000"
.LASF88:
	.ascii	"APB1RSTR\000"
.LASF153:
	.ascii	"programError\000"
.LASF103:
	.ascii	"CCER\000"
.LASF38:
	.ascii	"TIM3_IRQn\000"
.LASF31:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF150:
	.ascii	"woodboxstm32f051C6.c\000"
.LASF42:
	.ascii	"TIM15_IRQn\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF84:
	.ascii	"EXTICR\000"
.LASF133:
	.ascii	"present\000"
.LASF149:
	.ascii	"GNU C 4.9.3 20150529 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 224288] -mthumb -mcpu=cortex-m0 -g\000"
.LASF96:
	.ascii	"SMCR\000"
.LASF71:
	.ascii	"ADC_TypeDef\000"
.LASF10:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"WWDG_IRQn\000"
.LASF131:
	.ascii	"incrementLEDs\000"
.LASF30:
	.ascii	"TSC_IRQn\000"
.LASF75:
	.ascii	"EXTI_TypeDef\000"
.LASF33:
	.ascii	"DMA1_Channel4_5_6_7_IRQn\000"
.LASF35:
	.ascii	"TIM1_BRK_UP_TRG_COM_IRQn\000"
.LASF122:
	.ascii	"BOTH\000"
.LASF53:
	.ascii	"USB_IRQn\000"
.LASF66:
	.ascii	"CFGR1\000"
.LASF67:
	.ascii	"CFGR2\000"
.LASF94:
	.ascii	"CFGR3\000"
.LASF61:
	.ascii	"ICPR\000"
.LASF34:
	.ascii	"ADC1_COMP_IRQn\000"
.LASF90:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF120:
	.ascii	"POT0\000"
.LASF121:
	.ascii	"POT1\000"
.LASF78:
	.ascii	"OSPEEDR\000"
.LASF135:
	.ascii	"initPB\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF118:
	.ascii	"IRQn\000"
.LASF141:
	.ascii	"getPB\000"
.LASF148:
	.ascii	"clearInterruptTIM6\000"
.LASF24:
	.ascii	"RTC_IRQn\000"
.LASF64:
	.ascii	"sizetype\000"
.LASF56:
	.ascii	"RESERVED0\000"
.LASF69:
	.ascii	"RESERVED1\000"
.LASF60:
	.ascii	"RESERVED2\000"
.LASF62:
	.ascii	"RESERVED3\000"
.LASF63:
	.ascii	"RESERVED4\000"
.LASF98:
	.ascii	"RESERVED5\000"
.LASF100:
	.ascii	"RESERVED6\000"
.LASF4:
	.ascii	"short int\000"
.LASF104:
	.ascii	"RESERVED8\000"
.LASF52:
	.ascii	"CEC_CAN_IRQn\000"
.LASF7:
	.ascii	"long int\000"
.LASF49:
	.ascii	"USART1_IRQn\000"
.LASF114:
	.ascii	"DMAR\000"
.LASF17:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF36:
	.ascii	"TIM1_CC_IRQn\000"
.LASF77:
	.ascii	"OTYPER\000"
.LASF72:
	.ascii	"RTSR\000"
.LASF86:
	.ascii	"CFGR\000"
.LASF44:
	.ascii	"TIM17_IRQn\000"
.LASF142:
	.ascii	"getPot\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF65:
	.ascii	"NVIC_Type\000"
.LASF82:
	.ascii	"GPIO_TypeDef\000"
.LASF21:
	.ascii	"SysTick_IRQn\000"
.LASF74:
	.ascii	"SWIER\000"
.LASF51:
	.ascii	"USART3_4_IRQn\000"
.LASF138:
	.ascii	"enableInterruptPB\000"
.LASF46:
	.ascii	"I2C2_IRQn\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"RCC_CRS_IRQn\000"
.LASF37:
	.ascii	"TIM2_IRQn\000"
.LASF126:
	.ascii	"FALL\000"
.LASF73:
	.ascii	"FTSR\000"
.LASF41:
	.ascii	"TIM14_IRQn\000"
.LASF32:
	.ascii	"DMA1_Channel2_3_IRQn\000"
.LASF134:
	.ascii	"initLEDs\000"
.LASF39:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF110:
	.ascii	"CCR4\000"
.LASF105:
	.ascii	"RESERVED10\000"
.LASF106:
	.ascii	"RESERVED12\000"
.LASF112:
	.ascii	"RESERVED17\000"
.LASF113:
	.ascii	"RESERVED18\000"
.LASF115:
	.ascii	"RESERVED19\000"
.LASF57:
	.ascii	"ICER\000"
.LASF48:
	.ascii	"SPI2_IRQn\000"
.LASF40:
	.ascii	"TIM7_IRQn\000"
.LASF2:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF116:
	.ascii	"RESERVED20\000"
.LASF18:
	.ascii	"HardFault_IRQn\000"
.LASF59:
	.ascii	"ISPR\000"
.LASF130:
	.ascii	"delaypointms\000"
.LASF129:
	.ascii	"delayms\000"
.LASF102:
	.ascii	"RESERVED7\000"
.LASF85:
	.ascii	"SYSCFG_TypeDef\000"
.LASF140:
	.ascii	"initADCPot\000"
.LASF81:
	.ascii	"LCKR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
