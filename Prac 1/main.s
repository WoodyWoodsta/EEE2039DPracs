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

  LDR R1, [R0, #4]      
  MULS R1, R1, R2
  STR R1, [R0, #28]

infinite_loop:
  B infinite_loop

  .align
RAM_START: .word 0x20000000
A: .word 0xAABBCCDD
B: .word 0x00001122
C: .word 0x00002233
D: .word 0x55555555

