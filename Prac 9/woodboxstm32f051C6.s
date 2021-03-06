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
	.global	delayms
	.code	16
	.thumb_func
	.type	delayms, %function
delayms:
.LFB33:
	.file 1 "woodboxstm32f051C6.c"
	.loc 1 17 0
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
	.loc 1 19 0
	ldr	r3, [r7, #4]
	ldr	r2, .L4
	mul	r3, r2
	str	r3, [r7, #4]
	.loc 1 20 0
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	.loc 1 21 0
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	.loc 1 20 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L3
	.loc 1 23 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	615
	.cfi_endproc
.LFE33:
	.size	delayms, .-delayms
	.align	2
	.global	delaypointms
	.code	16
	.thumb_func
	.type	delaypointms, %function
delaypointms:
.LFB34:
	.loc 1 25 0
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
	.loc 1 27 0
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #1
	str	r3, [r7, #4]
	.loc 1 28 0
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L7
.L8:
	.loc 1 29 0
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L7:
	.loc 1 28 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L8
	.loc 1 31 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE34:
	.size	delaypointms, .-delaypointms
	.align	2
	.global	initLEDs
	.code	16
	.thumb_func
	.type	initLEDs, %function
initLEDs:
.LFB35:
	.loc 1 33 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 34 0
	ldr	r3, .L10
	ldr	r2, .L10
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #11
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 35 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3]
	.loc 1 36 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3]
	.loc 1 37 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3]
	.loc 1 38 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #64
	orr	r2, r1
	str	r2, [r3]
	.loc 1 39 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #1
	orr	r2, r1
	str	r2, [r3]
	.loc 1 40 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #3
	orr	r2, r1
	str	r2, [r3]
	.loc 1 41 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #5
	orr	r2, r1
	str	r2, [r3]
	.loc 1 42 0
	ldr	r3, .L10+4
	ldr	r2, .L10+4
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #7
	orr	r2, r1
	str	r2, [r3]
	.loc 1 44 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	1073876992
	.word	1207960576
	.cfi_endproc
.LFE35:
	.size	initLEDs, .-initLEDs
	.align	2
	.global	initPB
	.code	16
	.thumb_func
	.type	initPB, %function
initPB:
.LFB36:
	.loc 1 46 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 47 0
	ldr	r3, .L13
	ldr	r2, .L13
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #10
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 48 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 49 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 50 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 51 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #64
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 52 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	1073876992
	.cfi_endproc
.LFE36:
	.size	initPB, .-initPB
	.align	2
	.global	initADCPot
	.code	16
	.thumb_func
	.type	initADCPot, %function
