#include <string.h>
#include "logHal.h"
#include "mpuHal.h"
#include "canMsgToCpu.h"

//#define TX_BUFFER_CAN_MSG_NUM_MAX               30
#define TX_BUFFER_CAN_MSG_NUM_MAX               300


typedef struct
{
  uint32_t size;
  uint32_t elementCount;
}CanIdConfigure_t;

typedef struct
{
  uint32_t canId;
  uint8_t canData[8];
  uint8_t msgRepeatNumber;
  uint8_t msgRepeatCount;
}CanMsgRxConfigureBuffer_t;

typedef struct
{
  int16_t buffer[RX_CAN_CONFIGURE_BUFFER_SIZE];
  int16_t index;
}StackBuffer_t;


CanMsgRxConfigureBuffer_t g_canRxToCpuConfigureBuffer[RX_CAN_CONFIGURE_CHANNEL_NUMBER][RX_CAN_CONFIGURE_BUFFER_SIZE];
static CanIdConfigure_t g_canRxToCpuConfigure[RX_CAN_CONFIGURE_CHANNEL_NUMBER];

static StackBuffer_t g_stack;

uint8_t g_txBuffer[TX_BUFFER_CAN_MSG_NUM_MAX*14+3+8];


uint16_t g_txBufferCount = 0;
uint16_t g_txByteOffset = 2;

/************* sort **********************************************************/
static void StackInit(StackBuffer_t *pStack)
{
  pStack->index = 0;
}

static void StackPush(StackBuffer_t *pStack,int16_t value)
{
  if(pStack->index>=(sizeof(pStack->buffer)/sizeof(pStack->buffer[0])))
  {
    return;
  }
  pStack->buffer[pStack->index]= value;
  pStack->index++;
}

static int16_t StackPop(StackBuffer_t *pStack)
{
  if(pStack->index <= 0)
  {
    return 0;
  }
  pStack->index--;
  return pStack->buffer[pStack->index];
}

static int16_t StackTop(StackBuffer_t *pStack)
{
  if(pStack->index==0)
  {
    return 0;
  }
  return pStack->buffer[(pStack->index-1)];
}

static int16_t  StackIsEmpty(StackBuffer_t *pStack)
{
  if(pStack->index<=0)
  {
    return 0;
  }
  return 1;
}

static int16_t Partition(CanMsgRxConfigureBuffer_t *pConfigureArray,int16_t left,int16_t right)
{
  CanMsgRxConfigureBuffer_t pivot;
  //uint32_t pivotCanId;
  //pivotCanId = pConfigureArray[left].canId;
  memcpy(&pivot,&pConfigureArray[left],sizeof(CanMsgRxConfigureBuffer_t));
  while(left<right)
  {
    while((left<right)&&(pConfigureArray[right].canId>=pivot.canId))
    {
      right--;
    }
    memcpy(&pConfigureArray[left],&pConfigureArray[right],sizeof(CanMsgRxConfigureBuffer_t));
    while((left<right)&&(pConfigureArray[left].canId<=pivot.canId))
    {
      left++;
    }
    memcpy(&pConfigureArray[right],&pConfigureArray[left],sizeof(CanMsgRxConfigureBuffer_t));
  }
  memcpy(&pConfigureArray[left],&pivot,sizeof(CanMsgRxConfigureBuffer_t));
  return left;
}

static void CanMsgConfigureSortLittleToBig(CanMsgRxConfigureBuffer_t *pConfigureArray,uint16_t arraySize)
{
  int16_t left = 0;
  int16_t right;
  int16_t index;
  if(arraySize==0)
  {
    return;
  }
  right = arraySize-1;
  StackInit(&g_stack);
  StackPush(&g_stack,left);
  StackPush(&g_stack,right);
  while(StackIsEmpty(&g_stack)!=0)
  {
    right = StackTop(&g_stack);
    StackPop(&g_stack);
    left = StackTop(&g_stack);
    StackPop(&g_stack);
    
    index = Partition(pConfigureArray,left,right);
    if((index-1)>left)
    {
      StackPush(&g_stack,left);
      StackPush(&g_stack,index-1);
    }
    if((index+1)<right)
    {
      StackPush(&g_stack,index+1);
      StackPush(&g_stack,right);
    }
  }
}


