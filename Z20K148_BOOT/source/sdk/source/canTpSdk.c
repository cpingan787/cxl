#include "canTpSdk.h"
#include <string.h>
#include "FreeRTOS.h"
#include "timerHal.h"
#include "queue.h"


#define UDS_TP_MAX_NUMBER               4
#define UDS_FRAME_CANFD         1   // 0-CAN,1-CANFD

typedef struct
{
  const CanTpSdkParameter_t *pTpParameter;
  int16_t physicalCanHandle;
  int16_t functionalCanHandle;
  uint32_t physicalTransmitCanId;
  uint32_t frameInterval;
  uint8_t useFlag;
  uint8_t bootMode;
}CanTpVariable_t;

static CanTpVariable_t g_tpVariable[UDS_TP_MAX_NUMBER];


static int16_t  GetValidTpHandle(void)
{
  uint8_t i;
  for(i=0;i<UDS_TP_MAX_NUMBER;i++)
  {
    if(!g_tpVariable[i].useFlag)
    {
      return i;
    }
  }
  return -1;
}

int16_t CanTpSdkInitialize(uint8_t canChannle,const CanTpSdkParameter_t *pTpParameter,CanTpSdkBuffer_t *pTpBuffer)
{
  //int16_t ret;
  int16_t physicalCanHandle;
  int16_t functionCanHandle;
  int16_t tpHandle;
  if(pTpParameter==NULL)
  {
    return -1;
  }
  if(pTpBuffer==NULL)
  {
    return -1;
  }
  tpHandle = GetValidTpHandle();
  if(tpHandle<0)
  {
    return -1;
  }
  g_tpVariable[tpHandle].pTpParameter = pTpParameter;
  physicalCanHandle = CanHalOpen(canChannle);  
  if(physicalCanHandle<0)
  {
    return -1;
  }
  g_tpVariable[tpHandle].physicalCanHandle = physicalCanHandle;
  CanHalSetRxBuffer(physicalCanHandle,pTpBuffer->physicalCanMsgBuf,sizeof(pTpBuffer->physicalCanMsgBuf)/sizeof(pTpBuffer->physicalCanMsgBuf[0]));
  functionCanHandle = CanHalOpen(canChannle);
  if(functionCanHandle<0)
  {
    return -1;
  }
  g_tpVariable[tpHandle].functionalCanHandle = functionCanHandle;
  CanHalSetRxBuffer(functionCanHandle,pTpBuffer->functionCanMsgBuf,sizeof(pTpBuffer->functionCanMsgBuf)/sizeof(pTpBuffer->functionCanMsgBuf[0]));
  g_tpVariable[tpHandle].bootMode = 0; 
  return 0;
}

int16_t CanTpSdkSetCanId(int16_t tpHandle,uint32_t pysicalRxId,uint32_t functionRxId,uint32_t txId)
{
  CanHalMsgFilter_t canFilter;

  if(tpHandle<0)
  {
    return -1;
  }
  if(tpHandle>=UDS_TP_MAX_NUMBER)
  {
    return -1;
  }
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = pysicalRxId;
  canFilter.canIdStdMax = pysicalRxId;
  
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x01;
  canFilter.canIdExtdMax = 0x01;  
  CanHalSetFilter(g_tpVariable[tpHandle].physicalCanHandle,&canFilter); 
  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = functionRxId;
  canFilter.canIdStdMax = functionRxId;
  
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x01;
  canFilter.canIdExtdMax = 0x01;  
  CanHalSetFilter(g_tpVariable[tpHandle].functionalCanHandle,&canFilter);
  
  CanHalEnableTransmitLoopBack(g_tpVariable[tpHandle].functionalCanHandle);
  
  g_tpVariable[tpHandle].physicalTransmitCanId = txId;
  return 0;
}


