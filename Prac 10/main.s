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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	cycleState,1,1
	.align	2
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
.LFB33:
	.file 1 "main.c"
	.loc 1 13 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 14 0
	bl	initLEDs
	.loc 1 15 0
	bl	initPB
	.loc 1 16 0
	mov	r0, #2
	mov	r1, #8
	bl	initADCPot
	.loc 1 21 0
	mov	r0, #0
	mov	r1, #1
	bl	enableInterruptPB
	.loc 1 22 0
	ldr	r3, .L3
	mov	r0, r3
	mov	r1, #200
	mov	r2, #1
	mov	r3, #0
	bl	initTIM6
.L2:
	.loc 1 24 0 discriminator 1
	b	.L2
.L4:
	.align	2
.L3:
	.word	3980
	.cfi_endproc
.LFE33:
	.size	main, .-main
	.align	2
	.global	cycleLEDs
	.code	16
	.thumb_func
	.type	cycleLEDs, %function
cycleLEDs:
.LFB34:
	.loc 1 28 0
	.cfi_startproc
	push	{r3, r4, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 31 0
	mov	r0, #1
	bl	getPB
	sub	r3, r0, #0
	beq	.L6
	.loc 1 32 0
	ldr	r3, .L12
	ldr	r2, .L12+4
	str	r2, [r3, #44]
	b	.L7
.L6:
	.loc 1 33 0
	mov	r0, #2
	bl	getPB
	sub	r3, r0, #0
	beq	.L8
	.loc 1 34 0
	ldr	r3, .L12
	ldr	r2, .L12+8
	str	r2, [r3, #44]
	b	.L7
.L8:
	.loc 1 35 0
	mov	r0, #3
	bl	getPB
	sub	r3, r0, #0
	beq	.L9
	.loc 1 36 0
	ldr	r4, .L12
	bl	calcPOT
	mov	r3, r0
	str	r3, [r4, #44]
	b	.L7
.L9:
	.loc 1 37 0
	ldr	r3, .L12
	ldr	r2, .L12+12
	str	r2, [r3, #44]
.L7:
	.loc 1 39 0
	ldr	r1, .L12+16
	ldr	r3, .L12+20
	ldrb	r3, [r3]
	uxtb	r3, r3
	sxtb	r3, r3
	ldr	r2, .L12+24
	ldrb	r3, [r2, r3]
	uxth	r3, r3
	strh	r3, [r1, #20]
	.loc 1 41 0
	ldr	r3, .L12+20
	ldrb	r3, [r3]
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #6
	bgt	.L10
	.loc 1 42 0
	ldr	r3, .L12+20
	ldrb	r3, [r3]
	uxtb	r3, r3
	uxtb	r3, r3
	add	r3, r3, #1
	uxtb	r3, r3
	uxtb	r2, r3
	ldr	r3, .L12+20
	strb	r2, [r3]
	b	.L5
.L10:
	.loc 1 44 0
	ldr	r3, .L12+20
	mov	r2, #0
	strb	r2, [r3]
.L5:
	.loc 1 46 0
	mov	sp, r7
	@ sp needed
	pop	{r3, r4, r7, pc}
.L13:
	.align	2
.L12:
	.word	1073745920
	.word	19900
	.word	7960
	.word	3980
	.word	1207960576
	.word	cycleState
	.word	patterns.4774
	.cfi_endproc
.LFE34:
	.size	cycleLEDs, .-cycleLEDs
	.align	2
	.global	calcPOT
	.code	16
	.thumb_func
	.type	calcPOT, %function
calcPOT:
.LFB35:
	.loc 1 48 0
	.cfi_startproc
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 49 0
	add	r4, r7, #4
	mov	r0, #0
	bl	getPot
	mov	r3, r0
	strh	r3, [r4]
	.loc 1 50 0
	add	r4, r7, #2
	mov	r0, #1
	bl	getPot
	mov	r3, r0
	strh	r3, [r4]
	.loc 1 51 0
	add	r3, r7, #6
	mov	r2, #0
	strh	r2, [r3]
	.loc 1 52 0
	mov	r3, r7
	mov	r2, #0
	strh	r2, [r3]
	.loc 1 54 0
	add	r2, r7, #4
	add	r3, r7, #2
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	cmp	r2, r3
	bls	.L15
	.loc 1 55 0
	add	r3, r7, #6
	add	r2, r7, #4
	ldrh	r2, [r2]
	strh	r2, [r3]
	b	.L16
.L15:
	.loc 1 57 0
	add	r3, r7, #6
	add	r2, r7, #2
	ldrh	r2, [r2]
	strh	r2, [r3]
.L16:
	.loc 1 60 0
	add	r3, r7, #6
	ldrh	r3, [r3]
	mov	r2, #148
	neg	r2, r2
	mul	r3, r2
	uxth	r2, r3
	mov	r3, r7
	ldr	r1, .L18
	mov	ip, r1
	add	r2, r2, ip
	strh	r2, [r3]
	.loc 1 61 0
	mov	r3, r7
	ldrh	r3, [r3]
	.loc 1 63 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
.L19:
	.align	2
.L18:
	.word	-25735
	.cfi_endproc
.LFE35:
	.size	calcPOT, .-calcPOT
	.align	2
	.global	TIM6_DAC_IRQHandler
	.code	16
	.thumb_func
	.type	TIM6_DAC_IRQHandler, %function
TIM6_DAC_IRQHandler:
.LFB36:
	.loc 1 65 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 66 0
	bl	cycleLEDs
	.loc 1 67 0
	bl	clearInterruptTIM6
	.loc 1 68 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE36:
	.size	TIM6_DAC_IRQHandler, .-TIM6_DAC_IRQHandler
	.align	2
	.global	EXTI0_1_IRQHandler
	.code	16
	.thumb_func
	.type	EXTI0_1_IRQHandler, %function
EXTI0_1_IRQHandler:
.LFB37:
	.loc 1 70 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 71 0
	mov	r0, #0
	bl	getPB
	sub	r3, r0, #0
	beq	.L21
	.loc 1 72 0
	mov	r0, #30
	bl	delayms
	.loc 1 73 0
	mov	r0, #0
	bl	getPB
	sub	r3, r0, #0
	beq	.L23
	.loc 1 74 0
	ldr	r3, .L24
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 75 0
	ldr	r2, .L24+4
	ldr	r3, .L24+4
	ldrh	r3, [r3, #20]
	uxth	r3, r3
	mov	r1, #1
	orr	r3, r1
	uxth	r3, r3
	strh	r3, [r2, #20]
.L23:
	.loc 1 77 0
	ldr	r3, .L24+8
	ldr	r2, .L24+8
	ldr	r2, [r2, #20]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #20]
.L21:
	.loc 1 79 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	cycleState
	.word	1073745920
	.word	1073808384
	.cfi_endproc
.LFE37:
	.size	EXTI0_1_IRQHandler, .-EXTI0_1_IRQHandler
	.align	2
	.global	HardFault_Handler
	.code	16
	.thumb_func
	.type	HardFault_Handler, %function
HardFault_Handler:
.LFB38:
	.loc 1 81 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 82 0
	ldr	r3, .L27
	mov	r2, #165
	strh	r2, [r3, #20]
	.loc 1 83 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	1207960576
	.cfi_endproc
.LFE38:
	.size	HardFault_Handler, .-HardFault_Handler
	.data
	.align	2
	.type	patterns.4774, %object
	.size	patterns.4774, 8
patterns.4774:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	-120
	.byte	72
	.byte	40
	.byte	24
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\4.9 2015q2\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\4.9 2015q2\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "./Libraries/stm32f0xx.h"
	.file 5 "./Libraries/woodboxstm32f051C6.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x53a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x1
	.4byte	.LASF74
	.4byte	.LASF75
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1b
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x3
	.byte	0x13
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x20
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
	.byte	0x18
	.byte	0x4
	.2byte	0x23a
	.4byte	0x136
	.uleb128 0x9
	.ascii	"IMR\000"
	.byte	0x4
	.2byte	0x23c
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.ascii	"EMR\000"
	.byte	0x4
	.2byte	0x23d
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x23e
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x23f
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x240
	.4byte	0xca
	.byte	0x10
	.uleb128 0x9
	.ascii	"PR\000"
	.byte	0x4
	.2byte	0x241
	.4byte	0xca
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x242
	.4byte	0xdf
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x8
	.byte	0x2c
	.byte	0x4
	.2byte	0x269
	.4byte	0x207
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x26b
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x26c
	.4byte	0x142
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x26d
	.4byte	0xad
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x26e
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x26f
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x270
	.4byte	0x142
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x271
	.4byte	0xad
	.byte	0x12
	.uleb128 0x9
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x272
	.4byte	0x142
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x273
	.4byte	0xad
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x274
	.4byte	0xca
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x275
	.4byte	0xca
	.byte	0x1c
	.uleb128 0x9
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x276
	.4byte	0x207
	.byte	0x20
	.uleb128 0x9
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x277
	.4byte	0x142
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x278
	.4byte	0xad
	.byte	0x2a
	.byte	0
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x279
	.4byte	0x147
	.uleb128 0x8
	.byte	0x54
	.byte	0x4
	.2byte	0x309
	.4byte	0x3f4
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x30b
	.4byte	0x142
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x30c
	.4byte	0xad
	.byte	0x2
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x30d
	.4byte	0x142
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x30e
	.4byte	0xad
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x30f
	.4byte	0x142
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x310
	.4byte	0xad
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x311
	.4byte	0x142
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x312
	.4byte	0xad
	.byte	0xe
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x313
	.4byte	0x142
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x314
	.4byte	0xad
	.byte	0x12
	.uleb128 0x9
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x315
	.4byte	0x142
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x316
	.4byte	0xad
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x317
	.4byte	0x142
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x318
	.4byte	0xad
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x319
	.4byte	0x142
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x31a
	.4byte	0xad
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x31b
	.4byte	0x142
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x31c
	.4byte	0xad
	.byte	0x22
	.uleb128 0x9
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x31d
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x31e
	.4byte	0x142
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x31f
	.4byte	0xad
	.byte	0x2a
	.uleb128 0x9
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x320
	.4byte	0xca
	.byte	0x2c
	.uleb128 0x9
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x321
	.4byte	0x142
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x322
	.4byte	0xad
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x323
	.4byte	0xca
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x324
	.4byte	0xca
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x325
	.4byte	0xca
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x326
	.4byte	0xca
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x327
	.4byte	0x142
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x328
	.4byte	0xad
	.byte	0x46
	.uleb128 0x9
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x329
	.4byte	0x142
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x32a
	.4byte	0xad
	.byte	0x4a
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x32b
	.4byte	0x142
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x32c
	.4byte	0xad
	.byte	0x4e
	.uleb128 0x9
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x32d
	.4byte	0x142
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x32e
	.4byte	0xad
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x32f
	.4byte	0x218
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5
	.byte	0x18
	.4byte	0x41f
	.uleb128 0xd
	.4byte	.LASF56
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF57
	.sleb128 1
	.uleb128 0xd
	.4byte	.LASF58
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5
	.byte	0x19
	.4byte	0x437
	.uleb128 0xe
	.ascii	"NO\000"
	.sleb128 0
	.uleb128 0xe
	.ascii	"YES\000"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5
	.byte	0x1a
	.4byte	0x456
	.uleb128 0xd
	.4byte	.LASF62
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF63
	.sleb128 1
	.uleb128 0xd
	.4byte	.LASF64
	.sleb128 2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd
	.4byte	0x89
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x492
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1d
	.4byte	0x492
	.uleb128 0x5
	.byte	0x3
	.4byte	patterns.4774
	.byte	0
	.uleb128 0x6
	.4byte	0xa2
	.4byte	0x4a2
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.byte	0x30
	.4byte	0xad
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f4
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x31
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0x32
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0x33
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x34
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x41
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x1
	.byte	0x46
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0x51
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.byte	0xb
	.4byte	0x538
	.uleb128 0x5
	.byte	0x3
	.4byte	cycleState
	.uleb128 0x5
	.4byte	0x97
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
.LASF32:
	.ascii	"GPIO_TypeDef\000"
.LASF69:
	.ascii	"result\000"
.LASF60:
	.ascii	"BOOL\000"
.LASF61:
	.ascii	"TRIGGER\000"
.LASF13:
	.ascii	"int8_t\000"
.LASF63:
	.ascii	"FALL\000"
.LASF37:
	.ascii	"CCMR1\000"
.LASF39:
	.ascii	"CCMR2\000"
.LASF4:
	.ascii	"short int\000"
.LASF76:
	.ascii	"main\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF59:
	.ascii	"POTSEL\000"
.LASF31:
	.ascii	"RESERVED3\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF35:
	.ascii	"RESERVED4\000"
.LASF40:
	.ascii	"RESERVED7\000"
.LASF71:
	.ascii	"EXTI0_1_IRQHandler\000"
.LASF23:
	.ascii	"OTYPER\000"
.LASF2:
	.ascii	"signed char\000"
.LASF50:
	.ascii	"RESERVED17\000"
.LASF10:
	.ascii	"long long int\000"
.LASF53:
	.ascii	"RESERVED19\000"
.LASF58:
	.ascii	"BOTH\000"
.LASF26:
	.ascii	"PUPDR\000"
.LASF72:
	.ascii	"HardFault_Handler\000"
.LASF45:
	.ascii	"CCR1\000"
.LASF46:
	.ascii	"CCR2\000"
.LASF47:
	.ascii	"CCR3\000"
.LASF48:
	.ascii	"CCR4\000"
.LASF29:
	.ascii	"BSRR\000"
.LASF70:
	.ascii	"TIM6_DAC_IRQHandler\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF68:
	.ascii	"hPot\000"
.LASF55:
	.ascii	"TIM_TypeDef\000"
.LASF77:
	.ascii	"cycleLEDs\000"
.LASF33:
	.ascii	"SMCR\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF43:
	.ascii	"RESERVED10\000"
.LASF44:
	.ascii	"RESERVED12\000"
.LASF51:
	.ascii	"RESERVED18\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF19:
	.ascii	"FTSR\000"
.LASF79:
	.ascii	"cycleState\000"
.LASF34:
	.ascii	"DIER\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF64:
	.ascii	"R_AND_F\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF7:
	.ascii	"long int\000"
.LASF49:
	.ascii	"BDTR\000"
.LASF18:
	.ascii	"RTSR\000"
.LASF22:
	.ascii	"MODER\000"
.LASF66:
	.ascii	"Pot0\000"
.LASF67:
	.ascii	"Pot1\000"
.LASF24:
	.ascii	"RESERVED0\000"
.LASF27:
	.ascii	"RESERVED1\000"
.LASF28:
	.ascii	"RESERVED2\000"
.LASF25:
	.ascii	"OSPEEDR\000"
.LASF74:
	.ascii	"main.c\000"
.LASF36:
	.ascii	"RESERVED5\000"
.LASF38:
	.ascii	"RESERVED6\000"
.LASF78:
	.ascii	"calcPOT\000"
.LASF42:
	.ascii	"RESERVED8\000"
.LASF41:
	.ascii	"CCER\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF75:
	.ascii	"D:\\_EmbeddedDev\\Projects\\_Archive\\EEE2039DPracs"
	.ascii	"\\Prac 10\000"
.LASF21:
	.ascii	"EXTI_TypeDef\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF56:
	.ascii	"POT0\000"
.LASF57:
	.ascii	"POT1\000"
.LASF52:
	.ascii	"DMAR\000"
.LASF62:
	.ascii	"RISE\000"
.LASF54:
	.ascii	"RESERVED20\000"
.LASF30:
	.ascii	"LCKR\000"
.LASF65:
	.ascii	"patterns\000"
.LASF73:
	.ascii	"GNU C 4.9.3 20150529 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 224288] -mthumb -mcpu=cortex-m0 -g\000"
.LASF20:
	.ascii	"SWIER\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
