/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: ParameterStoreManageApp.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include <string.h>
#include "stdlib.h"
#include "flashHal.h"
#include "ParameterStoreManageApp.h"
#include "logHal.h"
#include "parameterSyncSdk.h"

#include "NVM.h"
#include "SchM_NVM.h"
#include "Fls.h"
#include "NvM_Cfg.h"

/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
typedef struct {
    FlashParaId_e paramID;  /* FLASH ID */
    uint32_t  paramLen;      /* 数据长度 */
    uint8_t  blockID;      /* NvM block ID */
    uint8 * paramAddress;    /* 数据地址 */
} FlashParamMap_t;

/****************************** Global Variables ******************************/
const FlashParamMap_t FlashParamMap[E_PARAMETER_INFO_MAX_NUM] = {
    {E_PARAMETER_INFO_ICCID,                20,     NvMBlock_DIDF130,   NULL},
    {E_PARAMETER_INFO_IMEI,                 24,     NvMBlock_DIDF130,   NULL},
    {E_PARAMETER_INFO_SN,                   16,     NvMBlock_DIDF18C,   NvMBlockRamBuffer6},
    {E_PARAMETER_INFO_VIN,                  17,     NvMBlock_DIDF190,   NvMBlockRamBuffer7},
    {E_PARAMETER_INFO_TSPAddr,              32,     NvMBlock_DIDC007,   NvMBlockRamBuffer17},
    {E_PARAMETER_INFO_TSPPort,              6,      NvMBlock_DIDC009,   NvMBlockRamBuffer19},
    {E_PARAMETER_INFO_ECallNumber,          15,     NvMBlock_DIDF130,   NULL},
    {E_PARAMETER_INFO_ManufactureData,      3,      NvMBlock_DIDF18B,   NvMBlockRamBuffer5},
    {E_PARAMETER_INFO_ParatNumber,          5,      NvMBlock_DIDF130,   NULL},
    {E_PARAMETER_INFO_SupIdentifier,        5,      NvMBlock_DIDF130,    NULL},

};

/****************************** Function Declarations *************************/
static int16_t VehicleInforGetDataOffsetAddressAndLength(FlashParaId_e parameterId, ParamInfo_t *paramInfo);


/****************************** Public Function Implementations ******************************/
/*************************************************
  Function: VehicleInforGetDataAddressAndLength
  Description: Get the address and length of the vehicle information parameter
  Input: parameterId - The ID of the vehicle information parameter
         pTypeFlag - Pointer to store the type flag of the parameter
         length - Pointer to store the length of the parameter
  Output: None
  Return: 0 if successful, -1 if parameterId is out of range
  Others: None
*************************************************/
static int16_t VehicleInforGetDataOffsetAddressAndLength(FlashParaId_e parameterId, ParamInfo_t *paramInfo)
{
    if (parameterId >= E_PARAMETER_INFO_MAX_NUM) {
        // TBOX_PRINT("paramId = %d is over!\n", parameterId);
        return -1;
    }

    const FlashParamMap_t *pParam = &FlashParamMap[parameterId];

    if(pParam->paramAddress == NULL)
    {
        // TBOX_PRINT("ID: %d paramAddressis NULL!\n", parameterId);
        return -1;
    }
    
    paramInfo->address = pParam->paramAddress;
    paramInfo->length = pParam->paramLen;
    paramInfo->blockID = pParam->blockID;
    
    return 0;
}

/*************************************************
  Function: WorkFlashVehicleInforStore
  Description: Store vehicle information parameter in work flash
  Input: parameterId - The ID of the vehicle information parameter
         data - Pointer to the data to store
         dataLength - Length of the data to store
  Output: None
  Return: 0 if successful, negative value if failed
  Others: None
*************************************************/
int16_t WorkFlashVehicleInforStore(FlashParaId_e parameterId, uint8_t *data, uint32_t dataLength)
{
    int16_t ret = 0;
    ParamInfo_t paramInfo;
    paramInfo.address = NULL;
    paramInfo.length = 0u;
    paramInfo.blockID = 0u;
    uint32_t timeout = 0;
    NvM_RequestResultType blockStatus = NVM_REQ_PENDING;
    
    if (data == NULL) 
    {
        ret = ERR_CODE_NULL_POINTER;
        return ret;
    }

    /* 通过参数ID获取blockID、地址、长度 */
    ret = VehicleInforGetDataOffsetAddressAndLength(parameterId, &paramInfo);

    if ((ret != 0) || (dataLength > paramInfo.length) || paramInfo.address == NULL) 
    {
        ret = ERR_CODE_INVALID_PARAMETER;
        return ret;
    }

    do{
        timeout++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(paramInfo.blockID, &blockStatus);
        if(timeout >= 5000)break;
    }while(blockStatus == NVM_REQ_PENDING);

    // TBOX_PRINT("W %d blockStatus = %d\n", parameterId, blockStatus);

    memcpy(paramInfo.address, data, dataLength);
    NvM_WriteBlock(paramInfo.blockID, paramInfo.address);

    return ret;
}

