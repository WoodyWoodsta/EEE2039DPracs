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
  MOVS R3, #0

s0Sel:
  LDR R7, [R0, 0x10]
  LDR R2, =0x1
  ANDS R7, R7, R2                                                @Selecting S1 Data
  B router1

delayInit:
  LDR R5, =0x0                                                    @R8 is the delay counter
  LDR R2, =0x1
  EORS R3, R3, R2

delay:
  ADDS R5, #1
  CMP R5, R6                                                      @R9 is the delay indicator
  BNE delay
  BEQ s0Sel

s1Sel:
  LDR R1, [R0, 0x10]
  LDR R2, =0x2
  ANDS R1, R1, R2                                                @Selecting S1 Data
  LSRS R1, #1
  LDR R6, DELAY_SLOW
  CMP R1, #1
  BEQ delayInit
  LDR R2, =0x1
  EORS R1, R1, R2
  LDR R6, DELAY_FAST
  B delayInit

router1:                                                           @S0 - R7, S1 - R3
  CMP R7, #0
  BEQ router2
  CMP R3, #1
  BEQ flash55
  B flashAA

router2:
  CMP R3, #1
  BEQ flashALL
  B flashNONE

flashAA:                    @------------- SUBROUTINE #1 -------------
  LDR R5, =0xAA
  STR R5, [R4, 0x14]
  B s1Sel

flash55:                    @------------- SUBROUTINE #1 -------------
  LDR R5, =0x55
  STR R5, [R4, 0x14]
  B s1Sel

flashALL:                   @------------- SUBROUTINE #2 -------------
  LDR R5, =0xFF
  STR R5, [R4, 0x14]
  B s1Sel

flashNONE:                  @------------- SUBROUTINE #2 -------------
  LDR R5, =0x0
  STR R5, [R4, 0x14]
  B s1Sel

  .align

RCC_START: .word 0x40021000
RCC_AHBENR_GPIO_AB_EN: .word 0x00060000
PORTA_START: .word 0x48000000
PORTA_MODERIN: .word 0x28000000
PORTA_PUPDR: .word 0x55
PORTB_START: .word 0x48000400
PORTB_MODEROUT: .word 0x00005555
RAM_START: .word 0x20000000
DELAY_FAST: .word 0x7FFFF
DELAY_SLOW: .word 0xFFFFF
