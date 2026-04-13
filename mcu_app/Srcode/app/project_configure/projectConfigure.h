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
    CONFIG_ITEM_F111,
    CONFIG_ITEM_F112,
    CONFIG_ITEM_F113,
    CONFIG_ITEM_F114,
    CONFIG_ITEM_F115,
    CONFIG_ITEM_F116,
    CONFIG_ITEM_F117,
    CONFIG_ITEM_F118,
    CONFIG_ITEM_F119,
    CONFIG_ITEM_F11A,
    CONFIG_ITEM_F11B,
    CONFIG_ITEM_F11C,
    CONFIG_ITEM_F11D,
    CONFIG_ITEM_F11E,
    CONFIG_ITEM_F11F,
    CONFIG_ITEM_F120,
    CONFIG_ITEM_BOOTLOADER_SW_VERSION,
    CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER,
    CONFIG_ITEM_ECU_SERIAL_NUMBER,
    CONFIG_ITEM_ECU_HW_NUMBER,
    CONFIG_ITEM_ECU_HW_REF_NUMBER,
    CONFIG_ITEM_ECU_SW_REF_NUMBER,
    CONFIG_ITEM_ECU_APP_SW_VERSION,
    CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION,
    CONFIG_ITEM_ECU_NCF_REF_NUMBER,
    CONFIG_ITEM_ECU_INDEX_INFORMATION,
    // CONFIG_ITEM_ECU_SECONDARY_APP_SW,
    CONFIG_ITEM_ECU_THIRD_APP_SW,
    //CONFIG_ITEM_MPU_SW_VERSION,
    CONFIG_ITEM_ICCID_VALUE_INT,
    CONFIG_ITEM_MODEM_SW_VERSION,
    CONFIG_ITEM_MCU_SW_VERSION,
    CONFIG_ITEM_NAD_SW_VERSION,
    // CONFIG_ITEM_NAD_HW_VERSION,
    // CONFIG_ITEM_UbloxF9K_VERSION,
    CONFIG_ITEM_SIGNATURE_PUBLIC_KEY,
    // CONFIG_ITEM_HSMID,

    CONFIG_ITEM_SOFTWARE_NUMBER,
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
  Function:       GetF111Data DID:F111
  Description:    F111数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF111Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF112Data DID:F112
  Description:    F112数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF112Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF113Data DID:F113
  Description:    F113数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF113Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF114Data DID:F114
  Description:    F114数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF114Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF112Data DID:F112
  Description:    F112数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF115Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF116Data DID:F116
  Description:    F116数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF116Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF117Data DID:F117
  Description:    F117数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF117Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF118Data DID:F118
  Description:    F118数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF118Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF119Data DID:F119
  Description:    F119数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF119Data(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF11AData DID:F11A
  Description:    F11A数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF11AData(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF11BData DID:F11B
  Description:    F11B数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF11BData(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF11CData DID:F11C
  Description:    F11C数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF11CData(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF11DData DID:F11D
  Description:    F11D数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF11DData(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF11EData DID:F11E
  Description:    F11E数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF11EData(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetF11FData DID:F11F
  Description:    F11F数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetF11FData(uint8_t *pVersion,uint32_t *pLength);

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
  Function:       GetEcuSerialNumber DID:F18C
  Description:    ECU序列号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuSerialNumber(uint8_t *pVersion,uint32_t *pLength);

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
  Function:       GetEcuSecondaryAppSWVersion DID:F1B5
  Description:    次级应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
// static int16_t GetEcuSecondaryAppSW(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetEcuThirdAppSW DID:F1B6
  Description:    三级应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetEcuThirdAppSW(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetMpuSWVersion DID:B000
  Description:    获取MPU软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
// static int16_t GetMpuSWVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GeICCIDValueInt DID:B001
  Description:    获取ICCID值
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetICCIDValueInt(uint8_t *pVersion,uint32_t *pLength);

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
  Function:       GetNadSWVersion DID:B005
  Description:    获取NAD软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetNadSWVersion(uint8_t *pVersion,uint32_t *pLength);

// /*************************************************
//   Function:       GetNadHWVersion DID:B006
//   Description:    获取NAD硬件版本号
//   Input:          pVersion - 版本缓冲区
//                   pLength  - 数据长度指针
//   Return:         0-成功, 其他-失败
// *************************************************/
// static int16_t GetNadHWVersion(uint8_t *pVersion,uint32_t *pLength);

// /*************************************************
//   Function:       GetUbloxF9KVersion DID:B00C
//   Description:    获取UbloxF9K版本号
//   Input:          pVersion - 版本缓冲区
//                   pLength  - 数据长度指针
//   Return:         0-成功, 其他-失败
// *************************************************/
// static int16_t GetUbloxF9KVersion(uint8_t *pVersion,uint32_t *pLength);

/*************************************************
  Function:       GetSignaturePublicKey DID:B201
  Description:    获取签名公钥
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSignaturePublicKey(uint8_t *pVersion,uint32_t *pLength);

// /*************************************************
//   Function:       GetHSMID DID:B202
//   Description:    获取HSMID
//   Input:          pVersion - 版本缓冲区
//                   pLength  - 数据长度指针
//   Return:         0-成功, 其他-失败
// *************************************************/
// static int16_t GetHSMID(uint8_t *pVersion,uint32_t *pLength);

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
