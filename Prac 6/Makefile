# Makefile for STM32F051C6 assembly files named main.s

main.elf: main.o
	arm-none-eabi-ld -Ttext=0x08000000 -o main.elf main.o
main.o: main.s
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -g -a=main.lst -o main.o main.s
