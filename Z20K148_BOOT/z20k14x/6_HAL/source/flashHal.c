#include "flashHal.h"
#include "logHal.h"
#include "string.h"
#include "peripheralHal.h"
#include "sysctrl_drv.h"    
#include "clock_drv.h"        
#include "flash_drv.h"        
#include "crc8_16_32.h"
#include "hsmHal.h"
#include "int_drv.h"

#define WORKFLASH_BASE_ADDRESS                    FLASH_DATA_BASE_ADDR
#define WORKFLASH_PARAMETER_ADDRESS_OFFSET      0
#define BOOT_CRC_CHECK
//#define BOOT_AES_CHECK
const static FlashHalMetaDataInfo_t g_flashHalMetaDataDefaultInfo = 
{
    .m_metaDataHeaderFlag      = FLASH_META_DATA_HEADER_END_FLAG,
    .m_metaBootFlag            = FLASH_BOOT_JUMP_ACTIVE_FLAG,
    .m_metaAppFlag             = FLASH_APP_BANKA_ACTIVE_FLAG,
    .m_metaEndFlag             = FLASH_META_DATA_HEADER_END_FLAG,
};

FLASH_CmdConfig_t g_stcFlashCmdExeConfig = 
{
    FLASH_CMD_ACT_WAIT,
    NULL
};

typedef union
{
  uint8_t u8Data[8192];
  uint32_t u32Data[2048];
}WorkFlashBuffer_u;
typedef void (*bootloaderFun)(void);

static uint8_t g_enterBootType;
static bootloaderFun JumpToApp;
static uint8_t g_flashHalSectorBuf[FLASH_SECTOR_SIZE];
static FlashHalMetaDataInfo_t g_flashHalMetaDataInfo;
static WorkFlashBuffer_u g_workFlashBuffer;
#ifdef BOOT_AES_CHECK
static const uint8_t secureKey[16]={0x0f,0x15,0x71,0xc9,0x47,0xd9,0xe8,0x59,0x0c,0xb7,0xad,0xd6,0xaf,0x7f,0x67,0x98};
#endif
extern uint32_t __vector_table;

/*************************************************
  Function:       FlashHalGetNewSectorNum
  Description:    Get new sector number for data storage
  Input:          FirstSectorAddress: Base address of the first sector
                  newSectorFlag: Pointer to store the new sector flag value
  Output:         newSectorFlag: Updated with the new flag value
  Return:         Selected sector number (0: First sector, 1: Second sector)
  Others:         FirstSectorAddress corresponds to the base address of a data section
*************************************************/
static uint8_t FlashHalGetNewSectorNum(uint32_t FirstSectorAddress,uint8_t *newSectorFlag)
{
    uint8_t newFlag;
    uint8_t sector0Flag;
    uint8_t sector1Flag;
    uint8_t selectSectorNum;
    
    sector0Flag = *((uint8_t *)(FLASH_DATA_BASE_ADDR+(FirstSectorAddress+8190)));
    sector1Flag = *((uint8_t *)(FLASH_DATA_BASE_ADDR+(FirstSectorAddress+8190+0x2000)));    
    if(sector0Flag==0xFF)//select sector0
    {
        selectSectorNum = 0;
        newFlag = 0;
    }
    else if(sector1Flag==0xFF)//select sector1
    {
        selectSectorNum = 1;
        newFlag = sector0Flag+1;        
    }
    else
    {
        if(sector0Flag<sector1Flag)
        {
            if(sector0Flag!=0)//select sector0
            {
                selectSectorNum = 0;
                newFlag = sector1Flag+1;
            }
            else//select sector1
            {
              if(sector1Flag!=1)
              {
                selectSectorNum = 1;
                newFlag = sector0Flag+1;                
              }
              else
              {
                selectSectorNum = 0;
                newFlag = sector1Flag+1;            
              }
            }
        }
        else
        {
          if(sector1Flag!=0)
          {
                selectSectorNum = 1;
                newFlag = sector0Flag+1;
          }
          else
          {
            if(sector0Flag!=1)
            {
              selectSectorNum = 0;
              newFlag = sector1Flag+1;
            }
            else
            {
                selectSectorNum = 1;
                newFlag = sector0Flag+1;       
            }
          }
        }
    }
    if(newFlag==0xFF)
    {
        newFlag = 0;
    } 
    *newSectorFlag = newFlag;
    return selectSectorNum;
}

