#include "stdlib.h"
//#include "crc8_16_32.h"
#include "mpuHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "string.h"

static FlashState_e g_flashState = E_FlashState_Idle;  
static uint8_t g_versionNumber[20] = {'v','0','0','1','.','0','0','2',};                              //软件版本号长度
//static Crc32Objec_t g_crc32Object;
//static uint8_t flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
static uint8_t g_fotaModeFlag = 0U;   
static uint16_t g_fotaModeTimeCount = 0U;  
static uint32_t g_crcData = 0xFFFFFFFF;
//static FlashHalMetaDataInfo_t s_MetaDataInfo;
/*************************************************
* Function:       FirmwareUpdateSdkEraseFlash
* Description:    Erase flash area according to specified address in data packet
* Input:          dataPack: Data packet containing erase command and address information
*                             - dataPack[10-13]: Verification code (should be 0x01,0x02,0x03,0x04)
*                             - dataPack[14-17]: Erase start address
* Output:         None
* Return:         0: Success
*                 1: Flash erase failed
*                 2: Data verification failed
* Others:         Uses global variables: flashAppFlag, g_flashState, g_crcData
*************************************************/
static uint8_t FirmwareUpdateSdkEraseFlash(volatile uint8_t *dataPack)
{
    // uint32_t address = 0;
     uint8_t ret = 0;
    
    // TBOX_PRINT("--------------------05 Erase flash code %d,%d,%d,%d------------------\r\n",dataPack[10],dataPack[11],dataPack[12],dataPack[13]);
    // // Verify data
    // if(dataPack[10] == 0x01 && dataPack[11] == 0x02 && 
    //             dataPack[12] == 0x03 && dataPack[13] == 0x04)
    // {
    //     address = ((dataPack[14] << 24) + (dataPack[15] << 16)+ (dataPack[16] << 8) + dataPack[17]);
	//     TBOX_PRINT("boot erase start address is 0x%x\r\n",address);
    //     if(address == FLASH_APP_BANKA_ABSTRACT_ADDRESS)
    //     {
    //         flashAppFlag = FLASH_APP_BANKA_ID;
    //         FlashHalWriteApp1SuccessFlag(FLASH_BANK_APP_INTEGRITY_DISABLE);
    //     }
    //     else if(address == FLASH_APP_BANKB_ABSTRACT_ADDRESS)
    //     {
    //         flashAppFlag = FLASH_APP_BANKB_ID;
    //         FlashHalWriteApp2SuccessFlag(FLASH_BANK_APP_INTEGRITY_DISABLE);
    //     }
    //     else
    //     {
    //         flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
    //         TBOX_PRINT("05 address error\r\n");
    //     }
    
    //     if(FLASH_HAL_STATUS_OK == FlashHalOtaFlashErase(flashAppFlag))
    //     {
    //         TBOX_PRINT("Erase Bank %d success！\r\n", flashAppFlag);
    //         g_flashState = E_FlashState_FlashErase;
    //         g_crcData = Crc32Init(&g_crc32Object,0x04C11DB7);
    //     }
    //     else
    //     {
    //         g_flashState = E_FlashState_Idle;
    //         ret = 1;
    //     }
    // }
    // else
    // {
    //     g_flashState = E_FlashState_Idle;
    //     ret = 2;
    // }
    return ret;
}

