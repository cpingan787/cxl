/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss_Cfg.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "Vss_Cfg.h"
#include "NVM_Cfg.h"

/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/
typedef uint32_t (*VssflashFunc_t)(VssFlashOperaType_e rwflag, uint8_t keyId,uint8_t *pData, uint32_t pLength);

typedef struct {
    VssItemType_e type;
    VssflashFunc_t flashFunc;
} VssFlashTableEntry_t;

/****************************** Global Variables ******************************/
static const VssFlashTableEntry_t configTable[VSS_ITEM_MAX] = {
    [VSS_ITEM_VSN]                = {VSS_ITEM_VSN,                VssConfig_VSNRw},
    [VSS_ITEM_VSN_ACTIVE]         = {VSS_ITEM_VSN_ACTIVE,         VssConfig_VSNActiveRw},
    [VSS_ITEM_SM4_KEY]            = {VSS_ITEM_SM4_KEY,            VssConfig_SM4CmacKeyByindex},
    [VSS_ITEM_SM4_KEY_ACTIVE]     = {VSS_ITEM_SM4_KEY_ACTIVE,     VssConfig_SM4CmacKeyActiveByindex},
    [VSS_ITEM_AES_KEY]            = {VSS_ITEM_AES_KEY,            VssConfig_AESKeyByindex},
    [VSS_ITEM_AES_KEY_ACTIVE]     = {VSS_ITEM_AES_KEY_ACTIVE,     VssConfig_AESKeyActiveByindex},
    [VSS_ITEM_SM2_KEY]            = {VSS_ITEM_SM2_KEY,            VssConfig_SM2KeyByindex},
    [VSS_ITEM_ECC256_KEY]         = {VSS_ITEM_ECC256_KEY,         VssConfig_Ecc256KeyByindex},
};

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: Vss_InitConfig
 Description: VSS模块初始化配置
 Input: VssConfig_flashFunc - FLASH读写回调
        VssConfig_WdtFeed - 看门狗喂狗回调
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t Vss_InitConfig(void)
{
    return VssCryptoInit(VssConfig_flashFunc, VssConfig_WdtFeed);
}

/*************************************************
  Function:       VssConfig_flashFunc
  Description:    配置项FLASH读写函数
  Input:          itemType - 配置项类型
                  rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_flashFunc(VssItemType_e itemType, VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;
    
    if ((pData == NULL) || (itemType >= VSS_ITEM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    VssflashFunc_t flashFunc = configTable[itemType].flashFunc;
    if (flashFunc != NULL)
    {
        ret = flashFunc(rwflag, keyId, pData, pLength);
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_WdtFeed
  Description:    看门狗喂狗函数
  Input:          None
  Return:         None
*************************************************/
static void VssConfig_WdtFeed(void)
{
    /* 待适配看门狗喂狗接口 */
}

/*************************************************
  Function:       VssConfig_VSNRw
  Description:    VSN读写
  Input:          rwflag   - 读写标志
                  keyId    - 仅填0
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_VSNRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((pData == NULL) || (keyId != 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = 0;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        if (NvM_ReadBlock(NvMBlock_DIDF130, NvMBlockRamBuffer10) == E_NOT_OK)
        {
            return E_NOT_OK;
        }
    
        for (uint8 i = 0; i < 32; i++) 
        {
            *(pData+i) = NvMBlockRamBuffer10[i];
        }
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_VSNActiveRw
  Description:    VSN激活标志位读写
  Input:          rwflag   - 读写标志
                  keyId    - 仅填0
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_VSNActiveRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((pData == NULL) || (keyId != 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = 0;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = 0;
        /* 待适配安全存储读取接口 */
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_SM4CmacKeyByindex
  Description:    SM4CMAC密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM4CmacKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((pData == NULL) || (keyId >= VSS_SM4_KEY_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_SM4CMAC_KEY_LEN;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_SM4CMAC_KEY_LEN;
        /* 待适配安全存储读取接口 */
        const uint8_t sm4_key_stub[32] = {
            /* [Offset 0] KeyID = 0 的密钥 */
            0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 
            0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x00,
    
            /* [Offset 16] KeyID = 1 的密钥 */
            0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 
            0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A
        };
        memcpy(pData, &sm4_key_stub[addrOffset], VSS_CONFIG_SM4CMAC_KEY_LEN); // 打桩验证
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_SM4CmacKeyActiveByindex
  Description:    SM4CMAC密钥激活标志按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM4CmacKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId;
        /* 待适配安全存储读取接口 */
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_AESKeyByindex
  Description:    AES密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_AESKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_AES_KEY_LEN;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_AES_KEY_LEN;
        /* 待适配安全存储读取接口 */
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_AESKeyActiveByindex
  Description:    AES密钥激活标志按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_AESKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId;
        /* 待适配安全存储读取接口 */
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_SM2KeyActiveByindex
  Description:    SM2密钥激活标志按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM2KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    uint8_t sm2_public_key[65] = {
        0x04, 0xDA, 0x6B, 0x25, 0xB4, 0x0B, 0xC4, 0x5D,
        0xA8, 0x56, 0xD1, 0x6E, 0x8B, 0xA2, 0xB2, 0x42,
        0x54, 0xEE, 0x94, 0xC3, 0x18, 0xEA, 0x52, 0xE2,
        0xCD, 0x82, 0x0C, 0xE7, 0x61, 0x65, 0x45, 0x21,
        0x2B, 0xBB, 0xE5, 0x00, 0x58, 0x85, 0xCE, 0x15,
        0xD0, 0xFB, 0xBE, 0xCC, 0x0B, 0xEA, 0xD8, 0x33,
        0x85, 0xE3, 0x86, 0xF6, 0x63, 0x16, 0x35, 0x6D,
        0xBA, 0x15, 0x5C, 0xD8, 0xC7, 0x4B, 0xC3, 0x74,
        0x20,
    };

    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_SM2_KEY_LEN;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_SM2_KEY_LEN;
        /* 待适配安全存储读取接口 */
        memcpy(pData, sm2_public_key, VSS_CONFIG_SM2_KEY_LEN); // 打桩验证
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_Ecc256KeyByindex
  Description:    ECC256密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_Ecc256KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    uint8_t ecc_public_key[65] = {
        0x04, 0x85, 0xD3, 0xF1, 0x86, 0x6E, 0x8D, 0x1F,
        0x2D, 0x9B, 0xE0, 0xA7, 0x62, 0x88, 0x49, 0x20,
        0xC4, 0xDE, 0xE0, 0x5A, 0xFB, 0xCE, 0x16, 0xEA,
        0x30, 0xCA, 0xCD, 0xFB, 0xE3, 0x0D, 0xBE, 0x77,
        0xA1, 0x9F, 0x3A, 0x0C, 0x10, 0xED, 0x44, 0xEC,
        0xAB, 0xEF, 0x86, 0x27, 0x3C, 0x0B, 0x1D, 0x21,
        0x8B, 0xEE, 0x22, 0x2D, 0x8C, 0x2A, 0x58, 0x01,
        0x8B, 0x72, 0x76, 0x0C, 0x8B, 0x55, 0xCC, 0x44,
        0x7F
    };

    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_ECC256_KEY_LEN;
        /* 待适配安全存储写入接口 */
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * VSS_CONFIG_ECC256_KEY_LEN;
        /* 待适配安全存储读取接口 */
        memcpy(pData, ecc_public_key, VSS_CONFIG_ECC256_KEY_LEN); // 打桩验证
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return ret;
}