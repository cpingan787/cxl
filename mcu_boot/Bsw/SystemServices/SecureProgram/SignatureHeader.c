/*
 * SignatureHeader.c
 *
 *  Created on: 2026-03-16
 *      Author: CaoLiang
 */

#include "SignatureHeader.h"
#include "EEIf.h"
#include "MemM_cfg.h"

/* 全局变量定义 */
SignatureHeaderType g_pSignatureHeader;

/* 存储 pModuleAddressInfo 占用的字节大小，用于后续空间大小的计算 */
uint32_t ModuleAddressInfoSize = 0U;

/**
 * @brief 密码类型标志位
 * @value 0xFF: 未初始化
 * @value 0x01: 使用国密算法(SM2/SM3)
 * @value 0x02: 使用国际密码算法(ECC/SHA256)
 */
uint8_t g_cryptoTypeFlag = 0xFF;

/**
 * @brief 检查数据是否为全FF
 * @param data 指向数据的指针
 * @param length 数据长度
 * @return 如果数据为全FF返回1，否则返回0
 */
static uint8_t IsAllFF(const uint8_t *data, uint32_t length)
{
    for(uint32_t i = 0; i < length; i++)
    {
        if(data[i] != 0xFF)
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief 验证 ModuleID 格式
 * @param moduleID ModuleID 值
 * @return 验证结果，成功返回 SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
static uint8_t ValidateModuleID(uint16_t moduleID)
{
    uint8_t byte1 = (moduleID >> 8) & 0xFF;
    uint8_t byte2 = moduleID & 0xFF;
    
    /* 验证 SAIC 特殊标识符 */
    if(byte1 != 0xA1)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 验证 Module 类型 */
    if(!((byte2 == 0x01) || /* 应用软件 */
         (byte2 == 0x90) || /* 网络配置数据 */
         (byte2 == 0x91) || /* 签名旁路许可 */
         ((byte2 >= 0x02) && (byte2 <= 0x40)) /* 标定数据 */))
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 验证单个模块地址信息
 * @param moduleAddressInfo 模块地址信息
 * @return 验证结果，成功返回 SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
static uint8_t ValidateSingleModuleAddressInfo(const ModuleAddressInfoType *moduleAddressInfo)
{
    /* 检查地址范围是否在 0x00000000-0x1FFFFFFF 之间 */
    if(moduleAddressInfo->startAddress > 0x1FFFFFFF)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 检查结束地址是否超过 0x1FFFFFFF */
    if((moduleAddressInfo->startAddress + moduleAddressInfo->length) > 0x1FFFFFFF)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 验证签名信息域
 * @param pSignerInfo 指向签名信息域的指针
 * @return 验证结果，成功返回 SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
static uint8_t ValidateSignerInfo(const SignerInfoType *pSignerInfo)
{
    /* 验证证书格式 */
    if(pSignerInfo->certificateFormat != 0x20)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 验证产品模块编号是否为全0 */
    for(uint8_t i = 0; i < 8; i++)
    {
        if(pSignerInfo->productModuleNumber[i] != 0)
        {
            return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
        }
    }
    
    /* 验证自定义参数是否为全0 */
    for(uint8_t i = 0; i < 16; i++)
    {
        if(pSignerInfo->customParameters[i] != 0)
        {
            return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
        }
    }
    
    /* 验证签名算法标识 */
    if(!(pSignerInfo->signatureAlgorithm == SIGNATURE_ALGORITHM_SM2 ||
         pSignerInfo->signatureAlgorithm == SIGNATURE_ALGORITHM_ECC))
    {
        return SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
    }
    
    /* 验证公钥曲线参数 */
    if(!(pSignerInfo->publicKeyCurveParameter == CURVE_PARAMETER_SM2 ||
         pSignerInfo->publicKeyCurveParameter == CURVE_PARAMETER_SECP256R1))
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 验证哈希算法标识 */
    if(!(pSignerInfo->hashAlgorithm == HASH_ALGORITHM_SHA256 ||
         pSignerInfo->hashAlgorithm == HASH_ALGORITHM_SM3))
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 验证根公钥索引 */
    if(!((pSignerInfo->rootKeyIndex == ROOT_KEY_INDEX_TEST_INTERNATIONAL) ||
         (pSignerInfo->rootKeyIndex == ROOT_KEY_INDEX_TEST_NATIONAL) ||
         (pSignerInfo->rootKeyIndex == ROOT_KEY_INDEX_PROD_INTERNATIONAL) ||
         (pSignerInfo->rootKeyIndex == ROOT_KEY_INDEX_PROD_NATIONAL) ||
         (pSignerInfo->rootKeyIndex == ROOT_KEY_INDEX_DIAG_INTERNATIONAL) ||
         (pSignerInfo->rootKeyIndex == ROOT_KEY_INDEX_DIAG_NATIONAL)))
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 确定签名头使用的加密类型
 * @return 0x01表示使用国密算法，0x02表示使用国际密码算法，0xFF表示验证失败
 * @note 判断逻辑：检查国密和洋密部分的签名信息域、文件摘要、签名是否为全FF，并且格式校验通过
 */
uint8_t SignatureHeader_DetermineCryptoType(void)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    
    /* 重置密码类型标志位 */
    g_cryptoTypeFlag = 0xFF;
    
    /* 验证 ModuleID */
    result = ValidateModuleID(g_pSignatureHeader.pPrefix->ModuleID);
    if(result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    /* 验证 NBID */
    if(g_pSignatureHeader.pPrefix->NBID != 0x0000)
    {
        result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
        return result;
    }
    
    /* 验证 moduleCount */
    if(g_pSignatureHeader.pPrefix->moduleCount >= MAX_MODULE_COUNT)
    {
        result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
        return result;
    }
    
    /* 验证模块地址信息 */
    for(uint16_t i = 0; i < g_pSignatureHeader.pPrefix->moduleCount; i++)
    {
        result = ValidateSingleModuleAddressInfo(&g_pSignatureHeader.pModuleAddressInfo[i]);
        if(result != SECURE_PROGRAM_SUCCESS)
        {
            return result;
        }
    }

    //国密校验
    /* 检查国密文件摘要 */
    if(!IsAllFF(g_pSignatureHeader.pSuffix->MessageDigestNational, 32))
    {
        /* 检查国密签名 */
        if(!IsAllFF(g_pSignatureHeader.pSuffix->SignatureNational, 64))
        {
            /* 验证国密签名信息域格式 */
            if(ValidateSignerInfo(&g_pSignatureHeader.pSuffix->SignerInfoNational) == SECURE_PROGRAM_SUCCESS)
            {
                g_cryptoTypeFlag = 0x01; /* 设置为国密算法 */
                result = SECURE_PROGRAM_SUCCESS;
                return result;
            }
            else
            {
                result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
                return result;
            }
        }
        else
        {
            result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
            return result;
        }
    }
    else
    {
        result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
        return result;
    }

    //洋密校验
    /* 检查洋密文件摘要 */
    if(!IsAllFF(g_pSignatureHeader.pSuffix->MessageDigestInternational, 32))
    {
        /* 检查洋密签名 */
        if(!IsAllFF(g_pSignatureHeader.pSuffix->SignatureInternational, 64))
        {
            /* 验证洋密签名信息域格式 */
            if(ValidateSignerInfo(&g_pSignatureHeader.pSuffix->SignerInfoInternational) == SECURE_PROGRAM_SUCCESS)
            {
                g_cryptoTypeFlag = 0x02; /* 设置为国际密码算法 */
                result = SECURE_PROGRAM_SUCCESS;
                return result;
            }
            else
            {
                result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
                return result;
            }
        }else
        {
            result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
            return result;
        }
    }
    else
    {
        result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
        return result;
    }    
}

/**
 * @brief 初始化全局签名头结构体
 * @return 成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SignatureHeader_Init(void)
{
    uint32_t BaseAddress = SIGNATURE_HEADER_START_ADDR; //此处需要写入idx值

    /* 确认头部结构体指针地址 */
    g_pSignatureHeader.pPrefix = (SignatureHeaderPrefixType *)BaseAddress;   
    uint16_t moduleCount = g_pSignatureHeader.pPrefix->moduleCount;

    //确认pModuleAddressInfo的实际内存地址
    g_pSignatureHeader.pModuleAddressInfo = \
                                            (ModuleAddressInfoType *)(\
                                                (uint8_t *)BaseAddress + sizeof(SignatureHeaderPrefixType)\
                                            );
    // 计算pModuleAddressInfo占用的字节大小
    ModuleAddressInfoSize = sizeof(ModuleAddressInfoType) * moduleCount;

    //确认pSuffix的实际内存地址
    g_pSignatureHeader.pSuffix = (SignatureHeaderSuffixType *)(\
                                    (uint8_t *)g_pSignatureHeader.pModuleAddressInfo \
                                    + ModuleAddressInfoSize\
                                );

           // 校验格式和签名头使用的加密类型:国密/洋密
    return SignatureHeader_DetermineCryptoType();
}
