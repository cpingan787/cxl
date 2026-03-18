/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: firmwareUpdateSdk.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "stdlib.h"
#include "string.h"
#include "mpuHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "MemIf_Types.h"
#include "Std_Types.h"
#include "FlsIf.h"
#include "crc8_16_32.h"
#include "Mcu.h"

// CRC 校验暂时不做
// #include "crc8_16_32.h"

/****************************** Macro Definitions ******************************/
#define FLASH_APP_BANKA_ACTIVE_ADDRESS           0x00050000 
#define FLASH_APP_BANKA_ABSTRACT_ADDRESS         0x00050200 
#define FLASH_APP_BANKA_BASE_ADDRESS             0x00050200  // A区代码起始
#define FLASH_APP_BANKA_END_ADDRESS              0x0011FFFF  // A区代码结束
#define FLASH_APP_BANKA_VALID_FLAG_ADDR          0x00050000  // 大小 0x200
#define APP_BANK_SIZE                            0x000CFE00
#define FLASH_APP_DEFALT_BANK_ID                 0x00
#define FLASH_APP_BANKA_ID                       0x01
#define FLASH_BANK_APP_INTEGRITY_DISABLE         0x00 
#define FLASH_BANK_APP_INTEGRITY_ENABLE          0x01 
#define FLASH_APP_BANKA_ACTIVE_FLAG              0x01

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static FlashState_e g_flashState = E_FlashState_Idle;  
static uint8_t g_versionNumber[20] = {'v','0','0','1','.','0','0','2',};                              //软件版本号长度
static uint8_t flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
static uint8_t g_fotaModeFlag = 0U;   
static uint16_t g_fotaModeTimeCount = 0U;  
static uint8_t g_mpuOtaFlag = 0U;

// CRC相关
static Crc32Objec_t g_crc32Object;
static uint32_t g_crcData = 0xFFFFFFFF;
// static FlashHalMetaDataInfo_t s_MetaDataInfo;

/****************************** Function Declarations *************************/
static uint8_t FirmwareUpdateSdkLoadCode(volatile uint8_t *dataPack, uint16_t dataBufferSize);
static uint8_t FirmwareUpdateSdkEraseFlash(volatile uint8_t *dataPack);
static uint8_t FirmwareUpdateSdkCodeCheck(volatile uint8_t *dataPack);

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: FirmwareUpdateSdkEraseFlash
 Description: 擦除指定地址的Flash代码
 Input: dataPack 数据打包结构体指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
static uint8_t FirmwareUpdateSdkEraseFlash(volatile uint8_t *dataPack)
{
    uint32_t address = 0;
    uint8_t ret = 0;
    
    TBOX_PRINT("--------------------05 Erase flash code %d,%d,%d,%d------------------\r\n",dataPack[2],dataPack[3],dataPack[4],dataPack[5]);
    
    // Verify data
    if (dataPack[2] == 0x01 && dataPack[3] == 0x02 && dataPack[4] == 0x03 && dataPack[5] == 0x04)
    {
        address = ((dataPack[6] << 24) + (dataPack[7] << 16)+ (dataPack[8] << 8) + dataPack[9]);
        TBOX_PRINT("boot erase start address is 0x%x\r\n",address);
        
        if (address == FLASH_APP_BANKA_ABSTRACT_ADDRESS)
        {
            flashAppFlag = FLASH_APP_BANKA_ID;
            // 先注释掉，等后期补齐 Boot 状态机驱动
            // FlashHalWriteApp1SuccessFlag(FLASH_BANK_APP_INTEGRITY_DISABLE);
        }
        else
        {
            flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
            TBOX_PRINT("05 address error\r\n");
            return 1; // error
        }
        address = 0x50000;
        uint32_t eraseLength = APP_BANK_SIZE;  // 长度待确认, 使用传入值还是常量
        
        // 1. 发起擦除请求
        uint8_t retValue = FlsIf_Erase(address, eraseLength);
        
        if (retValue == E_OK)
        {
            TBOX_PRINT("Erase Bank %d success\r\n", flashAppFlag);
            g_flashState = E_FlashState_FlashErase;
            g_crcData = Crc32Init(&g_crc32Object, 0xEDB88320); 
            retValue = FlsIf_Write(FLASH_APP_BANKA_ACTIVE_ADDRESS, 4, 0xFF);
            if (retValue != E_OK)
            {
                TBOX_PRINT("Write Bank %d active flag failed %02x\r\n", flashAppFlag, retValue);
                ret = 0x02; 
            }
        }
        else
        {
            g_flashState = E_FlashState_Idle;
            ret = 1; // Erase Fail
        }
    }
    else
    {
        g_flashState = E_FlashState_Idle;
        ret = 2;
    }
    return ret;
}