static int16_t TpDataSingleFrameRx(CanHalMsg_t *pCanRxMsg,uint8_t *udsData,uint16_t *udsLen)
{
    if(pCanRxMsg->dlc <= 8)
    {
    if(((pCanRxMsg->canData[0] & 0x0f) > 7) || ((pCanRxMsg->canData[0] & 0x0f) < 1))
    {
        return -1;
    }
      
    memcpy(udsData,&pCanRxMsg->canData[1],7);
    *udsLen = pCanRxMsg->canData[0]&0x0F;
    if(*udsLen > (pCanRxMsg->dlc - 1))
    {
        return -1;
    }
    }
#if(UDS_FRAME_CANFD)
    else if((pCanRxMsg->dlc > 8) && (pCanRxMsg->dlc <= 64))
    {
        if((pCanRxMsg->canData[0] != 0) || (pCanRxMsg->canData[1] < 8) || (pCanRxMsg->canData[1] > 63))
        {
            return -1;
        }

        memcpy(udsData,&pCanRxMsg->canData[2],62);    //CANFD 单帧有效数据从byte2开始
        *udsLen = pCanRxMsg->canData[1];
        if(*udsLen > (pCanRxMsg->dlc - 2))
        {
            return -1;
        }
    }
#endif
    else
    {
        return -1;
    }

    return 0;
}


static int16_t TpDataMultiFrameRxFLowControlTransmit(int16_t tpHandle,int16_t canHandle)
{
    CanHalMsg_t canTxMsg;
    int16_t ret;
    
    canTxMsg.dlc = 8;
    canTxMsg.canData[0] = 0x30;
    if(tpHandle < 0 || tpHandle >= UDS_TP_MAX_NUMBER)
    {
    	return -1;
    }
    if(g_tpVariable[tpHandle].bootMode)
    {
      canTxMsg.canData[1] = g_tpVariable[tpHandle].pTpParameter->blockSize_boot; //blockSize; 
      canTxMsg.canData[2] = g_tpVariable[tpHandle].pTpParameter->STmin_boot;   //STmin; 
    }
    else
    {
      canTxMsg.canData[1] = g_tpVariable[tpHandle].pTpParameter->blockSize_APP; //blockSize; 
      canTxMsg.canData[2] = g_tpVariable[tpHandle].pTpParameter->STmin_APP;   //STmin; 
    }
    canTxMsg.canData[3] = g_tpVariable[tpHandle].pTpParameter->fillByte; 
    canTxMsg.canData[4] = g_tpVariable[tpHandle].pTpParameter->fillByte;
    canTxMsg.canData[5] = g_tpVariable[tpHandle].pTpParameter->fillByte; 
    canTxMsg.canData[6] = g_tpVariable[tpHandle].pTpParameter->fillByte;
    canTxMsg.canData[7] = g_tpVariable[tpHandle].pTpParameter->fillByte;
    canTxMsg.canId = g_tpVariable[tpHandle].physicalTransmitCanId;
    
#if(UDS_FRAME_CANFD == 0)
    ret = CanHalDiagnosticTransmit(canHandle,canTxMsg.canId, canTxMsg.canData,canTxMsg.dlc,0);
#else
    ret = CanHalDiagnosticTransmit(canHandle,canTxMsg.canId, canTxMsg.canData,canTxMsg.dlc,3);
#endif
    if(0 != ret)
    {
        return -1;
    }
    return 0;
}

