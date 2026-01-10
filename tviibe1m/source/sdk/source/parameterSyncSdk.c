
#include "FreeRTOS.h"
#include "task.h"
#include "string.h"
#include "logHal.h"
#include "parameterSyncSdk.h"
#include "mcuMpuSyncTask.h"
#include "projectConfigure.h"


#define PARAM_SYNC_SUNBCOMMAND_GET_REQ       0x01       //参数请求sunbcommand
#define PARAM_SYNC_SUNBCOMAND_GET_RES        0x02       //参数请求响应sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_REQ       0x03       //参数设置请求sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_RES       0x04       //参数设置响应sunbcommand
#define SYNC_PARAM_TO_MPU_REQUST_COUNT_MAX   0x03       //Mcu请求同步参数到MPU重复请求最大次数


static int16_t g_mpuHandle = -1 ;                           //MPU通信句柄   
static pMcuParametReadFun_t g_mcuParameterReadCbFunc = NULL ;   //提供写MCU参数函数     
static pMcuParametWriteFun_t g_mcuParameterWriteCbFunc = NULL ;  //读取MCU参数函数     
static uint16_t g_cycleTime = 0 ;                           //周期调用时间   
//static uint8_t g_maxParametNumbr=0 ;                      //paramID最大值
static uint8_t g_syncMpuParamIdList[26] = {0} ;             //mcu请求获取CPU参数ID列表   
static uint8_t g_syncMpuParamSize = 0 ;                     //mcu请求获取CPU参数的参数个数   
static uint8_t g_syncMpuParamRequstFlag = 0 ;               //mcu请求获取CPU参数请求发送标记0:未发送，1：发送   
static uint8_t g_syncMpuParamResultFlag = 0 ;               //mcu请求获取CPU参数结果标记0:未成功,1:成功   
static uint16_t g_syncMpuParamTimeCount = 0 ;               //mcu请求获取CPU参数计时   
static uint8_t g_syncParamToMpuRequstFlag = 0 ;             //Mcu请求同步参数到MPU请求标记0：无请求，1：有请求   
static uint16_t g_syncParamToMpuTimeCount = 0 ;             //Mcu请求同步参数至Mpu请求时间计数   
static uint8_t g_syncParamToMpuRequstCount = 0 ;            //Mcu请求同步参数至Mpu重复请求计数   
static uint8_t g_syncParamToMpuData[64] = {0} ;             //Mcu请求同步参数至Mpu请求数据缓存   
static MpuHalDataPack_t g_syncParamToMpuPack ;              //Mcu请求同步参数至Mpu请求数据缓存结构体   
static uint8_t g_mpuDataBuffer[200] = {0} ;                //用来存储MCU请求和响应数据的缓存buffer   
static MpuHalDataPack_t g_mpuDataPack ;                     //用来存储要发送的请求和响应数据的缓存结构体


/*************************************************
  Function:       ParameterSyncRequstGetAllParamPackage
  Description:    请求同步所有参数接口
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
static void ParameterSyncRequstGetAllParamPackage(void)
{
    uint8_t i = 0;
    uint16_t lenth = 0;
    
    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x01;
    
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = g_syncMpuParamSize;
    lenth = 1;
    
    for(i=0;i<g_syncMpuParamSize;i++)
    {
        g_mpuDataBuffer[lenth] =g_syncMpuParamIdList[i];
        lenth++;
    }
    
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = lenth;
    
    return ;
}

/*************************************************
  Function:       ParameterSyncRequstGetParamPackage
  Description:    请求同步参数接口
  Input:          paramId：请求同步的参数ID
  Output:         无
  Return:         无
  Others:         
*************************************************/
/*
static void ParameterSyncRequstGetParamPackage(uint8_t paramId)
{
    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x01;
    
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = 1;
    g_mpuDataBuffer[1] =paramId;
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = 2;
    
    return ;
}
*/

