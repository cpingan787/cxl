/*************************************************
 Copyright © 2026 SiRun (Hefei) . All rights reserved.
 File Name: canPassthroughSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "canPassthroughSdk.h"
#include <string.h>
#include "mpuHal.h"
#include "logHal.h"
#include "Rte_Dcm_Type.h"

/****************************** Macro Definitions ******************************/
#define PASSTHROUGH_AID 0x05
#define PASSTHROUGH_MID 0x10
#define PASSTHROUGH_SUB_MCU_TO_MPU 0x22
#define PASSTHROUGH_SUB_MPU_TO_MCU 0x23

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static int16_t g_mpuHandle = -1;            //MPU通信句柄
static uint8_t g_recvDataBuffer[550] = {0}; //底层缓存buffer   

static uint8_t g_canThroughDataBuffer[810] = {0} ; //透传数据缓冲区
static MpuHalDataPack_t g_canThroughPack ;         //透传数据打包结构体


/****************************** Public Function Implementations ******************************/
void CanPassthroughWithMpuInit(void)
{
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = PASSTHROUGH_AID;
    filter.midMin = PASSTHROUGH_MID;
    filter.midMax = 0xFF;

    int16_t ret = 0;
    ret = MpuHalSetRxFilter(g_mpuHandle, &filter);
    if(ret != 0)
    {
        TBOX_PRINT("Set Rx Filter failed, ret:%d\r\n",ret);
        return;
    }
    ret = MpuHalSetRxBuffer(g_mpuHandle, g_recvDataBuffer, sizeof(g_recvDataBuffer));
    if(ret != 0)
    {
        TBOX_PRINT("Set Rx Buffer failed, ret:%d\r\n",ret);
        return;
    }

    return;
}

//发送透传请求
int8_t CanPassthrough_SendRequest(const uint8_t *pUdsRequest, uint16_t reqLength)
{
    if (pUdsRequest == NULL || reqLength == 0) 
    {
        return -1;
    }

    // 清空接收缓冲区
    while (MpuHalReceive(g_mpuHandle, &g_canThroughPack, 0) == 0) 
    {
    }

    // 组包发送
    g_canThroughPack.aid = PASSTHROUGH_AID;
    g_canThroughPack.mid = PASSTHROUGH_MID;
    g_canThroughPack.subcommand = PASSTHROUGH_SUB_MCU_TO_MPU;
    memcpy(g_canThroughDataBuffer, pUdsRequest, reqLength);
    g_canThroughPack.pDataBuffer = g_canThroughDataBuffer;
    g_canThroughPack.dataLength = reqLength;

    int16_t ret = MpuHalTransmit(g_mpuHandle, &g_canThroughPack);
    if(ret == 0)
    {
        TBOX_PRINT("Send Passthrough Request success: %02X %02X %02X\r\n", g_canThroughDataBuffer[0], g_canThroughDataBuffer[1], g_canThroughDataBuffer[2]);
    }
    else
    {
        TBOX_PRINT("Send Passthrough Request failed, ret:%d\r\n",ret);
    }
    
    return 0;
}

//接收透传响应
int8_t CanPassthrough_ReceiveResponse(uint8_t *pUdsResponse, uint16_t *pRespLength)
{
    int16_t ret = -1;

    if (pUdsResponse == NULL || pRespLength == NULL) {
        return -2;
    }

    // 初始化响应包
    g_canThroughPack.pDataBuffer = g_canThroughDataBuffer;
    g_canThroughPack.dataBufferSize = sizeof(g_canThroughDataBuffer);
    g_canThroughPack.dataLength = 0;

    // 尝试接收（非阻塞）
    ret = MpuHalReceive(g_mpuHandle, &g_canThroughPack, 0);

    if (ret == 0 && g_canThroughPack.dataLength > 0) 
    {
        uint8_t subCommand = g_canThroughPack.subcommand & 0x7F;
        if (g_canThroughPack.aid == PASSTHROUGH_AID &&
            g_canThroughPack.mid == PASSTHROUGH_MID &&
            subCommand == PASSTHROUGH_SUB_MPU_TO_MCU)
        {
            memcpy(pUdsResponse, g_canThroughPack.pDataBuffer, g_canThroughPack.dataLength);
            *pRespLength = g_canThroughPack.dataLength;
            return 0;
        }
    }

    return -1;  // 未收到响应或响应无效
}