/*************************************************
 Function: FirmwareUpdateSdkLoadCode
 Description: 加载代码到指定地址
 Input: dataPack 数据打包结构体指针
        dataBufferSize 数据缓冲区大小
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
static uint8_t FirmwareUpdateSdkLoadCode(volatile uint8_t *dataPack, uint16_t dataBufferSize)
{
    uint8_t ret = 0U;
    uint32_t len = 0U;
    uint32_t addr = 0U;

    if(dataPack != NULL) 
    {
        if(g_flashState == E_FlashState_FlashErase)
        {
            addr = ((uint32_t)dataPack[2] << 24) | ((uint32_t)dataPack[3] << 16) | ((uint32_t)dataPack[4] << 8)  | (uint32_t)dataPack[5];
            
            len = dataBufferSize - 10;
            
            TBOX_PRINT("--------------------06 addr=%08x len=%d cnt=%02x %02x------------------\r\n", addr, len, dataPack[0], dataPack[1]);
                      
            // 边界检查
            if((len <= 0 || len > (1024*1024)) || 
               (addr < FLASH_APP_BANKA_BASE_ADDRESS) || 
               (addr > FLASH_APP_BANKA_END_ADDRESS) ||  
               ((addr + len) > FLASH_APP_BANKA_END_ADDRESS)) 
            {
                if(len <= 0 || len > (1024*1024))
                {
                    TBOX_PRINT("06 invalid data length: %d\r\n", len);
                }
                else if((addr < FLASH_APP_BANKA_BASE_ADDRESS) || (addr > FLASH_APP_BANKA_END_ADDRESS))
                {
                    TBOX_PRINT("06 address out of range: %08x\r\n", addr);
                }
                else if((addr + len) > FLASH_APP_BANKA_END_ADDRESS)
                {
                    TBOX_PRINT("06 address+length exceeds A Bank boundary: %08x\r\n", addr + len);
                }
                ret = 0x0A; 
            }
            else
            {
                uint8_t flsRet = FlsIf_Write(addr, len, (const uint8_t *)&dataPack[10]);
                
                if (flsRet == E_OK)
                {  
                    /* 校验并累加 CRC */
                    g_crcData = Crc32(&g_crc32Object, g_crcData, (uint8_t *)addr, len);
                }
                else
                {
                    TBOX_PRINT("06 Fls_Write request rejected\r\n");
                    ret = 0x03; 
                }
            }
        }
        else
        {
            TBOX_PRINT("--------------------06 Invalid flash state: %d (expected: %d)------------------\r\n", 
                      g_flashState, E_FlashState_FlashErase);
            ret = 0x06; 
        }
    }
    else
    {
        TBOX_PRINT("FirmwareUpdateSdkLoadCode: dataPack is NULL\r\n");
    }
    return ret;
}

