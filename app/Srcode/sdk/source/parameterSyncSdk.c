/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: parameterSyncSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#include "string.h"
#include "logHal.h"
#include "parameterSyncSdk.h"
#include "projectConfigure.h"
#include "parameterStoreManageApp.h"
#include "NvM.h"
#include "NvM_Cfg.h"
/****************************** Macro Definitions ******************************/
#define PARAM_SYNC_SUNBCOMMAND_GET_REQ       0x01       //参数请求sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_GET_RES       0x02       //参数请求响应sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_REQ       0x03       //参数设置请求sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_RES       0x04       //参数设置响应sunbcommand
#define SYNC_PARAM_TO_MPU_REQUST_COUNT_MAX   0x03       //Mcu请求同步参数到MPU重复请求最大次数
#define MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM           (-1)

/****************************** Type Definitions ******************************/
typedef enum {
    PARAM_GET_METHOD_NONE = 0,        // 无获取方式
    PARAM_GET_FROM_FLASH,             // 从Flash获取
    PARAM_GET_FROM_CONFIG,            // 从配置项获取
    
} ParamGetMethod_e;

typedef struct {
    ParameterItemId_e paramId;           // 参数ID
    ParamGetMethod_e getMethod;          // 获取方式
    FlashParaId_e flashParaId;           // Flash参数ID（当getMethod为PARAM_GET_FROM_FLASH时有效）
    ConfigItemType_e configItemType;     // 配置项类型（当getMethod为PARAM_GET_FROM_CONFIG时有效）
} ParamMappingEntry_t;

typedef struct {
    ParameterItemId_e paramId;           // 参数ID
    uint16_t dataLength;                 // 数据长度
} ParamWriteCheck_t;

/****************************** Global Variables ******************************/
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

static const ParamMappingEntry_t g_paramMappingTable[] = {
    [E_PARAMID_ICCID]               = {E_PARAMID_ICCID,                 PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ICCID,                 CONFIG_ITEM_MAX},
    [E_PARAMID_IMEI]                = {E_PARAMID_IMEI,                  PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_IMEI,                  CONFIG_ITEM_MAX},
    [E_PARAMID_IMSI]                = {E_PARAMID_IMSI,                  PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_IMSI,                  CONFIG_ITEM_MAX},
    [E_PARAMID_SN]                  = {E_PARAMID_SN,                    PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_SN,                    CONFIG_ITEM_MAX},
    [E_PARAMID_VIN]                 = {E_PARAMID_VIN,                   PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_VIN,                   CONFIG_ITEM_MAX},
    [E_PARAMID_TSPAddr]             = {E_PARAMID_TSPAddr,               PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_TSPPort]             = {E_PARAMID_TSPPort,               PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_GB32960Addr]         = {E_PARAMID_GB32960Addr,           PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_GB329060Port]        = {E_PARAMID_GB329060Port,          PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_HJ1239Addr]          = {E_PARAMID_HJ1239Addr,            PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_HJ1239Port]          = {E_PARAMID_HJ1239Port,            PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_ECallNumber]         = {E_PARAMID_ECallNumber,           PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ECallNumber,           CONFIG_ITEM_MAX},
    [E_PARAMID_BCallNumber]         = {E_PARAMID_BCallNumber,           PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_ICallNumber]         = {E_PARAMID_ICallNumber,           PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_SW_Version]          = {E_PARAMID_SW_Version,            PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_NAD_SW_VERSION},
    [E_PARAMID_HW_Version]          = {E_PARAMID_HW_Version,            PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_HARDWARE_NUMBER},
    [E_PARAMID_CustomSW_Version]    = {E_PARAMID_CustomSW_Version,      PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_SOFTWARE_VERSION},
    [E_PARAMID_CarVersion]          = {E_PARAMID_CarVersion,            PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_ManufactureData]     = {E_PARAMID_ManufactureData,       PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},
    [E_PARAMID_ParatNumber]         = {E_PARAMID_ParatNumber,           PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ParatNumber,           CONFIG_ITEM_MAX},
    [E_PARAMID_SupIdentifier]       = {E_PARAMID_SupIdentifier,         PARAM_GET_METHOD_NONE,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_MAX},

};

