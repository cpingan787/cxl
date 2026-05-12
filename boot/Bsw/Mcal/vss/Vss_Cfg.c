/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss_Cfg.c
 Author: CaoLiang
 Created Time: 2026-03-31
 Description: VSS模块配置文件，包含配置项读写实现
 Others:
*************************************************/
/****************************** include ***************************************/
#include "Vss_Cfg.h"
#include "EEIf.h"
#include "MemM_cfg.h"
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"
#include "SignatureHeader.h"
#include <string.h>

/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/
/**
 * @brief Flash读写函数类型
 * @param rwflag 读写标志
 * @param keyId 密钥ID
 * @param pData 数据缓冲区
 * @param pLength 数据长度
 * @return 0-成功, 其他-失败
 */
typedef uint32_t (*VssflashFunc_t)(VssFlashOperaType_e rwflag, uint8_t keyId,uint8_t *pData, uint32_t pLength);

/**
 * @brief Flash表项结构体
 * @param type 配置项类型
 * @param flashFunc 对应的Flash读写函数
 */
typedef struct {
    VssItemType_e type;
    VssflashFunc_t flashFunc;
} VssFlashTableEntry_t;

/****************************** Global Variables ******************************/
/**
 * @brief 配置项Flash读写函数表
 * @details 用于根据配置项类型查找对应的读写函数
 */
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

/**
 * @brief SM2公钥
 * @details 预定义的SM2公钥，用于验签
 */
const uint8_t sm2_public_key[VSS_CONFIG_SM2_KEY_LEN] = {
    0x04, 0xDD, 0x47, 0xDB, 0x72, 0x63, 0xBA, 0xE1,
    0x8C, 0xA7, 0x52, 0x2A, 0xF8, 0x4E, 0x16, 0x42,
    0x94, 0x3A, 0x8B, 0xF3, 0x11, 0xE1, 0xC9, 0x25,
    0x75, 0x49, 0xF3, 0x67, 0x00, 0x11, 0x75, 0x4F,
    0x7B, 0xA8, 0x50, 0xE7, 0x0C, 0x71, 0x86, 0xE3,
    0xC0, 0xFF, 0x3B, 0x7B, 0x25, 0xFD, 0x8D, 0xD4,
    0x73, 0x87, 0x4E, 0x0E, 0x4A, 0xDC, 0xB2, 0x44,
    0x66, 0x71, 0xCF, 0x67, 0xF7, 0x59, 0x2C, 0x5D,
    0xE2,
};

/**
 * @brief ECC256公钥
 * @details 预定义的ECC256公钥，用于验签
 */
