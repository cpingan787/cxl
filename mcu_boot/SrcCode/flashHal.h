/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       flashHal
  Author:          lei.wang
  Created Time:    2024
  Description:     Flash read and write, upgrade interface
   Others:         // Other notes
*************************************************/
#ifndef _FLASH_HAL_H_
#define _FLASH_HAL_H_
typedef enum
{
    SUCC = 0U,
    ERR = 1U,
    BUSY = 2U
}ResultStatus_t;
#include "stdint.h"
//#include "common_drv.h"	
/************************************Simon Boot Debug*****************************************************/
//update type
//#define OTA_ON_CAN_UPDATE
#define OTA_ON_UART_UPDATE

//memeory config
#define FLASH_SECTOR_SIZE                               0X00002000    //For Flash Erase
#define FLASH_META_DATA_FLAG_SIZE                       0X00000004    //For meta data write
#define FLASH_WRITE_MINIMAM_SIZE                        0X00000010    //For Flash Write
#define FLASH_META_DATA_SINGLE_SIZE                     0x00008000    //For meta data dual bank

//Region Memory Size
#define FLASH_BOOT_TOTAL_SIZE                           0X00030000    //64k * 3 = 192k 
#define FLASH_META_DATA_TOTAL_SIZE                      0X00010000    //64k (for bootloader flag)
#define FLASH_APP_SINGLE_SIZE                           0X000C0000    //1024k - (192k + 64k) = 768k
#define FLASH_RESERVE_REGION_SIZE                       0X00040000    //256k (for reserve)

//Region Start Address
#define FLASH_BOOT_BASE_ADDRESS                         0X00000000    //zhixin flash start address
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

//Region End Address
#define FLASH_BOOT_END_ADDRESS                          (FLASH_BOOT_BASE_ADDRESS + FLASH_BOOT_TOTAL_SIZE - 1)
#define FLASH_META_DATA_END_ADDRESS                     (FLASH_BOOT_END_ADDRESS + FLASH_META_DATA_TOTAL_SIZE)
#define FLASH_APP_BANKA_END_ADDRESS                     (FLASH_META_DATA_END_ADDRESS + FLASH_APP_SINGLE_SIZE)
#define FLASH_APP_BANKB_END_ADDRESS                     (FLASH_APP_BANKA_END_ADDRESS + FLASH_APP_SINGLE_SIZE)
#define FLASH_RESERVE_REGION_DATA_END_ADDRESS           (FLASH_APP_BANKB_END_ADDRESS + FLASH_RESERVE_REGION_SIZE)

//Bootloader & App shared flag
#define FLASH_BOOT_JUMP_ACTIVE_FLAG                     0x11111111     //jump App Flag
#define FLASH_BOOT_OTA_ACTIVE_FLAG                      0x11112222     //Mpu Ota Flag
#define FLASH_BOOT_UDS_ACTIVE_FLAG                      0x22221111     //UDS Ota Flag
#define FLASH_APP_BANKA_ACTIVE_FLAG                     0xAAAAAAAA     //Run BankA Flag
#define FLASH_APP_BANKB_ACTIVE_FLAG                     0xBBBBBBBB     //Run BankB Flag
#define FLASH_BANK_APP_INTEGRITY_ENABLE                 0x55AA5AA5     //Bank App Integrity Enable
#define FLASH_BANK_APP_INTEGRITY_DISABLE                0x00000000     //Bank App Integrity Disable
#define FLASH_META_DATA_HEADER_END_FLAG                 0x5A5A5A5A     //META DATA FLAG
#define FLASH_META_DATA_DEFAULT_VALUE                   0XFFFFFFFF     //Reserve Data 

//Meta data detail address
//meta region A (for 16byte align)
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

//ram region
#define SRAM_START_ADDRESS                              (0x1FFE0000)
#define SRAM_END_ADDRESS                                (0x20020000)

//flash hal status
#define FLASH_HAL_STATUS_OK                             (0)    
#define FLASH_HAL_STATUS_ERR                            (-1)    

//bank id
#define FLASH_APP_BANKA_ID                              (1)    
#define FLASH_APP_BANKB_ID                              (2) 
#define FLASH_APP_DEFALT_BANK_ID                        (0)
//flash init cnt
#define FLASH_INIT_CNT                                  (3)
typedef struct
{
    uint32_t m_metaDataHeaderFlag;
    uint32_t m_metaBootFlag;
    uint32_t m_metaAppFlag;
    uint32_t m_metaEndFlag;
}FlashHalMetaDataInfo_t;

/*************************************************
  Function:       FlashHalInit
  Description:    Flash module initialization API
  Input:          None
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalInit();

/*************************************************
  Function:       FlashHalDataBlockWrite
  Description:    Flash block write. Block size 2048 bytes
  Input:          blockAddress: Block address
                  writeOffset: Offset address
                  pWriteData: The data to be written to flash
                  writeLength: Data length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalDataBlockWrite(uint32_t blockAddress,uint32_t writeOffset,const uint8_t *pWriteData,uint32_t writeLength);

/*************************************************
  Function:       FlashHalSmallDataBlockWrite
  Description:    Flash small block write
  Input:          blockAddress: Block address
                  writeOffset: Offset address
                  pWriteData: The data to be written to flash
                  writeLength: Data length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:        
*************************************************/
int16_t FlashHalSmallDataBlockWrite(uint32_t blockAddress,uint32_t writeOffset,const uint8_t *pWriteData,uint32_t writeLength);

