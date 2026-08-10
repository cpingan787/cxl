#ifndef _TASK_DIAGNOSTIC_H
#define _TASK_DIAGNOSTIC_H

#include <stdint.h>

typedef enum 
{
	E_NO_SESSION = 0,
	E_DEFAULT_SESSION, 
	E_PROGROM_SESSION,
	E_EXTEND_SESSION,
	E_NON_DIAGNOSTIC,
}SessionState_e;

typedef enum 
{
	E_UDS_NONE_SECURITY_LEVEL = 0,
	E_UDS_SECURITY_LEVEL1,
    E_UDS_SECURITY_LEVEL2,
	E_UDS_SECURITY_LEVEL3,
	E_UDS_SECURITY_LEVEL5,
	E_UDS_SECURITY_LEVEL9,
}UdsSecurityLevel_e;
/*
typedef union
{
	uint32_t u32Bit;
	uint16_t u16Bit[2];
	uint8_t  u8Bit[4];
} Unn1Word4Byte_t;
*/

int16_t TaskEcuDiagnosticInit(void);
void TaskEcuDiagnostic(void *pvParameters);



#endif    //_DIAGNOSTIC_H
