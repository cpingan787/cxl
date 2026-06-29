/*
 * SecureProgram.h
 *
 *  Created on: 2026-03-16
 *      Author: CaoLiang
 */

#ifndef SECURE_PROGRAM_H
#define SECURE_PROGRAM_H

#include <stdint.h>
#include "SignatureHeader.h"

/**
 * @brief 校验文件摘要
 * @param startAddress 起始地址
 * @param dataLength 数据长度
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 根据g_cryptoTypeFlag选择使用国密算法或国际密码算法进行校验
 */
uint8_t SecureProgram_ValidateFileDigest(void);

/**
 * @brief 检查编程完整性
 * @return 验证结果，成功返回SECURE_PROGRAM_SUCCESS，失败返回相应错误码
 * @note 函数会检查签名头有效性、签名信息域验证以及文件摘要验证
 */
uint8_t SecureProgram_CheckProgrammingIntegrity(void);

#endif /* SECURE_PROGRAM_H */