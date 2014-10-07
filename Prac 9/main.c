//WDXSEA003 CHTREE002

#include <stdint.h>
#include "stm32f0xx.h"

#define EVER ;;

enum POTSEL {POT0, POT1};

void initLEDs();
void initPB(void);
void initADCPot(int POT);

void variable_delay(void);
void delay(uint32_t length); // Declaration of the delay function
void incrementLEDs(int8_t amount);

int16_t getPot(void);
int8_t getPB(int button);

int main(void) {

  initLEDs();
  initPB();
  initADCPot(POT1);


  for(EVER) {
    if (getPB(3)) {
      incrementLEDs(-1);
    }
    else {
      incrementLEDs(1);
    }

    variable_delay();
  }
  
  return 0;
}

void variable_delay(void) {
    int varDelay = 5000;
    if (getPB(2)) {
      varDelay = (4*getPot()) + 1000;
    }

    delay(varDelay);
}

/* WOODBOX FUNCTIONS ------------------------------------------------------------------------------ */

void delay(uint32_t length) {
  uint32_t i;
  length = length * 62; // Scaling to get 0.1 ms input parameter (length)
  for (i = 0; i <= length;) { // Do nothing really
    i++;
  }
}

void initLEDs() {
  RCC -> AHBENR |= RCC_AHBENR_GPIOBEN;  // Enable clock for GPIOB
  GPIOB -> MODER |= GPIO_MODER_MODER0_0;  // Set OUTPUT mode for pins 0-7 (LEDS)
  GPIOB -> MODER |= GPIO_MODER_MODER1_0;
  GPIOB -> MODER |= GPIO_MODER_MODER2_0;
  GPIOB -> MODER |= GPIO_MODER_MODER3_0;
  GPIOB -> MODER |= GPIO_MODER_MODER4_0;
  GPIOB -> MODER |= GPIO_MODER_MODER5_0;
  GPIOB -> MODER |= GPIO_MODER_MODER6_0;
  GPIOB -> MODER |= GPIO_MODER_MODER7_0;

}

void initPB(void) {
  RCC -> AHBENR |= RCC_AHBENR_GPIOAEN;  // Enable clock for GPIOA
  GPIOA -> PUPDR |= GPIO_PUPDR_PUPDR0_0; // Set PULLUP for pins 0-3
  GPIOA -> PUPDR |= GPIO_PUPDR_PUPDR1_0;
  GPIOA -> PUPDR |= GPIO_PUPDR_PUPDR2_0;
  GPIOA -> PUPDR |= GPIO_PUPDR_PUPDR3_0;
}

void initADCPot(int POT) {
  RCC -> AHBENR |= RCC_AHBENR_GPIOAEN;  // Enable clock for GPIOA
  RCC -> APB2ENR |= RCC_APB2ENR_ADCEN;  // Enable the clock for ADC1
  ADC1 -> CR |= ADC_CR_ADEN;  // Enable the ADC1
  while (!(ADC1 -> ISR && ADC_ISR_ADRDY));  // Wait for ADC to become ready

  if (POT == POT0) {  // Setup for POT0 (PA5)
    GPIOA -> MODER |= GPIO_MODER_MODER5;  // Set PA5 to ANALOG MODE
    ADC1 -> CHSELR |= ADC_CHSELR_CHSEL5;  // Select ADC channel as CHANNEL 5
  }

  else if (POT == POT1) { // Setup for POT1 (PA6)
    GPIOA -> MODER |= GPIO_MODER_MODER6;  // Set PA6 to ANALOG MODE
    ADC1 -> CHSELR |= ADC_CHSELR_CHSEL6;  // Select ADC channel as CHANNEL 6
  }

  ADC1 -> CFGR1 |= (ADC_CFGR1_RES_0); // Set resolution to 10-bits
}

void incrementLEDs(int8_t amount) { // Increment the LEDs by the specified value
  int8_t present = GPIOB -> ODR;
  GPIOB -> ODR = amount + present;
}

int16_t getPot(void) {
  int16_t result = 0;
  ADC1 -> CR |= ADC_CR_ADSTART; // Start a conversion
  while (ADC1 -> IER && ADC_IER_EOCIE); // Wait for end of conversion
  result = ADC1 -> DR;  // Collect the input!

  return result;
}

int8_t getPB(int button) {  // Check for pressing of a specific button
  int8_t result = 0;
  if (button == 0) {
    result = ~(GPIOA -> IDR) & 0x1;  // SW0
  }
  else if (button == 1) {
    result = ~(GPIOA -> IDR) & 0x2;  // SW1
  }
  else if (button == 2) {
    result = ~(GPIOA -> IDR) & 0x4;  // SW2
  }
  else if (button == 3) {
    result = ~(GPIOA -> IDR) & 0x8;  // SW3
  }

  return result;
}