/*************************************************
  Function:       FLASHTEST_CCIF_ISR
  Description:    FLASH Command Complete Interrupt Service Routine
  Input:          None
  Output:         None
  Return:         None
  Others:         Masks the FLASH CCIF interrupt
*************************************************/
void FLASHTEST_CCIF_ISR(void)
{
    FLASH_IntMask(FLASH_INT_CCIF, MASK);
}

/*************************************************
  Function:       FlashHalInit
  Description:    Flash module initialization API
  Input:          None
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalInit()
{
    uint8_t tryCnt = FLASH_INIT_CNT;

    do
    {
        FLASH_InstallCallBackFunc(FLASH_INT_CCIF, FLASHTEST_CCIF_ISR);
        INT_SetPriority(FLASH_CmdComplete_IRQn, 0x0);    
        INT_EnableIRQ(FLASH_CmdComplete_IRQn);            
        FLASH_IntClear(FLASH_INT_ALL);

        if(FLASH_Init() == SUCC)
        {
            break;
        }
        tryCnt--;
        TBOX_PRINT("falsh init error\r\n");
    } while (tryCnt);

    return 0;
}

/*************************************************
  Function:       FlashHalDataBlockWrite
  Description:    Flash block write. Block size: 2048 bytes
  Input:          blockAddress: Block address
                  writeOffset: Offset address
                  pWriteData: The data to be written to flash
                  writeLength: Data length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalDataBlockWrite(uint32_t blockAddress,uint32_t writeOffset,const uint8_t *pWriteData,uint32_t writeLength)
{
    uint32_t startAddress;
    uint32_t endAddress;
    uint32_t i;
    uint32_t *pAddress;
    uint32_t alternativeAddress;
    uint32_t sectorBaseAddress;
    uint8_t newSectorFlag;
    uint8_t sectorNum;
    uint8_t ret;

    COMMON_DISABLE_INTERRUPTS();  
    sectorBaseAddress = (blockAddress&0xC000)+WORKFLASH_PARAMETER_ADDRESS_OFFSET;//first sector address
    sectorNum = FlashHalGetNewSectorNum(sectorBaseAddress,&newSectorFlag);
    alternativeAddress = sectorBaseAddress+WORKFLASH_BASE_ADDRESS+(uint32_t)sectorNum*0x2000; 
    startAddress = alternativeAddress+writeOffset;
    endAddress = startAddress + writeLength;
    
    if(endAddress>=(alternativeAddress+0x2000))
    {
      COMMON_ENABLE_INTERRUPTS();   
      return -1;
    }
    
    if(sectorNum==0)
    {
      pAddress = (uint32_t *)(sectorBaseAddress+WORKFLASH_BASE_ADDRESS+0x2000); 
    }
    else
    {
      pAddress = (uint32_t *)(sectorBaseAddress+WORKFLASH_BASE_ADDRESS);  
    }

    for(i=0;i<2048;i++)
    {
        g_workFlashBuffer.u32Data[i] = pAddress[i];
    }
    for(i=0;i<writeLength;i++)
    {
        g_workFlashBuffer.u8Data[i+writeOffset] = pWriteData[i];
    }
    g_workFlashBuffer.u8Data[8190] = newSectorFlag;      

    COMMON_DISABLE_INTERRUPTS();    
    ret = FLASH_EraseSector(alternativeAddress, &g_stcFlashCmdExeConfig);
    COMMON_ENABLE_INTERRUPTS();        
    if (ret != SUCC)
    {
      COMMON_ENABLE_INTERRUPTS();   
      return -1;
    }

    for(i=0;i<512;i++)
    {
      COMMON_DISABLE_INTERRUPTS();    
      ret = FLASH_ProgramPhrase(alternativeAddress+i*16, (uint8_t *)&g_workFlashBuffer.u32Data[i*4], &g_stcFlashCmdExeConfig);
      COMMON_ENABLE_INTERRUPTS();        
      if (ret != SUCC)
      {
        COMMON_ENABLE_INTERRUPTS();   
        return -1;
      }
    }      
    COMMON_ENABLE_INTERRUPTS();   
    return 0;
}

/*************************************************
  Function:       FlashHalDataBlockRead
  Description:    Flash block read
  Input:          blockAddress: Block address
                  readOffset: Offset address
                  pReadData: Buffer to store data read from flash
                  pReadLength: Read length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength)
{
    uint32_t alternativeAddress;
    uint8_t newSectorFlag;
    uint8_t sectorNum;
    uint8_t *pDataAddress;
    uint32_t i;
    
    alternativeAddress = (blockAddress&0xFFFFC000)+(WORKFLASH_PARAMETER_ADDRESS_OFFSET);//first sector address
    sectorNum = FlashHalGetNewSectorNum(alternativeAddress,&newSectorFlag);
    pDataAddress = (uint8_t *)(alternativeAddress + readOffset + WORKFLASH_BASE_ADDRESS);
    if(sectorNum==0)
    {
      pDataAddress += 0x2000;
    }
    for(i = 0;i < pReadLength;i++)
    {
      pReadData[i] = pDataAddress[i];
    }
    return 0;
}

/*************************************************
  Function:       FlashHalSmallDataBlockRead
  Description:    Flash small block read
  Input:          blockAddress: Block address
                  readOffset: Offset address
                  pReadData: Buffer to store data read from flash
                  pReadLength: Read length
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalSmallDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength)
{
    uint32_t i;
    uint8_t *pDataAddress;
    
    pDataAddress = (uint8_t *)(blockAddress + readOffset);
    for(i=0;i<pReadLength;i++)
    {
      pReadData[i] = pDataAddress[i];
    }
    return 0;
}

/*************************************************
  Function:       FlashHalFlexWrite
  Description:    Write data to Flash, supports non-16-byte aligned addresses and arbitrary data lengths
  Input:          address: Write address
                  length: Data length to write
                  pWriteData: Pointer to data to be written
  Output:         None
  Return:         Success: SUCC
                  Failure: ERR
  Others:         This function can only write data within a single sector, cross-sector writing is not supported
*************************************************/
ResultStatus_t FlashHalFlexWrite(uint32_t address, uint32_t length, uint8_t *pWriteData)  //one sector
{
    ResultStatus_t ret = SUCC;
    uint32_t sector_start = address & ~(FLASH_SECTOR_SIZE - 1); // Sector start address (8192-byte aligned)
    uint32_t sector_end = sector_start + FLASH_SECTOR_SIZE - 1;  // Sector end address
    uint32_t offset_in_sector = address - sector_start; // Offset of new data within the sector

    if ((address < FLASH_META_DATA_BASE_ADDRESS) || 
        (address + length > FLASH_APP_BANKB_END_ADDRESS) || 
        (pWriteData == NULL) || 
        (length == 0))
    {
        ret = ERR;
        TBOX_PRINT("Line %d: flash write check error (invalid param) %d\r\n", __LINE__, ret);
    }
    else if (address + length - 1 > sector_end)
    {
        ret = ERR;
        TBOX_PRINT("Line %d: write cross sector (not supported) %d\r\n", __LINE__, ret);
    }
    else
    {
        COMMON_DISABLE_INTERRUPTS();
        FlashHalRead(sector_start, g_flashHalSectorBuf, FLASH_SECTOR_SIZE);
        COMMON_ENABLE_INTERRUPTS();
        
        // Merge new data into buffer
        memcpy(&g_flashHalSectorBuf[offset_in_sector], pWriteData, length);
        COMMON_DISABLE_INTERRUPTS();
        ret = FLASH_EraseSector(sector_start, &g_stcFlashCmdExeConfig);
        COMMON_ENABLE_INTERRUPTS();   
        if (ret != SUCC)
        {
            TBOX_PRINT("Line %d: erase sector error %d\r\n", __LINE__, ret);
            COMMON_ENABLE_INTERRUPTS();   
        }
        else
        {
            COMMON_DISABLE_INTERRUPTS();
            ret = FLASH_Program(sector_start, FLASH_SECTOR_SIZE, g_flashHalSectorBuf, NULL);
            COMMON_ENABLE_INTERRUPTS();
            if (ret != SUCC)
            {
                TBOX_PRINT("Line %d: program sector error %d\r\n", __LINE__, ret);
            }
        }    
    }
    return ret; 
}

