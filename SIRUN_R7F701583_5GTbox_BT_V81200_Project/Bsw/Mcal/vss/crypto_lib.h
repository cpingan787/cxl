/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: crypto_lib.h
 Author: CaoLiang
 Created Time: 2026-03-31
 Description: 加密算法库头文件，包含SM2、SM3、SM4、SHA256、CRC等算法的接口定义
 Others: 本文件定义了各种加密算法的上下文结构和函数接口
*************************************************/
#ifndef CRYPTO_LIB_H
#define CRYPTO_LIB_H

/****************************** include ***************************************/
#include <stdint.h>
#include <stdio.h>
#include "stddef.h"
#include <string.h>

/****************************** Macro Definitions ******************************/
#define CRYPTO_E_OK      0   // 成功
#define CRYPTO_E_NOT_OK -1   // 失败
#define CRYPTO_E_PARAM  -2   // 参数错误
#define CRYPTO_E_KEY    -3   // 密钥错误
#define CRYPTO_E_SIGN   -4   // 签名错误

/* SECP256R1 基本类型 */
#define SECP256R1_K 8

/****************************** Type Definitions ******************************/
/* SM3 相关 */
/**
 * @brief SM3哈希算法上下文结构
 * @details 用于存储SM3哈希计算过程中的中间状态
 * @param state 8个32位状态值
 * @param count 2个32位计数器，记录已处理的数据长度
 * @param buffer 64字节缓冲区，用于存储待处理的数据
 */
typedef struct {
    uint32_t state[8];
    uint32_t count[2];
    uint8_t buffer[64];
} SM3_CTX_USER;

/* SHA256 相关 */
/**
 * @brief SHA256哈希算法上下文结构
 * @details 用于存储SHA256哈希计算过程中的中间状态
 * @param state 8个32位状态值
 * @param count 64位计数器，记录已处理的数据长度
 * @param buffer 64字节缓冲区，用于存储待处理的数据
 * @param buffer_len 缓冲区中当前数据长度
 */
typedef struct {
    uint32_t state[8];
    uint64_t count;
    uint8_t buffer[64];
    uint32_t buffer_len;
} Crypto_SHA256_Context;

/* SM2 相关 */
/**
 * @brief SM2算法256位整数类型
 * @details 由4个64位整数组成，共256位
 */
typedef uint64_t sm2_z256_t[4];

/**
 * @brief SM2算法512位整数类型
 * @details 由8个64位整数组成，共512位
 */
typedef uint64_t sm2_z512_t[8];

/**
 * @brief SM2椭圆曲线点（射影坐标）
 * @details 用于表示SM2椭圆曲线上的点，使用射影坐标
 * @param X X坐标（256位）
 * @param Y Y坐标（256位）
 * @param Z Z坐标（256位）
 */
typedef struct {
    sm2_z256_t X;
    sm2_z256_t Y;
    sm2_z256_t Z;
} SM2_Z256_POINT;

/**
 * @brief SM2密钥对
 * @details 包含SM2算法的公钥和私钥
 * @param public_key 公钥（射影坐标）
 * @param private_key 私钥（256位）
 */
typedef struct {
    SM2_Z256_POINT public_key;
    sm2_z256_t private_key;
} SM2_KEY;

/**
 * @brief SM2签名结构
 * @details 包含SM2算法的签名值
 * @param r 签名的r值（32字节）
 * @param s 签名的s值（32字节）
 */
typedef struct {
    uint8_t r[32];
    uint8_t s[32];
} SM2_SIGNATURE;

/**
 * @brief SM2椭圆曲线点（仿射坐标）
 * @details 用于表示SM2椭圆曲线上的点，使用仿射坐标
 * @param x x坐标（256位）
 * @param y y坐标（256位）
 */
typedef struct {
    sm2_z256_t x;
    sm2_z256_t y;
} SM2_Z256_AFFINE_POINT;

/**
 * @brief ASN.1标签枚举
 * @details 定义了ASN.1编码中使用的各种标签值
 */
