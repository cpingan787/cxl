
#include "FreeRTOS.h"
#include "task.h"
#include "string.h"
#include "logHal.h"
#include "parameterSyncSdk.h"
#include "projectConfigure.h"
#include "parameterStoreManageApp.h"
#include "mcuMpuSyncTask.h"
#include "projectConfigure.h"
#define PARAM_SYNC_SUNBCOMMAND_GET_REQ 0x01     // 参数请求sunbcommand
#define PARAM_SYNC_SUNBCOMAND_GET_RES 0x02      // 参数请求响应sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_REQ 0x03     // 参数设置请求sunbcommand
#define PARAM_SYNC_SUNBCOMMAND_SET_RES 0x04     // 参数设置响应sunbcommand
#define SYNC_PARAM_TO_MPU_REQUST_COUNT_MAX 0x03 // Mcu请求同步参数到MPU重复请求最大次数
#define MAX_OFFLINE_SYNC_ROUNDS 10
static int16_t g_mpuHandle = -1;                               // MPU通信句柄
static pMcuParametReadFun_t g_mcuParameterReadCbFunc = NULL;   // 提供写MCU参数函数
static pMcuParametWriteFun_t g_mcuParameterWriteCbFunc = NULL; // 读取MCU参数函数
static uint16_t g_cycleTime = 0;                               // 周期调用时间
// static uint8_t g_maxParametNumbr=0 ;                      //paramID最大值
static uint8_t g_syncMpuParamIdList[30] = {0};  // mcu请求获取CPU参数ID列表
static uint8_t g_syncMpuParamSize = 0;          // mcu请求获取CPU参数的参数个数
static uint8_t g_syncMpuParamRequstFlag = 0;    // mcu请求获取CPU参数请求发送标记0:未发送，1：发送
static uint8_t g_syncMpuParamResultFlag = 0;    // mcu请求获取CPU参数结果标记0:未成功,1:成功
static uint16_t g_syncMpuParamTimeCount = 0;    // mcu请求获取CPU参数计时
static uint8_t g_syncParamToMpuRequstFlag = 0;  // Mcu请求同步参数到MPU请求标记0：无请求，1：有请求
static uint16_t g_syncParamToMpuTimeCount = 0;  // Mcu请求同步参数至Mpu请求时间计数
static uint8_t g_syncParamToMpuRequstCount = 0; // Mcu请求同步参数至Mpu重复请求计数
static uint8_t g_syncParamToMpuData[64] = {0};  // Mcu请求同步参数至Mpu请求数据缓存
static MpuHalDataPack_t g_syncParamToMpuPack;   // Mcu请求同步参数至Mpu请求数据缓存结构体
static uint8_t g_mpuDataBuffer[600] = {0};      // 用来存储MCU请求和响应数据的缓存buffer
static MpuHalDataPack_t g_mpuDataPack;          // 用来存储要发送的请求和响应数据的缓存结构体

static uint16_t g_syncOfflineDidReqTimeCount = 0; 
static uint8_t  g_offlineSyncDone = 0;          // 完成标志
static uint8_t  g_lastReqOfflineDidCount = 0;   // 锁 (1=等待回复)
static uint8_t  g_syncOfflineSearchIndex = 0;   // 当前索引
static uint16_t g_syncOfflineReqTimeout = 0;    // 超时计时
typedef struct
{
    uint16_t did;
    uint8_t  paramId;
} DidMapping_t;

static const DidMapping_t g_OfflineDidMap[] = {
    {0x011B, E_ParamId_APN},
    {0x011C, E_ParamId_IP1_ADDR},
    {0x011D, E_ParamId_TSPPort1},
    {0x031C, E_ParamId_TspDomain1},
    {0x013C, E_ParamId_Apn2},
    {0x105F, E_ParamId_Ip3Addr},
    {0x105E, E_ParamId_TspPort3},
    {0x1061, E_ParamId_Apn3},
    {0x1053, E_ParamId_PkiPort},
    {0x1052, E_ParamId_PkiDomainName},
    {0xF190, E_ParamId_VIN},
    {0x011F, E_ParamId_ECallNumber},
    {0x0124, E_ParamId_BCallNumber},
    {0x1014, E_ParamId_PublicTspDomain},

};

static uint8_t GetExpectedLengthByParamId(uint8_t paramId)
{
    switch (paramId)
    {
        case E_ParamId_APN:             return 32; // 0x011B
        case E_ParamId_IP1_ADDR:        return 16; // 0x011C
        case E_ParamId_TSPPort1:        return 8;  // 0x011D
        case E_ParamId_TspDomain1:      return 50; // 0x031C
        case E_ParamId_Apn2:            return 32; // 0x013C
        case E_ParamId_Ip3Addr:         return 16; // 0x105F
        case E_ParamId_TspPort3:        return 8;  // 0x105E
        case E_ParamId_Apn3:            return 32; // 0x1061
        case E_ParamId_PkiPort:         return 8;  // 0x1053
        case E_ParamId_PkiDomainName:   return 50; // 0x1052
        case E_ParamId_VIN:             return 17; // 0xF190
        case E_ParamId_ECallNumber:     return 14; // 0x011F
        case E_ParamId_BCallNumber:     return 14; // 0x0124
        case E_ParamId_PublicTspDomain: return 50; // 0x1014
        default:                        return 0;  //
    }
}

