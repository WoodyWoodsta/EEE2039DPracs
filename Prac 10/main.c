//WDXSEA003 CHTREE002

// Prac 10

#include "woodboxstm32f051C6.h"

// Declarations
void cycleLEDs(void);
uint16_t calcPOT(void);

volatile int8_t cycleState; // Used to check which LED pattern is next

int main(void) {
  initLEDs();
  initPB();
  initADCPot(BOTH, 8);
  // while (1) {
  //   GPIOB -> ODR = 1990 - (148*hPot)
  // }

  enableInterruptPB(0, FALL);
  initTIM6(3980, 200, YES, NO);

  while(1);
  return 0;
}

void cycleLEDs(void) {
  static uint8_t patterns[8] = {0x01, 0x02, 0x04, 0x08, 0x88, 0x48, 0x28, 0x18}; // Array of patterns to be cycled through

  if (getPB(1)) { // Check for change of frequency for SW1
    TIM6 -> ARR = 19900;
  } else if (getPB(2)) { // Check for change of frequency for SW2
    TIM6 -> ARR = 7960;
  } else if (getPB(3)) {
    TIM6 -> ARR = calcPOT();
  } else {TIM6 -> ARR = 3980;}

  GPIOB -> ODR = patterns[cycleState];

  if (cycleState < 7) {
    cycleState += 1;
  } else {
    cycleState = 0;
  }
}

uint16_t calcPOT(void) { // Calculate the ARR for SW3
  uint16_t Pot0 = getPot(POT0);
  uint16_t Pot1 = getPot(POT1);
  uint16_t hPot = 0;
  uint16_t result = 0;

  if (Pot0 > Pot1) { // Check for the highest pot voltage
    hPot = Pot0;
  } else {
    hPot = Pot1;
  }

  result = 39801 - (148*hPot);
  return result;

}

void TIM6_DAC_IRQHandler() {
  cycleLEDs();
  clearInterruptTIM6();
}

void EXTI0_1_IRQHandler() {
  if (getPB(0)) {
    delayms(30); // Debounce delay
    if (getPB(0)) {
      cycleState = 0;
      TIM6 -> EGR |= (1 << 0); // Force TIM6 interrupt
    }
    EXTI->PR |= EXTI_PR_PR0;
  }
}

void HardFault_Handler() {
  GPIOB -> ODR = 0xA5;
}