//return 0:E_OK 1:DCM_E_PENDING -1:(timeout)E_NOT_OK other:NRC
int16_t CanPassthroughRead_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t cnt = 0;
    uint16_t UDSRespDataLen = 0;

    if (UDSReqData == NULL || UDSRespData == NULL)
    {
        return -1;
    }

    respRet = CanPassthrough_ReceiveResponse(UDSRespData, &UDSRespDataLen);
    cnt++;

    if(respRet == 0 && UDSRespDataLen > 0)//接收到响应
    {
        if(UDSRespData[0] != 0x7F)
        {
            if(UDSRespDataLen >= UDSReqDataLen)
            {
                memmove(UDSRespData,UDSRespData + UDSReqDataLen,(UDSRespDataLen - UDSReqDataLen));
            }
            ret = 0;
            cnt = 0;
        }
        else
        {
            /* 负响应 */
            ret = UDSRespData[2];//NRC 
            cnt = 0;
        }
    }
    else
    {
        ret = 1;//DCM_E_PENDING
        if((cnt % 75) == 0)
        {
            CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
        }

        if(cnt >= 190)
        {
            cnt = 0;
            ret = -1;//timeout
        }
    }   

    return ret;
}

//return 0:E_OK 1:DCM_E_PENDING -1:(timeout)E_NOT_OK other:NRC
int16_t CanPassthroughWrite_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t cnt = 0;
    uint16_t UDSRespDataLen = 0;
    uint8_t UDSRespData[3] = {0};

    if (UDSReqData == NULL)
    {
        return -1;
    }

    respRet = CanPassthrough_ReceiveResponse(UDSRespData, &UDSRespDataLen);
    cnt++;

    if(respRet == 0 && UDSRespDataLen > 0)//接收到响应
    {
        if(UDSRespData[0] != 0x7F)
        {
            /* 正响应 写入成功*/
            ret = 0;
            cnt = 0;
        }
        else
        {
            /* 负响应 回复NRC*/
            ret = UDSRespData[2];
            cnt = 0;
        }
    }
    else
    {
        ret = 1;//DCM_E_PENDING
        if((cnt % 75) == 0)
        {
            CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
        }

        if(cnt >= 190)
        {
            cnt = 0;
            ret = -1;//timeout
        }
    }   
    return ret;
}

//return 0:E_OK 1:DCM_E_PENDING -1:(timeout)(invalid parameter) other:NRC
int16_t CanPassthroughRoutine_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData, uint16_t *UDSRespDataLen)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t cnt = 0;
    uint16_t RespDataLen = 0;

    if (UDSRespData == NULL || UDSRespData == NULL ||UDSRespDataLen == NULL) 
    {
        return -1;
    }

    respRet = CanPassthrough_ReceiveResponse(UDSRespData, &RespDataLen);
    cnt++;

    if((respRet == 0) && (RespDataLen > 0))//接收到响应
    {
        TBOX_PRINT("UDS31RespSuc\n");
        if(UDSRespData[0] != 0x7F)
        {
            /* 正响应 写入成功*/
            if(RespDataLen >= 4)
            {
                memmove(UDSRespData,UDSRespData + 4,(RespDataLen - 4));
                RespDataLen -= 4;
                *UDSRespDataLen = RespDataLen;
            }
            ret = 0;
            cnt = 0;
        }
        else
        {
            /* 负响应 回复NRC*/
            ret = UDSRespData[2];
            cnt = 0;
        }
    }
    else
    {
        ret = 1;//DCM_E_PENDING
        if((cnt % 75) == 0)
        {
            CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
        }

        if(cnt >= 190)
        {
            cnt = 0;
            ret = -1;//timeout
        }
    }   

    return ret;
}