/*************************************************
  Function:       FlashHalRead
  Description:    Flash read
  Input:          addr: Read address
                  data: Buffer to store read data
                  size: Data size to read
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalRead(uint32_t addr, uint8_t *data, uint32_t size)
{
    uint8_t *pDataAddress = NULL;
    uint32_t i = 0;   
    pDataAddress = (uint8_t *)addr;
    for(i=0;i<size;i++)
    {
      data[i] = pDataAddress[i];
    }
    return 0;
}

/*************************************************
  Function:       FlashHalOtaFlashWrite
  Description:    OTA flash write
  Input:          writeAddress: Write address
                  pData: Data to write
                  length: Data length to write
  Output:         Execution result
  Return:         Success: FLASH_HAL_STATUS_OK
                  Failure: FLASH_HAL_STATUS_ERR
  Others:         This function is called after receiving data packets, the length is not large
*************************************************/
int16_t FlashHalOtaFlashWrite(uint32_t writeAddress,volatile uint8_t *pData,uint32_t length)
{
    int16_t result = FLASH_HAL_STATUS_OK;
    ResultStatus_t writeResult;
    uint8_t* writeData = (uint8_t*)pData;
    if (pData == NULL || length == 0)
    {
        TBOX_PRINT("Line %d: Invalid data pointer or zero length\r\n", __LINE__);
        result = FLASH_HAL_STATUS_ERR;
    }
    else
    {
        writeResult = FlashHalFlexWrite(writeAddress, length, writeData);
        if (writeResult != SUCC)
        {
            TBOX_PRINT("Line %d: FlashHalFlexWrite failed for packet data, result: %d\r\n", __LINE__, writeResult);
            result = FLASH_HAL_STATUS_ERR;
        }
    }  
    return result;
}