/*******************************************************
-2:receive new start frame
-1:receive error
0:rx success



*********************************************************/
static int16_t TpDataMultiFrameRx(int16_t tpHandle,int16_t canHandle,uint16_t FrameSum,uint16_t blockSize,uint16_t rxLen,uint8_t *udsData,CanHalMsg_t* pRxmsg)
{
    uint16_t FrameCount,i,rxLenLeft,CF_num,rxCount;
    int16_t ret;
    
    CF_num = 0x21;
    FrameCount = 0;
    rxLenLeft = rxLen;
    rxCount = 6;
    if(tpHandle >= UDS_TP_MAX_NUMBER || tpHandle< 0)
    {
       return -1;
    }
    
    i=0;
    while( i < FrameSum)
    { 
        if((FrameCount >= blockSize) && (blockSize != 0))
        {
            ret= TpDataMultiFrameRxFLowControlTransmit(tpHandle,canHandle);                  
            if(0 != ret)
            {
                return -1;
            }  
            FrameCount = 0;
        }
        if(rxLenLeft>7)
        {
            //if((FrameCount >= blockSize) && (blockSize != 0))
            //{
            //    ret= TpDataMultiFrameRxFLowControlTransmit(tpHandle,canHandle);                
            //    if(0 != ret)
            //    {
            //        return -1;
            //    }  
            //    FrameCount = 0;
            //}
          
            //ret = CanHalDiagnosticReceive(canHandle,&canRxMsg,1000);N_Cr_enforced
            ret = CanHalDiagnosticReceive(canHandle,pRxmsg,g_tpVariable[tpHandle].pTpParameter->N_Cr_enforced);
            if(0 != ret)
            {
                return -1;
            }  
            if((((pRxmsg->canData[0] >> 4) & 0x0f) == 0) || ((pRxmsg->canData[0] & 0xF0 )== 0X10))
            {                            
                return -2;
            }
            
            if(CF_num != pRxmsg->canData[0])
            {
                //return -1;
                if((pRxmsg->canData[0] & 0xf0) == 0x20 )
                {
                    return -1;
                }
                continue;
            }

            if(CF_num == 0x2F)
            {
                CF_num = 0x20;
            }
            else
            {
                    CF_num ++;
            }

            memcpy(udsData+rxCount,&pRxmsg->canData[1],(pRxmsg->dlc - 1));
            rxCount += (pRxmsg->dlc - 1); 
            rxLenLeft -= 7;
            FrameCount ++;
        }
        else
        {
            
            
            //ret = CanHalDiagnosticReceive(canHandle,&canRxMsg,1000);
            ret = CanHalDiagnosticReceive(canHandle,pRxmsg,g_tpVariable[tpHandle].pTpParameter->N_Cr_enforced);
            if(0 != ret)
            {
                return -1;
            } 

            if((((pRxmsg->canData[0] >> 4) & 0x0f) == 0) || ((pRxmsg->canData[0] & 0xF0 ) == 0x10))
            {
                return -2;
            }
            
            if(CF_num != pRxmsg->canData[0])
            {
                //return -1;
                if((pRxmsg->canData[0] & 0xf0) == 0x20 )
                {
                    return -1;
                }                            
                continue;
            }

            if(CF_num == 0x2F)
            {
                CF_num = 0x20;
            }
            else
            {
                CF_num ++;
            }
        
            memcpy(udsData+rxCount,&pRxmsg->canData[1],(pRxmsg->dlc - 1));
            rxCount += (pRxmsg->dlc - 1);                             
              
            return rxCount;
        }
        i++;
    }
    return rxCount;
}

