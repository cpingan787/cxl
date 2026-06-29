/*
 * SecureBoot.h
 *
 *  Created on: 2026-03-16
 *      Author: CaoLiang
 */

#ifndef SECUREBOOT_H_
#define SECUREBOOT_H_

#include "Std_Types.h"
#include <stdint.h>

/* APP区域相关参数 */
#define APP_START_ADDRESS       (0x00080600UL)  
#define APP_SIZE                (0x000AD020UL)  //app大小需根据实际情况浮动
#define APP_EXPECTED_HASH_ADDR  (0x00200000UL) 

/* 安全启动返回值 */
typedef enum {
    SECURE_BOOT_SUCCESS = 0,
    SECURE_BOOT_VSS_INIT_FAILURE = 0x18, //VSS模块初始化失败
    SECURE_BOOT_APP_MAC_VERIFY_FAILED = 0x20, //应用程序 MAC 比对失败
    SECURE_BOOT_APP_MAC_KEY_EMPTY = 0x21, //应用程序 MAC Key 为空
    SECURE_BOOT_APP_MAC_EMPTY = 0x22, //应用程序 MAC 为空
    SECURE_BOOT_ERROR = 0x2F, //错误
} SecureBoot_StatusType;

/* 全局变量 */
extern SecureBoot_StatusType SecureBootCurrentStatus;

/* 函数声明 */
void SecureBoot_Init(void);
SecureBoot_StatusType SecureBoot_VerifyApp(void);

#endif /* SECUREBOOT_H_ */
