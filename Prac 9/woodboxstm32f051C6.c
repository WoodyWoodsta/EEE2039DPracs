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

void delay(uint32_t length) {
  uint32_t i;
  length = length * 615; // Scaling to get 1 ms input parameter (length)
  for (i = 0; i <= length;) { // Do nothing really
	i++;
  }
}