/*************************************************
  Function:       FirmwareUpdateSdkLoadCode
  Description:    Load firmware code into flash memory during OTA update process
  Input:          dataPack: Data packet containing address, length and code data
                  - dataPack[5-6]: Total packet length (big-endian)
                  - dataPack[10-13]: Target flash address (big-endian)
                  - dataPack[18...]: Actual code data to be written
  Output:         None
  Return:         Success: 0
                  Error codes:
                  - 0x06: Invalid flash state (not in erase state)
                  - 0x0A: Invalid parameters (address or length)
                  - 3: Flash write operation failed
                  - 0xFF: NULL pointer error
  Others:         Uses global variables g_flashState, g_crcData, g_crc32Object
                  Expects g_flashState to be E_FlashState_FlashErase before calling
*************************************************/
static uint8_t FirmwareUpdateSdkLoadCode(volatile uint8_t *dataPack)
{
    uint8_t ret = 0U;
    // uint32_t len = 0U;
    // uint32_t addr = 0U;

    // if(dataPack != NULL) 
    // {
    //     if(g_flashState == E_FlashState_FlashErase)
    //     {
    //         addr = ((uint32_t)dataPack[10] << 24) |
    //                ((uint32_t)dataPack[11] << 16) |
    //                ((uint32_t)dataPack[12] << 8)  |
    //                (uint32_t)dataPack[13];
            
    //         len = ((uint32_t)dataPack[5] << 8) | (uint32_t)dataPack[6];
    //         len -= 10; // Subtract header length
            
    //         TBOX_PRINT("--------------------06 addr=%08x len=%d cnt=%02x %02x------------------\r\n",
    //                   addr, len, dataPack[8], dataPack[9]);
    //         if((len <= 0 || len > (1024*1024)) || // Limit max length to 1MB
    //            (addr < FLASH_APP_BANKA_BASE_ADDRESS) || 
    //            (addr > FLASH_APP_BANKB_END_ADDRESS) || 
    //            ((addr + len) > FLASH_APP_BANKB_END_ADDRESS))
    //         {
    //             if(len <= 0 || len > (1024*1024))
    //             {
    //                 TBOX_PRINT("06 invalid data length: %d\r\n", len);
    //             }
    //             else if((addr < FLASH_APP_BANKA_BASE_ADDRESS) || (addr > FLASH_APP_BANKB_END_ADDRESS))
    //             {
    //                 TBOX_PRINT("06 address out of range: %08x\r\n", addr);
    //             }
    //             else if((addr + len) > FLASH_APP_BANKB_END_ADDRESS)
    //             {
    //                 TBOX_PRINT("06 address+length exceeds flash boundary: %08x\r\n", addr + len);
    //             }
    //             ret = 0x0A; 
    //         }
    //         else
    //         {
    //             if(FLASH_HAL_STATUS_OK != FlashHalOtaFlashWrite(addr, &dataPack[18], len))
    //             {
    //                 TBOX_PRINT("06 FlashHalOtaFlashWrite operation failed\r\n");
    //                 ret = 0x03; 
    //             }
    //             else
    //             {
    //                 g_crcData = Crc32(&g_crc32Object, g_crcData, (uint8_t *)addr, len);
    //             }
    //         }
    //     }
    //     else
    //     {
    //         // System is not in correct state for writing firmware
    //         TBOX_PRINT("--------------------06 Invalid flash state: %d (expected: %d)------------------\r\n", 
    //                   g_flashState, E_FlashState_FlashErase);
    //         ret = 0x06; 
    //     }
    // }
    // else
    // {
    //     TBOX_PRINT("FirmwareUpdateSdkLoadCode: dataPack is NULL\r\n");
    // }
    return ret;
}

/*************************************************
  Function:       FirmwareUpdateSdkCodeCheck
  Description:    Verify downloaded firmware code integrity and update metadata
  Input:          dataPack: Data packet containing checksum and completion information
                  - dataPack[10-13]: Expected CRC32 checksum (big-endian)
  Output:         None
  Return:         Success: 0
                  Error: 0x01 (CRC32 checksum mismatch)
  Others:         Uses global variables g_crcData, flashAppFlag, s_MetaDataInfo
                  Updates flash metadata and integrity flags upon successful verification
*************************************************/
static uint8_t FirmwareUpdateSdkCodeCheck(volatile uint8_t *dataPack)
{
    uint8_t ret = 0U;
    // uint32_t checksum = 0U;

    // TBOX_PRINT("--------------------07 Download Complete------------------\r\n");

    // g_crcData ^= 0xFFFFFFFF; 
    // checksum = (dataPack[10]<<24)+(dataPack[11]<<16)+(dataPack[12]<<8)+dataPack[13];
    // if(checksum == g_crcData)
    // {
    //     FlashHalGetMetaDataInfo(&s_MetaDataInfo);
    //     if(FLASH_APP_BANKA_ID == flashAppFlag)  
    //     {
    //         TBOX_PRINT("Update and virify app1 success!\r\n");
    //         FlashHalWriteApp1SuccessFlag(FLASH_BANK_APP_INTEGRITY_ENABLE); //APP1 application update completed
    //         s_MetaDataInfo.m_metaAppFlag = FLASH_APP_BANKA_ACTIVE_FLAG;
    //         FlashHalWriteMetaDataInfo(&s_MetaDataInfo);
    //     }
    //     else if(FLASH_APP_BANKB_ID == flashAppFlag) 
    //     {
    //         TBOX_PRINT("Update and virify app2 success!\r\n");
    //         FlashHalWriteApp2SuccessFlag(FLASH_BANK_APP_INTEGRITY_ENABLE); //APP2 application update completed
    //         s_MetaDataInfo.m_metaAppFlag = FLASH_APP_BANKB_ACTIVE_FLAG;
    //         FlashHalWriteMetaDataInfo(&s_MetaDataInfo);
    //     }
    // }
    // else
    // {
    //     TBOX_PRINT("checksum = %x, g_crcData = %x\r\n", checksum, g_crcData);
    //     ret = 0x01; 
    // }
    return ret;
}

