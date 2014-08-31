@WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

vectors:
  .word 0x20002000
  .word _start + 1

_start:
  LDR R0, RCC_START                                               @Enable GPIOA and GPIOB RCC Clock
  LDR R2, [R0, 0x14]
  LDR R3, RCC_AHBENR_GPIO_ABEN
  ORRS R2, R2, R3
  STR R2, [R0, 0x14]

ram_Copy_init:                                                    @Get start of data
  LDR R2, =DATA                                                   @FLASH pointer
  LDR R3, RAM_START                                               @RAM pointer
  LDR R5, =DATA_END                                               @Get address of the word after the word of data

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
  LDR R0, =0xFF                                                   @Use R0 as holder of the smallest byte
  LDR R1, =0x0                                                    @Use R1 as holder of the largest byte

byte_Incr:                                                        @Increment each byte by 1 and check for the conditions
  LDRB R4, [R3]                                                   @Load the unsigned byte
  ADDS R4, #1                                                     @Increment by 1                       |
  STRB R4, [R3]                                                   @Store the byte
  ADDS R3, #1                                                     @Increment RAM pointer
  BL smallest_Check
  BL largest_Check
  CMP R3, R7
  BEQ signed_Check
  B byte_Incr

signed_Check:                                             @Get start of RAM
  LDR R3, RAM_START
  LDR R2, =0b1111111                                                    @Use R1 as holder of the largest byte
  LDR R6, =0x0

signed_Byte_Incr_Check:                                                        @Check for the conditions
  LDRSB R4, [R3, R6]                                                   @Load the unsigned byte
  BL largest_Signed_Check
  ADDS R3, #1                                                     @Increment RAM pointer
  CMP R3, R7
  BEQ increment_of_bytes_complete
  B signed_Byte_Incr_Check

smallest_Check:
  CMP R0, R4
  BPL smallest_Store
  BX LR

smallest_Store:
  MOVS R0, R4
  BX LR

largest_Check:
  CMP R1, R4
  BMI largest_Store
  BX LR

largest_Store:
  MOVS R1, R4
  BX LR

largest_Signed_Check:
  CMP R4, R2
  BGT largest_Signed_Store
  BX LR

largest_Signed_Store:
  MOVS R2, R4
  BX LR

increment_of_bytes_complete:
  MOVS R4, R0                                                     @Relocate the smallest byte 
  MOVS R5, R1                                                     @Relocate the largest byte
  MOVS R6, R2                                                     @Relocate the largest signed byte
  BL iic_Init_A
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
  LDR R0, PORTA_START                                             @Load base address for Ports A and B  |
  LDR R1, PORTB_START                                             @PORT A - [R0], PORT B - [R1]         |
  LDR R2, [R0, 0x10]                                              @Load and mask SW states              |
  LDR R7, =0b111                                                  @                                     |
  ANDS R2, R2, R7                                                 @                                     |
  EORS R2, R2, R7
  CMP R2, #0
  BEQ display_Max
  CMP R2, #1
  BEQ display_Min
  CMP R2, #2
  BEQ display_MaxS
  CMP R2, #4
  BEQ display_Temp

display_Max:
  STR R5, [R1, 0x14]
  B sw_Check

display_Min:
  STR R4, [R1, 0x14]
  B sw_Check

display_MaxS:
  STRB R6, [R1, 0x14]
  B sw_Check

display_Temp2:
  LDR R3, =0b010101
  STR R3, [R1, 0x14]
  B sw_Check

iic_Init_A: @Basically to "clockout" unwanted data at this stage
  @Enable PORT F RCC Clock
  LDR R0, RCC_START
  LDR R1, RCC_AHBENR_GPIO_FEN
  LDR R2, [R0, 0x14]
  ORRS R2, R2, R1
  STR R2, [R0, 0x14]
  @Set SCLK (PORT F, Pin 6) output type to OPEN, DRAIN
  LDR R0, PORTF_START
  LDR R1, GPIO_OTYPER_OT_6
  LDR R2, [R0, 0x04]
  ORRS R2, R2, R1
  STR R2, [R0, 0x04]
  @Set SCLK (PORT F, Pin 6) mode to OUTPUT
  LDR R1, GPIO_MODER_MODER6_0
  LDR R2, [R0]
  ORRS R2, R2, R1
  STR R2, [R0]
  LDR R7, =0x15
  B slave_Clockout_A

