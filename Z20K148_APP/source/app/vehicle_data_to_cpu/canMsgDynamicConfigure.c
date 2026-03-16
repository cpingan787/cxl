/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: canMsgDynamicConfigure.c
 Author: 
 Created Time: 
 Description: 
 Others: 
 *************************************************/
/****************************** include ***************************************/
#include "canMsgDynamicConfigure.h"
#include "canMsgToCpu.h"
#include "mpuHal.h"

/****************************** Macro Definitions ******************************/
#define CPU_RESPONSE_TIME_OUT_TIME              (2000U)

/****************************** Type Definitions ******************************/
typedef enum
{
  E_SYNC_STATE_INIT = 0,
  E_SYNC_STATE_GET_CPU_REQUEST,
  E_SYNC_STATE_GET_CPU_WAIT_RESPONSE,
  E_SYNC_STATE_WAIT_CPU_UPDATE,
}CanMsgConfigureSyncState_e;

typedef enum
{
  E_SYNC_STATE_EVENT_INIT = 0,
  E_SYNC_STATE_SET_CPU_EVENT_REUQEST,
  E_SYNC_STATE_SET_CPU_EVENT_WAIT_RESPONSE,
}CanEventSyncState_e;

/****************************** Global Variables ******************************/
static int16_t g_canMsgConfigureSyncMpuHandle = -1;
static CanMsgConfigureSyncState_e g_canConfigureSyncState = E_SYNC_STATE_INIT;
static uint16_t g_canMsgIndex = 0U;
static uint32_t g_timeOutCount = 0U;
static const uint16_t g_indexNumberMaxOneTime = 10U;

/****************************** Function Declarations *************************/
static int16_t PackGetCongureFromCpuRequest(uint16_t startIndex,uint16_t indexNum,uint8_t *pDataOut,uint16_t *pLengthOut);
static int16_t ParaseProtocalDataToCanConfigureBuffer(uint8_t *pProtocalData,uint16_t protocalLength);

/****************************** Private Function Implementations ***************/
/*=================================================
   Function:        PackGetCongureFromCpuRequest
   Description:     Pack parameters for getting configuration request from CPU
   Input:           startIndex - Starting index of the configuration
                    indexNum - Number of indices to retrieve
                    pDataOut - Pointer to output data buffer
                    pLengthOut - Pointer to store output data length
   Output:          None
   Return:          0 for success, error code otherwise
   Others:          Packs 4 bytes of data: 2 bytes for startIndex and 2 bytes for indexNum
 =================================================*/
static int16_t PackGetCongureFromCpuRequest(uint16_t startIndex,uint16_t indexNum,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    
    pDataOut[0] = (startIndex>>8)&0xFF;;//setting type
    pDataOut[1] = startIndex&0xFF;;//start id msg index
    pDataOut[2] = (indexNum>>8)&0xFF;
    pDataOut[3] = indexNum&0xFF;
    *pLengthOut  = 4;
  
    return 0;
}

/*******************************************************************************
* Function     : ParaseProtocalDataToCanConfigureBuffer
* Description  : Parse protocol data to CAN configuration buffer
* Input        : pProtocalData - Protocol data buffer pointer
*                protocalLength - Protocol data length
* Output       : None
* Return       : int16_t - Number of parsed CAN message configuration elements, -1 if failed
* Others       : Extract CAN message ID and repeat count from protocol data, add to configuration buffer
*******************************************************************************/
static int16_t ParaseProtocalDataToCanConfigureBuffer(uint8_t *pProtocalData,uint16_t protocalLength)
{
  int16_t rxElementNum = -1;
  CanMsgRxConfigure_t msgConfigureData;
  uint8_t canChannel;  
  int16_t i;
  
  //if(pProtocalData[2]==0x00)//setting type 
  {
    rxElementNum = pProtocalData[2]<<8;
    rxElementNum += pProtocalData[3];
    for(i = 0;i < rxElementNum;i++)
    {
        canChannel = 0;
        msgConfigureData.canId = (pProtocalData[5 + i * 5]<<24)+(pProtocalData[6 + i * 5]<<16)+(pProtocalData[7 + i * 5]<<8)+(pProtocalData[8 + i * 5]<<0);
        msgConfigureData.msgRepeatNumber = pProtocalData[4 + i * 5];      
        CanMsgConfigureBufferAdd(canChannel,&msgConfigureData);          
    }
  }  
  
  return rxElementNum;
}


/*******************************************************************************
* Function     : ConfigureFromCpuSyncCycleProcess
* Description  : Process synchronization cycle for CAN configuration from CPU
* Input        : pRxPack - MPU HAL data pack pointer containing received data
*                cycleTime_ms - Cycle time in milliseconds
* Output       : None
* Return       : None
* Others       : Implements state machine for CAN configuration synchronization,
*                handling initialization, requesting CPU configuration,
*                waiting for response and timeout handling
*******************************************************************************/
static void ConfigureFromCpuSyncCycleProcess(MpuHalDataPack_t *pRxPack,uint32_t cycleTime_ms)
{
  uint8_t txData[64];
  uint16_t txLength = 0U;
  uint8_t subCommand = 0U;
  MpuHalDataPack_t txPack;
  
  if(E_SYNC_STATE_INIT == g_canConfigureSyncState)
  {
    g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_REQUEST;
  }
  else if(E_SYNC_STATE_GET_CPU_REQUEST == g_canConfigureSyncState)
  {
      PackGetCongureFromCpuRequest(g_canMsgIndex,g_indexNumberMaxOneTime,txData,&txLength);    
      txPack.aid = 0x02;
      txPack.mid = 0x01;
      txPack.subcommand = 0x01;
      txPack.dataBufferSize = sizeof(txData);
      txPack.dataLength = txLength;
      txPack.pDataBuffer = txData;
      MpuHalTransmit(g_canMsgConfigureSyncMpuHandle,&txPack, MPU_HAL_UART_MODE);
      g_timeOutCount = 0;
      g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_WAIT_RESPONSE;
  }
  else if(E_SYNC_STATE_GET_CPU_WAIT_RESPONSE == g_canConfigureSyncState)
  {
      if(pRxPack != NULL)
      {
          subCommand = pRxPack->subcommand&0x7F;
          if(subCommand == 0x02)
          {
              int16_t rxElementNum;
              rxElementNum = ParaseProtocalDataToCanConfigureBuffer(pRxPack->pDataBuffer,pRxPack->dataLength);
              if(rxElementNum >= 0)
              {
                if(rxElementNum < g_indexNumberMaxOneTime)
                {
                    g_canMsgIndex = 0x00;
                    SetCanMsgConfigureBufferValidData();
                    g_canConfigureSyncState = E_SYNC_STATE_WAIT_CPU_UPDATE;
                }
                else
                {
                    g_canMsgIndex += g_indexNumberMaxOneTime;
                    g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_REQUEST;
                }             
              }
          }
          else
          {
              g_timeOutCount += cycleTime_ms;
          }
      }
      else
      {
          g_timeOutCount += cycleTime_ms;
          if(g_timeOutCount >= CPU_RESPONSE_TIME_OUT_TIME)
          {
              g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_REQUEST;
          }
      }
  }
  /*else if(E_SYNC_STATE_WAIT_CPU_UPDATE==g_canConfigureSyncState)
  {
    if(rxLength>=8)
    {
      subCommand = pRxData[6]&0x7F;
      if(subCommand==0x01)
      {
        g_canMsgIndex = 0;
        SetCanMsgConfigureBufferInvalidData();
        g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_REQUEST;
        PackUpdateCongureFromCpuResponse(pRxData[7],txData,&txLength);
        MpuHalTransmit(g_canMsgConfigureSyncMpuHandle,&txPack, MPU_HAL_UART_MODE);
      }
    }
  }*/
}

/*******************************************************************************
* Function     : CanMsgToCpuConfigureSyncCycleProcess
* Description  : Wrapper function for CAN message configuration synchronization process
* Input        : pRxPack - MPU HAL data pack pointer containing received data
*                cycleTime_ms - Cycle time in milliseconds
* Output       : None
* Return       : None
* Others       : Calls the internal ConfigureFromCpuSyncCycleProcess function to handle
*                the actual synchronization logic
*******************************************************************************/
void CanMsgToCpuConfigureSyncCycleProcess(MpuHalDataPack_t *pRxPack,uint32_t cycleTime_ms)
{
    ConfigureFromCpuSyncCycleProcess(pRxPack,cycleTime_ms);
}

/*******************************************************************************
* Function     : CanMsgDynamicConfigureInitialize
* Description  : Initialize CAN message dynamic configuration module
* Input        : mpuHandle - MPU handle for communication
* Output       : None
* Return       : int16_t - 0 for success
* Others       : Stores the MPU handle for later use in configuration synchronization
*******************************************************************************/
int16_t CanMsgDynamicConfigureInitialize(int16_t mpuHandle)
{
    g_canMsgConfigureSyncMpuHandle = mpuHandle;
    return 0;
}




