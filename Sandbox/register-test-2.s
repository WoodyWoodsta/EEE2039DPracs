    .syntax unified
    .cpu cortex-m0
    .thumb
    .global _start

    .word 0x20001FFF
    .word _start + 1

_start: MOVS R0, #0x42
    LDR R1, RAM_START
    STR R0, [R1, #0]

@loop: ADDS R0, #1
@    STR R0, [R1]
@    B loop

    .align
RAM_START: .word 0x20000000