enum ASN1_TAG {
    ASN1_TAG_END_OF_CONTENTS    = 0,        // 内容结束
    ASN1_TAG_BOOLEAN        = 1,        // 布尔类型
    ASN1_TAG_INTEGER        = 2,        // 整数类型
    ASN1_TAG_BIT_STRING        = 3,        // 比特字符串
    ASN1_TAG_OCTET_STRING        = 4,        // 八位字节字符串
    ASN1_TAG_NULL            = 5,        // 空值
    ASN1_TAG_OBJECT_IDENTIFIER    = 6,        // 对象标识符
    ASN1_TAG_ObjectDescriptor    = 7,        // 对象描述符
    ASN1_TAG_EXTERNAL        = 8,        // 外部类型
    ASN1_TAG_REAL            = 9,        // 实数类型
    ASN1_TAG_ENUMERATED        = 10,        // 枚举类型
    ASN1_TAG_EMBEDDED        = 11,        // 嵌入类型
    ASN1_TAG_UTF8String        = 12,        // UTF-8字符串
    ASN1_TAG_RELATIVE_OID        = 13,        // 相对对象标识符
    ASN1_TAG_NumericString        = 18,        // 数字字符串
    ASN1_TAG_PrintableString    = 19,        // 可打印字符串
    ASN1_TAG_TeletexString        = 20,        // 电传文本字符串
    ASN1_TAG_VideotexString        = 21,        // 可视图文字符串
    ASN1_TAG_IA5String        = 22,        // IA5字符串
    ASN1_TAG_UTCTime        = 23,        // UTC时间
    ASN1_TAG_GeneralizedTime    = 24,        // 通用时间
    ASN1_TAG_GraphicString        = 25,        // 图形字符串
    ASN1_TAG_VisibleString        = 26,        // 可见字符串
    ASN1_TAG_GeneralString        = 27,        // 通用字符串
    ASN1_TAG_UniversalString    = 28,        // 通用字符串
    ASN1_TAG_CHARACTER_STRING    = 29,        // 字符字符串
    ASN1_TAG_BMPString        = 30,        // BMP字符串
    ASN1_TAG_SEQUENCE        = 0x30,        // 序列
    ASN1_TAG_SET            = 0x31,        // 集合
    ASN1_TAG_EXPLICIT        = 0xa0,        // 显式标签
};

/* SECP256R1 相关 */
/**
 * @brief SECP256R1算法整数类型
 * @details 由8个32位整数组成，共256位
 */
typedef uint32_t secp256r1_t[SECP256R1_K];

/**
 * @brief SECP256R1椭圆曲线点
 * @details 用于表示SECP256R1椭圆曲线上的点
 * @param X X坐标
 * @param Y Y坐标
 * @param Z Z坐标
 */
typedef struct {
    secp256r1_t X;
    secp256r1_t Y;
    secp256r1_t Z;
} SECP256R1_POINT;

/**
 * @brief SECP256R1密钥对
 * @details 包含SECP256R1算法的公钥和私钥
 * @param public_key 公钥
 * @param private_key 私钥
 */
typedef struct {
    SECP256R1_POINT public_key;
    secp256r1_t private_key;
} SECP256R1_KEY;

/**
 * @brief ECDSA签名结构
 * @details 包含ECDSA算法的签名值
 * @param r 签名的r值
 * @param s 签名的s值
 */
typedef struct {
    secp256r1_t r;
    secp256r1_t s;
} ECDSA_SIGNATURE;

/**
 * @brief CRC32上下文结构
 * @details 用于存储CRC32计算的查找表
 * @param table 256个32位CRC值的查找表
 */
typedef struct {
    uint32_t table[256];
} crc32_context_t;

extern const uint64_t sm2_z256_pre_comp[37][64 * 4 * 2];

/****************************** Function Declarations *************************/
/*************************************************
 Function: Crypto_SM4_CMAC
 Description: 标准 SM4-CMAC 算法实现
 Input: key - 16字节的 SM4 主密钥
        data - 待计算的完整数据指针 (对于 SecOC，需提前将 Payload 和 FV 拼好)
        len - 数据长度（字节）
 Output: None
 Return: CRYPTO_E_OK(0) 成功, CRYPTO_E_NOT_OK(-1) 失败
 Others:
*************************************************/
int Crypto_SM4_CMAC(const uint8_t* key, const uint8_t* data, uint32_t len, uint8_t* mac);

/*************************************************
 Function: Crypto_SM3_CALC
 Description: 计算SM3哈希值
 Input: data - 待计算哈希的数据指针
        len - 数据长度（字节）
        hash - 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Output: 无
 Return: 计算成功返回CRYPTO_E_OK(0)，失败返回CRYPTO_E_NOT_OK(-1)
 Others: 
*************************************************/
int Crypto_SM3_CALC(const uint8_t* data, uint32_t len, uint8_t* hash);

/*************************************************
 Function: Crypto_SM3_Init
 Description: 初始化SM3上下文
 Input: ctx - SM3上下文指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
void Crypto_SM3_Init(SM3_CTX_USER *ctx);

/*************************************************
 Function: Crypto_SM3_Update
 Description: 更新SM3上下文
 Input: ctx - SM3上下文指针
        data - 待更新数据指针
        len - 数据长度（字节）
 Output: 无
 Return: 无
 Others: 
*************************************************/
void Crypto_SM3_Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len);

/*************************************************
 Function: Crypto_SM3_Final
 Description: 完成SM3哈希计算，输出摘要
 Input: ctx - SM3上下文指针
        hash - 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Output: 无
 Return: 无
 Others: 
*************************************************/
void Crypto_SM3_Final(SM3_CTX_USER *ctx, uint8_t *hash);

/*************************************************
 Function: Crypto_SHA256_CALC
 Description: 计算SHA256哈希值
 Input: data - 待计算哈希的数据指针
        len - 数据长度（字节）
        hash - 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Output: 无
 Return: 计算成功返回CRYPTO_E_OK(0)，失败返回CRYPTO_E_NOT_OK(-1)
 Others: 
*************************************************/
int Crypto_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash);

