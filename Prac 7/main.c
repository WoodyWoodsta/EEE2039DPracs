//WDXSEA003 CHTREE002

// Prac 7 C code :)

#include <stdint.h>                                                                           // Include the standard data types


uint32_t RCC_AHBENR_IOPBEN = 0x40000;
uint32_t GPIOB_MODER_OUTPUT = 0x5555;

void main(void) {
  *(uint32_t*)0x40021014 |= RCC_AHBENR_IOPBEN;
  *(uint32_t*)0x48000400 |= GPIOB_MODER_OUTPUT;
  *(uint32_t*)0x48000414 = 0xAA;

  while(1);                                                                                   // "Infinite loop" 
}