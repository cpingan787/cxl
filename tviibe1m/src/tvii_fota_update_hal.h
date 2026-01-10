#ifndef __TVII_FOTA_UPDATE_HAL_H__ 
#define __TVII_FOTA_UPDATE_HAL_H__ 

#include "stdint.h"

//#define  INTEGRITY_DISNABLE 
#define CFLASH_BANK_ACTIVE_ADDRESS                      0x14017000     //存储运行Bank区标志地址
#define CFLASH_BANKA_APP_INTEGRITY_ADDRESS              0x14017100     //存储BankA区代码完整性标志
#define CFLASH_BANKB_APP_INTEGRITY_ADDRESS              0x14017200     //存储BankB区代码完整性标志
#define CFLASH_BANKB_CM0_INTEGRITY_ADDRESS              0x14017300     //存储BankB区CM0（BOOT）代码写入标志
#define CFLASH_BANKA_ACTIVE_FLAG 			            0xAAAAAAAA     //运行BankA区标志
#define CFLASH_BANKB_ACTIVE_FLAG 			            0xBBBBBBBB     //运行BankA区标志
#define CFLASH_BANK_APP_INTEGRITY_ENABLE                0x55AA5AA5     //Bank区代码完整性标志有效
#define CFLASH_BANK_APP_INTEGRITY_DISABLE               0x00000000     //Bank区代码完整性标志无效

//无论是在BankA还是B升级的时候另一个Bank的地址永远是这个，芯片底层已经做了映射                                                                                                      
#define CFLASH_BANKA_BASE_ADDRESS		                0x10000000     //BankA基地址
#define CFLASH_BANKA_CM4_START_ADDRESS	                0x10018000     //BankA CM4（APP） 起始地址
#define CFLASH_BANKA_CM4_END_ADDRESS	                0x10078000     //BankA CM4（APP） 结束地址
#define CFLASH_BANKB_BASE_ADDRESS		                0x12000000     //BankB基地址                
#define CFLASH_BANKB_CM4_START_ADDRESS	                0x12018000     //BankB CM4（APP） 起始地址 
#define CFLASH_BANKB_CM4_END_ADDRESS	                0x12078000     //BankB CM4（APP） 结束地址 
#define CFLASH_FLASH_DRIVER_START_ADDRESS	            0x02006000     //Flash 读写驱动地址
#define CFLASH_FLASH_DRIVER_END_ADDRESS	                0x02008000     //Flash 读写驱动地址



void FOTA_ProgramFlash(uint32_t TargetAddress, uint16_t SizeInbyte, uint32_t *RxBuf);
void FOTA_SectorEraseFlash(uint32_t FOTAEraseFrame);
void FOTA_ProgramWorkFlash(uint32_t address, uint32_t data);
void FOTA_EraseSectors(uint8_t type);
void FOTA_BankActiveFlagUpdate(uint8_t isBankB);
uint32_t FOTA_BankActiveFlagRead(void);
void FOTA_BankAPPIntegrityFlagUpdate(uint8_t flag);
uint32_t FOTA_BankAPPIntegrityFlagRead(uint8_t isBankB);
void FOTA_BankBCM0IntegrityFlagUpdate(uint8_t flag);
uint32_t FOTA_BankBCM0IntegrityFlagRead(void);
uint32_t crc32(uint32_t crc, void *input, int len);
void OtaCrc32Init(uint32_t* flashCrc32Value);
#endif