/*************************************************
  Function:       FlashHalDataBlockRead
  Description:    Flash block read
  Input:          blockAddress: Block address
                  readOffset: Offset address
                  pReadData: The buffer to store read data
                  pReadLength: Read data length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength);

/*************************************************
  Function:       FlashHalSmallDataBlockRead
  Description:    Flash small block read
  Input:          blockAddress: Block address
                  readOffset: Offset address
                  pReadData: The buffer to store read data
                  pReadLength: Read data length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalSmallDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength);

/*************************************************
  Function:       FlashHalOtaFlashWrite
  Description:    Flash code area data write for firmware upgrade
  Input:          writeAddress: Target write address
                  pData: Data to be written
                  length: Length of data to be written
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others: 
*************************************************/
int16_t FlashHalOtaFlashWrite(uint32_t writeAddress,volatile uint8_t *pData,uint32_t length);

/*************************************************
  Function:       FlashHalOtaFlashErase
  Description:    Flash code area erase
  Input:          BankFlag: Code area flag
                  0: Bank A  1: Bank B
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:
*************************************************/
int16_t FlashHalOtaFlashErase(uint8_t BankFlag);

/*************************************************
  Function:       FlashHalWriteApp1SuccessFlag
  Description:    Write application 1 success flag to Flash
  Input:          flagValue: Flag value to be written (4-byte)
  Output:         None
  Return:         None
  Others:         This function directly uses FlashHalFlexWrite which automatically handles non-16-byte alignment
*************************************************/
void FlashHalWriteApp1SuccessFlag(uint32_t flagValue);

/*************************************************
  Function:       FlashHalWriteApp2SuccessFlag
  Description:    Write application 2 success flag to Flash
  Input:          flagValue: Flag value to be written (4-byte)
  Output:         None
  Return:         None
  Others:         This function directly uses FlashHalFlexWrite which automatically handles non-16-byte alignment
*************************************************/
void FlashHalWriteApp2SuccessFlag(uint32_t flagValue);

/*************************************************
  Function:       FlashHalReadApp2SuccessFlag
  Description:    Read application 2 success flag from Flash
  Input:          None
  Output:         None
  Return:         Flag value read from Flash (4-byte)
  Others:         
*************************************************/
static uint32_t FlashHalReadApp2SuccessFlag(void);

/*************************************************
  Function:       FlashHalReadApp1SuccessFlag
  Description:    Read application 1 success flag from Flash
  Input:          None
  Output:         None
  Return:         Flag value read from Flash (4-byte)
  Others:         
*************************************************/
static uint32_t FlashHalReadApp1SuccessFlag(void);

/*************************************************
  Function:       FlashHalJumpToAppCheck
  Description:    Check conditions and jump to application if applicable
  Input:          None
  Output:         None
  Return:         None
  Others:         
*************************************************/
void FlashHalJumpToAppCheck(void);

/*************************************************
  Function:       FlashHalTestMain
  Description:    Main function for flash HAL testing
  Input:          None
  Output:         None
  Return:         None
  Others:         
*************************************************/
void FlashHalTestMain(void);

/*************************************************
  Function:       FlashHalGetEnterBootType
  Description:    Get the reason for entering bootloader mode
  Input:          None
  Output:         None
  Return:         Bootloader entry type (0-255)
  Others:         
*************************************************/
uint8_t FlashHalGetEnterBootType(void);

/*************************************************
  Function:       FlashHalRead
  Description:    Generic Flash read function
  Input:          addr: Target address to read
                  data: Buffer to store read data
                  size: Size of data to read (bytes)
  Output:         None
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalRead(uint32_t addr, uint8_t *data, uint32_t size);

/*************************************************
  Function:       FlashHalFlexWrite
  Description:    Flexible Flash write function with alignment handling
  Input:          address: Target address to write
                  length: Length of data to write
                  pWriteData: Data to be written
  Output:         None
  Return:         Success status code
  Others:         
*************************************************/
ResultStatus_t FlashHalFlexWrite(uint32_t address, uint32_t length, uint8_t *pWriteData);

/*************************************************
  Function:       FlashHalGetMetaDataInfo
  Description:    Get metadata information from Flash
  Input:          pMetaData: Pointer to structure to store metadata
  Output:         None
  Return:         Success status code
  Others:         
*************************************************/
ResultStatus_t FlashHalGetMetaDataInfo(FlashHalMetaDataInfo_t *pMetaData);

/*************************************************
  Function:       FlashHalWriteMetaDataInfo
  Description:    Write metadata information to Flash
  Input:          pMetaData: Pointer to metadata structure to write
  Output:         None
  Return:         Success status code
  Others:         
*************************************************/
ResultStatus_t FlashHalWriteMetaDataInfo(const FlashHalMetaDataInfo_t *pMetaData);

#endif