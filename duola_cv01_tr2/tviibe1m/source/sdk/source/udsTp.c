
#include "udsTp.h"
#include "logHal.h"
#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
#include "peripheralHal.h"

#include "FreeRTOS.h"
#include "task.h"

//诊断状态管理
typedef enum
{
    E_REMOTE_STATE_FIRST_FRAME = 0,
    E_REMOTE_STATE_FLOW_CONTROL_FRAME,
    E_REMOTE_STATE_CONSECUTIVE_FRAME,
    E_REMOTE_STATE_FRAME_FINISHED
}RemoteEcuTpState_e;

//udsTp用来设置接收缓存结构体
typedef struct 
{
    RemoteEcuTpState_e tpState;
    uint8_t *pTpBuffer;         //接收buffer
    uint16_t tpBufferSize;      //Buffer大小
    uint16_t tpReceiveCount;    //接收到的实际长度
    uint32_t responseId;        //诊断响应can ID
}FunctionEcu_t;

//udsTp结构体
typedef struct
{
    int16_t	 canHandle;	                 //Can通信句柄
    uint32_t physicalRequestId;	         //物理寻址请求ID
    uint32_t physicalResponseId;         //物理寻址响应ID
    uint32_t functionalRequestId;	     //功能寻址请求ID
    FunctionEcu_t *pFunctionalEcuBuf;    //接收buffer
    uint16_t functionalEcuBufSize;	     //接收buffer大小
    uint16_t functionalEcuCount;         //接收计数
    uint32_t functionalResponseIdMax;    //功能寻址响应最小ID
    uint32_t functionalResponseIdMin;    //功能寻址响应最大ID
    UdsTpParameter_t *pParameter;	     //CanTP参数设置
}RemoteVariable_t;

#define REMOTE_DIAGNOSTIC_INSTANCE_NUM 3 //Can通道数量最大数

static RemoteVariable_t g_udsTp[REMOTE_DIAGNOSTIC_INSTANCE_NUM]; //为每一路定义一个初始化TP结构体
static uint8_t g_handleOpenCount = 0;                             //初始化TP结构体使用计数


