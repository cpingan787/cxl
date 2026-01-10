#include "tvii_fota_update_hal.h"
#include "cy_flash.h"
//#include "workflash/workflash.h"
#include "cy_mw_flash.h"
#include "peripheral_driver_hal.h"
/*FOTA Macros*/
#define ERASE_ADDRESS_INC	0x8000     // 32kbyte for 1M device

#if(0)
static cy_un_flash_context_t sromContext = { 0 };
#endif

static int Fota_WaitUntilRdy(uint8_t delayWait)
{
  uint32_t count;
    count = 0;
    while(Cy_Is_SROM_API_Completed() == false)
    {
      if(delayWait)
      {
        vTaskDelay(2);
        if(count>=1000)
        {
          return -1;
        }
      }
      else
      {
        if(count>=10000000)
        {
          return -1;
        }
      }
      count++;
    }
    return 0;
}

void FOTA_EraseSectors(uint8_t type)
{
    uint32_t EraseAddress;
    uint8_t length;
    //无论是在BankA还是B升级的时候另一个Bank的地址永远是这个，芯片底层已经做了映射
    // Erase Flash: Code Region(Large Sector), See 8.2.5.2 Address Mapping for 1 MB Memory
    if (type == 1) //APP1
    {
        EraseAddress = CFLASH_BANKB_CM4_START_ADDRESS; //每个BANK前96K为CM0代码区
        length = 15 - 3;  //前3个32K留给CM0使用
    }
    else //APP2
    {
        EraseAddress = CFLASH_BANKB_CM4_START_ADDRESS;
        length = 15 - 3; //前3个32K留给CM0使用
    }
    SemaphoreHandle_t mutex;
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );
    for (uint8_t i = 0; i < length; i++)
    {
        FOTA_SectorEraseFlash(EraseAddress);
        EraseAddress += ERASE_ADDRESS_INC; // 32kbyte
    }
    xSemaphoreGive(mutex);
}

void FOTA_SectorEraseFlash(uint32_t EraseAddress)
{
#if(0)
    cy_stc_flash_erasesector_config_t eraseSectorConfig =
    {
        .blocking = CY_FLASH_ERASESECTOR_BLOCKING,
        .intrMask = CY_FLASH_ERASESECTOR_NOT_SET_INTR_MASK,
        .Addr     = NULL,
    };

    eraseSectorConfig.Addr = (uint32_t *)EraseAddress;    
    Cy_Flash_EraseSector(&sromContext, &eraseSectorConfig, CY_FLASH_DRIVER_BLOCKING);
#else
    Cy_FlashSectorErase(EraseAddress,CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(1);
#endif
    //CY_ASSERT(status == CY_FLASH_DRV_SUCCESS);
}

void FOTA_ProgramFlash(uint32_t TargetAddress, uint16_t SizeInbyte, uint32_t *RxBuf)
{
//#pragma alignvar (4)
    uint8_t writeBuffer[512];

    cy_stc_flash_programrow_config_t programRowConfig =
    {
        .blocking = CY_FLASH_PROGRAMROW_BLOCKING,
        .skipBC   = CY_FLASH_PROGRAMROW_SKIP_BLANK_CHECK,
        .dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_64BIT,
        .dataLoc  = CY_FLASH_PROGRAMROW_DATA_LOCATION_SRAM,
        .intrMask = CY_FLASH_PROGRAMROW_NOT_SET_INTR_MASK,
        .destAddr = NULL,
        .dataAddr = NULL,
    };
    SemaphoreHandle_t mutex;
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );
    uint32_t addressToBeWriten = TargetAddress;
    uint32_t totalSize         = SizeInbyte;
    uint32_t addressOfSource   = (uint32_t)RxBuf;
    while (totalSize != 0)
    {
        /***************************/
        /*** Parameter checking ****/
        /***************************/
        if (
            (addressToBeWriten < CY_FLASH_LG_DBM1_BASE) ||
            ((CY_FLASH_LG_DBM1_BASE + CY_FLASH_LG_DBM1_SIZE) < addressToBeWriten)
           )
        {
            // Error: Out side flash bank B.
            //while(1);
        }

        uint16_t dataSizeToBeWriten = 0;
        if (totalSize >= 512)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_4096BIT;
            dataSizeToBeWriten = 512;
        }
#if 0 // not supported
        else if(totalSize >= 256)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_2048BIT;
            dataSizeToBeWriten = 256;
        }
        else if(totalSize >= 128)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_1024BIT;
            dataSizeToBeWriten = 128;
        }
        else if(totalSize >= 64)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_512BIT;
            dataSizeToBeWriten = 64;
        }