static int16_t GetIndexFromCanMsgConfigureBuffer(uint8_t canChannel,uint32_t canId)
{
  int16_t index;
  uint32_t size;
  uint32_t indexMin,indexMax,half,i;
  index = -1;
#if(0)
  if(canChannel>=RX_CAN_CONFIGURE_CHANNEL_NUMBER)
  {
      return -1;
  }
  size = g_canRxToCpuConfigure[canChannel].size;
#else
  size = g_canRxToCpuConfigure[0].size;
#endif
  if(size==0)
  {
    return index;
  }
  
  indexMin = 0;
  indexMax = size-1;
  for(i=0;i<50;i++)
  {
    if(indexMax-indexMin<2)
    {
      if(canId==g_canRxToCpuConfigureBuffer[canChannel][indexMin].canId)
      {
        index = indexMin;
      }
      else if(canId==g_canRxToCpuConfigureBuffer[canChannel][indexMax].canId)
      {
        index = indexMax;
      }
      break;
    }
    half = (indexMin+indexMax)/2;
    if(canId>g_canRxToCpuConfigureBuffer[canChannel][half].canId)
    {
      indexMin = half;
    }
    else
    {
      indexMax = half;
    }
  }
  return index;
}


//uint8_t m_debugData[10];


int16_t SaveCanMsgToBuffer(uint8_t canChannel,const CanHalMsg_t *pCanMsg)
{
    //uint16_t byteOffset;
    int32_t bufferIndex;
    uint16_t i;
    //uint64_t *pCom1;
    //uint64_t *pCom2;
#if(1)
    bufferIndex = GetIndexFromCanMsgConfigureBuffer(canChannel,pCanMsg->canId);
    if(bufferIndex < 0)
    {
      return 0;
    }
#endif
    /*pCom1 = (uint64_t*)pCanMsg->canData;
    pCom2 = (uint64_t*)m_canRxToCpuConfigureBuffer[canChannel][bufferIndex].canData;
    if((*pCom1)==(*pCom2))
    {
      m_canRxToCpuConfigureBuffer[canChannel][bufferIndex].msgRepeatCount++;
      if(m_canRxToCpuConfigureBuffer[canChannel][bufferIndex].msgRepeatCount<m_canRxToCpuConfigureBuffer[canChannel][bufferIndex].msgRepeatNumber)
      {
        return 0;
      }
      m_canRxToCpuConfigureBuffer[canChannel][bufferIndex].msgRepeatCount = 0x00;
    }
    *pCom2 = *pCom1;
    if(m_txBufferCount>=TX_BUFFER_CAN_MSG_NUM_MAX)
    {
      TBOX_PRINT("can msg buffer full\r\n");
      return -1;
    }*/
    //byteOffset = m_txBufferCount*12+11;
    if(bufferIndex >= TX_BUFFER_CAN_MSG_NUM_MAX)
    {
      return 0;
    }
    g_txBuffer[g_txByteOffset++] = canChannel;
    /*g_txByteOffset = bufferIndex*12+1;*/
    g_txBuffer[g_txByteOffset++] = (pCanMsg->canId>>24)&0xFF;
    g_txBuffer[g_txByteOffset++] = (pCanMsg->canId>>16)&0xFF;
    g_txBuffer[g_txByteOffset++] = (pCanMsg->canId>>8)&0xFF;
    g_txBuffer[g_txByteOffset++] = pCanMsg->canId&0xFF;
    //dlc
    g_txBuffer[g_txByteOffset++] = pCanMsg->dlc;
    //
    for(i=0;i<pCanMsg->dlc;i++)
    {
        g_txBuffer[g_txByteOffset++] = pCanMsg->canData[i];
    }
    /*g_txBuffer[g_txByteOffset++] = pCanMsg->canData[0];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[1];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[2];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[3];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[4];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[5];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[6];
    g_txBuffer[g_txByteOffset++] = pCanMsg->canData[7];*/
    g_txBufferCount++;
    //TBOX_PRINT("can msg %x received\r\n",pCanMsg->canId);
    return 0;
}

