/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       flashHal
  Author:          lei.wang
  Created Time:    2024
  Description:     flash read and write , Upgrade interface
   Others:      // 其它说明
*************************************************/
#ifndef _FLASH_HAL_H_
#define _FLASH_HAL_H_

#include "stdint.h"

#define CFLASH_BANK_ACTIVE_ADDRESS                      0x14017000     //存储运行Bank区标志地址
#define CFLASH_BANKA_APP_INTEGRITY_ADDRESS              0x14017100     //存储BankA区代码完整性标志
#define CFLASH_BANKB_APP_INTEGRITY_ADDRESS              0x14017200     //存储BankB区代码完整性标志
#define CFLASH_BANKB_CM0_INTEGRITY_ADDRESS              0x14017300     //存储BankB区CM0（BOOT）代码写入标志
#define CFLASH_BANKA_ACTIVE_FLAG                        0xAAAAAAAA     //运行BankA区标志
#define CFLASH_BANKB_ACTIVE_FLAG                        0xBBBBBBBB     //运行BankA区标志
#define CFLASH_BANK_APP_INTEGRITY_ENABLE                0x55AA5AA5     //Bank区代码完整性标志有效
#define CFLASH_BANK_APP_INTEGRITY_DISABLE               0x00000000     //Bank区代码完整性标志无效

//无论是在BankA还是B升级的时候另一个Bank的地址永远是这个，芯片底层已经做了映射                                                                                                      
#define CFLASH_BANKA_BASE_ADDRESS                       0x10000000     //BankA基地址
#define CFLASH_BANKA_CM4_START_ADDRESS	                0x10018000     //BankA CM4（APP） 起始地址
#define CFLASH_BANKA_CM4_END_ADDRESS	                0x10078000     //BankA CM4（APP） 结束地址
#define CFLASH_BANKB_BASE_ADDRESS                       0x12000000     //BankB基地址                
#define CFLASH_BANKB_CM4_START_ADDRESS	                0x12018000     //BankB CM4（APP） 起始地址 
#define CFLASH_BANKB_CM4_END_ADDRESS	                0x12078000     //BankB CM4（APP） 结束地址 
#define CFLASH_FLASH_DRIVER_START_ADDRESS               0x02006000     //Flash 读写驱动地址
#define CFLASH_FLASH_DRIVER_END_ADDRESS	                0x02008000     //Flash 读写驱动地址



#define FLASH_HAL_STATUS_OK     0     //返回成功
#define FLASH_HAL_STATUS_ERR    -1    //返回失败



/*************************************************
  Function:       FlashHalInit
  Description:    flash moudle init API
  Input:          无
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalInit();

/*************************************************
  Function:       FlashHalDataBlockWrite
  Description:    flash block write . block size 2048 byte
  Input:          blockAddress ： block address
                  writeOffset ：offset address
                  pWriteData：The data to be written to flash
                  writeLength：data lenth
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalDataBlockWrite(uint32_t blockAddress,uint32_t writeOffset,const uint8_t *pWriteData,uint32_t writeLength);

/*************************************************
  Function:       FlashHalSmallDataBlockWrite
  Description:    flash small block write
  Input:          /blockAddress ： block address
                  writeOffset ：offset address
                  pWriteData：The data to be written to flash
                  writeLength：data lenth
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:        
*************************************************/
int16_t FlashHalSmallDataBlockWrite(uint32_t blockAddress,uint32_t writeOffset,const uint8_t *pWriteData,uint32_t writeLength);
int16_t FlashHalSmallDataBlockErase(uint32_t blockAddress);
/*************************************************
  Function:       FlashHalDataBlockRead
  Description:    flash block  read
  Input:          blockAddress:  block address
                  readOffset:  offset address
                  pReadData:   The data from flash read
                  pReadLength:  read lenth
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength);

/*************************************************
  Function:       FlashHalSmallDataBlockRead
  Description:    flash  small block  read
  Input:          blockAddress:  block address
                  readOffset:  offset address
                  pReadData:   The data from flash read
                  pReadLength:  read lenth
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalSmallDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength);



/*************************************************
  Function:       FlashHalWriteBootFlag
  Description:    在flash中写入boot启动标记
  Input:          flagValue：写入的标记
  Output:         
  Return:         
  Others:         
*************************************************/
void FlashHalWriteBootFlag(uint32_t flagValue);

/*************************************************
  Function:       FlashHalReadBootFlag
  Description:    读取flash中的boot启动标记
  Input:          
  Output:         flash中的boot启动标记
  Return:         
  Others:        
*************************************************/
uint32_t FlashHalReadBootFlag(void);

/*************************************************
  Function:       FlashHalOtaFlashWrite
  Description:     flash code 数据写入，用于升级
  Input:          writeAddress：写入地址
                  pData：写入数据
                  length：写入数据长度
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others: 
*************************************************/
int16_t FlashHalOtaFlashWrite(uint32_t writeAddress,const uint8_t *pData,uint32_t length);

/*************************************************
  Function:       FlashHalOtaFlashErase
  Description:    flash code区擦除
  Input:          BankFlag ：code区标记 
                  0：A分区  1：B分区
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:
*************************************************/
int16_t FlashHalOtaFlashErase(uint8_t BankFlag);

void FlashHalOtaIntegrityFlagUpdate(uint8_t flag);

/*************************************************
  Function:       FlashHalOtaSetActiveBank
  Description:    设置活动的code 分区
  Input:          BankFlag ：code 分区标记 
                  0：A分区  1：B分区
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:
*************************************************/
int16_t FlashHalOtaSetActiveBank(uint8_t BankFlag);

/*************************************************
  Function:       FlashHalOtaGetActiveBank
  Description:    获取当前活动code 分区
  Input:
  Output:         当前活动code 分区标记
  Return:         0：A分区  1：B分区
  Others: 
*************************************************/
uint8_t FlashHalOtaGetActiveBank(void);

/*************************************************
  Function:       FlashHalOtaSetBankSuccessFlag
  Description:    设置启动分区是否成功标记
  Input:          BankFlag：code分区标记 0：A分区  1：B分区
  Output:         返回成功标记
  Return:         /成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:
*************************************************/
int16_t FlashHalOtaSetBankSuccessFlag(uint8_t BankFlag,uint8_t successFlag);

#endif