/*************************************************
  Function:       FirmwareUpdateSdkCycleProcess
  Description:    Firmware update module cycle process interface
  Input:          None
  Output:         None
  Return:         None
  Others:         
*************************************************/
void FirmwareUpdateSdkCycleProcess(void)
{
    // uint8_t i = 0U;
    // uint8_t cmdClass = 0U;
    // uint8_t dataTxLen = 0U;
    // uint8_t dataTxAraay[20] = {0};
    // uint16_t rxNum = 0U;
    // UartReceivePackType_t newPack = UART_RECEIVE_PACK_OLD;
    // FirmwareUpdateSdkCmd_e s_UpdateCmd = E_FirmwareUpdateSdkCmd_Default;
    // newPack = MpuHalGetNewPack();
    // if(newPack == UART_RECEIVE_PACK_NEW)
    // {
    //     // TBOX_PRINT("NewPack:");
    //     // for(i = 0; i < 8U; i++)
    //     // {
    //     //     TBOX_PRINT("%02x ", g_rxBuffer[i]);
    //     // }
    //     // TBOX_PRINT("\r\n");

    //     rxNum =  MpuHalGetUartRxDataNum();
    //     if(rxNum >= MPU_PROTOCAL_HEADER_LEN)
    //     {
    //         rxNum = 0U;
    //         newPack = UART_RECEIVE_PACK_OLD;
    //         MpuHalSetNewPack(newPack);
    //         cmdClass = g_rxBuffer[2];   
    //         if(cmdClass == PROTOCOL_AID_FWUPD)
    //         {
    //             s_UpdateCmd = (FirmwareUpdateSdkCmd_e)g_rxBuffer[3];
    //             memset(dataTxAraay,0,sizeof(dataTxAraay));
    //             dataTxAraay[0] = g_rxBuffer[8];
    //             dataTxAraay[1] = g_rxBuffer[9];
    //             switch(s_UpdateCmd)
    //             {
    //                 case E_FirmwareUpdateSdkCmd_GetMcuVersion:  // Read version number
    //                     TBOX_PRINT("--------------------01 Read Version Number------------------\r\n");
    //                     dataTxAraay[2] = 0x00; 
    //                     for(i = 0; i < 11U; i++)
    //                     {
    //                         dataTxAraay[3 + i] = g_versionNumber[i];
    //                     }
    //                     dataTxLen = 14U;
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_GetMcuSeed:  // Get seed command
    //                     TBOX_PRINT("--------------------02 Get Seed Command------------------\r\n");
    //                     dataTxAraay[2] = 0x00; 
    //                     dataTxAraay[3] = 0x01;
    //                     dataTxAraay[4] = 0x02;
    //                     dataTxAraay[5] = 0x03;
    //                     dataTxAraay[6] = 0x04;
    //                     dataTxLen = 7U;
    //                     FirmwareUpdateSdkResetTimer();
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_UnlockMcuFlash:  // Unlock flash download function
    //                     TBOX_PRINT("--------------------03 Unlock Flash Download Function %d,%d,%d,%d------------------\r\n",
    //                               g_rxBuffer[10], g_rxBuffer[11], g_rxBuffer[12], g_rxBuffer[13]);
    //                     if((g_rxBuffer[10] == 0x01) && (g_rxBuffer[11] == 0x02) && 
    //                        (g_rxBuffer[12] == 0x03) && (g_rxBuffer[13] == 0x04))
    //                     {
    //                         dataTxAraay[2] = 0x00; 
    //                     }
    //                     else
    //                     {
    //                         dataTxAraay[2] = 0x01; 
    //                     }
    //                     dataTxLen = 3U;
    //                     FirmwareUpdateSdkResetTimer();
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_EnterDownloadMode:  // Enter download state
    //                     TBOX_PRINT("--------------------04 Enter Download State %d,%d,%d,%d------------------\r\n",
    //                               g_rxBuffer[10], g_rxBuffer[11], g_rxBuffer[12], g_rxBuffer[13]);
    //                     if((g_rxBuffer[10] == 0x01) && (g_rxBuffer[11] == 0x02) && 
    //                        (g_rxBuffer[12] == 0x03) && (g_rxBuffer[13] == 0x04))
    //                     {
    //                         FlashHalGetMetaDataInfo(&s_MetaDataInfo);
    //                         s_MetaDataInfo.m_metaBootFlag = FLASH_BOOT_JUMP_ACTIVE_FLAG;
    //                         FlashHalWriteMetaDataInfo(&s_MetaDataInfo);
    //                         dataTxAraay[2] = 0x00; 
    //                         FirmwareUpdateSdkResetTimer();
    //                     }
    //                     else
    //                     {
    //                         dataTxAraay[2] = 0x01; 
    //                     }
    //                     dataTxLen = 3U;
    //                     g_flashState = E_FlashState_FlashIn;
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_EraseMcuMemory:  // Erase flash code
    //                     dataTxAraay[2] = FirmwareUpdateSdkEraseFlash(g_rxBuffer);
    //                     dataTxLen = 3U;
    //                     FirmwareUpdateSdkResetTimer();
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_DownloadMcuMemory:  // Download update data
    //                     dataTxAraay[2] = FirmwareUpdateSdkLoadCode(g_rxBuffer);
    //                     dataTxLen = 3U;
    //                     FirmwareUpdateSdkResetTimer();
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_VirifyMcuMemory:  // Download complete
    //                     dataTxAraay[2] = FirmwareUpdateSdkCodeCheck(g_rxBuffer);
    //                     dataTxLen = 3U;
    //                     FirmwareUpdateSdkResetTimer();
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_SoftwareResetMcu:  // Reset command
    //                     TBOX_PRINT("--------------------08 Reset Command------------------\r\n");
    //                     dataTxAraay[2] = 0x00; 
    //                     dataTxLen = 3U;
    //                     MpuHalTransmit(cmdClass, (uint8_t)s_UpdateCmd, dataTxAraay, dataTxLen);
    //                     TimerHalDelayMs(500);
    //                     PeripheralHalMcuHardReset();
    //                     break;
                        
    //                 case E_FirmwareUpdateSdkCmd_GetMcuBankId:  // Get app running status
    //                     TBOX_PRINT("--------------------09 Get App Running Status %d------------------\r\n", 2);
    //                     dataTxAraay[2] = 0x00; 
    //                     dataTxAraay[3] = 0x00;
    //                     dataTxLen = 4U;
    //                     break;
                        
    //                 default:  // Unsupported command
    //                     TBOX_PRINT("--------------------Unsupported Command %02x------------------\r\n", s_UpdateCmd);
    //                     dataTxAraay[2] = 0xFF; 
    //                     dataTxLen = 3U;
    //                     break;
    //             }
      
    //             if(s_UpdateCmd != E_FirmwareUpdateSdkCmd_SoftwareResetMcu)
    //             {
    //                 if(MpuHalTransmit(cmdClass, (uint8_t)s_UpdateCmd, dataTxAraay, dataTxLen) != MPU_HAL_STATUS_OK)
    //                 {
    //                     TBOX_PRINT("Mcu uart transmit error\r\n");
    //                 }
    //             }
    //         }
    //         else if(cmdClass == 0x05)
    //         {
    //             // Handle command class 0x05 if needed in the future
    //         }
    //         else
    //         {
    //             // Handle unsupported command class
    //             TBOX_PRINT("--------------------Unsupported Command Class %02x------------------\r\n", cmdClass);
    //         }
    //     }
    //     else
    //     {
    //         TBOX_PRINT("FirmwareUpdateSdkCycleProcess: Insufficient data bytes\r\n");
    //     }
    // }
    // else
    // {
    //     //TBOX_PRINT("FirmwareUpdateSdkCycleProcess: No new package\r\n");
    // }
    return;
}

