/*
 * SignatureHeader.h
 *
 *  Created on: 2026-03-16
 *      Author: CaoLiang
 */

#ifndef H_SIGNATURE_HEADER_H
#define H_SIGNATURE_HEADER_H

#include <stdint.h>
#include "Std_Types.h"

/* 签名信息域结构体 */
typedef struct {
    uint8_t certificateFormat;    /* 证书格式，默认填写0x20 */
    uint8_t productModuleNumber[8];  /* 产品模块编号，默认填完全0 */
    uint8_t customParameters[16];    /* 自定义参数，默认填完全0 */
    uint8_t certificateExpiryDate[3]; /* 证书失效日期，YYMMDD格式 */
    uint32_t certificateSerialNumber; /* 证书序列号 */
    uint8_t signatureAlgorithm;   /* 签名算法标识 */
    uint8_t publicKeyCurveParameter; /* 公钥的曲线参数 */
    uint8_t hashAlgorithm;        /* 哈希算法标识 */
    uint8_t rootKeyIndex;         /* 根公钥索引 */
    uint8_t signatureCertificatePublicKey[64]; /* 签名证书公钥 */
    uint8_t certificateSignature[64]; /* 证书签名 */
} SignerInfoType;

/* 签名头数据结构体定义 - 拆分为三个独立部分
 * 设计思路：
 * 1. 由于 moduleAddressInfo 是柔性数组，大小不确定，为了内存布局的灵活性和连续性，
 *    将原结构体拆分为三个独立部分：头部、可变数组和尾部
 * 2. 头部和尾部包含固定大小的数据成员，可变数组部分的大小由 moduleCount 参数确定
 * 3. 通过组合结构体管理三个部分的指针，确保它们指向连续的内存地址空间
 * 4. 内存布局：[头部][可变数组][尾部]，连续存储，提高内存访问效率
 */

/* 头部结构体：包含固定大小的数据成员 */
typedef struct {
    /* 模块标识符，用于判断模块类型 */
    uint16_t ModuleID;      /* Byte1: SAIC特殊标识符(0xA1), Byte2: Module类型 */
    
    /* 防降级刷新标识符，当前为预留，默认填写0x0000 */
    uint16_t NBID;

    /* 地址信息域结构体 -> 应用软件模块数量 */
    uint16_t moduleCount;   
} SignatureHeaderPrefixType;

/*可变数组部分：模块地址范围信息结构体*/
typedef struct {
    uint32_t startAddress;  /* 首地址信息 */
    uint32_t length;        /* 长度信息 */
} ModuleAddressInfoType;

/* 尾部结构体：包含固定大小的数据成员 */
typedef struct {
    /* 签名信息域即安全证书，由签名工具生成，包含签名证书公钥，用以计算签名头文件的签名 */
    SignerInfoType SignerInfoNational;
    
    /* 基于SM3算法的文件摘要，由签名工具计算生成 */
    uint8_t MessageDigestNational[32];
    
    /* 将以上信息通过SM2算法计算得到签名 */
    uint8_t SignatureNational[64];
    
    /* 签名信息域即安全证书，由签名工具生成，包含签名证书公钥，用以计算签名头文件的签名 */
    SignerInfoType SignerInfoInternational;
    
    /* 基于SHA256算法的文件摘要，由签名工具计算生成 */
    uint8_t MessageDigestInternational[32];
    
    /* 将以上信息通过ECC算法计算得到签名 */
    uint8_t SignatureInternational[64];
} SignatureHeaderSuffixType;

/* 组合结构体：包含三个独立结构体的指针成员
 * 注意：三个指针指向连续的内存空间，具体布局如下：
 * pPrefix -> [头部数据] -> pModuleAddressInfo -> [可变数组数据] -> pSuffix -> [尾部数据]
 */
typedef struct {
    /* 头部结构体指针 */
    SignatureHeaderPrefixType *pPrefix;
    
    /* 地址信息域结构体 -> 模块地址范围信息（柔性数组） */
    ModuleAddressInfoType *pModuleAddressInfo;
    
    /* 尾部结构体指针 */
    SignatureHeaderSuffixType *pSuffix;
} SignatureHeaderType;

/* 签名头起始地址 */
#define SIGNATURE_HEADER_START_ADDR ((uint32_t)0x00080200U)
#define SIGNATURE_HEADER_SIZE       (0x400U)

/* 签名信息域校验值计算长度 */
#define SIGNER_INFO_VALIDATION_LENGTH 100U

/* 最大模块数量 */
#define MAX_MODULE_COUNT 10U

