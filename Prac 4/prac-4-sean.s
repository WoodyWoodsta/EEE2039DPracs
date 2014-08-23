@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start:
  LDR R0, RCC_START                                               @Enable GPIOA and GPIOB RCC Clock
  LDR R2, [R0, 0x14]
  LDR R3, RCC_AHBENR_GPIO_AB_EN
  ORRS R2, R2, R3
  STR R2, [R0, 0x14]

ram_Copy_init:                                                    @Get start of data
  LDR R2, =DATA                                                   @FLASH pointer
  LDR R3, RAM_START                                               @RAM pointer
  LDR R5, =DATA_END                                               @Get address of the word after the word of data
  ADDS R5, #4

ram_Copy:                                                         @Iterative copy of data to RAM
  LDR R4, [R2]                                                    @Load FLASH data
  STR R4, [R3]                                                    @Store FLASH data to RAM
  ADDS R2, #4                                                     @Increment RAM and FLASH pointers     |
  ADDS R3, #4                                                     @                                     |
  CMP R5, R2                                                      @Check for end of data
  BNE ram_Copy

copy_to_RAM_complete:                                             @Get start of RAM
  MOVS R7, R3                                                     @Relocate the end of data (RAM)
  LDR R3, RAM_START
  LDR R5, =DATA_END                                               @Get address of the word after the last word of data
  LDR R0, =0xFF                                                   @Use R0 as holder of the smallest byte
  LDR R1, =0x0                                                    @Use R1 as holder of the largest byte

byte_Incr:                                                        @Increment each byte by 1
  LDRB R4, [R3]                                                   @Load the byte
  ADDS R4, #1                                                     @Increment by 1
  STRB R4, [R3]                                                   @Store the byte
  ADDS R3, #1                                                     @Increment RAM pointer
  BL smallest_Check
  BL largest_Check
  BNE byte_Incr

smallest_Check:
  CMP R0, R4
  BMI smallest_Store
  BX PC

smallest_Store:
  MOVS R0, R4
  BX PC

largest_Check:
  CMP R1, R4
  BPL largest_Store
  BX PC

largest_Store:
  MOVS R1, R4
  BX PC


increment_of_bytes_complete:
  MOVS R5, R0                                                     @Relocate the smallest byte 
  MOVS R6, R1                                                     @Relocate the largest byte
  LDR R0, PORTA_START                                             @Load base address for Ports A and B  |
  LDR R1, PORTB_START                                             @PORT A - [R0], PORT B - [R1]         |
  LDR R2, [R0, 0xC] 
  LDR R3, PORTA_PUPDR                                             @Enable Port A pullup resistors
  ORRS R2, R2, R3
  STR R2, [R0, 0xC]
  LDR R2, [R0]                                                    @Set Port A Mode to IN
  LDR R3, PORTA_MODERIN
  ORRS R2, R2, R3
  STR R2, [R0]
  LDR R2, PORTB_MODEROUT                                          @Set Port B Mode to OUT
  STR R2, [R1]

sw_Check:
  LDR R2, [R0, 0x10]                                              @Load and mask SW states              |
  LDR R7, =0b111                                                  @                                     |
  ANDS R2, R2, R7                                                 @                                     |
  EORS R2, R2, R7
  CMP R2, #0
  BEQ display_Max
  CMP R2, #1
  BEQ display_Min

display_Max:
  STR R6, [R1, 0x14]
  B sw_Check

display_Min:
  STR R5, [R1, 0x14]
  B sw_Check


  .align

@ Program Variables
RCC_START: .word 0x40021000
RCC_AHBENR_GPIO_AB_EN: .word 0x00060000
PORTA_START: .word 0x48000000
PORTA_MODERIN: .word 0x28000000
PORTA_PUPDR: .word 0x55
PORTB_START: .word 0x48000400
PORTB_MODEROUT: .word 0x00005555
RAM_START: .word 0x20000000

@ Data
@DATA: .word 0x10e865fe
@      .word 0x839b17fb
@      .word 0xde6ac773
@      .word 0x49a0392b
@      .word 0x442b580
@      .word 0xae6e269d
@      .word 0xcb220366
@      .word 0x603debbe
@      .word 0xfd88b1bf
@      .word 0x49c5652f
@      .word 0x25476c5a
@      .word 0xa5c40771
@      .word 0xb04d908d
@      .word 0x831c1806
@      .word 0x5b4f75d4
@      .word 0x6b016b93
@      .word 0x90dcb11a
@      .word 0xefb6e394
@      .word 0x44db27da
@      .word 0xcf205f79
@      .word 0xb1192a24
@      .word 0x79cf44e2
@      .word 0x371ce3ba
@      .word 0x7a279ff5
@      .word 0x6047dc
@      .word 0xfa165142
@      .word 0x12690fdc
@      .word 0x5aad829e
@      .word 0x19244ba0
@      .word 0xb5174a3
@      .word 0xbd7172c8
@      .word 0x1d3b229f
@      .word 0xada0357e
@      .word 0x1d44e4e6
@      .word 0x37caa86e
@      .word 0x6a08fc5d
@      .word 0x465faee1
@      .word 0x2e52e372
@      .word 0xd6006409
@      .word 0x52012177
@      .word 0x848249e0
@      .word 0xcee8ec8d
@      .word 0xca09fbe7
@      .word 0x45ec4e32
@      .word 0xa11ccfb5
@DATA_END: .word 0x95584228

DATA: .word 0x4
      .word 0x3
      .word 0x7
      .word 0x2
      .word 0x1
      .word 0x5
DATA_END: .word 0x6
