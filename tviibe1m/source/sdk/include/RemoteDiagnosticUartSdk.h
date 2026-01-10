#ifndef _REMOTE_DIAGNOSTIC_UART_SDK_H_
#define _REMOTE_DIAGNOSTIC_UART_SDK_H_

#include "canHal.h"
#include "udsTp.h"
#include "stdint.h"
#include "canTpSdk.h"
#include "mpuHal.h"


void RemoteUartDiagnosticInit(void);
void RemoteUartDiagnosticCycleProcess(int16_t uartHandle,uint8_t recv_flag,uint8_t counterIndex,uint8_t *pRxData,uint16_t rxLength,uint8_t functionAddressFlag);








#endif
