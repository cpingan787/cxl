/*************************************************
 Copyright © 2026 SiRun (Hefei) . All rights reserved.
 File Name: projectConfigure.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "projectConfigure.h"
#include <string.h>
#include "NVM.h"

/****************************** Macro Definitions ******************************/
#define MPU_SYSN_VERSION "000000000"
#define MCU_SYSN_VERSION "005" // mcu内部版本号
#define MCU_MPU_ALL_VERSION MPU_SYSN_VERSION MCU_SYSN_VERSION
#define SOFTWARE_NUMBERSIZE       4
/****************************** Type Definitions ******************************/
/* 配置项回调函数类型 */
typedef int16_t (*ConfigGetFunc_t)(uint8_t *pData, uint32_t *pLength);

/* 配置表项结构 */
typedef struct {
    ConfigItemType_e type;          // 配置项类型
    ConfigGetFunc_t getFunc;        // 获取函数指针
} ConfigTableEntry_t;

/****************************** Global Variables ******************************/
static const uint8_t g_SVIF[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00};//size:6  did:F100  系统版本信息格式
static const uint8_t g_F120[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F120
static const uint8_t g_bootloaderSWNumber[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01};//size:10  did:F183  引导程序软件参考号
static const uint8_t g_systemSupplierIdentifier[] = {0x11, 0x72, 0x09, 0x04, 0x04};//size:5  did:F18A  系统供应商标识符
static const uint8_t g_ecuHWNumber[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F191  ECU硬件编号
static const uint8_t g_ecuHWRefNumber[] = "SRTLVWHWNM";//size:10  did:F192  ECU硬件参考编号
static const uint8_t g_ecuSWRefNumber[] = "SRTLVWSWNM";//size:10  did:F194  ECU软件参考编号
static const uint8_t g_ecuAppSWVersion[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5 did:F1A0  ECU应用软件版本号
static const uint8_t g_ecuCalibrationSWVersion[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F1A1  ECU校准软件版本号
static const uint8_t g_ecuNCFRefNumber[] = {0xB8, 0x01, 0x17, 0x00, 0x00, 0x00, 0x00, 0x04};//size:8  did:F1A2  ECU NCF参考编号
static const uint8_t g_ecuIndexInformation[] = {0x00, 0x00, 0x00};//size:3  did:F1A5  ECU索引信息
static const uint8_t g_ecuThirdAppSW[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F1B6  三级应用软件版本号
static const uint8_t g_mcuSWVersion[] = MCU_SYSN_VERSION;//size:24  did:B003  MCU软件版本号
static uint8_t g_softWareNumber[] = MCU_MPU_ALL_VERSION;//软件版本号 14   DID:B005

/* 参数同步参数配置 */
static const uint8_t g_hardwareNumber[] = "87H6ADE060  H.000";//硬件版本号 15
static const uint8_t g_customSWVersionD[] = "8786ADE060  S.002"; //客户版本号16


static const ConfigTableEntry_t configTable[CONFIG_ITEM_MAX] = {
    [CONFIG_ITEM_SVIF]                        = {CONFIG_ITEM_SVIF,                        GetSVIF                           },//F100
    [CONFIG_ITEM_F120]                        = {CONFIG_ITEM_F120,                        GetF120Data                       },//F120
    [CONFIG_ITEM_BOOTLOADER_SW_VERSION]       = {CONFIG_ITEM_BOOTLOADER_SW_VERSION,       GetBootloaderSWVersion            },//F183
    [CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER]  = {CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER,  GetSystemSupplierIdentifier       },//F18A
    [CONFIG_ITEM_ECU_HW_NUMBER]               = {CONFIG_ITEM_ECU_HW_NUMBER,               GetEcuHWNumber                    },//F191
    [CONFIG_ITEM_ECU_HW_REF_NUMBER]           = {CONFIG_ITEM_ECU_HW_REF_NUMBER,           GetEcuHWRefNumber                 },//F192
    [CONFIG_ITEM_ECU_SW_REF_NUMBER]           = {CONFIG_ITEM_ECU_SW_REF_NUMBER,           GetEcuSWRefNumber                 },//F194
    [CONFIG_ITEM_ECU_APP_SW_VERSION]          = {CONFIG_ITEM_ECU_APP_SW_VERSION,          GetEcuAppSWVersion                },//F1A0
    [CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION]  = {CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION,  GetEcuCalibrationSWVersion        },//F1A1
    [CONFIG_ITEM_ECU_NCF_REF_NUMBER]          = {CONFIG_ITEM_ECU_NCF_REF_NUMBER,          GetEcuNCFRefNumber                },//F1A2
    [CONFIG_ITEM_ECU_INDEX_INFORMATION]       = {CONFIG_ITEM_ECU_INDEX_INFORMATION,       GetEcuIndexInformation            },//F1A5
    [CONFIG_ITEM_ECU_THIRD_APP_SW]            = {CONFIG_ITEM_ECU_THIRD_APP_SW,            GetEcuThirdAppSW                  },//F1B6
    [CONFIG_ITEM_MODEM_SW_VERSION]            = {CONFIG_ITEM_MODEM_SW_VERSION,            GetModemSWVersion                 },//B002
    [CONFIG_ITEM_MCU_SW_VERSION]              = {CONFIG_ITEM_MCU_SW_VERSION,              GetMcuSWVersion                   },//B003
    [CONFIG_ITEM_NAD_SW_VERSION]              = {CONFIG_ITEM_NAD_SW_VERSION,              GetSoftwareNumber                 },//B005
    [CONFIG_ITEM_HARDWARE_NUMBER]             = {CONFIG_ITEM_HARDWARE_NUMBER,             GetHardwareNumber},
    [CONFIG_ITEM_SOFTWARE_VERSION]            = {CONFIG_ITEM_SOFTWARE_VERSION,            GetSoftwareVersion},

};

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:       ProjectConfig_GetItemData
  Description:    获取配置项数据
  Input:          itemType - 配置项类型
                  pData    - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t ProjectConfig_GetItemData(ConfigItemType_e itemType, uint8_t *pData, uint32_t *pLength)
{
    int16_t ret = -1;
    
    /* 参数检查 */
    if ((pData == NULL) || (pLength == NULL) || (itemType >= CONFIG_ITEM_MAX))
    {
        return -1;
    }
    
    /* 获取配置项处理函数 */
    ConfigGetFunc_t getFunc = configTable[itemType].getFunc;
    if (getFunc != NULL)
    {
        ret = getFunc(pData, pLength);
    }
    
    return ret;
}

/*************************************************
  Function:       GetSVIF DID:F100
  Description:    获取SVIF版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetSVIF(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_SVIF,sizeof(g_SVIF));
    *pLength = sizeof(g_SVIF);
    return 0;
}

/*************************************************
  Function:       GetF120Data DID:F120
  Description:    F120数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF120Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F120,sizeof(g_F120));
    *pLength = sizeof(g_F120);
    return 0;
}

/*************************************************
  Function:       GetBootloaderSWVersion DID:F183
  Description:    获取引导程序软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetBootloaderSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_bootloaderSWNumber,sizeof(g_bootloaderSWNumber));
    *pLength = sizeof(g_bootloaderSWNumber);
    return 0;
}

/*************************************************
  Function:       GetSystemSupplierIdentifier DID:F18A
  Description:    系统供应商标识符
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetSystemSupplierIdentifier(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_systemSupplierIdentifier,sizeof(g_systemSupplierIdentifier));
    *pLength = sizeof(g_systemSupplierIdentifier);
    return 0;
}

/*************************************************
  Function:       GetEcuHWNumber DID:F191
  Description:    ECU硬件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuHWNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuHWNumber,sizeof(g_ecuHWNumber));
    *pLength = sizeof(g_ecuHWNumber);
    return 0;
}

/*************************************************
  Function:       GetEcuHWRefNumber DID:F192
  Description:    ECU硬件参考版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuHWRefNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuHWRefNumber,sizeof(g_ecuHWRefNumber));
    *pLength = sizeof(g_ecuHWRefNumber) - 1;
    return 0;
}

/*************************************************
  Function:       GetEcuSWRefNumber DID:F194
  Description:    ECU软件参考版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuSWRefNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuSWRefNumber,sizeof(g_ecuSWRefNumber));
    *pLength = sizeof(g_ecuSWRefNumber) - 1;
    return 0;
}

/*************************************************
  Function:       GetEcuAppSWVersion DID:F1A0
  Description:    ECU应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuAppSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuAppSWVersion,sizeof(g_ecuAppSWVersion));
    *pLength = sizeof(g_ecuAppSWVersion);
    return 0;
}

/*************************************************
  Function:       GetEcuCalibrationSWVersion DID:F1A1
  Description:    ECU校准软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuCalibrationSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuCalibrationSWVersion,sizeof(g_ecuCalibrationSWVersion));
    *pLength = sizeof(g_ecuCalibrationSWVersion);
    return 0;
}

/*************************************************
  Function:       GetEcuNCFRefNumber DID:F1A2
  Description:    ECU NCF参考编号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuNCFRefNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuNCFRefNumber,sizeof(g_ecuNCFRefNumber));
    *pLength = sizeof(g_ecuNCFRefNumber);
    return 0;
}

/*************************************************
  Function:       GetEcuIndexInformation DID:F1A5
  Description:    ECU索引信息
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuIndexInformation(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuIndexInformation,sizeof(g_ecuIndexInformation));
    *pLength = sizeof(g_ecuIndexInformation);
    return 0;
}

/*************************************************
  Function:       GetEcuSecondaryAppSWVersion DID:F1B6
  Description:    次级应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuThirdAppSW(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuThirdAppSW,sizeof(g_ecuThirdAppSW));
    *pLength = sizeof(g_ecuThirdAppSW);
    return 0;
}

/*************************************************
  Function:       GetModemSWVersion DID:B002
  Description:    获取5G或4G软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetModemSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_softWareNumber,9);
    *pLength = 9;
    return 0;
}

/*************************************************
  Function:       GetMcuSWVersion DID:B003
  Description:    获取MCU软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetMcuSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_mcuSWVersion,sizeof(g_mcuSWVersion));
    *pLength = sizeof(g_mcuSWVersion) - 1;
    return 0;
}

/*************************************************
  Function:       GetSoftwareNumber DID:B005
  Description:    获取软件编号
  Input:          pData    - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSoftwareNumber(uint8_t *pData, uint32_t *pLength)
{

    /* 外层已做判空处理 */    
    memcpy(pData, g_softWareNumber, sizeof(g_softWareNumber));
    *pLength = sizeof(g_softWareNumber) - 1;
    
    return 0;
}

/*************************************************
  Function:       GetHardwareNumber
  Description:    获取硬件编号
  Input:          pData    - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetHardwareNumber(uint8_t *pData, uint32_t *pLength)
{
    if ((pData == NULL) || (pLength == NULL))
    {
        return -1;
    }
    
    memcpy(pData, g_hardwareNumber, sizeof(g_hardwareNumber));
    *pLength = sizeof(g_hardwareNumber) - 1;
    
    return 0;
}

/*************************************************
  Function:       GetSoftwareVersion
  Description:    获取软件版本号
  Input:          pData    - 数据缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
static int16_t GetSoftwareVersion(uint8_t *pData, uint32_t *pLength)
{
    if ((pData == NULL) || (pLength == NULL))
    {
        return -1;
    }
    
    memcpy(pData, g_customSWVersionD, sizeof(g_customSWVersionD));
    *pLength = sizeof(g_customSWVersionD) - 1;
    
    return 0;
}

/**
 * @brief Set the MPU system version
 * @param pMpuVersion Pointer to the new MPU version string
 * @param versionLen Length of the version string
 * @return 0 on success, -1 if input is invalid
 */
int16_t ProjectConfigSetMpuVersion(const uint8_t *pMpuVersion, uint16_t versionLen)
{
    int16_t result = 0;
    uint8_t mpuVersionLen = strlen((const char *)MPU_SYSN_VERSION);
    uint8_t mcuVersionLen = strlen((const char *)MCU_SYSN_VERSION);
    uint8_t totalVersionLen = mpuVersionLen + mcuVersionLen;

    // Check if input is valid
    if (pMpuVersion == NULL || versionLen != totalVersionLen)
    {
        result = -1;
    }
    else
    {
        // Update MPU version part
        memcpy(g_softWareNumber, pMpuVersion, mpuVersionLen);

        // Ensure MCU version part remains unchanged
        memcpy(g_softWareNumber + mpuVersionLen, MCU_SYSN_VERSION, mcuVersionLen + 1); // +1 to include null terminator
    }

    return result;
}