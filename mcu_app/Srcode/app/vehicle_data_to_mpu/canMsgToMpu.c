#include <string.h>
#include "logHal.h"
#include "mpuHal.h"
#include "canMsgToMpu.h"
#include "Os.h"

#define TX_BUFFER_CAN_MSG_NUM_MAX       100
#define CPU_CAN_RX_QUEUE_NUM            10
#define CPU_CAN_DATA_LENGTH_MAX         64
#define DV_TEST_ENABLE                  1

typedef struct
{
  uint32_t size;
  uint32_t elementCount;
}CanIdConfigure_t;
typedef struct
{
  uint32_t canId;
//   uint8_t canData[8];
//   uint8_t msgRepeatNumber;
//   uint8_t msgRepeatCount;
}CanMsgRxConfigureBuffer_t;

typedef struct
{
  int16_t buffer[RX_CAN_CONFIGURE_BUFFER_SIZE];
  int16_t index;
}StackBuffer_t;

typedef struct
{
  uint8_t canChannel;
  uint32_t canId;
  uint8_t dlc;
  uint8_t canData[CPU_CAN_DATA_LENGTH_MAX];
}CpuCanMsgBuffer_t;

CanMsgRxConfigureBuffer_t g_canRxToCpuConfigureBuffer[RX_CAN_CONFIGURE_CHANNEL_NUMBER][RX_CAN_CONFIGURE_BUFFER_SIZE];
static CanIdConfigure_t g_canRxToCpuConfigure[RX_CAN_CONFIGURE_CHANNEL_NUMBER];

static StackBuffer_t g_stack;
static CpuCanMsgBuffer_t g_cpuCanRxQueue[CPU_CAN_RX_QUEUE_NUM];
static volatile uint16_t g_cpuCanRxQueueWrite = 0;
static volatile uint16_t g_cpuCanRxQueueRead = 0;

uint8_t g_txBuffer[TX_BUFFER_CAN_MSG_NUM_MAX*14+3+8];


uint16_t g_txBufferCount = 0;
uint16_t g_txByteOffset = 2;

#define CAN_MSG_TO_CPU_ENTER_CRITICAL() SuspendAllInterrupts()
#define CAN_MSG_TO_CPU_EXIT_CRITICAL()  ResumeAllInterrupts()

static uint8_t CpuCanRxQueueIsEmpty(void)
{
  return (g_cpuCanRxQueueWrite == g_cpuCanRxQueueRead) ? 1u : 0u;
}

static uint8_t CpuCanRxQueueIsFull(uint16_t nextWrite)
{
  return (nextWrite == g_cpuCanRxQueueRead) ? 1u : 0u;
}

static uint16_t CpuCanRxQueueGetNextIndex(uint16_t index)
{
  index++;
  if(index >= CPU_CAN_RX_QUEUE_NUM)
  {
    index = 0;
  }
  return index;
}

static int16_t CpuCanRxQueuePush(uint8_t canChannel,uint32_t canId,uint8_t dlc,const uint8_t *pCanData)
{
  uint16_t writeIndex;
  uint16_t nextWrite;

  if((dlc > 0u) && (pCanData == NULL))
  {
    return -1;
  }

  CAN_MSG_TO_CPU_ENTER_CRITICAL();
  writeIndex = g_cpuCanRxQueueWrite;
  nextWrite = CpuCanRxQueueGetNextIndex(writeIndex);
  if(CpuCanRxQueueIsFull(nextWrite) != 0u)
  {
    CAN_MSG_TO_CPU_EXIT_CRITICAL();
    return -1;
  }

  g_cpuCanRxQueue[writeIndex].canChannel = canChannel;
  g_cpuCanRxQueue[writeIndex].canId = canId;
  g_cpuCanRxQueue[writeIndex].dlc = dlc;
  if(dlc > 0u)
  {
    (void)memcpy(g_cpuCanRxQueue[writeIndex].canData,pCanData,dlc);
  }
  g_cpuCanRxQueueWrite = nextWrite;
  CAN_MSG_TO_CPU_EXIT_CRITICAL();

  return 0;
}