/*************************************************
 Function: FirmwareUpdateSdkCodeCheck
 Description: 校验代码是否正确
 Input: dataPack 数据打包结构体指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
static uint8_t FirmwareUpdateSdkCodeCheck(volatile uint8_t *dataPack)
{
    uint8_t ret = 0U;

    TBOX_PRINT("--------------------07 Download Complete------------------\r\n");

    // CRC 校验相关，直接判断成功
    g_crcData ^= 0xFFFFFFFF;
    uint32_t checksum = (dataPack[2] << 24) + (dataPack[3] << 16) + (dataPack[4] << 8) + dataPack[5];

    if (checksum == g_crcData)
    {
        if (FLASH_APP_BANKA_ID == flashAppFlag)  
        {
            uint8_t retValue = FlsIf_Write(FLASH_APP_BANKA_ACTIVE_ADDRESS, 4, 0xFE);
            if (retValue == E_OK)
            {
                TBOX_PRINT("Update and virify app1 success (CRC bypassed)!\r\n");
            }
            else
            {
                TBOX_PRINT("APP ACTIVE failed %02x\r\n", retValue);
                ret = 0x02; 
            }
        }
    }
    else
    {
        TBOX_PRINT("CRC check failed %08x != %08x\r\n", checksum, g_crcData);
        ret = 0x01; 
    }
    return ret;
}

/*************************************************
 Function: FirmwareUpdateSdkCycleProcess
 Description: 串口升级周期任务处理函数
 Input: handle 串口句柄
        pRxMsg 接收数据结构体指针
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdateSdkCycleProcess(int16_t handle, MpuHalDataPack_t *pRxMsg)
{
    uint8_t i = 0U;
    uint8_t curAid = 0U;
    uint8_t dataTxLen = 0U;
    uint8_t dataTxAraay[20] = {0};
    FirmwareUpdateSdkCmd_e s_UpdateMid = E_FirmwareUpdateSdkCmd_Default;
    uint16_t newCmdCounter = 0;
    static uint16_t lastCmdCounter = 0xff11U;


    if ((pRxMsg == NULL) || (pRxMsg->pDataBuffer == NULL) || (pRxMsg->dataBufferSize < MPU_PROTOCAL_HEADER_LEN)) 
    {
        return;
    }

    curAid = pRxMsg->aid;   
    if(curAid == PROTOCOL_AID_FWUPD)
    {
        s_UpdateMid = (FirmwareUpdateSdkCmd_e)pRxMsg->mid;
        memset(dataTxAraay, 0, sizeof(dataTxAraay));
        /* 2字节counter */
        dataTxAraay[0] = pRxMsg->pDataBuffer[0];
        dataTxAraay[1] = pRxMsg->pDataBuffer[1];
        newCmdCounter = (uint16_t)(dataTxAraay[0] << 8) | dataTxAraay[1];

        switch(s_UpdateMid)
        {
            case E_FirmwareUpdateSdkCmd_GetMcuVersion:
                TBOX_PRINT("---01 Read Version---\r\n");
                dataTxAraay[2] = 0x00; 
                /* 11字节版本号 */
                for(i = 0; i < 11U; i++) {
                    dataTxAraay[3 + i] = g_versionNumber[i]; 
                }
                dataTxLen = 14U;
                break;
                
            case E_FirmwareUpdateSdkCmd_GetMcuSeed:
                TBOX_PRINT("---02 Get Seed---\r\n");
                dataTxAraay[2] = 0x00; // status
                /* 4字节种子 */
                dataTxAraay[3] = 0x01; 
                dataTxAraay[4] = 0x02;
                dataTxAraay[5] = 0x03; 
                dataTxAraay[6] = 0x04;
                dataTxLen = 7U;
                break;
                
            case E_FirmwareUpdateSdkCmd_UnlockMcuFlash:
                TBOX_PRINT("---03 Unlock Flash---\r\n");
                if((pRxMsg->pDataBuffer[2] == 0x01) && (pRxMsg->pDataBuffer[3] == 0x02) && (pRxMsg->pDataBuffer[4] == 0x03) && (pRxMsg->pDataBuffer[5] == 0x04))
                { 
                    dataTxAraay[2] = 0x00; 
                } 
                else 
                { 
                    dataTxAraay[2] = 0x01; 
                }
                dataTxLen = 3U;
                break;
                
            case E_FirmwareUpdateSdkCmd_EnterDownloadMode:
                TBOX_PRINT("---04 Enter Download Mode---\r\n");
                if ((pRxMsg->pDataBuffer[2] == 0x01) && (pRxMsg->pDataBuffer[3] == 0x02) && (pRxMsg->pDataBuffer[4] == 0x03) && (pRxMsg->pDataBuffer[5] == 0x04))
                {
                    if (newCmdCounter != lastCmdCounter)
                    {
                        dataTxAraay[2] = FlsIf_Init();
                    }
                    else
                    {
                        TBOX_PRINT("Same cmd counter\r\n");
                        dataTxAraay[2] = 0x00; 
                    }
                } 
                else 
                { 
                    dataTxAraay[2] = 0x01; 
                }
                dataTxLen = 3U;
                g_flashState = E_FlashState_FlashIn; // 进入下载状态
                break;
                
            case E_FirmwareUpdateSdkCmd_EraseMcuMemory:
                /* 传入数据 1 2 3 4 地址 长度 */
                if (newCmdCounter != lastCmdCounter)
                {
                    dataTxAraay[2] = FirmwareUpdateSdkEraseFlash(pRxMsg->pDataBuffer);
                }
                else
                {
                    TBOX_PRINT("Same cmd counter\r\n");
                    dataTxAraay[2] = 0x00; 
                }
                
                dataTxLen = 3U;
                break;
                
            case E_FirmwareUpdateSdkCmd_DownloadMcuMemory:
                if (newCmdCounter != lastCmdCounter)
                {
                    dataTxAraay[2] = FirmwareUpdateSdkLoadCode(pRxMsg->pDataBuffer, pRxMsg->dataBufferSize);
                }
                else
                {
                    TBOX_PRINT("Same cmd counter\r\n");
                    dataTxAraay[2] = 0x00; 
                }         
                dataTxLen = 3U;
                break;
                
            case E_FirmwareUpdateSdkCmd_VirifyMcuMemory:
                dataTxAraay[2] = FirmwareUpdateSdkCodeCheck(pRxMsg->pDataBuffer);
                dataTxLen = 3U;
                break;
                
            case E_FirmwareUpdateSdkCmd_SoftwareResetMcu:
                TBOX_PRINT("---08 Reset---\r\n");
                dataTxAraay[2] = 0x00; 
                dataTxLen = 3U;
                break;
            case E_FirmwareUpdateSdkCmd_GetMcuBankId:
                TBOX_PRINT("---09 Get Bank Id---\r\n");
                dataTxAraay[2] = 0x00; 
                dataTxAraay[3] = flashAppFlag;
                dataTxLen = 4U;
                break;
                
            default:
                dataTxAraay[2] = 0xFF; dataTxLen = 3U;
                break;
        }


        MpuHalDataPack_t TxPack;
        TxPack.aid = curAid;
        TxPack.mid =(uint8_t)s_UpdateMid;
        TxPack.subcommand = pRxMsg->subcommand;
        TxPack.pDataBuffer = dataTxAraay;
        TxPack.dataBufferSize = sizeof(dataTxAraay);
        TxPack.dataLength = dataTxLen;
        MpuHalTransmit(handle, &TxPack);
        lastCmdCounter = newCmdCounter;

        if (s_UpdateMid == E_FirmwareUpdateSdkCmd_SoftwareResetMcu)
        {
            // delay 100ms
            delay_us(1000);
            // reset
            Mcu_PerformReset();
        }

    }
}

/*************************************************
 Function: FirmwareUpdate_SetMpuOtaFlag
 Description: 设置MPU OTA标志位
 Input: flag OTA标志位
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdate_SetMpuOtaFlag(uint8_t flag)
{
    g_mpuOtaFlag = flag;
}

/*************************************************
 Function: FirmwareUpdate_GetMpuOtaFlag
 Description: 获取MPU OTA标志位
 Input: None
 Output: None
 Return: uint8_t OTA标志位
 Others:
*************************************************/
uint8_t FirmwareUpdate_GetMpuOtaFlag(void)
{
    return g_mpuOtaFlag;
}

/*************************************************
 Function: FirmwareUpdate_UnlockMcuFlashAck
 Description: 解锁MPU Flash响应
 Input: None
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdate_UnlockMcuFlashAck(void)
{
    uint8_t otaFlag = FirmwareUpdate_GetMpuOtaFlag();
    if (otaFlag == 1U)
    {
        TBOX_PRINT("Mpu OTA To Bootloader\r\n");
    }
}
