#include "tvii_fota_update_hal.h"
#include "cy_flash.h"
//#include "workflash/workflash.h"
#include "cy_mw_flash.h"

/*FOTA Macros*/
#define ERASE_ADDRESS_INC	0x8000     // 32kbyte for 1M device

static cy_un_flash_context_t sromContext = { 0 };

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
    for (uint8_t i = 0; i < length; i++)
    {
        FOTA_SectorEraseFlash(EraseAddress);
        EraseAddress += ERASE_ADDRESS_INC; // 32kbyte
    }
}

void FOTA_SectorEraseFlash(uint32_t EraseAddress)
{
    cy_stc_flash_erasesector_config_t eraseSectorConfig =
    {
        .blocking = CY_FLASH_ERASESECTOR_BLOCKING,
        .intrMask = CY_FLASH_ERASESECTOR_NOT_SET_INTR_MASK,
        .Addr     = NULL,
    };

    eraseSectorConfig.Addr = (uint32_t *)EraseAddress;
    uint32_t status = Cy_Flash_EraseSector(&sromContext, &eraseSectorConfig, CY_FLASH_DRIVER_BLOCKING);
    CY_ASSERT(status == CY_FLASH_DRV_SUCCESS);
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
        uint32_t status = Cy_Flash_ProgramRow(&sromContext, &programRowConfig, CY_FLASH_DRIVER_BLOCKING);
        CY_ASSERT(status == CY_FLASH_DRV_SUCCESS);

        totalSize         -= dataSizeToBeWriten;
        addressToBeWriten += dataSizeToBeWriten;
        addressOfSource   += dataSizeToBeWriten;
    }
}

void FOTA_ProgramWorkFlash(uint32_t address, uint32_t data)
{
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
    uint32_t writeData = data;
    programRowConfig.dataAddr = &writeData;

    uint32_t status = Cy_Flash_ProgramRow(&sromContext, &programRowConfig, CY_FLASH_DRIVER_BLOCKING);
    CY_ASSERT(status == CY_FLASH_DRV_SUCCESS);
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

    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_BLOCKING);
    Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_BLOCKING);

    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_BLOCKING);

    Cy_Flashc_WorkWriteDisable();
}


uint32_t FOTA_BankActiveFlagRead(void)
{
    return *(uint32_t *)(CFLASH_BANK_ACTIVE_ADDRESS);
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

    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_BLOCKING);
    Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_BLOCKING);

    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_BLOCKING);

    Cy_Flashc_WorkWriteDisable();
#endif
}


uint32_t FOTA_BankAPPIntegrityFlagRead(uint8_t isBankB)
{
#ifndef INTEGRITY_DISNABLE
    if (isBankB)
    {
        return *(uint32_t *)(CFLASH_BANKB_APP_INTEGRITY_ADDRESS);
    }
    else
    {
        return *(uint32_t *)(CFLASH_BANKA_APP_INTEGRITY_ADDRESS);
    }
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

    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_BLOCKING);
    Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_BLOCKING);

    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_BLOCKING);

    Cy_Flashc_WorkWriteDisable();
}


uint32_t FOTA_BankBCM0IntegrityFlagRead(void)
{
//  const cy_stc_flash_blankcheck_config_t blankCheckConfig =
//  {
//      .addrToBeChecked       = (uint32_t *)CFLASH_BANKB_CM0_INTEGRITY_ADDRESS,
//      .numOfWordsToBeChecked = 1,
//  };
//
//  static cy_un_flash_context_t sromContext = { 0 };
//  uint32_t status = Cy_Flash_BlankCheck(&sromContext, &blankCheckConfig, CY_FLASH_DRIVER_BLOCKING);
//  if (status != CY_FLASH_DRV_SUCCESS)
//  {
        return *(uint32_t *)(CFLASH_BANKB_CM0_INTEGRITY_ADDRESS);
//  }
//  else
//  {
//      return CFLASH_BANK_APP_INTEGRITY_DISABLE;
//  }
}



