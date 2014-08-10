@WDXSEA003  CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start:
  LDR R0, RCC_START                             @Enable PORT A and B
  LDR R1, RCC_AHBENR_GPIO_AB_EN
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

bonus_init:
  LDR R1, PORTA_START
  LDR R2, PORTA_PUPDR            @Pullup mode for PA0-3
  LDR R3, [R1, 0x0C]
  ORRS R2, R2, R3
  STR R2, [R1, 0x0C]
  LDR R2, PORTA_MODERIN          @Input mode for PA0-3 and output for the rest  
  LDR R3, [R1]
  ORRS R2, R2, R3
  STR R2, [R1]

bonus:                    @Take GPIOA_IDR and display it
  LDR R2, [R1, 0x10]
  MOVS R3, 0x0
  ADDS R2, R2, R3
  STR R2, [R0, 0x14]
  B bonus


end:
  B all_off                                     @Loop through everything


  .align
RCC_START: .word 0x40021000
RCC_AHBENR_GPIO_AB_EN: .word 0x00060000
PORTB_START: .word 0x48000400
PORTA_START: .word 0x48000000
PORTB_MODEROUT: .word 0x00005555
PORTA_MODERIN: .word 0x5500
PORTA_PUPDR: .word 0x55
