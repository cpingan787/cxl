/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: mpuHal.h
 Author: 
 Created Time: 
 Description:
 Others:
*************************************************/
#ifndef _MPU_HAL_IF_H
#define _MPU_HAL_IF_H

/****************************** include ***************************************/
#include <stdint.h>
#include "r_cg_macrodriver.h"

/****************************** Macro Definitions ******************************/
#define MPU_HAL_STATUS_OK         0
#define MPU_HAL_STATUS_ERR       -1
#define MPU_PROTOCAL_HEADER_LEN           (8U)
#define PROTOCOL_AID_FWUPD                (0x03U)
/****************************** Type Definitions ******************************/
typedef struct
{
  uint8_t aid;
  uint8_t mid;
  uint8_t subcommand;
  uint16_t dataBufferSize;
  uint16_t dataLength;
  uint8_t* pDataBuffer;
}MpuHalDataPack_t;

typedef struct
{
  uint8_t aid;
  uint8_t midMin;
  uint8_t midMax;
}MpuHalFilter_t;






/****************************** Function Declarations *************************/

void MpuHalInit(void);
void MpuHalCycleProcess(uint32_t cycleTime);
int16_t MpuHalOpen(void);
int16_t MpuHalSetRxFilter(int16_t handle,const MpuHalFilter_t* pFilter);
int16_t MpuHalSetRxBuffer(int16_t handle,uint8_t* pBuffer,uint32_t bufferSize);
int16_t MpuHalTransmit(int16_t handle,const MpuHalDataPack_t* pTxMsg);
int16_t MpuHalReceive(int16_t handle,MpuHalDataPack_t* pRxMsg,uint32_t waitTime );
void MpuHalStart(void);
int16_t MpuHalStartIsFinished(void);
void MpuHalReset(void);
int16_t MpuHalResetIsFinished(void);
void MpuHalPowerOff(void);
void MpuHalSetMode(uint8_t wakeMode);
int16_t MpuHalGetWakeMode(void);

void MpuHalRequestIrqFun(void);

void MpuHalTxTaskInit(void);
void MpuHalTxTask(void);
void UartProtocalProcess(uint8_t *pData,uint16_t dataLength,uint8_t IsrFlag);
void MpuHalUartPrintErrState(uint16_t cycleTime);
void MpuHalUartInterruptCallback(uint8_t data);
void MpuHalUartTimerCallback(void);

/*************************************************
  Function:       MpuHal_SpiDmaTxCallback
  Description:    SPI DMA transmit callback function
  Input:          None
  Output:         None
  Return:         None
  Others:         Called when SPI DMA transmit operation is complete
*************************************************/
void MpuHal_SpiTxCallback(void);

void MpuHal_SpiRevice(uint16_t data);

int16_t Mpuspi_Transmit(const uint8_t *pTxData, uint16_t txLength);


void MpuUartInitTest(void);
void MpuUartReceiveTest(void);
void MpuUartSendTest(void);


#endif