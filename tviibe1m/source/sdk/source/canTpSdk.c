#include "canTpSdk.h"
#include <string.h>
#include "FreeRTOS.h"
#include "timerHal.h"
#include "queue.h"


#define UDS_TP_MAX_NUMBER               4


typedef struct
{
  const CanTpSdkParameter_t *pTpParameter;
  int16_t physicalCanHandle;
  int16_t functionalCanHandle;
  uint32_t physicalTransmitCanId;
  uint32_t frameInterval;
  uint8_t useFlag;
}CanTpVariable_t;

static CanTpVariable_t g_tpVariable[UDS_TP_MAX_NUMBER];

static uint8_t m_bootmode = 0;

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

uint8_t CanHalIsCanFdFrame(const CanHalMsg_t *msg) {
    // 1. 优先通过DLC判断
    if (msg->dlc > 8) {
        return true;
    }
    
    // 2. 通过数据内容判断（例如首帧长度）
    uint8_t pciType = (msg->canData[0] >> 4) & 0x0F;
    if (pciType == 1) {  // 首帧
        uint16_t totalLen = ((msg->canData[0] & 0x0F) << 8) + msg->canData[1];
        if (totalLen > 4095) {
            return true;
        }
    }
    
    // 3. 默认按传统CAN处理
    return false;
}