static uint8_t GetParamIdByDid(uint16_t did)
{
    uint8_t i;
    for(i = 0; i < sizeof(g_OfflineDidMap)/sizeof(DidMapping_t); i++)
    {
        if(g_OfflineDidMap[i].did == did)
        {
            return g_OfflineDidMap[i].paramId;
        }
    }
    return 0xFF;
}

static const ParamLengthEntry_t g_paramLengthTable[] = {
    {E_ParamId_SN, 45},
    {E_ParamId_VIN, 17},
    {E_ParamId_ParatNumber, 14},
};

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

    memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = g_syncMpuParamSize;
    lenth = 1;

    for (i = 0; i < g_syncMpuParamSize; i++)
    {
        g_mpuDataBuffer[lenth] = g_syncMpuParamIdList[i];
        lenth++;
    }

    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = lenth;

    return;
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

// /*************************************************
//   Function:       ParameterSyncResponseGetParamPackage
//   Description:    生成MPU向MCU请求获取参数的响应包
//   Input:          无
//   Output:         无
//   Return:         无
//   Others:
// *************************************************/
// static int16_t ParameterSyncResponseGetParamPackage(MpuHalDataPack_t *recvDataPack)
// {
//     uint8_t i = 0;
//     uint16_t lenth = 0;
//     uint16_t paramLenth = 0;

//     if (recvDataPack == NULL)
//     {
//         return -1;
//     }

//     g_mpuDataPack.aid = 0x01;
//     g_mpuDataPack.mid = 0x03;
//     g_mpuDataPack.subcommand = 0x02;
//     memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));
//     g_mpuDataPack.dataBufferSize = sizeof(recvDataPack);
//     g_mpuDataBuffer[0] = recvDataPack->pDataBuffer[0];
//     lenth = 1;

//     for (i = 0; i < recvDataPack->pDataBuffer[0]; i++)
//     {
//         g_mpuDataBuffer[lenth] = recvDataPack->pDataBuffer[1 + i];
//         //        if(onlyRead)
//         //        {
//         //           memcpy();
//         //       }
//         //      else
//         //     {
//         //        g_mcuParameterReadCbFunc(recvDataPack->pDataBuffer[1 + i], g_mpuDataBuffer + 2 + lenth, &paramLenth);
//         //}
//         g_mcuParameterReadCbFunc(recvDataPack->pDataBuffer[1 + i], g_mpuDataBuffer + 2 + lenth, &paramLenth);

//         g_mpuDataBuffer[1 + lenth] = paramLenth;
//         lenth = lenth + 2 + g_mpuDataBuffer[1 + lenth];
//     }

//     g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
//     g_mpuDataPack.dataLength = lenth;

//     return 0;
// }

/*******************************************************************************
 * Function:       ParameterSyncResponseGetParamPackage
 * Description:    处理MPU的参数读取请求(ReqParam)，并构建响应报文(RespParam)。
 * Return:         0: 成功, -1: 失败
 * Others:         无
 *******************************************************************************/
// static int16_t ParameterSyncResponseGetParamPackage(MpuHalDataPack_t *recvDataPack)
// {
//     uint8_t i = 0;
//     uint16_t total_length = 0;
//     uint8_t num_of_params = 0;
//     uint16_t paramLenth = 0;

//     if (recvDataPack == NULL)
//     {
//         return -1;
//     }

//     g_mpuDataPack.aid = 0x01;
//     g_mpuDataPack.mid = 0x03;
//     g_mpuDataPack.subcommand = 0x02;

//     memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));
//     g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);

//     num_of_params = recvDataPack->pDataBuffer[0];
//     g_mpuDataBuffer[0] = num_of_params;
//     total_length = 1;

//     for (i = 0; i < num_of_params; i++)
//     {
//         uint8_t current_param_id = recvDataPack->pDataBuffer[1 + i];
//         g_mpuDataBuffer[total_length] = current_param_id;
//         paramLenth = 0;

//         switch (current_param_id)
//         {
//         case E_ParamId_HW_Version: // F17F_cxl
//         {
//             ProjectConfigGetGacSparePartNumber_F17F(g_mpuDataBuffer + total_length + 2, &paramLenth);
//             break;
//         }
//         case E_ParamId_CustomSW_Version: // F189_cxl
//         {
//             ProjectConfigGetEcuSwVersion_F189(g_mpuDataBuffer + total_length + 2, &paramLenth);
//             break;
//         }
//         case E_ParamId_SW_Version: // C100
//         {
//             ProjectConfigSiRunSwVersion_C100(g_mpuDataBuffer + total_length + 2, &paramLenth);
//             break;
//         }
//             // case E_ParamId_SN: // F18C_cxl
//             // {
//             //     ProjectConfigGetGacEcuSerialNumber_F18C(g_mpuDataBuffer + total_length + 2, &paramLenth);
//             //     break;
//             // }

//         default:
//         {

//             if (g_mcuParameterReadCbFunc != NULL)
//             {
//                 // g_mcuParameterReadCbFunc(current_param_id, para, &paramLenth);
//                 // for ()
//                 g_mcuParameterReadCbFunc(current_param_id, g_mpuDataBuffer + total_length + 2, &paramLenth);
//             }
//             break;
//         }
//         }
//         g_mpuDataBuffer[total_length + 1] = paramLenth;
//         total_length = total_length + 1 + 1 + paramLenth;
//     }
//     g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
//     g_mpuDataPack.dataLength = total_length;