/*************************************************
  Function:       UdsTpOpen
  Description:    转发诊断报文获取句柄
  Input:          canChanal:
                  pCanRxbuffer:
                  pBufferNum:
                  pTpParameter:
  Output:         无
  Return:         -1：失败
                  >0:有效句柄
  Others:         
*************************************************/
int16_t UdsTpOpen(uint8_t canChanal,CanHalMsg_t *pCanRxbuffer,uint16_t pBufferNum,UdsTpParameter_t *pTpParameter)
{
    int16_t handle = -1;
    int16_t canHandle;
    
    if(g_handleOpenCount >= REMOTE_DIAGNOSTIC_INSTANCE_NUM)
    {
        return -1;
    }
    canHandle = CanHalOpen(canChanal);
    if(canHandle < 0)
    {
        return -2;
    }
    CanHalSetRxBuffer(canHandle,pCanRxbuffer,pBufferNum);
    handle = g_handleOpenCount;
    g_handleOpenCount++;
    
    g_udsTp[handle].canHandle = canHandle;
    g_udsTp[handle].pParameter=pTpParameter;
    g_udsTp[handle].pFunctionalEcuBuf=NULL;
    g_udsTp[handle].functionalEcuBufSize=0;
    g_udsTp[handle].functionalEcuCount=0;
    
    return handle;
}
/**********************************************************
addressingMode
  0:physical addressing
  1:functional addressig
************************************************************/
int16_t UdsTpSetCanFilter(int16_t udsTpHandle,uint8_t addressingMode)
{
  CanHalMsgFilter_t canFilter;
  
  if(addressingMode)//functional addressing
  {
    if(NULL==g_udsTp[udsTpHandle].pFunctionalEcuBuf)
    {
      canFilter.useStdFilter = 0x00;
      canFilter.canIdStdMin = g_udsTp[udsTpHandle].functionalResponseIdMin;
      canFilter.canIdStdMax = g_udsTp[udsTpHandle].functionalResponseIdMax;    
      canFilter.useExdtFilter = 0x00; 
      canFilter.canIdExtdMin = 0x00;
      canFilter.canIdExtdMax = 0xFFFFFFFF;       
    }
    else
    {
      canFilter.useStdFilter = 0x01;
      canFilter.canIdStdMin = g_udsTp[udsTpHandle].functionalResponseIdMin;
      canFilter.canIdStdMax = g_udsTp[udsTpHandle].functionalResponseIdMax;    
      canFilter.useExdtFilter = 0x00; 
      canFilter.canIdExtdMin = 0x00;
      canFilter.canIdExtdMax = 0xFFFFFFFF;      
    }
    
  }
  else//physical addressing
  {
    canFilter.useStdFilter = 0x01;
    canFilter.canIdStdMin = g_udsTp[udsTpHandle].physicalResponseId;
    canFilter.canIdStdMax = g_udsTp[udsTpHandle].physicalResponseId;    
    canFilter.useExdtFilter = 0x00; 
    canFilter.canIdExtdMin = 0x00;
    canFilter.canIdExtdMax = 0xFFFFFFFF;    
  }
  
  CanHalSetFilter(g_udsTp[udsTpHandle].canHandle,&canFilter);   
  TBOX_PRINT("CanDriverHalSetFilter---%x  \r\n",g_udsTp[udsTpHandle].canHandle);
  return 0;
}
/*************************************************
  Function:       UdsTpSetFunctionId
  Description:    设置功能寻址id
  Input:          handle：udsTp句柄
                  requestId：功能寻址请求ID
  Output:         无
  Return:         函数执行结果 
                  0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t UdsTpSetFunctionId(int16_t handle,uint32_t requestId)
{
    g_udsTp[handle].functionalRequestId=requestId;
    
    return 0;
}

/*************************************************
  Function:       UdsTpTransmit
  Description:    远程诊断报文TP发送接口
  Input:          handle：诊断Tp据句柄
                  typeFlag：诊断报文类型标记 0：物理寻址 1：功能寻址
                  txData：Can数据
                  dataLen：数据长度
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t UdsTpTransmit(int16_t handle,uint8_t typeFlag,uint8_t *txData,uint16_t dataLen,uint8_t CanSendFlag)
{
    int16_t canTpHandle;
    uint32_t txCanId;
    uint8_t fillByte;
    uint8_t udsTransmitError = 0;
    uint8_t m_transmitErrorFailed = 1;
    uint8_t m_transmitOk = 0;
    uint8_t data[8];
    uint8_t dlc = 0;
    uint32_t multiFrameNum;
    uint16_t i= 0,j= 0;
    int16_t ret = -1;
    CanHalMsg_t rxCanMsg;
    uint8_t blockSize = 0;
    uint8_t STmin;
    uint32_t frameInterval; 
    int32_t txFrameCount = 0; 
    
    canTpHandle = g_udsTp[handle].canHandle;
    fillByte = g_udsTp[handle].pParameter->fillByte;
    
    //功能寻址？
    if(typeFlag == 1)
    {
        txCanId = g_udsTp[handle].functionalRequestId;
    }
    else
    {
        txCanId = g_udsTp[handle].physicalRequestId;
    }
    
    //长度<8?
    if(dataLen<8)
    {
        data[0] = dataLen;
        uint16_t i = 0;
        for(i=0;i<dataLen;i++)
        {
            data[i+1] = txData[i];
        }
        for(;i<7;i++)
        {
            data[i+1] = fillByte;
        }
        return CanHalTransmit(canTpHandle,txCanId,data,8,0);
    }
    //初始化及组装第一个包
    dlc = 0;
    //transmitCount = 0;
    multiFrameNum = (dataLen+1)/(8-1);
    if((dataLen + 1) % (8 - 1) != 0)
    {
        multiFrameNum += 1;
    }
    data[0] = (0x10 | (dataLen / 256));
    data[1] = (dataLen % 256);
    for (i = 0; i < 6;i++ )
    {
        data[i+2] = txData[i];
    }
    dlc = 8;
    //发送第一个包
    ret = CanHalTransmit(canTpHandle,txCanId,data,dlc,0);
    if(ret != 0)
    {
        udsTransmitError = m_transmitErrorFailed;
    }
    //transmitCount += 6;
    txFrameCount = 0;
    while(1)
    {
        if(udsTransmitError != m_transmitOk)
        {
            break;
        }
        ret = CanHalReceive(canTpHandle,&rxCanMsg,g_udsTp[handle].pParameter->N_Bs_enforced);
        if(ret == 0)//接收成功
        {
            if(rxCanMsg.dlc < 3)//数据长度是否正确？
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            //单包？
            if(0x00 == (rxCanMsg.canData[0] & 0xF0))
            {
                if((rxCanMsg.canData[1]==0x7F)&&(rxCanMsg.canData[1]==0x78))
                {
                    continue;
                }
                else
                {
                    udsTransmitError = m_transmitErrorFailed;
                    break;
                }
            }
            if(0x30 != (rxCanMsg.canData[0] & 0xF0))
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            if(1 == (rxCanMsg.canData[0] & 0x0F))//wait frame?
            {
                continue;
            }
            else if(2 == (rxCanMsg.canData[0] & 0x0F))//over flow frmae?
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            else if(0 == (rxCanMsg.canData[0] & 0x0F))            //接收成功
            {
                blockSize = rxCanMsg.canData[1];
				if(CanSendFlag != 0)
				{
					STmin = rxCanMsg.canData[2] + 5; //2ms修正值 
				}
				else
				{
					STmin = rxCanMsg.canData[2] + 0; //2ms修正值 
				}
                if (STmin == 0)
                {
                    frameInterval = 0;
                }
                else if(STmin < 128)
                {
                    frameInterval = STmin;
                }
                else
                {
                    frameInterval = 1;
                }
                multiFrameNum -= 1;
                for(txFrameCount = 0;txFrameCount < multiFrameNum;txFrameCount++)
                {
                    data[0]=(0x20| ((txFrameCount+1)&0x0f));
                    if (txFrameCount < (multiFrameNum - 1))
                    {
                        dlc = 8;
                    }
                    else
                    {
                        dlc = ((dataLen - 6 - txFrameCount * 7) + 1); 
                    }
                    for (j = 0; j < (dlc-1); j++)
                    {
                        data[j + 1] = txData[6 + txFrameCount * 7 + j];
                    }
                    for (; j < 7; j++)
                    {
                        data[j + 1] = fillByte;
                    }
                    if(frameInterval != 0)
                    {
						vTaskDelay(STmin);
                    }
                    
                    CanHalReceive(canTpHandle,&rxCanMsg,0); 
                    memset(rxCanMsg.canData, 0, 8);
                    ret=CanHalTransmit(canTpHandle,txCanId,data,8,0);
                    if(ret != 0)
                    {
                        udsTransmitError = m_transmitErrorFailed;
                        break;
                    }
                    if((blockSize != 0) && ((txFrameCount+ 1) >= blockSize))
                    {
                        ret = CanHalReceive(canTpHandle,&rxCanMsg,g_udsTp[handle].pParameter->N_Bs_enforced);
                        if(ret != 0)
                        {
                            udsTransmitError = m_transmitErrorFailed;
                            break;
                        }
                        if(rxCanMsg.dlc < 3)
                        {
                            udsTransmitError = m_transmitErrorFailed;
                            break;
                        }
                        if(0x30!=(rxCanMsg.canData[0]&0xF0))
                        {
                            udsTransmitError = m_transmitErrorFailed;
                            break; 
                        }
                        blockSize += blockSize;
                    }
                    
                }
                CanHalReceive(canTpHandle,&rxCanMsg,0); 
                if((udsTransmitError != m_transmitOk) || (txFrameCount >= multiFrameNum))
                {
                    break;
                }
            }
            else
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            
        }
        else
        {
            udsTransmitError = m_transmitErrorFailed;
            break;
        }
    }
    if (udsTransmitError != m_transmitOk)
    {
        return -1;
    }
    return 0;
}

int16_t UdsTpTransmitExtend(int16_t handle,uint8_t typeFlag,uint8_t *txData,uint16_t dataLen)
{
    int16_t canTpHandle;
    uint32_t txCanId;
    uint8_t fillByte;
    uint8_t udsTransmitError = 0;
    uint8_t m_transmitErrorFailed = 1;
    uint8_t m_transmitOk = 0;
    uint8_t data[8];
    uint8_t dlc = 0;
    uint32_t multiFrameNum;
    uint16_t i= 0,j= 0;
    int16_t ret = -1;
    CanHalMsg_t rxCanMsg;
    uint8_t blockSize = 0;
    uint8_t STmin;; 
    uint32_t frameInterval; 
    int32_t txFrameCount = 0; 
    
    canTpHandle = g_udsTp[handle].canHandle;
    fillByte = g_udsTp[handle].pParameter->fillByte;
    
    //功能寻址？
    if(typeFlag == 1)
    {
        txCanId = g_udsTp[handle].functionalRequestId;
    }
    else
    {
        txCanId = g_udsTp[handle].physicalRequestId;
    }
    
    //长度<8?
    if(dataLen<6)
    {
	    data[0] = txData[0];
        data[1] = dataLen-1;
        uint16_t i = 0;
        for(i=0;i<dataLen;i++)
        {
            data[i+2] = txData[1+i];
        }
        for(;i<7;i++)
        {
            data[i+1] = fillByte;
        }
        return CanHalTransmit(canTpHandle,txCanId,data,8,0);
    }
    //初始化及组装第一个包
    dlc = 0;
    //transmitCount = 0;
    multiFrameNum = (dataLen+1)/(8-1);
    if((dataLen + 1) % (8 - 1) != 0)
    {
        multiFrameNum += 1;
    }
	data[0] = txData[0];
    data[1] = (0x10 | (dataLen / 256));
    data[2] = (dataLen % 256);
    for (i = 0; i < 5;i++ )
    {
        data[i+3] = txData[i];
    }
    dlc = 8;
    //发送第一个包
    ret = CanHalTransmit(canTpHandle,txCanId,data,dlc,0);
    if(ret != 0)
    {
        udsTransmitError = m_transmitErrorFailed;
    }
    //transmitCount += 6;
    txFrameCount = 0;
    while(1)
    {
        if(udsTransmitError != m_transmitOk)
        {
            break;
        }
        ret = CanHalReceive(canTpHandle,&rxCanMsg,g_udsTp[handle].pParameter->N_Bs_enforced);
        if(ret == 0)//接收成功
        {
            if(rxCanMsg.dlc < 3)//数据长度是否正确？
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            //单包  47 
            if(0x00 == (rxCanMsg.canData[1] & 0xF0))
            {
                if((rxCanMsg.canData[2]==0x7F)&&(rxCanMsg.canData[2]==0x78))
                {
                    continue;
                }
                else
                {
                    udsTransmitError = m_transmitErrorFailed;
                    break;
                }
            }
            if(0x30 != (rxCanMsg.canData[1] & 0xF0))
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            if(1 == (rxCanMsg.canData[1] & 0x0F))//wait frame?
            {
                continue;
            }
            else if(2 == (rxCanMsg.canData[1] & 0x0F))//over flow frmae?
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            else if(0 == (rxCanMsg.canData[1] & 0x0F))            //接收成功
            {
                blockSize = rxCanMsg.canData[2];
                STmin = rxCanMsg.canData[3] + 0; //2ms修正值 
                if (STmin == 0)
                {
                    frameInterval = 0;
                }
                else if(STmin < 128)
                {
                    frameInterval = STmin;
                }
                else
                {
                    frameInterval = 1;
                }
                multiFrameNum -= 1;
                for(txFrameCount = 0;txFrameCount < multiFrameNum;txFrameCount++)
                {
				  	data[0]=txData[0];
                    data[1]=(0x20| ((txFrameCount+1)&0x0f));
                    if (txFrameCount < (multiFrameNum - 1))
                    {
                        dlc = 8;
                    }
                    else
                    {
                        dlc = ((dataLen - 5 - txFrameCount * 6) + 1); 
                    }
                    for (j = 0; j < (dlc-1); j++)
                    {
                        data[j + 1] = txData[5 + txFrameCount * 6 + j];
                    }
                    for (; j < 6; j++)
                    {
                        data[j + 1] = fillByte;
                    }
                    if(frameInterval != 0)
                    {
						vTaskDelay( pdMS_TO_TICKS(STmin));
                    }
                    
                    CanHalReceive(canTpHandle,&rxCanMsg,0); 
                    memset(rxCanMsg.canData, 0, 8);
                    ret=CanHalTransmit(canTpHandle,txCanId,data,8,0);
                    if(ret != 0)
                    {
                        udsTransmitError = m_transmitErrorFailed;
                        break;
                    }
                    if((blockSize != 0) && ((txFrameCount+ 1) >= blockSize))
                    {
                        ret = CanHalReceive(canTpHandle,&rxCanMsg,g_udsTp[handle].pParameter->N_Bs_enforced);
                        if(ret != 0)
                        {
                            udsTransmitError = m_transmitErrorFailed;
                            break;
                        }
                        if(rxCanMsg.dlc < 3)
                        {
                            udsTransmitError = m_transmitErrorFailed;
                            break;
                        }
                        if(0x30!=(rxCanMsg.canData[0]&0xF0))
                        {
                            udsTransmitError = m_transmitErrorFailed;
                            break; 
                        }
                        blockSize += blockSize;
                    }
                    
                }
                CanHalReceive(canTpHandle,&rxCanMsg,0); 
                if((udsTransmitError != m_transmitOk) || (txFrameCount >= multiFrameNum))
                {
                    break;
                }
            }
            else
            {
                udsTransmitError = m_transmitErrorFailed;
                break;
            }
            
        }
        else
        {
            udsTransmitError = m_transmitErrorFailed;
            break;
        }
    }
    if (udsTransmitError != m_transmitOk)
    {
        return -1;
    }
    return 0;
}
int16_t UdsTpTransmitFd(int16_t handle, uint8_t typeFlag, uint8_t *txData, uint16_t dataLen,uint8_t CanSendFlag)
{
	int16_t canTpHandle;
	uint32_t txCanId;
	uint8_t fillByte;
	uint8_t udsTransmitError = 0;
	uint8_t m_transmitErrorFailed = 1;
	uint8_t m_transmitOk = 0;
	uint8_t data[64];
	uint8_t dlc = 0;
	uint32_t multiFrameNum;
	uint16_t i= 0,j= 0;
	int16_t ret = -1;
	CanHalMsg_t rxCanMsg;
	uint8_t blockSize = 0;
	uint8_t STmin;; 
	uint32_t frameInterval; 
	int32_t txFrameCount = 0; 
	
	canTpHandle = g_udsTp[handle].canHandle;
	fillByte = g_udsTp[handle].pParameter->fillByte;
	
	//功能寻址？
	if(typeFlag == 1)
	{
		txCanId = g_udsTp[handle].functionalRequestId;
	}
	else
	{
		txCanId = g_udsTp[handle].physicalRequestId;
	}
#if 0	
	//长度<8?
	if(dataLen<8)
	{
		data[0] = 0x00;
		data[1] = dataLen;
		uint16_t i = 0;
		for(i=0;i<dataLen;i++)
		{
			data[i+2] = txData[i];
		}
		for(;i<62;i++)
		{
			data[i+2] = fillByte;
		}
		return CanHalTransmit(canTpHandle,txCanId,data,64,1);
	}
#else	
    if(dataLen<64)
    {
		if(dataLen<=7)
		{
			data[0] = dataLen;
			uint16_t i = 0;
			for(i=0;i<dataLen;i++)
			{
				data[i+1] = txData[i];
			}
	        for(;i<7;i++)
	        {
	            data[i+1] = fillByte;
	        }
	        return CanHalTransmit(canTpHandle,txCanId,data,8,1);
		}
		else 
		{
			uint8_t DataLen = 0;
			data[0] = 0x00;
			data[1] = dataLen;
			uint16_t i = 0;
			for(i=0;i<dataLen;i++)
			{
				data[i+2] = txData[i];
			}
			if((dataLen + 2) % (8) != 0)
			{
				DataLen = (((dataLen + 2) / (8))+1)*8;
			}
			else
			{
				DataLen = dataLen;
			}
			
	        for(;i<DataLen;i++)
	        {
	            data[i+2] = fillByte;
	        }
	        return CanHalTransmit(canTpHandle,txCanId,data,DataLen,1);
		}
		
    }
#endif	
	//初始化及组装第一个包
	dlc = 0;
	//transmitCount = 0;
	uint8_t ffDataLen = (dataLen > 62) ? 62 : dataLen;
	
	multiFrameNum = (dataLen+1)/(64-1);
	if((dataLen + 1) % (64 - 1) != 0)
	{
		multiFrameNum += 1;
	}
	
	data[0] = (0x10 | (dataLen / 256));
	data[1] = (dataLen % 256);
	
	for (i = 0; i < ffDataLen;i++ )
	{
		data[i+2] = txData[i];
	}
	dlc = 64;
	//发送第一个包
	ret = CanHalTransmit(canTpHandle,txCanId,data,dlc,1);
	
	if(ret != 0)
	{
		udsTransmitError = m_transmitErrorFailed;
	}
	
	//transmitCount += 6;
	txFrameCount = 0;
	while(1)
	{
		if(udsTransmitError != m_transmitOk)
		{
			break;
		}
		ret = CanHalReceive(canTpHandle,&rxCanMsg,g_udsTp[handle].pParameter->N_Bs_enforced);
		if(ret == 0)//接收成功
		{
			if(rxCanMsg.dlc < 3)//数据长度是否正确？
			{
				udsTransmitError = m_transmitErrorFailed;
				break;
			}
			//单包？
			if(0x00 == (rxCanMsg.canData[0] & 0xF0))
			{
				if((rxCanMsg.canData[2]==0x7F)&&(rxCanMsg.canData[3]==0x78))
				{
					continue;
				}
				else
				{
					udsTransmitError = m_transmitErrorFailed;
					break;
				}
			}
			if(0x30 != (rxCanMsg.canData[0] & 0xF0))
			{
				udsTransmitError = m_transmitErrorFailed;
				break;
			}
			if(1 == (rxCanMsg.canData[0] & 0x0F))//wait frame?
			{
				continue;
			}
			else if(2 == (rxCanMsg.canData[0] & 0x0F))//over flow frmae?
			{
				udsTransmitError = m_transmitErrorFailed;
				break;
			}
			else if(0 == (rxCanMsg.canData[0] & 0x0F))			  //接收成功
			{
				blockSize = rxCanMsg.canData[1];
				if(CanSendFlag != 0)
				{
					STmin = rxCanMsg.canData[2] + 5; //2ms修正值 
				}
				else
				{
					STmin = rxCanMsg.canData[2] + 0; //2ms修正值 
				}
				if (STmin == 0)
				{
					frameInterval = 0;
				}
				else if(STmin < 128)
				{
					frameInterval = STmin;
				}
				else
				{
					frameInterval = 1;
				}
				multiFrameNum -= 1;
				for(txFrameCount = 0;txFrameCount < multiFrameNum;txFrameCount++)
				{
					data[0]=(0x20| ((txFrameCount+1)&0x0f));
					if (txFrameCount < (multiFrameNum - 1))
					{
						dlc = 64;
					}
					else
					{
						//dlc = ((dataLen - 62 - txFrameCount * 63) + 1); 
						dlc = 64;
					}
					for (j = 0; j < (dlc-1); j++)
					{
						data[j + 1] = txData[62 + txFrameCount * 63 + j];
					}
					for (; j < 63; j++)
					{
						data[j + 1] = fillByte;
					}
					if(frameInterval != 0)
					{
						vTaskDelay(STmin);
					}
					
					CanHalReceive(canTpHandle,&rxCanMsg,0); 
					memset(rxCanMsg.canData, 0, 64);
					
					ret=CanHalTransmit(canTpHandle,txCanId,data,64,1);
					if(ret != 0)
					{
						udsTransmitError = m_transmitErrorFailed;
						break;
					}
					
					if((blockSize != 0) && ((txFrameCount+ 1) >= blockSize))
					{
						ret = CanHalReceive(canTpHandle,&rxCanMsg,g_udsTp[handle].pParameter->N_Bs_enforced);
						if(ret != 0)
						{
							udsTransmitError = m_transmitErrorFailed;
							break;
						}
						if(rxCanMsg.dlc < 3)
						{
							udsTransmitError = m_transmitErrorFailed;
							break;
						}
						if(0x30!=(rxCanMsg.canData[0]&0xF0))
						{
							udsTransmitError = m_transmitErrorFailed;
							break; 
						}
						blockSize += blockSize;
					}
					
				}
				CanHalReceive(canTpHandle,&rxCanMsg,0); 
				if((udsTransmitError != m_transmitOk) || (txFrameCount >= multiFrameNum))
				{
					break;
				}
			}
			else
			{
				udsTransmitError = m_transmitErrorFailed;
				break;
			}
			
		}
		else
		{
			udsTransmitError = m_transmitErrorFailed;
			break;
		}
	}
	if (udsTransmitError != m_transmitOk)
	{
		return -1;
	}
	return 0;
}

/*************************************************
  Function:       UdsTpReceive
  Description:    获取mcu设置单个参数到CPU的请求包
  Input:          udsTpHandle：接收usd响应句柄
                  pData：接收响应数据
                  dataLen：接收数据长度
                  waitTime：接收超时时间设置 单位：ms
  Output:         无
  Return:         0：接收数据成功 
                  -1：未接收到数据
  Others:         
*************************************************/
int16_t UdsTpReceive(int16_t udsTpHandle,uint8_t *pData,uint16_t *dataLen,uint32_t waitTime)
{
    int16_t canHandle;
    CanHalMsg_t canRxMsg;
    CanHalMsg_t  canTxMsg;
    int16_t ret;
    uint16_t rxLenLeft; 
    uint8_t n_PCItype;
    uint8_t blockSize;
    uint8_t STmin;
    uint8_t FrameCount = 0;
    uint8_t CF_num = 0x21;
    uint8_t fillByte;
    uint16_t txCount = 0;
    uint16_t i;
    
    canHandle = g_udsTp[udsTpHandle].canHandle;
    fillByte = g_udsTp[udsTpHandle].pParameter->fillByte;
    blockSize = 0x08;
    STmin = 0x14;
    
    if(pData==NULL||dataLen==NULL)
    {
        return -1;
    }
    ret = CanHalReceive(canHandle,&canRxMsg,waitTime);
    if(ret != 0)
    {
        return -1;
    }
    
    while(1)
    {
        n_PCItype = (canRxMsg.canData[0]>>4)&0x0F;
        if(0 == n_PCItype)
        {
            if((canRxMsg.canData[0] & 0x0f) > 7)
            {
                return -1;
            }
            memcpy(pData,&canRxMsg.canData[1],7);
            *dataLen = canRxMsg.canData[0]&0x0F;
            if(*dataLen > (canRxMsg.dlc - 1))
            {
                return -1;
            }
            return 0;
        }
        else if((2 == n_PCItype) || (3 == n_PCItype))
        {
            return -1;
        }
        else if(1 == n_PCItype)
        {
            txCount = 0;
            rxLenLeft = (((uint16_t)canRxMsg.canData[0]&0x0F) << 8) + canRxMsg.canData[1];
            *dataLen = rxLenLeft;
            if(rxLenLeft < 8)
            {
                return -1;
            }
            memcpy(pData,&canRxMsg.canData[2], 6);
            rxLenLeft -= 6;
            txCount += 6;
            
            while(1)
            {
                canTxMsg.dlc = 8;
                canTxMsg.canData[0] = 0x30;
                canTxMsg.canData[1] = blockSize; 
                canTxMsg.canData[2] = STmin; 
                canTxMsg.canData[3] = fillByte; 
                canTxMsg.canData[4] = fillByte;
                canTxMsg.canData[5] = fillByte; 
                canTxMsg.canData[6] = fillByte;
                canTxMsg.canData[7] = fillByte;
                canTxMsg.canId=g_udsTp[udsTpHandle].physicalRequestId;
                
                ret = CanHalTransmit(canHandle,canTxMsg.canId, canTxMsg.canData,canTxMsg.dlc,0);
                if(ret != 0)
                {
                    return -1;
                }
                
                for(i = 0;i<30;i++)
                {
                    if(rxLenLeft>7)
                    {
                        if(FrameCount >= blockSize)
                        {
                            canTxMsg.dlc = 8;
                            canTxMsg.canData[0] = 0x30;
                            canTxMsg.canData[1] = blockSize; 
                            canTxMsg.canData[2] = STmin; 
                            canTxMsg.canData[3] = fillByte; 
                            canTxMsg.canData[4] = fillByte;
                            canTxMsg.canData[5] = fillByte; 
                            canTxMsg.canData[6] = fillByte;
                            canTxMsg.canData[7] = fillByte;
                            canTxMsg.canId=g_udsTp[udsTpHandle].physicalRequestId;
                            
                            ret = CanHalTransmit(canHandle,canTxMsg.canId, canTxMsg.canData,canTxMsg.dlc,0);
                            if(ret != 0)
                            {
                                return -1;
                            }
                            FrameCount = 0;
                        }
                        
                        ret = CanHalReceive(canHandle,&canRxMsg,g_udsTp[udsTpHandle].pParameter->N_Cr_enforced);
                        if(ret != 0)
                        {
                            return -1;
                        }
                        if((((canRxMsg.canData[0]>>4)&0x0f)==0)||((canRxMsg.canData[0]&0xF0)==0X10))
                        {
                            break;//////////////////////////////////////////////////
                        }
                        if(CF_num != canRxMsg.canData[0])
                        {
                            if((canRxMsg.canData[0] & 0xf0) == 0x20)
                            {
                                return -1;
                            }
                            else
                            {
                                continue;
                            }
                        }
                        else
                        {
                            if(CF_num == 0x2F)
                            {
                                CF_num = 0x20;
                            }
                            else
                            {
                                CF_num++;
                            }
                            memcpy(pData+txCount,&canRxMsg.canData[1],(canRxMsg.dlc - 1));
                            txCount += (canRxMsg.dlc - 1); 
                            rxLenLeft -= 7;
                            FrameCount ++;
                        }
                    }
                    else
                    {
                        ret = CanHalReceive(canHandle,&canRxMsg,g_udsTp[udsTpHandle].pParameter->N_Cr_enforced);
                        if(ret != 0)
                        {
                            return -1;
                        }
                        if((((canRxMsg.canData[0]>>4)&0x0f)==0)||((canRxMsg.canData[0]&0xF0)==0X10))
                        {
                            break;///////////////////////////////////////////////
                        }
                        else
                        {
                            if(CF_num != canRxMsg.canData[0])
                            {
                                if((canRxMsg.canData[0] & 0xf0) == 0x20)
                                {
                                    return -1;
                                }
                                else
                                {
                                    continue;
                                }
                            }
                            else
                            {
                                if(CF_num == 0x2F)
                                {
                                    CF_num = 0x20;
                                }
                                else
                                {
                                    CF_num++;
                                }
                                memcpy(pData+txCount,&canRxMsg.canData[1],(canRxMsg.dlc - 1));
                                txCount += (canRxMsg.dlc - 1); 
                                
                                if(txCount < *dataLen)
                                {
                                    return -1;
                                }
                                else
                                {
                                    rxLenLeft = 0; 
                                    return 0;
                                }
                            }
                        }
                    }
                }
                break;
            }
            
        }
        else
        {
            return -1;
        }
    
    }

}
int16_t UdsTpReceiveExtend(int16_t udsTpHandle,uint8_t *pData,uint16_t *dataLen,uint32_t waitTime)
{
    int16_t canHandle;
    CanHalMsg_t canRxMsg;
    CanHalMsg_t  canTxMsg;
    int16_t ret;
    uint16_t rxLenLeft; 
    uint8_t n_PCItype;
    uint8_t blockSize;
    uint8_t STmin;
    uint8_t FrameCount = 0;
    uint8_t CF_num = 0x21;
    uint8_t fillByte;
    uint16_t txCount = 0;
    uint16_t i;
    
    canHandle = g_udsTp[udsTpHandle].canHandle;
    fillByte = g_udsTp[udsTpHandle].pParameter->fillByte;
    blockSize = 0x08;
    STmin = 0x14;
    
    if(pData==NULL||dataLen==NULL)
    {
        return -1;
    }
    ret = CanHalReceive(canHandle,&canRxMsg,waitTime);
    if(ret != 0)
    {
        return -1;
    }
    
    while(1)
    {
        n_PCItype = (canRxMsg.canData[1]>>4)&0x0F;
        if(0 == n_PCItype)
        {
            if((canRxMsg.canData[1] & 0x0f) > 7)
            {
                return -1;
            }
			pData[0] = canRxMsg.canData[0];
            memcpy(pData,&canRxMsg.canData[2],6);
            *dataLen = (canRxMsg.canData[1]&0x0F)+1;
            if(*dataLen > (canRxMsg.dlc - 2))
            {
                return -1;
            }
            return 0;
        }
        else if((2 == n_PCItype) || (3 == n_PCItype))
        {
            return -1;
        }
        else if(1 == n_PCItype)
        {
            txCount = 0;
            rxLenLeft = (((uint16_t)canRxMsg.canData[1]&0x0F) << 8) + canRxMsg.canData[2];
            *dataLen = rxLenLeft;
            if(rxLenLeft < 8)
            {
                return -1;
            }
			pData[0] = canRxMsg.canData[0];
            memcpy(pData,&canRxMsg.canData[3], 5);
            rxLenLeft -= 5;
            txCount += 6;
            
            while(1)
            {
                canTxMsg.dlc = 8;
				canTxMsg.canData[0] = 0x47;
                canTxMsg.canData[1] = 0x30;
                canTxMsg.canData[2] = blockSize; 
                canTxMsg.canData[3] = STmin; 
                canTxMsg.canData[4] = fillByte; 
                canTxMsg.canData[5] = fillByte;
                canTxMsg.canData[6] = fillByte; 
                canTxMsg.canData[7] = fillByte;
                
                canTxMsg.canId=g_udsTp[udsTpHandle].physicalRequestId;
                
                ret = CanHalTransmit(canHandle,canTxMsg.canId, canTxMsg.canData,canTxMsg.dlc,0);
                if(ret != 0)
                {
                    return -1;
                }
                
                for(i = 0;i<30;i++)
                {
                    if(rxLenLeft>7)
                    {
                        if(FrameCount >= blockSize)
                        {
                            canTxMsg.dlc = 8;
                            canTxMsg.canData[0] = 0x47;
							canTxMsg.canData[1] = 0x30;
							canTxMsg.canData[2] = blockSize; 
							canTxMsg.canData[3] = STmin; 
							canTxMsg.canData[4] = fillByte; 
							canTxMsg.canData[5] = fillByte;
							canTxMsg.canData[6] = fillByte; 
							canTxMsg.canData[7] = fillByte;
                            canTxMsg.canId=g_udsTp[udsTpHandle].physicalRequestId;
                            
                            ret = CanHalTransmit(canHandle,canTxMsg.canId, canTxMsg.canData,canTxMsg.dlc,0);
                            if(ret != 0)
                            {
                                return -1;
                            }
                            FrameCount = 0;
                        }
                        
                        ret = CanHalReceive(canHandle,&canRxMsg,g_udsTp[udsTpHandle].pParameter->N_Cr_enforced);
                        if(ret != 0)
                        {
                            return -1;
                        }
                        if((((canRxMsg.canData[1]>>4)&0x0f)==0)||((canRxMsg.canData[1]&0xF0)==0X10))
                        {
                            break;//////////////////////////////////////////////////
                        }
                        if(CF_num != canRxMsg.canData[1])
                        {
                            if((canRxMsg.canData[1] & 0xf0) == 0x20)
                            {
                                return -1;
                            }
                            else
                            {
                                continue;
                            }
                        }
                        else
                        {
                            if(CF_num == 0x2F)
                            {
                                CF_num = 0x20;
                            }
                            else
                            {
                                CF_num++;
                            }
                            memcpy(pData+txCount,&canRxMsg.canData[2],(canRxMsg.dlc - 2));
                            txCount += (canRxMsg.dlc - 2); 
                            rxLenLeft -= 6;
                            FrameCount ++;
                        }
                    }
                    else
                    {
                        ret = CanHalReceive(canHandle,&canRxMsg,g_udsTp[udsTpHandle].pParameter->N_Cr_enforced);
                        if(ret != 0)
                        {
                            return -1;
                        }
                        if((((canRxMsg.canData[1]>>4)&0x0f)==0)||((canRxMsg.canData[1]&0xF0)==0X10))
                        {
                            break;///////////////////////////////////////////////
                        }
                        else
                        {
                            if(CF_num != canRxMsg.canData[1])
                            {
                                if((canRxMsg.canData[1] & 0xf0) == 0x20)
                                {
                                    return -1;
                                }
                                else
                                {
                                    continue;
                                }
                            }
                            else
                            {
                                if(CF_num == 0x2F)
                                {
                                    CF_num = 0x20;
                                }
                                else
                                {
                                    CF_num++;
                                }
                                memcpy(pData+txCount,&canRxMsg.canData[2],(canRxMsg.dlc - 2));
                                txCount += (canRxMsg.dlc - 2); 
                                
                                if(txCount < *dataLen)
                                {
                                    return -1;
                                }
                                else
                                {
                                    rxLenLeft = 0; 
                                    return 0;
                                }
                            }
                        }
                    }
                }
                break;
            }
            
        }
        else
        {
            return -1;
        }
    
    }

}

