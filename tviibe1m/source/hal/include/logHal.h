#ifndef _LOGHAL_H
#define _LOGHAL_H

#include "stdint.h"

#define TBOX_PRINT(var...)	    LogHalPrint(var)
#define DEBUG_PRINT(var...)	    LogHalDebugPrint(var)
#define PRINT_MAX_LEN    200

void LogHalInit(uint8_t mode);
void LogHalPrint(const char *format, ...);
void LogHalDebugPrint(const char *format, ...);
int16_t LogHalSetSleep(uint8_t mode);

#endif    //_PERIPHERALHAL_H