/*************************************************
  Function:       FirmwareUpdateSdkResetTimer
  Description:    Reset the FOTA mode timer and enable FOTA mode flag
  Input:          None
  Output:         None
  Return:         None
  Others:         Modifies global variables g_fotaModeTimeCount and g_fotaModeFlag
                  Resets the timer counter to 0 and sets the FOTA mode flag to 1
*************************************************/
//static void FirmwareUpdateSdkResetTimer(void)
//{
//    g_fotaModeTimeCount = 0;
//    g_fotaModeFlag = 1;
//}

/*************************************************
  Function:       FirmwareUpdateSdkTimerCallback
  Description:    Timer callback function for firmware update process
  Input:          None
  Output:         None
  Return:         None
  Others:         Monitors FOTA mode timer and triggers system reset after timeout
                  Checks if in bootloader type 1 or FOTA mode is enabled
                  Resets system after 10 seconds of inactivity (10000 timer ticks)
*************************************************/
void FirmwareUpdateSdkTimerCallback(void)
{
    // if((FlashHalGetEnterBootType() == 1) || (g_fotaModeFlag == 1))
    // {
    //     g_fotaModeTimeCount++;
    //     if(g_fotaModeTimeCount >= 10000)         //10s
    //     {
    //         g_fotaModeTimeCount = 0;
    //         PeripheralHalMcuHardReset();
    //     }
    // }
}
