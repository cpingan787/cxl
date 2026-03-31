/*
 * SignatureHeader.h
 *
 *  Created on: 2026-03-16
 *      Author: TraeAI
 */

#ifndef H_SIGNATURE_HEADER_H
#define H_SIGNATURE_HEADER_H

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

/* 签名头基地址定义，可根据实际需求修改 */
#define SIGNATURE_HEADER_BASE_ADDRESS 0x00000000

/* 模块标识符定义 */
#define SAIC_SPECIAL_IDENTIFIER 0xA1

/* Module类型定义 */
#define MODULE_TYPE_APPLICATION_SOFTWARE  0x01
#define MODULE_TYPE_NETWORK_CONFIG_DATA   0x90
#define MODULE_TYPE_CALIBRATION_DATA      0x02
#define MODULE_TYPE_SIGNATURE_BYPASS      0x91

/* 最大模块数量 */
#define MAX_MODULE_COUNT 10

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

/* 模块地址范围信息结构体 */
typedef struct {
    uint32_t startAddress;  /* 首地址信息 */
    uint32_t length;        /* 长度信息 */
} ModuleAddressInfoType;

/* 地址信息域结构体 */
typedef struct {
    uint16_t moduleCount;   /* 应用软件模块数量 */
    ModuleAddressInfoType moduleAddressInfo[]; /* 模块地址范围信息（柔性数组） */
} LocationInfoType;

/* 签名头数据结构体定义 */
typedef struct {
    /* 模块标识符，用于判断模块类型 */
    uint16_t ModuleID;      /* Byte1: SAIC特殊标识符(0xA1), Byte2: Module类型 */
    
    /* 防降级刷新标识符，当前为预留，默认填写0x0000 */
    uint16_t NBID;
    
    /* 应用软件存储空间信息，用于确认文件摘要计算区域 */
    LocationInfoType *pLocationInfo;

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
} SignatureHeaderType;

/* 全局变量声明，用于指向存储应用软件签名头文件参数 */
extern SignatureHeaderType *g_pSignatureHeader;

/* 辅助函数声明 */

/**
 * @brief 计算签名头所需的总内存大小
 * @param moduleCount 模块数量
 * @return 总内存大小（字节）
 */
size_t SignatureHeader_CalculateSize(uint16_t moduleCount);

/**
 * @brief 初始化签名头结构体
 * @param moduleCount 模块数量
 * @return 初始化后的签名头指针，失败返回NULL
 */
SignatureHeaderType *SignatureHeader_Init(uint16_t moduleCount);

/**
 * @brief 销毁签名头结构体（释放内存）
 * @param pHeader 签名头指针
 */
void SignatureHeader_Destroy(SignatureHeaderType *pHeader);

/**
 * @brief 从指定内存地址加载签名头
 * @param address 内存地址
 * @return 加载后的签名头指针，失败返回NULL
 */
SignatureHeaderType *SignatureHeader_LoadFromAddress(uint32_t address);

/**
 * @brief 将签名头写入指定内存地址
 * @param pHeader 签名头指针
 * @param address 内存地址
 * @return 成功返回true，失败返回false
 */
bool SignatureHeader_WriteToAddress(SignatureHeaderType *pHeader, uint32_t address);

/**
 * @brief 验证签名头指针的有效性
 * @param pHeader 签名头指针
 * @return 有效返回true，无效返回false
 */
bool SignatureHeader_IsValid(SignatureHeaderType *pHeader);

#endif /* H_SIGNATURE_HEADER_H */
