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
	.file	"lcd_stm32f0.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	lcd_string
	.code	16
	.thumb_func
	.type	lcd_string, %function
lcd_string:
.LFB33:
	.file 1 "lcd_stm32f0.c"
	.loc 1 27 0
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
	.loc 1 28 0
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 29 0
	b	.L2
.L3:
	.loc 1 30 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r2, r3
	ldrb	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	lcd_put
	.loc 1 31 0
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	.loc 1 29 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r2, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L3
	.loc 1 33 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE33:
	.size	lcd_string, .-lcd_string
	.align	2
	.global	lcd_two_line_write
	.code	16
	.thumb_func
	.type	lcd_two_line_write, %function
lcd_two_line_write:
.LFB34:
	.loc 1 34 0
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
	str	r1, [r7]
	.loc 1 35 0
	mov	r0, #1
	bl	lcd_command
	.loc 1 36 0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	lcd_string
	.loc 1 37 0
	mov	r0, #192
	bl	lcd_command
	.loc 1 38 0
	ldr	r3, [r7]
	mov	r0, r3
	bl	lcd_string
	.loc 1 39 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE34:
	.size	lcd_two_line_write, .-lcd_two_line_write
	.align	2
	.global	lcd_init
	.code	16
	.thumb_func
	.type	lcd_init, %function
lcd_init:
.LFB35:
	.loc 1 43 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 48 0
	ldr	r3, .L6
	mov	r0, r3
	bl	delay
	.loc 1 50 0
	ldr	r3, .L6+4
	ldr	r2, .L6+4
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #12
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 51 0
	ldr	r3, .L6+4
	ldr	r2, .L6+4
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #11
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 52 0
	ldr	r3, .L6+4
	ldr	r2, .L6+4
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #10
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 53 0
	ldr	r3, .L6+8
	ldr	r2, .L6+8
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #21
	orr	r2, r1
	str	r2, [r3]
	.loc 1 54 0
	ldr	r3, .L6+8
	ldr	r2, .L6+8
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #23
	orr	r2, r1
	str	r2, [r3]
	.loc 1 55 0
	ldr	r3, .L6+12
	ldr	r2, .L6+12
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #9
	orr	r2, r1
	str	r2, [r3]
	.loc 1 56 0
	ldr	r3, .L6+12
	ldr	r2, .L6+12
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #11
	orr	r2, r1
	str	r2, [r3]
	.loc 1 57 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #17
	orr	r2, r1
	str	r2, [r3]
	.loc 1 58 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #128
	lsl	r1, r1, #23
	orr	r2, r1
	str	r2, [r3]
	.loc 1 60 0
	mov	r0, #51
	bl	lcd_command
	.loc 1 61 0
	mov	r0, #51
	bl	lcd_command
	.loc 1 62 0
	mov	r0, #50
	bl	lcd_command
	.loc 1 63 0
	mov	r0, #12
	bl	lcd_command
	.loc 1 64 0
	mov	r0, #40
	bl	lcd_command
	.loc 1 65 0
	mov	r0, #1
	bl	lcd_command
	.loc 1 66 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	30000
	.word	1073876992
	.word	1207961600
	.word	1207960576
	.cfi_endproc
.LFE35:
	.size	lcd_init, .-lcd_init
	.align	2
	.global	lcd_command
	.code	16
	.thumb_func
	.type	lcd_command, %function
lcd_command:
.LFB36:
	.loc 1 70 0
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
	.loc 1 73 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	lcd_put
	.loc 1 74 0
	ldr	r3, .L9
	mov	r0, r3
	bl	delay
	.loc 1 75 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	3000
	.cfi_endproc
.LFE36:
	.size	lcd_command, .-lcd_command
	.align	2
	.code	16
	.thumb_func
	.type	lcd_put, %function
