@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

vectors:                                                    @== All those vectors!
  .word 0x20002000                                          @ 0x00: Stack pointer reset value
  .word _start + 1                                          @ 0x04: Reset vector (execution start specification)
  .word Default_Handler + 1                                 @ 0x08: NMI handler - just redirecting to default handler for now
  .word HardFault_Handler + 1                               @ 0x0C: Hardfault handler vector
  .word Default_Handler + 1                                 @ 0x10: reserved
  .word Default_Handler + 1                                 @ 0x14: reserved
  .word Default_Handler + 1                                 @ 0x18: reserved
  .word Default_Handler + 1                                 @ 0x1C: reserved
  .word Default_Handler + 1                                 @ 0x20: reserved
  .word Default_Handler + 1                                 @ 0x24: reserved
  .word Default_Handler + 1                                 @ 0x28: reserved
  .word Default_Handler + 1                                 @ 0x2C: SVCall vector
  .word Default_Handler + 1                                 @ 0x30: reserved
  .word Default_Handler + 1                                 @ 0x34: reserved
  .word Default_Handler + 1                                 @ 0x38: reserved
  .word Default_Handler + 1                                 @ 0x3C: SysTick vector
  .word Default_Handler + 1                                 @ 0x40: reserved
  .word Default_Handler + 1                                 @ 0x44: reserved
  .word Default_Handler + 1                                 @ 0x48: reserved
  .word Default_Handler + 1                                 @ 0x4C: reserved
  .word Default_Handler + 1                                 @ 0x50: reserved
  .word Default_Handler + 1                                 @ 0x54: reserved
  .word Default_Handler + 1                                 @ 0x58: reserved
  .word Default_Handler + 1                                 @ 0x5C: reserved
  .word Default_Handler + 1                                 @ 0x60: reserved
  .word Default_Handler + 1                                 @ 0x64: reserved
  .word Default_Handler + 1                                 @ 0x68: reserved
  .word Default_Handler + 1                                 @ 0x6C: reserved
  .word Default_Handler + 1                                 @ 0x70: reserved
  .word Default_Handler + 1                                 @ 0x74: reserved
  .word Default_Handler + 1                                 @ 0x78: reserved
  .word Default_Handler + 1                                 @ 0x7C: reserved
  .word Default_Handler + 1                                 @ 0x80: reserved
  .word TIM6_ADC_IRQHandler_init + 1                        @ 0x84: TIM6 ISR vector
  .word Default_Handler + 1                                 @ 0x88: reserved
  .word Default_Handler + 1                                 @ 0x8C: reserved


HardFault_Handler:                                          @== Exectuted in the event of a hard fault
  LDR R5, PORTB_START
  LDR R6, =0b11100111
  STR R6, [R5, 0x14]
  B HardFault_Handler

Default_Handler:                                            @== Executed in the event of any other fault or exception
  LDR R0, PORTB_START
  LDR R1, =0b11000011
  STR R1, [R0, 0x14]
  B Default_Handler

_start:
  BL LEDInit                                                @ Enable the LEDs
  BL pot_poll_init                                          @ Enable ADC for POT0
  BL TIM6_init

infinite:
  NOP
  B infinite

TIM6_ADC_IRQHandler_init:                                   @== Interrupt Service Routine (for ADC and TIM6)
  LDR R0, PORTA_START
  LDR R1, [R0, 0x10]
  LDR R2, =0b1111
  EORS R1, R1, R2
  LDR R2, =0b1000
  ANDS R1, R1, R2
  CMP R1, #8
  BEQ subtract
  LDR R0, PORTB_START
  LDR R4, [R0, 0x14]
  ADDS R4, #1
  STR R4, [R0, 0x14]

TIM6_ADC_IRQHandler_init_A:
  LDR R0, PORTA_START
  LDR R1, [R0, 0x10]
  LDR R2, =0b1111
  EORS R1, R1, R2
  LDR R2, =0b0100
  ANDS R1, R1, R2
  CMP R1, #4
  BEQ pot_get                                                 @ Fetch the pot value
  LDR R0, TIM6_START
  LDR R1, TIM6_DELAY_DEF
  STR R1, [R0, 0x2C]
  LDR R1, =0x0
  STR R1, [R0, 0x24]
  B TIM6_ADC_IRQHandler_C
  
TIM6_ADC_IRQHandler_B:                                      @== Handles the scaling if SW was pressed
  LDR R0, TIM6_START
  LDR R6, TIM6_DELAY_GRAD
  MULS R7, R7, R6
  LDR R6, TIM6_DELAY_CONST
  ADDS R7, R6
  STR R7, [R0, 0x2C]
  
TIM6_ADC_IRQHandler_C:  
  LDR R0, TIM6_START
  LDR R1, =0x0
  STR R1, [R0, 0x10]
  BX LR

subtract:
  LDR R0, PORTB_START
  LDR R4, [R0, 0x14]
  SUBS R4, #1
  STR R4, [R0, 0x14]
  B TIM6_ADC_IRQHandler_init_A


@== Subroutines

LEDInit:
  LDR R0, RCC_START                                         @ Enable GPIOA and GPIOB RCC Clock
  LDR R2, [R0, 0x14]
  LDR R3, RCC_AHBENR_GPIO_ABEN
  ORRS R2, R2, R3
  STR R2, [R0, 0x14]
  LDR R0, PORTB_START
  LDR R2, PORTB_MODEROUT                                    @ Set Port B Mode to OUTPUT
  STR R2, [R0]
  LDR R0, PORTA_START
  LDR R1, PORTA_PUPDR
  LDR R2, [R0, 0x0C]
  ORRS R1, R1, R2
  STR R1, [R0, 0x0C]
  LDR R1, PORTA_MODERIN
  STR R1, [R0]
  BX LR