initADCPot:
.LFB37:
	.loc 1 54 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 55 0
	ldr	r3, .L19
	ldr	r2, .L19
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #10
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 56 0
	ldr	r3, .L19
	ldr	r2, .L19
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #2
	orr	r2, r1
	str	r2, [r3, #24]
	.loc 1 57 0
	ldr	r3, .L19+4
	ldr	r2, .L19+4
	ldr	r2, [r2, #8]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 1 58 0
	mov	r8, r8
.L16:
	.loc 1 58 0 is_stmt 0 discriminator 1
	ldr	r3, .L19+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L16
	.loc 1 60 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L17
	.loc 1 61 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #192
	lsl	r1, r1, #4
	orr	r2, r1
	str	r2, [r3]
	.loc 1 62 0
	ldr	r3, .L19+4
	ldr	r2, .L19+4
	ldr	r2, [r2, #40]
	mov	r1, #32
	orr	r2, r1
	str	r2, [r3, #40]
	b	.L18
.L17:
	.loc 1 65 0
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L18
	.loc 1 66 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #192
	lsl	r1, r1, #6
	orr	r2, r1
	str	r2, [r3]
	.loc 1 67 0
	ldr	r3, .L19+4
	ldr	r2, .L19+4
	ldr	r2, [r2, #40]
	mov	r1, #64
	orr	r2, r1
	str	r2, [r3, #40]
.L18:
	.loc 1 70 0
	ldr	r3, .L19+4
	ldr	r2, .L19+4
	ldr	r2, [r2, #12]
	mov	r1, #8
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 71 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	1073876992
	.word	1073816576
	.cfi_endproc
.LFE37:
	.size	initADCPot, .-initADCPot
	.align	2
	.global	incrementLEDs
	.code	16
	.thumb_func
	.type	incrementLEDs, %function
incrementLEDs:
.LFB38:
	.loc 1 73 0
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
	.loc 1 74 0
	ldr	r3, .L22
	ldrh	r3, [r3, #20]
	uxth	r2, r3
	mov	r3, r7
	add	r3, r3, #15
	strb	r2, [r3]
	.loc 1 75 0
	ldr	r3, .L22
	add	r2, r7, #7
	ldrb	r2, [r2]
	sxtb	r2, r2
	uxth	r1, r2
	mov	r2, r7
	add	r2, r2, #15
	ldrb	r2, [r2]
	sxtb	r2, r2
	uxth	r2, r2
	add	r2, r1, r2
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #20]
	.loc 1 76 0
	add	r3, r7, #7
	ldrb	r2, [r3]
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	add	r3, r2, r3
	uxtb	r3, r3
	mov	r0, #0
	mov	r1, r3
	bl	eeprom_write_to_address
	.loc 1 77 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	1207960576
	.cfi_endproc
.LFE38:
	.size	incrementLEDs, .-incrementLEDs
	.align	2
	.global	getPot
	.code	16
	.thumb_func
	.type	getPot, %function
getPot:
.LFB39:
	.loc 1 79 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 80 0
	add	r3, r7, #6
	mov	r2, #0
	strh	r2, [r3]
	.loc 1 81 0
	ldr	r3, .L27
	ldr	r2, .L27
	ldr	r2, [r2, #8]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 1 82 0
	mov	r8, r8
.L25:
	.loc 1 82 0 is_stmt 0 discriminator 1
	ldr	r3, .L27
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L25
	.loc 1 83 0 is_stmt 1
	ldr	r3, .L27
	ldr	r2, [r3, #64]
	add	r3, r7, #6
	strh	r2, [r3]
	.loc 1 85 0
	add	r3, r7, #6
	ldrh	r3, [r3]
	sxth	r3, r3
	.loc 1 86 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	1073816576
	.cfi_endproc
.LFE39:
	.size	getPot, .-getPot
	.align	2
	.global	getPB
	.code	16
	.thumb_func
	.type	getPB, %function
getPB:
.LFB40:
	.loc 1 88 0
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
	.loc 1 89 0
	mov	r3, r7
	add	r3, r3, #15
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 90 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L30
	.loc 1 91 0
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
	mov	r3, r7
	add	r3, r3, #15
	strb	r2, [r3]
	b	.L31
.L30:
	.loc 1 93 0
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L32
	.loc 1 94 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	uxtb	r3, r3
	mvn	r3, r3
	uxtb	r2, r3
	mov	r3, r7
	add	r3, r3, #15
	add	r1, r2, #0
	mov	r2, #2
	and	r2, r1
	strb	r2, [r3]
	b	.L31
.L32:
	.loc 1 96 0
	ldr	r3, [r7, #4]
	cmp	r3, #2
	bne	.L33
	.loc 1 97 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	uxtb	r3, r3
	mvn	r3, r3
	uxtb	r2, r3
	mov	r3, r7
	add	r3, r3, #15
	add	r1, r2, #0
	mov	r2, #4
	and	r2, r1
	strb	r2, [r3]
	b	.L31
.L33:
	.loc 1 99 0
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bne	.L31
	.loc 1 100 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	uxtb	r3, r3
	mvn	r3, r3
	uxtb	r2, r3
	mov	r3, r7
	add	r3, r3, #15
	add	r1, r2, #0
	mov	r2, #8
	and	r2, r1
	strb	r2, [r3]
.L31:
	.loc 1 103 0
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	sxtb	r3, r3
	.loc 1 104 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE40:
	.size	getPB, .-getPB
.Letext0:
	.file 2 "c:\\program files\\gnu tools arm embedded\\4.8 2014q2\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\program files\\gnu tools arm embedded\\4.8 2014q2\\arm-none-eabi\\include\\stdint.h"
	.file 4 "./Libraries/stm32f0xx.h"
	.file 5 "./Libraries/woodboxstm32f051C6.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x494
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x1b
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x25
	.4byte	0x49
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x26
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
	.byte	0x2
	.byte	0x38
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
	.byte	0x3
	.byte	0x29
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x35
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x36
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x42
	.4byte	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xb8
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x44
	.byte	0x4
	.2byte	0x17c
	.4byte	0x18f
	.uleb128 0x9
	.ascii	"ISR\000"
	.byte	0x4
	.2byte	0x17e
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.ascii	"IER\000"
	.byte	0x4
	.2byte	0x17f
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x180
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x181
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x182
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x183
	.4byte	0xca
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x184
	.4byte	0xb8
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x185
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0x9
	.ascii	"TR\000"
	.byte	0x4
	.2byte	0x186
	.4byte	0xca
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x187
	.4byte	0xb8
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x188
	.4byte	0xca
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x189
	.4byte	0x18f
	.byte	0x2c
	.uleb128 0x9
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x18a
	.4byte	0xca
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	0xb8
	.4byte	0x19f
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x18b
	.4byte	0xdf
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x8
	.byte	0x2c
	.byte	0x4
	.2byte	0x269
	.4byte	0x270
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x26b
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x26c
	.4byte	0x1ab
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x26d
	.4byte	0xad
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x26e
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x26f
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x270
	.4byte	0x1ab
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x271
	.4byte	0xad
	.byte	0x12
	.uleb128 0x9
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x272
	.4byte	0x1ab
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x273
	.4byte	0xad
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x274
	.4byte	0xca
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x275
	.4byte	0xca
	.byte	0x1c
	.uleb128 0x9
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x276
	.4byte	0x270
	.byte	0x20
	.uleb128 0x9
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x277
	.4byte	0x1ab
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x278
	.4byte	0xad
	.byte	0x2a
	.byte	0
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x279
	.4byte	0x1b0
	.uleb128 0x8
	.byte	0x38
	.byte	0x4
	.2byte	0x2b5
	.4byte	0x340
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2b7
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2b8
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2b9
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2ba
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2bb
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2bc
	.4byte	0xca
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2bd
	.4byte	0xca
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2be
	.4byte	0xca
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2bf
	.4byte	0xca
	.byte	0x20
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2c0
	.4byte	0xca
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2c1
	.4byte	0xca
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x2c2
	.4byte	0xca
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2c3
	.4byte	0xca
	.byte	0x30
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x2c4
	.4byte	0xca
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2c5
	.4byte	0x281
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5
	.byte	0x16
	.4byte	0x365
	.uleb128 0xd
	.4byte	.LASF45
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF46
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x11
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x395
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x11
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0x12
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x19
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c5
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x19
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x21
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40b
	.uleb128 0x13
	.ascii	"POT\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x49
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43d
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0x49
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x4a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4f
	.4byte	0xa2
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x465
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x50
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x1
	.byte	0x58
	.4byte	0x97
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x58
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x59
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
.LASF31:
	.ascii	"PUPDR\000"
.LASF33:
	.ascii	"LCKR\000"
.LASF60:
	.ascii	"POTSEL\000"
.LASF56:
	.ascii	"button\000"
.LASF63:
	.ascii	"getPot\000"
.LASF28:
	.ascii	"OTYPER\000"
.LASF27:
	.ascii	"MODER\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF20:
	.ascii	"SMPR\000"
.LASF2:
	.ascii	"__int8_t\000"
.LASF62:
	.ascii	"initPB\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"BSRR\000"
.LASF7:
	.ascii	"long int\000"
.LASF36:
	.ascii	"APB2RSTR\000"
.LASF48:
	.ascii	"delaypointms\000"
.LASF54:
	.ascii	"result\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF61:
	.ascii	"initLEDs\000"
.LASF26:
	.ascii	"ADC_TypeDef\000"
.LASF50:
	.ascii	"initADCPot\000"
.LASF30:
	.ascii	"OSPEEDR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF34:
	.ascii	"GPIO_TypeDef\000"
.LASF44:
	.ascii	"RCC_TypeDef\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"CHSELR\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF45:
	.ascii	"POT0\000"
.LASF46:
	.ascii	"POT1\000"
.LASF57:
	.ascii	"GNU C 4.8.4 20140526 (release) [ARM/embedded-4_8-br"
	.ascii	"anch revision 211358] -mthumb -mcpu=cortex-m0 -g\000"
.LASF42:
	.ascii	"AHBRSTR\000"
.LASF37:
	.ascii	"APB1RSTR\000"
.LASF29:
	.ascii	"RESERVED0\000"
.LASF21:
	.ascii	"RESERVED1\000"
.LASF22:
	.ascii	"RESERVED2\000"
.LASF23:
	.ascii	"RESERVED3\000"
.LASF25:
	.ascii	"RESERVED4\000"
.LASF53:
	.ascii	"present\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF4:
	.ascii	"short int\000"
.LASF39:
	.ascii	"APB2ENR\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF59:
	.ascii	"D:\\ITDev\\Projects\\EEE2039DPracs\\Prac 9\000"
.LASF55:
	.ascii	"getPB\000"
.LASF49:
	.ascii	"length\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"incrementLEDs\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF52:
	.ascii	"amount\000"
.LASF13:
	.ascii	"int8_t\000"
.LASF41:
	.ascii	"BDCR\000"
.LASF18:
	.ascii	"CFGR1\000"
.LASF19:
	.ascii	"CFGR2\000"
.LASF43:
	.ascii	"CFGR3\000"
.LASF58:
	.ascii	"woodboxstm32f051C6.c\000"
.LASF35:
	.ascii	"CFGR\000"
.LASF47:
	.ascii	"delayms\000"
.LASF38:
	.ascii	"AHBENR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.4 20140526 (release) [ARM/embedded-4_8-branch revision 211358]"
