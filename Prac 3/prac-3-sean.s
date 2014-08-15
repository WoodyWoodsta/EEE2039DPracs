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
  LDR R4, PORTB_START                                             @PORT A - [R0 - R3], PORT B - [R4-R7]

  LDR R5, PORTB_MODEROUT                                          @Set Port B Mode to OUT
  STR R5, [R4]

  LDR R1, [R0, 0xC]
  LDR R2, PORTA_PUPDR
  ORRS R1, R1, R2
  STR R1, [R0, 0xC]


  .align
RCC_START: .word 0x40021000
RCC_AHBENR_GPIO_AB_EN: .word 0x00060000
PORTA_START: .word 0x48000000
PORTA_MODERIN: .word 0x28000000
PORTA_PUPDR: .word 0x55
PORTB_START: .word 0x48000400
PORTB_MODEROUT: .word 0x00005555
