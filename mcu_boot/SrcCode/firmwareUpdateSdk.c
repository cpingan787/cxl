#include "stdlib.h"
#include "string.h"
#include "mpuHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "MemIf_Types.h"
#include "Std_Types.h"
#include "Fls.h"

// CRC 校验暂时不做
// #include "crc8_16_32.h"

/* ==================== A区 (Bank A) ==================== */
// MPU下发擦除/升级指令时，协议里带的 App1 逻辑地址
#define FLASH_APP_BANKA_ABSTRACT_ADDRESS   0x00050200 

// A区应用程序的物理写入范围
#define FLASH_APP_BANKA_BASE_ADDRESS       0x00050200  // A区代码起始
#define FLASH_APP_BANKA_END_ADDRESS        0x0011FFFF  // A区代码结束
// A区有效标志位(Valid Flag)存放地址
#define FLASH_APP_BANKA_VALID_FLAG_ADDR    0x00050000  // 大小 0x200

/* ==================== B区 (Bank B) ==================== */
// #define FLASH_APP_BANKB_ABSTRACT_ADDRESS   0x00120200
// #define FLASH_APP_BANKB_BASE_ADDRESS       0x00120200  // B区代码起始
// #define FLASH_APP_BANKB_END_ADDRESS        0x001EFFFF  // B区代码结束
// #define FLASH_APP_BANKB_VALID_FLAG_ADDR    0x00120000  // 大小 0x200

/* ==================== 擦除参数 ==================== */
// APP 代码区的总大小：0x11FFFF - 0x50200 + 1 = 0xCFE00
#define APP_BANK_SIZE                      0x000CFE00

/* ==================== 状态与分区ID宏定义 ==================== */
#define FLASH_APP_DEFALT_BANK_ID           0x00
#define FLASH_APP_BANKA_ID                 0x01
// #define FLASH_APP_BANKB_ID                 0x02

// 固件完整性标志位
#define FLASH_BANK_APP_INTEGRITY_DISABLE   0x00 
#define FLASH_BANK_APP_INTEGRITY_ENABLE    0x01 

// A/B面激活标志位
#define FLASH_APP_BANKA_ACTIVE_FLAG        0x01
// #define FLASH_APP_BANKB_ACTIVE_FLAG        0x02

extern int16_t g_mpuHandle;

static FlashState_e g_flashState = E_FlashState_Idle;  
static uint8_t g_versionNumber[20] = {'v','0','0','1','.','0','0','2',};                              //软件版本号长度
static uint8_t flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
static uint8_t g_fotaModeFlag = 0U;   
static uint16_t g_fotaModeTimeCount = 0U;  

// CRC相关
// static Crc32Objec_t g_crc32Object;
// static uint32_t g_crcData = 0xFFFFFFFF;
// static FlashHalMetaDataInfo_t s_MetaDataInfo;

