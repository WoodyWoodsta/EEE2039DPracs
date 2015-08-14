@ WDXSEA003
@ Practical 2 Solution

	.syntax unified
	.global _start

vectors:
	.word 0x20002000
	.word _start + 1

_start:													@ "Entry" point
	@ == Initialisations
	@ Configure RCC_AHBENR
	LDR R0, RCC_BASE
	LDR R1, [R0, 0x14]
	LDR R2, RCC_AHBENR_GPIOA				@ Enable the GPIOA RCC Clock
	ORRS R1, R1, R2
	LDR R2, RCC_AHBENR_GPIOB				@ Enable the GPIOB RCC Clock
	ORRS R1, R1, R2
	STR R1, [R0, 0x14]

	@ Initialise GPIOA
	LDR R0, GPIOA_BASE
	LDR R1, [R0]
	LDR R2, GPIOA_MODER_XINPUT			@ Set Pins 0-3 of Port A to G.P. inputs
	MVNS R2, R2
	ANDS R1, R2
	STR R1, [R0]

	LDR R1, [R0, 0x0C]
	LDR R2,	GPIOA_PUPDR_UP					@ Set Pins 0-3 of Port A to pullup
	ORRS R1, R2
	STR R1, [R0, 0x0C]

	@ Initialise GPIOB
	LDR R0, GPIOB_BASE
	LDR R1, [R0]
	LDR R2, GPIOB_MODER_OUTPUT			@ Set Pins 0-7 of Port B to digital output
	ORRS R1, R2
	STR R1, [R0]

	MOVS R1, 0x0
	STR R1, [R0, 0x14]							@ Clear GPIOB ODR

@ == Program Specific Initialisations

main_loop:
	MOVS R4, #0											@ From here (not always), R4 is delay iteration counter
BL checkButtons
BL delay
	ADDS R7, R6											@ From here onwards, R6 is increment value
	LDR R0, GPIOB_BASE
	STR R7, [R0, 0x14]
B main_loop

checkButtons:											@ == Check the pusbutton(s) being pressed and alter execution accordingly
	LDR R0, GPIOA_BASE
	LDR R1, [R0, 0x10]
	LDR R2, GPIOA_PB_MASK
	MVNS R1, R1
	ANDS R1, R2
	CMP R1, 0b0001
BEQ pushButton0Pressed
	CMP R1, 0b0010
BEQ pushButton1Pressed
	CMP R1, 0b0011
BEQ pushButton01Pressed
	CMP R1, 0b0100
BEQ pushButton2Pressed
	CMP R1, 0b1000
BEQ pushButton3Pressed

	MOVS R6, #1
	LDR R5, DELAY1_LENGTH						@ From here onwards, R5 is delay length

BX LR

delay:														@ == Wastefully loop for a predefined number of times
	ADDS R4, #1
	CMP R4, R5
	BNE delay
BX LR

pushButton0Pressed:								@ == Change increment value to 2 when SW0 is pressed
	MOVS R6, #2
	LDR R5, DELAY1_LENGTH

BX LR

pushButton1Pressed:								@ == Change delay length to 0.3 seconds when SW1 is pressed
	MOVS R6, #1
	LDR R5, DELAY2_LENGTH

BX LR

pushButton01Pressed:							@ == Change both increment value to 2 and delay length to 0.3 seconds when SW0 and SW1 are pressed
	MOVS R6, #2
	LDR R5, DELAY2_LENGTH

BX LR

pushButton2Pressed:								@ == Show 0xAA on LEDs when SW2 is pressed and remain until SW2 is released
	LDR R0, GPIOB_BASE
	LDR R7, GPIOB_ODR_0XAA
	STR R7, [R0, 0x14]

	LDR R0, GPIOA_BASE
	LDR R1, [R0, 0x10]
	LDR R2, GPIOA_PB_MASK
	MVNS R1, R1
	ANDS R1, R2
	CMP R1, 0b0100
BEQ pushButton2Pressed

BX LR

pushButton3Pressed:								@ == Halt counting when SW3 is pressed until released
	LDR R0, GPIOA_BASE
	LDR R1, [R0, 0x10]
	LDR R2, GPIOA_PB_MASK
	MVNS R1, R1
	ANDS R1, R2
	CMP R1, 0b1000
BEQ pushButton3Pressed

BX LR

	.align
ALL_ONES:							.word 0xFFFFFFFF
DELAY1_LENGTH:				.word 0xFFFFF
DELAY2_LENGTH:				.word 0x88888

@ == RCC Defintions
RCC_BASE: 						.word 0x40021000
RCC_AHBENR_GPIOA:			.word 0x20000
RCC_AHBENR_GPIOB: 		.word 0x40000

@ == GPIOA Definitions
GPIOA_BASE:						.word 0x48000000
GPIOA_MODER_XINPUT:		.word 0xFF
GPIOA_PUPDR_UP:				.word 0x55
GPIOA_PB_MASK:				.word 0xF

@ == GPIOB Definitions
GPIOB_BASE:   				.word 0x48000400
GPIOB_MODER_OUTPUT: 	.word 0x5555
GPIOB_ODR_0XAA:				.word 0xAA
