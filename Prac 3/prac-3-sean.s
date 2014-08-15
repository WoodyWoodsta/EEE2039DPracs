@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start:
  LDR R0, RCC_START                                               @Enable GPIOA and B RCC Clock
  LDR R1, [R0, 0x14]
  LDR R2, RCC_AHBENR_GPIO_AB_EN
  ORRS R1, R1, R2
  STR R1, [R0, 0x14]
  LDR R0, PORTA_START                                             @Load starting address for Ports A and B
  LDR R4, PORTB_START                                             @PORT A - [R0 - R2], PORT B - [R4-R6]
  LDR R5, PORTB_MODEROUT                                          @Set Port B Mode to OUT
  STR R5, [R4]
  LDR R1, [R0, 0xC]                                               @Enable Port A pullup resistors
  LDR R2, PORTA_PUPDR
  ORRS R1, R1, R2
  STR R1, [R0, 0xC]
  LDR R1, [R0]                                                    @Set Port A Mode to IN
  LDR R2, PORTA_MODERIN
  ORRS R1, R1, R2
  STR R1, [R0]
  LDR R3, RAM_START
  B flashAA

delayInit:
  LDR R5, =0x0                                                    @R8 is the delay counter

delay:
  ADDS R5, #1
  CMP R5, R6                                                      @R9 is the delay indicator
  BNE delay
  B router

buttonSel:
  LDR R1, [R0, 0x10]
  ANDS R1, R1, =0x2                                                @Selecting S1 Data
  LSRS R1, #1
  LDR R6, DELAY_FAST
  MULS R6, R1, R6                                        @Checking for timing decision
  EORS R1, R1, #1
  LDR R6, DELAY_SLOW
  MULS R6, R1, R6
  B delayInit

router:
  CMP R7, #1
  BEQ buttonSel
  CMP R7, #2
  BEQ flash55
  CMP R7, #3
  BEQ flashAA
  CMP R7, #4
  BEQ flash55


flashAA:                   @------------- SUBROUTINE TYPE #2 -------------
  LDR R7, #1
  LDR R5, =0xAA
  STR R5, [R4, 0x14]
  B delayInit

flash55:                   @------------- SUBROUTINE #3 -------------
  LDR R7, #1
  LDR R5, =0x55
  STR R5, [R4, 0x14]
  B delayInit

  .align
RCC_START: .word 0x40021000
RCC_AHBENR_GPIO_AB_EN: .word 0x00060000
PORTA_START: .word 0x48000000
PORTA_MODERIN: .word 0x28000000
PORTA_PUPDR: .word 0x55
PORTB_START: .word 0x48000400
PORTB_MODEROUT: .word 0x00005555
RAM_START: .word 0x20000000
DELAY_FAST: .word 0x7FFF
DELAY_SLOW: .word 0xFFFF
