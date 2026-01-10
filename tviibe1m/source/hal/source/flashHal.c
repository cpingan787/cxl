#include "flashHal.h"

#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"

#include "cy_flash.h"
#include "cy_mw_flash.h"


/*********************work flash driver***********************************/
static SemaphoreHandle_t m_workFlashMutexHandle = NULL;

#define WFLASH_MAXIMUM_SECTOR_NUM 24
#define TEST_W_LS_ADDR    (CY_WFLASH_LG_SBM_TOP) //0x14000000UL,指向T2G的work flash的首地址(该区域包含了2KB大数据块(72KB)与128字节的小数据块(24KB))
#define TEST_W_SS_ADDR    (CY_WFLASH_SM_SBM_TOP)
#define WFLASH_BYTE_SIZE  96*1024
#define WFLASH_MIRROR_AREA1_OFFSET  (0x00000000)
#define WFLASH_MIRROR_AREA3_OFFSET  (0x00200000)

#define WORKFLASH_BASE_ADDRESS	                TEST_W_LS_ADDR   //
#define WORKFLASH_PARAMETER_ADDRESS_OFFSET      0

#define ERASE_ADDRESS_INC	0x8000     // 32kbyte for 1M device

typedef union
{
  uint8_t u8Data[4096];
  uint32_t u32Data[1024];
}union_WorkFlashBuffer;

static union_WorkFlashBuffer workFlashBuffer;

static int WorkFlashWaitUntilRdy(uint8_t delayWait)
{
    uint32_t count;
    count = 0;
    while(Cy_Is_SROM_API_Completed() == false)
    {
      if(delayWait)
      {
        vTaskDelay(2);
        if(count>=500)
        {
          return -1;
        }
      }
      else
      {
        if(count>=1000000)
        {
          return -1;
        }
      }
      count++;
    }
    return 0;
}

/********************************************************
return : sector number
0:first sector
1:second sector
*********************************************************/
//FirstSectorAddress对应某个数据部分的首地址
static uint8_t GetNewSectorNum(uint32_t FirstSectorAddress,uint8_t *newSectorFlag)
{
  
    uint8_t selectSectorNum;
    uint8_t sector0Flag;
    uint8_t sector1Flag;
    uint8_t newFlag;
    
    //uint32_t* p_TestFlsTop = (uint32_t*)(TEST_W_LS_ADDR+FirstSectorAddress);
    
    sector0Flag = *((uint8_t *)(TEST_W_LS_ADDR+(FirstSectorAddress+4094)));
    sector1Flag = *((uint8_t *)(TEST_W_LS_ADDR+(FirstSectorAddress+4094+0x1000)));  
    
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
  Function:       FlashHalInit
  Description:    flash moudle init API
  Input:          无
  Output:         执行结果
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t FlashHalInit()
{
    Cy_FlashInit(true /*no blocking*/);
    CYREG_FLASHC_FLASH_CTL->stcField.u1WORK_ERR_SILENT = 1;
    m_workFlashMutexHandle = xSemaphoreCreateMutex();
    return 0;
}

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

    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    
    sectorBaseAddress = (blockAddress&0xE000)+WORKFLASH_PARAMETER_ADDRESS_OFFSET;//first sector address
    
    sectorNum = GetNewSectorNum(sectorBaseAddress,&newSectorFlag);
    
    alternativeAddress = sectorBaseAddress+WORKFLASH_BASE_ADDRESS+(uint32_t)sectorNum*0x1000; 
    startAddress = alternativeAddress+writeOffset;
    endAddress = startAddress + writeLength;
    
    //TBOX_PRINT("WorkFlashWriteBySector alternativeAddress %x\r\n",alternativeAddress);
    if(endAddress>=(alternativeAddress+0x1000))
    {
      xSemaphoreGive(m_workFlashMutexHandle);
      return -1;
    }
    Cy_Flashc_WorkWriteEnable();
    if(sectorNum==0)
    {
      pAddress = (uint32_t *)(sectorBaseAddress+WORKFLASH_BASE_ADDRESS+0x1000); 
    }
    else
    {
      pAddress = (uint32_t *)(sectorBaseAddress+WORKFLASH_BASE_ADDRESS);  
    }

    for(i=0;i<1024;i++)
    {
        workFlashBuffer.u32Data[i] = pAddress[i];
    }
    for(i=0;i<writeLength;i++)
    {
        workFlashBuffer.u8Data[i+writeOffset] = pWriteData[i];
    }
    workFlashBuffer.u8Data[4094] = newSectorFlag;      

    // Erase sector 0
    Cy_FlashSectorErase(alternativeAddress, CY_FLASH_DRIVER_NON_BLOCKING);    
    WorkFlashWaitUntilRdy(1);
    Cy_FlashSectorErase(alternativeAddress+0x800, CY_FLASH_DRIVER_NON_BLOCKING);    
    WorkFlashWaitUntilRdy(1);
    // Write sector 0 with 32bit access

    for(i=0;i<1024;i++)
    {
      Cy_FlashWriteWork(alternativeAddress+i*4,&workFlashBuffer.u32Data[i] , CY_FLASH_DRIVER_NON_BLOCKING);
      WorkFlashWaitUntilRdy(0);
    }	
    // Disable write access
    
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(m_workFlashMutexHandle);
   
    return 0;
  
}

