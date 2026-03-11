#include "stdlib.h"
#include "crc8_16_32.h"
#include "mpuHal.h"
#include "flashHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "string.h"

static FlashState_e g_flashState = E_FlashState_Idle;  
static uint8_t g_versionNumber[20] = {'v','0','0','1','.','0','0','2',};                              
static Crc32Objec_t g_crc32Object;
static uint8_t flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
static uint8_t g_fotaModeFlag = 0U;   
static uint16_t g_fotaModeTimeCount = 0U;  
static uint32_t g_crcData = 0xFFFFFFFF;
static FlashHalMetaDataInfo_t s_MetaDataInfo;

// 辅助函数声明
static void FirmwareUpdateSdkResetTimer(void);

static uint8_t FirmwareUpdateSdkEraseFlash(uint8_t *payload)
{
    uint32_t address = 0;
    uint8_t ret = 0;
    
    TBOX_PRINT("05 Erase flash code %d,%d,%d,%d\r\n",payload[2],payload[3],payload[4],payload[5]);
    
    // 偏移量修正：验证码原本是[10-13]，去包头(8字节)后是 [2-5]
    if(payload[2] == 0x01 && payload[3] == 0x02 && payload[4] == 0x03 && payload[5] == 0x04)
    {
        // 擦除地址原本是[14-17]，去包头后是 [6-9]
        address = ((payload[6] << 24) | (payload[7] << 16) | (payload[8] << 8) | payload[9]);
        TBOX_PRINT("boot erase start address is 0x%x\r\n",address);
        
        if(address == FLASH_APP_BANKA_ABSTRACT_ADDRESS) {
            flashAppFlag = FLASH_APP_BANKA_ID;
        } else if(address == FLASH_APP_BANKB_ABSTRACT_ADDRESS) {
            flashAppFlag = FLASH_APP_BANKB_ID;
        } else {
            flashAppFlag = FLASH_APP_DEFALT_BANK_ID;
            return 1;
        }
    
        if(FLASH_HAL_STATUS_OK == FlashHalOtaFlashErase(flashAppFlag)) {
            TBOX_PRINT("Erase Bank %d success！\r\n", flashAppFlag);
            g_flashState = E_FlashState_FlashErase;
            g_crcData = Crc32Init(&g_crc32Object,0x04C11DB7);
        } else {
            g_flashState = E_FlashState_Idle;
            ret = 1;
        }
    } else {
        g_flashState = E_FlashState_Idle;
        ret = 2;
    }
    return ret;
}

static uint8_t FirmwareUpdateSdkLoadCode(MpuHalDataPack_t *pack)
{
    uint8_t ret = 0U;
    uint32_t len = 0U;
    uint32_t addr = 0U;
    uint8_t *payload = pack->pDataBuffer;

    if(g_flashState == E_FlashState_FlashErase)
    {
        // 地址偏移修正：原来[10-13]，现在[2-5]
        addr = ((uint32_t)payload[2] << 24) | ((uint32_t)payload[3] << 16) |
               ((uint32_t)payload[4] << 8)  | (uint32_t)payload[5];
        
        // 实际数据长度 = 总载荷长度 - 控制头(10字节)
        len = pack->dataLength - 10; 
        
        if(FLASH_HAL_STATUS_OK != FlashHalOtaFlashWrite(addr, &payload[10], len)) {
            TBOX_PRINT("06 Flash Write failed\r\n");
            ret = 0x03; 
        } else {
            g_crcData = Crc32(&g_crc32Object, g_crcData, &payload[10], len);
        }
    } else {
        ret = 0x06; 
    }
    return ret;
}

static uint8_t FirmwareUpdateSdkCodeCheck(uint8_t *payload)
{
    uint32_t checksum = 0U;
    TBOX_PRINT("07 Download Complete\r\n");

    g_crcData ^= 0xFFFFFFFF; 
    // 偏移修正：原来[10-13]，现在[2-5]
    checksum = (payload[2]<<24) | (payload[3]<<16) | (payload[4]<<8) | payload[5];
    
    if(checksum == g_crcData) {
        FlashHalGetMetaDataInfo(&s_MetaDataInfo);
        if(FLASH_APP_BANKA_ID == flashAppFlag) {
            FlashHalWriteApp1SuccessFlag(FLASH_BANK_APP_INTEGRITY_ENABLE); 
            s_MetaDataInfo.m_metaAppFlag = FLASH_APP_BANKA_ACTIVE_FLAG;
        } else {
            FlashHalWriteApp2SuccessFlag(FLASH_BANK_APP_INTEGRITY_ENABLE); 
            s_MetaDataInfo.m_metaAppFlag = FLASH_APP_BANKB_ACTIVE_FLAG;
        }
        FlashHalWriteMetaDataInfo(&s_MetaDataInfo);
        return 0;
    }
    return 0x01; 
}