//     return 0;
// }
static int16_t ParameterSyncResponseGetParamPackage(MpuHalDataPack_t *recvDataPack)
{
    uint8_t i = 0;
    uint16_t total_length = 0;
    uint8_t num_of_params = 0;
    uint16_t paramLenth = 0;

    if (recvDataPack == NULL)
    {
        return -1;
    }

    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x02;

    memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);

    num_of_params = recvDataPack->pDataBuffer[0];
    g_mpuDataBuffer[0] = 0;
    total_length = 1;

    uint8_t valid_param_count = 0;

    for (i = 0; i < num_of_params; i++)
    {
        uint8_t current_param_id = recvDataPack->pDataBuffer[1 + i];

        // if (current_param_id == E_ParamId_VIN || 
        //     current_param_id == E_ParamId_ECallNumber || 
        //     current_param_id == E_ParamId_BCallNumber)
        // {
        //     continue;
        // }
        uint8_t *pWrite = g_mpuDataBuffer + total_length;
        paramLenth = 0;

        switch (current_param_id)
        {
        case E_ParamId_HW_Version: // F17F_cxl
            {
                if (BootInfo_ReadHardwareVersion(pWrite + 2, BOOT_HW_VERSION_LEN) == 0)
                {
                    paramLenth = BOOT_HW_VERSION_LEN;
                }
                else
                {
                    paramLenth = 0; 
                }
            }
            // ProjectConfigGetGacSparePartNumber_F17F(pWrite + 2, &paramLenth);
            break;

        case E_ParamId_CustomSW_Version: // F189_cxl
            ProjectConfigGetEcuSwVersion_F189(pWrite + 2, &paramLenth);
            break;

        case E_ParamId_SW_Version: // C100
            ProjectConfigSiRunSwVersion_C100(pWrite + 2, &paramLenth);
            break;

        case E_ParamId_ParatNumber: // F187_cxl
            ProjectConfigGetGacEcuPartNumber_F187(pWrite + 2, &paramLenth);
            break;
        default:
            if (g_mcuParameterReadCbFunc != NULL)
            {
                g_mcuParameterReadCbFunc(current_param_id, pWrite + 2, &paramLenth);
            }
            break;
        }

        bool all_ff = true;
        for (uint16_t j = 0; j < paramLenth; j++)
        {
            if (*(pWrite + 2 + j) != 0xFF)
            {
                all_ff = false;
                break;
            }
        }

        if (all_ff)
        {
            continue;
        }

        pWrite[0] = current_param_id;
        pWrite[1] = (uint8_t)paramLenth;
        total_length += 2 + paramLenth;
        valid_param_count++;
    }

    g_mpuDataBuffer[0] = valid_param_count;

    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = total_length;

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

    memset(g_syncParamToMpuData, 0, sizeof(g_syncParamToMpuData));

    g_syncParamToMpuPack.dataBufferSize = sizeof(g_syncParamToMpuData);
    g_syncParamToMpuData[0] = paramId;

    g_mcuParameterReadCbFunc(paramId, g_syncParamToMpuData + 2, &lenth);
    g_syncParamToMpuData[1] = (lenth & 0xFF);
    lenth = 2 + g_syncParamToMpuData[1];
    g_syncParamToMpuPack.pDataBuffer = g_syncParamToMpuData;
    g_syncParamToMpuPack.dataLength = lenth;

    return;
}