/*************************************************
  Function:       ParameterSyncResponseGetParamPackage
  Description:    生成MPU向MCU请求获取参数的响应包
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
static int16_t ParameterSyncResponseGetParamPackage(MpuHalDataPack_t *recvDataPack)
{
    uint8_t i = 0;
    uint16_t lenth = 0;
    uint16_t paramLenth = 0;
    uint8_t parameterItem;
	uint8_t *parameterData;
	
    if(recvDataPack == NULL)
    {
        return -1;
    }
    
    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x02;
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(recvDataPack);
    g_mpuDataBuffer[0] =recvDataPack->pDataBuffer[0];
    lenth = 1;
    
    for(i=0;i<recvDataPack->pDataBuffer[0];i++)
    {
    	//flash
        g_mpuDataBuffer[lenth] =recvDataPack->pDataBuffer[1+i];
        g_mcuParameterReadCbFunc(recvDataPack->pDataBuffer[1+i],g_mpuDataBuffer+2+lenth,&paramLenth);
		//flash other 
		parameterItem = recvDataPack->pDataBuffer[1+i];
		parameterData = g_mpuDataBuffer+2+lenth;
		switch(parameterItem)						 
		{											
			case E_ParamId_SW_Version:
				{
					ProjectConfigGetSoftwareNumber(parameterData,&paramLenth);	
				}
				break;
			case E_ParamId_HW_Version:
				{
					ProjectConfigGetHardNumber(parameterData,&paramLenth);	
				}
				break;
			case E_ParamId_CustomSW_Version:
				{
					ProjectConfigGetMCUSoftwareVersion(parameterData,&paramLenth);	
				}
				break;
			case E_ParamId_ParatNumber:
				{
					ProjectConfigGetPartNumber(parameterData,&paramLenth);
				}
				break;
			case E_ParamId_SupIdentifier:
				{
					ProjectConfigGetSupplierIdentifier(parameterData,&paramLenth);
				}
				break;
			default:
				break; 
		}
		
        g_mpuDataBuffer[1+lenth] = paramLenth;
        lenth = lenth+ 2 + g_mpuDataBuffer[1+lenth];
    }
    
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = lenth;
    
    return 0;
}

/*************************************************
  Function:       ParameterSyncRequstSyncParamPackage
  Description:    生成MCU请求同步某一参数到MPU的请求包
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
static void ParameterSyncRequstSyncParamPackage(uint8_t paramId)
{
    uint16_t lenth = 0;
    g_syncParamToMpuPack.aid = 0x01;
    g_syncParamToMpuPack.mid = 0x03;
    g_syncParamToMpuPack.subcommand = 0x03;

    memset(g_syncParamToMpuData,0,sizeof(g_syncParamToMpuData));

    g_syncParamToMpuPack.dataBufferSize = sizeof(g_syncParamToMpuData);
    g_syncParamToMpuData[0] = paramId;

    g_mcuParameterReadCbFunc(paramId,g_syncParamToMpuData+2,&lenth);
    g_syncParamToMpuData[1] = (lenth & 0xFF);
    lenth = 2+g_syncParamToMpuData[1];
    g_syncParamToMpuPack.pDataBuffer = g_syncParamToMpuData;
    g_syncParamToMpuPack.dataLength = lenth;

    return ;
}

/*************************************************
  Function:       ParameterSyncResponseSyncParamPackage
  Description:    生成CPU同步参数到MCU的响应数据包
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
static void ParameterSyncResponseSyncParamPackage(uint8_t result,uint8_t paramId)
{
    uint16_t lenth = 0;
    
    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x04;
    
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = (result==1)?0:1;
    g_mpuDataBuffer[1] = paramId;
    g_mcuParameterReadCbFunc(paramId,g_mpuDataBuffer+3,&lenth);
    g_mpuDataBuffer[2] = (lenth&0xFF);
    lenth = lenth+3;
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = lenth;

    return ;
}

/*************************************************
  Function:       ParameterSyncSdkInit
  Description:    参数同步模块初始化接口
  Input:          mpuHandle ：mpu通信句柄
                  mcuParamReadCb：读取参数接口回调函数
                  mcuParamWriteCb：写入参数接口回调函数
                  cycleTime：周期调用接口调用周期，单位ms，>0
                  syncParamList:参数ID列表
                  syncParamSize：参数列表大小
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t ParameterSyncSdkInit(int16_t mpuHandle,pMcuParametReadFun_t mcuParamReadCb,pMcuParametWriteFun_t mcuParamWriteCb,uint16_t cycleTime,uint8_t *syncParamList,uint8_t syncParamSize)
{
    if(cycleTime == 0 || syncParamList == NULL || syncParamSize == 0)
    {
        return -1;
    }
    g_cycleTime  = cycleTime;
    g_mpuHandle = mpuHandle;
    g_mcuParameterReadCbFunc = mcuParamReadCb;
    g_mcuParameterWriteCbFunc = mcuParamWriteCb;
    memcpy(g_syncMpuParamIdList,syncParamList,syncParamSize);
    g_syncMpuParamSize = syncParamSize;
    
    return 0;
}

/*************************************************
  Function:       ParameterSyncSdkCycleProcess
  Description:    参数同步模块周期调用接口
  Input:          recvDataPack：接收到的mpu参数同步请求响应数据包，未收到传入NULL
  Output:         无
  Return:         无
  Others:         
*************************************************/
void ParameterSyncSdkCycleProcess(MpuHalDataPack_t *recvDataPack)
{
    uint8_t i = 0;
    uint16_t offsetLen = 0;
    uint8_t paramData[256] = {0};
    uint16_t lenth = 0;
    uint16_t j = 0;
    
    if(recvDataPack!=NULL)
    {
        //TBOX_PRINT("Parameter sync : aid %d ,mid %d, subcommond %d\r\n",recvDataPack->aid,recvDataPack->mid,(recvDataPack->subcommand & 0x7F));
        if((recvDataPack->subcommand & 0x7F) == 2)
        {
            i = 0;
            offsetLen = 1;
            for(i = 0;i<recvDataPack->pDataBuffer[0];i++)
            {
                g_mcuParameterReadCbFunc(recvDataPack->pDataBuffer[offsetLen],paramData,&lenth);
                for(j = 0;j < lenth;j++)
                {
                    if(paramData[j] != recvDataPack->pDataBuffer[offsetLen+2+j])
                    {
                        g_mcuParameterWriteCbFunc(recvDataPack->pDataBuffer[offsetLen],recvDataPack->pDataBuffer+offsetLen+2,recvDataPack->pDataBuffer[offsetLen+1]);
                    }
                }
                offsetLen = offsetLen + 2 + recvDataPack->pDataBuffer[offsetLen+1];
            }
            g_syncMpuParamResultFlag=1;
            g_syncMpuParamTimeCount=0;
        }
        else if((recvDataPack->subcommand & 0x7F) == 1)
        {
            ParameterSyncResponseGetParamPackage(recvDataPack);
            MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
        }
        else if((recvDataPack->subcommand & 0x7F) == 4)
        {
            if(g_syncParamToMpuRequstFlag == 1)
            {
                if(recvDataPack->pDataBuffer[0]==0)
                {
                    g_syncParamToMpuRequstFlag=0;
                    g_syncParamToMpuRequstCount=0;
                    g_syncParamToMpuTimeCount=0;
                }
            }
        }
        else if((recvDataPack->subcommand & 0x7F) == 3)
        {
            if(recvDataPack->pDataBuffer[0]<26)
            {
                g_mcuParameterWriteCbFunc(recvDataPack->pDataBuffer[0],&recvDataPack->pDataBuffer[2],recvDataPack->pDataBuffer[1]);
                ParameterSyncResponseSyncParamPackage(1,recvDataPack->pDataBuffer[0]);
                MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
            }
            else
            {
                ParameterSyncResponseSyncParamPackage(0,recvDataPack->pDataBuffer[0]);
                MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
            }
        }
        else
        {
        
        }
    }
    if(g_syncMpuParamResultFlag==0)
    {
        g_syncMpuParamTimeCount++;
        if(g_syncMpuParamRequstFlag==0||(g_syncMpuParamRequstFlag == 1 && g_syncMpuParamTimeCount >= (1000/g_cycleTime)))
        {
            ParameterSyncRequstGetAllParamPackage();
            MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
            g_syncMpuParamRequstFlag=1;
            g_syncMpuParamTimeCount=0;
        }
    }
    if(g_syncParamToMpuRequstFlag==1)
    {
        g_syncParamToMpuTimeCount++;
        if(g_syncParamToMpuTimeCount>(1000/g_cycleTime))
        {
            g_syncParamToMpuRequstCount++;
            if(g_syncParamToMpuRequstCount<3)
            {
                MpuHalTransmit(g_mpuHandle,&g_syncParamToMpuPack);
                g_syncParamToMpuTimeCount=0;
            }
        }
    }
    
    return ;
}

