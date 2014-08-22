
@This is a simple assembly code template for programming
@the STM32F051C6 MCU :)

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start:
  LDR R0, RCC_START                                               @Enable GPIOA and GPIOB RCC Clock
  LDR R1, [R0, 0x14]
  LDR R2, RCC_AHBENR_GPIO_AB_EN
  ORRS R1, R1, R2
  STR R1, [R0, 0x14]
  LDR R0, PORTA_START                                             @Load starting address for Ports A and B
  LDR R1, PORTB_START                                             @PORT A - [R0], PORT B - [R1]
  LDR R2, PORTA_PUPDR                                             @Enable Port A pullup resistors
  ORRS R1, R1, R2
  STR R1, [R0, 0xC]
  LDR R1, [R0]                                                    @Set Port A Mode to IN
  LDR R2, PORTA_MODERIN
  ORRS R1, R1, R2
  STR R1, [R0]
  LDR R2, PORTB_MODEROUT                                          @Set Port B Mode to OUT
  STR R2, [R1]
  LDR R1, [R0, 0xC] 

Ram_Copy:
  