/*************************************************
  Function:       ParameterSyncResponseSyncParamPackage
  Description:    生成CPU同步参数到MCU的响应数据包
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void ParameterSyncResponseSyncParamPackage(uint8_t result, uint8_t paramId)
{
    uint16_t lenth = 0;

    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;
    g_mpuDataPack.subcommand = 0x04;

    memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));

    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = (result == 1) ? 0 : 1;
    g_mpuDataBuffer[1] = paramId;
    g_mcuParameterReadCbFunc(paramId, g_mpuDataBuffer + 3, &lenth);
    g_mpuDataBuffer[2] = (lenth & 0xFF);
    lenth = lenth + 3;
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = lenth;

    return;
}
// static void ParameterSyncResponseSyncParamPackage(uint8_t result, uint8_t paramId, uint8_t *pData, uint16_t len)

// {

//     g_mpuDataPack.aid = 0x01;
//     g_mpuDataPack.mid = 0x03;
//     g_mpuDataPack.subcommand = 0x04;                        // RespSyncParam
//     g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer); // 假设缓冲区大小
//     g_mpuDataBuffer[0] = (result == 0) ? 0 : 1;             // status
//     g_mpuDataBuffer[1] = paramId;                           // ParaIndex
//     g_mpuDataBuffer[2] = (uint8_t)len;                      // ParaLength
//     if (pData != NULL && len > 0)
//     {
//         memcpy(&g_mpuDataBuffer[3], pData, len);
//     }
//     g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
//     g_mpuDataPack.dataLength = 3 + len;
// }
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
int16_t ParameterSyncSdkInit(int16_t mpuHandle, pMcuParametReadFun_t mcuParamReadCb, pMcuParametWriteFun_t mcuParamWriteCb, uint16_t cycleTime, uint8_t *syncParamList, uint8_t syncParamSize)
{
    if (cycleTime == 0 || syncParamList == NULL || syncParamSize == 0)
    {
        return -1;
    }
    g_cycleTime = cycleTime;
    g_mpuHandle = mpuHandle;
    g_mcuParameterReadCbFunc = mcuParamReadCb;
    g_mcuParameterWriteCbFunc = mcuParamWriteCb;
    memcpy(g_syncMpuParamIdList, syncParamList, syncParamSize);
    g_syncMpuParamSize = syncParamSize;

    return 0;
}

static uint8_t IsValidParamData(uint8_t paramId, uint8_t *data, uint16_t length)
{
    uint8_t i;
    uint8_t found = 0;
    uint16_t expectedLen = 0;
    // if (paramId == E_ParamId_ECallNumber || paramId == E_ParamId_BCallNumber)
    // {
    //     if (length != 14)
    //     {
    //         return 0;
    //     }
    // }
    for (i = 0; i < sizeof(g_paramLengthTable) / sizeof(g_paramLengthTable[0]); i++)
    {
        if (g_paramLengthTable[i].paramId == paramId)
        {
            expectedLen = g_paramLengthTable[i].length;
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

        if (paramId == E_ParamId_SN || paramId == E_ParamId_VIN || paramId == E_ParamId_ParatNumber)
        {
            uint8_t isAll0x00 = 1;
            uint8_t isAll0x01 = 1;
            uint8_t isAll0xFF = 1;

            for (uint16_t j = 0; j < length; j++)
            {
                if (data[j] != 0x30) // ASCII '0'
                    isAll0x00 = 0;
                if (data[j] != 0x31) // ASCII '1'
                    isAll0x01 = 0;
                if (data[j] != 0xFF)
                    isAll0xFF = 0;
                //
                if (isAll0x01 == 0 && isAll0xFF == 0 && isAll0x00 == 0)
                {
                    return 1;
                }
            }

            if (isAll0x00 || isAll0x01 || isAll0xFF)
            {
                return 0;
            }
        }
    }

    return 1;
}

static uint8_t IsOfflineDataValid(uint8_t paramId, uint8_t *data, uint16_t len)
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
            break;
        }
    }

    if (isAllFF || isAllZero)
    {
        return 0; 
    }

    // 检查是否为ASCII码字符串参数
    if (paramId == E_ParamId_CustomSW_Version || 
        paramId == E_ParamId_SW_Version || 
        paramId == E_ParamId_HW_Version || 
        paramId == E_ParamId_VIN || 
        paramId == E_ParamId_SN || 
        paramId == E_ParamId_ParatNumber || 
        paramId == E_ParamId_ECallNumber || 
        paramId == E_ParamId_BCallNumber)
    {
        for (k = 0; k < len; k++)
        {
            // 检查是否为有效的ASCII字符 (0x20-0x7E)
            if (data[k] < 0x20 || data[k] > 0x7E)
            {
                return 0;
            }
        }
    }

    return 1;
}

/* 根据 DID 获取标准长度 (直接用 DID 判断，避开 ParamId 枚举映射错误) */
static uint16_t GetParamStandardLength(uint16_t did)
{
    switch (did)
    {
        // === 14字节 (电话号码) ===
        case 0x011F: // ECallNumber
        case 0x0124: // BCallNumber
            return 14;

        // === 17字节 (VIN) ===
        case 0xF190: 
            return 17;

        // === 16字节 (IP & ESK) ===
        case 0x011C: // IP1
        case 0x105F: // IP3
            return 16;

        // === 32字节 (APN) ===
        case 0x011B: // APN1
        case 0x013C: // APN2
        case 0x1061: // APN3
            return 32;

        // === 8字节 (端口) ===
        case 0x011D: // Port1
        case 0x105E: // Port3
        case 0x1053: // PkiPort
            return 8;

        // === 50字节 (域名) ===
        case 0x031C: // Domain1
        case 0x1052: // PkiDomain
        case 0x1014: // PublicDomain
            return 50;

        default: 
            return 0; 
    }
}