/* 按照基线规定长度做检查 */
static const ParamWriteCheck_t g_paramWriteCheck[] = {
    [E_PARAMID_ICCID]               = {E_PARAMID_ICCID,             20},
    [E_PARAMID_IMEI]                = {E_PARAMID_IMEI,              15},
    [E_PARAMID_IMSI]                = {E_PARAMID_IMSI,              15},
    [E_PARAMID_SN]                  = {E_PARAMID_SN,                27},
    [E_PARAMID_VIN]                 = {E_PARAMID_VIN,               17},
    [E_PARAMID_ECallNumber]         = {E_PARAMID_ECallNumber,       17},
    [E_PARAMID_SW_Version]          = {E_PARAMID_SW_Version,        64},
    [E_PARAMID_ParatNumber]         = {E_PARAMID_ParatNumber,       64},

};

/****************************** Function Declarations *************************/
static uint8_t IsValidParamData(uint8_t paramId, uint8_t *data, uint16_t length);

/****************************** Public Function Implementations ******************************/
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
    uint16_t lenth = 0;                 // 响应包长度偏移
    uint16_t paramLenth = 0;            // 参数数据长度
    uint8_t paramItemCount = 0u;        // 参数数量
    uint8_t parameterItem = 0u;         // 参数ID
    uint8_t dataValidCheck[64] = {0};   // 数据校验
    
    if(recvDataPack == NULL)
    {
        return -1;
    }
    
    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x02;
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);

    paramItemCount = recvDataPack->pDataBuffer[0];
    g_mpuDataBuffer[0] = paramItemCount;
    lenth = 1;
    
    for(i = 0; i < paramItemCount; i++)
    {
        parameterItem= recvDataPack->pDataBuffer[1+i];
        g_mpuDataBuffer[lenth] = parameterItem;
        g_mcuParameterReadCbFunc(parameterItem, dataValidCheck, &paramLenth);
        if(IsFlashDataValid(dataValidCheck, paramLenth) == 0u)
        {
	        g_mpuDataBuffer[0]--;
            continue;
        }
        memcpy(&g_mpuDataBuffer[lenth+2],dataValidCheck,paramLenth);
        g_mpuDataBuffer[1+lenth] = paramLenth;
        lenth = lenth + 2 + g_mpuDataBuffer[1+lenth];
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
    // TBOX_PRINT("Parameter sync : paramId %d, lenth %d\r\n",paramId,lenth);
    return ;
}

