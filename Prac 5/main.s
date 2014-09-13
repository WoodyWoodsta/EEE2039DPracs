@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

vectors:
  .word 0x20002000                                          @ Stack pointer reset value
  .word _start + 1                                          @ Reset vector (execution start specification)
  .word Default_Handler + 1                                 @ NMI handler - just redirecting to default handler for now
  .word HardFault_Handler + 1                               @ Hardfault handler vector


HardFault_Handler:                                          @== Exectuted in the event of a hard fault
  LDR R5, PORTB_START
  LDR R6, =0xAA
  STR R6, [R5, 0x14]
  B HardFault_Handler

Default_Handler:                                            @== Executed in the event of any other fault or exception
  LDR R0, PORTB_START
  LDR R1, =0b11100011
  STR R1, [R0, 0x14]
  B Default_Handler

_start:
  BL LEDInit                                                @ Enable the LEDs (Also enables the RCC clock for GPIOA, too lazy to omit)
  LDR R0, PORTB_START
  LDR R1, =0x1                                              @ Pushing the 1st two numbers to the stack
  LDR R2, =0x1
  PUSH {R1, R2}
  LDR R4, =0x48000414                                       @ Temp address for testing of part two
  LDR R5, RAM_START
  STR R4, [R5]

initialisations_complete:                                   @== New data loaded at 0x20000000
  LDR R6, =0x2D                                             @ Start the counter to loop fib_loop 45 times
                                                            @ (This will give us 47 Fibonacci numbers :) )
fib_loop:
 POP {R2}                                                   @ Pop the last two values from the stack
 POP {R1}
 ADDS R3, R1, R2                                            @ Add those values
 PUSH {R1}                                                  @ Push the three values back onto the stack (in the correct order)
 PUSH {R2}
 PUSH {R3}
 SUBS R6, #1                                                @ Decrement the counter
 CMP R6, #0                                                 @ Check for end of fib stuff
 BNE fib_loop

fib_calc_complete:                                          @== Relocation of the 47th fib number
  POP {R1}                                                  @ Grab the last word in the stack (the 47th fib number)
  LDR R0, RAM_START
  LDR R2, [R0]                                              @ Grab the data which is the address needed
  STR R1, [R2]                                              @ Store the fib number into that address
  BL pot_poll_init

cycle_patterns:                                             @== Pattern cycler using link branches
  LDR R0, PORTB_START
  LDR R1, =0x0
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0x81
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0xC3
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0xE7
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0xFF
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0x7E
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0x3C
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  LDR R1, =0x18
  STR R1, [R0, 0x14]
  BL var_delay_routine_initA
  LDR R0, PORTB_START
  B cycle_patterns

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
  BX LR

var_delay_routine_initA:                                     @== Variable delay subroutine init
  LDR R0, ADC1_START                                        @ Starting a conversion
  LDR R1, [R0, 0x08]
  LDR R2, ADC_CR_ADSTART
  ORRS R1, R1, R2
  STR R1, [R0, 0x08]
  B pot_get_wait

var_delay_routine_initB:
  LDR R2, VARDELAY_GRAD
  MULS R7, R2, R7
  ADDS R7, #1

var_delay_routine:                                          @== Variable delay subroutine (total cycles = 5)
  SUBS R7, #1 @ 1
  CMP R7, #0 @ 1
  BNE var_delay_routine @ 3
  BX LR

pot_poll_init:                                              @== Inialisation of the pots (ADC etc)
  LDR R0, RCC_START
  LDR R1, [R0, 0x18]                                        @ Enable RCC for ADC
  LDR R2, RCC_APB2ENR_ADC_EN
  ORRS R1, R1, R2
  STR R1, [R0, 0x18]

  LDR R0, PORTA_START                                       @ Set PA6 to ANALOG
  LDR R1, [R0]
  LDR R2, GPIOA_MODER_MODER6
  ORRS R1, R1, R2
  STR R1, [R0]

  LDR R0, ADC1_START                                        @ Select ADC channel 6
  LDR R1, [R0, 0x28]
  LDR R2, ADC_CHSELR_CHSEL6
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
  LDR R0, PORTB_START
  B var_delay_routine_initB

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
VARDELAY_GRAD:          .word 0x00000C65 @ Gradient for the linear pot/dely relationship
RAM_START:              .word 0x20000000

RCC_APB2ENR_ADC_EN:     .word 0x00000200 @ ADC enable bit
GPIOA_MODER_MODER6:     .word 0x00003000 @ Port A6 analog mode
ADC1_START:             .word 0x40012400 @ Start of ADC registers
ADC_CHSELR_CHSEL6:      .word 0x00000040 @ Channel 6 select bit
ADC_CFGR1_RES_1:        .word 0x00000010 @ 8 bit resolution bit
ADC_CR_ADEN:            .word 0x00000001 @ ADEN = 1
ADC_ISR_ADRDY:          .word 0x00000001 @ ADC ready bit
ADC_CR_ADSTART:         .word 0x00000004 @ ADC conversion start bit
ADC_ISR_EOC:            .word 0x00000004 @ ADC conversion complete bit