static int16_t CpuCanRxQueuePeek(CpuCanMsgBuffer_t *pCanMsg)
{
  uint16_t readIndex;

  if(pCanMsg == NULL)
  {
    return -1;
  }

  CAN_MSG_TO_CPU_ENTER_CRITICAL();
  if(CpuCanRxQueueIsEmpty() != 0u)
  {
    CAN_MSG_TO_CPU_EXIT_CRITICAL();
    return -1;
  }

  readIndex = g_cpuCanRxQueueRead;
  (void)memcpy(pCanMsg,&g_cpuCanRxQueue[readIndex],sizeof(CpuCanMsgBuffer_t));
  CAN_MSG_TO_CPU_EXIT_CRITICAL();

  return 0;
}

static int16_t CpuCanRxQueueDrop(void)
{
  uint16_t readIndex;

  CAN_MSG_TO_CPU_ENTER_CRITICAL();
  if(CpuCanRxQueueIsEmpty() != 0u)
  {
    CAN_MSG_TO_CPU_EXIT_CRITICAL();
    return -1;
  }

  readIndex = g_cpuCanRxQueueRead;
  g_cpuCanRxQueueRead = CpuCanRxQueueGetNextIndex(readIndex);
  CAN_MSG_TO_CPU_EXIT_CRITICAL();

  return 0;
}

static void CanMsgCopyFromQueueNode(const CpuCanMsgBuffer_t *pQueueMsg,uint8_t *pCanChannel,CanHalMsg_t *pCanMsg)
{
  if((pQueueMsg == NULL) || (pCanMsg == NULL))
  {
    return;
  }

  if(pCanChannel != NULL)
  {
    *pCanChannel = pQueueMsg->canChannel;
  }
  pCanMsg->canId = pQueueMsg->canId;
  pCanMsg->dlc = pQueueMsg->dlc;
  pCanMsg->txFlag = 0u;
  if(pQueueMsg->dlc > 0u)
  {
    (void)memcpy(pCanMsg->canData,pQueueMsg->canData,pQueueMsg->dlc);
  }
}

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

int16_t SaveCanMsgToBuffer(uint8_t canChannel, uint32_t canId, uint8_t dlc, const uint8_t *pCanData)
{
    int32_t bufferIndex;
    if (canChannel >= RX_CAN_CONFIGURE_CHANNEL_NUMBER)
    {
        return -1;
    }
    if (dlc > CPU_CAN_DATA_LENGTH_MAX)
    {
        return -1;
    }

#if (DV_TEST_ENABLE == 1)
    bufferIndex = GetIndexFromCanMsgConfigureBuffer(canChannel, canId);
    if (bufferIndex < 0)
    {
        return 0;
    }
#else
    if(canId != 0x361)
    {
        return 0;
    }
#endif

    return CpuCanRxQueuePush(canChannel, canId, dlc, pCanData);
}

int16_t CanMsgReceiveFromBuffer(uint8_t *pCanChannel,CanHalMsg_t *pCanMsg)
{
  CpuCanMsgBuffer_t queueMsg;

  if(pCanMsg == NULL)
  {
    return -1;
  }

  if(CpuCanRxQueuePeek(&queueMsg) != 0)
  {
    return -1;
  }

  CanMsgCopyFromQueueNode(&queueMsg,pCanChannel,pCanMsg);
  (void)CpuCanRxQueueDrop();

  return 0;
}

int16_t CanMsgTansmitToCpuInitialize(void)
{
#if(0)
  uint32_t i,j;
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    for(j=0;j<RX_CAN_CONFIGURE_BUFFER_SIZE;j++)
    {
      g_canRxToCpuConfigureBuffer[i][j].msgRepeatCount = 0x00;
    }
  }
  //debug data
  /*g_canRxToCpuConfigureBuffer[0][0].canId = 0x1005;
  g_canRxToCpuConfigureBuffer[0][0].msgRepeatNumber = 5;

  
  m_canRxToCpuConfigure[0].size = 0x01;
  CanMsgConfigureSortLittleToBig(m_canRxToCpuConfigureBuffer[0],m_canRxToCpuConfigure[0].size);*/
