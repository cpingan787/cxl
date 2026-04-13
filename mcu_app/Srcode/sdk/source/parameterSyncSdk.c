// #include "FreeRTOS.h"
// #include "task.h"
#include "string.h"
#include "logHal.h"
#include "parameterSyncSdk.h"


#define PARAM_SYNC_SUNBCOMMAND_GET_REQ       0x01       //参数请求sunbcommand
#define PARAM_SYNC_SUNBCOMAND_GET_RES        0x02       //参数请求响应sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_REQ       0x03       //参数设置请求sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_RES       0x04       //参数设置响应sunbcommand
#define SYNC_PARAM_TO_MPU_REQUST_COUNT_MAX   0x03       //Mcu请求同步参数到MPU重复请求最大次数
#include "projectConfigure.h"
#include "parameterStoreManageApp.h"
/****************************** Macro Definitions ******************************/
#define MCUMPUSYNC_ERROR_CODE_INVALID_PARAMETER_ITEM           (-1)

/****************************** Type Definitions ******************************/
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

typedef enum {
    PARAM_GET_FROM_FLASH = 0,    // 从Flash获取
    PARAM_GET_FROM_CONFIG,       // 从配置项获取
    PARAM_GET_METHOD_NONE        // 无获取方式
} ParamGetMethod_e;

typedef struct {
    ParameterItemId_e paramId;           // 参数ID
    ParamGetMethod_e getMethod;          // 获取方式
    FlashParaId_e flashParaId;           // Flash参数ID（当getMethod为PARAM_GET_FROM_FLASH时有效）
    ConfigItemType_e configItemType;     // 配置项类型（当getMethod为PARAM_GET_FROM_CONFIG时有效）
} ParamMappingEntry_t;

static const ParamMappingEntry_t g_paramMappingTable[] = {
    [E_PARAMID_ICCID]               = {E_PARAMID_ICCID,                 PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ICCID,                 CONFIG_ITEM_MAX},
    [E_PARAMID_IMEI]                = {E_PARAMID_IMEI,                  PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_IMEI,                  CONFIG_ITEM_MAX},
    [E_PARAMID_SN]                  = {E_PARAMID_SN,                    PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_SN,                    CONFIG_ITEM_MAX},
    [E_PARAMID_VIN]                 = {E_PARAMID_VIN,                   PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_VIN,                   CONFIG_ITEM_MAX},
    [E_PARAMID_ECallNumber]         = {E_PARAMID_ECallNumber,           PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ECallNumber,           CONFIG_ITEM_MAX},
    [E_PARAMID_SW_Version]          = {E_PARAMID_SW_Version,            PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_SOFTWARE_NUMBER},
    [E_PARAMID_HW_Version]          = {E_PARAMID_HW_Version,            PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_HARDWARE_NUMBER},
    [E_PARAMID_CustomSW_Version]    = {E_PARAMID_CustomSW_Version,      PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_SOFTWARE_VERSION},
    [E_PARAMID_ManufactureData]   =   {E_PARAMID_ManufactureData,       PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ManufactureData,       CONFIG_ITEM_MAX},
    [E_PARAMID_ParatNumber]         = {E_PARAMID_ParatNumber,           PARAM_GET_FROM_FLASH,   E_PARAMETER_INFO_ParatNumber,           CONFIG_ITEM_MAX},
    [E_PARAMID_SupIdentifier]       = {E_PARAMID_SupIdentifier,         PARAM_GET_FROM_CONFIG,  E_PARAMETER_INFO_MAX_NUM,               CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER},

};

typedef struct {
    ParameterItemId_e paramId;           // 参数ID
    uint16_t dataLength;                 // 数据长度
} ParamWriteCheck_t;