static int16_t TpDataMultiFrameRxFd(int16_t tpHandle,int16_t canHandle,uint16_t FrameSum,uint16_t blockSize,uint16_t rxLen,uint8_t *udsData,CanHalMsg_t* pRxmsg)
{
    uint16_t FrameCount,i,rxLenLeft,CF_num,rxCount;
    int16_t ret;
    
    CF_num = 0x21;
    FrameCount = 0;
    rxLenLeft = rxLen;
    rxCount = 6;
    if(tpHandle >= UDS_TP_MAX_NUMBER || tpHandle< 0)
    {
       return -1;
    }
    
    i=0;
    while( i < FrameSum)
    { 
        if((FrameCount >= blockSize) && (blockSize != 0))
        {
            ret= TpDataMultiFrameRxFLowControlTransmit(tpHandle,canHandle);                  
            if(0 != ret)
            {
                return -1;
            }  
            FrameCount = 0;
        }
        if(rxLenLeft>63)
        {
            //if((FrameCount >= blockSize) && (blockSize != 0))
            //{
            //    ret= TpDataMultiFrameRxFLowControlTransmit(tpHandle,canHandle);                
            //    if(0 != ret)
            //    {
            //        return -1;
            //    }  
            //    FrameCount = 0;
            //}
          
            //ret = CanHalDiagnosticReceive(canHandle,&canRxMsg,1000);N_Cr_enforced
            ret = CanHalDiagnosticReceive(canHandle,pRxmsg,g_tpVariable[tpHandle].pTpParameter->N_Cr_enforced);
            if(0 != ret)
            {
                return -1;
            }  
            if((((pRxmsg->canData[0] >> 4) & 0x0f) == 0) || ((pRxmsg->canData[0] & 0xF0 )== 0X10))
            {                            
                return -2;
            }
            
            if(CF_num != pRxmsg->canData[0])
            {
                //return -1;
                if((pRxmsg->canData[0] & 0xf0) == 0x20 )
                {
                    return -1;
                }
                continue;
            }

            if(CF_num == 0x2F)
            {
                CF_num = 0x20;
            }
            else
            {
                    CF_num ++;
            }

            memcpy(udsData+rxCount,&pRxmsg->canData[1],(pRxmsg->dlc - 1));
            rxCount += (pRxmsg->dlc - 1); 
            rxLenLeft -= 63;
            FrameCount ++;
        }
        else
        {
            
            
            //ret = CanHalDiagnosticReceive(canHandle,&canRxMsg,1000);
            ret = CanHalDiagnosticReceive(canHandle,pRxmsg,g_tpVariable[tpHandle].pTpParameter->N_Cr_enforced);
            if(0 != ret)
            {
                return -1;
            } 

            if((((pRxmsg->canData[0] >> 4) & 0x0f) == 0) || ((pRxmsg->canData[0] & 0xF0 ) == 0x10))
            {
                return -2;
            }
            
            if(CF_num != pRxmsg->canData[0])
            {
                //return -1;
                if((pRxmsg->canData[0] & 0xf0) == 0x20 )
                {
                    return -1;
                }                            
                continue;
            }

            if(CF_num == 0x2F)
            {
                CF_num = 0x20;
            }
            else
            {
                CF_num ++;
            }
        
            memcpy(udsData+rxCount,&pRxmsg->canData[1],(pRxmsg->dlc - 1));
            rxCount += (pRxmsg->dlc - 1);                             
              
            return rxCount;
        }
        i++;
    }
    return rxCount;
}

static int16_t TpDataReceive(int16_t tpHandle, int16_t canHandle,uint8_t *udsData,uint16_t *udsLen)
{
    CanHalMsg_t canRxMsg;
    int16_t ret;
    uint16_t rxLenLeft; 
    uint8_t n_PCItype;
    uint8_t blockSize;
//    uint8_t STmin;
    //uint8_t FrameCount;
    //uint8_t CF_num = 0x21;
    //uint8_t fillByte;
    uint8_t FrameSum = 0;    
    
    if(tpHandle >= UDS_TP_MAX_NUMBER || tpHandle< 0)
    {
    	return -1;
    }
    blockSize = g_tpVariable[tpHandle].pTpParameter->blockSize_APP;
//    STmin = g_tpVariable[tpHandle].pTpParameter->STmin_APP;
    //fillByte = 0xcc;
    
    if(udsData == NULL)
    {
        return -1;
    }
    if(udsLen == NULL)
    {
        return -1;
    }
    
    ret = CanHalDiagnosticReceive(canHandle,&canRxMsg,0);
    if(0 == ret)
    {
        do
        {  
            if(canHandle == g_tpVariable[tpHandle].functionalCanHandle)
            {
                //*CAN_ID = TBOX_FUNCTION_REQ_ID;
                if((canRxMsg.canData[0] >> 4) & 0x0F)
                {
                    return -1;
                }
            }          
               
            n_PCItype = (canRxMsg.canData[0]>>4)&0x0F;
            if(0 == n_PCItype)//single frame
            {
                return TpDataSingleFrameRx(&canRxMsg,udsData,udsLen);
            }
            else if(1 == n_PCItype)//
            {  
#if(UDS_FRAME_CANFD == 0)
                uint16_t txCount = 0;
                rxLenLeft = (((uint16_t)canRxMsg.canData[0]&0x0F) << 8) + canRxMsg.canData[1];
                *udsLen = rxLenLeft;
                if(rxLenLeft < 8)
                {
                    return -1;
                }
                
                memcpy(udsData,&canRxMsg.canData[2], 6);
                rxLenLeft -= 6;
                txCount += 6;
                FrameSum = (rxLenLeft / 7) ;
                FrameSum += 1;
                if(((rxLenLeft - 6) % 7) != 0)
                {
                    FrameSum += 1;
                }
                            
                ret= TpDataMultiFrameRxFLowControlTransmit(tpHandle,canHandle);                 
                if(0 != ret)
                {
                    return -1;
                }
                ret = TpDataMultiFrameRx(tpHandle,canHandle,FrameSum,blockSize,rxLenLeft,udsData,&canRxMsg);
#else
                uint16_t txCount = 0;
                rxLenLeft = (((uint16_t)canRxMsg.canData[0]&0x0F) << 8) + canRxMsg.canData[1];
                *udsLen = rxLenLeft;
                if(rxLenLeft < 63)
                {
                    return -1;
                }
                
                memcpy(udsData,&canRxMsg.canData[2], 62);
                rxLenLeft -= 62;
                txCount += 62;
                FrameSum = (rxLenLeft / 3) ;
                FrameSum += 1;
                if(((rxLenLeft - 62) % 63) != 0)
                {
                    FrameSum += 1;
                }
                            
                ret= TpDataMultiFrameRxFLowControlTransmit(tpHandle,canHandle);                 
                if(0 != ret)
                {
                    return -1;
                }
                ret = TpDataMultiFrameRxFd(tpHandle,canHandle,FrameSum,blockSize,rxLenLeft,udsData,&canRxMsg);
#endif
                if(ret<0)
                {
                    if(-2==ret)//receive again
                    {
                        continue;
                    }
                    else
                    {
                        return -1;
                    }
                }
                if(ret < *udsLen)
                {
                    return -1;
                }
                return 0;
            }
            else if(2 == n_PCItype)
            {
                return -1;
            }
            else if(3 == n_PCItype)
            {
                return -1;
            }
            return -1;
        }while(1);
    }
    else
    {
      return -1;
    }    
}