/*************************************************
  Function:       FlashHalOtaFlashErase
  Description:    Flash code area erase
  Input:          BankFlag: Code area flag
                  1: Bank A  2: Bank B
  Output:         None
  Return:         Success: SUCC
                  Failure: ERR
  Others:         Erase entire region according to specified bank flag
*************************************************/
int16_t FlashHalOtaFlashErase(uint8_t BankFlag)
{
    uint8_t ret = FLASH_HAL_STATUS_OK;
    uint32_t eraseAddress;
    uint32_t eraseLength;
    uint32_t currentAddress;
    uint32_t sectorCount;
    uint32_t i;
    int16_t result = FLASH_HAL_STATUS_OK; // 默认成功返回0
    
    // Check input parameter
    if (BankFlag < 1 || BankFlag > 2)
    {
        TBOX_PRINT("Line %d: Invalid BankFlag parameter %d\r\n", __LINE__, BankFlag);
        result = FLASH_HAL_STATUS_ERR; 
    }
    else
    {
        if (BankFlag == 1) // Bank A
        {
            eraseAddress = FLASH_APP_BANKA_ABSTRACT_ADDRESS;
        }
        else // Bank B (BankFlag == 2)
        {
            eraseAddress = FLASH_APP_BANKB_ABSTRACT_ADDRESS;
        }
        
        eraseLength = FLASH_APP_SINGLE_SIZE - FLASH_SECTOR_SIZE;
        sectorCount = eraseLength / FLASH_SECTOR_SIZE;
        
        for (i = 0; i < sectorCount && result == FLASH_HAL_STATUS_OK; i++)
        {
            currentAddress = eraseAddress + (i * FLASH_SECTOR_SIZE);  

            COMMON_DISABLE_INTERRUPTS();
            ret = FLASH_EraseSector(currentAddress, &g_stcFlashCmdExeConfig);
            COMMON_ENABLE_INTERRUPTS();
            
            if (ret != SUCC)
            {
                TBOX_PRINT("Line %d: Erase sector failed at address 0x%08X, error code %d\r\n", 
                          __LINE__, currentAddress, ret);
                result = FLASH_HAL_STATUS_ERR; 
            }
        }
    }  
    return result;
}