static const ParamWriteCheck_t g_paramWriteCheck[] = {
    [E_PARAMID_ICCID]               = {E_PARAMID_ICCID,             20},
    [E_PARAMID_IMEI]                = {E_PARAMID_IMEI,              24},
    [E_PARAMID_SN]                  = {E_PARAMID_SN,                16},
    [E_PARAMID_VIN]                 = {E_PARAMID_VIN,               17},
    [E_PARAMID_ECallNumber]         = {E_PARAMID_ECallNumber,       15},
    [E_PARAMID_SW_Version]          = {E_PARAMID_SW_Version,        3},//待修改
    [E_PARAMID_HW_Version]          = {E_PARAMID_HW_Version,        3},//应不可写入，待删除
    [E_PARAMID_CustomSW_Version]    = {E_PARAMID_CustomSW_Version,  3},//应不可写入，待删除
    [E_PARAMID_ManufactureData]     = {E_PARAMID_ManufactureData,   3},
    [E_PARAMID_ParatNumber]         = {E_PARAMID_ParatNumber,       5},
    [E_PARAMID_SupIdentifier]       = {E_PARAMID_SupIdentifier,     5},//应不可写入，待删除

};

static uint8_t IsValidParamData(uint8_t paramId, uint8_t *data, uint16_t length);

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
    uint16_t lenth = 0;
    uint16_t paramLenth = 0;
    
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
        g_mpuDataBuffer[lenth] =recvDataPack->pDataBuffer[1+i];
        g_mcuParameterReadCbFunc(recvDataPack->pDataBuffer[1+i], &g_mpuDataBuffer[lenth+2], &paramLenth);
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
    uint16_t offsetLen = 0;
    uint8_t paramData[256] = {0};//读flash数据缓存区
    uint16_t lenth = 0;

    uint8_t currentParamId = 0;//当前参数ID
    uint8_t mpuDataLen = 0;//当前参数数据长度
    uint8_t *pMpuData = NULL;//当前参数数据指针
    
    if(recvDataPack!=NULL)
    {
        // TBOX_PRINT("Parameter sync : aid %d ,mid %d, subcommond %d\r\n",recvDataPack->aid,recvDataPack->mid,(recvDataPack->subcommand & 0x7F));
        if((recvDataPack->subcommand & 0x7F) == 2)
        {
            i = 0;
            offsetLen = 1;
            for(i = 0;i<recvDataPack->pDataBuffer[0];i++)
            {
                currentParamId = recvDataPack->pDataBuffer[offsetLen];
                mpuDataLen = recvDataPack->pDataBuffer[offsetLen + 1];
                pMpuData = &(recvDataPack->pDataBuffer[offsetLen + 2]);

                if(IsValidParamData(currentParamId,pMpuData,mpuDataLen) == 1)/* 传入校验参数数据及长度是否有效 */
                {
                    //参数正确才可写入
                    g_mcuParameterReadCbFunc(currentParamId, paramData, &lenth);
                    if(IsFlashDataValid(paramData,lenth) == 0)/* 本地flash是否有值 */
                    {
                        if(currentParamId == E_PARAMID_SW_Version)/* 14软件版本号做特殊处理 */
                        {
                            ProjectConfigSetMpuVersion(pMpuData,mpuDataLen);
                            // 斯润版本号写入flash
                            // NvM_WriteBlock 待适配
                        }
                        else
                        {
                            g_mcuParameterWriteCbFunc(currentParamId,pMpuData,mpuDataLen);
                        }
                        TBOX_PRINT("ParameterSync paramID %d change success\r\n",currentParamId);
                    }
                    else
                    {
                        //本地flash中有值，不写入
                        TBOX_PRINT("ParameterSync paramID %d already valid values\r\n",currentParamId);
                    }
                }
                else
                {
                    //参数数据错误，不写入
                    TBOX_PRINT("ParameterSync paramID %d data error\r\n",currentParamId);
                }

                offsetLen = offsetLen + 2 + mpuDataLen;
            }
            g_syncMpuParamResultFlag=1;
            g_syncMpuParamTimeCount=0;
        }
        else if((recvDataPack->subcommand & 0x7F) == 1)
        {
            if (g_syncMpuParamResultFlag == 1)/* MCU获取到有效MPU参数之前不回复MPU的参数请求 */
            {
                ParameterSyncResponseGetParamPackage(recvDataPack);
                MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
            }
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
            currentParamId = recvDataPack->pDataBuffer[0];
            mpuDataLen = recvDataPack->pDataBuffer[1];
            pMpuData = &(recvDataPack->pDataBuffer[2]);

            if(IsValidParamData(currentParamId,pMpuData,mpuDataLen) == 1)/* 传入校验参数数据及长度是否有效 */
            {
                //参数正确才可写入
                g_mcuParameterReadCbFunc(currentParamId, paramData, &lenth);
                if(IsFlashDataValid(paramData,lenth) == 0)/* 本地flash是否有值 */
                {
                    if(currentParamId == 14)/* 14软件版本号做特殊处理 */
                    {
                        ProjectConfigSetMpuVersion(pMpuData,mpuDataLen);
                        // 斯润版本号写入flash
                        // NvM_WriteBlock 待适配
                    }
                    else
                    {
                        g_mcuParameterWriteCbFunc(currentParamId,pMpuData,mpuDataLen);
                    }
                    TBOX_PRINT("ParameterSync paramID %d change success\r\n",currentParamId);
                    ParameterSyncResponseSyncParamPackage(1,currentParamId);
                }
                else
                {
                    //本地flash中有值，不写入
                    TBOX_PRINT("ParameterSync paramID %d already valid values\r\n",currentParamId);
                    ParameterSyncResponseSyncParamPackage(0,currentParamId);
                }
            }
            else
            {
                //参数数据错误，不写入
                TBOX_PRINT("ParameterSync paramID %d data error\r\n",currentParamId);
                ParameterSyncResponseSyncParamPackage(0,currentParamId);
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
        if ((ret != 0) || (getMethod != PARAM_GET_FROM_FLASH))
        {
            // TBOX_PRINT("paramId = %d, getMethod = %d, configItem = %d is not support write!\n", parameterItem, getMethod, configItem);
            break;
        }

        if(flashParaId == E_PARAMETER_INFO_ECallNumber)/* ECALL号码做特殊处理 */
        {
            uint8_t ecallNumber[37] = {0};
            memcpy(&ecallNumber[21], parameterData, pDataLength);
            ret = WorkFlashVehicleInforStore(flashParaId, ecallNumber, 37);
        }
        else
        {
            ret = WorkFlashVehicleInforStore(flashParaId, parameterData, pDataLength);
        }

        
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
            if(flashParaId == E_PARAMETER_INFO_ECallNumber)/* ECALL号码做特殊处理 */
            {
                uint8_t ecallNumber[37] = {0};
                uint32_t ecallLen = 0;
                ret = WorkFlashVehicleInforRead(flashParaId, ecallNumber, &ecallLen);
                memcpy(parameterData, &ecallNumber[21], 15);
                itemSize = 15;
            }
            else
            {
                ret = WorkFlashVehicleInforRead(flashParaId, parameterData, &itemSize);
            }
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
    uint8_t isAll0x00 = 1;
    uint8_t isAll0x01 = 1;
    uint8_t isAll0x30 = 1;
    uint8_t isAll0x31 = 1;
    uint8_t isAll0xFF = 1;

    for (i = 0; i < sizeof(g_paramWriteCheck) / sizeof(g_paramWriteCheck[0]); i++)
    {
        if (g_paramWriteCheck[i].paramId == paramId)
        {
            expectedLen = g_paramWriteCheck[i].dataLength;
            found = 1;
            break;
        }
    }

    if (found)
    {
        if (length != expectedLen)
        {
            return 0;
        }
        
        for (uint16_t j = 0; j < length; j++)
        {
            if (data[j] != 0x00) // 0x00
                isAll0x00 = 0;
            if (data[j] != 0x01) // 0x01
                isAll0x01 = 0;
            if (data[j] != 0x30) // ASCII '0'
                isAll0x30 = 0;
            if (data[j] != 0x31) // ASCII '1'
                isAll0x31 = 0;
            if (data[j] != 0xFF) // 0xFF
                isAll0xFF = 0;

            if (isAll0x00 == 0 && isAll0x01 == 0 && isAll0x30 == 0 && isAll0x31 == 0 && isAll0xFF == 0)
            {
                return 1;
            }
        }

        if (isAll0x00 || isAll0x01 || isAll0x30 || isAll0x31 || isAll0xFF)
        {
            return 0;
        }
    }
    
    return 1;
}
