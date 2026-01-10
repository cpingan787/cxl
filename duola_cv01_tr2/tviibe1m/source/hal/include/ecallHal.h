#ifndef _ECALLHAL_H
#define _ECALLHAL_H

#include <stdint.h>
#include "mpuHal.h"

typedef enum
{
    E_ECALL_LED_MODE_KEEP_OFF = 0x00,
	E_ECALL_LED_MODE_KEEP_ON,
    E_ECALL_LED_MODE_FLASH,
}EcallLedMode_e;

void EcallHalSetSosLedState(uint8_t flag);
void EcallHalSetVehicleMute(uint8_t flag);

uint8_t EcallHalGetSosButtonStatus(void);
uint8_t EcallHalGetSosButtonConnectStatus(void);
void EcallHalGpioTest(uint8_t flag);
uint8_t EcallHalGetMicConnectStatus(void);

void EcallHalInit(void);

uint32_t osElapsedTimeGet( uint32_t new_time, uint32_t old_time );
void EcallHalSosLedTimerCallback( void );
void EcallHalSetSosLedMode(EcallLedMode_e mode , uint16_t onTime , uint16_t offTime );

#endif  // _ECALLHAL_H
