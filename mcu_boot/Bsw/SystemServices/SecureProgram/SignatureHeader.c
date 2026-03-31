/*
 * SignatureHeader.c
 *
 *  Created on: 2026-03-16
 *      Author: TraeAI
 */

#include "SignatureHeader.h"
#include <stdlib.h>
#include <string.h>

/* 全局变量定义 */
SignatureHeaderType *g_pSignatureHeader = NULL;

/**
 * @brief 计算签名头所需的总内存大小
 * @param moduleCount 模块数量
 * @return 总内存大小（字节）
 */
size_t SignatureHeader_CalculateSize(uint16_t moduleCount)
{
    size_t locationInfoSize = sizeof(LocationInfoType) + (sizeof(ModuleAddressInfoType) * moduleCount);
    size_t totalSize = sizeof(SignatureHeaderType) + locationInfoSize;
    return totalSize;
}

/**
 * @brief 初始化签名头结构体
 * @param moduleCount 模块数量
 * @return 初始化后的签名头指针，失败返回NULL
 */
SignatureHeaderType *SignatureHeader_Init(uint16_t moduleCount)
{
    if (moduleCount == 0) {
        return NULL;
    }
    
    /* 计算所需内存大小 */
    size_t locationInfoSize = sizeof(LocationInfoType) + (sizeof(ModuleAddressInfoType) * moduleCount);
    
    /* 分配签名头内存 */
    SignatureHeaderType *pHeader = (SignatureHeaderType *)malloc(sizeof(SignatureHeaderType));
    if (pHeader == NULL) {
        return NULL;
    }
    
    /* 分配 LocationInfo 内存 */
    pHeader->pLocationInfo = (LocationInfoType *)malloc(locationInfoSize);
    if (pHeader->pLocationInfo == NULL) {
        free(pHeader);
        return NULL;
    }
    
    /* 初始化签名头字段 */
    pHeader->ModuleID = (SAIC_SPECIAL_IDENTIFIER << 8) | MODULE_TYPE_APPLICATION_SOFTWARE;
    pHeader->NBID = 0x0000;
    
    /* 初始化 LocationInfo */
    pHeader->pLocationInfo->moduleCount = moduleCount;
    memset(pHeader->pLocationInfo->moduleAddressInfo, 0, sizeof(ModuleAddressInfoType) * moduleCount);
    
    /* 初始化签名信息域 */
    memset(&pHeader->SignerInfoNational, 0, sizeof(SignerInfoType));
    pHeader->SignerInfoNational.certificateFormat = 0x20;
    
    memset(&pHeader->SignerInfoInternational, 0, sizeof(SignerInfoType));
    pHeader->SignerInfoInternational.certificateFormat = 0x20;
    
    /* 初始化文件摘要 */
    memset(pHeader->MessageDigestNational, 0, 32);
    memset(pHeader->MessageDigestInternational, 0, 32);
    
    /* 初始化签名 */
    memset(pHeader->SignatureNational, 0, 64);
    memset(pHeader->SignatureInternational, 0, 64);
    
    return pHeader;
}

/**
 * @brief 销毁签名头结构体（释放内存）
 * @param pHeader 签名头指针
 */
void SignatureHeader_Destroy(SignatureHeaderType *pHeader)
{
    if (pHeader != NULL) {
        if (pHeader->pLocationInfo != NULL) {
            free(pHeader->pLocationInfo);
        }
        free(pHeader);
    }
}

/**
 * @brief 从指定内存地址加载签名头
 * @param address 内存地址
 * @return 加载后的签名头指针，失败返回NULL
 */
