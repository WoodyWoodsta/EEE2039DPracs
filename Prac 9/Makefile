# Need to rewrite this file!

main.elf: main.o stm32f051_startup.o eeprom_lib.o woodboxstm32f051C6.o
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m0 -nostartfiles -T stm32f051_linker_script.ld -o main.elf main.o stm32f051_startup.o eeprom_lib.o woodboxstm32f051C6.o

main.o: main.s
	arm-none-eabi-as -mthumb -mcpu=cortex-m0 -g -o main.o main.s

main.s: main.c
	arm-none-eabi-gcc -I ./Libraries/ -Wall -mthumb -mcpu=cortex-m0 -g -S -o main.s main.c

eeprom_lib.s: eeprom_lib.c
	arm-none-eabi-gcc -I ./Libraries/ -Wall -mthumb -mcpu=cortex-m0 -g -S -o eeprom_lib.s eeprom_lib.c

woodboxstm32f051C6.s: woodboxstm32f051C6.c
	arm-none-eabi-gcc -I ./Libraries/ -Wall -mthumb -mcpu=cortex-m0 -g -S -o woodboxstm32f051C6.s woodboxstm32f051C6.c

stm32f051_startup.o: stm32f051_startup.s
	arm-none-eabi-as -mthumb -mcpu=cortex-m0 -g -o stm32f051_startup.o stm32f051_startup.s

eeprom_lib.o: eeprom_lib.s
	arm-none-eabi-as -mthumb -mcpu=cortex-m0 -g -o eeprom_lib.o eeprom_lib.s

woodboxstm32f051C6.o: woodboxstm32f051C6.s
	arm-none-eabi-as -mthumb -mcpu=cortex-m0 -g -o woodboxstm32f051C6.o woodboxstm32f051C6.s
