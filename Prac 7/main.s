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
	.global	RCC_AHBENR_IOPBEN
	.data
	.align	2
	.type	RCC_AHBENR_IOPBEN, %object
	.size	RCC_AHBENR_IOPBEN, 4
RCC_AHBENR_IOPBEN:
	.word	262144
	.global	GPIOB_MODER_OUTPUT
	.align	2
	.type	GPIOB_MODER_OUTPUT, %object
	.size	GPIOB_MODER_OUTPUT, 4
GPIOB_MODER_OUTPUT:
	.word	21845
	.text
	.align	2
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 10 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 11 0
	ldr	r3, .L3
	ldr	r2, .L3
	ldr	r1, [r2]
	ldr	r2, .L3+4
	ldr	r2, [r2]
	orr	r2, r1
	str	r2, [r3]
	.loc 1 12 0
	ldr	r3, .L3+8
	ldr	r2, .L3+8
	ldr	r1, [r2]
	ldr	r2, .L3+12
	ldr	r2, [r2]
	orr	r2, r1
	str	r2, [r3]
	.loc 1 13 0
	ldr	r3, .L3+16
	mov	r2, #170
	str	r2, [r3]
.L2:
	.loc 1 15 0 discriminator 1
	b	.L2
.L4:
	.align	2
.L3:
	.word	1073877012
	.word	RCC_AHBENR_IOPBEN
	.word	1207960576
	.word	GPIOB_MODER_OUTPUT
	.word	1207960596
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "c:\\program files\\gnu tools arm embedded\\4.8 2014q2\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\program files\\gnu tools arm embedded\\4.8 2014q2\\arm-none-eabi\\include\\stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x1
	.4byte	.LASF14
	.4byte	.LASF15
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x38
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x42
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x7
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	RCC_AHBENR_IOPBEN
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x8
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIOB_MODER_OUTPUT
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
	.uleb128 0x6
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
.LASF12:
	.ascii	"GPIOB_MODER_OUTPUT\000"
.LASF13:
	.ascii	"GNU C 4.8.4 20140526 (release) [ARM/embedded-4_8-br"
	.ascii	"anch revision 211358] -mthumb -mcpu=cortex-m0 -g\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF15:
	.ascii	"D:\\ITDev\\Projects\\EEE2039DPracs\\Prac 7\000"
.LASF16:
	.ascii	"main\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"main.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF11:
	.ascii	"RCC_AHBENR_IOPBEN\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.4 20140526 (release) [ARM/embedded-4_8-branch revision 211358]"