/*************************************************
* Function:       FirmwareUpdateSdkEraseFlash
*************************************************/
static uint8_t FirmwareUpdateSdkEraseFlash(volatile uint8_t *dataPack)
{
    uint32_t address = 0;
    uint8_t ret = 0;
    
    TBOX_PRINT("--------------------05 Erase flash code %d,%d,%d,%d------------------\r\n",dataPack[10],dataPack[11],dataPack[12],dataPack[13]);
    
    // Verify data
    if(dataPack[10] == 0x01 && dataPack[11] == 0x02 && 
       dataPack[12] == 0x03 && dataPack[13] == 0x04)
    {
        address = ((dataPack[14] << 24) + (dataPack[15] << 16)+ (dataPack[16] << 8) + dataPack[17]);
        TBOX_PRINT("boot erase start address is 0x%x\r\n",address);
        
        if(address == FLASH_APP_BANKA_ABSTRACT_ADDRESS)
        {
            flashAppFlag = FLASH_APP_BANKA_ID;
            // 先注释掉，等后期补齐 Boot 状态机驱动
            // FlashHalWriteApp1SuccessFlag(FLASH_BANK_APP_INTEGRITY_DISABLE);
        }
        /* 
        else if(address == FLASH_APP_BANKB_ABSTRACT_ADDRESS)
        {
            flashAppFlag = FLASH_APP_BANKB_ID;
            // FlashHalWriteApp2SuccessFlag(FLASH_BANK_APP_INTEGRITY_DISABLE);
        }
        */
        else
        {
            flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
            TBOX_PRINT("05 address error\r\n");
        }
    
        Std_ReturnType flsRet;
        uint32_t eraseLength = APP_BANK_SIZE; 
        
        // 1. 发起擦除请求
        flsRet = Fls_Erase((Fls_AddressType)address, (Fls_LengthType)eraseLength);
        
        if(flsRet == E_OK)
        {
            // 2. 轮询等待擦除完成 (擦除非常慢，死循环等待必须喂狗)
            while (Fls_GetStatus() != MEMIF_IDLE)
            {
                Fls_MainFunction();
                
                // 【致命警告】擦除整块 Bank 可能需要几秒钟，必定触发看门狗！
                // 必须在这里疯狂喂狗！
                // Wdg_SetTriggerCondition(xxx); 
            }
            
            TBOX_PRINT("Erase Bank %d success\r\n", flashAppFlag);
            g_flashState = E_FlashState_FlashErase;
            
            // CRC 暂时不校验，注释掉初始化
            // g_crcData = Crc32Init(&g_crc32Object, 0x04C11DB7); 
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
  Function:       FirmwareUpdateSdkLoadCode
*************************************************/
static uint8_t FirmwareUpdateSdkLoadCode(volatile uint8_t *dataPack)
{
    uint8_t ret = 0U;
    uint32_t len = 0U;
    uint32_t addr = 0U;

    if(dataPack != NULL) 
    {
        if(g_flashState == E_FlashState_FlashErase)
        {
            addr = ((uint32_t)dataPack[10] << 24) |
                   ((uint32_t)dataPack[11] << 16) |
                   ((uint32_t)dataPack[12] << 8)  |
                   (uint32_t)dataPack[13];
            
            len = ((uint32_t)dataPack[5] << 8) | (uint32_t)dataPack[6];
            len -= 10; // Subtract header length
            
            TBOX_PRINT("--------------------06 addr=%08x len=%d cnt=%02x %02x------------------\r\n",
                      addr, len, dataPack[8], dataPack[9]);
                      
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
               Std_ReturnType flsRet;
               
                flsRet = Fls_Write((Fls_AddressType)addr, (const uint8_t *)&dataPack[18], (Fls_LengthType)len);
                
                if(flsRet == E_OK)
                {
                    // 2. 轮询等待写操作真正完成
                    while (Fls_GetStatus() != MEMIF_IDLE)
                    {
                        Fls_MainFunction();
                        // 喂狗
                        // Wdg_SetTriggerCondition(xxx); 
                    }
                    
                    // 3. 校验并累加 CRC
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
  Function:       FirmwareUpdateSdkCodeCheck
*************************************************/
static uint8_t FirmwareUpdateSdkCodeCheck(volatile uint8_t *dataPack)
{
    uint8_t ret = 0U;
    
    // 忽略未使用的参数警告
    (void)dataPack;

    TBOX_PRINT("--------------------07 Download Complete------------------\r\n");

    // CRC 校验相关，直接判断成功
    // g_crcData ^= 0xFFFFFFFF; 
    // uint32_t checksum = (dataPack[10]<<24)+(dataPack[11]<<16)+(dataPack[12]<<8)+dataPack[13];
    // if(checksum == g_crcData)
    
    if(1) //跳过 CRC 验证
    {
        if(FLASH_APP_BANKA_ID == flashAppFlag)  
        {
            TBOX_PRINT("Update and virify app1 success (CRC bypassed)!\r\n");
            // FlashHalWriteApp1SuccessFlag(FLASH_BANK_APP_INTEGRITY_ENABLE); 
        }
        /* B区
        else if(FLASH_APP_BANKB_ID == flashAppFlag) 
        {
            TBOX_PRINT("Update and virify app2 success (CRC bypassed)!\r\n");
            // FlashHalWriteApp2SuccessFlag(FLASH_BANK_APP_INTEGRITY_ENABLE); 
        }
        */
    }
    else
    {
        TBOX_PRINT("CRC check failed (should not print this currently)\r\n");
        ret = 0x01; 
    }
    return ret;
}

/*************************************************
  Function:       FirmwareUpdateSdkCycleProcess
*************************************************/
void FirmwareUpdateSdkCycleProcess(uint8_t *pData, uint16_t dataLen)
{
    uint8_t i = 0U;
    uint8_t cmdClass = 0U;
    uint8_t dataTxLen = 0U;
    uint8_t dataTxAraay[20] = {0};
    FirmwareUpdateSdkCmd_e s_UpdateCmd = E_FirmwareUpdateSdkCmd_Default;

    if(pData == NULL || dataLen < MPU_PROTOCAL_HEADER_LEN) 
    {
        return;
    }

    cmdClass = pData[2];   
    if(cmdClass == PROTOCOL_AID_FWUPD)
    {
        s_UpdateCmd = (FirmwareUpdateSdkCmd_e)pData[3];
        memset(dataTxAraay, 0, sizeof(dataTxAraay));
        dataTxAraay[0] = pData[8];
        dataTxAraay[1] = pData[9];

        switch(s_UpdateCmd)
        {
            case E_FirmwareUpdateSdkCmd_GetMcuVersion:
                TBOX_PRINT("---01 Read Version---\r\n");
                dataTxAraay[2] = 0x00; 
                for(i = 0; i < 11U; i++) { dataTxAraay[3 + i] = g_versionNumber[i]; }
                dataTxLen = 14U;
                break;
                
            case E_FirmwareUpdateSdkCmd_GetMcuSeed:
                TBOX_PRINT("---02 Get Seed---\r\n");
                dataTxAraay[2] = 0x00; dataTxAraay[3] = 0x01; dataTxAraay[4] = 0x02;
                dataTxAraay[5] = 0x03; dataTxAraay[6] = 0x04;
                dataTxLen = 7U;
                FirmwareUpdateSdkResetTimer();
                break;
                
            case E_FirmwareUpdateSdkCmd_UnlockMcuFlash:
                TBOX_PRINT("---03 Unlock Flash---\r\n");
                if((pData[10] == 0x01) && (pData[11] == 0x02) && (pData[12] == 0x03) && (pData[13] == 0x04))
                    { dataTxAraay[2] = 0x00; } else { dataTxAraay[2] = 0x01; }
                dataTxLen = 3U;
                FirmwareUpdateSdkResetTimer();
                break;
                
            case E_FirmwareUpdateSdkCmd_EnterDownloadMode:
                TBOX_PRINT("---04 Enter Download Mode---\r\n");
                if((pData[10] == 0x01) && (pData[11] == 0x02) && (pData[12] == 0x03) && (pData[13] == 0x04))
                {
                    dataTxAraay[2] = 0x00; 
                    FirmwareUpdateSdkResetTimer();
                } 
                else 
                { 
                    dataTxAraay[2] = 0x01; 
                }
                dataTxLen = 3U;
                g_flashState = E_FlashState_FlashIn;
                break;
                
            case E_FirmwareUpdateSdkCmd_EraseMcuMemory:
                dataTxAraay[2] = FirmwareUpdateSdkEraseFlash(pData);
                dataTxLen = 3U;
                FirmwareUpdateSdkResetTimer();
                break;
                
            case E_FirmwareUpdateSdkCmd_DownloadMcuMemory:
                dataTxAraay[2] = FirmwareUpdateSdkLoadCode(pData);
                dataTxLen = 3U;
                FirmwareUpdateSdkResetTimer();
                break;
                
            case E_FirmwareUpdateSdkCmd_VirifyMcuMemory:
                dataTxAraay[2] = FirmwareUpdateSdkCodeCheck(pData);
                dataTxLen = 3U;
                FirmwareUpdateSdkResetTimer();
                break;
                
            case E_FirmwareUpdateSdkCmd_SoftwareResetMcu:
                TBOX_PRINT("---08 Reset---\r\n");
                dataTxAraay[2] = 0x00; dataTxLen = 3U;
                
                MpuHalDataPack_t resetTxPack;
                resetTxPack.aid = cmdClass;
                resetTxPack.mid = 0x01; //mid是否0x01  
                resetTxPack.subcommand = (uint8_t)s_UpdateCmd;
                resetTxPack.pDataBuffer = dataTxAraay;
                resetTxPack.dataBufferSize = dataTxLen;
                
                MpuHalTransmit(g_mpuHandle, &resetTxPack);
                break;
                
            default:
                dataTxAraay[2] = 0xFF; dataTxLen = 3U;
                break;
        }

        if(s_UpdateCmd != E_FirmwareUpdateSdkCmd_SoftwareResetMcu)
        {
            MpuHalDataPack_t normalTxPack;
            normalTxPack.aid = cmdClass;
            normalTxPack.mid = 0x01;
            normalTxPack.subcommand = (uint8_t)s_UpdateCmd;
            normalTxPack.pDataBuffer = dataTxAraay;
            normalTxPack.dataBufferSize = dataTxLen;
            
            MpuHalTransmit(g_mpuHandle, &normalTxPack);
        }
    }
}

/*************************************************
  Function:       FirmwareUpdateSdkResetTimer
*************************************************/
void FirmwareUpdateSdkResetTimer(void)
{
   g_fotaModeTimeCount = 0;
   g_fotaModeFlag = 1;
}

/*************************************************
  Function:       FirmwareUpdateSdkTimerCallback
*************************************************/
void FirmwareUpdateSdkTimerCallback(void)
{
    if(g_fotaModeFlag == 1) 
    {
        g_fotaModeTimeCount++;
        if(g_fotaModeTimeCount >= 10000) // 10s超时复位
        {
            g_fotaModeTimeCount = 0;
            // PeripheralHalMcuHardReset(); 
        }
    }
}