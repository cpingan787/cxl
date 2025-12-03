/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: canMsgToCpu.c
 Author: 
 Created Time: 
 Description: 
 Others: 
 *************************************************/
/****************************** include ***************************************/
#include <string.h>
#include "logHal.h"
#include "mpuHal.h"
#include "canMsgToCpu.h"
#include "FreeRTOS.h"
#include "task.h"

/****************************** Macro Definitions ******************************/
#define TX_BUFFER_CAN_MSG_NUM_MAX               (300)

/****************************** Type Definitions ******************************/
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

/****************************** Global Variables ******************************//****************************** Global Variables ******************************/
CanMsgRxConfigureBuffer_t g_canRxToCpuConfigureBuffer[RX_CAN_CONFIGURE_CHANNEL_NUMBER][RX_CAN_CONFIGURE_BUFFER_SIZE];
static CanIdConfigure_t g_canRxToCpuConfigure[RX_CAN_CONFIGURE_CHANNEL_NUMBER];
static StackBuffer_t g_stack;
static uint8_t g_txBuffer[TX_BUFFER_CAN_MSG_NUM_MAX * 14 + 3 + 8];
static uint16_t g_txBufferCount = 0;
static uint16_t g_txByteOffset = 2;

/****************************** Function Declarations *************************/
static void StackInit(StackBuffer_t *pStack);
static void StackPush(StackBuffer_t *pStack,int16_t value);
static int16_t StackPop(StackBuffer_t *pStack);
static int16_t StackTop(StackBuffer_t *pStack);
static int16_t  StackIsEmpty(StackBuffer_t *pStack);
/****************************** Private Function Implementations ***************/
/*=================================================
   Function:        StackInit
   Description:     Initialize stack structure
   Input:           pStack - Pointer to the stack structure to be initialized
   Output:          None
   Return:          None
   Others:          Sets the stack index to 0, preparing it for push/pop operations
 =================================================*/
static void StackInit(StackBuffer_t *pStack)
{
    pStack->index = 0;
}

/*=================================================
   Function:        StackPush
   Description:     Push a value onto the stack
   Input:           pStack - Pointer to the stack structure
                    value - Integer value to be pushed onto the stack
   Output:          None
   Return:          None
   Others:          Does nothing if stack is full
 =================================================*/
static void StackPush(StackBuffer_t *pStack,int16_t value)
{
    if(pStack->index >= (sizeof(pStack->buffer)/sizeof(pStack->buffer[0])))
    {
        return;
    }
    pStack->buffer[pStack->index] = value;
    pStack->index++;
}

/*=================================================
   Function:        StackPop
   Description:     Pop a value from the stack
   Input:           pStack - Pointer to the stack structure
   Output:          None
   Return:          The popped value, or 0 if stack is empty
   Others:          Decreases stack index by 1
 =================================================*/
static int16_t StackPop(StackBuffer_t *pStack)
{
    if(pStack->index <= 0)
    {
        return 0;
    }
    pStack->index--;
    return pStack->buffer[pStack->index];
}

/*=================================================
   Function:        StackTop
   Description:     Get the top value of the stack without removing it
   Input:           pStack - Pointer to the stack structure
   Output:          None
   Return:          The top value of the stack, or 0 if stack is empty
   Others:          Does not modify the stack index
 =================================================*/
static int16_t StackTop(StackBuffer_t *pStack)
{
    if(pStack->index == 0)
    {
      return 0;
    }
    return pStack->buffer[(pStack->index-1)];
}

/*=================================================
   Function:        StackIsEmpty
   Description:     Check if the stack is empty
   Input:           pStack - Pointer to the stack structure
   Output:          None
   Return:          0 if stack is empty, 1 if stack contains elements
   Others:          Uses stack index to determine empty status
 =================================================*/
static int16_t  StackIsEmpty(StackBuffer_t *pStack)
{
    if(pStack->index <= 0)
    {
        return 0;
    }
    return 1;
}


