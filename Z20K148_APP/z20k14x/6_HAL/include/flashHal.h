/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name:       flashHal.h
 Author:          lei.wang
 Created Time:
 Description:     flash read and write , Upgrade interface
 Others:
*************************************************/
#ifndef _FLASH_HAL_H_
#define _FLASH_HAL_H_

/****************************** include ***************************************/
#include "stdint.h"
#include "common_drv.h"    

/****************************** Macro Definitions *****************************/
/* Simon Boot Debug */
#define FLASH_SECTOR_SIZE                               0X00002000    // For Flash Erase
#define FLASH_META_DATA_FLAG_SIZE                       0X00000004    // For meta data write
#define FLASH_WRITE_MINIMAM_SIZE                        0X00000010    // For Flash Write
#define FLASH_META_DATA_SINGLE_SIZE                     0x00008000    // For meta data dual bank

/* Region Memory Size */
#define FLASH_BOOT_TOTAL_SIZE                           0X00030000    // 64k * 3 = 192k 
#define FLASH_META_DATA_TOTAL_SIZE                      0X00010000    // 64k (for bootloader flag)
#define FLASH_APP_SINGLE_SIZE                           0X000C0000    // 1024k - (192k + 64k) = 768k
#define FLASH_RESERVE_REGION_SIZE                       0X00040000    // 256k (for reserve)

/* Region Start Address */
#define FLASH_BOOT_BASE_ADDRESS                         0X00000000    // zhixin flash start address
#define FLASH_META_DATA_BASE_ADDRESS                    (FLASH_BOOT_BASE_ADDRESS + FLASH_BOOT_TOTAL_SIZE)
#define FLASH_APP_BANKA_BASE_ADDRESS                    (FLASH_META_DATA_BASE_ADDRESS + FLASH_META_DATA_TOTAL_SIZE)
#define FLASH_APP_BANKA_INTEGRITY_ADDRESS               (FLASH_APP_BANKA_BASE_ADDRESS)
#define FLASH_APP_BANKA_ABSTRACT_ADDRESS                (FLASH_APP_BANKA_INTEGRITY_ADDRESS + FLASH_SECTOR_SIZE)
#define FLASH_APP_BANKA_CRC_VALUE_ADDRESS               (FLASH_APP_BANKA_ABSTRACT_ADDRESS)
#define FLASH_APP_BANKA_AES_VALUE_ADDRESS               (FLASH_APP_BANKA_CRC_VALUE_ADDRESS + FLASH_WRITE_MINIMAM_SIZE)
#define FLASH_APP_BANKA_CM4_BASE_ADDRESS                (FLASH_APP_BANKA_ABSTRACT_ADDRESS + FLASH_SECTOR_SIZE)
#define FLASH_APP_BANKB_BASE_ADDRESS                    (FLASH_APP_BANKA_BASE_ADDRESS + FLASH_APP_SINGLE_SIZE)
#define FLASH_APP_BANKB_INTEGRITY_ADDRESS               (FLASH_APP_BANKB_BASE_ADDRESS)
#define FLASH_APP_BANKB_ABSTRACT_ADDRESS                (FLASH_APP_BANKB_INTEGRITY_ADDRESS + FLASH_SECTOR_SIZE)
#define FLASH_APP_BANKB_CRC_VALUE_ADDRESS               (FLASH_APP_BANKB_ABSTRACT_ADDRESS)
#define FLASH_APP_BANKB_AES_VALUE_ADDRESS               (FLASH_APP_BANKB_CRC_VALUE_ADDRESS + FLASH_WRITE_MINIMAM_SIZE)
#define FLASH_APP_BANKB_CM4_BASE_ADDRESS                (FLASH_APP_BANKB_ABSTRACT_ADDRESS + FLASH_SECTOR_SIZE)
#define FLASH_RESERVE_REGION_BASE_ADDRESS               (FLASH_APP_BANKB_BASE_ADDRESS + FLASH_APP_SINGLE_SIZE)

/* Region End Address */
#define FLASH_BOOT_END_ADDRESS                          (FLASH_BOOT_BASE_ADDRESS + FLASH_BOOT_TOTAL_SIZE - 1)
#define FLASH_META_DATA_END_ADDRESS                     (FLASH_BOOT_END_ADDRESS + FLASH_META_DATA_TOTAL_SIZE)
#define FLASH_APP_BANKA_END_ADDRESS                     (FLASH_META_DATA_END_ADDRESS + FLASH_APP_SINGLE_SIZE)
#define FLASH_APP_BANKB_END_ADDRESS                     (FLASH_APP_BANKA_END_ADDRESS + FLASH_APP_SINGLE_SIZE)
#define FLASH_RESERVE_REGION_DATA_END_ADDRESS           (FLASH_APP_BANKB_END_ADDRESS + FLASH_RESERVE_REGION_SIZE)