int16_t FlashHalSmallDataBlockErase(uint32_t blockAddress)
{

    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    
    Cy_Flashc_WorkWriteEnable();

    // Erase sector 0
    Cy_FlashSectorErase(blockAddress, CY_FLASH_DRIVER_NON_BLOCKING);    
    WorkFlashWaitUntilRdy(1);

    // Disable write access
    
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}

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
int16_t FlashHalSmallDataBlockWrite(uint32_t blockAddress,uint32_t writeOffset,const uint8_t *pWriteData,uint32_t writeLength)
{
    //uint32_t startAddress;
    //uint32_t endAddress;
    uint32_t i;
    //uint32_t *pAddress;
    //uint32_t alternativeAddress;
    //uint32_t sectorBaseAddress;
    //uint8_t newSectorFlag;
    //uint8_t sectorNum;

    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    
    
    Cy_Flashc_WorkWriteEnable();
   
    for(i=0;i<writeLength;i++)
    {
        workFlashBuffer.u8Data[i] = pWriteData[i];
    }   

    // Erase sector 0
    Cy_FlashSectorErase(blockAddress, CY_FLASH_DRIVER_NON_BLOCKING);    
    WorkFlashWaitUntilRdy(1);

    for(i=0;i<(writeLength/4 + 1);i++)
    {
      Cy_FlashWriteWork(blockAddress + i*4,&workFlashBuffer.u32Data[i] , CY_FLASH_DRIVER_NON_BLOCKING);
      WorkFlashWaitUntilRdy(0);
    }	
    // Disable write access
    
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}

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
int16_t FlashHalDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength)
{
    uint32_t alternativeAddress;
    uint8_t newSectorFlag;
    uint8_t sectorNum;
    uint8_t *pDataAddress;
    uint32_t i;
    
    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    
    alternativeAddress = (blockAddress&0xFFFFE000)+(WORKFLASH_PARAMETER_ADDRESS_OFFSET);//first sector address
    
    sectorNum = GetNewSectorNum(alternativeAddress,&newSectorFlag);
    pDataAddress = (uint8_t *)(alternativeAddress + readOffset + WORKFLASH_BASE_ADDRESS);
    if(sectorNum==0)
    {
      pDataAddress += 0x1000;
    }
    
    for(i = 0;i < pReadLength;i++)
    {
      pReadData[i] = pDataAddress[i];
    }
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}

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
int16_t FlashHalSmallDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength)
{
    //uint32_t alternativeAddress;
    //uint8_t newSectorFlag;
    //uint8_t sectorNum;
    uint8_t *pDataAddress;
    uint32_t i;
    
    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    
    //alternativeAddress = (SectorAddress&0xFFFFE000)+(WORKFLASH_PARAMETER_ADDRESS_OFFSET);//first sector address
    
    //sectorNum = GetNewSectorNum(SectorAddress,&newSectorFlag);
    pDataAddress = (uint8_t *)(blockAddress + readOffset);
    //if(sectorNum==0)
    //{
    //  pDataAddress += 0x1000;
    //}
    
    for(i=0;i<pReadLength;i++)
    {
      pReadData[i] = pDataAddress[i];
    }
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}



/*************************************************
  Function:       FlashHalWriteBootFlag
  Description:    在flash中写入boot启动标记
  Input:          flagValue：写入的标记
  Output:         
  Return:         
  Others:         
*************************************************/
void FlashHalWriteBootFlag(uint32_t flagValue)
{
    return;
}

