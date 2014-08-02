  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1
  
_start: MOVS R1, #7
  LDR R1, [R0, #4]