const uint8_t ecc_public_key[VSS_CONFIG_ECC256_KEY_LEN] = {
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

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: Vss_InitConfig
 Description: VSS模块初始化配置
 Input: None
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t Vss_InitConfig(void)
{
    // 调用VssCryptoInit函数初始化VSS模块，注册Flash读写回调和看门狗喂狗回调
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
    
    // 检查参数有效性
    if ((pData == NULL) || (itemType >= VSS_ITEM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 根据配置项类型查找对应的Flash读写函数
    VssflashFunc_t flashFunc = configTable[itemType].flashFunc;
    if (flashFunc != NULL)
    {
        // 调用对应的Flash读写函数
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

    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId != 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = VSN_ADDR_IDX + keyId;
        uint8_t tem = E_NOT_OK;
        // 写入VSN数据到EEPROM
        tem = EEIf_Write(addrOffset, 32, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_WRITE_CACHE_FAILED; // 写入缓存失败
        }
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = VSN_ADDR_IDX + keyId;
        uint8_t tem = E_NOT_OK;
        // 从EEPROM读取VSN数据
        tem = EEIf_Read(addrOffset, 32, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_READ_CACHE_FAILED; // 读取缓存失败
        }
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId != 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = VSN_ACTIVE_FLAG_IDX + keyId;
        uint8_t tem = E_NOT_OK;
        // 写入VSN激活标志到EEPROM
        tem = EEIf_Write(addrOffset, VSN_ACTIVE_FLAG_SIZE, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_WRITE_CACHE_FAILED; // 写入缓存失败
        }
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = VSN_ACTIVE_FLAG_IDX + keyId;
        uint8_t tem = E_NOT_OK;
        // 从EEPROM读取VSN激活标志
        tem = EEIf_Read(addrOffset, VSN_ACTIVE_FLAG_SIZE, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_READ_CACHE_FAILED; // 读取缓存失败
        }
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId >= VSS_SM4_KEY_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = SM4_KEY_IDX + keyId * VSS_CONFIG_SM4CMAC_KEY_LEN;
        uint8_t tem = E_NOT_OK;
        // 写入SM4 CMAC密钥到EEPROM
        tem = EEIf_Write(addrOffset, VSS_CONFIG_SM4CMAC_KEY_LEN, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_WRITE_CACHE_FAILED; // 写入缓存失败
        }
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = SM4_KEY_IDX + keyId * VSS_CONFIG_SM4CMAC_KEY_LEN;
        uint8_t tem = E_NOT_OK;
        // 从EEPROM读取SM4 CMAC密钥
        tem = EEIf_Read(addrOffset, VSS_CONFIG_SM4CMAC_KEY_LEN, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_READ_CACHE_FAILED; // 读取缓存失败
        }
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = SM4_KEY_ACTIVE_FLAG_IDX + keyId;
        uint8_t tem = E_NOT_OK;
        // 写入SM4 CMAC密钥激活标志到EEPROM
        tem = EEIf_Write(addrOffset, VSN_ACTIVE_FLAG_SIZE, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_WRITE_CACHE_FAILED; // 写入缓存失败
        }
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = SM4_KEY_ACTIVE_FLAG_IDX + keyId;
        uint8_t tem = E_NOT_OK;
        // 从EEPROM读取SM4 CMAC密钥激活标志
        tem = EEIf_Read(addrOffset, VSN_ACTIVE_FLAG_SIZE, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_READ_CACHE_FAILED; // 读取缓存失败
        }
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = keyId * VSS_CONFIG_AES_KEY_LEN;
        /* 待适配安全存储写入接口 */
        // 注意：需要根据实际硬件平台实现安全存储写入操作
        // 潜在风险：写入失败可能导致密钥配置丢失
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = keyId * VSS_CONFIG_AES_KEY_LEN;
        /* 待适配安全存储读取接口 */
        // 注意：需要根据实际硬件平台实现安全存储读取操作
        // 潜在风险：读取失败可能导致密钥获取失败
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = keyId;
        /* 待适配安全存储写入接口 */
        // 注意：需要根据实际硬件平台实现安全存储写入操作
        // 潜在风险：写入失败可能导致密钥激活状态配置丢失
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = keyId;
        /* 待适配安全存储读取接口 */
        // 注意：需要根据实际硬件平台实现安全存储读取操作
        // 潜在风险：读取失败可能导致密钥激活状态获取失败
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    return ret;
}

/*************************************************
  Function:       VssConfig_SM2KeyByindex
  Description:    SM2密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM2KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;


    const uint8_t sm2Key_0x11[65] = {
        0x04,
        0x9F, 0xB2, 0xCB, 0xA5, 0x65, 0x9D, 0x2E, 0xF8, 0xAA, 0x57, 0x73, 0x35, 0x5E, 0xC0, 0xC8, 0x12,
        0xC2, 0xE8, 0xB1, 0xC1, 0x03, 0xBE, 0x46, 0x18, 0xCF, 0x0F, 0x3D, 0xC0, 0xA3, 0x35, 0x4D, 0x81,
        0x94, 0x0E, 0x4A, 0xC4, 0xB7, 0x05, 0x70, 0xEA, 0xFA, 0xD7, 0x0E, 0x08, 0x22, 0xD4, 0x6B, 0xE1,
        0x55, 0x65, 0x9E, 0x2A, 0xD3, 0x7D, 0x27, 0x78, 0x29, 0xA3, 0x45, 0x0B, 0x2C, 0x27, 0xF0, 0x33
    };

    const uint8_t sm2Key_0x21[65] = {
        0x04,
        0x3B, 0xD9, 0x3E, 0x12, 0x58, 0x40, 0x38, 0x62, 0xCE, 0x25, 0xEA, 0x40, 0x6E, 0x8C, 0x01, 0x24,
        0xEC, 0x2A, 0x2A, 0x10, 0x0C, 0x9C, 0xE6, 0x51, 0xE2, 0x9B, 0x39, 0xB0, 0x28, 0x37, 0x2D, 0x0B,
        0x38, 0xD7, 0xA1, 0x72, 0xAA, 0x60, 0xB6, 0x13, 0x80, 0x9B, 0xCD, 0xD2, 0x4C, 0x29, 0xF3, 0xF2,
        0x7F, 0xEF, 0x63, 0xAC, 0xFC, 0xE1, 0x00, 0x70, 0x01, 0x53, 0xEF, 0x72, 0x76, 0xCD, 0x51, 0x0D
    };

    // 检查参数有效性
    if ((pData == NULL) || (keyId >= VSS_SM2_KEY_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = SM2_KEY_IDX + keyId * VSS_CONFIG_SM2_KEY_LEN;
        uint8_t tem = E_NOT_OK;

        //不允许写入SM2公钥，因为SM2公钥是只读的，不能被修改
        // 写入SM2密钥到EEPROM
        //tem = EEIf_Write(addrOffset, VSS_CONFIG_SM2_KEY_LEN, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_WRITE_CACHE_FAILED; // 写入缓存失败
        }
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint8_t tem = E_OK;
        if (keyId == VSS_OTA_SM2_KEY)
        {
            pData[0] = 0x04;
            memcpy(&pData[1], g_pSignatureHeader.pSuffix->SignerInfoNational.signatureCertificatePublicKey, 64);
        }
        else if (keyId == VSS_OTA_SM2_0X11_KEY)
        {
            memcpy(pData, sm2Key_0x11, VSS_CONFIG_SM2_KEY_LEN);
        }
        else if (keyId == VSS_OTA_SM2_0X21_KEY)
        {
            memcpy(pData, sm2Key_0x21, VSS_CONFIG_SM2_KEY_LEN);
        }
        else
        {
            ret = VSS_ERR_KEY_NOT_EXIST;
        }


        if (tem != E_OK)
        {
            ret = VSS_ERR_READ_CACHE_FAILED; // 读取缓存失败
        }
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
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

    // 检查参数有效性
    if ((pData == NULL) || (keyId >= VSS_CONFIG_KEY_NUM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    if (rwflag == VSS_FLASH_Write)
    {
        // 计算写入地址偏移
        uint32_t addrOffset = ECC256_KEY_IDX + keyId * VSS_CONFIG_ECC256_KEY_LEN;
        uint8_t tem = E_NOT_OK;
        // 写入ECC256密钥到EEPROM
        tem = EEIf_Write(addrOffset, VSS_CONFIG_ECC256_KEY_LEN, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_WRITE_CACHE_FAILED; // 写入缓存失败
        }
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        // 计算读取地址偏移
        uint32_t addrOffset = ECC256_KEY_IDX + keyId * VSS_CONFIG_ECC256_KEY_LEN;
        uint8_t tem = E_NOT_OK;
        // 从EEPROM读取ECC256密钥
        tem = EEIf_Read(addrOffset, VSS_CONFIG_ECC256_KEY_LEN, pData);
        if (tem != E_OK)
        {
            ret = VSS_ERR_READ_CACHE_FAILED; // 读取缓存失败
        }
    } else{
        ret = VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    return ret;
}
