#ifndef _LOGHAL_H
#define _LOGHAL_H

#include "stdint.h"
#include <stdarg.h>
#include "r_cg_macrodriver.h"

#define TBOX_PRINT(...)         LogHalPrint(__VA_ARGS__)
#if(1)
#define TBOX_PRINT_DEBUG(var)   LogHalPrint(var)
#else
#define TBOX_PRINT_DEBUG(var)
#endif
#define PRINT_MAX_LEN    200

void LogHalInit(uint8_t mode);
void LogHalPrint(const char *format, ...);
void LogHalSetMode(uint8_t mode);
void LogHalTestMain(uint16_t cycleTime);

#endif    //_LOGHAL_H
