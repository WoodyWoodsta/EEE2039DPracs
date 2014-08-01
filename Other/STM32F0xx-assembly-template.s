
; This is a simple assembly code template for programming
; the STM32F051C6 MCU :)

  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1