/*************************************************
  Function:       ParameterSyncResponseOfflineDidPackage
  Description:    处理 SubCmd 07 (Req)，回复 SubCmd 08 (Resp)
                  解析 MPU 发来的 DID 列表，通过映射读取本地参数，
                  并按 [DID(2)] [Len(1)] [Value] 格式回复
  Input:          recvDataPack: MPU 发来的请求包
  Output:         无
  Return:         0: 成功
*************************************************/
static int16_t ParameterSyncResponseOfflineDidPackage(MpuHalDataPack_t *recvDataPack)
{
    uint8_t i = 0;
    uint16_t total_length = 0;
    uint16_t paramLenth = 0;
    
    if (recvDataPack == NULL || recvDataPack->dataLength < 1)
    {
        return -1;
    }

    g_mpuDataPack.aid = 0x01;
    g_mpuDataPack.mid = 0x03;       
    g_mpuDataPack.subcommand = 0x08; 

    memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);

    // 获取请求中的参数个数
    uint8_t reqNum = recvDataPack->pDataBuffer[0];
    
    // g_mpuDataBuffer[0] 填实际回复的有效参数个数
    g_mpuDataBuffer[0] = 0; 
    total_length = 1;

    uint8_t valid_count = 0;
    uint16_t readOffset = 1; // 从请求包的第2个字节开始读 DID

    for (i = 0; i < reqNum; i++)
    {
        if (readOffset + 2 > recvDataPack->dataLength)
        {
            break; 
        }

        uint16_t did = (uint16_t)(recvDataPack->pDataBuffer[readOffset] << 8) | recvDataPack->pDataBuffer[readOffset + 1];
        readOffset += 2;

        uint8_t paramId = GetParamIdByDid(did);

        if (paramId == 0xFF) 
        {
            continue;
        }

        uint8_t *pWriteDataPtr = g_mpuDataBuffer + total_length + 4;
        paramLenth = 0;

        if (g_mcuParameterReadCbFunc != NULL)
        {
            g_mcuParameterReadCbFunc(paramId, pWriteDataPtr, &paramLenth);
        }
        uint16_t stdLen = GetParamStandardLength(did);

        if (stdLen > 0) 
        {
            if (paramLenth < stdLen)
            {
                memset(pWriteDataPtr + paramLenth, 0x00, stdLen - paramLenth);
                paramLenth = stdLen;
            }
            else if (paramLenth > stdLen)
            {
                 paramLenth = stdLen;
            }
        }

        if (IsOfflineDataValid(paramId, pWriteDataPtr, paramLenth) == 0)
        {
            continue; 
        }

        if (total_length + 4 + paramLenth > sizeof(g_mpuDataBuffer))
        {
            break;
        }

        // === 打包响应数据 ===
        // 格式: [DID_H] [DID_L] [Len_H] [Len_L] [Value...]
        uint8_t *pWriteHead = g_mpuDataBuffer + total_length;
        
        pWriteHead[0] = (uint8_t)(did >> 8);   // DID High
        pWriteHead[1] = (uint8_t)(did & 0xFF); // DID Low
        
        // 【修改点】Length 改为 2 Bytes
        pWriteHead[2] = (uint8_t)(paramLenth >> 8);   // Length High
        pWriteHead[3] = (uint8_t)(paramLenth & 0xFF); // Length Low
        
        // Data 已经在 g_mcuParameterReadCbFunc 中写入到了 pWriteHead + 4 的位置

        total_length += (4 + paramLenth);
        valid_count++;
    }

    // 更新实际回复的参数个数
    g_mpuDataBuffer[0] = valid_count;
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = total_length;

    return 0;
}

static void ParameterSyncRequstMissingOfflineDidPackage(void)
{
    uint16_t paramLen = 0;
    uint8_t tempBuffer[64];
    uint8_t mapSize = sizeof(g_OfflineDidMap)/sizeof(DidMapping_t);

    /* 1. 如果已完成，直接退出 */
    if (g_offlineSyncDone) return;

    /* 2. 锁检查 */
    if (g_lastReqOfflineDidCount != 0) return;

    if (g_syncOfflineSearchIndex >= mapSize)
    {
        // 索引跑到末尾，说明所有 DID 都处理过了（要么有效，要么回复了全0）
        g_offlineSyncDone = 1; 
        g_syncOfflineSearchIndex = 0;
        return;
    }

    /* 4. 循环扫描 */
    // g_syncOfflineSearchIndex 会在 continue 时自增
    for (; g_syncOfflineSearchIndex < mapSize; g_syncOfflineSearchIndex++)
    {
        uint16_t did = g_OfflineDidMap[g_syncOfflineSearchIndex].did;
        uint8_t paramId = g_OfflineDidMap[g_syncOfflineSearchIndex].paramId;

        /* 读取本地 Flash */
        paramLen = 0;
        if (g_mcuParameterReadCbFunc != NULL)
        {
            g_mcuParameterReadCbFunc(paramId, tempBuffer, &paramLen);
        }
        
        /* 情况 A: 本地数据有效 -> 自动跳过 (Index++) */
        if (IsOfflineDataValid(paramId, tempBuffer, paramLen))
        {
            continue; 
        }
        /* 情况 B: 本地数据无效 -> 发送请求 */
        memset(g_mpuDataBuffer, 0, sizeof(g_mpuDataBuffer));

        g_mpuDataBuffer[0] = 1; 
        g_mpuDataBuffer[1] = (uint8_t)(did >> 8);
        g_mpuDataBuffer[2] = (uint8_t)(did & 0xFF);

        g_mpuDataPack.aid = 0x01;
        g_mpuDataPack.mid = 0x03;
        g_mpuDataPack.subcommand = 0x09; // 0x09
        g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
        g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
        g_mpuDataPack.dataLength = 3; 

        if (MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE) == 0)
        {
            g_lastReqOfflineDidCount = 1; // 上锁
            g_syncOfflineReqTimeout = 0;  // 清零超时

            return; 
        }
    }
    
    g_offlineSyncDone = 1;
}