/*************************************************
  Function:       ParameterSyncResponseSyncParamPackage
  Description:    生成CPU同步参数到MCU的响应数据包
  Input:          result ：同步结果  1：成功 0：失败
                  paramId：同步的参数ID
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
    uint8_t j = 0;
    uint16_t offsetLen = 0;
    static uint8_t paramData[256] = {0};//读flash数据缓存区
    uint16_t lenth = 0;

    uint8_t currentParamId = 0;         //当前参数ID
    uint8_t mpuDataLen = 0;             //当前参数数据长度
    uint8_t *pMpuData = NULL;           //当前参数数据指针
    uint8_t localValueSameCheck = 1;    //本地值与请求值是否相同 1：相同 0：不同
    
    if(recvDataPack!=NULL)
    {
        // TBOX_PRINT("Parameter sync : aid %d ,mid %d, subcommond %d\r\n",recvDataPack->aid,recvDataPack->mid,(recvDataPack->subcommand & 0x7F));
        if((recvDataPack->subcommand & 0x7F) == PARAM_SYNC_SUNBCOMMAND_GET_RES)
        {
            i = 0;
            offsetLen = 1;
            for(i = 0;i<recvDataPack->pDataBuffer[0];i++)
            {
                localValueSameCheck = 1;
                currentParamId = recvDataPack->pDataBuffer[offsetLen];
                mpuDataLen = recvDataPack->pDataBuffer[offsetLen + 1];
                pMpuData = &(recvDataPack->pDataBuffer[offsetLen + 2]);
                
                g_mcuParameterReadCbFunc(currentParamId, paramData, &lenth);
                for (j = 0; j < lenth; j++)
                {
                    /* 检查本地值与请求值是否相同 */
                    if(paramData[j] != pMpuData[j])
                    {
                        if(g_mcuParameterWriteCbFunc(currentParamId,pMpuData,mpuDataLen) == 0)
                        {
                            TBOX_PRINT("[ParameterSync] paramID %d change success\r\n",currentParamId);
                            // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "ParameterSync paramID %d change success", currentParamId);
                            localValueSameCheck = 0;
                            break;
                        }
                        else
                        {
                            //写入失败
                            TBOX_PRINT("[ParameterSync] paramID %d change failed\r\n",currentParamId);
                            // SYNC_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_DATA_UPDATE, "ParameterSync paramID %d change failed", currentParamId);
                            localValueSameCheck = 0;
                            break;
                        }
                    }
                }
                if(localValueSameCheck == 1)
                {
                    //本地值与请求值相同
                    TBOX_PRINT("[ParameterSync paramID] %d already valid values\r\n",currentParamId);
                    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "ParameterSync paramID %d already valid values", currentParamId);
                }

                offsetLen = offsetLen + 2 + mpuDataLen;
            }
            g_syncMpuParamResultFlag=1;
            g_syncMpuParamTimeCount=0;

        }
        else if((recvDataPack->subcommand & 0x7F) == PARAM_SYNC_SUNBCOMMAND_GET_REQ)
        {
            if (g_syncMpuParamResultFlag == 1)/* MCU获取到有效MPU参数之前不回复MPU的参数请求 */
            {
                ParameterSyncResponseGetParamPackage(recvDataPack);
                if(g_mpuDataPack.dataLength == 1)
                {
                    /* MPU请求的参数全为00/FF则不回复请求 */
                    // TBOX_PRINT("MPU Request parameters all 00/FF");
                    // SYNC_LOG_SEND(LOG_LEVEL_WARN, LOG_EVT_DATA_UPDATE, "MPU Request parameters all 00/FF");
                }
                else
                {
                    MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
                }
            }
        }
        else if((recvDataPack->subcommand & 0x7F) == PARAM_SYNC_SUNBCOMMAND_SET_RES)
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
        else if((recvDataPack->subcommand & 0x7F) == PARAM_SYNC_SUNBCOMMAND_SET_REQ)
        {
            currentParamId = recvDataPack->pDataBuffer[0];
            mpuDataLen = recvDataPack->pDataBuffer[1];
            pMpuData = &(recvDataPack->pDataBuffer[2]);
            localValueSameCheck = 1;

            g_mcuParameterReadCbFunc(currentParamId, paramData, &lenth);
            for (j = 0; j < lenth; j++)
            {
                /* 检查本地值与请求值是否相同 */
                if(paramData[j] != pMpuData[j])
                {
                    if(g_mcuParameterWriteCbFunc(currentParamId,pMpuData,mpuDataLen) == 0)
                    {
                        /* 写入成功 */
                        TBOX_PRINT("[ParameterSync 0x03]  paramID %d change success\r\n",currentParamId);
                        ParameterSyncResponseSyncParamPackage(1,currentParamId);
                        localValueSameCheck = 0;
                        break;
                    }
                    else
                    {
                        /* 写入失败 传入数据错误 */
                        TBOX_PRINT("[ParameterSync] 0x03 paramID %d data error\r\n",currentParamId);
                        ParameterSyncResponseSyncParamPackage(0,currentParamId);
                        localValueSameCheck = 0;
                        break;
                    }
                }
            }

            if(localValueSameCheck == 1)
            {
                if(IsValidParamData(currentParamId,pMpuData,mpuDataLen) == 1)
                {
                    //本地值与请求值相同
                    TBOX_PRINT("[ParameterSync] paramID %d already valid values\r\n",currentParamId);
                    ParameterSyncResponseSyncParamPackage(1,currentParamId);
                }
                else
                {
                    //非法数据
                    TBOX_PRINT("[ParameterSync] paramID %d data error\r\n",currentParamId);
                    ParameterSyncResponseSyncParamPackage(0,currentParamId);
                }  
            }

            MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
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
    if((g_syncMpuParamResultFlag == 1)&&(g_syncParamToMpuRequstFlag==1))//MPU没起来之前，没必要一直发
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
    // uint16_t i = 0;
    
    if(pData == NULL || length == 0)
    {
        return ret;
    }
    
    ParameterSyncRequstSyncParamPackage(parameterId);
    MpuHalTransmit(g_mpuHandle,&g_syncParamToMpuPack);
    g_syncParamToMpuTimeCount=0;
    g_syncParamToMpuRequstFlag=1;
    g_syncParamToMpuRequstCount=0;
    
    // for(i = 0;i < 300;i++)
    // {
    //     if(g_syncParamToMpuRequstFlag==0)
    //     {
    //         ret = 0;
    //         g_syncParamToMpuRequstFlag=0;
    //         break;
    //     }
    //     //RTOS_HalApiWait(10);
    //     // vTaskDelay( pdMS_TO_TICKS(10));
    // }
    ret = 0;

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
    return (g_syncMpuParamResultFlag == 1)?0:-1;
}