int16_t CanTpSdkDataReceive(int16_t tpHandle,uint8_t *udsData,uint16_t *udsLen,uint8_t *pFunctionFlag)
{
  int16_t ret;
  if(tpHandle < 0 || tpHandle >= UDS_TP_MAX_NUMBER)
  {
      return -1;
  }

  ret = TpDataReceive(tpHandle,g_tpVariable[tpHandle].physicalCanHandle,udsData,udsLen);
  if(ret==0)
  {
    *pFunctionFlag = 0;
    return ret;
  }

  ret = TpDataReceive(tpHandle,g_tpVariable[tpHandle].functionalCanHandle,udsData,udsLen);
  if(ret==0)
  {
    *pFunctionFlag = 1;
    //return ret;
  }
  return ret;
}

static int16_t CanTpDataMultFramGetFlowControl(int16_t tpHandle,int16_t canHandle,CanHalMsg_t *pRxMsg,uint8_t *pSTmin,uint8_t* pBlocksize)
{
    int16_t ret,result;
    result = 0;
    if(tpHandle < 0 || tpHandle >= UDS_TP_MAX_NUMBER)
        {
        	return -1;
        }
    while(1)
    {
        ret = CanHalDiagnosticReceive(canHandle,pRxMsg, g_tpVariable[tpHandle].pTpParameter->N_Bs_enforced);//wait 150 ms

        if (ret != 0)
        {
            result = -1;
            break;//time out
        }
        if (pRxMsg->dlc < 3)
        {
            result = -1;
            break;//error dlc
        }
        if(0x00 == (pRxMsg->canData[0] & 0xF0))//single
        {
            if((pRxMsg->canData[1]==0x7F)&&(pRxMsg->canData[3]==0x78))//busy state
            {
                continue;
            }
            else
            {
                result = -1;
                break;//not flow control frame
            }
        }
        if (0x30 != (pRxMsg->canData[0] & 0xF0))
        {
            result = -1;
            break;//not flow control frame
        }
        if (0 == (pRxMsg->canData[0] & 0x0F))//success receive
        {
            break;
        }
        else if (1 == (pRxMsg->canData[0] & 0x0F))//wait frame
        {
            continue;
        }
        else if (2 == (pRxMsg->canData[0] & 0x0F))//over flow frmae
        {
            result = -1;
            break;//not flow control frame
        }
        else
        {
            result = -1;
            break;//not flow control frame
        }
    }
    if(result==0)
    {
        *pBlocksize = pRxMsg->canData[1];
        *pSTmin = pRxMsg->canData[2] + 2; //2ms     
    }
    return result;
}

