@ WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .global _start

  .word 0x20001FFF
  .word _start + 1
  
_start: 
  MOVS R0, #0x20000000
  MOVS R1, A
  LDR R1, [R0, #0]

@copy_to_RAM_complete:
@infinite_loop:

A: .word 0xAABBCCDD
B: .word 0x00001122
C: .word 0x00002233
D: .word 0x55555555