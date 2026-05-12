/*
 * SecureBoot.c
 *
 *  Created on: 2026-03-16
 *      Author: CaoLiang
 */

#include "SecureBoot.h"
#include "Vss_Cfg.h"
#include "EEIf.h"
#include "MemM_cfg.h"
#include "SecureProgram.h"

SecureBoot_StatusType SecureBootCurrentStatus = 0xFF;

/* 安全启动初始化 */
void SecureBoot_Init(void)
{
    SecureBoot_StatusType bootStatus = 0xFF;
    SecureBoot_StatusType currentStatus = 0xFF;

    /* 初始化VSS加密模块 */
    bootStatus = Vss_InitConfig();
    
    /* 验证APP区域 */
    if(bootStatus == SECURE_BOOT_SUCCESS)
    {
        bootStatus = SecureBoot_VerifyApp();
    }
    
    //添加写保护，当EE中的值需要更新时，才写入EE
    if(EEIf_Read(DID_AFF5_ADDR_IDX, DID_AFF5_LEN, (uint8_t *)&currentStatus) == E_OK)
    {
        if(currentStatus != bootStatus)
        {
            EEIf_Write(DID_AFF5_ADDR_IDX, DID_AFF5_LEN, (uint8_t *)&bootStatus);
        }
    }
    else
    {
        //EE中没有写入值，直接写入bootStatus
        EEIf_Write(DID_AFF5_ADDR_IDX, DID_AFF5_LEN, (uint8_t *)&bootStatus);
    }
    
    SecureBootCurrentStatus = bootStatus;
}

/*************************************************
 Function: SecureBoot_VerifyApp
 Description: 验证APP区域的完整性
 Input:  None
 Output: None
 Return: SECURE_BOOT_SUCCESS - 验证成功
         SECURE_BOOT_VERIFICATION_FAILED - 验证失败
         SECURE_BOOT_ERROR - 其他错误
 Others:
*************************************************/
SecureBoot_StatusType SecureBoot_VerifyApp(void)
{
    SecureBoot_StatusType status = SECURE_BOOT_SUCCESS;
    uint32_t ret = VSS_RET_SUCCESS;
    uint8_t signature[32];  /* SM2签名数据 */
    uint8_t signature_len = 32;  /* 签名数据长度 */
    
    ret = SignatureHeader_Init();
    if(ret != VSS_RET_SUCCESS)
    {
        status = SECURE_BOOT_ERROR;
        return status;
    }

    ret = SecureProgram_ValidateFileDigest();
    
    /* 处理验签结果 */
    if (ret != SECURE_PROGRAM_SUCCESS) {
        switch (ret) {
            case SECURE_PROGRAM_ERROR_NULL_POINTER:
            case SECURE_PROGRAM_ERROR_INVALID_FORMAT:
                status = SECURE_BOOT_APP_MAC_EMPTY;
                break;
            case SECURE_PROGRAM_ERROR_INVALID_SIGNATURE:
            case SECURE_PROGRAM_ERROR_CRYPTO_OPERATION:
                status = SECURE_BOOT_APP_MAC_VERIFY_FAILED;
                break;
            default:
                status = SECURE_BOOT_ERROR;
                break;
        }
    }
    
    return status;
}