/*=================================================
   Function:        Partition
   Description:     Quick sort partition function, used to partition CAN message configuration array by canId
   Input:           pConfigureArray - Pointer to CAN message configuration array
                    left - Left boundary index of the partition range
                    right - Right boundary index of the partition range
   Output:          pConfigureArray - Modified array after partition
   Return:          The final position of the pivot element
   Others:          Uses the first element as pivot, moves elements <= pivot to left and > pivot to right
 =================================================*/
static int16_t Partition(CanMsgRxConfigureBuffer_t *pConfigureArray,int16_t left,int16_t right)
{
  CanMsgRxConfigureBuffer_t pivot;
  memcpy(&pivot,&pConfigureArray[left],sizeof(CanMsgRxConfigureBuffer_t));
  while(left < right)
  {
      while((left < right)&&(pConfigureArray[right].canId >= pivot.canId))
      {
        right--;
      }
      memcpy(&pConfigureArray[left],&pConfigureArray[right],sizeof(CanMsgRxConfigureBuffer_t));
      while((left < right)&&(pConfigureArray[left].canId <= pivot.canId))
      {
        left++;
      }
      memcpy(&pConfigureArray[right],&pConfigureArray[left],sizeof(CanMsgRxConfigureBuffer_t));
  }
  memcpy(&pConfigureArray[left],&pivot,sizeof(CanMsgRxConfigureBuffer_t));
  return left;
}

/*=================================================
   Function:        CanMsgConfigureSortLittleToBig
   Description:     Non-recursive quick sort function, sorts CAN message configuration array by canId in ascending order
   Input:           pConfigureArray - Pointer to CAN message configuration array
                    arraySize - Size of the array to be sorted
   Output:          pConfigureArray - Sorted array
   Return:          None
   Others:          Uses stack-based non-recursive quick sort algorithm, calls Partition function for partitioning
 =================================================*/
static void CanMsgConfigureSortLittleToBig(CanMsgRxConfigureBuffer_t *pConfigureArray,uint16_t arraySize)
{
    int16_t left = 0;
    int16_t right;
    int16_t index;
    if(arraySize == 0)
    {
        return;
    }
    right = arraySize - 1;
    StackInit(&g_stack);
    StackPush(&g_stack,left);
    StackPush(&g_stack,right);
    while(StackIsEmpty(&g_stack) != 0)
    {
        right = StackTop(&g_stack);
        StackPop(&g_stack);
        left = StackTop(&g_stack);
        StackPop(&g_stack);
        
        index = Partition(pConfigureArray,left,right);
        if((index - 1) > left)
        {
            StackPush(&g_stack,left);
            StackPush(&g_stack,index - 1);
        }
        if((index + 1) < right)
        {
            StackPush(&g_stack,index + 1);
            StackPush(&g_stack,right);
        }
    }
}

/*=================================================
   Function:        GetIndexFromCanMsgConfigureBuffer
   Description:     Binary search function, used to find specific CAN ID in the CAN message configuration buffer
   Input:           canChannel - CAN channel number
                    canId - CAN message ID to search for
   Output:          None
   Return:          The index of the found CAN ID, -1 if not found
   Others:          Uses binary search algorithm, assumes the buffer is sorted by canId
 =================================================*/