/*************************************************
  Function: WorkFlashVehicleInforRead
  Description: Read vehicle information parameter from work flash
  Input: parameterId - The ID of the vehicle information parameter
         data - Pointer to store the read data
         dataLength - Pointer to store the length of the read data
  Output: None
  Return: 0 if successful, negative value if failed
  Others: None
*************************************************/
int16_t WorkFlashVehicleInforRead(FlashParaId_e parameterId, uint8_t *data, uint32_t *dataLength)
{
    int16_t ret = 0;
    ParamInfo_t paramInfo;
    paramInfo.address = NULL;
    paramInfo.length = 0u;
    paramInfo.blockID = 0u;
    uint32_t timeout = 0;
    NvM_RequestResultType blockStatus = NVM_REQ_PENDING;

    if (data == NULL) 
    {
        ret = ERR_CODE_NULL_POINTER;
        return ret;
    }

    /* 通过参数ID获取blockID、地址、长度 */
    ret = VehicleInforGetDataOffsetAddressAndLength(parameterId, &paramInfo);
    if (ret != 0 || paramInfo.length == 0 || paramInfo.address == NULL)
    {
        ret = ERR_CODE_INVALID_PARAMETER;
        return ret;
    }

    do{
        timeout++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(paramInfo.blockID, &blockStatus);
        if(timeout >= 5000)break;
    }while(blockStatus == NVM_REQ_PENDING);

    NvM_ReadBlock(paramInfo.blockID, paramInfo.address);
    memcpy(data, paramInfo.address, paramInfo.length);
    *dataLength = paramInfo.length;
    // TBOX_PRINT("R %d blockStatus = %d\n", parameterId, blockStatus);

    return ret;
}

/*************************************************
  Function: PrintHexArray
  Description: 将字节数组格式化为十六进制字符串并一次性打印，避免循环打印丢包
  Input: data - 字节数组指针
         length - 数组长度
         prefix - 前缀字符串
  Output: None
  Return: None
  Others: 使用静态缓冲区，最大支持 256 字节数据打印//调试
*************************************************/
void PrintHexArray(const uint8_t *data, uint32_t length, const char *prefix)
{
    static char logBuffer[384];  /* 静态缓冲区，最大支持 128 字节 */
    uint32_t i = 0;
    uint32_t offset = 0;
    uint32_t printLen = (length > 128) ? 128 : length;  /* 限制最大打印长度 */
    uint8_t highNibble, lowNibble;
    
    /* 添加前缀，如 "NvM[16]: " - 手动实现，避免使用 snprintf */
    while (*prefix && offset < sizeof(logBuffer) - 10) {
        logBuffer[offset++] = *prefix++;
    }
    logBuffer[offset++] = '[';
    
    /* 添加长度数字 */
    if (printLen >= 100) {
        logBuffer[offset++] = (char)('0' + (printLen / 100));
        logBuffer[offset++] = (char)('0' + ((printLen % 100) / 10));
        logBuffer[offset++] = (char)('0' + (printLen % 10));
    } else if (printLen >= 10) {
        logBuffer[offset++] = (char)('0' + (printLen / 10));
        logBuffer[offset++] = (char)('0' + (printLen % 10));
    } else {
        logBuffer[offset++] = (char)('0' + printLen);
    }
    logBuffer[offset++] = ']';
    logBuffer[offset++] = ':';
    logBuffer[offset++] = ' ';
    
    /* 将字节数组格式化为十六进制字符串，手动转换 */
    for (i = 0; i < printLen && offset < sizeof(logBuffer) - 3; i++) {
        highNibble = (data[i] >> 4) & 0x0F;
        lowNibble = data[i] & 0x0F;
        
        /* 高 4 位转十六进制字符 */
        logBuffer[offset++] = (highNibble < 10) ? (char)('0' + highNibble) : (char)('A' + (highNibble - 10));
        /* 低 4 位转十六进制字符 */
        logBuffer[offset++] = (lowNibble < 10) ? (char)('0' + lowNibble) : (char)('A' + (lowNibble - 10));
        /* 添加空格分隔 */
        logBuffer[offset++] = ' ';
    }
    
    /* 添加换行符 */
    logBuffer[offset++] = '\r';
    logBuffer[offset++] = '\n';
    logBuffer[offset] = '\0';
    
    /* 一次性打印完整字符串 */
    TBOX_PRINT("%s", logBuffer);
}

