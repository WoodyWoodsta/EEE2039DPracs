# Makefile for STM32F051C6 C files named main.c

main.elf: main.o
	arm-none-eabi-ld -Ttext=0x08000000 -o main.elf main.o
main.o: main.s
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -g -a=main.lst -o main.o main.s
main.s: main.c
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m0 -g -S -o main.s main.c