/*************************************************
  Function:       ParameterSyncSdkSetToCpu
  Description:    同步参数至MPU
  Input:          parameterId：需要同步至MPU的参数ID
                  pData:参数数据
                  length：参数数据长度
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t ParameterSyncSdkSetToCpu(uint8_t parameterId,uint8_t *pData,uint16_t length)
{
    int16_t ret = -1;
    uint16_t i = 0;
    
    if(pData == NULL || length == 0)
    {
        return ret;
    }
    
    ParameterSyncRequstSyncParamPackage(parameterId);
    MpuHalTransmit(g_mpuHandle,&g_syncParamToMpuPack);
    g_syncParamToMpuTimeCount=0;
    g_syncParamToMpuRequstFlag=1;
    g_syncParamToMpuRequstCount=0;
    
    for(i = 0;i < 300;i++)
    {
        if(g_syncParamToMpuRequstFlag==0)
        {
            ret = 0;
            g_syncParamToMpuRequstFlag=0;
            break;
        }
        vTaskDelay( pdMS_TO_TICKS(10));
    }
    
    return ret;
}

/*************************************************
  Function:       SyncParameterSdkGetFromCpuIsFinished
  Description:    获取参数同步的结果
  Input:          无
  Output:         无
  Return:         0：同步成功
                  -1：同步未成功
  Others:         
*************************************************/
int16_t ParameterSyncSdkGetFromCpuIsFinished(void)
{
    return (g_syncMpuParamResultFlag == 1)?0:1;
}


