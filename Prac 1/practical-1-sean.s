@ WDXSEA003 CHTREE002

  .syntax unified
  .cpu cortex-m0
  .global _start

  .word 0x20001FFF
  .word _start + 1
  
_start: 
  MOVS R0, #0x01

@copy_to_RAM_complete:
@infinite_loop:
