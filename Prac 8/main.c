//WDXSEA003 CHTREE002

// Includes ----

#include <stdint.h>
// #include <stdlib.h>

// Definitions ----

#define EVER ;;

// Declarations ----

void find_min_max(int8_t *array, uint32_t length, int8_t *max_ptr, int8_t *min_ptr); // Declaration of the find_min_max function
void delay(uint32_t length); // Declaration of the delay function
void initLEDs();

// Global Variables ----

uint32_t RCC_AHBENR_IOPBEN = 0x40000;
uint32_t GPIOB_MODER_OUTPUT = 0x5555;


int main(void) {
  // Create arrays to be processed
  int8_t array[] = {-4, 31, -51, 62, -45, 58, -99, 105, -6, 60, 37, 106, -106, -96, 97, 50, -116, -38, 38, -52, -64, -68, 75, 117, 111, 100, 116, 11, 46, -64, -82, -74, -3, 0, 44, 64, -6, 1, -119, 123};
  int8_t min = array[0];
  int8_t max = array[0];
  
  // Run the find_min_ax function
  find_min_max(&array[0], sizeof(array), &max, &min);
  initLEDs();

  // Display results on the LEDs
  while(1) {
    *((uint32_t*)0x48000400 + 5) = min;
    delay(1000);
    *((uint32_t*)0x48000400 + 5) = max;
    delay(1000);
  }

  // Loop forever :)
  for(EVER);

  return 0;
}

void find_min_max(int8_t *array, uint32_t length, int8_t *max_ptr, int8_t *min_ptr) {
  uint16_t i;
  for (i = 0; i < length; i++) {
    if (*(array + i) > *max_ptr) { *max_ptr = *(array + i); }
    if (*(array + i) < *min_ptr) { *min_ptr = *(array + i); }
  }
}

void delay(uint32_t length) {
  uint32_t i;
  length = length * 615; // Scaling to get 1 ms input parameter (length)
  for (i = 0; i <= length;) { // Do nothing really
    i++;
  }
}

void initLEDs() {
  *(uint32_t*)0x40021014 |= RCC_AHBENR_IOPBEN;
  *(uint32_t*)0x48000400 |= GPIOB_MODER_OUTPUT;
}