void FirmwareUpdateSdkCycleProcess(MpuHalDataPack_t *pack)
{
    uint8_t i = 0U;
    uint8_t dataTxLen = 0U;
    uint8_t dataTxAraay[20] = {0};
    FirmwareUpdateSdkCmd_e s_UpdateCmd;

    if(pack == NULL) return;

    // 解析出指令
    s_UpdateCmd = (FirmwareUpdateSdkCmd_e)pack->mid; 
    
    dataTxAraay[0] = pack->pDataBuffer[0]; 
    dataTxAraay[1] = pack->pDataBuffer[1]; 

    switch(s_UpdateCmd)
    {
        case E_FirmwareUpdateSdkCmd_GetMcuVersion:
            dataTxAraay[2] = 0x00; 
            for(i = 0; i < 11U; i++) dataTxAraay[3 + i] = g_versionNumber[i];
            dataTxLen = 14U;
            break;
            
        case E_FirmwareUpdateSdkCmd_GetMcuSeed:
            dataTxAraay[2] = 0x00; dataTxAraay[3] = 0x01; dataTxAraay[4] = 0x02;
            dataTxAraay[5] = 0x03; dataTxAraay[6] = 0x04;
            dataTxLen = 7U;
            FirmwareUpdateSdkResetTimer();
            break;
            
        case E_FirmwareUpdateSdkCmd_UnlockMcuFlash:
            if((pack->pDataBuffer[2] == 0x01) && (pack->pDataBuffer[3] == 0x02) && 
               (pack->pDataBuffer[4] == 0x03) && (pack->pDataBuffer[5] == 0x04)) {
                dataTxAraay[2] = 0x00; 
            } else {
                dataTxAraay[2] = 0x01; 
            }
            dataTxLen = 3U;
            FirmwareUpdateSdkResetTimer();
            break;
            
        case E_FirmwareUpdateSdkCmd_EnterDownloadMode:
            if((pack->pDataBuffer[2] == 0x01) && (pack->pDataBuffer[3] == 0x02) && 
               (pack->pDataBuffer[4] == 0x03) && (pack->pDataBuffer[5] == 0x04)) {
                FlashHalGetMetaDataInfo(&s_MetaDataInfo);
                s_MetaDataInfo.m_metaBootFlag = FLASH_BOOT_JUMP_ACTIVE_FLAG;
                FlashHalWriteMetaDataInfo(&s_MetaDataInfo);
                dataTxAraay[2] = 0x00; 
            } else {
                dataTxAraay[2] = 0x01; 
            }
            dataTxLen = 3U;
            g_flashState = E_FlashState_FlashIn;
            FirmwareUpdateSdkResetTimer();
            break;
            
        case E_FirmwareUpdateSdkCmd_EraseMcuMemory:
            dataTxAraay[2] = FirmwareUpdateSdkEraseFlash(pack->pDataBuffer);
            dataTxLen = 3U;
            FirmwareUpdateSdkResetTimer();
            break;
            
        case E_FirmwareUpdateSdkCmd_DownloadMcuMemory:
            dataTxAraay[2] = FirmwareUpdateSdkLoadCode(pack);
            dataTxLen = 3U;
            FirmwareUpdateSdkResetTimer();
            break;
            
        case E_FirmwareUpdateSdkCmd_VirifyMcuMemory:
            dataTxAraay[2] = FirmwareUpdateSdkCodeCheck(pack->pDataBuffer);
            dataTxLen = 3U;
            FirmwareUpdateSdkResetTimer();
            break;
            
        case E_FirmwareUpdateSdkCmd_SoftwareResetMcu:
            dataTxAraay[2] = 0x00; 
            dataTxLen = 3U;
            // 组包发送并复位
            MpuHalDataPack_t resetTxPack;
            resetTxPack.aid = pack->aid;
            resetTxPack.mid = pack->mid;
            resetTxPack.subcommand = 0x00;
            resetTxPack.pDataBuffer = dataTxAraay;
            resetTxPack.dataLength = dataTxLen;
            MpuHalTransmit(0, &resetTxPack); // 确保全局句柄有效
            // 发送完毕后，执行 MCU 复位
            // PeripheralHalMcuHardReset(); // 根据 RH850 实际的复位API替换
            return; 
            
        case E_FirmwareUpdateSdkCmd_GetMcuBankId:
            dataTxAraay[2] = 0x00; dataTxAraay[3] = 0x00;
            dataTxLen = 4U;
            break;
            
        default:
            dataTxAraay[2] = 0xFF; 
            dataTxLen = 3U;
            break;
    }

    // 统一发送响应
    if(s_UpdateCmd != E_FirmwareUpdateSdkCmd_SoftwareResetMcu)
    {
        MpuHalDataPack_t txPack;
        txPack.aid = pack->aid;
        txPack.mid = pack->mid;
        txPack.subcommand = 0x00; 
        txPack.pDataBuffer = dataTxAraay;
        txPack.dataLength = dataTxLen;
        
        MpuHalTransmit(0, &txPack); // 注意这里传入正确的 MPU 句柄
    }
}

static void FirmwareUpdateSdkResetTimer(void) {
    g_fotaModeTimeCount = 0;
    g_fotaModeFlag = 1;
}

void FirmwareUpdateSdkTimerCallback(void) {
    if(g_fotaModeFlag == 1) {
        g_fotaModeTimeCount++;
        if(g_fotaModeTimeCount >= 10000) {
            g_fotaModeTimeCount = 0;
            // PeripheralHalMcuHardReset(); 
        }
    }
}