SignatureHeaderType *SignatureHeader_LoadFromAddress(uint32_t address)
{
    /* 从指定地址读取签名头基本信息 */
    SignatureHeaderType *pHeader = (SignatureHeaderType *)malloc(sizeof(SignatureHeaderType));
    if (pHeader == NULL) {
        return NULL;
    }
    
    /* 读取基本字段 */
    pHeader->ModuleID = *((uint16_t *)address);
    pHeader->NBID = *((uint16_t *)(address + 2));
    
    /* 读取 LocationInfo 模块数量 */
    uint16_t moduleCount = *((uint16_t *)(address + 4));
    if (moduleCount == 0) {
        free(pHeader);
        return NULL;
    }
    
    /* 计算 LocationInfo 大小并分配内存 */
    size_t locationInfoSize = sizeof(LocationInfoType) + (sizeof(ModuleAddressInfoType) * moduleCount);
    pHeader->pLocationInfo = (LocationInfoType *)malloc(locationInfoSize);
    if (pHeader->pLocationInfo == NULL) {
        free(pHeader);
        return NULL;
    }
    
    /* 读取 LocationInfo 数据 */
    memcpy(pHeader->pLocationInfo, (void *)(address + 4), locationInfoSize);
    
    /* 计算签名信息域的起始地址 */
    uint32_t signerInfoAddr = address + 4 + locationInfoSize;
    
    /* 读取签名信息域 */
    memcpy(&pHeader->SignerInfoNational, (void *)signerInfoAddr, sizeof(SignerInfoType));
    
    /* 读取文件摘要和签名 */
    uint32_t digestAddr = signerInfoAddr + sizeof(SignerInfoType);
    memcpy(pHeader->MessageDigestNational, (void *)digestAddr, 32);
    
    uint32_t signatureAddr = digestAddr + 32;
    memcpy(pHeader->SignatureNational, (void *)signatureAddr, 64);
    
    uint32_t internationalAddr = signatureAddr + 64;
    memcpy(&pHeader->SignerInfoInternational, (void *)internationalAddr, sizeof(SignerInfoType));
    
    uint32_t internationalDigestAddr = internationalAddr + sizeof(SignerInfoType);
    memcpy(pHeader->MessageDigestInternational, (void *)internationalDigestAddr, 32);
    
    uint32_t internationalSignatureAddr = internationalDigestAddr + 32;
    memcpy(pHeader->SignatureInternational, (void *)internationalSignatureAddr, 64);
    
    return pHeader;
}

/**
 * @brief 将签名头写入指定内存地址
 * @param pHeader 签名头指针
 * @param address 内存地址
 * @return 成功返回true，失败返回false
 */
bool SignatureHeader_WriteToAddress(SignatureHeaderType *pHeader, uint32_t address)
{
    if (pHeader == NULL || pHeader->pLocationInfo == NULL) {
        return false;
    }
    
    if (pHeader->pLocationInfo->moduleCount == 0) {
        return false;
    }
    
    /* 计算 LocationInfo 大小 */
    size_t locationInfoSize = sizeof(LocationInfoType) + (sizeof(ModuleAddressInfoType) * pHeader->pLocationInfo->moduleCount);
    
    /* 写入基本字段 */
    *((uint16_t *)address) = pHeader->ModuleID;
    *((uint16_t *)(address + 2)) = pHeader->NBID;
    
    /* 写入 LocationInfo */
    memcpy((void *)(address + 4), pHeader->pLocationInfo, locationInfoSize);
    
    /* 计算签名信息域的起始地址 */
    uint32_t signerInfoAddr = address + 4 + locationInfoSize;
    
    /* 写入签名信息域 */
    memcpy((void *)signerInfoAddr, &pHeader->SignerInfoNational, sizeof(SignerInfoType));
    
    /* 写入文件摘要和签名 */
    uint32_t digestAddr = signerInfoAddr + sizeof(SignerInfoType);
    memcpy((void *)digestAddr, pHeader->MessageDigestNational, 32);
    
    uint32_t signatureAddr = digestAddr + 32;
    memcpy((void *)signatureAddr, pHeader->SignatureNational, 64);
    
    uint32_t internationalAddr = signatureAddr + 64;
    memcpy((void *)internationalAddr, &pHeader->SignerInfoInternational, sizeof(SignerInfoType));
    
    uint32_t internationalDigestAddr = internationalAddr + sizeof(SignerInfoType);
    memcpy((void *)internationalDigestAddr, pHeader->MessageDigestInternational, 32);
    
    uint32_t internationalSignatureAddr = internationalDigestAddr + 32;
    memcpy((void *)internationalSignatureAddr, pHeader->SignatureInternational, 64);
    
    return true;
}

/**
 * @brief 验证签名头指针的有效性
 * @param pHeader 签名头指针
 * @return 有效返回true，无效返回false
 */
bool SignatureHeader_IsValid(SignatureHeaderType *pHeader)
{
    if (pHeader == NULL) {
        return false;
    }
    
    if (pHeader->pLocationInfo == NULL) {
        return false;
    }
    
    if (pHeader->pLocationInfo->moduleCount == 0) {
        return false;
    }
    
    /* 验证模块标识符 */
    uint8_t specialId = (pHeader->ModuleID >> 8) & 0xFF;
    if (specialId != SAIC_SPECIAL_IDENTIFIER) {
        return false;
    }
    
    return true;
}