slave_Clockout_A: @Main clockout loop
  LDR R3, =0x0B
  SUBS R7, #1
  CMP R7, #0
  BNE slave_Clockout_B1
  B iic_Init_B

slave_Clockout_B1:
  SUBS R3, #1
  CMP R3, #0
  BNE slave_Clockout_B1
  LDR R3, =0x0B
  LDR R1, GPIO_BSRR_BR_6
  LDR R2, [R0, 0x18]
  ORRS R2, R2, R1
  STR R2, [R0, 0x18]
  B slave_Clockout_B2

slave_Clockout_B2:
  SUBS R3, #1
  CMP R3, #0
  BNE slave_Clockout_B2
  LDR R1, GPIO_BSRR_BS_6
  LDR R2, [R0, 0x18]
  ORRS R2, R2, R1
  STR R2, [R0, 0x18]
  B slave_Clockout_A


iic_Init_B:
  @Reset PORT F mode bits
  LDR R0, PORTF_START
  LDR R1, GPIO_MODER_MODER6
  LDR R2, =0xFFFFFFFF
  EORS R1, R1, R2
  LDR R2, [R0]
  ANDS R2, R2, R1
  STR R2, [R0]
  @Set SCLK (PORT F, Pin 6) mode to ALTERNATE FUNCTION
  LDR R1, GPIO_MODER_MODER6_1
  LDR R2, [R0]
  ORRS R2, R2, R1
  STR R2, [R0]
  @Set SCLK (PORT F, Pin 6) output type to OPEN, DRAIN
  LDR R1, GPIO_OTYPER_OT_6
  LDR R2, [R0, 0x4]
  ORRS R2, R2, R1
  STR R2, [R0, 0x4]

  @Set SDA (PORT F, Pin 7) mode to ALTERNATE FUNCTION
  LDR R1, GPIO_MODER_MODER7_1
  LDR R2, [R0]
  ORRS R2, R2, R1
  STR R2, [R0]
  @Set SCLK (PORT F, Pin 6) output type to OPEN, DRAIN
  LDR R1, GPIO_OTYPER_OT_7
  LDR R2, [R0, 0x4]
  ORRS R2, R2, R1
  STR R2, [R0, 0x4]

  @Enable I2C2 RCC Clock
  LDR R0, RCC_START
  LDR R1, RCC_APB1ENR_I2C2EN
  LDR R2, [R0, 0x1C]
  ORRS R2, R2, R1
  STR R2, [R0, 0x1C]

  @Disable I2C Peripheral (Using control register 1)
  LDR R0, I2C2_START
  LDR R1, I2C_CR1_PE
  LDR R3, =0xFFFFFFFF
  EORS R1, R1, R3
  LDR R2, [R0]
  ANDS R2, R2, R1
  STR R2, [R0]

  @Set timing of the following in TIMINGR
  @SCLL
  LDR R1, =0xC7
  LSLS R1, #0
  LDR R2, [R0, 0x10]
  ORRS R2, R2, R1
  STR R2, [R0, 0x10]
  @SCLH
  LDR R1, =0xC3
  LSLS R1, #8
  LDR R2, [R0, 0x10]
  ORRS R2, R2, R1
  STR R2, [R0, 0x10]
  @SDADEL
  LDR R1, =0x02
  LSLS R1, #16
  LDR R2, [R0, 0x10]
  ORRS R2, R2, R1
  STR R2, [R0, 0x10]
  @SCLDEL
  LDR R1, =0x04
  LSLS R1, #20
  LDR R2, [R0, 0x10]
  ORRS R2, R2, R1
  STR R2, [R0, 0x10]
  @PRESC
  LDR R1, =0x1
  LSLS R1, #28
  LDR R2, [R0, 0x10]
  ORRS R2, R2, R1
  STR R2, [R0, 0x10]

  @Enable I2C Peripheral
  LDR R1, I2C_CR1_PE
  LDR R2, [R0]
  ORRS R2, R2, R1
  STR R2, [R0]

  BX LR


