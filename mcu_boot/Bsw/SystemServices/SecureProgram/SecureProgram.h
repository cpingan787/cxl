/*
 * SecureProgram.h
 *
 *  Created on: 2026-03-16
 *      Author: TraeAI
 */

#ifndef SECURE_PROGRAM_H
#define SECURE_PROGRAM_H

#include <stdint.h>
#include "SignatureHeader.h"

/* 签名算法标识定义 */
#define SIGNATURE_ALGORITHM_SM2     0x04
#define SIGNATURE_ALGORITHM_ECC     0x01

/* 公钥曲线参数定义 */
#define CURVE_PARAMETER_SM2         0x11
#define CURVE_PARAMETER_SECP256R1   0x21

/* 哈希算法标识定义 */
#define HASH_ALGORITHM_SHA256       0x02
#define HASH_ALGORITHM_SM3          0x07

/* 根公钥索引定义 */
#define ROOT_KEY_INDEX_TEST_INTERNATIONAL  0x10
#define ROOT_KEY_INDEX_TEST_NATIONAL       0x11
#define ROOT_KEY_INDEX_PROD_INTERNATIONAL  0x20
#define ROOT_KEY_INDEX_PROD_NATIONAL       0x21
#define ROOT_KEY_INDEX_DIAG_INTERNATIONAL  0x40
#define ROOT_KEY_INDEX_DIAG_NATIONAL       0x41

/* 错误码定义 */
#define SECURE_PROGRAM_SUCCESS             0x00  /* 操作成功 */
#define SECURE_PROGRAM_ERROR_NULL_POINTER  0x01  /* 空指针错误 */
#define SECURE_PROGRAM_ERROR_INVALID_FORMAT 0x02  /* 格式无效错误 */
#define SECURE_PROGRAM_ERROR_INVALID_TIMESTAMP 0x03  /* 时间戳无效错误 */
#define SECURE_PROGRAM_ERROR_INVALID_ALGORITHM 0x04  /* 算法无效错误 */
#define SECURE_PROGRAM_ERROR_INVALID_SIGNATURE 0x05  /* 签名无效错误 */

/* 签名头初始化函数 */
/**
 * @brief 初始化签名头并验证其有效性
 * @return 操作结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 函数会对签名头进行格式校验、时间戳验证、签名算法验证等
 */
uint8_t SecureProgram_Init(void);

/**
 * @brief 验证签名头格式
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderFormat(SignatureHeaderType *pSignatureHeader);

/**
 * @brief 验证签名头时间戳
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderTimestamp(SignatureHeaderType *pSignatureHeader);

/**
 * @brief 验证签名头算法
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderAlgorithm(SignatureHeaderType *pSignatureHeader);

/**
 * @brief 计算签名信息域的哈希值
 * @param pSignerInfo 指向签名信息域的指针
 * @param algorithmType 算法类型
 * @param hashValue 指向用于存储计算得出的最终哈希值的数组的指针，数组长度为64位
 * @return 操作结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_CalculateSignerInfoHash(SignerInfoType *pSignerInfo, uint8_t algorithmType, uint8_t *hashValue);

/**
 * @brief SM2签名验证函数
 * @param publicKey 公钥
 * @param hashValue 哈希值
 * @param signature 签名
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_SM2_Verify(const uint8_t *publicKey, const uint8_t *hashValue, const uint8_t *signature);

/**
 * @brief ECC签名验证函数
 * @param publicKey 公钥
 * @param hashValue 哈希值
 * @param signature 签名
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ECC_Verify(const uint8_t *publicKey, const uint8_t *hashValue, const uint8_t *signature);

/**
 * @brief 验证签名信息域的证书签名
 * @param pSignerInfo 指向签名信息域的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignerInfoSignature(SignerInfoType *pSignerInfo);

/**
 * @brief 验证签名头签名
 * @param pSignatureHeader 指向签名头数据的指针
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SecureProgram_ValidateSignatureHeaderSignature(SignatureHeaderType *pSignatureHeader);

#endif /* SECURE_PROGRAM_H */