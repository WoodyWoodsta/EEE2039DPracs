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
  LDR R2, [R0, #20]
  ORRS R1, R1, R2
  STR R1, [R0, #20]
  LDR R0, PORTB_START                           @Set PORT B to Output
  LDR R1, PORTB_MODEROUT
  STR R1, [R0]

all_off:                                        @Turn all LEDs off
  MOVS R1, 0b00000000
  STR R1, [R0, 0x14]

display_AA:
  MOVS R1, 0xAA                                 @Display 0xAA on the LEDs
  STR R1, [R0, 0x14]

all_on:
  MOVS R1, 0b11111111                           @Turn all LEDs on
  STR R1, [R0, 0x14]

bonus:


end:
  B all_off                                     @Loop through everything


  .align
RCC_START: .word 0x40021000
RCC_AHBENR_GPIOBEN: .word 0x00040000
PORTB_START: .word 0x48000400
PORTB_MODEROUT: .word 0x00005555