#endif
        else if (totalSize >= 32)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_256BIT;
            dataSizeToBeWriten = 32;
        }
#if 0 // not supported
        else if(totalSize >= 16)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_128BIT;
            dataSizeToBeWriten = 16;
        }
#endif
        else if (totalSize >= 8)
        {
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_64BIT;
            dataSizeToBeWriten = 8;
        }
        else // < 8 byte
        {
            // ToDo: Need special care
            programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_64BIT;
            dataSizeToBeWriten = totalSize;
            for (uint32_t i = totalSize; i < 8; i++)
            {
                // Padding with 0xFF.
                writeBuffer[i] = 0xFF;
            }
        }

        memcpy(writeBuffer, (void *)addressOfSource, dataSizeToBeWriten);

        programRowConfig.destAddr = (uint32_t *)addressToBeWriten;
        programRowConfig.dataAddr = (uint32_t *)writeBuffer;
#if(0)
        Cy_Flash_ProgramRow(&sromContext, &programRowConfig, CY_FLASH_DRIVER_BLOCKING);
#else
        Cy_FlashWriteCode(addressToBeWriten,(uint32_t *)writeBuffer,programRowConfig.dataSize,CY_FLASH_DRIVER_NON_BLOCKING);
        Fota_WaitUntilRdy(0);
#endif
        totalSize         -= dataSizeToBeWriten;
        addressToBeWriten += dataSizeToBeWriten;
        addressOfSource   += dataSizeToBeWriten;
        
    }
    xSemaphoreGive(mutex);
}

void FOTA_ProgramWorkFlash(uint32_t address, uint32_t data)
{
#if(0)    
    cy_stc_flash_programrow_config_t programRowConfig =
    {
        .blocking = CY_FLASH_PROGRAMROW_BLOCKING,
        .skipBC   = CY_FLASH_PROGRAMROW_SKIP_BLANK_CHECK,
        .dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_64BIT,
        .dataLoc  = CY_FLASH_PROGRAMROW_DATA_LOCATION_SRAM,
        .intrMask = CY_FLASH_PROGRAMROW_NOT_SET_INTR_MASK,
        .destAddr = NULL,
        .dataAddr = NULL,
    };  

    programRowConfig.dataSize = CY_FLASH_PROGRAMROW_DATA_SIZE_32BIT;
    programRowConfig.destAddr = (uint32_t *)address;    
    programRowConfig.dataAddr = &writeData;
#endif  
    uint32_t writeData = data;
    
    SemaphoreHandle_t mutex;
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );    
#if(0)
    Cy_Flash_ProgramRow(&sromContext, &programRowConfig, CY_FLASH_DRIVER_BLOCKING);
#else
    Cy_FlashWriteWork(address, &writeData, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);
#endif
    xSemaphoreGive(mutex);
    //CY_ASSERT(status == CY_FLASH_DRV_SUCCESS);
}

void FOTA_BankActiveFlagUpdate(uint8_t isBankB)
{

    uint32_t WorkFlashAddress, WorkFlashData;

    WorkFlashAddress = CFLASH_BANK_ACTIVE_ADDRESS;
    if (isBankB) //当前运行BankB，正在升级的为BankA，进行Bank运行标志写入BankA
    {
        WorkFlashData = CFLASH_BANKA_ACTIVE_FLAG;
    }
    else
    {
        WorkFlashData = CFLASH_BANKB_ACTIVE_FLAG;
    }
    SemaphoreHandle_t mutex;
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );
    
    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(1);
    /*Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);*/
    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(mutex);
}


uint32_t FOTA_BankActiveFlagRead(void)
{
  uint32_t ret;
  
  SemaphoreHandle_t mutex;
  mutex = PeripheralDriverHalGetFlashMutexHandle();
  xSemaphoreTake( mutex, portMAX_DELAY );
  ret = *(uint32_t *)(CFLASH_BANK_ACTIVE_ADDRESS);
  xSemaphoreGive(mutex);
  
  return ret;
}