int16_t UdsTpReceiveFd(int16_t udsTpHandle,uint8_t *pData,uint16_t *dataLen,uint32_t waitTime)
{
	int16_t canHandle;
	CanHalMsg_t canRxMsg;
	CanHalMsg_t  canTxMsg;
	int16_t ret;
	uint16_t rxLenLeft; 
	uint8_t n_PCItype;
	uint8_t blockSize;
	uint8_t STmin;
	uint8_t FrameCount = 0;
	uint8_t CF_num = 0x01;
	uint8_t fillByte;
	uint16_t txCount = 0;
	uint16_t i;
    uint8_t FrameSum = 0; 
	
	canHandle = g_udsTp[udsTpHandle].canHandle;
	fillByte = g_udsTp[udsTpHandle].pParameter->fillByte;
	blockSize = 0x08;
	STmin = 0x14;
	
	if(pData==NULL||dataLen==NULL)
	{
		return -1;
	}
	ret = CanHalReceive(canHandle,&canRxMsg,waitTime);
	if(ret != 0)
	{
		return -1;
	}
	
	while(1)
	{
		n_PCItype = (canRxMsg.canData[0]>>4)&0x0F;
        if(0 == n_PCItype)//single frame
        {
			uint8_t sf_dl = canRxMsg.canData[0] & 0x0F; // 单帧数据长度
			// CAN FD单帧处理
            if(sf_dl == 0 && canRxMsg.canData[1] != 0)
            {
                // 扩展格式：数据长度由前两个字节表示
                uint16_t extendedLen = ((uint16_t)canRxMsg.canData[0] << 8) + canRxMsg.canData[1];
                if(extendedLen > 63 || extendedLen > (canRxMsg.dlc - 2))
                {
                    return -1;
                }
                
                memcpy(pData, &canRxMsg.canData[2], extendedLen);
                *dataLen = extendedLen;
            }
            else
            {
                // 标准格式：数据长度由第一个字节低4位表示
                if(sf_dl < 1)
                {
                    return -1;
                }
                
                memcpy(pData, &canRxMsg.canData[1], sf_dl);
                *dataLen = sf_dl;
            }
            return 0;
        }
		else if((2 == n_PCItype) || (3 == n_PCItype))
		{
			return -1;
		}
		else if(1 == n_PCItype)
		{
			uint16_t totalLen;
            // CAN FD首帧处理
            totalLen = (((uint16_t)canRxMsg.canData[0] & 0x0F) << 8) + canRxMsg.canData[1];
            *dataLen = totalLen;
            
            // 首帧数据部分长度计算
            uint16_t ffDataLen = canRxMsg.dlc - 2; // 减去前两个长度字节
            
            if(totalLen < 64 || ffDataLen > 62) // CAN FD首帧数据部分最大62字节
            {
                return -1;
            }
            
            memcpy(pData, &canRxMsg.canData[2], ffDataLen);
            rxLenLeft = totalLen - ffDataLen;
			txCount = ffDataLen;
			// 发送初始流控制帧
			canTxMsg.dlc = 8;
			canTxMsg.canData[0] = 0x30; // 流控制帧标志
			canTxMsg.canData[1] = blockSize; 
			canTxMsg.canData[2] = STmin;
			for (int i = 3; i < 8; i++) {
				canTxMsg.canData[i] = fillByte;
			}
			canTxMsg.canId=g_udsTp[udsTpHandle].physicalRequestId;
			
			txCount = 0;
			rxLenLeft = (((uint16_t)canRxMsg.canData[0]&0x0F) << 8) + canRxMsg.canData[1];
			*dataLen = rxLenLeft;
			if(rxLenLeft < 64)
			{
				return -1;
			}
			ret = CanHalDiagnosticTransmit(canHandle, canTxMsg.canId, canTxMsg.canData, canTxMsg.dlc, 1);
			if(0 != ret)
			{
				return -1;
			}
			
			// 接收连续帧 - 使用while循环确保接收所有数据
			while(rxLenLeft > 0)
			{
				if((FrameCount >= blockSize) && (blockSize != 0))
				{
					// 发送流控制帧继续接收
					canTxMsg.dlc = 8;
					canTxMsg.canData[0] = 0x30;
					canTxMsg.canData[1] = blockSize; 
					canTxMsg.canData[2] = STmin;
					
					for (int i = 3; i < 8; i++) {
						canTxMsg.canData[i] = fillByte;
					}
					
					canTxMsg.canId=g_udsTp[udsTpHandle].physicalRequestId;
					
					ret = CanHalDiagnosticTransmit(canHandle, canTxMsg.canId, canTxMsg.canData, canTxMsg.dlc, 1);
					if(0 != ret)
					{
						return -1;
					}  
					
					FrameCount = 0;
				}
				
				ret = CanHalReceive(canHandle,&canRxMsg,g_udsTp[udsTpHandle].pParameter->N_Cr_enforced);
				if(ret != 0)
				{
					return -1;
				}
				// 检测到新的单帧或首帧
                if(((canRxMsg.canData[0] >> 4) & 0x0F) == 0 || (canRxMsg.canData[0] & 0xF0) == 0x10) 
				{
                    break;
                }
			    // 检查连续帧序号格式
	            if((canRxMsg.canData[0] & 0xF0) != 0x00)  // CAN FD连续帧高4位为0x0
	            {
	                return -1;
	            }
				// 验证序号
                if (CF_num != canRxMsg.canData[0]) {
                    if ((canRxMsg.canData[0] & 0xF0) == 0x00)
					{
                        return -1; // 序号不匹配且格式正确，视为错误
                    }
                    continue; // 否则重新接收
                }
	            // 更新连续帧序号
                if(CF_num == 0x0F) // CAN FD序号达到0x0F后循环到0x00
				{  
                    CF_num = 0x00;
                } else {
                    CF_num++;
                }
				// 处理连续帧数据
	            uint16_t cfDataLen;
            
                // CAN FD连续帧数据长度 (最多63字节)
                cfDataLen = canRxMsg.dlc - 1;
                
                if (cfDataLen > 63) {
                    cfDataLen = 63;
                }
				
                memcpy(pData + txCount, &canRxMsg.canData[1], cfDataLen);
                txCount += cfDataLen;
                rxLenLeft -= cfDataLen;
                FrameCount++;

	            // 检查是否接收完毕
	            if(rxLenLeft <= 0)
	            {
	                if(txCount != *dataLen)
	                {
	                    return -1;
	                }
	                
	                return 0;
	            }
				
			}
			break; // 退出首帧处理循环
		} 
		// 未知帧类型
		else 
		{
			return -1;
		}
	}
	return -1;
}
/*************************************************
  Function:       UdsTpPhyAddressSetCanId
  Description:    USD TP物理寻址设置canID
  Input:          handle：udsTp句柄
                  reqCanId：诊断请求ID
                  respCanId：对应的响应ID
  Output:         无
  Return:         
  Others:         
*************************************************/
int16_t UdsTpFunAddressSetCanId(int16_t handle,uint32_t respCanId)
{
	if(handle < 0 || handle >=REMOTE_DIAGNOSTIC_INSTANCE_NUM)
	{
		return -1;
	}
	g_udsTp[handle].functionalResponseIdMax=respCanId;
	g_udsTp[handle].functionalResponseIdMin=respCanId;
	return 0;
}

