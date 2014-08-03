  .syntax unified
  .cpu cortex-m0
  .thumb
  .global _start

  .word 0x20001FFF
  .word _start + 1

_start: MOVS R0, #0x42
    MOVS R1, #0x69
	ADDS R3, R1, R0