lcd_put:
.LFB37:
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
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	add	r3, r7, #6
	add	r2, r1, #0
	strb	r2, [r3]
	.loc 1 84 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L12
	.loc 1 85 0
	ldr	r3, .L30
	ldr	r2, .L30
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #7
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L13
.L12:
	.loc 1 86 0
	add	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L13
	.loc 1 87 0
	ldr	r3, .L30
	ldr	r2, .L30
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #23
	orr	r2, r1
	str	r2, [r3, #24]
.L13:
	.loc 1 90 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L14
	.loc 1 91 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #8
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L15
.L14:
	.loc 1 93 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #24
	orr	r2, r1
	str	r2, [r3, #24]
.L15:
	.loc 1 95 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #64
	and	r3, r2
	beq	.L16
	.loc 1 96 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #5
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L17
.L16:
	.loc 1 98 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #21
	orr	r2, r1
	str	r2, [r3, #24]
.L17:
	.loc 1 100 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #32
	and	r3, r2
	beq	.L18
	.loc 1 101 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #2
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L19
.L18:
	.loc 1 103 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #18
	orr	r2, r1
	str	r2, [r3, #24]
.L19:
	.loc 1 105 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #16
	and	r3, r2
	beq	.L20
	.loc 1 106 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #1
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L21
.L20:
	.loc 1 108 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #17
	orr	r2, r1
	str	r2, [r3, #24]
.L21:
	.loc 1 110 0
	bl	pulse_strobe
	.loc 1 112 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #8
	and	r3, r2
	beq	.L22
	.loc 1 113 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #8
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L23
.L22:
	.loc 1 115 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #24
	orr	r2, r1
	str	r2, [r3, #24]
.L23:
	.loc 1 117 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #4
	and	r3, r2
	beq	.L24
	.loc 1 118 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #5
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L25
.L24:
	.loc 1 120 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #21
	orr	r2, r1
	str	r2, [r3, #24]
.L25:
	.loc 1 122 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #2
	and	r3, r2
	beq	.L26
	.loc 1 123 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #2
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L27
.L26:
	.loc 1 125 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #18
	orr	r2, r1
	str	r2, [r3, #24]
.L27:
	.loc 1 127 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	mov	r2, #1
	and	r3, r2
	beq	.L28
	.loc 1 128 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #1
	orr	r2, r1
	str	r2, [r3, #24]
	b	.L29
.L28:
	.loc 1 130 0
	ldr	r3, .L30+4
	ldr	r2, .L30+4
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #17
	orr	r2, r1
	str	r2, [r3, #24]
.L29:
	.loc 1 132 0
	bl	pulse_strobe
	.loc 1 133 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L31:
	.align	2
.L30:
	.word	1207961600
	.word	1207960576
	.cfi_endproc
.LFE37:
	.size	lcd_put, .-lcd_put
	.align	2
	.code	16
	.thumb_func
	.type	delay, %function
delay:
.LFB38:
	.loc 1 138 0
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
	.loc 1 140 0
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 141 0
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #4]
	.loc 1 142 0
	b	.L33
.L34:
	.loc 1 143 0 discriminator 2
@ 143 "lcd_stm32f0.c" 1
	nop
@ 0 "" 2
	.loc 1 144 0 discriminator 2
@ 144 "lcd_stm32f0.c" 1
	nop
@ 0 "" 2
	.loc 1 142 0 discriminator 2
	.code	16
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L33:
	.loc 1 142 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L34
	.loc 1 146 0 is_stmt 1
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE38:
	.size	delay, .-delay
	.align	2
	.code	16
	.thumb_func
	.type	pulse_strobe, %function
pulse_strobe:
.LFB39:
	.loc 1 148 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 150 0
	mov	r0, #20
	bl	delay
	.loc 1 151 0
	ldr	r3, .L36
	ldr	r2, .L36
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #24
	orr	r2, r1
	str	r2, [r3, #24]
	.loc 1 152 0
	mov	r0, #20
	bl	delay
	.loc 1 153 0
	ldr	r3, .L36
	ldr	r2, .L36
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #8
	orr	r2, r1
	str	r2, [r3, #24]
	.loc 1 154 0
	mov	r0, #20
	bl	delay
	.loc 1 155 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L37:
	.align	2
.L36:
	.word	1207961600
	.cfi_endproc
.LFE39:
	.size	pulse_strobe, .-pulse_strobe
.Letext0:
	.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\4.9 2015q2\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\4.9 2015q2\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "./Libraries/stm32f0xx.h"
	.file 5 "./Libraries/lcd_stm32f0.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3e2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x1
	.4byte	.LASF66
	.4byte	.LASF67
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x41
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1a
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x6
	.4byte	0xa2
	.4byte	0xc9
	.uleb128 0x7
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x8
	.byte	0x2c
	.byte	0x4
	.2byte	0x269
	.4byte	0x18e
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x26b
	.4byte	0xb4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x26c
	.4byte	0xc9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x26d
	.4byte	0x97
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x26e
	.4byte	0xb4
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x26f
	.4byte	0xb4
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x270
	.4byte	0xc9
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x271
	.4byte	0x97
	.byte	0x12
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x272
	.4byte	0xc9
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x273
	.4byte	0x97
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x274
	.4byte	0xb4
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x275
	.4byte	0xb4
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x276
	.4byte	0x18e
	.byte	0x20
	.uleb128 0xa
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x277
	.4byte	0xc9
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x278
	.4byte	0x97
	.byte	0x2a
	.byte	0
	.uleb128 0x5
	.4byte	0xb9
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x279
	.4byte	0xce
	.uleb128 0x8
	.byte	0x38
	.byte	0x4
	.2byte	0x2b5
	.4byte	0x25e
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2b7
	.4byte	0xb4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2b8
	.4byte	0xb4
	.byte	0x4
	.uleb128 0xa
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2b9
	.4byte	0xb4
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2ba
	.4byte	0xb4
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2bb
	.4byte	0xb4
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2bc
	.4byte	0xb4
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2bd
	.4byte	0xb4
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2be
	.4byte	0xb4
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2bf
	.4byte	0xb4
	.byte	0x20
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2c0
	.4byte	0xb4
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2c1
	.4byte	0xb4
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2c2
	.4byte	0xb4
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2c3
	.4byte	0xb4
	.byte	0x30
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x2c4
	.4byte	0xb4
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2c5
	.4byte	0x19f
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x5
	.byte	0x7
	.4byte	0x2a8
	.uleb128 0xd
	.4byte	.LASF38
	.sleb128 1
	.uleb128 0xd
	.4byte	.LASF39
	.sleb128 2
	.uleb128 0xd
	.4byte	.LASF40
	.sleb128 12
	.uleb128 0xd
	.4byte	.LASF41
	.sleb128 8
	.uleb128 0xd
	.4byte	.LASF42
	.sleb128 40
	.uleb128 0xd
	.4byte	.LASF43
	.sleb128 50
	.uleb128 0xd
	.4byte	.LASF44
	.sleb128 51
	.uleb128 0xd
	.4byte	.LASF45
	.sleb128 192
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.4byte	0x2c1
	.uleb128 0xd
	.4byte	.LASF48
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF49
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f3
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1b
	.4byte	0x2f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x8c
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0x22
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32b
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x22
	.4byte	0x2f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0x22
	.4byte	0x2f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34c
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2e
	.4byte	0xa2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0x46
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x370
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x46
	.4byte	0x26a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4f
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d4
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8a
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x8c
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x94
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
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
	.uleb128 0x3
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
	.uleb128 0x2116
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF67:
	.ascii	"D:\\_EmbeddedDev\\Projects\\_Archive\\EEE2039DPracs"
	.ascii	"\\Prac 10\000"
.LASF51:
	.ascii	"lcd_two_line_write\000"
.LASF29:
	.ascii	"APB1RSTR\000"
.LASF2:
	.ascii	"short int\000"
.LASF55:
	.ascii	"lcd_init\000"
.LASF33:
	.ascii	"BDCR\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF61:
	.ascii	"delay\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF59:
	.ascii	"ch_type\000"
.LASF66:
	.ascii	"lcd_stm32f0.c\000"
.LASF36:
	.ascii	"CFGR3\000"
.LASF27:
	.ascii	"CFGR\000"
.LASF25:
	.ascii	"RESERVED3\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF45:
	.ascii	"LCD_GOTO_LINE_2\000"
.LASF32:
	.ascii	"APB1ENR\000"
.LASF49:
	.ascii	"TEXT\000"
.LASF17:
	.ascii	"OTYPER\000"
.LASF0:
	.ascii	"signed char\000"
.LASF43:
	.ascii	"LCD_FOUR_BIT_MODE\000"
.LASF56:
	.ascii	"lcd_command\000"
.LASF34:
	.ascii	"AHBRSTR\000"
.LASF9:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"PUPDR\000"
.LASF48:
	.ascii	"COMMAND\000"
.LASF6:
	.ascii	"long int\000"
.LASF35:
	.ascii	"CFGR2\000"
.LASF37:
	.ascii	"RCC_TypeDef\000"
.LASF23:
	.ascii	"BSRR\000"
.LASF30:
	.ascii	"AHBENR\000"
.LASF16:
	.ascii	"MODER\000"
.LASF28:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF47:
	.ascii	"TypeOfCharacter\000"
.LASF58:
	.ascii	"character\000"
.LASF41:
	.ascii	"LCD_DISPLAY_OFF\000"
.LASF62:
	.ascii	"microseconds\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF64:
	.ascii	"counter\000"
.LASF31:
	.ascii	"APB2ENR\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF53:
	.ascii	"line1\000"
.LASF54:
	.ascii	"line2\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF44:
	.ascii	"LCD_EIGHT_BIT_MODE\000"
.LASF50:
	.ascii	"lcd_string\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF38:
	.ascii	"LCD_CLEAR_DISPLAY\000"
.LASF40:
	.ascii	"LCD_DISPLAY_ON\000"
.LASF68:
	.ascii	"pulse_strobe\000"
.LASF18:
	.ascii	"RESERVED0\000"
.LASF21:
	.ascii	"RESERVED1\000"
.LASF22:
	.ascii	"RESERVED2\000"
.LASF19:
	.ascii	"OSPEEDR\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF46:
	.ascii	"LcdCommand\000"
.LASF52:
	.ascii	"string_to_print\000"
.LASF63:
	.ascii	"count\000"
.LASF60:
	.ascii	"lcd_put\000"
.LASF42:
	.ascii	"LCD_FOUR_BIT_TWO_LINE_MODE\000"
.LASF15:
	.ascii	"sizetype\000"
.LASF39:
	.ascii	"LCD_CURSOR_HOME\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF57:
	.ascii	"command\000"
.LASF65:
	.ascii	"GNU C 4.9.3 20150529 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 224288] -mthumb -mcpu=cortex-m0 -g\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
