/*
 * SecureBoot.h
 *
 *  Created on: 2026-03-16
 *      Author: TraeAI
 */

#ifndef SECUREBOOT_H_
#define SECUREBOOT_H_

#include "Std_Types.h"

/* APP区域相关参数 */
#define APP_START_ADDRESS       (0x00000000)  /* 示例值，待实际定义 */
#define APP_SIZE                (0x00100000)  /* 示例值，待实际定义 */
#define APP_EXPECTED_HASH_ADDR  (0x00200000)  /* 示例值，待实际定义 */

/* 安全启动返回值 */
typedef enum {
    SECURE_BOOT_SUCCESS = 0,
    SECURE_BOOT_VERIFICATION_FAILED,
    SECURE_BOOT_ERROR
} SecureBoot_StatusType;

/* 函数声明 */
void SecureBoot_Init(void);
SecureBoot_StatusType SecureBoot_VerifyApp(void);
void SecureBoot_HandleVerificationFailure(void);
void SecureBoot_HandleVerificationSuccess(void);

#endif /* SECUREBOOT_H_ */
