ASSEMBLER = arm-none-eabi-as
ASSEMBLER_FLAGS = -g -mthumb -mcpu=cortex-m0

LINKER = arm-none-eabi-ld
LINKER_FLAGS = -Ttext=0x08000000

prac-3.elf: prac-3.o
	$(LINKER) $(LINKER_FLAGS) -o prac-3.elf prac-3.o

prac-3.o: prac-3.s
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) -o prac-3.o prac-3.s