static int16_t CanTpDataMultFramTransmit(int16_t tpHandle,int16_t canHandle,uint32_t txCanId,uint32_t multiFrameNum,uint8_t *txData,uint16_t txLength)
{
    uint32_t transmitCount = 0;
    int16_t ret;
    uint8_t txCanData[8];
    uint8_t txCanDlc;
    CanHalMsg_t rxCanMsg;

    int16_t result = 0;
    transmitCount += 6;
    int32_t txFrameCount = 0;
    if(tpHandle < 0 || tpHandle >= UDS_TP_MAX_NUMBER)
    {
    	return -1;
    }
    
    //rxobj
    canHandle = g_tpVariable[tpHandle].physicalCanHandle;  

    uint8_t blockSize = 0;
    uint8_t STmin = 0; //2ms?????
    uint32_t frameInterval;
    ret = CanTpDataMultFramGetFlowControl(tpHandle,canHandle,&rxCanMsg,&STmin,&blockSize);
    if(ret!=0)
    {
        return -1;
    }
    if (STmin == 0)
    {
        frameInterval = 0;
    }
    else if (STmin < 128)
    {
        frameInterval = STmin;
    }
    else
    {
        frameInterval = 1;
    }
    multiFrameNum -= 1;
    for (txFrameCount = 0; txFrameCount < multiFrameNum; txFrameCount++)
    {
        int j;
        txCanData[0] = (0x20 | ((txFrameCount + 1) & 0x0f));
        if (txFrameCount < (multiFrameNum - 1))
        {
            txCanDlc = 8;
        }
        else
        {
            txCanDlc = ((txLength - 6 - txFrameCount * 7) + 1); 
        }
        for (j = 0; j < (txCanDlc-1); j++)
        {
            txCanData[j + 1] = txData[6 + txFrameCount * 7 + j];
            
        }

        for(;j<7;j++)
        {
            txCanData[j + 1] = g_tpVariable[tpHandle].pTpParameter->fillByte;
        }
        
        if(frameInterval != 0)
        {
            vTaskDelay( pdMS_TO_TICKS(STmin)); 
        }
        ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg,0); //whl20180613
        memset(rxCanMsg.canData, 0, 8);
        ret = CanHalDiagnosticTransmit(canHandle,txCanId,txCanData,8,0);
        //TBOX_PRINT("can tp wait send %x\r\n",txCanId);
        if (ret != 0)
        {
            result = -1;
            break;
        }
        memset(rxCanMsg.canData, 0, 8);


        //transmitCount+
        if ((blockSize != 0) && ((txFrameCount + 1) >= blockSize))
        {
            //break;//block transmit finished
            //ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, m_flowControlTime);//wait 1000 ms
            ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, g_tpVariable[tpHandle].pTpParameter->N_Bs_enforced);//wait 150 ms
            if (ret != 0)
            {
                result = -1;
                break;//time out
            }
            if (rxCanMsg.dlc < 3)
            {
                result = -1;
                break;//error dlc
            }
            if (0x30 != (rxCanMsg.canData[0] & 0xF0))
            {
                result = -1;
                break;//not flow control frame
            }
            else
            {
                blockSize += blockSize;
            }
         }
    }
    
    canHandle = g_tpVariable[tpHandle].physicalCanHandle;
    ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, 0);//wait 150 ms
    memset(rxCanMsg.canData, 0, 8);
    canHandle = g_tpVariable[tpHandle].functionalCanHandle;
    ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, 0);//wait 150 ms
    memset(rxCanMsg.canData, 0, 8);
    
    /*if (txFrameCount >= multiFrameNum)
    {
        break;//transmit success
    }*/
       
    
    return result;
}