int16_t UdsTpPhyAddressSetCanId(int16_t handle,uint32_t reqCanId,uint32_t respCanId)
{
    if(handle < 0 || handle >=REMOTE_DIAGNOSTIC_INSTANCE_NUM)
    {
        return -1;
    }
    g_udsTp[handle].physicalRequestId=reqCanId;
    g_udsTp[handle].physicalResponseId=respCanId;
    return 0;
}

/*************************************************
  Function:       UdsTpSetFilter
  Description:    UDS诊断设置filter
  Input:          handle：UdsTp 通信句柄
                  respType：诊断请求类型0：物理寻址 1：功能寻址
  Output:         无
  Return:         
  Others:         
*************************************************/
int16_t UdsTpSetFilter(int16_t handle,uint8_t respType)
{
    CanHalMsgFilter_t canFilter;
    //功能寻址？
    if(respType == 1)
    {
        if(NULL==g_udsTp[handle].pFunctionalEcuBuf)
        {
            canFilter.useStdFilter = 0x00;
            canFilter.canIdStdMin = g_udsTp[handle].functionalResponseIdMin;
            canFilter.canIdStdMax = g_udsTp[handle].functionalResponseIdMax;  
            canFilter.useExdtFilter = 0x00; 
            canFilter.canIdExtdMin = 0x00;
            canFilter.canIdExtdMax = 0xFFFFFFFF;
        }
        else
        {
            canFilter.useStdFilter = 0x01;
            canFilter.canIdStdMin = g_udsTp[handle].functionalResponseIdMin;
            canFilter.canIdStdMax = g_udsTp[handle].functionalResponseIdMax;  
            canFilter.useExdtFilter = 0x00; 
            canFilter.canIdExtdMin = 0x00;
            canFilter.canIdExtdMax = 0xFFFFFFFF;
        }
    }
    else
    {
        canFilter.useStdFilter = 0x01;
        canFilter.canIdStdMin = g_udsTp[handle].physicalResponseId;
        canFilter.canIdStdMax = g_udsTp[handle].physicalResponseId;
        canFilter.useExdtFilter = 0x00; 
        canFilter.canIdExtdMin = 0x00;
        canFilter.canIdExtdMax = 0xFFFFFFFF;
    }
    CanHalSetFilter(g_udsTp[handle].canHandle,&canFilter);
    return 0;
}

/*************************************************
  Function:       UdsTpClearRecvBuffer
  Description:    UDS诊断请求请求清空接收buf
  Input:          handle：UdsTp 通信句柄
  Output:         无
  Return:         
  Others:         
*************************************************/
void UdsTpClearRecvBuffer(int16_t handle)
{
    int16_t ret;
    int16_t canHandle;
    CanHalMsg_t  canRxMsg;
    canHandle = g_udsTp[handle].canHandle;
    while(1)
    {
        ret = CanHalReceive(canHandle,&canRxMsg,0);
        if(ret != 0)
        {
            break;
        }
    }
    return;
}