/*************************************************
  Function:       ParameterSyncProcessOfflineDidResponse
  Description:    [SubCmd 0x10] 处理MPU回复
                  逻辑：写前检查，本地若已有效则不写
*************************************************/
static void ParameterSyncProcessOfflineDidResponse(MpuHalDataPack_t *recvDataPack)
{
    if (recvDataPack == NULL || recvDataPack->dataLength < 1) return;

    uint8_t respCount = recvDataPack->pDataBuffer[0];
    uint16_t readOffset = 1;
    
    uint8_t localBuffer[64]; 
    uint16_t localLen = 0;

    for (uint8_t i = 0; i < respCount; i++)
    {
        if (readOffset + 4 > recvDataPack->dataLength) break;

        uint16_t did = ((uint16_t)recvDataPack->pDataBuffer[readOffset] << 8) |
                        recvDataPack->pDataBuffer[readOffset + 1];
        readOffset += 2;

        uint16_t dataLen = ((uint16_t)recvDataPack->pDataBuffer[readOffset] << 8) |
                            recvDataPack->pDataBuffer[readOffset + 1];
        readOffset += 2;

        if (readOffset + dataLen > recvDataPack->dataLength) break;

        uint8_t *pMpuData = &recvDataPack->pDataBuffer[readOffset];
        uint8_t paramId = GetParamIdByDid(did);
        //先读本地
        if (paramId != 0xFF && g_mcuParameterWriteCbFunc != NULL)
        {
            uint8_t expectedLen = GetExpectedLengthByParamId(paramId);
            
            if (expectedLen != 0 && dataLen != expectedLen)
            {
            }
            else if (IsValidParamData(paramId, pMpuData, dataLen) == 0)
            {
            }
            else
            {
                localLen = 0;
                if (g_mcuParameterReadCbFunc != NULL)
                {
                    g_mcuParameterReadCbFunc(paramId, localBuffer, &localLen);
                }

                if (IsOfflineDataValid(paramId, localBuffer, localLen) == 1)
                {
                    // 本地有效数据，不再覆盖
                }
                else
                {
                    if (IsOfflineDataValid(paramId, pMpuData, dataLen) == 1)
                    {
                        g_mcuParameterWriteCbFunc(paramId, pMpuData, dataLen);
                    }
                }
            }
        }
        readOffset += dataLen;
    }


    g_syncOfflineSearchIndex++; 

    /* 解锁 */
    g_lastReqOfflineDidCount = 0;
    g_syncOfflineReqTimeout = 0;
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
    uint16_t length = 0;

    if (recvDataPack != NULL)
    {
        // TBOX_PRINT("Parameter sync : aid %d ,mid %d, subcommond %d\r\n",recvDataPack->aid,recvDataPack->mid,(recvDataPack->subcommand & 0x7F));
        if ((recvDataPack->subcommand & 0x7F) == 2)
        {
            i = 0;
            offsetLen = 1;
            for (i = 0; i < recvDataPack->pDataBuffer[0]; i++)
            {
                uint8_t currentParamId = recvDataPack->pDataBuffer[offsetLen];
                uint8_t mpuDataLen = recvDataPack->pDataBuffer[offsetLen + 1];
                uint8_t *pMpuData = &(recvDataPack->pDataBuffer[offsetLen + 2]);

                if (currentParamId == g_syncMpuParamIdList[14])
                {
                    ProjectConfigGetMcuMpuTotalVersion(paramData, &length);
                    if (memcmp(paramData, pMpuData, mpuDataLen) != 0)
                    {
                        if (ProjectConfigSetMpuVersion(pMpuData, mpuDataLen) == 0)
                        {
                            ProjectConfigGetMcuMpuTotalVersion(paramData, &length);
                            g_mcuParameterWriteCbFunc(currentParamId, paramData, length);
                        }
                    }
                }
                else
                {
                    uint8_t expectedLen = GetExpectedLengthByParamId(currentParamId);
                    uint8_t allowWrite = 0;

                    if (expectedLen != 0 && mpuDataLen != expectedLen)
                    {
                        // 长度不对，跳过该参数，继续解析后续报文
                    }
                    else
                    {
                        length = 0;
                        if (g_mcuParameterReadCbFunc(currentParamId, paramData, &length) == 0)
                        {
                            if (IsOfflineDataValid(currentParamId, paramData, length) == 0)
                            {
                                if (IsValidParamData(currentParamId, pMpuData, mpuDataLen) == 1)
                                {
                                    if (memcmp(paramData, pMpuData, mpuDataLen) != 0)
                                    {
                                        allowWrite = 1;
                                    }
                                }
                            }
                        }
                    }

                    if (allowWrite == 1)
                    {
                        g_mcuParameterWriteCbFunc(currentParamId, pMpuData, mpuDataLen);
                    }
                }
                offsetLen = offsetLen + 2 + mpuDataLen;
            }

            // 处理完成后重置相关标记
            g_syncMpuParamResultFlag = 1;
            g_syncMpuParamTimeCount = 0;
            g_syncOfflineDidReqTimeCount = 0;
            g_offlineSyncDone = 0;
            g_lastReqOfflineDidCount = 0;
            g_syncOfflineSearchIndex = 0;
            g_syncOfflineReqTimeout = 0;
        }
        else if ((recvDataPack->subcommand & 0x7F) == 1)
        {
            if (g_syncMpuParamResultFlag == 1)
            {
                ParameterSyncResponseGetParamPackage(recvDataPack);
                MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
            }
            
        }
        else if ((recvDataPack->subcommand & 0x7F) == 4)
        {
            if (g_syncParamToMpuRequstFlag == 1)
            {
                if (recvDataPack->pDataBuffer[0] == 0)
                {
                    g_syncParamToMpuRequstFlag = 0;
                    g_syncParamToMpuRequstCount = 0;
                    g_syncParamToMpuTimeCount = 0;
                }
            }
        }
        else if ((recvDataPack->subcommand & 0x7F) == 3)
{
    uint8_t paramId  = recvDataPack->pDataBuffer[0];
    uint8_t paramLen = recvDataPack->pDataBuffer[1];
    uint8_t *pData   = &recvDataPack->pDataBuffer[2];
    
    uint8_t expectedLen = GetExpectedLengthByParamId(paramId);
    uint8_t localBuf[64];
    uint16_t localLen = 0;
    uint8_t allowWrite = 0;

    if (expectedLen != 0 && paramLen == expectedLen)
    {
        if (IsValidParamData(paramId, pData, paramLen))
        {

            if (g_mcuParameterReadCbFunc != NULL)
            {
                int16_t readRet = g_mcuParameterReadCbFunc(paramId, localBuf, &localLen);
                
                if (readRet == 0)
                {
                    if (IsOfflineDataValid(paramId, localBuf, localLen) == 0)
                    {
                        allowWrite = 1;
                    }
                    else
                    {
                        allowWrite = 0;
                    }
                }
                else
                {
                    allowWrite = 0;
                }
            }
        }
    }

    if (allowWrite == 1)
    {
        g_mcuParameterWriteCbFunc(paramId, pData, paramLen);
        ParameterSyncResponseSyncParamPackage(1, paramId); // 回复成功
    }
    else
    {
        ParameterSyncResponseSyncParamPackage(0, paramId); 
    }
    
    MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
}
        else if ((recvDataPack->subcommand & 0x7F) == 7)
        {
            if (g_syncMpuParamResultFlag == 1 && g_offlineSyncDone == 1)
            {
                ParameterSyncResponseOfflineDidPackage(recvDataPack);
                MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
            }   
        }
        else if ((recvDataPack->subcommand & 0x7F) == 0x10)
        {
            ParameterSyncProcessOfflineDidResponse(recvDataPack);
        }
        else
        {
        }
    }
    if (g_syncMpuParamResultFlag == 0)
    {
        g_syncMpuParamTimeCount++;
        if (g_syncMpuParamRequstFlag == 0 || (g_syncMpuParamRequstFlag == 1 && g_syncMpuParamTimeCount >= (1000 / g_cycleTime)))
        {
            ParameterSyncRequstGetAllParamPackage();
            MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
            g_syncMpuParamRequstFlag = 1;
            g_syncMpuParamTimeCount = 0;
        }
    }
   else 
    {
        /* 0x09 离线参数同步 */
        if (g_offlineSyncDone == 0)
        {
            g_syncOfflineDidReqTimeCount++;

            /* --- 超时检测 (重试机制) --- */
            /* 如果 2秒 没回，认为超时，解锁重试 */
            if (g_lastReqOfflineDidCount != 0)
            {
                g_syncOfflineReqTimeout++;
                
                if (g_cycleTime > 0 && g_syncOfflineReqTimeout >= (2000 / g_cycleTime))
                {
                    // 超时了！解锁，下次重试同一个
                    g_lastReqOfflineDidCount = 0;
                    g_syncOfflineReqTimeout = 0;
                }
            }
            else
            {
                g_syncOfflineReqTimeout = 0;
            }

            /* --- 发送触发 --- */
            if (g_lastReqOfflineDidCount == 0)
            {
                // ⭐ 修改这里：1000ms (1秒) 请求一次
                if (g_cycleTime > 0 && g_syncOfflineDidReqTimeCount >= (1000 / g_cycleTime))
                {
                    g_syncOfflineDidReqTimeCount = 0;
                    ParameterSyncRequstMissingOfflineDidPackage();
                }
            }
        }
    }
    if (g_syncParamToMpuRequstFlag == 1)
    {
        g_syncParamToMpuTimeCount++;
        if (g_syncParamToMpuTimeCount > (1000 / g_cycleTime))
        {
            g_syncParamToMpuRequstCount++;
            if (g_syncParamToMpuRequstCount < 3)
            {
                MpuHalTransmit(g_mpuHandle, &g_syncParamToMpuPack, MPU_HAL_UART_MODE);
                g_syncParamToMpuTimeCount = 0;
            }
        }
    }

    return;
}
// void ParameterSyncSdkCycleProcess(MpuHalDataPack_t *recvDataPack)
// {
//     if (recvDataPack != NULL)
//     {
//         uint8_t subcommand = recvDataPack->subcommand & 0x7F;
//         uint8_t *pData = recvDataPack->pDataBuffer;
//         uint16_t dataLen = recvDataPack->dataLength;

