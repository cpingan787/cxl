/*
 * SecureProgram.c
 *
 *  Created on: 2026-03-16
 *      Author: CaoLiang
 */

#include "SecureProgram.h"
#include "Vss.h"
#include "EEIf.h"
#include "MemM_cfg.h"
#include <string.h>
#include <stdlib.h>

/**
 * @brief 校验签名信息域的证书签名
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 根据g_cryptoTypeFlag选择使用国密算法或国际密码算法进行校验
 */
uint8_t SecureProgram_ValidateSignerInfoSignature(void)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    SignerInfoType *pSignerInfo = NULL;
    
    /* 检查签名头结构体完整性 */
    if(g_pSignatureHeader.pSuffix == NULL)
    {
        return SECURE_PROGRAM_ERROR_NULL_POINTER;
    }
    
    /* 检查密码类型标志位 */
    if(g_cryptoTypeFlag == 0xFF)
    {
        /* 验证失败，不执行任何校验操作 */
        return SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
    }
    
    /* 根据密码类型标志位选择对应的签名信息域 */
    if(g_cryptoTypeFlag == 0x01)
    {
        /* 使用国密签名信息域 */
        pSignerInfo = &g_pSignatureHeader.pSuffix->SignerInfoNational;
        
        /* 使用国密算法进行签名校验 */
        if (pSignerInfo->signatureAlgorithm == SIGNATURE_ALGORITHM_SM2)
        {
            /*将SM2公钥写入到EEIf中*/
            EEIf_Write(SM2_KEY_IDX, VSS_CONFIG_SM2_KEY_LEN, pSignerInfo->signatureCertificatePublicKey);

            /* 计算签名信息域中从证书格式字段到签名证书公钥字段的校验值 */
            uint32_t ret = VssSM2_Verify(pSignerInfo, SIGNER_INFO_VALIDATION_LENGTH, pSignerInfo->certificateSignature, 64);
            
            //待后续更进一步报更详细的错误信息
            if(ret != VSS_RET_SUCCESS)
            {
                result = SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
            }
        }
        else
        {
            /* 签名算法与密码类型标志位不匹配 */
            result = SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
        }
    }
    else if(g_cryptoTypeFlag == 0x02)
    {
        /* 使用国际签名信息域 */
        pSignerInfo = &g_pSignatureHeader.pSuffix->SignerInfoInternational;
        
        /* 使用国际密码算法进行签名校验 */
        if (pSignerInfo->signatureAlgorithm == SIGNATURE_ALGORITHM_ECC)
        {
            /* 计算签名信息域中从证书格式字段到签名证书公钥字段的校验值 */
            uint32_t ret = VssEcc256_Verify(pSignerInfo, SIGNER_INFO_VALIDATION_LENGTH, pSignerInfo->certificateSignature, 64);

            //待后续更进一步报更详细的错误信息
            if(ret != VSS_RET_SUCCESS)
            {
                result = SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
            }
        }
        else
        {
            /* 签名算法与密码类型标志位不匹配 */
            result = SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
        }
    }
    else
    {
        /* 无效的密码类型标志位 */
        result = SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return result;
}

/**
 * @brief 校验文件摘要
 * @param startAddress 起始地址
 * @param dataLength 数据长度
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 根据g_cryptoTypeFlag选择使用国密算法或国际密码算法进行校验
 */