/*************************************************
  Function:       FlashHalJumpToAppCheck
  Description:    Check and jump to application code
  Input:          None
  Output:         None
  Return:         None
  Others:         Verifies application integrity and jumps to valid application if available
*************************************************/
void FlashHalJumpToAppCheck(void)
{
#ifdef BOOT_CRC_CHECK
    uint8_t input[16] = {0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xef,0xfe,0xdc,0xba,0x98,0x76,0x54,0x32,0x10};
    uint32_t flashSize              = 0x00;
    uint32_t checkSum               = 0x00;
    uint32_t flashCrc32Value        = 0x00;  
    uint32_t appAbstractCrcAddress  = 0x00;
    Crc32Objec_t crc32Object;
#endif
#ifdef BOOT_AES_CHECK
    uint8_t output1[16];
    uint32_t appAbstractAesAddress  = 0x00;
#endif
    uint32_t appStartAddress        = 0x00;
    uint32_t u32App1SuccessFlag     = 0x00;
    uint32_t u32App2SuccessFlag     = 0x00;
    uint8_t appStartFlag            = 0x00;

    ResultStatus_t rlt = ERR;

    u32App1SuccessFlag = FlashHalReadApp1SuccessFlag();
    u32App2SuccessFlag = FlashHalReadApp2SuccessFlag();
    rlt = FlashHalGetMetaDataInfo(&g_flashHalMetaDataInfo);
    if(rlt == SUCC)
    {
        if(g_flashHalMetaDataInfo.m_metaBootFlag == FLASH_BOOT_JUMP_ACTIVE_FLAG)
        {
            //TBOX_PRINT("%s Line:%d \r\n",__FILE__,__LINE__);
            appStartFlag = 0x00;//default in boot
            if(g_flashHalMetaDataInfo.m_metaAppFlag == FLASH_APP_BANKA_ACTIVE_FLAG)//start app1 
            {
                if(u32App1SuccessFlag == FLASH_BANK_APP_INTEGRITY_ENABLE)
                {
                    appStartFlag = 0x01;
                }
                else if(u32App2SuccessFlag == FLASH_BANK_APP_INTEGRITY_ENABLE)
                {
                    appStartFlag = 0x02;
                }
            }
            else if(g_flashHalMetaDataInfo.m_metaAppFlag == FLASH_APP_BANKB_ACTIVE_FLAG)
            {
                if(u32App2SuccessFlag == FLASH_BANK_APP_INTEGRITY_ENABLE)
                {
                    appStartFlag = 0x02;
                }
                else if(u32App1SuccessFlag == FLASH_BANK_APP_INTEGRITY_ENABLE)
                {
                    appStartFlag = 0x01;
                }
            }
            TBOX_PRINT("appStartFlag is %x \r\n",appStartFlag);
            do
            {
                if(0x01 == appStartFlag)
                {
                    appStartAddress = FLASH_APP_BANKA_CM4_BASE_ADDRESS;
#ifdef BOOT_CRC_CHECK
                    appAbstractCrcAddress = FLASH_APP_BANKA_CRC_VALUE_ADDRESS;
#endif
#ifdef BOOT_AES_CHECK                     
                    appAbstractAesAddress = FLASH_APP_BANKA_AES_VALUE_ADDRESS;
#endif
                }
                else if(0x02 == appStartFlag)
                {
                    appStartAddress = FLASH_APP_BANKB_CM4_BASE_ADDRESS;
#ifdef BOOT_CRC_CHECK                    
                    appAbstractCrcAddress = FLASH_APP_BANKB_CRC_VALUE_ADDRESS;
#endif
#ifdef BOOT_AES_CHECK
                    appAbstractAesAddress = FLASH_APP_BANKB_AES_VALUE_ADDRESS;
#endif
                }
                else
                {
                    break;
                }
                TBOX_PRINT("Jump to appStartAddress is 0x%x \r\n",appStartAddress);
#ifdef BOOT_CRC_CHECK
                FlashHalRead(appAbstractCrcAddress,input,16);
                flashSize = (input[11] << 24) + (input[10] << 16) + (input[9] << 8) + input[8];
                checkSum  = (input[15] << 24) + (input[14] << 16) + (input[13] << 8) + input[12];
                flashCrc32Value = 0xFFFFFFFF;
                Crc32Init(&crc32Object,0x04C11DB7);
                flashCrc32Value = Crc32(&crc32Object, flashCrc32Value, (uint8_t *)appStartAddress, flashSize);
                flashCrc32Value ^= 0xFFFFFFFF;
                if (flashCrc32Value != checkSum)
                {
                    TBOX_PRINT("app file crc error, flashCrc32Value = %08x\r\n", flashCrc32Value);
                    TBOX_PRINT("read app abstract data: ");
                    for(uint16_t i = 0;i <16;i++)
                    {
                        TBOX_PRINT("%02x ",input[i]);
                    }
                    TBOX_PRINT("\r\n");
                    TBOX_PRINT("appStartAddress = %08x, flashSize = %08x, checkSum = %08x\r\n", appStartAddress, flashSize, checkSum);
                    TimerHalDelayMs(5000);
                    PeripheralHalMcuHardReset();
                }
#endif
#ifdef BOOT_AES_CHECK                 
                HsmHalAesEcbEncrypt(secureKey,0,input,16,output1);
                FlashHalRead(appAbstractAesAddress,input,16);
                for(uint16_t i = 0;i <16;i++)
                {
                    if(input[i] != output1[i])
                    {
                        TBOX_PRINT("app file aes error\r\n");
                        TBOX_PRINT("calculate aes result: ");
                        for(uint16_t i = 0;i <16;i++)
                        {
                            TBOX_PRINT("%02x ",output1[i]);
                        }
                        TBOX_PRINT("\r\n");
                        TBOX_PRINT("read aes data: ");
                        for(uint16_t i = 0;i <16;i++)
                        {
                            TBOX_PRINT("%02x ",input[i]);
                        }
                        TBOX_PRINT("\r\n");
                        TimerHalDelayMs(5000);
                        PeripheralHalMcuHardReset();
                    }
                }
#endif
                if (((*(volatile uint32_t *)appStartAddress) >= SRAM_START_ADDRESS) && ((*(volatile uint32_t *)appStartAddress) <= SRAM_END_ADDRESS))
                {
                    Z20_SYSTICK->CTRL  = 0;
                    Z20_SYSTICK->LOAD  = 0;
                    Z20_SYSTICK->VAL   = 0UL;                                          
                    JumpToApp = (bootloaderFun)(*(volatile uint32_t *)(appStartAddress + 4));   
                    __set_MSP(*(volatile uint32_t*)appStartAddress);
                    __set_PSP(*(volatile uint32_t*)appStartAddress);
                    Z20_SCB->VTOR = ((uint32_t)&__vector_table) & 0xFFFFFF80U;
                    COMMON_DSB();    
                    COMMON_DISABLE_INTERRUPTS();    
                    JumpToApp();
                }
                TBOX_PRINT("Jump to APP Fault\r\n");
            }while(0);
        }
        else if(g_flashHalMetaDataInfo.m_metaBootFlag == FLASH_BOOT_OTA_ACTIVE_FLAG)
        {
            //TBOX_PRINT("%s Line:%d \r\n",__FILE__,__LINE__);
            g_flashHalMetaDataInfo.m_metaBootFlag = FLASH_BOOT_JUMP_ACTIVE_FLAG;
            g_enterBootType = 1;
        }
        else if(g_flashHalMetaDataInfo.m_metaBootFlag == FLASH_BOOT_UDS_ACTIVE_FLAG)
        {
            //TBOX_PRINT("%s Line:%d \r\n",__FILE__,__LINE__);
            g_flashHalMetaDataInfo.m_metaBootFlag = FLASH_BOOT_JUMP_ACTIVE_FLAG;
            g_enterBootType = 2;
        }
        else
        {
            //TBOX_PRINT("%s Line:%d \r\n",__FILE__,__LINE__);  
            g_flashHalMetaDataInfo.m_metaBootFlag = FLASH_BOOT_JUMP_ACTIVE_FLAG;
        }   
        FlashHalWriteMetaDataInfo(&g_flashHalMetaDataInfo);
        TBOX_PRINT("enter bootloader type = %d\r\n", g_enterBootType);
    }
}