//         switch (subcommand)
//         {
//         case 0x02:
//         {
//             if (dataLen < 1)
//                 break;

//             uint8_t count = pData[0];
//             uint16_t offset = 1;
//             uint8_t localDataBuffer[256];

//             for (uint8_t i = 0; i < count; i++)
//             {
//                 if (offset + 2 > dataLen)
//                     break;
//                 uint8_t paramId = pData[offset];
//                 uint8_t paramLen = pData[offset + 1];
//                 if (offset + 2 + paramLen > dataLen)
//                     break;
//                 uint8_t *mpuData = &pData[offset + 2];

//                 uint16_t localLen = 0;
//                 g_mcuParameterReadCbFunc(paramId, localDataBuffer, &localLen);
//                 if ((localLen != paramLen) || (memcmp(localDataBuffer, mpuData, paramLen) != 0))
//                 {
//                     g_mcuParameterWriteCbFunc(paramId, mpuData, paramLen);
//                 }
//                 offset += (2 + paramLen);
//             }
//             g_syncMpuParamResultFlag = 1;
//             g_syncMpuParamTimeCount = 0;
//             break;
//         }

//         case 0x01:
//         {
//             ParameterSyncResponseGetParamPackage(recvDataPack);
//             MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
//             break;
//         }

//         case 0x03:
//         {