void FOTA_BankAPPIntegrityFlagUpdate(uint8_t flag)
{
#ifndef INTEGRITY_DISNABLE
    uint32_t WorkFlashAddress, WorkFlashData;
    //当前运行BankB，正在升级的为BankA，进行BankA代码完整性标志写入
    if (Cy_Flashc_GetMainMap() == CY_FLASH_MAPPING_B)
    {
        WorkFlashAddress = CFLASH_BANKA_APP_INTEGRITY_ADDRESS;
    }
    else
    {
        WorkFlashAddress = CFLASH_BANKB_APP_INTEGRITY_ADDRESS;
    }

    if (flag)
    {
        WorkFlashData = CFLASH_BANK_APP_INTEGRITY_ENABLE;
    }
    else
    {
        WorkFlashData = CFLASH_BANK_APP_INTEGRITY_DISABLE;
    }
    
    SemaphoreHandle_t mutex;
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );
    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(1);
    //Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    //Fota_WaitUntilRdy(0);
    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(mutex);
#endif
}


uint32_t FOTA_BankAPPIntegrityFlagRead(uint8_t isBankB)
{
#ifndef INTEGRITY_DISNABLE
    uint32_t ret;
    SemaphoreHandle_t mutex;
    
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );
    if (isBankB)
    {
        ret = *(uint32_t *)(CFLASH_BANKB_APP_INTEGRITY_ADDRESS);
    }
    else
    {
        ret = *(uint32_t *)(CFLASH_BANKA_APP_INTEGRITY_ADDRESS);
    }
    xSemaphoreGive(mutex);
    return ret;
#else
    return CFLASH_BANK_APP_INTEGRITY_ENABLE;
#endif
}

void FOTA_BankBCM0IntegrityFlagUpdate(uint8_t flag)
{

    uint32_t WorkFlashAddress, WorkFlashData;

    WorkFlashAddress = CFLASH_BANKB_CM0_INTEGRITY_ADDRESS;
    if (flag)
    {
        WorkFlashData = CFLASH_BANK_APP_INTEGRITY_ENABLE;
    }
    else
    {
        WorkFlashData = CFLASH_BANK_APP_INTEGRITY_DISABLE;
    }
    SemaphoreHandle_t mutex;
    
    mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( mutex, portMAX_DELAY );
    
    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(1);
    /*Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);*/
    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(mutex);
}


uint32_t FOTA_BankBCM0IntegrityFlagRead(void)
{
  uint32_t ret;
  SemaphoreHandle_t mutex;
    
   mutex = PeripheralDriverHalGetFlashMutexHandle();
   xSemaphoreTake( mutex, portMAX_DELAY );
   ret = (*(uint32_t *)(CFLASH_BANKB_CM0_INTEGRITY_ADDRESS));
   xSemaphoreGive(mutex);
   return ret;
}

static uint32_t m_Crc32table[256];
static uint32_t m_Crc32InitValue = 0xFFFFFFFF;
static uint32_t m_Crc32PolyValue = 0x04C11DB7;
//
static uint32_t bitrev(unsigned long input, int bw)
{
    int i;
    unsigned long var;
    var = 0;
    for (i = 0; i < bw; i++)
    {
        if (input & 0x01)
        {
            var |= 1 << (bw - 1 - i);
        }
        input >>= 1;
    }
    return var;
}

//????
//?:X32+X26+...X1+1,poly=(1<<26)|...|(1<<1)|(1<<0)
static void crc32_initTable(uint32_t poly)
{
    int32_t i;
    int32_t j;
    uint32_t c;

    poly = bitrev(poly, 32);
    for (i = 0; i < 256; i++)
    {
        c = i;
        for (j = 0; j < 8; j++)
        {
            if (c & 1)
            {
                c = poly ^ (c >> 1);
            }
            else
            {
                c = c >> 1;
            }
        }
        m_Crc32table[i] = c;
    }
}

uint32_t crc32(uint32_t crc, void *input, int len)
{
    int i;
    uint8_t index;
    uint8_t *pch;
    pch = (uint8_t *)input;
    for (i = 0; i < len; i++)
    {
        index = (unsigned char)(crc ^ *pch);
        crc = (crc >> 8) ^ m_Crc32table[index];
        pch++;
    }
    return crc;
}

void OtaCrc32Init(uint32_t* flashCrc32Value)
{
    *flashCrc32Value = m_Crc32InitValue;
    crc32_initTable(m_Crc32PolyValue);
}


