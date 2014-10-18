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
	.align	2
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
.LFB33:
	.file 1 "main.c"
	.loc 1 9 0
	.cfi_startproc
	push	{r3, r4, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 11 0
	bl	initLEDs
	.loc 1 12 0
	bl	initPB
	.loc 1 13 0
	mov	r0, #1
	bl	initADCPot
	.loc 1 14 0
	bl	eeprom_init_spi
	.loc 1 16 0
	ldr	r4, .L5
	mov	r0, #0
	bl	eeprom_read_from_address
	mov	r3, r0
	strh	r3, [r4, #20]
.L4:
	.loc 1 19 0
	mov	r0, #3
	bl	getPB
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
	.loc 1 20 0
	mov	r3, #1
	neg	r3, r3
	mov	r0, r3
	bl	incrementLEDs
	b	.L3
.L2:
	.loc 1 23 0
	mov	r0, #1
	bl	incrementLEDs
.L3:
	.loc 1 26 0
	bl	variable_delay
	.loc 1 27 0
	b	.L4
.L6:
	.align	2
.L5:
	.word	1207960576
	.cfi_endproc
.LFE33:
	.size	main, .-main
	.align	2
	.global	variable_delay
	.code	16
	.thumb_func
	.type	variable_delay, %function
variable_delay:
.LFB34:
	.loc 1 32 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 33 0
	ldr	r3, .L9
	str	r3, [r7, #4]
	.loc 1 34 0
	mov	r0, #2
	bl	getPB
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
	.loc 1 35 0
	bl	getPot
	mov	r3, r0
	add	r3, r3, #250
	lsl	r3, r3, #2
	str	r3, [r7, #4]
.L8:
	.loc 1 38 0
	ldr	r3, [r7, #4]
	ldr	r2, .L9+4
	add	r3, r3, r2
	mov	r0, r3
	bl	delaypointms
	.loc 1 39 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	5000
	.word	-560
	.cfi_endproc
.LFE34:
	.size	variable_delay, .-variable_delay
.Letext0:
	.file 2 "c:\\program files\\gnu tools arm embedded\\4.8 2014q2\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\program files\\gnu tools arm embedded\\4.8 2014q2\\arm-none-eabi\\include\\stdint.h"
	.file 4 "./Libraries/stm32f0xx.h"
	.file 5 "./Libraries/woodboxstm32f051C6.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1d4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x26
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x38
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x42
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x8c
	.uleb128 0x6
	.4byte	0x8c
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x8
	.byte	0x2c
	.byte	0x4
	.2byte	0x269
	.4byte	0x178
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x26b
	.4byte	0x9e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x26c
	.4byte	0xb3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x26d
	.4byte	0x81
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x26e
	.4byte	0x9e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x26f
	.4byte	0x9e
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x270
	.4byte	0xb3
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x271
	.4byte	0x81
	.byte	0x12
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x272
	.4byte	0xb3
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x273
	.4byte	0x81
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x274
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x275
	.4byte	0x9e
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x276
	.4byte	0x178
	.byte	0x20
	.uleb128 0xa
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x277
	.4byte	0xb3
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x278
	.4byte	0x81
	.byte	0x2a
	.byte	0
	.uleb128 0x5
	.4byte	0xa3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x279
	.4byte	0xb8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5
	.byte	0x16
	.4byte	0x1a2
	.uleb128 0xd
	.4byte	.LASF25
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF26
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9
	.4byte	0x73
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x20
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x21
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0xf
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
.LASF22:
	.ascii	"LCKR\000"
.LASF14:
	.ascii	"MODER\000"
.LASF21:
	.ascii	"BSRR\000"
.LASF16:
	.ascii	"RESERVED0\000"
.LASF27:
	.ascii	"GNU C 4.8.4 20140526 (release) [ARM/embedded-4_8-br"
	.ascii	"anch revision 211358] -mthumb -mcpu=cortex-m0 -g\000"
.LASF20:
	.ascii	"RESERVED2\000"
.LASF23:
	.ascii	"RESERVED3\000"
.LASF15:
	.ascii	"OTYPER\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF30:
	.ascii	"POTSEL\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF33:
	.ascii	"varDelay\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF25:
	.ascii	"POT0\000"
.LASF26:
	.ascii	"POT1\000"
.LASF17:
	.ascii	"OSPEEDR\000"
.LASF29:
	.ascii	"D:\\ITDev\\Projects\\EEE2039DPracs\\Prac 9\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF24:
	.ascii	"GPIO_TypeDef\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF31:
	.ascii	"main\000"
.LASF32:
	.ascii	"variable_delay\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF18:
	.ascii	"PUPDR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF28:
	.ascii	"main.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"RESERVED1\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.4 20140526 (release) [ARM/embedded-4_8-branch revision 211358]"
