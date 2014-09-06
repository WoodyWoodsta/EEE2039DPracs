@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

vectors:
  .word 0x20002000                                          @Stack pointer reset value
  .word _start + 1                                          @Reset vector (execution start specification)

@ HardFault_Handler:                                          @== Exectuted in the event of a hard fault
@   NOP
@   B HardFault_Handler

@ Default_Handler:                                            @== Executed in the event of any other fault or exception
@   NOP
@   B Default_Handler

_start:
  BL LEDInit                                                @Enable the LEDs (Also enables the RCC clock for GPIOA, too lazy to omit)

initialisations_complete:                                   @== New data loaded at 0x20000000

@== Common or lame routines to be routines

LEDInit:
  LDR R0, RCC_START                                         @Enable GPIOA and GPIOB RCC Clock
  LDR R2, [R0, 0x14]
  LDR R3, RCC_AHBENR_GPIO_ABEN
  ORRS R2, R2, R3
  STR R2, [R0, 0x14]
  LDR R0, PORTB_START
  LDR R2, PORTB_MODEROUT                                    @Set Port B Mode to OUTPUT
  STR R2, [R0]
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
