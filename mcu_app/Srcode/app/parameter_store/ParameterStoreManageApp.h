/*************************************************
  Copyright  2026 SiRun (Beijing) . All rights reserved.
  File Name:       FlashParameterManageApp
  Author:          chenyang.ou
  Created Time:    2026
  Description:     Parameter storage flash operation
   Others:      // 其它说明
*************************************************/
#ifndef _PARAMETER_STORE_MANAGEAPP_H_
#define _PARAMETER_STORE_MANAGEAPP_H_
/****************************** include ***************************************/
#include "stdint.h"
/****************************** Macro Definitions ******************************/
#define ERR_CODE_NULL_POINTER               (-1)
#define ERR_CODE_INVALID_PARAMETER          (-2)

typedef enum
{
    E_PARAMETER_INFO_ICCID,
    E_PARAMETER_INFO_IMEI,
    E_PARAMETER_INFO_SN,
    E_PARAMETER_INFO_VIN,
    E_PARAMETER_INFO_TSPAddr,
    E_PARAMETER_INFO_TSPPort,
    E_PARAMETER_INFO_ECallNumber,
    E_PARAMETER_INFO_SW_Version,
    E_PARAMETER_INFO_HW_Version,
    E_PARAMETER_INFO_Custom_SW_Version,
    E_PARAMETER_INFO_ManufactureData,
    E_PARAMETER_INFO_ParatNumber,
    E_PARAMETER_INFO_SupIdentifier,

    E_PARAMETER_INFO_MAX_NUM,
}FlashParaId_e;

/* 参数信息结构体 - 用于安全传递参数信息 */
typedef struct {
    uint8_t *address;    /* 数据地址 */
    uint32_t length;     /* 数据长度 */
    uint8_t blockID;     /* NvM block ID */
} ParamInfo_t;

typedef enum
{
    E_SECURITY_INFO,
    E_WORKING_MODE,
    E_SECOC_TRIP_COUNT,
}SmallBlockDataParamId_e;


int16_t WorkFlashVehicleInforRead(FlashParaId_e parameterId,uint8_t *data,uint32_t *dataLength);
int16_t WorkFlashVehicleInforStore(FlashParaId_e parameterId,uint8_t *data,uint32_t dataLength);
void PrintHexArray(const uint8_t *data, uint32_t length, const char *prefix);//调试

#endif
