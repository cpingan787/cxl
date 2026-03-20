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
/****************************** Type Definitions ******************************/
/* 配置项回调函数类型 */
typedef int16_t (*ConfigGetFunc_t)(uint8_t *pData, uint32_t *pLength);

/* 配置表项结构 */
typedef struct {
    ConfigItemType_e type;          // 配置项类型
    ConfigGetFunc_t getFunc;        // 获取函数指针
} ConfigTableEntry_t;

/****************************** Global Variables ******************************/
static const uint8_t g_SVIF[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:6  did:F100  系统版本信息格式
static const uint8_t g_F111[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F111
static const uint8_t g_F112[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F112
static const uint8_t g_F113[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F113
static const uint8_t g_F114[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F114
static const uint8_t g_F115[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F115
static const uint8_t g_F116[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F116
static const uint8_t g_F117[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F117
static const uint8_t g_F118[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F118
static const uint8_t g_F119[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F119
static const uint8_t g_F11A[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F11A
static const uint8_t g_F11B[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F11B
static const uint8_t g_F11C[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F11C
static const uint8_t g_F11D[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F11D
static const uint8_t g_F11E[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F11E
static const uint8_t g_F11F[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F11F
static const uint8_t g_F120[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//size:16  did:F120
static const uint8_t g_bootloaderSWNumber[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01};//size:10  did:F183  引导程序软件参考号
static const uint8_t g_systemSupplierIdentifier[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F18A  系统供应商标识符
static const uint8_t g_ecuSerialNumber[] = "0000000000000000";//size:16  did:F18C  ECU序列号
static const uint8_t g_ecuHWNumber[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F191  ECU硬件编号
static const uint8_t g_ecuHWRefNumber[] = "0000000000";//size:10  did:F192  ECU硬件参考编号
static const uint8_t g_ecuSWRefNumber[] = "0000000000";//size:10  did:F194  ECU软件参考编号
static const uint8_t g_ecuAppSWVersion[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5 did:F1A0  ECU应用软件版本号
static const uint8_t g_ecuCalibrationSWVersion[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F1A1  ECU校准软件版本号
static const uint8_t g_ecuNCFRefNumber[] = "00000000";//size:8  did:F1A2  ECU NCF参考编号
static const uint8_t g_ecuIndexInformation[] = {0x00, 0x00, 0x00};//size:3  did:F1A5  ECU索引信息 bety1配置索引 bety2诊断索引 bety3总线索引
// static const uint8_t g_ecuSecondaryAppSW[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F1B5  次级应用软件版本号
static const uint8_t g_ecuThirdAppSW[] = {0x00, 0x00, 0x00, 0x00, 0x00};//size:5  did:F1B6  三级应用软件版本号
// static const uint8_t g_mpuSWVersion[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};//name:MPU_SW_VERSION  size:24  did:B000  预留
static const uint8_t g_ICCIDValueInt[] = "89860000000000000000";//size:20  did:B001  ICCID值
static const uint8_t g_modemSWVersion[] = "112200000000000000000000";//size:24  did:B002  5G或4G软件版本
static const uint8_t g_mcuSWVersion[] = "11220000000000000000000";//size:24  did:B003  MCU软件版本号
static const uint8_t g_NadIMEI[] = "869900000000000000000000";//size:24  did:B004  NAD IMEI
static const uint8_t g_NadSWVersion[] = "112200";//size:128  did:B005  NAD软件版本号
static const uint8_t g_NadHWVersion[] = "112200";//size:128  did:B006  NAD硬件版本号
static const uint8_t g_UbloxF9KVersion[] = "98990000000000000000000000112200";//size:32  did:B00C  UbloxF9K版本号
static const uint8_t g_SignaturePublicKey[] = "00";//size:64 did:B201  签名公钥
static const uint8_t g_HSMID[] = "000012120000000";//size:16  did:B202  HSMID









static const ConfigTableEntry_t configTable[CONFIG_ITEM_MAX] = {
    [CONFIG_ITEM_SVIF]                        = {CONFIG_ITEM_SVIF,                        GetSVIF                           },//F100
    [CONFIG_ITEM_F111]                        = {CONFIG_ITEM_F111,                        GetF111Data                       },//F111
    [CONFIG_ITEM_F112]                        = {CONFIG_ITEM_F112,                        GetF112Data                       },//F112
    [CONFIG_ITEM_F113]                        = {CONFIG_ITEM_F113,                        GetF113Data                       },//F113
    [CONFIG_ITEM_F114]                        = {CONFIG_ITEM_F114,                        GetF114Data                       },//F114
    [CONFIG_ITEM_F115]                        = {CONFIG_ITEM_F115,                        GetF115Data                       },//F115
    [CONFIG_ITEM_F116]                        = {CONFIG_ITEM_F116,                        GetF116Data                       },//F116
    [CONFIG_ITEM_F117]                        = {CONFIG_ITEM_F117,                        GetF117Data                       },//F117
    [CONFIG_ITEM_F118]                        = {CONFIG_ITEM_F118,                        GetF118Data                       },//F118
    [CONFIG_ITEM_F119]                        = {CONFIG_ITEM_F119,                        GetF119Data                       },//F119
    [CONFIG_ITEM_F11A]                        = {CONFIG_ITEM_F11A,                        GetF11AData                       },//F11A
    [CONFIG_ITEM_F11B]                        = {CONFIG_ITEM_F11B,                        GetF11BData                       },//F11B
    [CONFIG_ITEM_F11C]                        = {CONFIG_ITEM_F11C,                        GetF11CData                       },//F11C
    [CONFIG_ITEM_F11D]                        = {CONFIG_ITEM_F11D,                        GetF11DData                       },//F11D
    [CONFIG_ITEM_F11E]                        = {CONFIG_ITEM_F11E,                        GetF11EData                       },//F11E
    [CONFIG_ITEM_F11F]                        = {CONFIG_ITEM_F11F,                        GetF11FData                       },//F11F
    [CONFIG_ITEM_F120]                        = {CONFIG_ITEM_F120,                        GetF120Data                       },//F120
    [CONFIG_ITEM_BOOTLOADER_SW_VERSION]       = {CONFIG_ITEM_BOOTLOADER_SW_VERSION,       GetBootloaderSWVersion            },//F183
    [CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER]  = {CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER,  GetSystemSupplierIdentifier       },//F18A
    [CONFIG_ITEM_ECU_SERIAL_NUMBER]           = {CONFIG_ITEM_ECU_SERIAL_NUMBER,           GetEcuSerialNumber                },//F18C
    [CONFIG_ITEM_ECU_HW_NUMBER]               = {CONFIG_ITEM_ECU_HW_NUMBER,               GetEcuHWNumber                    },//F191
    [CONFIG_ITEM_ECU_HW_REF_NUMBER]           = {CONFIG_ITEM_ECU_HW_REF_NUMBER,           GetEcuHWRefNumber                 },//F192
    [CONFIG_ITEM_ECU_SW_REF_NUMBER]           = {CONFIG_ITEM_ECU_SW_REF_NUMBER,           GetEcuSWRefNumber                 },//F194
    [CONFIG_ITEM_ECU_APP_SW_VERSION]          = {CONFIG_ITEM_ECU_APP_SW_VERSION,          GetEcuAppSWVersion                },//F1A0
    [CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION]  = {CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION,  GetEcuCalibrationSWVersion        },//F1A1
    [CONFIG_ITEM_ECU_NCF_REF_NUMBER]          = {CONFIG_ITEM_ECU_NCF_REF_NUMBER,          GetEcuNCFRefNumber                },//F1A2
    [CONFIG_ITEM_ECU_INDEX_INFORMATION]       = {CONFIG_ITEM_ECU_INDEX_INFORMATION,       GetEcuIndexInformation            },//F1A5
    // [CONFIG_ITEM_ECU_SECONDARY_APP_SW]        = {CONFIG_ITEM_ECU_SECONDARY_APP_SW,        GetEcuSecondaryAppSW              },//F1B5
    [CONFIG_ITEM_ECU_THIRD_APP_SW]            = {CONFIG_ITEM_ECU_THIRD_APP_SW,            GetEcuThirdAppSW                  },//F1B6
    // [CONFIG_ITEM_MPU_SW_VERSION]              = {CONFIG_ITEM_MPU_SW_VERSION,              GetMpuSWVersion                   },//B000
    [CONFIG_ITEM_ICCID_VALUE_INT]             = {CONFIG_ITEM_ICCID_VALUE_INT,             GetICCIDValueInt                  },//B001
    [CONFIG_ITEM_MODEM_SW_VERSION]            = {CONFIG_ITEM_MODEM_SW_VERSION,            GetModemSWVersion                 },//B002
    [CONFIG_ITEM_MCU_SW_VERSION]              = {CONFIG_ITEM_MCU_SW_VERSION,              GetMcuSWVersion                   },//B003
    [CONFIG_ITEM_NAD_IMEI]                    = {CONFIG_ITEM_NAD_IMEI,                    GetNadIMEI                        },//B004
    [CONFIG_ITEM_NAD_SW_VERSION]              = {CONFIG_ITEM_NAD_SW_VERSION,              GetNadSWVersion                   },//B005
    // [CONFIG_ITEM_NAD_HW_VERSION]              = {CONFIG_ITEM_NAD_HW_VERSION,              GetNadHWVersion                   },//B006
    // [CONFIG_ITEM_UbloxF9K_VERSION]            = {CONFIG_ITEM_UbloxF9K_VERSION,            GetUbloxF9KVersion                },//B00C
    [CONFIG_ITEM_SIGNATURE_PUBLIC_KEY]        = {CONFIG_ITEM_SIGNATURE_PUBLIC_KEY,        GetSignaturePublicKey             },//B201
    [CONFIG_ITEM_HSMID]                       = {CONFIG_ITEM_HSMID,                       GetHSMID                          },//B202
    [CONFIG_ITEM_ENCRYPTION_ALGORITHM_FLAG]   = {CONFIG_ITEM_ENCRYPTION_ALGORITHM_FLAG,   GetEncryptionAlgorithmFlag        },//B9E4





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
  Function:       GetF111Data DID:F111
  Description:    F111数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF111Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F111,sizeof(g_F111));
    *pLength = sizeof(g_F111);
    return 0;
}

/*************************************************
  Function:       GetF112Data DID:F112
  Description:    F112数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF112Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F112,sizeof(g_F112));
    *pLength = sizeof(g_F112);
    return 0;
}

/*************************************************
  Function:       GetF113Data DID:F113
  Description:    F113数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF113Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F113,sizeof(g_F113));
    *pLength = sizeof(g_F113);
    return 0;
}

/*************************************************
  Function:       GetF114Data DID:F114
  Description:    F114数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF114Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F114,sizeof(g_F114));
    *pLength = sizeof(g_F114);
    return 0;
}

/*************************************************
  Function:       GetF115Data DID:F115
  Description:    F115数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF115Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F115,sizeof(g_F115));
    *pLength = sizeof(g_F115);
    return 0;
}

/*************************************************
  Function:       GetF116Data DID:F116
  Description:    F116数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF116Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F116,sizeof(g_F116));
    *pLength = sizeof(g_F116);
    return 0;
}

/*************************************************
  Function:       GetF117Data DID:F117
  Description:    F117数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF117Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F117,sizeof(g_F117));
    *pLength = sizeof(g_F117);
    return 0;
}

/*************************************************
  Function:       GetF118Data DID:F118
  Description:    F118数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF118Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F118,sizeof(g_F118));
    *pLength = sizeof(g_F118);
    return 0;
}

/*************************************************
  Function:       GetF119Data DID:F119
  Description:    F119数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF119Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F119,sizeof(g_F119));
    *pLength = sizeof(g_F119);
    return 0;
}

/*************************************************
  Function:       GetF11AData DID:F11A
  Description:    F11A数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF11AData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F11A,sizeof(g_F11A));
    *pLength = sizeof(g_F11A);
    return 0;
}

/*************************************************
  Function:       GetF11BData DID:F11B
  Description:    F11B数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF11BData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F11B,sizeof(g_F11B));
    *pLength = sizeof(g_F11B);
    return 0;
}

/*************************************************
  Function:       GetF11CData DID:F11C
  Description:    F11C数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF11CData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F11C,sizeof(g_F11C));
    *pLength = sizeof(g_F11C);
    return 0;
}

/*************************************************
  Function:       GetF11DData DID:F11D
  Description:    F11D数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF11DData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F11D,sizeof(g_F11D));
    *pLength = sizeof(g_F11D);
    return 0;
}

/*************************************************
  Function:       GetF11EData DID:F11E
  Description:    F11E数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF11EData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F11E,sizeof(g_F11E));
    *pLength = sizeof(g_F11E);
    return 0;
}

/*************************************************
  Function:       GetF11FData DID:F11F
  Description:    F11F数据
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetF11FData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_F11F,sizeof(g_F11F));
    *pLength = sizeof(g_F11F);
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
  Function:       GetEcuSerialNumber DID:F18C
  Description:    ECU序列号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEcuSerialNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ecuSerialNumber,sizeof(g_ecuSerialNumber));
    *pLength = sizeof(g_ecuSerialNumber) - 1;
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
    *pLength = sizeof(g_ecuNCFRefNumber) - 1;
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
  Function:       GetEcuSecondaryAppSWVersion DID:F1B5
  Description:    次级应用软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
// int16_t GetEcuSecondaryAppSW(uint8_t *pVersion,uint32_t *pLength)
// {
//     if(pVersion == NULL || pLength == NULL)
//     {
//         return -1;
//     }
//     memcpy(pVersion,g_ecuSecondaryAppSW,sizeof(g_ecuSecondaryAppSW));
//     *pLength = sizeof(g_ecuSecondaryAppSW);
//     return 0;
// }

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
  Function:       GetMpuSWVersion DID:B000
  Description:    获取MPU软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
// int16_t GetMpuSWVersion(uint8_t *pVersion,uint32_t *pLength)
// {
//     if(pVersion == NULL || pLength == NULL)
//     {
//         return -1;
//     }
//     memcpy(pVersion,g_mpuSWVersion,sizeof(g_mpuSWVersion));
//     *pLength = sizeof(g_mpuSWVersion) - 1;
//     return 0;
// }

/*************************************************
  Function:       GetICCIDValueInt DID:B001
  Description:    获取ICCID值
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetICCIDValueInt(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_ICCIDValueInt,sizeof(g_ICCIDValueInt));
    *pLength = sizeof(g_ICCIDValueInt) - 1;
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
    memcpy(pVersion,g_modemSWVersion,sizeof(g_modemSWVersion));
    *pLength = sizeof(g_modemSWVersion) - 1;
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
  Function:       GetNADIMEI DID:B004
  Description:    获取NAD IMEI
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetNadIMEI(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_NadIMEI,sizeof(g_NadIMEI));
    *pLength = sizeof(g_NadIMEI) - 1;
    return 0;
}

/*************************************************
  Function:       GetNadSWVersion DID:B005
  Description:    获取NAD软件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetNadSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_NadSWVersion,sizeof(g_NadSWVersion));
    *pLength = sizeof(g_NadSWVersion) - 1;
    return 0;
}

/*************************************************
  Function:       GetNadHWVersion DID:B006
  Description:    获取NAD硬件版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetNadHWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_NadHWVersion,sizeof(g_NadHWVersion));
    *pLength = sizeof(g_NadHWVersion) - 1;
    return 0;
}

/*************************************************
  Function:       GetUbloxF9KVersion DID:B00C
  Description:    获取UbloxF9K版本号
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetUbloxF9KVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_UbloxF9KVersion,sizeof(g_UbloxF9KVersion));
    *pLength = sizeof(g_UbloxF9KVersion) - 1;
    return 0;
}

/*************************************************
  Function:       GetSignaturePublicKey DID:B201
  Description:    获取签名公钥
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetSignaturePublicKey(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_SignaturePublicKey,sizeof(g_SignaturePublicKey));
    *pLength = sizeof(g_SignaturePublicKey) - 1;
    return 0;
}

/*************************************************
  Function:       GetHSMID DID:B202
  Description:    获取HSMID
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetHSMID(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }
    memcpy(pVersion,g_HSMID,sizeof(g_HSMID));
    *pLength = sizeof(g_HSMID) - 1;
    return 0;
}

/*************************************************
  Function:       GetSecurityVehicleEncryptionAlgorithmFlag DID:B9E4
  Description:    获取安全车辆加密算法标志位
  Input:          pVersion - 版本缓冲区
                  pLength  - 数据长度指针
  Return:         0-成功, 其他-失败
*************************************************/
int16_t GetEncryptionAlgorithmFlag(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == NULL || pLength == NULL)
    {
        return -1;
    }

    if(NvM_ReadBlock(NvMBlock_DIDF130,NvMBlockRamBuffer10) == E_NOT_OK)
    {
        return -1;
    }

    if(NvMBlockRamBuffer10[31] == 0x00)
    {
        pVersion[0] = 0;
    }
    else
    {
        pVersion[0] = 1;
    }
    *pLength = 1;
    
    return 0;
}