/*************************************************
  Function:       FlashHalReadBootFlag
  Description:    读取flash中的boot启动标记
  Input:          
  Output:         flash中的boot启动标记
  Return:         
  Others:        
*************************************************/
uint32_t FlashHalReadBootFlag(void)
{
    return 0;
}

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
int16_t FlashHalOtaFlashWrite(uint32_t writeAddress,const uint8_t *pData,uint32_t length)
{
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
    //SemaphoreHandle_t mutex;
    //mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    uint32_t addressToBeWriten = writeAddress;
    uint32_t totalSize         = length;
    uint32_t addressOfSource   = (uint32_t)pData;
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
        
        Cy_Flashc_MainWriteEnable();
#if(0)
        Cy_Flash_ProgramRow(&sromContext, &programRowConfig, CY_FLASH_DRIVER_BLOCKING);
#else
        Cy_FlashWriteCode(addressToBeWriten,(uint32_t *)writeBuffer,programRowConfig.dataSize,CY_FLASH_DRIVER_NON_BLOCKING);
        WorkFlashWaitUntilRdy(0);
#endif
        Cy_Flashc_MainWriteDisable();
        totalSize         -= dataSizeToBeWriten;
        addressToBeWriten += dataSizeToBeWriten;
        addressOfSource   += dataSizeToBeWriten;
        
    }
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}

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
int16_t FlashHalOtaFlashErase(uint8_t BankFlag)
{
    uint32_t EraseAddress;
    uint8_t length;
    //SemaphoreHandle_t mutex;
    //无论是在BankA还是B升级的时候另一个Bank的地址永远是这个，芯片底层已经做了映射
    // Erase Flash: Code Region(Large Sector), See 8.2.5.2 Address Mapping for 1 MB Memory
    if (BankFlag == 1) //B 分区
    {
        EraseAddress = CFLASH_BANKB_CM4_START_ADDRESS; //每个BANK前96K为CM0代码区
        length = 15 - 3;  //前3个32K留给CM0使用
    }
    else //APP2
    {
        EraseAddress = CFLASH_BANKB_CM4_START_ADDRESS;
        length = 15 - 3; //前3个32K留给CM0使用
    }
    
    //mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    
    Cy_Flashc_MainWriteEnable();
    for (uint8_t i = 0; i < length; i++)
    {
        //FOTA_SectorEraseFlash(EraseAddress);
        Cy_FlashSectorErase(EraseAddress,CY_FLASH_DRIVER_NON_BLOCKING);
        WorkFlashWaitUntilRdy(1);
        EraseAddress += ERASE_ADDRESS_INC; // 32kbyte
    }
    Cy_Flashc_MainWriteDisable();
    
    xSemaphoreGive(m_workFlashMutexHandle);

    return 0;
}

void FlashHalOtaIntegrityFlagUpdate(uint8_t flag)
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
    
    //SemaphoreHandle_t mutex;
    //mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy(1);
    //Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    //Fota_WaitUntilRdy(0);
    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy(0);
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(m_workFlashMutexHandle);
#endif
}

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
int16_t FlashHalOtaSetActiveBank(uint8_t BankFlag)
{
    uint32_t WorkFlashAddress, WorkFlashData;

    WorkFlashAddress = CFLASH_BANK_ACTIVE_ADDRESS;
    if (BankFlag) //当前运行BankB，正在升级的为BankA，进行Bank运行标志写入BankA
    {
        WorkFlashData = CFLASH_BANKB_ACTIVE_FLAG;
    }
    else
    {
        WorkFlashData = CFLASH_BANKA_ACTIVE_FLAG;
    }
    //SemaphoreHandle_t mutex;
    //mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake(m_workFlashMutexHandle, portMAX_DELAY );
    
    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy(1);
    /*Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    Fota_WaitUntilRdy(0);*/
    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy(0);
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}

/*************************************************
  Function:       FlashHalOtaGetActiveBank
  Description:    获取当前活动code 分区
  Input:
  Output:         当前活动code 分区标记
  Return:         0：A分区  1：B分区
  Others: 
*************************************************/
uint8_t FlashHalOtaGetActiveBank(void)
{
    if(Cy_Flashc_GetMainMap() == CY_FLASH_MAPPING_B)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/*************************************************
  Function:       FlashHalOtaSetBankSuccessFlag
  Description:    设置启动分区是否成功标记
  Input:          BankFlag：code分区标记 0：A分区  1：B分区
  Output:         返回成功标记
  Return:         /成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:
*************************************************/
int16_t FlashHalOtaSetBankSuccessFlag(uint8_t BankFlag,uint8_t successFlag)
{
    uint32_t WorkFlashAddress, WorkFlashData;
    //当前运行BankB，正在升级的为BankA，进行BankA代码完整性标志写入
    //if (Cy_Flashc_GetMainMap() == CY_FLASH_MAPPING_B)
    if(BankFlag == 1)
    {
        WorkFlashAddress = CFLASH_BANKB_APP_INTEGRITY_ADDRESS;
    }
    else
    {
        WorkFlashAddress = CFLASH_BANKA_APP_INTEGRITY_ADDRESS;
    }

    if (successFlag)
    {
        WorkFlashData = CFLASH_BANK_APP_INTEGRITY_ENABLE;
    }
    else
    {
        WorkFlashData = CFLASH_BANK_APP_INTEGRITY_DISABLE;
    }
    
    //SemaphoreHandle_t mutex;
    //mutex = PeripheralDriverHalGetFlashMutexHandle();
    xSemaphoreTake( m_workFlashMutexHandle, portMAX_DELAY );
    Cy_Flashc_WorkWriteEnable();
    //Erase the WorkFlash sector which has the marker
    Cy_FlashSectorErase(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy(1);
    //Cy_WorkFlashBlankCheck(WorkFlashAddress, CY_FLASH_DRIVER_NON_BLOCKING);
    //Fota_WaitUntilRdy(0);
    // Update WorkFlash with magic word in bank map A mode
    Cy_FlashWriteWork(WorkFlashAddress, &WorkFlashData, CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy(0);
    Cy_Flashc_WorkWriteDisable();
    xSemaphoreGive(m_workFlashMutexHandle);
    
    return 0;
}

