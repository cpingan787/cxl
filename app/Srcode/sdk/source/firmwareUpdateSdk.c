/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: firmwareUpdateSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "stdlib.h"
#include "string.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "MemIf_Types.h"
#include "Std_Types.h"
#include "Mcu.h"
#include "EEIf.h"

/****************************** Macro Definitions ******************************/
#define FLASH_APP_BANKA_VALID_FLAG_ADDR          0x00050000
#define FIRMWARE_OTA_RX_BUFFER_SIZE              200
#define FIRMWARE_OTA_AID                         0x03
#define FIRMWARE_OTA_MID_MIN                     0x01
#define FIRMWARE_OTA_MID_MAX                     0xFF
#define FIRMWARE_OTA_TX_BUFFER_SIZE              20

/****************************** Type Definitions ******************************/
typedef enum
{
    E_FirmwareUpdateSdkCmd_Default                = 0u,  
    E_FirmwareUpdateSdkCmd_GetMcuVersion          = 1u,
    E_FirmwareUpdateSdkCmd_GetMcuSeed             = 2u,
    E_FirmwareUpdateSdkCmd_UnlockMcuFlash         = 3u,
    E_FirmwareUpdateSdkCmd_EnterDownloadMode      = 4u,
    E_FirmwareUpdateSdkCmd_EraseMcuMemory         = 5u,
    E_FirmwareUpdateSdkCmd_DownloadMcuMemory      = 6u,
    E_FirmwareUpdateSdkCmd_VirifyMcuMemory        = 7u,
    E_FirmwareUpdateSdkCmd_SoftwareResetMcu       = 8u,
    E_FirmwareUpdateSdkCmd_GetMcuBankId           = 9u,
}FirmwareUpdateSdkCmd_e;

/****************************** Global Variables ******************************/
static uint8_t g_versionNumber[20] = {'v','0','0','1','.','0','0','2',};
static int16_t g_otaMpuHandle;
static uint8_t g_recvDataBuffer[FIRMWARE_OTA_RX_BUFFER_SIZE] = {0};

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:       FirmwareUpdateSdkInit
  Description:    升级模块初始化接口
  Input:          void
  Output:         无
  Return:         void
  Others:         
*************************************************/
void FirmwareUpdateSdkInit(void)
{
    MpuHalFilter_t filter;

    filter.aid = FIRMWARE_OTA_AID;
    filter.midMin = FIRMWARE_OTA_MID_MIN;
    filter.midMax = FIRMWARE_OTA_MID_MAX;

    g_otaMpuHandle = MpuHalOpen();
    if (g_otaMpuHandle < 0)
    {
        TBOX_PRINT("MpuHalOpen failed\r\n");
        return;
    }

    MpuHalSetRxFilter(g_otaMpuHandle, &filter);
    MpuHalSetRxBuffer(g_otaMpuHandle, g_recvDataBuffer, sizeof(g_recvDataBuffer));
}

/*************************************************
 Function: FirmwareUpdateSdkCycleProcess
 Description: 串口升级周期任务处理函数
 Input: pRxMsg 接收数据结构体指针
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdateSdkCycleProcess(MpuHalDataPack_t *pRxMsg)
{
    uint8_t i = 0U;
    uint8_t curAid = 0U;
    uint8_t dataTxLen = 0U;
    static uint8_t dataTxAraay[FIRMWARE_OTA_TX_BUFFER_SIZE] = {0};
    FirmwareUpdateSdkCmd_e s_UpdateMid = E_FirmwareUpdateSdkCmd_Default;
    if ((pRxMsg == NULL) || (pRxMsg->pDataBuffer == NULL)) 
    {
        return;
    }

    int16_t ret = MpuHalReceive(g_otaMpuHandle, pRxMsg, 0);
    if (ret != MPU_HAL_STATUS_OK)
    {
        return;
    }

    curAid = pRxMsg->aid;   
    if (curAid == FIRMWARE_OTA_AID)
    {
        s_UpdateMid = (FirmwareUpdateSdkCmd_e)pRxMsg->mid;
        memset(dataTxAraay, 0, sizeof(dataTxAraay));
        /* 2字节counter */
        dataTxAraay[0] = pRxMsg->pDataBuffer[0];
        dataTxAraay[1] = pRxMsg->pDataBuffer[1];

        switch (s_UpdateMid)
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

                uint32 retValue = 0 ;
                uint32 WriteData = 0xC5u;
                uint32 dataRead = 0;
                retValue = EEIf_Write(2, 4, (uint8*)&WriteData);
                TBOX_PRINT("EEIf_Write retValue = %02x\r\n", retValue);
                EEIf_Read(2, 4, (uint8*)&dataRead);
                if(dataRead != WriteData)
                {
                    TBOX_PRINT("SET EEIF ERROR: 0x%08X, 0x%08X\r\n", WriteData, dataRead);
                    dataTxAraay[2] = 0x01; 
                }
                dataTxLen = 3U;
                break;
            case E_FirmwareUpdateSdkCmd_SoftwareResetMcu:
                TBOX_PRINT("---08 Software Reset---\r\n");
                dataTxAraay[2] = 0x00;
                dataTxLen = 3U;
                break;
            case E_FirmwareUpdateSdkCmd_GetMcuBankId:
                TBOX_PRINT("---09 Get Bank ID---\r\n");
                dataTxAraay[2] = 0x00;
                /* 1字节Bank ID */
                dataTxAraay[3] = 0x01; // 当前仅支持一个Bank ID
                dataTxLen = 4U;
                break;
            default:
                TBOX_PRINT("OTA Invalid MID: 0x%02X\r\n", s_UpdateMid);
                break;
        }

        MpuHalDataPack_t TxPack;
        TxPack.aid = curAid;
        TxPack.mid =(uint8_t)s_UpdateMid;
        TxPack.subcommand = pRxMsg->subcommand;
        TxPack.pDataBuffer = dataTxAraay;
        TxPack.dataBufferSize = FIRMWARE_OTA_TX_BUFFER_SIZE;
        TxPack.dataLength = dataTxLen;
        if(MpuHalTransmit(g_otaMpuHandle, &TxPack) == 0)
        {
            TBOX_PRINT("11111\r\n");
        }else
        {
            TBOX_PRINT("MpuHalTransmit failed\r\n");
        }

        if (s_UpdateMid == E_FirmwareUpdateSdkCmd_UnlockMcuFlash)
        {
            delay_us(1000);
            Mcu_PerformReset();
        }
    }
}