display_Temp:
  LDR R2, I2C2_START
  @Set slave address in SADD (Control Register 2)
  LDR R3, TC74ADDR_READ
  LDR R7, [R2, 0x4]
  ORRS R7, R7, R3
  STR R7, [R2, 0x4]
  @Set Number of bytes to 1
  LDR R3, =0x1
  LSLS R3, #16
  LDR R7, [R2, 0x4]
  ORRS R7, R7, R3
  STR R7, [R2, 0x4]
  @Indicate read action
  LDR R3, I2C_CR2_RD_WRN
  LDR R7, [R2, 0x4]
  ORRS R7, R7, R3
  STR R7, [R2, 0x4]
  @Send START
  LDR R3, I2C_CR2_START
  LDR R7, [R2, 0x4]
  ORRS R7, R7, R3
  STR R7, [R2, 0x4]

  BL wait_TC

  @Display TEMP data!!
  LDR R3, [R2, 0x24]
  STR R3, [R1, 0x14]

  @Send STOP
  LDR R3, I2C_CR2_STOP
  LDR R7, [R2, 0x4]
  ORRS R7, R7, R3
  STR R7, [R2, 0x4]

  B sw_Check


wait_TC: @Wait for ACK and TC Flag
  LDR R3, [R2, 0x18]
  LDR R7, I2C_ISR_RXNE
  ANDS R7, R7, R3
  CMP R7, #0
  BEQ wait_TC
  BX LR


  .align

@ Program Variables
RCC_START:              .word 0x40021000
RCC_AHBENR_GPIO_ABEN:   .word 0x00060000
RCC_AHBENR_GPIO_FEN:    .word 0x00400000
RCC_APB1ENR_I2C2EN:     .word 0x00400000
PORTA_START:            .word 0x48000000
PORTA_MODERIN:          .word 0x28000000
PORTA_PUPDR:            .word 0x55
PORTB_START:            .word 0x48000400
PORTB_MODEROUT:         .word 0x00005555
PORTF_START:            .word 0x48001400
GPIO_MODER_MODER6:      .word 0x00003000
GPIO_MODER_MODER6_0:    .word 0x00001000
GPIO_MODER_MODER6_1:    .word 0x00002000
GPIO_OTYPER_OT_6:       .word 0x00000040
GPIO_MODER_MODER7_1:    .word 0x00008000
GPIO_OTYPER_OT_7:       .word 0x00000080
GPIO_BSRR_BR_6:         .word 0x00400000
GPIO_BSRR_BS_6:         .word 0x00000040
I2C2_START:             .word 0x40005800
I2C_CR1_PE:             .word 0x00000001
TC74ADDR_READ:          .word 0b10010001
TC74ADDR_WRITE:         .word 0b10010000
I2C_CR2_RD_WRN:         .word 0x00000400
I2C_CR2_START:          .word 0x00002000
I2C_ISR_RXNE:           .word 0x00000004
I2C_CR2_STOP:           .word 0x00004000
RAM_START:              .word 0x20000000

@ Data
DATA:   .word 0x22f65244
        .word 0x4e66eca3
        .word 0x25c1c308
        .word 0xe278d1ca
        .word 0x10e865fe
        .word 0x839b17fb
        .word 0xde6ac773
        .word 0x49a0392b
        .word 0x442b580
        .word 0xae6e269d
        .word 0xcb220366
        .word 0x603debbe
        .word 0xfd88b1bf
        .word 0x49c5652f
        .word 0x25476c5a
        .word 0xa5c40771
        .word 0xb04d908d
        .word 0x831c1806
        .word 0x5b4f75d4
        .word 0x6b016b93
        .word 0x90dcb11a
        .word 0xefb6e394
        .word 0x44db27da
        .word 0xcf205f79
        .word 0xb1192a24
        .word 0x79cf44e2
        .word 0x371ce3ba
        .word 0x7a279ff5
        .word 0x6047dc
        .word 0xfa165142
        .word 0x12690fdc
        .word 0x5aad829e
        .word 0x19244ba0
        .word 0xb5174a3
        .word 0xbd7172c8
        .word 0x1d3b229f
        .word 0xada0357e
        .word 0x1d44e4e6
        .word 0x37caa86e
        .word 0x6a08fc5d
        .word 0x465faee1
        .word 0x2e52e372
        .word 0xd6016409
        .word 0x52012177
        .word 0x848249e0
        .word 0xcee8ec8d
        .word 0xca09fbe7
        .word 0x45ec4e32
        .word 0xa11ccfb5
        .word 0x95584228
DATA_END:

@DATA:   .word 0b00000010000000100000001000000001
@DATA_END:
