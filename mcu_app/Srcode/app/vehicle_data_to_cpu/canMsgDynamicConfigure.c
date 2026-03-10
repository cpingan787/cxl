#include "canMsgDynamicConfigure.h"
#include "canMsgToCpu.h"
#include "mpuHal.h"

#define CPU_RESPONSE_TIME_OUT_TIME              2000


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

static int16_t g_canMsgConfigureSyncMpuHandle = -1;
// configure sync variable
static CanMsgConfigureSyncState_e g_canConfigureSyncState = E_SYNC_STATE_INIT;
static uint16_t g_canMsgIndex = 0;
static uint32_t g_timeOutCount = 0;
static const uint16_t g_indexNumberMaxOneTime = 10;

//event sycn variable
/*static CanEventSyncState_e g_canEventSyncState = E_SYNC_STATE_EVENT_INIT;
static uint32_t g_eventTimeOutCount = 0;
static uint32_t g_eventRepeatCount = 0x00;
static uint16_t g_eventType = 0x00;
static uint8_t g_eventValue = 0x00;*/


static int16_t PackGetCongureFromCpuRequest(uint16_t startIndex,uint16_t indexNum,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    
    pDataOut[0] = (startIndex>>8)&0xFF;;//setting type
    pDataOut[1] = startIndex&0xFF;;//start id msg index
    pDataOut[2] = (indexNum>>8)&0xFF;
    pDataOut[3] = indexNum&0xFF;
    *pLengthOut  = 4;
  
  return 0;
}


/*static int16_t PackUpdateCongureFromCpuResponse(uint16_t configureVersion,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  uint16_t serviceDataLength;
  
  serviceDataLength = 2;
  
  pDataOut[0] = 0x55;
  pDataOut[1] = 0xAA;
  pDataOut[2] = 0x01;
  pDataOut[3] = 0x04;//mid  
  pDataOut[4] = (serviceDataLength>>8)&0xFF;//lengthH
  pDataOut[5] = serviceDataLength&0xFF;//lengthL
  pDataOut[6] = 0x01;//sub command
  pDataOut[7] = 0x00;//checksum   
  pDataOut[8] = 0x01;//protocal version
  pDataOut[9] = configureVersion;//configure version
 
   *pLengthOut  = serviceDataLength+8;
  
  return 0;
}*/

/*static int16_t PackSetEventToCpuRequest(uint16_t eventType,uint8_t eventValue,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  uint16_t serviceDataLength;
  
  serviceDataLength = 4;
  
  pDataOut[0] = 0x55;
  pDataOut[1] = 0xAA;
  pDataOut[2] = 0x01;
  pDataOut[3] = 0x04;//mid  
  pDataOut[4] = (serviceDataLength>>8)&0xFF;//lengthH
  pDataOut[5] = serviceDataLength&0xFF;//lengthL
  pDataOut[6] = 0x03;//sub command
  pDataOut[7] = 0x00;//checksum   
  pDataOut[8] = (eventType>>8)&0xFF;//event type H
  pDataOut[9] = eventType&0xFF;//event type L
  pDataOut[10] = eventValue;//event value
  pDataOut[11] = 0x00;//reserved


   UartDriverHalAddCheckSum(pDataOut,serviceDataLength+8);
   *pLengthOut  = serviceDataLength+8;
  
  return 0;
}*/





int16_t CanMsgDynamicConfigureInitialize(int16_t mpuHandle)
{
  g_canMsgConfigureSyncMpuHandle = mpuHandle;
  return 0;
}

/**********************************************
parameter:
  pProtocalData:
    the pointer of the data buffer except frame header
  protocalLength:
    the length of the data buffer except frame header
return:
  <0:error
  >=0:the number of the configure in the protocal data
**********************************************/
#if(0)
static int16_t ParaseProtocalDataToCanConfigureBuffer(uint8_t *pProtocalData,uint16_t protocalLength)
{
  int16_t rxElementNum = -1;
  can_msg_rx_configure_t msgConfigureData;
  uint8_t canChannel;  
  int16_t i;
  
  //if(pProtocalData[2]==0x00)//setting type 
  {
    rxElementNum = pProtocalData[2]<<8;
    rxElementNum += pProtocalData[3];
    for(i=0;i<rxElementNum;i++)
    {
      canChannel = pProtocalData[5+i*9];
      if(canChannel>0)//canChannel Start from 1,0 is reserved
      {
        canChannel -= 1;
        msgConfigureData.canId = (pProtocalData[6+i*9]<<24)+(pProtocalData[7+i*9]<<16)+(pProtocalData[8+i*9]<<8)+(pProtocalData[9+i*9]<<0);
        msgConfigureData.msgRepeatNumber = pProtocalData[10+i*9];      
        CanMsgConfigureBufferAdd(canChannel,&msgConfigureData);        
      }

    }
  }  
  
  return rxElementNum;
}
#else
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
    for(i=0;i<rxElementNum;i++)
    {
        canChannel = 0;
        msgConfigureData.canId = (pProtocalData[5+i*5]<<24)+(pProtocalData[6+i*5]<<16)+(pProtocalData[7+i*5]<<8)+(pProtocalData[8+i*5]<<0);
        msgConfigureData.msgRepeatNumber = pProtocalData[4+i*5];      
        CanMsgConfigureBufferAdd(canChannel,&msgConfigureData);          
    }
  }  
  
  return rxElementNum;
}


#endif

/*static void EventToCpuSyncProcess(uint8_t *pRxData,uint16_t rxLength,uint32_t cycleTime_ms)
{
uint8_t txData[64];
  uint16_t txLength;
  uint8_t subCommand;
  
  if(E_SYNC_STATE_EVENT_INIT==g_canEventSyncState)
  {
    //g_canEventSyncState = E_SYNC_STATE_SET_CPU_EVENT_REUQEST;
  }
  else if(E_SYNC_STATE_SET_CPU_EVENT_REUQEST==g_canEventSyncState)
  {
    PackSetEventToCpuRequest(g_eventType,g_eventValue,txData,&txLength);
    MpuHalTransmit(g_canMsgConfigureSyncMpuHandle,txData,txLength);
    g_canEventSyncState = E_SYNC_STATE_SET_CPU_EVENT_WAIT_RESPONSE;
    g_eventTimeOutCount = 0x00;
  }
  else if(E_SYNC_STATE_SET_CPU_EVENT_WAIT_RESPONSE==g_canEventSyncState)
  {
    uint16_t eventType;
    uint8_t eventValue;
    if(rxLength>=8)
    {
      subCommand = pRxData[6]&0x7F;
      if(subCommand==0x03)
      {
        eventType = (pRxData[8]<<8)+pRxData[9];
        eventValue = pRxData[10];
        if(eventType==g_eventType)
        {
          if(eventValue==g_eventValue)
          {
            g_canEventSyncState = E_SYNC_STATE_EVENT_INIT;
          }
          else
          {
             g_eventTimeOutCount += cycleTime_ms;
          }
        }
        else
        {
           g_eventTimeOutCount += cycleTime_ms;
        }
      }
      else
      {
        g_eventTimeOutCount += cycleTime_ms;
      }
    }
    else
    {
      g_eventTimeOutCount += cycleTime_ms;
      if(g_eventTimeOutCount>=CPU_RESPONSE_TIME_OUT_TIME)
      {
        g_eventRepeatCount++;
        if(g_eventRepeatCount<5)
        {
          g_canEventSyncState = E_SYNC_STATE_SET_CPU_EVENT_REUQEST;
        }
        else
        {
          g_canEventSyncState = E_SYNC_STATE_EVENT_INIT;
        }        
      }
    }
  }
 
}*/

static void ConfigureFromCpuSyncCycleProcess(MpuHalDataPack_t *pRxPack,uint32_t cycleTime_ms)
{
  uint8_t txData[64];
  uint16_t txLength;
  uint8_t subCommand;
  MpuHalDataPack_t txPack;
  
  if(E_SYNC_STATE_INIT==g_canConfigureSyncState)
  {
    g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_REQUEST;
  }
  else if(E_SYNC_STATE_GET_CPU_REQUEST==g_canConfigureSyncState)
  {
    PackGetCongureFromCpuRequest(g_canMsgIndex,g_indexNumberMaxOneTime,txData,&txLength);    
    txPack.aid = 0x02;
    txPack.mid = 0x01;
    txPack.subcommand = 0x01;
    txPack.dataBufferSize = sizeof(txData);
    txPack.dataLength = txLength;
    txPack.pDataBuffer = txData;
    MpuHalTransmit(g_canMsgConfigureSyncMpuHandle,&txPack);
    g_timeOutCount = 0;
    g_canConfigureSyncState = E_SYNC_STATE_GET_CPU_WAIT_RESPONSE;
  }
  else if(E_SYNC_STATE_GET_CPU_WAIT_RESPONSE==g_canConfigureSyncState)
  {
    if(pRxPack!=NULL)
    {
      subCommand = pRxPack->subcommand&0x7F;
      if(subCommand==0x02)
      {
          int16_t rxElementNum;
          rxElementNum = ParaseProtocalDataToCanConfigureBuffer(pRxPack->pDataBuffer,pRxPack->dataLength);
          if(rxElementNum>=0)
          {
            if(rxElementNum<g_indexNumberMaxOneTime)
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
      if(g_timeOutCount>=CPU_RESPONSE_TIME_OUT_TIME)
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
        MpuHalTransmit(g_canMsgConfigureSyncMpuHandle,&txPack);
      }
    }
  }*/
  
}

void CanMsgToCpuConfigureSyncCycleProcess(MpuHalDataPack_t *pRxPack,uint32_t cycleTime_ms)
{
  ConfigureFromCpuSyncCycleProcess(pRxPack,cycleTime_ms);
  /*EventToCpuSyncProcess(pRxData,rxLength,cycleTime_ms);*/
}

/*int16_t SetCanEventToCpu(uint16_t eventType,uint8_t eventValue)
{
    MpuHalDataPack_t txPack;
    uint8_t txData[20];
    uint16_t txLength;
    if(E_SYNC_STATE_EVENT_INIT!=g_canEventSyncState)
    {
    return -1;
    }
    g_eventTimeOutCount = 0;
    g_eventRepeatCount = 0;
    g_eventType = eventType;
    g_eventValue = eventValue;

    txLength = 0x00;
    PackSetEventToCpuRequest(g_eventType,g_eventValue,txData,&txLength);
    txPack.aid = 0x02;
    txPack.mid = 0x02;
    txPack.subcommand = 0x00;
    txPack.dataBufferSize = sizeof(txData);
    txPack.dataLength = txLength;
    txPack.pDataBuffer = txData;
    MpuHalTransmit(g_canMsgConfigureSyncMpuHandle,&txPack);
    g_canEventSyncState = E_SYNC_STATE_SET_CPU_EVENT_WAIT_RESPONSE;
    return 0;
}*/