#endif
  return 0;
}

int16_t CanMsgTransmitToCpu(int16_t mpuHandle)
{
    MpuHalDataPack_t txData;
    CanHalMsg_t canMsg;
    CpuCanMsgBuffer_t queueMsg;
    uint8_t rxCanChannel;
    uint16_t msgLength;
    uint16_t i;

    g_txByteOffset = 2;
    g_txBufferCount = 0;

    while (CpuCanRxQueuePeek(&queueMsg) == 0)
    {
        msgLength = (uint16_t)6u + queueMsg.dlc;
        if ((uint16_t)(g_txByteOffset + msgLength) > (uint16_t)sizeof(g_txBuffer))
        {
            break;
        }

        if (CanMsgReceiveFromBuffer(&rxCanChannel, &canMsg) != 0)
        {
            break;
        }
#if (DV_TEST_ENABLE == 1)
        if (canMsg.canId == 0x361)
        {
            TBOX_PRINT("CAN ID 0x361, DLC: %d, Data: ", canMsg.dlc);
            for (uint8_t j = 0; j < canMsg.dlc; j++)
            {
                TBOX_PRINT("0x%02X ", canMsg.canData[j]);
            }
            TBOX_PRINT("\n");
        }
#endif
        g_txBuffer[g_txByteOffset++] = rxCanChannel;
        g_txBuffer[g_txByteOffset++] = (canMsg.canId >> 24) & 0xFFu;
        g_txBuffer[g_txByteOffset++] = (canMsg.canId >> 16) & 0xFFu;
        g_txBuffer[g_txByteOffset++] = (canMsg.canId >> 8) & 0xFFu;
        g_txBuffer[g_txByteOffset++] = canMsg.canId & 0xFFu;
        g_txBuffer[g_txByteOffset++] = canMsg.dlc;
        for (i = 0; i < canMsg.dlc; i++)
        {
            g_txBuffer[g_txByteOffset++] = canMsg.canData[i];
        }
        g_txBufferCount++;
    }

    if (g_txBufferCount == 0u)
    {
        return 0;
    }

    g_txBuffer[0] = (g_txBufferCount >> 8) & 0xFFu;
    g_txBuffer[1] = g_txBufferCount & 0xFFu;

    txData.aid = 0x02;
    txData.mid = 0x02;
    txData.subcommand = 0x00;
    txData.dataBufferSize = g_txByteOffset;
    txData.dataLength = g_txByteOffset;
    txData.pDataBuffer = g_txBuffer;
    MpuHalTransmit(mpuHandle, &txData);

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
  // g_canRxToCpuConfigureBuffer[canChannel][g_canRxToCpuConfigure[canChannel].elementCount].msgRepeatNumber = pElement->msgRepeatNumber;
  g_canRxToCpuConfigure[canChannel].elementCount++;
  return 0;
}

void SetCanMsgConfigureBufferInvalidData(void)
{
  uint32_t i;
  CAN_MSG_TO_CPU_ENTER_CRITICAL();
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    g_canRxToCpuConfigure[i].size = 0x00;
    g_canRxToCpuConfigure[i].elementCount = 0x00;
  }
  g_cpuCanRxQueueWrite = 0;
  g_cpuCanRxQueueRead = 0;
  CAN_MSG_TO_CPU_EXIT_CRITICAL();
}

void SetCanMsgConfigureBufferValidData(void)
{
  uint32_t i;
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    CanMsgConfigureSortLittleToBig(g_canRxToCpuConfigureBuffer[i],g_canRxToCpuConfigure[i].elementCount);
  } 
  for(i=0;i<RX_CAN_CONFIGURE_CHANNEL_NUMBER;i++)
  {
    g_canRxToCpuConfigure[i].size = g_canRxToCpuConfigure[i].elementCount;
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