uint8_t SecureProgram_ValidateFileDigest(void)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    uint8_t sm3Digest[32] = {0};
    uint8_t sha256Digest[32] = {0};
    uint32_t startAddress = SIGNATURE_HEADER_START_ADDR + SIGNATURE_HEADER_SIZE;
    uint32_t dataLength = g_pSignatureHeader.pModuleAddressInfo->length;

    /* 检查密码类型标志位 */
    if(g_cryptoTypeFlag == 0xFF)
    {
        /* 验证失败，不执行任何校验操作 */
        return SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
    }
    
    /* 根据密码类型标志位选择算法 */
    if(g_cryptoTypeFlag == 0x01)
    {
        /* 使用国密算法进行文件摘要校验 */
        /* 使用SM3计算文件摘要 */
    if(VssSM3Calc((const uint8_t*)startAddress, dataLength, sm3Digest) != VSS_RET_SUCCESS)
    {
        return SECURE_PROGRAM_ERROR_CRYPTO_OPERATION;
    }
            
        /* 比较SM3摘要 */
        for(uint8_t i = 0; i < 32; i++)
        {
            if(sm3Digest[i] != g_pSignatureHeader.pSuffix->MessageDigestNational[i])
            {
                result = SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
                break;
            }
        }
    }
    else if(g_cryptoTypeFlag == 0x02)
    {
        /* 使用国际密码算法进行文件摘要校验 */
        /* 使用SHA256计算文件摘要 */
    if(VssSHA256Calc((const uint8_t*)startAddress, dataLength, sha256Digest) != VSS_RET_SUCCESS)
    {
        return SECURE_PROGRAM_ERROR_CRYPTO_OPERATION;
    }
        
        /* 比较SHA256摘要 */
        for(uint8_t i = 0; i < 32; i++)
        {
            if(sha256Digest[i] != g_pSignatureHeader.pSuffix->MessageDigestInternational[i])
            {
                result = SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
                break;
            }
        }
    }
    else
    {
        /* 无效的密码类型标志位 */
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return result;
}

/**
 * @brief 校验签名头签名
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 根据g_cryptoTypeFlag选择使用国密算法或国际密码算法进行校验
 */
