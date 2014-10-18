/*
 * woodboxstm32f051C6.c
 *
 *  Created on: Oct 3, 2014
 *      Author: Sean Wood - WDXSEA003
 *      		University of Cape Town
 *
 *  This is the source file.
 *
 *  This WoodBox is a collection of commonly used and generally
 *  pesky things that one wants to do with the STM32F051C6, but
 *  don't want to have to place in one's source! Yay!
 */

#include "woodboxstm32f051C6.h"

void delayms(uint32_t length) {
  uint32_t i;
  length = length * 615; // Scaling to get 1 ms input parameter (length)
  for (i = 0; i <= length;) { // Do nothing really
	i++;
  }
}

void delaypointms(uint32_t length) {
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
  eeprom_write_to_address(0x0, amount + present);
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