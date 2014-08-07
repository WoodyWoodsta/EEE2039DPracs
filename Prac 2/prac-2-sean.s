@WDXSEA003  CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start:
  LDR R0, RCC_START                             @Enable PORT B
  LDR R1, RCC_AHBENR_GPIOBEN
  STR R1, [R0, #20]
  LDR R0, PORTB_START                           @Set PORT B to Output
  LDR R1, PORTB_MODEROUT
  STR R1, [R0]

_all_off:                                       @Turn all LEDs off
  LDR R1, 0x0
  STR R1, [R0, 0x14]

  

  .align
RCC_START: .word 0x40021000
RCC_AHBENR_GPIOBEN: .word 0x00040000
PORTB_START: .word 0x48000400
PORTB_MODEROUT: .word 0x00005555
