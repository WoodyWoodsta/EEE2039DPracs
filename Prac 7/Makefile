# Makefile for STM32F051C6 C files named main.c

COMPILER = arm-none-eabi-gcc
COMPILER_FLAGS = -mthumb -mcpu=cortex-m0 -g -S

ASSEMBLER = arm-none-eabi-as
ASSEMBLER_FLAGS = -g
MAIN_ASSEMBLER_FLAGS = ${ASSEMBLER_FLAGS} -a=main.lst
STARTUP_ASSEMBLER_FLAGS = ${ASSEMBLER_FLAGS} -a=stm32f051_startup.lst

LINKER = arm-none-eabi-ld
LINKER_FLAGS = -T stm32f051_linker_script.ld

main.elf: startup.o main.o
	$(LINKER) $(LINKER_FLAGS) -o main.elf startup.o main.o

main.o: main.s
	$(ASSEMBLER) $(MAIN_ASSEMBLER_FLAGS) -o main.o main.s

startup.o: stm32f051_startup.s
	$(ASSEMBLER) $(STARTUP_ASSEMBLER_FLAGS) -o startup.o stm32f051_startup.s

main.s: main.c
	$(COMPILER) $(COMPILER_FLAGS) -o main.s main.c