static int16_t TpDataReceive(int16_t tpHandle, int16_t canHandle, uint8_t *udsData, uint16_t *udsLen)
{
    CanHalMsg_t canRxMsg;
    CanHalMsg_t canTxMsg;

    int16_t ret;
    uint16_t rxLenLeft; 
    uint8_t n_PCItype;
    uint8_t blockSize;
    uint8_t frameCount = 0;
    uint8_t cfNum;  // 连续帧序号
    bool isCanFd = true;  // 标识当前帧是否为CAN FD

    blockSize = g_tpVariable[tpHandle].pTpParameter->blockSize_APP;
    
    if(udsData == NULL || udsLen == NULL)
    {
        return -1;
    }
    
    ret = CanHalDiagnosticReceive(canHandle, &canRxMsg, 0);
    if(0 != ret)
    {
        return -1;
    }
    
    // 判断是否为CAN FD帧
    #if 0
    if (CanHalIsCanFdFrame(&canRxMsg)) {
        isCanFd = true;
    } else {
        isCanFd = false;
    }
	#endif
	cfNum = 0x21;  // CAN FD连续帧序号从0x01开始（高4位为0x0）
receive_again:    
    // 处理CAN FD和CAN的物理/功能CAN句柄
    if(canHandle == g_tpVariable[tpHandle].physicalCanHandle)
    {
        // 物理寻址
    }
    else if(canHandle == g_tpVariable[tpHandle].functionalCanHandle)
    {
        // 功能寻址
        if((canRxMsg.canData[0] >> 4) & 0x0F)
        {
            return -1;
        }
    }  
    else
    {
        return -1;
    }
           
    n_PCItype = (canRxMsg.canData[0] >> 4) & 0x0F;
    
    // 处理单帧数据
    if(0 == n_PCItype) // 单帧(SF)
    {
        uint8_t sf_dl = canRxMsg.canData[0] & 0x0F; // 单帧数据长度
        
        if (isCanFd) {
            // CAN FD单帧处理
            if(sf_dl == 0 && canRxMsg.canData[1] != 0)
            {
                // 扩展格式：数据长度由前两个字节表示
                uint16_t extendedLen = ((uint16_t)canRxMsg.canData[0] << 8) + canRxMsg.canData[1];
                if(extendedLen > 63 || extendedLen > (canRxMsg.dlc - 2))
                {
                    return -1;
                }
                
                memcpy(udsData, &canRxMsg.canData[2], extendedLen);
                *udsLen = extendedLen;
            }
            else
            {
                // 标准格式：数据长度由第一个字节低4位表示
                if(sf_dl < 1 || sf_dl > (canRxMsg.dlc - 1))
                {
                    return -1;
                }
				memcpy(udsData, &canRxMsg.canData[1], sf_dl);
				*udsLen = sf_dl;
            }
        } else {
            // 传统CAN单帧处理 (最大8字节)
            if(sf_dl < 1 || sf_dl > 7) // 传统CAN单帧数据最多7字节
            {
                return -1;
            }
            
            memcpy(udsData, &canRxMsg.canData[1], sf_dl);
            *udsLen = sf_dl;
        }
        
        return 0;
    }
    // 处理首帧数据
    else if(1 == n_PCItype) // 首帧(FF)
    {
        uint16_t totalLen;
        
        if (isCanFd) {
            // CAN FD首帧处理
            totalLen = (((uint16_t)canRxMsg.canData[0] & 0x0F) << 8) + canRxMsg.canData[1];
            *udsLen = totalLen;
            
            // 首帧数据部分长度计算
            uint16_t ffDataLen = canRxMsg.dlc - 2; // 减去前两个长度字节
            
            if(totalLen < 64 || ffDataLen > 62) // CAN FD首帧数据部分最大62字节
            {
                return -1;
            }
            
            memcpy(udsData, &canRxMsg.canData[2], ffDataLen);
            rxLenLeft = totalLen - ffDataLen;
        } else {
            // 传统CAN首帧处理 (最大4095字节)
            totalLen = (((uint16_t)canRxMsg.canData[0] & 0x0F) << 8) + canRxMsg.canData[1];
            *udsLen = totalLen;
            
            // 传统CAN首帧数据部分长度计算 (最多6字节)
            uint16_t ffDataLen = canRxMsg.dlc - 2; // 减去前两个长度字节
            
            if(totalLen < 1 || ffDataLen > 6) // 传统CAN首帧数据部分最多6字节
            {
                return -1;
            }
            
            memcpy(udsData, &canRxMsg.canData[2], ffDataLen);
            rxLenLeft = totalLen - ffDataLen;
        }
        
        // 发送流控制帧(FC)
        uint16_t txCount = canRxMsg.dlc - 2; // 已接收的数据长度
        
        // 发送初始流控制帧
        canTxMsg.dlc = 8;
        canTxMsg.canData[0] = 0x30; // 流控制帧标志
        
        if(m_bootmode)
        {
            canTxMsg.canData[1] = g_tpVariable[tpHandle].pTpParameter->blockSize_boot; 
            canTxMsg.canData[2] = g_tpVariable[tpHandle].pTpParameter->STmin_boot;   
        }
        else
        {
            canTxMsg.canData[1] = g_tpVariable[tpHandle].pTpParameter->blockSize_APP; 
            canTxMsg.canData[2] = g_tpVariable[tpHandle].pTpParameter->STmin_APP;   
        }
        
        // 填充剩余字节
        for (int i = 3; i < 8; i++) {
            canTxMsg.canData[i] = g_tpVariable[tpHandle].pTpParameter->fillByte;
        }
        
        canTxMsg.canId = g_tpVariable[tpHandle].physicalTransmitCanId;
        
        ret = CanHalDiagnosticTransmit(canHandle, canTxMsg.canId, canTxMsg.canData, canTxMsg.dlc, 1);
        if(0 != ret)
        {
            return -1;
        }
        
        // 接收连续帧 - 使用while循环确保接收所有数据
        while(rxLenLeft > 0)
        {
            if((frameCount >= blockSize) && (blockSize != 0))
            {
                // 发送流控制帧继续接收
                canTxMsg.dlc = 8;
                canTxMsg.canData[0] = 0x30;
                canTxMsg.canData[1] = g_tpVariable[tpHandle].pTpParameter->blockSize_APP;
                canTxMsg.canData[2] = g_tpVariable[tpHandle].pTpParameter->STmin_APP;
                
                for (int i = 3; i < 8; i++) {
                    canTxMsg.canData[i] = g_tpVariable[tpHandle].pTpParameter->fillByte;
                }
                
                canTxMsg.canId = g_tpVariable[tpHandle].physicalTransmitCanId;
                
                ret = CanHalDiagnosticTransmit(canHandle, canTxMsg.canId, canTxMsg.canData, canTxMsg.dlc, 1);
                if(0 != ret)
                {
                    return -1;
                }  
                
                frameCount = 0;
            }
            
            // 接收下一帧
            ret = CanHalDiagnosticReceive(canHandle, &canRxMsg, g_tpVariable[tpHandle].pTpParameter->N_Cr_enforced);
            if(0 != ret)
            {
                return -1;
            }
            
            // 检查帧类型
            if((((canRxMsg.canData[0] >> 4) & 0x0F) == 0) || ((canRxMsg.canData[0] & 0xF0) == 0x10))
            {
                // 收到了新的单帧或首帧，重新开始处理
                goto receive_again;
            }
            
            // 检查连续帧序号格式

            if((canRxMsg.canData[0] & 0xF0) != 0x20)  // 传统CAN连续帧高4位为0x2
            {
                return -1;
            }
            
            // 验证连续帧序号
            if(cfNum != canRxMsg.canData[0])
            {
                if ((canRxMsg.canData[0] & 0xF0) == 0x20)  
                {
                    // 连续帧序号不匹配，可能是丢帧
                    return -1;
                }
                
                // 非连续帧，重新接收
                continue;
            }
            
            // 更新连续帧序号
            if(cfNum == 0x2F) {  // 传统CAN序号达到0x2F后循环到0x20
                cfNum = 0x20;
            } else {
                cfNum++;
            }
            
            // 处理连续帧数据
            uint16_t cfDataLen;
            
            if (isCanFd) {
                // CAN FD连续帧数据长度 (最多63字节)
                
				if(rxLenLeft/63 == 0)
				{
					cfDataLen = rxLenLeft%63;
				}
				else
				{
					cfDataLen = canRxMsg.dlc - 1;
					if (cfDataLen > 63) {
						cfDataLen = 63;
					}
				}
            } else {
                // 传统CAN连续帧数据长度 (最多7字节)
                cfDataLen = canRxMsg.dlc - 1;
                
                if (cfDataLen > 7) {
                    cfDataLen = 7;
                }
            }
            
            // 复制数据
            memcpy(udsData + txCount, &canRxMsg.canData[1], cfDataLen);
            txCount += cfDataLen;
            rxLenLeft -= cfDataLen;
            frameCount++;
            
            // 检查是否接收完毕
            if(rxLenLeft <= 0)
            {
                if(txCount != *udsLen)
                {
                    return -1;
                }
                
                return 0;
            }
        }
    }
    else if(2 == n_PCItype) // 连续帧(CF)
    {
        // 不应该在此处收到连续帧，因为没有首帧
        return -1;
    }
    else if(3 == n_PCItype) // 流控制帧(FC)
    {
        // 不应该在此处收到流控制帧
        return -1;
    }
    
    return -1;
}


