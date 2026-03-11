#ifndef _FLASH_HAL_H_
#define _FLASH_HAL_H_

#include "stdint.h"

// 状态宏定义
#define FLASH_HAL_STATUS_OK                 (0)
#define FLASH_HAL_STATUS_ERR                (-1)

#define SUCC                                (0)
#define ERR                                 (1)

// ==============================================================================
// TODO: 以下宏定义必须根据你的 RH850 实际的 Flash 划分和链接脚本(Linker)进行修改！
// ==============================================================================
// 假设这是 AUTOSAR Fls 模块配置的基地址（通常是 Code Flash 的起始地址）
#define FLASH_BASE_ADDRESS                  (0x00000000UL) 

// Flash 扇区大小 (比如 RH850 Code Flash 可能是 8KB 或 32KB 一个扇区)
#define FLASH_SECTOR_SIZE                   (0x2000UL) // 假设 8KB，请确认

// APP 区域定义 (Bank A 和 Bank B)
#define FLASH_APP_BANKA_ID                  (1)
#define FLASH_APP_BANKB_ID                  (2)
#define FLASH_APP_DEFALT_BANK_ID            (0)

#define FLASH_APP_SINGLE_SIZE               (0x40000UL) // 假设单区大小 256KB
#define FLASH_APP_BANKA_ABSTRACT_ADDRESS    (0x00020000UL) // Bank A 起始地址
#define FLASH_APP_BANKB_ABSTRACT_ADDRESS    (0x00060000UL) // Bank B 起始地址

#define FLASH_APP_BANKA_CM4_BASE_ADDRESS    FLASH_APP_BANKA_ABSTRACT_ADDRESS // RH850 APP1 入口地址
#define FLASH_APP_BANKB_CM4_BASE_ADDRESS    FLASH_APP_BANKB_ABSTRACT_ADDRESS // RH850 APP2 入口地址

// 元数据 (MetaData) 区域定义 (可以放在 Data Flash 或者 Code Flash 独立扇区)
#define FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS  (0x000A0000UL) // 元数据 A 备份区地址
#define FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS  (0x000A2000UL) // 元数据 B 备份区地址

// APP 完整性标志位地址 (通常放在每个 Bank 的末尾，或者和元数据放一起)
#define FLASH_APP_BANKA_INTEGRITY_ADDRESS   (0x0005FFF0UL) 
#define FLASH_APP_BANKB_INTEGRITY_ADDRESS   (0x0009FFF0UL)

// 标志位魔术字 (Magic Word) 定义
#define FLASH_META_DATA_HEADER_END_FLAG     (0x5A5A5A5A)
#define FLASH_BOOT_JUMP_ACTIVE_FLAG         (0x11111111)
#define FLASH_BOOT_OTA_ACTIVE_FLAG          (0x22222222)
#define FLASH_BOOT_UDS_ACTIVE_FLAG          (0x33333333)

#define FLASH_APP_BANKA_ACTIVE_FLAG         (0xAAAAAAAA)
#define FLASH_APP_BANKB_ACTIVE_FLAG         (0xBBBBBBBB)

#define FLASH_BANK_APP_INTEGRITY_DISABLE    (0xFFFFFFFF)
#define FLASH_BANK_APP_INTEGRITY_ENABLE     (0x55555555)

// 返回状态类型
typedef uint8_t ResultStatus_t;

// // Flash 状态机类型
// typedef enum
// {
//     E_FlashState_Idle = 0,
//     E_FlashState_FlashIn,
//     E_FlashState_FlashErase,
//     E_FlashState_FlashWrite,
//     E_FlashState_Finish,
// } FlashState_e;

// 元数据结构体
typedef struct
{
    uint32_t m_metaDataHeaderFlag;
    uint32_t m_metaBootFlag;
    uint32_t m_metaAppFlag;
    uint32_t m_metaEndFlag;
} FlashHalMetaDataInfo_t;

// API 声明
int16_t FlashHalInit(void);
int16_t FlashHalRead(uint32_t addr, uint8_t *data, uint32_t size);
ResultStatus_t FlashHalFlexWrite(uint32_t address, uint32_t length, uint8_t *pWriteData);

int16_t FlashHalOtaFlashErase(uint8_t BankFlag);
int16_t FlashHalOtaFlashWrite(uint32_t writeAddress, volatile uint8_t *pData, uint32_t length);

ResultStatus_t FlashHalGetMetaDataInfo(FlashHalMetaDataInfo_t *pMetaData);
ResultStatus_t FlashHalWriteMetaDataInfo(const FlashHalMetaDataInfo_t *pMetaData);

void FlashHalWriteApp1SuccessFlag(uint32_t flagValue);
void FlashHalWriteApp2SuccessFlag(uint32_t flagValue);

void FlashHalJumpToAppCheck(void);
uint8_t FlashHalGetEnterBootType(void);

#endif /* _FLASH_HAL_H_ */