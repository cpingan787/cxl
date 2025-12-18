/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: flashHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "flashHal.h"
#include "logHal.h"
#include "string.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "flash_drv.h"
#include "int_drv.h"

/****************************** Macro Definitions ******************************/
#define WORKFLASH_BASE_ADDRESS                      FLASH_DATA_BASE_ADDR
#define WORKFLASH_PARAMETER_ADDRESS_OFFSET          (0U)
#define ERASE_ADDRESS_INC                           (0x8000U)                // 32kbyte for 1M device
#define FLASH_YIELD_EVERY_PHRASES                   (32U)
/****************************** Type Definitions ******************************/
typedef union
{
    uint8_t u8Data[FLASH_SECTOR_SIZE];
    uint32_t u32Data[FLASH_SECTOR_SIZE / sizeof(uint32_t)];
}WorkFlashBuffer_u;

/****************************** Global Variables ******************************/
/* work flash driver */
static SemaphoreHandle_t g_workFlashMutexHandle = NULL;
unsigned int FLASH_IntFlag;
static uint8_t g_flashHalSectorBuf[FLASH_SECTOR_SIZE];
FLASH_CmdConfig_t g_stcFlashCmdExeConfig = 
{
    FLASH_CMD_ACT_WAIT,
    NULL
};

const static FlashHalMetaDataInfo_t g_flashHalMetaDataDefaultInfo = 
{
    .m_metaDataHeaderFlag      = FLASH_META_DATA_HEADER_END_FLAG,
    .m_metaBootFlag            = FLASH_BOOT_JUMP_ACTIVE_FLAG,
    .m_metaAppFlag             = FLASH_APP_BANKA_ACTIVE_FLAG,
    .m_metaEndFlag             = FLASH_META_DATA_HEADER_END_FLAG,
};

static WorkFlashBuffer_u g_workFlashBuffer;

/****************************** Function Declarations *************************/
static uint8_t GetNewSectorNum(uint32_t FirstSectorAddress,uint8_t *newSectorFlag);
static ResultStatus_t FlashHalIsMetaDataValid(const FlashHalMetaDataInfo_t *pMetaData);

/****************************** Public Function Implementations ***************/
/*************************************************
  Function:       GetNewSectorNum
  Description:    Get new sector number for flash writing
  Input:          FirstSectorAddress - First sector address
                  newSectorFlag - Pointer to store new sector flag
  Output:         newSectorFlag - Updated with new flag value
  Return:         Selected sector number (0 or 1)
  Others:         
*************************************************/
static uint8_t GetNewSectorNum(uint32_t FirstSectorAddress,uint8_t *newSectorFlag)
{
  
    uint8_t selectSectorNum;
    uint8_t sector0Flag;
    uint8_t sector1Flag;
    uint8_t newFlag;
    
    //uint32_t* p_TestFlsTop = (uint32_t*)(TEST_W_LS_ADDR+FirstSectorAddress);
    
    sector0Flag = *((uint8_t *)(FLASH_DATA_BASE_ADDR+(FirstSectorAddress+8190)));
    sector1Flag = *((uint8_t *)(FLASH_DATA_BASE_ADDR+(FirstSectorAddress+8190+0x2000)));  
    
    if(sector0Flag == 0xFF)//select sector0
    {
        selectSectorNum = 0;
        newFlag = 0;
    }
    else if(sector1Flag == 0xFF)//select sector1
    {
        selectSectorNum = 1;
        newFlag = sector0Flag+1;        
    }
    else
    {
        if(sector0Flag < sector1Flag)
        {
            if(sector0Flag != 0)//select sector0
            {
                selectSectorNum = 0;
                newFlag = sector1Flag + 1;
            }
            else//select sector1
            {
              if(sector1Flag != 1)
              {
                selectSectorNum = 1;
                newFlag = sector0Flag + 1;                
              }
              else
              {
                selectSectorNum = 0;
                newFlag = sector1Flag + 1;            
              }
            }
        }
        else
        {
          if(sector1Flag != 0)
          {
                selectSectorNum = 1;
                newFlag = sector0Flag + 1;
          }
          else
          {
            if(sector0Flag != 1)
            {
              selectSectorNum = 0;
              newFlag = sector1Flag + 1;
            }
            else
            {
                selectSectorNum = 1;
                newFlag = sector0Flag + 1;       
            }
          }
        }
    }
    if(newFlag == 0xFF)
    {
        newFlag = 0;
    } 
    *newSectorFlag = newFlag;
    return selectSectorNum;
}