/*************************************************
  Function:       FlashHalReadApp1SuccessFlag
  Description:    Read application 1 success flag from Flash
  Input:          None
  Output:         None
  Return:         The 4-byte flag value read from Flash
  Others:         This function directly reads 4 bytes from the specified Flash address
                  No need for additional alignment handling as FlashHalRead supports arbitrary lengths
*************************************************/
static uint32_t FlashHalReadApp1SuccessFlag(void)
{
    uint32_t flagValue = 0;
    
    // Directly read 4-byte flag value into uint32_t variable
    FlashHalRead(FLASH_APP_BANKA_INTEGRITY_ADDRESS, (uint8_t*)&flagValue, sizeof(flagValue));
    return flagValue;
}

/*************************************************
  Function:       FlashHalReadApp2SuccessFlag
  Description:    Read application 2 success flag from Flash
  Input:          None
  Output:         None
  Return:         The 4-byte flag value read from Flash
  Others:         This function directly reads 4 bytes from the specified Flash address
                  No need for additional alignment handling as FlashHalRead supports arbitrary lengths
*************************************************/
static uint32_t FlashHalReadApp2SuccessFlag(void)
{
    uint32_t flagValue = 0;
    
    // Directly read 4-byte flag value into uint32_t variable
    FlashHalRead(FLASH_APP_BANKB_INTEGRITY_ADDRESS, (uint8_t*)&flagValue, sizeof(flagValue));
    return flagValue;
}

/*************************************************
  Function:       FlashHalWriteApp1SuccessFlag
  Description:    Write application 1 success flag to Flash
  Input:          flagValue: Flag value to be written (4-byte)
  Output:         None
  Return:         None
  Others:         This function directly uses FlashHalFlexWrite which automatically handles non-16-byte alignment
                  No need for additional buffer as FlashHalFlexWrite supports arbitrary lengths
*************************************************/
void FlashHalWriteApp1SuccessFlag(uint32_t flagValue)
{
    // FlashHalFlexWrite automatically handles non-aligned addresses and arbitrary lengths
    FlashHalFlexWrite(FLASH_APP_BANKA_INTEGRITY_ADDRESS, 
                      sizeof(uint32_t), 
                      (uint8_t*)&flagValue);
}

