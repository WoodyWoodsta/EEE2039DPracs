
; EEE2039D - Practical 1 - Sean

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1
