; Just a test to see what basic instrunctions do

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start: LDR R1, #4

loop:
  B loop