/*************************************************
  Function:       FlashHalWriteApp2SuccessFlag
  Description:    Write application 2 success flag to Flash
  Input:          flagValue: Flag value to be written (4-byte)
  Output:         None
  Return:         None
  Others:         This function directly uses FlashHalFlexWrite which automatically handles non-16-byte alignment
                  No need for additional buffer as FlashHalFlexWrite supports arbitrary lengths
*************************************************/
void FlashHalWriteApp2SuccessFlag(uint32_t flagValue)
{
    // FlashHalFlexWrite automatically handles non-aligned addresses and arbitrary lengths
    FlashHalFlexWrite(FLASH_APP_BANKB_INTEGRITY_ADDRESS, 
                      sizeof(uint32_t), 
                      (uint8_t*)&flagValue);
}

/*************************************************
  Function:       FlashHalIsMetaDataValid
  Description:    Validates meta data structure using header and end flags
  Input:          pMetaData: Pointer to meta data structure to validate
  Output:         None
  Return:         SUCC if meta data is valid, ERR otherwise
  Others:         Checks header and end flags to determine validity
*************************************************/
static ResultStatus_t FlashHalIsMetaDataValid(const FlashHalMetaDataInfo_t *pMetaData)
{
    ResultStatus_t isValid = ERR;
    if (pMetaData != NULL)
    {
        if((pMetaData->m_metaDataHeaderFlag == FLASH_META_DATA_HEADER_END_FLAG)
        &&(pMetaData->m_metaEndFlag == FLASH_META_DATA_HEADER_END_FLAG))
        {
            isValid = SUCC;
        }
        else
        {
            TBOX_PRINT("Line %d: Invalid meta data header or end flag\r\n", __LINE__);
        }
    }
    else
    {
        TBOX_PRINT("Line %d: NULL pointer for meta data validation\r\n", __LINE__);
    }
    return isValid;
}
/*************************************************
  Function:       FlashHalWriteMetaDataInfo
  Description:    Writes meta data structure to both Image A and Image B regions
  Input:          pMetaData: Pointer to meta data structure to be written
  Output:         None
  Return:         SUCC on success, ERR on failure
  Others:         Ensures meta data redundancy by writing to two separate regions
*************************************************/
ResultStatus_t FlashHalWriteMetaDataInfo(const FlashHalMetaDataInfo_t *pMetaData)
{
    ResultStatus_t ret = SUCC;
    const uint32_t meta_data_size = sizeof(FlashHalMetaDataInfo_t);
    FlashHalMetaDataInfo_t readback_meta_data;

    if (pMetaData == NULL)
    {
        TBOX_PRINT("Line %d: NULL pointer for meta data write\r\n", __LINE__);
        ret = ERR;
    }
    else if (meta_data_size != FLASH_WRITE_MINIMAM_SIZE)
    {
        TBOX_PRINT("Line %d: Meta data size (%d) not equal to minimal write size (%d)\r\n", 
                  __LINE__, meta_data_size, FLASH_WRITE_MINIMAM_SIZE);
        ret = ERR;
    }
    else if ((FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS & (FLASH_WRITE_MINIMAM_SIZE - 1)) != 0)
    {
        TBOX_PRINT("Line %d: Image A address not aligned to minimal write size\r\n", __LINE__);
        ret = ERR;
    }
    else if ((FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS & (FLASH_WRITE_MINIMAM_SIZE - 1)) != 0)
    {
        TBOX_PRINT("Line %d: Image B address not aligned to minimal write size\r\n", __LINE__);
        ret = ERR;
    }
    else
    {      
        COMMON_DISABLE_INTERRUPTS();
        ret = FLASH_EraseSector(FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS, &g_stcFlashCmdExeConfig);
        COMMON_ENABLE_INTERRUPTS();
        
        if (ret == SUCC)
        {
            COMMON_DISABLE_INTERRUPTS();
            ret = FLASH_Program(FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS, meta_data_size, (uint8_t*)pMetaData, NULL);
            COMMON_ENABLE_INTERRUPTS();
            
            if (ret != SUCC)
            {
                TBOX_PRINT("Line %d: Image A metadata write failed %d\r\n", __LINE__, ret);
            }
            else
            {
                COMMON_DISABLE_INTERRUPTS();
                FlashHalRead(FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS, (uint8_t*)&readback_meta_data, meta_data_size);
                COMMON_ENABLE_INTERRUPTS();
                
                if (FlashHalIsMetaDataValid(&readback_meta_data) != SUCC)
                {
                    TBOX_PRINT("Line %d: Image A metadata validation failed after write\r\n", __LINE__);
                    ret = ERR;
                }
                else
                {
                    COMMON_DISABLE_INTERRUPTS();
                    ret = FLASH_EraseSector(FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS, &g_stcFlashCmdExeConfig);
                    COMMON_ENABLE_INTERRUPTS();
                    
                    if (ret == SUCC)
                    {
                        COMMON_DISABLE_INTERRUPTS();
                        ret = FLASH_Program(FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS, meta_data_size, (uint8_t*)pMetaData, NULL);
                        COMMON_ENABLE_INTERRUPTS();
                        
                        if (ret != SUCC)
                        {
                            TBOX_PRINT("Line %d: Image B metadata write failed %d\r\n", __LINE__, ret);
                        }
                        else
                        {
                            COMMON_DISABLE_INTERRUPTS();
                            FlashHalRead(FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS, (uint8_t*)&readback_meta_data, meta_data_size);
                            COMMON_ENABLE_INTERRUPTS();
                            
                            if (FlashHalIsMetaDataValid(&readback_meta_data) != SUCC)
                            {
                                TBOX_PRINT("Line %d: Image B metadata validation failed after write\r\n", __LINE__);
                                ret = ERR;
                            }
                        }
                    }
                    else
                    {
                        TBOX_PRINT("Line %d: Image B sector erase failed %d\r\n", __LINE__, ret);
                    }
                }
            }
        }
        else
        {
            TBOX_PRINT("Line %d: Image A sector erase failed %d\r\n", __LINE__, ret);
        }
    }
    return ret;
}

