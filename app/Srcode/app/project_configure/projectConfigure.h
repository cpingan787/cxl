/*************************************************
 Copyright © 2026 SiRun (Hefei) . All rights reserved.
 File Name: projectConfigure.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef _PROJECT_CONFIGURE_H
#define _PROJECT_CONFIGURE_H
/****************************** include ***************************************/
#include <stdint.h>
/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/
/* 配置项类型枚举 */
typedef enum {
    CONFIG_ITEM_SVIF,
    CONFIG_ITEM_F120,
    CONFIG_ITEM_BOOTLOADER_SW_VERSION,
    CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER,
    CONFIG_ITEM_ECU_HW_NUMBER,
    CONFIG_ITEM_ECU_HW_REF_NUMBER,
    CONFIG_ITEM_ECU_SW_REF_NUMBER,
    CONFIG_ITEM_ECU_APP_SW_VERSION,
    CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION,
    CONFIG_ITEM_ECU_NCF_REF_NUMBER,
    CONFIG_ITEM_ECU_INDEX_INFORMATION,
    CONFIG_ITEM_ECU_THIRD_APP_SW,
    CONFIG_ITEM_MODEM_SW_VERSION,
    CONFIG_ITEM_MCU_SW_VERSION,
    CONFIG_ITEM_NAD_SW_VERSION,
    CONFIG_ITEM_HARDWARE_NUMBER,
    CONFIG_ITEM_SOFTWARE_VERSION,

    CONFIG_ITEM_MAX
} ConfigItemType_e;
/****************************** Function Declarations *************************/
/*************************************************
  Function:       ProjectConfig_GetItemData
  Description:    获取配置项数据
  Input:          itemType - 配置项类型
                  pData    - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t ProjectConfig_GetItemData(ConfigItemType_e itemType, uint8_t *pData, uint32_t *pLength);


/* 内部工具函数声明 */
/*************************************************
  Function:       GetSVIF DID:F100
  Description:    获取SVIF版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSVIF(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF120Data DID:F120
  Description:    F120数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF120Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetBootloaderSWVersion DID:F188
  Description:    获取引导程序软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetBootloaderSWVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetSystemSupplierIdentifier DID:F18B
  Description:    系统供应商标识符
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSystemSupplierIdentifier(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuHWNumber DID:F191
  Description:    ECU硬件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuHWNumber(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuHWRefNumber DID:F192
  Description:    ECU硬件参考版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuHWRefNumber(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuSWRefNumber DID:F194
  Description:    ECU软件参考版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuSWRefNumber(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuAppSWVersion DID:F1A0
  Description:    ECU应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuAppSWVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuCalibrationSWVersion DID:F1A1
  Description:    ECU校准软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuCalibrationSWVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuNCFRefNumber DID:F1A2
  Description:    ECU NCF参考编号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuNCFRefNumber(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuIndexInformation DID:F1A5
  Description:    ECU索引信息
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuIndexInformation(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuThirdAppSW DID:F1B6
  Description:    三级应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuThirdAppSW(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetModemSWVersion DID:B002
  Description:    获取5G或4G软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetModemSWVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetMcuSWVersion DID:B003
  Description:    获取MCU软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetMcuSWVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetSoftwareNumber 参数同步
  Description:    获取软件版本号
  Input:          pData - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSoftwareNumber(uint8_t *pData, uint32_t *pLength);

/*************************************************
  Function:       GetHardwareNumber 参数同步
  Description:    获取硬件版本号
  Input:          pData - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetHardwareNumber(uint8_t *pData, uint32_t *pLength);

/*************************************************
  Function:       GetSoftwareVersion 参数同步
  Description:    获取软件版本
  Input:          pData - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSoftwareVersion(uint8_t *pData, uint32_t *pLength);

int16_t ProjectConfigSetMpuVersion(const uint8_t *pMpuVersion, uint16_t versionLen);

#endif