/* Bootloader & App shared flag */
#define FLASH_BOOT_JUMP_ACTIVE_FLAG                     0x11111111     //jump App Flag
#define FLASH_BOOT_OTA_ACTIVE_FLAG                      0x11112222     //Mpu Ota Flag
#define FLASH_BOOT_UDS_ACTIVE_FLAG                      0x22221111     //UDS Ota Flag
#define FLASH_APP_BANKA_ACTIVE_FLAG                     0xAAAAAAAA     //Run BankA Flag
#define FLASH_APP_BANKB_ACTIVE_FLAG                     0xBBBBBBBB     //Run BankB Flag
#define FLASH_BANK_APP_INTEGRITY_ENABLE                 0x55AA5AA5     //Bank App Integrity Enable
#define FLASH_BANK_APP_INTEGRITY_DISABLE                0x00000000     //Bank App Integrity Disable
#define FLASH_META_DATA_HEADER_END_FLAG                 0x5A5A5A5A     //META DATA FLAG
#define FLASH_META_DATA_DEFAULT_VALUE                   0XFFFFFFFF     //Reserve Data 

/* Meta data detail address */
/* meta region A (for 16byte align) */
#define FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS      (FLASH_META_DATA_BASE_ADDRESS)
#define FLASH_META_DATA_IMAGEA_BOOT_FLAG_ADDRESS        (FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEA_APP_FLAG_ADDRESS         (FLASH_META_DATA_IMAGEA_BOOT_FLAG_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEA_APP1_INTEGRITY_ADDRESS   (FLASH_META_DATA_IMAGEA_APP_FLAG_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEA_APP2_INTEGRITY_ADDRESS   (FLASH_META_DATA_IMAGEA_APP1_INTEGRITY_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEA_RESERVE_DATA1_ADDRESS    (FLASH_META_DATA_IMAGEA_APP2_INTEGRITY_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEA_RESERVE_DATA2_ADDRESS    (FLASH_META_DATA_IMAGEA_RESERVE_DATA1_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEA_END_FLAG_ADDRESS         (FLASH_META_DATA_IMAGEA_RESERVE_DATA2_ADDRESS + FLASH_META_DATA_FLAG_SIZE)    

//meta region B
#define FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS      (FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS + FLASH_META_DATA_SINGLE_SIZE)
#define FLASH_META_DATA_IMAGEB_BOOT_FLAG_ADDRESS        (FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEB_APP_FLAG_ADDRESS         (FLASH_META_DATA_IMAGEB_BOOT_FLAG_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEB_APP1_INTEGRITY_ADDRESS   (FLASH_META_DATA_IMAGEB_APP_FLAG_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEB_APP2_INTEGRITY_ADDRESS   (FLASH_META_DATA_IMAGEB_APP1_INTEGRITY_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEB_RESERVE_DATA1_ADDRESS    (FLASH_META_DATA_IMAGEB_APP2_INTEGRITY_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEB_RESERVE_DATA2_ADDRESS    (FLASH_META_DATA_IMAGEB_RESERVE_DATA1_ADDRESS + FLASH_META_DATA_FLAG_SIZE)
#define FLASH_META_DATA_IMAGEB_END_FLAG_ADDRESS         (FLASH_META_DATA_IMAGEB_RESERVE_DATA2_ADDRESS + FLASH_META_DATA_FLAG_SIZE)   

/* ram region */
#define SRAM_START_ADDRESS                              (0x1FFE0000)
#define SRAM_END_ADDRESS                                (0x20020000)

/* bulid type */
#define BOOTLOADER                                      (0)
#define RELEASEAPP1                                     (1)
#define RELEASEAPP2                                     (2)
#define DEBUGAPP                                        (3)

/* return code */
#define FLASH_HAL_STATUS_OK     0   
#define FLASH_HAL_STATUS_ERR    -1   

/****************************** Type Definitions ******************************/
typedef struct
{
    uint32_t m_metaDataHeaderFlag;
    uint32_t m_metaBootFlag;
    uint32_t m_metaAppFlag;
    uint32_t m_metaEndFlag;
}FlashHalMetaDataInfo_t;

/****************************** Function Declarations *************************/
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
void FlashHalTestMain(void);
ResultStatus_t FlashHalGetMetaDataInfo(FlashHalMetaDataInfo_t *pMetaData);
ResultStatus_t FlashHalWriteMetaDataInfo(const FlashHalMetaDataInfo_t *pMetaData);
int16_t FlashHalRead(uint32_t addr, uint8_t *data, uint32_t size);
ResultStatus_t FlashHalOpenJtag(void);
ResultStatus_t FlashHalCloseJtag(void);
#endif