static int16_t GetIndexFromCanMsgConfigureBuffer(uint8_t canChannel,uint32_t canId)
{
    int16_t index;
    uint32_t size;
    uint32_t indexMin,indexMax,half,i;
    index = -1;

    size = g_canRxToCpuConfigure[0].size;
    if(size == 0)
    {
        return index;
    }
    
    indexMin = 0;
    indexMax = size - 1;
    for(i = 0; i < 50; i++)
    {
        if(indexMax - indexMin < 2)
        {
            if(canId == g_canRxToCpuConfigureBuffer[canChannel][indexMin].canId)
            {
                index = indexMin;
            }
            else if(canId == g_canRxToCpuConfigureBuffer[canChannel][indexMax].canId)
            {
                index = indexMax;
            }
            break;
        }
        half = (indexMin + indexMax) / 2;
        if(canId > g_canRxToCpuConfigureBuffer[canChannel][half].canId)
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

/**
 * @Function    SaveCanMsgToBuffer
 * @Description Save CAN message to the transmit buffer for sending to CPU
 * @Input       canChannel: CAN channel index
 * @Input       pCanMsg: Pointer to the CAN message structure to be saved
 * @Output      none
 * @Return      0: Success, -1: Buffer overflow
 * @Others      The function packs the CAN message into a binary format in the global transmit buffer and increments the count
 */
int16_t SaveCanMsgToBuffer(uint8_t canChannel,const CanHalMsg_t *pCanMsg)
{
    int32_t bufferIndex;
    uint16_t i;
    int16_t result = 0;
    
    bufferIndex = GetIndexFromCanMsgConfigureBuffer(canChannel,pCanMsg->canId);
    if(bufferIndex < 0)
    {
      return 0;
    }
    
    if(bufferIndex >= TX_BUFFER_CAN_MSG_NUM_MAX)
    {
      return 0;
    }
    
    taskENTER_CRITICAL();
    
    if((g_txByteOffset + 6 + pCanMsg->dlc) > (TX_BUFFER_CAN_MSG_NUM_MAX*14 + 3 + 8))
    {
        result = -1; 
        taskEXIT_CRITICAL();
        
        return result;
    }
    
    g_txBuffer[g_txByteOffset++] = canChannel;
    g_txBuffer[g_txByteOffset++] = (pCanMsg->canId>>24)&0xFF;
    g_txBuffer[g_txByteOffset++] = (pCanMsg->canId>>16)&0xFF;
    g_txBuffer[g_txByteOffset++] = (pCanMsg->canId>>8)&0xFF;
    g_txBuffer[g_txByteOffset++] = pCanMsg->canId&0xFF;
    g_txBuffer[g_txByteOffset++] = pCanMsg->dlc;
    
    for(i=0;i<pCanMsg->dlc;i++)
    {
        g_txBuffer[g_txByteOffset++] = pCanMsg->canData[i];
    }
    
    g_txBufferCount++;
    
    taskEXIT_CRITICAL();
    
    return result;
}

/**
 * @Function    CanMsgTansmitToCpuInitialize
 * @Description Initialize CAN receive configuration buffer for sending messages to CPU
 * @Input       none
 * @Output      none
 * @Return      0: Always successful
 * @Others      This function zeros the msgRepeatCount field for all configured CAN receive messages across all channels
 */
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
    return 0;
}

/**
 * @Function    CanMsgTransmitToCpu
 * @Description Transmit buffered CAN messages to CPU through MPU interface
 * @Input       canChannel: CAN channel index (not used in current implementation)
 * @Input       mpuHandle: MPU handle for communication
 * @Output      none
 * @Return      0: Always successful (even if no data was transmitted)
 * @Others      This function packs the message count into the first two bytes, then transmits all buffered data. After transmission, it resets the buffer offset and count.
 */
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

/**
 * @Function    GetCanMsgConfigureBufferSize
 * @Description Get the size of CAN message configure buffer for a specific channel
 * @Input       canChannel: CAN channel index to check
 * @Output      none
 * @Return      RX_CAN_CONFIGURE_BUFFER_SIZE if channel is valid, -1 if channel is invalid
 * @Others      This function validates the CAN channel before returning the buffer size constant
 */
int16_t GetCanMsgConfigureBufferSize(uint8_t canChannel)
{
    if(canChannel >= RX_CAN_CONFIGURE_CHANNEL_NUMBER)
    {
        return -1;
    }
    return RX_CAN_CONFIGURE_BUFFER_SIZE;
}

/*=================================================
   Function:        CanMsgConfigureBufferAdd
   Description:     Add element to CAN message configuration buffer
   Input:           canChannel - CAN channel number
                    pElement - Pointer to the CAN message configuration element to be added
   Output:          None
   Return:          0: Success, -1: Invalid channel or buffer full
   Others:          Checks channel validity and buffer space before adding the element
 =================================================*/
int16_t CanMsgConfigureBufferAdd(uint8_t canChannel,CanMsgRxConfigure_t *pElement)
{
    if(canChannel >= RX_CAN_CONFIGURE_CHANNEL_NUMBER)
    {
        return -1;
    }
    if(g_canRxToCpuConfigure[canChannel].elementCount >= RX_CAN_CONFIGURE_BUFFER_SIZE)
    {
        return -1;
    }
    g_canRxToCpuConfigureBuffer[canChannel][g_canRxToCpuConfigure[canChannel].elementCount].canId = pElement->canId;
    g_canRxToCpuConfigureBuffer[canChannel][g_canRxToCpuConfigure[canChannel].elementCount].msgRepeatNumber = pElement->msgRepeatNumber;
    g_canRxToCpuConfigure[canChannel].elementCount++;
    return 0;
}

/*=================================================
   Function:        SetCanMsgConfigureBufferInvalidData
   Description:     Set all CAN message configuration buffers to invalid state
   Input:           None
   Output:          None
   Return:          None
   Others:          Resets size and elementCount to 0 for all channels
 =================================================*/
void SetCanMsgConfigureBufferInvalidData(void)
{
    uint32_t i;
    for(i = 0; i < RX_CAN_CONFIGURE_CHANNEL_NUMBER; i++)
    {
        g_canRxToCpuConfigure[i].size = 0x00;
        g_canRxToCpuConfigure[i].elementCount = 0x00;
    }  
}

/*=================================================
   Function:        SetCanMsgConfigureBufferValidData
   Description:     Validate and prepare CAN message configuration buffers for use
   Input:           None
   Output:          None
   Return:          None
   Others:          Sorts all buffers by canId, sets size to elementCount, and packs channel 0 CAN IDs into the transmit buffer
 =================================================*/
void SetCanMsgConfigureBufferValidData(void)
{
    uint32_t i;
    uint32_t byteOffset;
    for(i = 0; i < RX_CAN_CONFIGURE_CHANNEL_NUMBER; i++)
    {
        CanMsgConfigureSortLittleToBig(g_canRxToCpuConfigureBuffer[i],g_canRxToCpuConfigure[i].elementCount);
    } 
    for(i = 0; i < RX_CAN_CONFIGURE_CHANNEL_NUMBER; i++)
    {
        g_canRxToCpuConfigure[i].size = g_canRxToCpuConfigure[i].elementCount;
    }  
    g_txBufferCount = g_canRxToCpuConfigure[0].elementCount;
    for(i = 0; i < g_txBufferCount; i++)
    {
        byteOffset = i*12+11;
        g_txBuffer[byteOffset++] = (g_canRxToCpuConfigureBuffer[0][i].canId>>24)&0xFF;
        g_txBuffer[byteOffset++] = (g_canRxToCpuConfigureBuffer[0][i].canId>>16)&0xFF;
        g_txBuffer[byteOffset++] = (g_canRxToCpuConfigureBuffer[0][i].canId>>8)&0xFF;
        g_txBuffer[byteOffset++] = g_canRxToCpuConfigureBuffer[0][i].canId&0xFF;     
    }
}

/*=================================================
   Function:        CanMsgConfigureBufferDataIsValid
   Description:     Check if CAN message configuration buffer data is valid
   Input:           None
   Output:          None
   Return:          1 if valid, 0 if invalid
   Others:          Checks g_canRxToCpuConfigure[0].size to determine validity
=================================================*/
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