//             if (dataLen < 2)
//                 break;
//             uint8_t paramId = pData[0];
//             uint8_t paramLen = pData[1];

//             if (2 + paramLen > dataLen)
//                 break;

//             uint8_t *value = &pData[2];
//             uint8_t status = 0; // 0=success, 1=error
//             uint8_t readBackBuffer[256];
//             uint16_t readBackLen = 0;

//             if (g_mcuParameterWriteCbFunc(paramId, value, paramLen) != 0)
//             {
//                 status = 1;
//             }
//             g_mcuParameterReadCbFunc(paramId, readBackBuffer, &readBackLen);
//             ParameterSyncResponseSyncParamPackage(status, paramId, readBackBuffer, readBackLen);
//             MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
//             break;
//         }
//         case 0x04:
//         {
//             if (g_syncParamToMpuRequstFlag == 1)
//             {
//                 if (dataLen < 4)
//                     break;

//                 uint8_t status = pData[0];
//                 uint8_t respId = pData[1];
//                 uint8_t respLen = pData[2];
//                 uint8_t *respData = &pData[3];

//                 if ((status == 0) &&
//                     (respId == g_syncParamToMpuPack.pDataBuffer[0]) &&
//                     (respLen == g_syncParamToMpuPack.pDataBuffer[1]) &&
//                     (memcmp(respData, &g_syncParamToMpuPack.pDataBuffer[2], respLen) == 0))
//                 {

//                     g_syncParamToMpuRequstFlag = 0;
//                     g_syncParamToMpuRequstCount = 0;
//                     g_syncParamToMpuTimeCount = 0;
//                 }
//             }
//             break;
//         }
//         }
//     }

//     if (g_syncMpuParamResultFlag == 0)
//     {
//         g_syncMpuParamTimeCount++;
//         if (g_syncMpuParamRequstFlag == 0 || (g_syncMpuParamTimeCount >= (1000 / g_cycleTime)))
//         {
//             ParameterSyncRequstGetAllParamPackage();
//             MpuHalTransmit(g_mpuHandle, &g_mpuDataPack, MPU_HAL_UART_MODE);
//             g_syncMpuParamRequstFlag = 1;
//             g_syncMpuParamTimeCount = 0;
//         }
//     }

//     if (g_syncParamToMpuRequstFlag == 1)
//     {
//         g_syncParamToMpuTimeCount++;
//         if (g_syncParamToMpuTimeCount > (5000 / g_cycleTime))
//         {
//             g_syncParamToMpuRequstCount++;
//             if (g_syncParamToMpuRequstCount < SYNC_PARAM_TO_MPU_REQUST_COUNT_MAX)
//             {
//                 MpuHalTransmit(g_mpuHandle, &g_syncParamToMpuPack, MPU_HAL_UART_MODE);
//                 g_syncParamToMpuTimeCount = 0;
//             }
//             else
//             {
//                 g_syncParamToMpuRequstFlag = 0;
//                 g_syncParamToMpuRequstCount = 0;
//                 g_syncParamToMpuTimeCount = 0;
//             }
//         }
//     }
// }
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
int16_t ParameterSyncSdkSetToCpu(uint8_t parameterId, uint8_t *pData, uint16_t length)
{
    int16_t ret = -1;
    uint16_t i = 0;
    uint8_t retryCount = 0;

    const uint8_t MAX_RETRY_TIMES = 2;
    
    const uint32_t POLL_INTERVAL_MS = 10;   
    const uint16_t WAIT_LOOP_COUNT = 50;    

    if (pData == NULL || length == 0)
    {
        return ret;
    }

    ParameterSyncRequstSyncParamPackage(parameterId);

    g_syncParamToMpuTimeCount = 0;
    g_syncParamToMpuRequstCount = 0;
    g_syncParamToMpuRequstFlag = 1;

    for (retryCount = 0; retryCount < MAX_RETRY_TIMES; retryCount++)
    {
        MpuHalTransmit(g_mpuHandle, &g_syncParamToMpuPack, MPU_HAL_UART_MODE);

        for (i = 0; i < WAIT_LOOP_COUNT; i++)
        {
            if (g_syncParamToMpuRequstFlag == 0)
            {
                return 0; 
            }
            vTaskDelay(pdMS_TO_TICKS(POLL_INTERVAL_MS));
        }
        
    }

    if (g_syncParamToMpuRequstFlag != 0)
    {
        g_syncParamToMpuRequstFlag = 0;
    }

    return -1;
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
    return (g_syncMpuParamResultFlag == 1) ? 0 : -1;
}
