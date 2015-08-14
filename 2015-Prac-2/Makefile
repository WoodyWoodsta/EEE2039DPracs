ASSEMBLER = arm-none-eabi-as
ASSEMBLER_FLAGS = -g -mthumb -mcpu=cortex-m0

LINKER = arm-none-eabi-ld
LINKER_FLAGS = -Ttext=0x08000000

prac-2.elf: prac-2.o
	$(LINKER) $(LINKER_FLAGS) -o prac-2.elf prac-2.o

prac-2.o: prac-2.s
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) -o prac-2.o prac-2.s