static int16_t CanTpDataMultFramTransmitFd(int16_t tpHandle,int16_t canHandle,uint32_t txCanId,uint32_t multiFrameNum,uint8_t *txData,uint16_t txLength)
{
    uint32_t transmitCount = 0;
    int16_t ret;
    uint8_t txCanData[64];
    uint8_t txCanDlc;
    CanHalMsg_t rxCanMsg;

    int16_t result = 0;
    transmitCount += 6;
    int32_t txFrameCount = 0;
    if(tpHandle < 0 || tpHandle >= UDS_TP_MAX_NUMBER)
    {
    	return -1;
    }
    
    //rxobj
    canHandle = g_tpVariable[tpHandle].physicalCanHandle;  

    uint8_t blockSize = 0;
    uint8_t STmin = 0; //2ms?????
    uint32_t frameInterval;
    ret = CanTpDataMultFramGetFlowControl(tpHandle,canHandle,&rxCanMsg,&STmin,&blockSize);
    if(ret!=0)
    {
        return -1;
    }
    if (STmin == 0)
    {
        frameInterval = 0;
    }
    else if (STmin < 128)
    {
        frameInterval = STmin;
    }
    else
    {
        frameInterval = 1;
    }
    multiFrameNum -= 1;
    for (txFrameCount = 0; txFrameCount < multiFrameNum; txFrameCount++)
    {
        int j;
        txCanData[0] = (0x20 | ((txFrameCount + 1) & 0x0f));
        if (txFrameCount < (multiFrameNum - 1))
        {
            txCanDlc = 64;
        }
        else
        {
            txCanDlc = ((txLength - 62 - txFrameCount * 63) + 1); 
        }
        for (j = 0; j < (txCanDlc-1); j++)
        {
            txCanData[j + 1] = txData[62 + txFrameCount * 63 + j];
            
        }

        for(;j<63;j++)
        {
            txCanData[j + 1] = g_tpVariable[tpHandle].pTpParameter->fillByte;
        }
        
        if(frameInterval != 0)
        {
            vTaskDelay( pdMS_TO_TICKS(STmin)); 
        }
        ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg,0); //whl20180613
        memset(rxCanMsg.canData, 0, 64);
        ret = CanHalDiagnosticTransmit(canHandle,txCanId,txCanData,64,0);
        //TBOX_PRINT("can tp wait send %x\r\n",txCanId);
        if (ret != 0)
        {
            result = -1;
            break;
        }
        memset(rxCanMsg.canData, 0, 64);


        //transmitCount+
        if ((blockSize != 0) && ((txFrameCount + 1) >= blockSize))
        {
            //break;//block transmit finished
            //ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, m_flowControlTime);//wait 1000 ms
            ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, g_tpVariable[tpHandle].pTpParameter->N_Bs_enforced);//wait 150 ms
            if (ret != 0)
            {
                result = -1;
                break;//time out
            }
            if (rxCanMsg.dlc < 3)
            {
                result = -1;
                break;//error dlc
            }
            if (0x30 != (rxCanMsg.canData[0] & 0xF0))
            {
                result = -1;
                break;//not flow control frame
            }
            else
            {
                blockSize += blockSize;
            }
         }
    }
    
    canHandle = g_tpVariable[tpHandle].physicalCanHandle;
    ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, 0);//wait 150 ms
    memset(rxCanMsg.canData, 0, 64);
    canHandle = g_tpVariable[tpHandle].functionalCanHandle;
    ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, 0);//wait 150 ms
    memset(rxCanMsg.canData, 0, 64);
    
    /*if (txFrameCount >= multiFrameNum)
    {
        break;//transmit success
    }*/
       
    
    return result;
}