int16_t CanTpSdkDataReceive(int16_t tpHandle,uint8_t *udsData,uint16_t *udsLen,uint8_t *pFunctionFlag)
{
  int16_t ret;

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

int16_t CanTpSdkDataTransmit(int16_t tpHandle,uint32_t canId,uint8_t *txData,uint16_t txLength,uint8_t functionAddFlag)
{
   int16_t canHandle;
   uint32_t txCanId;
   txCanId = canId;
    if(functionAddFlag)
    {
        canHandle = g_tpVariable[tpHandle].functionalCanHandle;
    }
    else
    {
        canHandle = g_tpVariable[tpHandle].physicalCanHandle;
    }
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
        return CanHalDiagnosticTransmit(canHandle,txCanId,data,8,1);
    }
    
    //multi frame transmit
    uint8_t udsTransmitError = 0;
    uint8_t m_transmitErrorFailed = 1;
    uint8_t m_transmitOk = 0;
    //uint32_t m_flowControlTime = 1000;
    do
    {
    	uint8_t txCanData[8];
    	uint8_t txCanDlc;

        txCanDlc = 0;
        uint32_t multiFrameNum = (txLength+1)/(8-1);
        if((txLength + 1) % (8 - 1) != 0)
        {
            multiFrameNum += 1;
        }
        uint32_t transmitCount = 0;
        txCanData[0] = (0x10 | (txLength / 256));
        txCanData[1] = (txLength % 256); 
        for (int i = 0; i < 6;i++ )
        {
            txCanData[i+2] = txData[i];
        }
        txCanDlc = 8;

        int16_t ret = CanHalDiagnosticTransmit(canHandle,txCanId,txCanData,txCanDlc,1);
        if (ret != 0)
        {
            udsTransmitError = m_transmitErrorFailed;
            break;//error
        }
        transmitCount += 6;
        int32_t txFrameCount = 0;
        
        while (1)
        {
            CanHalMsg_t rxCanMsg;
            if (udsTransmitError != m_transmitOk)
            {
                break;
            }
            //rxobj
            canHandle = g_tpVariable[tpHandle].physicalCanHandle;
            //memset(rxCanMsg.canData, 0, 8);
            //ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, m_flowControlTime);//wait 1000 ms
            ret = CanHalDiagnosticReceive(canHandle,&rxCanMsg, g_tpVariable[tpHandle].pTpParameter->N_Bs_enforced);//wait 150 ms

            if (ret != 0)
            {
                udsTransmitError = m_transmitErrorFailed;
                break;//time out
            }
            if (rxCanMsg.dlc < 3)
            {
                udsTransmitError = m_transmitErrorFailed;
                break;//error dlc
            }
            if(0x00 == (rxCanMsg.canData[0] & 0xF0))//single
            {
                if((rxCanMsg.canData[1]==0x7F)&&(rxCanMsg.canData[1]==0x78))//busy state
                {
                    continue;
                }
                else
                {
                    udsTransmitError = m_transmitErrorFailed;
                    break;//not flow control frame
                }
            }
            if (0x30 != (rxCanMsg.canData[0] & 0xF0))
            {
                udsTransmitError = m_transmitErrorFailed;
                break;//not flow control frame
            }
            if (0 == (rxCanMsg.canData[0] & 0x0F))//success receive
            {
                ;
            }
            else if (1 == (rxCanMsg.canData[0] & 0x0F))//wait frame
            {
                continue;
            }
            else if (2 == (rxCanMsg.canData[0] & 0x0F))//over flow frmae
            {
                udsTransmitError = m_transmitErrorFailed;
                break;//not flow control frame
            }
            else
            {
                udsTransmitError = m_transmitErrorFailed;
                break;//not flow control frame
            }

            uint8_t blockSize = rxCanMsg.canData[1];
            uint8_t STmin = rxCanMsg.canData[2] + 2; //2ms?????
            uint32_t frameInterval;
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
                ret = CanHalDiagnosticTransmit(canHandle,txCanId,txCanData,8,1);
                //TBOX_PRINT("can tp wait send %x\r\n",txCanId);
                if (ret != 0)
                {
                    udsTransmitError = m_transmitErrorFailed;
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
                        udsTransmitError = m_transmitErrorFailed;
                        break;//time out
                    }
                    if (rxCanMsg.dlc < 3)
                    {
                        udsTransmitError = m_transmitErrorFailed;
                        break;//error dlc
                    }
                    if (0x30 != (rxCanMsg.canData[0] & 0xF0))
                    {
                        udsTransmitError = m_transmitErrorFailed;
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
            
            if (udsTransmitError != m_transmitOk)
            {
                break;
            }
            if (txFrameCount >= multiFrameNum)
            {
                break;//transmit success
            }
           
        }
        if (udsTransmitError != m_transmitOk)
        {
            return -1;
        }
        break;

    }while(1);  
   
  return 0;

}

void CanTpSdkSetBootMode(uint8_t bootModeFlag)
{
  m_bootmode = bootModeFlag;
}