/* 签名算法标识定义 */
#define SIGNATURE_ALGORITHM_SM2     0x04
#define SIGNATURE_ALGORITHM_ECC     0x01

/* 公钥曲线参数定义 */
#define CURVE_PARAMETER_SM2         0x11
#define CURVE_PARAMETER_SECP256R1   0x21

/* 哈希算法标识定义 */
#define HASH_ALGORITHM_SHA256       0x02
#define HASH_ALGORITHM_SM3          0x07

/* 模块标识符定义 */
#define SAIC_SPECIAL_IDENTIFIER 0xA1

/* Module类型定义 */
#define MODULE_TYPE_APPLICATION_SOFTWARE  0x01
#define MODULE_TYPE_NETWORK_CONFIG_DATA   0x90
#define MODULE_TYPE_CALIBRATION_DATA      0x02
#define MODULE_TYPE_SIGNATURE_BYPASS      0x91

/* 根公钥索引定义 */
#define ROOT_KEY_INDEX_TEST_INTERNATIONAL  0x10
#define ROOT_KEY_INDEX_TEST_NATIONAL       0x11
#define ROOT_KEY_INDEX_PROD_INTERNATIONAL  0x20
#define ROOT_KEY_INDEX_PROD_NATIONAL       0x21
#define ROOT_KEY_INDEX_DIAG_INTERNATIONAL  0x40
#define ROOT_KEY_INDEX_DIAG_NATIONAL       0x41

/* 错误码定义 */
#define SECURE_PROGRAM_SUCCESS             0x00  /* 操作成功 */
#define SECURE_PROGRAM_ERROR_NULL_POINTER  0x01  /* 空指针错误 - 当传入的指针为NULL时返回 */
#define SECURE_PROGRAM_ERROR_INVALID_FORMAT 0x02  /* 格式无效错误 - 当数据格式不符合要求时返回 */
#define SECURE_PROGRAM_ERROR_INVALID_TIMESTAMP 0x03  /* 时间戳无效错误 - 当时间戳过期或格式错误时返回 */
#define SECURE_PROGRAM_ERROR_INVALID_ALGORITHM 0x04  /* 算法无效错误 - 当使用不支持的算法时返回 */
#define SECURE_PROGRAM_ERROR_INVALID_SIGNATURE 0x05  /* 签名无效错误 - 当签名验证失败时返回 */
#define SECURE_PROGRAM_ERROR 0x06  /* 通用错误 - 当其他错误类型不适用时返回 */
#define SECURE_PROGRAM_ERROR_MEMORY_ALLOCATION 0x07  /* 内存分配错误 - 当内存分配失败时返回 */
#define SECURE_PROGRAM_ERROR_INVALID_ADDRESS 0x08  /* 无效地址错误 - 当地址超出有效范围时返回 */
#define SECURE_PROGRAM_ERROR_INVALID_LENGTH 0x09  /* 无效长度错误 - 当数据长度不符合要求时返回 */
#define SECURE_PROGRAM_ERROR_CRYPTO_OPERATION 0x0A  /* 加密操作错误 - 当加密/解密操作失败时返回 */
#define SECURE_PROGRAM_ERROR_MODULE_COUNT 0x0B  /* 模块数量错误 - 当模块数量超出限制时返回 */
#define SECURE_PROGRAM_ERROR_CERTIFICATE_EXPIRED 0x0C  /* 证书过期错误 - 当证书已过期时返回 */
#define SECURE_PROGRAM_ERROR_UNSUPPORTED_OPERATION 0x0D  /* 不支持的操作错误 - 当请求的操作不被支持时返回 */
#define SECURE_PROGRAM_ERROR_INTERNAL 0x0E  /* 内部错误 - 当发生内部系统错误时返回 */

/* 全局变量声明，用于指向存储应用软件签名头文件参数 */
extern SignatureHeaderType g_pSignatureHeader;

/* 存储 pModuleAddressInfo 占用的字节大小，用于后续空间大小的计算 */
extern uint32_t ModuleAddressInfoSize;

/**
 * @brief 密码类型标志位
 * @value 0xFF: 未初始化
 * @value 0x01: 使用国密算法(SM2/SM3)
 * @value 0x02: 使用国际密码算法(ECC/SHA256)
 */
extern uint8_t g_cryptoTypeFlag;

/**
 * @brief 初始化全局签名头结构体
 * @return 成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 */
uint8_t SignatureHeader_Init(void);

#endif /* H_SIGNATURE_HEADER_H */