int16_t CanTpSdkDataTransmit(int16_t tpHandle,uint32_t canId,uint8_t *txData,uint16_t txLength,uint8_t functionAddFlag)
{
   int16_t canHandle;
   uint32_t txCanId;
   txCanId = canId;
   if(tpHandle >= UDS_TP_MAX_NUMBER || tpHandle < 0)
   {
	   return -1;
   }
    if(functionAddFlag)
    {
        canHandle = g_tpVariable[tpHandle].functionalCanHandle;
    }
    else
    {
        canHandle = g_tpVariable[tpHandle].physicalCanHandle;
    }
#if(UDS_FRAME_CANFD == 0)
    if(txLength < 8)//single frame
    {
    	uint8_t data[8];
        data[0] = txLength;
        uint16_t i = 0;
        for(i=0;i<txLength;i++)
        {
            data[i+1] = txData[i];
        }
        for(;i<7;i++)
        {
            data[i+1] = g_tpVariable[tpHandle].pTpParameter->fillByte;
        }
        return CanHalDiagnosticTransmit(canHandle,txCanId,data,8,0);
    }

    uint8_t txCanData[8];
    uint8_t txCanDlc;

    txCanDlc = 0;
    uint32_t multiFrameNum = (txLength+1)/(8-1);
    if((txLength + 1) % (8 - 1) != 0)
    {
        multiFrameNum += 1;
    }
    txCanData[0] = (0x10 | (txLength / 256));
    txCanData[1] = (txLength % 256); 
    for (int i = 0; i < 6;i++ )
    {
        txCanData[i+2] = txData[i];
    }
    txCanDlc = 8;

    int16_t ret = CanHalDiagnosticTransmit(canHandle,txCanId,txCanData,txCanDlc,0);
    if (ret != 0)
    {
        return -1;
    }
    ret = CanTpDataMultFramTransmit(tpHandle,canHandle,txCanId,multiFrameNum,txData,txLength);
    if (ret!=0)
    {
        return -1;
    }
#else
    if(txLength < 8)//single frame
    {
    	uint8_t data[8];
        data[0] = txLength;
        uint16_t i = 0;
        for(i=0;i<txLength;i++)
        {
            data[i+1] = txData[i];
        }
        for(;i<7;i++)
        {
            data[i+1] = g_tpVariable[tpHandle].pTpParameter->fillByte;
        }
        return CanHalDiagnosticTransmit(canHandle,txCanId,data,8,3);
    }

    if(txLength < 63)//single frame
    {
    	uint8_t data[64];
        uint8_t txCanDlc;

        if(txLength <= 10)
        {
            txCanDlc = 12;		
        }
        else if((txLength >= 11) && (txLength <= 14))
        {
            txCanDlc = 16;
        }
        else if((txLength >= 15) && (txLength <= 18))
        {
            txCanDlc = 20;
        }
        else if((txLength >= 19) && (txLength <= 22))
        {
            txCanDlc = 24;
        }
        else if((txLength >= 23) && (txLength <= 30))
        {
            txCanDlc = 32;
        }
        else if((txLength >= 31) && (txLength <= 46))
        {
            txCanDlc = 48;
        }
        else if((txLength >= 47) && (txLength <= 62))
        {
            txCanDlc = 64;
        }

        data[0] = 0;
        data[1] = txLength;
        uint16_t i = 0;
        for(i=0;i<txLength;i++)
        {
            data[i+2] = txData[i];
        }
        for(;i<(txCanDlc - 2);i++)
        {
            data[i+2] = g_tpVariable[tpHandle].pTpParameter->fillByte;
        }
        return CanHalDiagnosticTransmit(canHandle,txCanId,data,txCanDlc,3);
    }

    uint8_t txCanData[64];
    uint8_t txCanDlc;

    txCanDlc = 0;
    uint32_t multiFrameNum = (txLength+1)/(64-1);
    if((txLength + 1) % (64 - 1) != 0)
    {
        multiFrameNum += 1;
    }
    txCanData[0] = (0x10 | (txLength / 256));
    txCanData[1] = (txLength % 256); 
    for (int i = 0; i < 62;i++ )
    {
        txCanData[i+2] = txData[i];
    }
    txCanDlc = 64;

    int16_t ret = CanHalDiagnosticTransmit(canHandle,txCanId,txCanData,txCanDlc,3);
    if (ret != 0)
    {
        return -1;
    }
    ret = CanTpDataMultFramTransmitFd(tpHandle,canHandle,txCanId,multiFrameNum,txData,txLength);
    if (ret!=0)
    {
        return -1;
    }
#endif
   
  return 0;

}

void CanTpSdkSetBootMode(int16_t tpHandle,uint8_t bootModeFlag)
{
    if((tpHandle<0)||(tpHandle>=UDS_TP_MAX_NUMBER))
    {
        return;
    }
    g_tpVariable[tpHandle].bootMode = bootModeFlag;

}
