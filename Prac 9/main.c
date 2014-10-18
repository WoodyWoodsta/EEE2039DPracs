//WDXSEA003 CHTREE002

#include "woodboxstm32f051C6.h"

#define EVER ;;

void variable_delay(void);

int main(void) {

  initLEDs();
  initPB();
  initADCPot(POT1);
  eeprom_init_spi();

  GPIOB -> ODR = eeprom_read_from_address(0x0);

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

    delaypointms(varDelay - 560);
}