/*************************************************
  Function:       FLASHTEST_CCIF_ISR
  Description:    FLASH CCIF interrupt service routine
  Input:          None
  Output:         None
  Return:         None
  Others:         Handles flash command complete interrupt
*************************************************/
void FLASHTEST_CCIF_ISR(void)
{
    // FLASH_IntFlag = 1;
    FLASH_IntMask(FLASH_INT_CCIF, MASK);
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
    uint8_t tryCnt = 3;

    do
    {
        FLASH_InstallCallBackFunc(FLASH_INT_CCIF, FLASHTEST_CCIF_ISR);
        INT_SetPriority(FLASH_CmdComplete_IRQn, 0x0);    //设置 FLASH_IRQn 的中断优先级。(高)0-3(低)
        INT_EnableIRQ(FLASH_CmdComplete_IRQn);            //使能 FLASH_IRQn 中断
        FLASH_IntClear(FLASH_INT_ALL);

        if(FLASH_Init() == SUCC)
        {
            break;
        }
        tryCnt--;
        TBOX_PRINT("falsh init error\r\n");
    } while (tryCnt);
  
    g_workFlashMutexHandle = xSemaphoreCreateMutex();
    FLASH_IntFlag = 0;

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
    uint8_t ret;

    xSemaphoreTake( g_workFlashMutexHandle, portMAX_DELAY );
    
    sectorBaseAddress = (blockAddress & 0xC000) + WORKFLASH_PARAMETER_ADDRESS_OFFSET;   //first sector address
    
    sectorNum = GetNewSectorNum(sectorBaseAddress,&newSectorFlag);
    
    alternativeAddress = sectorBaseAddress + WORKFLASH_BASE_ADDRESS + (uint32_t)sectorNum * 0x2000; 
    startAddress = alternativeAddress + writeOffset;
    endAddress = startAddress + writeLength;
    
    //TBOX_PRINT("WorkFlashWriteBySector alternativeAddress %x\r\n",alternativeAddress);
    if(endAddress >= (alternativeAddress + 0x2000))
    {
        xSemaphoreGive(g_workFlashMutexHandle);
        return -1;
    }
    
    if(sectorNum==0)
    {
        pAddress = (uint32_t *)(sectorBaseAddress + WORKFLASH_BASE_ADDRESS + 0x2000); 
    }
    else
    {
        pAddress = (uint32_t *)(sectorBaseAddress + WORKFLASH_BASE_ADDRESS);  
    }

    for(i = 0; i < 2048; i++)
    {
        g_workFlashBuffer.u32Data[i] = pAddress[i];
    }
    for(i = 0; i < writeLength; i++)
    {
        g_workFlashBuffer.u8Data[i + writeOffset] = pWriteData[i];
    }
    g_workFlashBuffer.u8Data[8190] = newSectorFlag;      

    // Erase sector 0
    COMMON_DISABLE_INTERRUPTS();        //禁止 IRQ 全局中断
    ret = FLASH_EraseSector(alternativeAddress, &g_stcFlashCmdExeConfig);
    COMMON_ENABLE_INTERRUPTS();         //使能 IRQ 全局中断
    if (ret != SUCC)
    {
        xSemaphoreGive(g_workFlashMutexHandle);
        return -1;
    }

    // Write sector 0 with 32bit access

    for(i = 0; i < 512; i++)
    {
        COMMON_DISABLE_INTERRUPTS();      //禁止 IRQ 全局中断
        ret = FLASH_ProgramPhrase(alternativeAddress + i * 16, (uint8_t *)&g_workFlashBuffer.u32Data[i * 4], &g_stcFlashCmdExeConfig);
        COMMON_ENABLE_INTERRUPTS();        //使能 IRQ 全局中断
        if (ret != SUCC)
        {
            xSemaphoreGive(g_workFlashMutexHandle);
            return -1;
        }

        if (((i + 1U) % FLASH_YIELD_EVERY_PHRASES) == 0U)
        {
            vTaskDelay(1);               //enable task switch,prevent task blocked in ISR             
        }
    }    
    // Disable write access
    
    xSemaphoreGive(g_workFlashMutexHandle);
   
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
    uint32_t i = 0U;
    
    xSemaphoreTake( g_workFlashMutexHandle, portMAX_DELAY );
    
    alternativeAddress = (blockAddress & 0xFFFFC000) + (WORKFLASH_PARAMETER_ADDRESS_OFFSET);//first sector address
    
    sectorNum = GetNewSectorNum(alternativeAddress,&newSectorFlag);
    pDataAddress = (uint8_t *)(alternativeAddress + readOffset + WORKFLASH_BASE_ADDRESS);
    if(sectorNum == 0)
    {
      pDataAddress += 0x2000;
    }
    
    for(i = 0;i < pReadLength;i++)
    {
      pReadData[i] = pDataAddress[i];
    }
    xSemaphoreGive(g_workFlashMutexHandle);
    
    return 0;
}

