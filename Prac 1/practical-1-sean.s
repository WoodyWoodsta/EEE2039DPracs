@ WDXSEA003 CHTREE002

  .syntax unified
  .thumb
  .global _start
  .word 0x20001FFF
  .word _start + 1
  
_start: 
  LDR R0, RAM_START
  LDR R1, A
  STR R1, [R0]
  LDR R1, B
  STR R1, [R0, #4]
  LDR R1, C
  STR R1, [R0, #8]
  LDR R1, D
  STR R1, [R0, #12]

copy_to_RAM_complete:
  LDR R1, [R0]          @Operation: A - B
  LDR R2, [R0, #4]
  SUBS R1, R1, R2
  STR R1, [R0, #16]
  
  LDR R1, [R0]          @Operation: A + B + C
  LDR R2, [R0, #4]
  ADDS R1, R1, R2
  LDR R2, [R0, #8]
  ADDS R1, R1, R2
  STR R1, [R0, #20]

  LDR R1, [R0, #4]      @Operation: B XOR C
  LDR R2, [R0, #8]
  EORS R1, R1, R2
  STR R1, [R0, #24]

  LDR R1, [R0, #4]      @Operation: B * C
  MULS R1, R1, R2
  STR R1, [R0, #28]

  LDR R0, RCC_START                @Specify start of RCC register
  LDR R1, [R0, #20]                @Load RCC_AHBENR value
  LDR R2, RCC_AHBENR_GPIOBEN       @Load RCC_AHBENR_GPIOBEN value
  ORRS R1, R1, R2                  @OR values for RCC_AHBENR register
  STR R1, [R0, #20]                @Reload RCC_AHBENR register
  LDR R0, PORTB_START              @Specify start of GPIOB register addresses
@ LDR R3, [R0]                     @Just check what is in here
  LDR R1, PORT_MODE1               @Specify output mode to Digital Output (01)
  STR R1, [R0]                     @Set output mode of GPIOB
@ LDR R4, [R0, 0x14]               @Just check what is in there
  LDR R1, PORT_OUTPUT1             @Specifiy data
  STR R1, [R0, #20]                @Write data


infinite_loop:
  B infinite_loop

  .align
RAM_START: .word 0x20000000
PORTB_START: .word 0x48000400
A: .word 0xAABBCCDD
B: .word 0x00001122
C: .word 0x00002233
D: .word 0x55555555
RCC_START: .word 0x40021000
RCC_AHBENR_GPIOBEN: .word 0x00040000
PORT_MODE1: .word 0x00005555
PORT_OUTPUT1: .word 0b11