/*************************************************
 Function: McuMpuSync_ParamCheck
 Description: Check the parameter item is valid or not
 Input: parameterItem - the parameter item to check
        flashParaId - the pointer to store the flash parameter id
 Output: void
 Return: 0 - success
        -1 - invalid parameter item or flashParaId is NULL
        -2 - invalid flash parameter id
 Others:
*************************************************/
static int16_t McuMpuSync_ParamCheck(uint8_t parameterItem, ParamGetMethod_e *getMethod, FlashParaId_e *flashParaId, ConfigItemType_e *configItem)
{
    int16_t ret = 0;
    if ((parameterItem >= E_PARAMETER_ITEM_NUM_MAX) || (flashParaId == NULL))
    {
        ret = MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM;
    }
    else
    {
        *getMethod = g_paramMappingTable[parameterItem].getMethod;
        if (*getMethod == PARAM_GET_METHOD_NONE)
        {
            ret = MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM;
        }
        else
        {
            if (*getMethod == PARAM_GET_FROM_CONFIG) 
            {
                *configItem = g_paramMappingTable[parameterItem].configItemType;
            } 
            else if (*getMethod == PARAM_GET_FROM_FLASH) 
            {
                *flashParaId = g_paramMappingTable[parameterItem].flashParaId;
            } 
            else 
            {
                ret = MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM;
            }
        }
    }
    return ret;
}

/*************************************************
 Function: McuParameterWrite
 Description: Write the parameter data to flash
 Input: parameterItem - the parameter item to write
        parameterData - the pointer to the parameter data
        pDataLength - the length of the parameter data
 Output: void
 Return: 0 - success
        -1 - invalid parameter item or parameterData is NULL
        -2 - invalid flash parameter id
        -3 - work flash vehicle infor store failed
 Others:
*************************************************/
int16_t McuParameterWrite(uint8_t parameterItem, uint8_t *parameterData, uint16_t pDataLength)
{
    int16_t ret = 0;
    do {
        ParamGetMethod_e getMethod;
        FlashParaId_e flashParaId;
        ConfigItemType_e configItem;
        ret = McuMpuSync_ParamCheck(parameterItem, &getMethod, &flashParaId, &configItem);

        /* 版本号特殊处理 */
        if (parameterItem == E_PARAMID_SW_Version)
        {
            ret = ProjectConfigSetMpuVersion(parameterData, pDataLength);
            break;
        }

        if ((ret != 0) || (getMethod != PARAM_GET_FROM_FLASH))
        {
            TBOX_PRINT("McuParameterWrite: paramId = %d is not support write!\n", parameterItem, getMethod, configItem);
            break;
        }

        /* 传入校验参数数据及长度是否有效 */
        if(IsValidParamData(parameterItem,parameterData,pDataLength) != 1)
        {
            ret = MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM;
            TBOX_PRINT("McuParameterWrite: paramId = %d, getMethod = %d, configItem = %d is not valid!\n", parameterItem, getMethod, configItem);
            break;
        }
        ret = WorkFlashVehicleInforStore(flashParaId, parameterData, pDataLength);

    } while (0);
    return ret;
}