pot_poll_init:                                              @== Inialisation of the pots (ADC etc)
  LDR R0, RCC_START
  LDR R1, [R0, 0x18]                                        @ Enable RCC for ADC
  LDR R2, RCC_APB2ENR_ADC_EN
  ORRS R1, R1, R2
  STR R1, [R0, 0x18]

  LDR R0, PORTA_START                                       @ Set PA5 to ANALOG
  LDR R1, [R0]
  LDR R2, GPIOA_MODER_MODER5
  ORRS R1, R1, R2
  STR R1, [R0]

  LDR R0, ADC1_START                                        @ Select ADC channel 5
  LDR R1, [R0, 0x28]
  LDR R2, ADC_CHSELR_CHSEL5
  ORRS R1, R1, R2
  STR R1, [R0, 0x28]

  LDR R1, [R0, 0x0C]                                        @ Set resolution to 8 bits
  LDR R2, ADC_CFGR1_RES_1
  ORRS R1, R1, R2
  STR R1, [R0, 0x0C]

  LDR R1, [R0, 0x08]                                        @ Set ADEN = 1
  LDR R2, ADC_CR_ADEN
  ORRS R1, R1, R2
  STR R1, [R0, 0x08]

  B pot_poll_init_wait

pot_poll_init_wait:                                         @== Basically wait for the ADC to let us know it is ready
  LDR R0, ADC1_START
  LDR R1, [R0]
  LDR R2, ADC_ISR_ADRDY
  ANDS R1, R1, R2
  CMP R1, #0
  BEQ pot_poll_init_wait
  BX LR

pot_get:                                                    @== Gets the pot value
  LDR R0, ADC1_START                                        @ Starting a conversion
  LDR R1, [R0, 0x08]
  LDR R2, ADC_CR_ADSTART
  ORRS R1, R1, R2
  STR R1, [R0, 0x08]
  B pot_get_wait

pot_get_wait:                                               @== Waits for conversion to be finished
  LDR R1, [R0]
  LDR R2, ADC_ISR_EOC
  ANDS R1, R1, R2
  CMP R1, #0
  BEQ pot_get_wait
  LDR R7, [R0, 0x40]
  @ B test
  B TIM6_ADC_IRQHandler_B

bbb
TIM6_init:                                                  @== Initialise TIMER 6
  LDR R0, RCC_START
  LDR R1, RCC_APB1ENR_TIM6_EN                               @ Enable RCC for Timer 6
  LDR R2, [R0, 0x1C]
  ORRS R1, R1, R2
  STR R1, [R0, 0x1C]

  LDR R0, TIM6_START                                        @ Set ARR to a default value for now
  LDR R1, TIM6_DELAY_DEF
  STR R1, [R0, 0x2C]

  LDR R1, =0x64                                              @ Set the prescalar to 100 (100 times as slow)
  STR R1, [R0, 0x28]

  LDR R1, TIM6_DIER_IEN                                     @ Enable the interupt for TIM6
  LDR R2, [R0, 0x0C]
  ORRS R1, R1, R2
  STR R1, [R0, 0x0C]

  LDR R1, =0x0                                              @ Clear any possible interrupt
  STR R1, [R0, 0x10]

  LDR R1, TIM6_CR1_CEN                                      @ Start the clock!
  LDR R2, [R0]
  ORRS R1, R1, R2
  STR R1, [R0]

  LDR R0, ISER_ADDR                                         @ Enable TIM 6 interrupt in the NVIC
  LDR R1, ISER_TIM6_EN
  LDR R2, [R0]
  ORRS R1, R1, R2
  STR R1, [R0]

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
DELAY_1:                .word 0x000C3500 @ 0.5 secs
VARDELAY_GRAD:          .word 0x00000C65 @ Gradient for the linear pot/delay relationship
RAM_START:              .word 0x20000000
TIM6_START:             .word 0x40001000

RCC_APB2ENR_ADC_EN:     .word 0x00000200 @ ADC enable bit
GPIOA_MODER_MODER5:     .word 0x00000C00 @ Port A5 analog mode
GPIOA_MODER_MODER6:     .word 0x00003000 @ Port A6 analog mode
ADC1_START:             .word 0x40012400 @ Start of ADC registers
ADC_CHSELR_CHSEL5:      .word 0x00000020 @ Channel 5 select bit
ADC_CHSELR_CHSEL6:      .word 0x00000040 @ Channel 6 select bit
ADC_CFGR1_RES_1:        .word 0x00000010 @ 8 bit resolution bit
ADC_CR_ADEN:            .word 0x00000001 @ ADEN = 1
ADC_ISR_ADRDY:          .word 0x00000001 @ ADC ready bit
ADC_CR_ADSTART:         .word 0x00000004 @ ADC conversion start bit
ADC_ISR_EOC:            .word 0x00000004 @ ADC conversion complete bit

RCC_APB1ENR_TIM6_EN:    .word 0x00000010 @ TIM6 enable bit
TIM6_DELAY_DEF:         .word 0x00009B00 @ Default Timer 6 delay (2Hz)
TIM6_DELAY_GRAD:        .word 0x0000007E @ Gradient for pot relationship
TIM6_DELAY_CONST:       .word 0x00001F40 @ Constant for pot relationship
TIM6_CR1_CEN:           .word 0x00000001 @ TIM 6 counter enable bit 
TIM6_DIER_IEN:          .word 0x00000001 @ Update interrupt enable bit
ISER_ADDR:              .word 0xE000E100 @ NVIC interrupt set-enable register
ISER_TIM6_EN:           .word 0x00020000 @ TIM 6 NVIC interrupt enable bit