/*************************************************
  Function:       FlashHalSmallDataBlockRead
  Description:    Flash small block read operation
  Input:          blockAddress - Base block address
                  readOffset - Offset within the block
                  pReadData - Buffer to store read data
                  pReadLength - Number of bytes to read
  Output:         none
  Return:         0 (FLASH_HAL_STATUS_OK) - Success
  Others:         Uses mutual exclusion to protect flash access
                  Returns immediately with success code
*************************************************/
int16_t FlashHalSmallDataBlockRead(uint32_t blockAddress,uint32_t readOffset,uint8_t *pReadData,uint32_t pReadLength)
{
    uint8_t *pDataAddress;
    uint32_t i = 0U;
    
    xSemaphoreTake( g_workFlashMutexHandle, portMAX_DELAY );  
    pDataAddress = (uint8_t *)(blockAddress + readOffset);
    
    for(i = 0;i < pReadLength;i++)
    {
      pReadData[i] = pDataAddress[i];
    }
    xSemaphoreGive(g_workFlashMutexHandle);
    
    return 0;
}

/*************************************************
  Function:       FlashHalOtaGetActiveBank
  Description:    Get current active code partition
  Input:          none
  Output:         none
  Return:         1 - Bank A active
                  2 - Bank B active
                  0 - Invalid or undefined state
  Others:         Determined by build target definition
                  Uses __BUILD_TARGET__ macro to identify active bank
*************************************************/
uint8_t FlashHalOtaGetActiveBank(void)
{
    uint8_t bank = 0xFF;
#if __BUILD_TARGET__ == RELEASEAPP1
    bank = 1;
#elif __BUILD_TARGET__ == RELEASEAPP2  
    bank = 2;
#else
    bank = 0;
#endif
    return bank;
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
    uint32_t sector_start;
    uint32_t sector_end;
    uint32_t offset_in_sector;
    uint32_t aligned_address;
    uint32_t padding_before;
    uint32_t aligned_end_address;
    const uint32_t meta_data_size = sizeof(FlashHalMetaDataInfo_t);

    if (pMetaData == NULL)
    {
        TBOX_PRINT("Line %d: NULL pointer for meta data write\r\n", __LINE__);
        ret = ERR;
    }
    else
    {
        // First write to Image A region
        aligned_address = FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS & ~(FLASH_WRITE_MINIMAM_SIZE - 1);
        padding_before = FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS - aligned_address;
        aligned_end_address = ((FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS + meta_data_size - 1) + (FLASH_WRITE_MINIMAM_SIZE - 1)) & ~(FLASH_WRITE_MINIMAM_SIZE - 1);
        sector_start = aligned_address & ~(FLASH_SECTOR_SIZE - 1);
        sector_end = sector_start + FLASH_SECTOR_SIZE - 1;  
        if (aligned_address >= sector_end || aligned_end_address > sector_end)
        {
            TBOX_PRINT("Line %d: Meta data crosses sector boundary\r\n", __LINE__);
            ret = ERR;
        }
        else
        {
            // Initialize buffer with all zeros
            memset(g_flashHalSectorBuf, 0, FLASH_SECTOR_SIZE);      
            // Copy metadata to the correct position in the buffer
            offset_in_sector = aligned_address - sector_start;
            memcpy(&g_flashHalSectorBuf[offset_in_sector + padding_before], pMetaData, meta_data_size);
            // Disable interrupts before erase
            COMMON_DISABLE_INTERRUPTS();
            ret = FLASH_EraseSector(sector_start, &g_stcFlashCmdExeConfig);
            COMMON_ENABLE_INTERRUPTS();
            if (ret == SUCC)
            {
                // Disable interrupts before program
                COMMON_DISABLE_INTERRUPTS();
                ret = FLASH_Program(sector_start, FLASH_SECTOR_SIZE, g_flashHalSectorBuf, NULL);
                COMMON_ENABLE_INTERRUPTS();      
                if (ret != SUCC)
                {
                    TBOX_PRINT("Line %d: Sector program failed %d\r\n", __LINE__, ret);
                }
            }
            else
            {
                TBOX_PRINT("Line %d: Sector erase failed %d\r\n", __LINE__, ret);
            }
        }       
        // If first write succeeded, write to Image B region
        if (ret == SUCC)
        {
            aligned_address = FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS & ~(FLASH_WRITE_MINIMAM_SIZE - 1);
            padding_before = FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS - aligned_address;
            aligned_end_address = ((FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS + meta_data_size - 1) + (FLASH_WRITE_MINIMAM_SIZE - 1)) & ~(FLASH_WRITE_MINIMAM_SIZE - 1);
            
            sector_start = aligned_address & ~(FLASH_SECTOR_SIZE - 1);
            sector_end = sector_start + FLASH_SECTOR_SIZE - 1;            
            if (aligned_address >= sector_end || aligned_end_address > sector_end)
            {
                TBOX_PRINT("Line %d: Meta data crosses sector boundary\r\n", __LINE__);
                ret = ERR;
            }
            else
            {
                // Initialize buffer with all zeros
                memset(g_flashHalSectorBuf, 0, FLASH_SECTOR_SIZE);     
                // Copy metadata to the correct position in the buffer
                offset_in_sector = aligned_address - sector_start;
                memcpy(&g_flashHalSectorBuf[offset_in_sector + padding_before], pMetaData, meta_data_size);
                // Disable interrupts before erase
                COMMON_DISABLE_INTERRUPTS();
                ret = FLASH_EraseSector(sector_start, &g_stcFlashCmdExeConfig);
                COMMON_ENABLE_INTERRUPTS();
                if (ret == SUCC)
                {
                    // Disable interrupts before program
                    COMMON_DISABLE_INTERRUPTS();
                    ret = FLASH_Program(sector_start, FLASH_SECTOR_SIZE, g_flashHalSectorBuf, NULL);
                    COMMON_ENABLE_INTERRUPTS();
                    if (ret != SUCC)
                    {
                        TBOX_PRINT("Line %d: Sector program failed %d\r\n", __LINE__, ret);
                    }
                }
                else
                {
                    TBOX_PRINT("Line %d: Sector erase failed %d\r\n", __LINE__, ret);
                }
            }
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