/*************************************************
 Function: McuParameterRead
 Description: Read the parameter data from flash
 Input: parameterItem - the parameter item to read
        parameterData - the pointer to store the parameter data
        pDataLength - the pointer to store the length of the parameter data
 Output: void
 Return: 0 - success
        -1 - invalid parameter item or parameterData is NULL
        -2 - invalid flash parameter id
        -3 - work flash vehicle infor read failed
 Others:
*************************************************/
int16_t McuParameterRead(uint8_t parameterItem, uint8_t *parameterData, uint16_t *pDataLength)
{
    uint32_t itemSize = 0u;
    int16_t ret = 0;
    do {
        ParamGetMethod_e getMethod;
        FlashParaId_e flashParaId;
        ConfigItemType_e configItem;
        ret = McuMpuSync_ParamCheck(parameterItem, &getMethod, &flashParaId, &configItem);
        if (ret != 0)
        {
            break;
        }
        if (getMethod == PARAM_GET_FROM_FLASH)
        {
            ret = WorkFlashVehicleInforRead(flashParaId, parameterData, &itemSize);
        } 
        else if (getMethod == PARAM_GET_FROM_CONFIG) 
        {
            ret = ProjectConfig_GetItemData(configItem, parameterData, &itemSize);
        } 
        else 
        {
            ret = MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM;
        }

        *pDataLength = itemSize;
    } while (0);
    return ret;
}

/*************************************************
 Function: IsFlashDataValid
 Description: 检测本地flash数据是否有效，用于检测FLASH中读出的数据是否为全0或全FF  
 Input: data - 数据指针
        len - 数据长度
 Output: void
 Return: 0 - 全0/全FF
         1 - 数据有效
 Others:
*************************************************/
uint8_t IsFlashDataValid(uint8_t *data, uint16_t len)
{
    if (len == 0) return 0;
    
    uint8_t isAllFF = 1;
    uint8_t isAllZero = 1;
    uint16_t k;

    for (k = 0; k < len; k++)
    {
        if (data[k] != 0xFF) isAllFF = 0;
        if (data[k] != 0x00) isAllZero = 0;
        
        if (isAllFF == 0 && isAllZero == 0)
        {
            return 1;
        }
    }

    if (isAllFF || isAllZero)
    {
        return 0; 
    }

    return 1;
}

/*************************************************
 Function: IsValidParamData
 Description: 参数有效性检查  用于向MCU flash写入参数时检查参数有效性，避免写入无效参数
 Input: paramId 参数ID
        data - 参数数据指针
        length - 参数数据长度
 Output: void
 Return: 0 - 无效
         1 - 有效
 Others:
*************************************************/
static uint8_t IsValidParamData(uint8_t paramId, uint8_t *data, uint16_t length)
{
    uint8_t i;
    uint8_t found = 0;
    uint16_t expectedLen = 0;
    uint8_t firstByte = data[0];
    uint8_t isAllSame = 1;

    if(data == NULL)
    {
        return 0;
    }

    for (i = 0; i < sizeof(g_paramWriteCheck) / sizeof(g_paramWriteCheck[0]); i++)
    {
        if (g_paramWriteCheck[i].paramId == paramId)
        {
            expectedLen = g_paramWriteCheck[i].dataLength;
            found = 1;
            break;
        }
    }

    /* 超过基线规定长度视为无效 */
    if (!found || length > expectedLen)
    {
        return 0;
    }

    /* 软件版本号特殊处理 */
    if(paramId == E_PARAMID_SW_Version)
    {
        return 1;
    }
    
    /*检查字节是否全部相同*/
    for (uint16_t j = 1; j < length; j++)
    {
        if (data[j] != firstByte)
        {
            isAllSame = 0;
            break;
        }
    }
    
    /*全0/1/30/31/FF视为无效值*/
    if (isAllSame)
    {
        if (firstByte == 0x00 || firstByte == 0x01 || 
            firstByte == 0x30 || firstByte == 0x31 || firstByte == 0xFF)
        {
            return 0;
        }
    }
    
    return 1;
}