int16_t CanMsgTansmitToCpuInitialize(void)
{
  uint32_t i,j;
  for(i = 0;i < RX_CAN_CONFIGURE_CHANNEL_NUMBER; i++)
  {
    for(j = 0;j < RX_CAN_CONFIGURE_BUFFER_SIZE; j++)
    {
      g_canRxToCpuConfigureBuffer[i][j].msgRepeatCount = 0x00;
    }
  }
  //debug data
  /*g_canRxToCpuConfigureBuffer[0][0].canId = 0x1005;
  g_canRxToCpuConfigureBuffer[0][0].msgRepeatNumber = 5;

  
  m_canRxToCpuConfigure[0].size = 0x01;
  CanMsgConfigureSortLittleToBig(m_canRxToCpuConfigureBuffer[0],m_canRxToCpuConfigure[0].size);*/
  return 0;
}

int16_t CanMsgTransmitToCpu(uint8_t canChannel,int16_t mpuHandle)
{
    MpuHalDataPack_t txData;

    if(g_txByteOffset <= 2)
    {
        return 0;
    }

    g_txBuffer[0] = (uint8_t)((g_txBufferCount >> 8) & 0xFF);  
    g_txBuffer[1] = (uint8_t)(g_txBufferCount & 0xFF);  

    txData.aid = 0x02;
    txData.mid = 0x02;
    txData.subcommand = 0x00;
    txData.dataBufferSize = g_txByteOffset;
    txData.dataLength = g_txByteOffset;
    txData.pDataBuffer = g_txBuffer;
    MpuHalTransmit(mpuHandle,&txData, MPU_HAL_UART_MODE);

    g_txByteOffset = 2;
    g_txBufferCount = 0;
    return 0;
}

int16_t GetCanMsgConfigureBufferSize(uint8_t canChannel)
{
  if(canChannel>=RX_CAN_CONFIGURE_CHANNEL_NUMBER)
  {
    return -1;
  }
  return RX_CAN_CONFIGURE_BUFFER_SIZE;
}

int16_t CanMsgConfigureBufferAdd(uint8_t canChannel,CanMsgRxConfigure_t *pElement)
{
  if(canChannel>=RX_CAN_CONFIGURE_CHANNEL_NUMBER)
  {
    return -1;
  }
  if(g_canRxToCpuConfigure[canChannel].elementCount>=RX_CAN_CONFIGURE_BUFFER_SIZE)
  {
    return -1;
  }
  g_canRxToCpuConfigureBuffer[canChannel][g_canRxToCpuConfigure[canChannel].elementCount].canId = pElement->canId;
  g_canRxToCpuConfigureBuffer[canChannel][g_canRxToCpuConfigure[canChannel].elementCount].msgRepeatNumber = pElement->msgRepeatNumber;
  g_canRxToCpuConfigure[canChannel].elementCount++;
  return 0;
}

void SetCanMsgConfigureBufferInvalidData(void)
{
  uint32_t i;
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    g_canRxToCpuConfigure[i].size = 0x00;
    g_canRxToCpuConfigure[i].elementCount = 0x00;
  }  
}

void SetCanMsgConfigureBufferValidData(void)
{
  uint32_t i;
  uint32_t byteOffset;
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    CanMsgConfigureSortLittleToBig(g_canRxToCpuConfigureBuffer[i],g_canRxToCpuConfigure[i].elementCount);
  } 
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    g_canRxToCpuConfigure[i].size = g_canRxToCpuConfigure[i].elementCount;
  }  
  g_txBufferCount = g_canRxToCpuConfigure[0].elementCount;
  for(i=0;i<g_txBufferCount;i++)
  {
    byteOffset = i*12+11;
    g_txBuffer[byteOffset++] = (g_canRxToCpuConfigureBuffer[0][i].canId>>24)&0xFF;
    g_txBuffer[byteOffset++] = (g_canRxToCpuConfigureBuffer[0][i].canId>>16)&0xFF;
    g_txBuffer[byteOffset++] = (g_canRxToCpuConfigureBuffer[0][i].canId>>8)&0xFF;
    g_txBuffer[byteOffset++] = g_canRxToCpuConfigureBuffer[0][i].canId&0xFF;     
  }
}

uint8_t CanMsgConfigureBufferDataIsValid(void)
{
  if(g_canRxToCpuConfigure[0].size)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

/*static void PrintDebugCanMSgValue(void)
{
   
    
}*/