/*************************************************
 Function: Crypto_SHA256_Init
 Description: 初始化SHA256上下文
 Input: ctx - SHA256上下文指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
void Crypto_SHA256_Init(Crypto_SHA256_Context* ctx);

/*************************************************
 Function: Crypto_SHA256_Update
 Description: 更新SHA256上下文
 Input: ctx - SHA256上下文指针
        data - 待更新数据指针
        len - 数据长度（字节）
 Output: 无
 Return: 无
 Others: 
*************************************************/
void Crypto_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len);

/*************************************************
 Function: Crypto_SHA256_Final
 Description: 完成SHA256哈希计算，输出摘要
 Input: ctx - SHA256上下文指针
        hash - 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Output: 无
 Return: 无
 Others: 
*************************************************/
void Crypto_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash);

/*************************************************
 Function: Crypto_SM2_Verify
 Description: 验证SM2签名
 Input: data - 待验证数据指针
        len - 待验证数据长度（字节）
        signature - 签名指针
        signature_len - 签名长度（字节）
        pub_key - 公钥指针（65字节）
 Output: None
 Return: CRYPTO_E_OK 成功, CRYPTO_E_NOT_OK 失败, CRYPTO_E_PARAM 参数错误
 Others:
*************************************************/
int Crypto_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);

/*************************************************
 Function: Crypto_ECC_Verify
 Description: ECC(ECDSA) 验签接口 (secp256r1 / NIST P-256)
 Input: data - 待验证的原始数据
        len - 数据长度
        signature - 签名数据 (64字节: 32字节R + 32字节S)
        signature_len - 签名长度 (固定为64)
        pub_key - 公钥 (65字节: 0x04 + 32字节X + 32字节Y)
 Output: None
 Return: int CRYPTO_E_OK(0) 验签成功，CRYPTO_E_NOT_OK(-1) 验签失败
 Others: 
*************************************************/
int Crypto_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);

/*************************************************
 Function:      Crypto_CcittFalseCrc16
 Description:   计算 CRC16 (CCITT-False 规范)
 Input:         initial_crc - 初始 CRC 值 (通常为 0xFFFF)
                data - 待验证的原始数据指针
                length - 数据长度 (字节)
 Output:        None
 Return:        uint16_t - 计算得到的 16 位 CRC 校验值
 Others:        None
*************************************************/
uint16_t Crypto_CcittFalseCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length);

/*************************************************
 Function: Crypto_CcittCrc16
 Description: 计算 CRC16 (标准 CCITT 规范 / X.25)
 Input: initial_crc - 初始 CRC 值 (通常为 0x0000 或 0xFFFF)
        data - 待验证的原始数据指针
        length - 数据长度 (字节)
 Output: None
 Return: uint16_t - 计算得到的 16 位 CRC 校验值
 Others: None
*************************************************/
uint16_t Crypto_CcittCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length);

/*************************************************
 Function: Crypto_Crc32Init
 Description: 初始化 CRC32 动态查询表
 Input: context - CRC32 上下文指针
        polynomial - CRC32 生成多项式 (例如标准 IEEE 802.3 的 0x04C11DB7)
 Output: None
 Return: uint32_t - 标准初始 CRC 建议值 (固定为 0xFFFFFFFF)
 Others: None
*************************************************/
uint32_t Crypto_Crc32Init(crc32_context_t *context, uint32_t polynomial);

/*************************************************
 Function: Crypto_Crc32
 Description: 计算数据块的连续 CRC32 值
 Input: context - CRC32 上下文指针
        current_crc - 当前的 CRC 累加值 (首次调用需传入 0xFFFFFFFF)
        data - 待验证的原始数据指针
        length - 数据长度 (字节)
 Output: None
 Return: uint32_t - 中间态或未取反的 CRC32 计算结果
 Others: None
*************************************************/
uint32_t Crypto_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length);

 /*************************************************
 Function: Crypto_Crc32FinalResult
 Description: 输出最终的 CRC32 结果 (按位取反)
 Input: context - CRC32 上下文指针
        final_crc - 由 Crc32() 最终计算得出的原始 CRC 值
 Output: None
 Return: uint32_t - 最终的 32 位 CRC 校验值
 Others: None
*************************************************/
uint32_t Crypto_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc);

/*************************************************
 Function: Crypto_Crc8
 Description: 计算 CRC8 校验值 (移位法)
 Input: initial_value - 初始 CRC 值 (通常为 0x00 或 0xFF)
        polynomial - CRC8 生成多项式 (不包含最高位 1，例如 0x31)
        data - 待验证的原始数据指针
        length - 数据长度 (字节)
 Output: None
 Return: uint8_t - 计算得出的 8 位 CRC 校验值 (默认按位取反后返回)
 Others: None
*************************************************/
uint8_t Crypto_Crc8(uint8_t initial_value, uint8_t polynomial, const uint8_t *data, uint32_t length);

#endif  // CRYPTO_LIB_H