/*************************************************
  Function:       FlashHalGetMetaDataInfo
  Description:    Reads meta data from flash and stores in global cache
  Input:          pMetaData: Pointer to store the read meta data
  Output:         pMetaData: Updated with the read meta data
  Return:         SUCC on success, ERR on failure
  Others:         Uses A -> B -> default fallback logic with validation
*************************************************/
ResultStatus_t FlashHalGetMetaDataInfo(FlashHalMetaDataInfo_t *pMetaData)
{
    ResultStatus_t result = ERR;
    FlashHalMetaDataInfo_t tempMeta;

    if (pMetaData == NULL)
    {
        TBOX_PRINT("Line %d: NULL pointer for meta data info\r\n", __LINE__);
        result = ERR;
    }
    else
    {
        memset(&tempMeta, 0, sizeof(FlashHalMetaDataInfo_t));
        // Try reading Image A first
        FlashHalRead(FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS,(uint8_t*)&tempMeta,sizeof(FlashHalMetaDataInfo_t));
        result = FlashHalIsMetaDataValid(&tempMeta);
        if (result == SUCC)
        {
            memcpy(pMetaData, &tempMeta, sizeof(FlashHalMetaDataInfo_t));
            TBOX_PRINT("Successfully read valid meta data from Image A\r\n");
        }
        else
        {
            TBOX_PRINT("Meta data A region error!\r\n");
            // If Image A failed, try Image B
            memset(&tempMeta, 0, sizeof(FlashHalMetaDataInfo_t));
            FlashHalRead(FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS,(uint8_t*)&tempMeta,sizeof(FlashHalMetaDataInfo_t));
            result = FlashHalIsMetaDataValid(&tempMeta);
            if (result == SUCC)
            {
                memcpy(pMetaData, &tempMeta, sizeof(FlashHalMetaDataInfo_t));
                TBOX_PRINT("Successfully read valid meta data from Image B\r\n");
            } 
            else
            {
                TBOX_PRINT("Meta data B region error!\r\n");
                // If both A and B failed, use default and write it to both regions
                TBOX_PRINT("Using default meta data values\r\n");
                memcpy(pMetaData, &g_flashHalMetaDataDefaultInfo, sizeof(FlashHalMetaDataInfo_t));
                // Write default to both regions for future reads
                FlashHalWriteMetaDataInfo(&g_flashHalMetaDataDefaultInfo);
                result = SUCC;
            }     
        }   
    }
    return result;
}

/*************************************************
  Function:       FlashHalGetEnterBootType
  Description:    Get the bootloader entry type
  Input:          None
  Output:         None
  Return:         Bootloader entry type (0: Default boot, 1: OTA boot, 2: UDS boot)
  Others:         Returns the global variable g_enterBootType
*************************************************/
uint8_t FlashHalGetEnterBootType(void)
{
    return g_enterBootType;
}
