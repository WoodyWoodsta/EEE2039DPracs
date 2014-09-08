@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

vectors:
  .word 0x20002000                                          @ Stack pointer reset value
  .word _start + 1                                          @ Reset vector (execution start specification)
  .word Default_Handler                                     @ NMI handler - just redirecting to default handler for now
  .word HardFault_Handler                                   @ Hardfault handler vector


HardFault_Handler:                                          @== Exectuted in the event of a hard fault
  NOP
  B HardFault_Handler

Default_Handler:                                            @== Executed in the event of any other fault or exception
  NOP
  B Default_Handler

_start:
  BL LEDInit                                                @ Enable the LEDs (Also enables the RCC clock for GPIOA, too lazy to omit)
  LDR R4, =0x0
  LDR R5, =0x0
  @ PUSH 0b101
  @ PUSH 0b010                                                @ Push first two numbers
  LDR R4, [SP]
  LDR R5, [SP]

test:
  STR R4, [R0, 0x14]
  BL delay
  STR R5, [R0, 0x14]
  BL delay
  B test

initialisations_complete:                                   @== New data loaded at 0x20000000



@== Common or lame routines to be called

LEDInit:
  LDR R0, RCC_START                                         @ Enable GPIOA and GPIOB RCC Clock
  LDR R2, [R0, 0x14]
  LDR R3, RCC_AHBENR_GPIO_ABEN
  ORRS R2, R2, R3
  STR R2, [R0, 0x14]
  LDR R0, PORTB_START
  LDR R2, PORTB_MODEROUT                                    @ Set Port B Mode to OUTPUT
  STR R2, [R0]
  BX LR`

delay:
  LDR R7, DELAY_1
  SUBS R7, #1
  CMP R7, #0
  BNE delay
  BX LR

  .align
@== Program Variables
RCC_START:              .word 0x40021000
RCC_AHBENR_GPIO_ABEN:   .word 0x00060000
PORTA_START:            .word 0x48000000
PORTA_MODERIN:          .word 0x28000000
PORTA_PUPDR:            .word 0x55
PORTB_START:            .word 0x48000400
PORTB_MODEROUT:         .word 0x00005555
STACK_1_START:          .word 0x20002000
DELAY_1:                .word 0x00090000


@== Data 
     Experimental_Data: .word 0x00000001
                        .word 0x00000001
                        .word 0x00000002
                        .word 0x00000003
                        .word 0x00000005
                        .word 0x00000008
                        .word 0x0000000D
                        .word 0x00000015
                        .word 0x00000022
                        .word 0x00000037
                        .word 0x00000059
                        .word 0x00000090
                        .word 0x000000E9
                        .word 0x00000179
                        .word 0x00000262
                        .word 0x000003DB
                        .word 0x0000063D
                        .word 0x00000A18
                        .word 0x00001055
                        .word 0x00001A6D
                        .word 0x00002AC2
                        .word 0x0000452F
                        .word 0x00006FF1
                        .word 0x0000B520
                        .word 0x00012511
                        .word 0x0001DA31
                        .word 0x0002FF42
                        .word 0x0004D973
                        .word 0x0007D8B5
                        .word 0x000CB228
                        .word 0x00148ADD
                        .word 0x00213D05
                        .word 0x0035C7E2
                        .word 0x005704E7
                        .word 0x008CCCC9
                        .word 0x00E3D1B0
                        .word 0x01709E79
                        .word 0x02547029
                        .word 0x03C50EA2
                        .word 0x06197ECB
                        .word 0x09DE8D6D
                        .word 0x0FF80C38
                        .word 0x19D699A5
                        .word 0x29CEA5DD
                        .word 0x43A53F82
                        .word 0x6D73E55F
                        .word 0xB11924E1
