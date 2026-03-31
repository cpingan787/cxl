/*
 * SecureProgram.c
 *
 *  Created on: 2026-03-16
 *      Author: TraeAI
 */

#include "SecureProgram.h"

/**
 * @brief 验证签名头格式是否符合要求
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderFormat(SignatureHeaderType *pSignatureHeader)
{
    /* 检查参数 */
    if (pSignatureHeader == NULL)
    {
        return SECURE_PROGRAM_ERROR_NULL_POINTER;
    }
    
    /* 检查模块标识符 */
    uint8_t saicIdentifier = (pSignatureHeader->ModuleID >> 8) & 0xFF;
    if (saicIdentifier != SAIC_SPECIAL_IDENTIFIER)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    /* 检查证书格式 */
    if (pSignatureHeader->SignerInfoNational.certificateFormat != 0x20 ||
        pSignatureHeader->SignerInfoInternational.certificateFormat != 0x20)
    {
        return SECURE_PROGRAM_ERROR_INVALID_FORMAT;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 验证签名头时间戳
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderTimestamp(SignatureHeaderType *pSignatureHeader)
{
    /* 检查参数 */
    if (pSignatureHeader == NULL)
    {
        return SECURE_PROGRAM_ERROR_NULL_POINTER;
    }
    /* TODO: 实现时间戳验证逻辑 */
    /* 暂时返回成功，实际项目中需要根据当前时间与证书失效日期进行比较 */
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 验证签名头算法
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderAlgorithm(SignatureHeaderType *pSignatureHeader)
{
    /* 检查参数 */
    if (pSignatureHeader == NULL)
    {
        return SECURE_PROGRAM_ERROR_NULL_POINTER;
    }
    /* 验证国密签名算法 */
    if (pSignatureHeader->SignerInfoNational.signatureAlgorithm != SIGNATURE_ALGORITHM_SM2 ||
        pSignatureHeader->SignerInfoNational.publicKeyCurveParameter != CURVE_PARAMETER_SM2 ||
        pSignatureHeader->SignerInfoNational.hashAlgorithm != HASH_ALGORITHM_SM3)
    {
        return SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
    }
    
    /* 验证国际签名算法 */
    if (pSignatureHeader->SignerInfoInternational.signatureAlgorithm != SIGNATURE_ALGORITHM_ECC ||
        pSignatureHeader->SignerInfoInternational.publicKeyCurveParameter != CURVE_PARAMETER_SECP256R1 ||
        pSignatureHeader->SignerInfoInternational.hashAlgorithm != HASH_ALGORITHM_SHA256)
    {
        return SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 计算签名信息域的哈希值
 * @param pSignerInfo 指向签名信息域的指针
 * @param algorithmType 算法类型
 * @param hashValue 指向用于存储计算得出的最终哈希值的数组的指针，数组长度为64位
 * @return 操作结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_CalculateSignerInfoHash(SignerInfoType *pSignerInfo, uint8_t algorithmType, uint8_t *hashValue)
{
    /* 检查参数 */
    if (pSignerInfo == NULL || hashValue == NULL)
    {
        return SECURE_PROGRAM_ERROR_NULL_POINTER;
    }

    /* 计算从证书格式字段到签名证书公钥字段的连续内存区域的校验值 */
    /* 这里使用pSignerInfo作为起始地址，因为证书格式是第一个字段 */
    const uint8_t *dataToHash = (const uint8_t *)pSignerInfo;
    
    /* 根据算法类型选择相应的哈希算法计算哈希值 */
    switch (algorithmType)
    {
        case SIGNATURE_ALGORITHM_SM2:
            /* TODO: 实现SM2哈希算法计算 */
            /* 示例：SM2_Calculate(dataToHash, signerInfoDataSize, hashValue); */
            break;
        case SIGNATURE_ALGORITHM_ECC:
            /* TODO: 实现ECC哈希算法计算 */
            /* 示例：ECC_Calculate(dataToHash, signerInfoDataSize, hashValue); */
            break;
        default:
            /* 未知的哈希算法 */
            return SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
    }
    
    /* 暂时返回成功，实际项目中需要实现具体的哈希计算 */
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief SM2签名验证函数
 * @param publicKey 公钥
 * @param hashValue 哈希值
 * @param signature 签名
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_SM2_Verify(const uint8_t *publicKey, const uint8_t *hashValue, const uint8_t *signature)
{
    /* TODO: 实现SM2签名验证逻辑 */
    /* 暂时返回成功，实际项目中需要实现具体的SM2算法 */
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief ECC签名验证函数
 * @param publicKey 公钥
 * @param hashValue 哈希值
 * @param signature 签名
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ECC_Verify(const uint8_t *publicKey, const uint8_t *hashValue, const uint8_t *signature)
{
    /* TODO: 实现ECC签名验证逻辑 */
    /* 暂时返回成功，实际项目中需要实现具体的ECC算法 */
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 验证签名信息域的证书签名
 * @param pSignerInfo 指向签名信息域的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignerInfoSignature(SignerInfoType *pSignerInfo)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    /* 创建长度为64位的哈希值数组，用于存储计算得出的最终哈希值 */
    uint8_t hashValue[64];
    
    /* 根据签名算法标识选择相应的验证函数 */
    if (pSignerInfo->signatureAlgorithm == SIGNATURE_ALGORITHM_SM2)
    {
        /* 计算签名信息域中从证书格式字段到签名证书公钥字段的校验值 */
        result = SecureProgram_CalculateSignerInfoHash(pSignerInfo, pSignerInfo->hashAlgorithm, hashValue);
        if (result != SECURE_PROGRAM_SUCCESS)
        {
            return result;
        }
        
        /* 使用SM2算法验证签名 */
        result = SecureProgram_SM2_Verify(
            pSignerInfo->signatureCertificatePublicKey,
            hashValue,
            pSignerInfo->certificateSignature
        );
    }
    else if (pSignerInfo->signatureAlgorithm == SIGNATURE_ALGORITHM_ECC)
    {
        /* 计算签名信息域中从证书格式字段到签名证书公钥字段的校验值 */
        result = SecureProgram_CalculateSignerInfoHash(pSignerInfo, pSignerInfo->hashAlgorithm, hashValue);
        if (result != SECURE_PROGRAM_SUCCESS)
        {
            return result;
        }
        
        /* 使用ECC算法验证签名 */
        result = SecureProgram_ECC_Verify(
            pSignerInfo->signatureCertificatePublicKey,
            hashValue,
            pSignerInfo->certificateSignature
        );
    }
    else
    {
        /* 未知的签名算法 */
        return SECURE_PROGRAM_ERROR_INVALID_ALGORITHM;
    }
    
    /* 检查验证结果 */
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        /* 签名验证失败 */
        return SECURE_PROGRAM_ERROR_INVALID_SIGNATURE;
    }
    
    return result;
}

/**
 * @brief 验证签名头签名
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderSignature(SignatureHeaderType *pSignatureHeader)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    
    /* 检查参数 */
    if (pSignatureHeader == NULL)
    {
        return SECURE_PROGRAM_ERROR_NULL_POINTER;
    }
    
    /* 验证国密签名信息域的证书签名 */
    result = SecureProgram_ValidateSignerInfoSignature(&pSignatureHeader->SignerInfoNational);
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    /* 验证国际签名信息域的证书签名 */
    result = SecureProgram_ValidateSignerInfoSignature(&pSignatureHeader->SignerInfoInternational);
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}

/**
 * @brief 初始化签名头并验证其有效性
 * @return 操作结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 函数会对签名头进行格式校验、时间戳验证、签名算法验证等
 */
uint8_t SecureProgram_Init(void)
{
    uint8_t result = SECURE_PROGRAM_SUCCESS;
    
    /* 设置全局指针为签名头基地址 */
    g_pSignatureHeader = (SignatureHeaderType *)SIGNATURE_HEADER_BASE_ADDRESS;
    
    /* 验证签名头格式 */
    result = SecureProgram_ValidateSignatureHeaderFormat(g_pSignatureHeader);
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    /* 验证时间戳 */
    result = SecureProgram_ValidateSignatureHeaderTimestamp(g_pSignatureHeader);
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    /* 验证算法 */
    result = SecureProgram_ValidateSignatureHeaderAlgorithm(g_pSignatureHeader);
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    /* 验证签名 */
    result = SecureProgram_ValidateSignatureHeaderSignature(g_pSignatureHeader);
    if (result != SECURE_PROGRAM_SUCCESS)
    {
        return result;
    }
    
    return SECURE_PROGRAM_SUCCESS;
}