uint8_t SecureProgram_ValidateSignature(void)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    
    /* 边界检测 */
    if(g_pSignatureHeader.pPrefix == NULL || g_pSignatureHeader.pModuleAddressInfo == NULL || g_pSignatureHeader.pSuffix == NULL)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 检查密码类型标志位 */
    if(g_cryptoTypeFlag == 0xFF)
    {
        /* 验证失败，不执行任何校验操作 */
        return SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
    }
    
    /* 根据密码类型标志位选择算法 */
    if(g_cryptoTypeFlag == 0x01)
    {
        /* 使用国密算法进行签名校验 */
        /* 计算SM2签名验证的数据长度 */
        // 仅包含pPrefix、pModuleAddressInfo以及pSuffix中的SignerInfoNational和MessageDigestNational
        uint32_t sm2DataLength = sizeof(SignatureHeaderPrefixType) + 
                                ModuleAddressInfoSize + 
                                sizeof(g_pSignatureHeader.pSuffix->SignerInfoNational) + 
                                sizeof(g_pSignatureHeader.pSuffix->MessageDigestNational);
        
        /* 分配临时数组用于SM2签名验证 */
        uint8_t *sm2VerifyData = (uint8_t *)malloc(sm2DataLength);
        if (sm2VerifyData == NULL)
        {
            return SECURE_PROGRAM_ERROR_MEMORY_ALLOCATION;
        }
        
        uint32_t copyOffset = 0;
        
        /* 复制pPrefix数据 */
        memcpy(sm2VerifyData, g_pSignatureHeader.pPrefix, sizeof(SignatureHeaderPrefixType));
        copyOffset += sizeof(SignatureHeaderPrefixType);
        
        /* 复制pModuleAddressInfo数据 */
        memcpy(sm2VerifyData + copyOffset, g_pSignatureHeader.pModuleAddressInfo, ModuleAddressInfoSize);
        copyOffset += ModuleAddressInfoSize;
        
        /* 复制pSuffix中的SignerInfoNational数据 */
        memcpy(sm2VerifyData + copyOffset, &g_pSignatureHeader.pSuffix->SignerInfoNational, 
               sizeof(g_pSignatureHeader.pSuffix->SignerInfoNational));
        copyOffset += sizeof(g_pSignatureHeader.pSuffix->SignerInfoNational);
        
        /* 复制pSuffix中的MessageDigestNational数据 */
        memcpy(sm2VerifyData + copyOffset, &g_pSignatureHeader.pSuffix->MessageDigestNational, 
               sizeof(g_pSignatureHeader.pSuffix->MessageDigestNational));
        
        /* 使用SM2验证签名 */
        if(VssSM2_Verify(sm2VerifyData, sm2DataLength, 
                         g_pSignatureHeader.pSuffix->SignatureNational, 64) != VSS_RET_SUCCESS)
        {
            free(sm2VerifyData);
            result = SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
            return result;
        }
        
        /* 释放SM2验证数据 */
        free(sm2VerifyData);
    }
    else if(g_cryptoTypeFlag == 0x02)
    {
        /* 使用国际密码算法进行签名校验 */
        /* 计算SHA256签名验证的数据长度 */
        // 仅包含pPrefix、pModuleAddressInfo以及pSuffix中的SignerInfoInternational和MessageDigestInternational
        uint32_t sha256DataLength = sizeof(SignatureHeaderPrefixType) + 
                                   ModuleAddressInfoSize + 
                                   sizeof(g_pSignatureHeader.pSuffix->SignerInfoInternational) + 
                                   sizeof(g_pSignatureHeader.pSuffix->MessageDigestInternational);
        
        /* 分配临时数组用于SHA256签名验证 */
        uint8_t *sha256VerifyData = (uint8_t *)malloc(sha256DataLength);
        if (sha256VerifyData == NULL)
        {
            return SECURE_PROGRAM_ERROR_MEMORY_ALLOCATION;
        }
        
        uint32_t copyOffset = 0;
        
        /* 复制pPrefix数据 */
        memcpy(sha256VerifyData, g_pSignatureHeader.pPrefix, sizeof(SignatureHeaderPrefixType));
        copyOffset += sizeof(SignatureHeaderPrefixType);
        
        /* 复制pModuleAddressInfo数据 */
        memcpy(sha256VerifyData + copyOffset, g_pSignatureHeader.pModuleAddressInfo, ModuleAddressInfoSize);
        copyOffset += ModuleAddressInfoSize;
        
        /* 复制pSuffix中的SignerInfoInternational数据 */
        memcpy(sha256VerifyData + copyOffset, &g_pSignatureHeader.pSuffix->SignerInfoInternational, 
               sizeof(g_pSignatureHeader.pSuffix->SignerInfoInternational));
        copyOffset += sizeof(g_pSignatureHeader.pSuffix->SignerInfoInternational);
        
        /* 复制pSuffix中的MessageDigestInternational数据 */
        memcpy(sha256VerifyData + copyOffset, &g_pSignatureHeader.pSuffix->MessageDigestInternational, 
               sizeof(g_pSignatureHeader.pSuffix->MessageDigestInternational));
        
        /* 使用ECC256验证签名 */
        if(VssEcc256_Verify(sha256VerifyData, sha256DataLength, 
                            g_pSignatureHeader.pSuffix->SignatureInternational, 64) != VSS_RET_SUCCESS)
        {
            free(sha256VerifyData);
            result = SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
            return result;
        }
        
        /* 释放SHA256验证数据 */
        free(sha256VerifyData);
    }
    else
    {
        /* 无效的密码类型标志位 */
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return result;
}

/**
 * @brief 检查编程完整性
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 函数会检查签名头有效性、签名信息域验证以及文件摘要验证
 */
uint8_t SecureProgram_CheckProgrammingIntegrity(void)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    
    /* 初始化签名头 */
    result = SignatureHeader_Init();
    if(result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    // 验证签名信息域的证书签名
    result = SecureProgram_ValidateSignerInfoSignature();
    if(result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }

    /* 验证签名头签名 */
    result = SecureProgram_ValidateSignature();
    if(result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    /* 验证文件摘要 */
    if(g_pSignatureHeader.pModuleAddressInfo != NULL)
    {
        result = SecureProgram_ValidateFileDigest();
        if(result != SECURE_PROGRAM_SUCCESS)
        {
            return result;
        }
    }
    else
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

