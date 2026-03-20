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
static uint8_t g_recvDataBuffer[200] = {0}; //底层缓存buffer   

static uint8_t g_respDataBuffer[200] = {0}; //响应数据缓冲区   
static MpuHalDataPack_t  g_respPack;        //响应数据打包结构体

static uint8_t g_reqDataBuffer[100] = {0} ; //请求数据缓冲区
static MpuHalDataPack_t g_reqPack ;         //请求数据打包结构体


/****************************** Public Function Implementations ******************************/
void CanPassthroughWithMpuInit(void)
{
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = PASSTHROUGH_AID;
    filter.midMin = PASSTHROUGH_MID;
    filter.midMax = PASSTHROUGH_MID;

    MpuHalSetRxFilter(g_mpuHandle, &filter);
    MpuHalSetRxBuffer(g_mpuHandle, g_recvDataBuffer, sizeof(g_recvDataBuffer));

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
    while (MpuHalReceive(g_mpuHandle, &g_respPack, 0) == 0) 
    {
    }

    // 组包发送
    g_reqPack.aid = PASSTHROUGH_AID;
    g_reqPack.mid = PASSTHROUGH_MID;
    g_reqPack.subcommand = PASSTHROUGH_SUB_MCU_TO_MPU;
    memcpy(g_reqDataBuffer, pUdsRequest, reqLength);
    g_reqPack.pDataBuffer = g_reqDataBuffer;
    g_reqPack.dataLength = reqLength;

    TBOX_PRINT("Send Passthrough Request: %02X %02X %02X\r\n", g_reqDataBuffer[0], g_reqDataBuffer[1], g_reqDataBuffer[2]);

    MpuHalTransmit(g_mpuHandle, &g_reqPack);
    
    return 0;
}

//接收透传响应
int8_t CanPassthrough_ReceiveResponse(uint8_t *pUdsResponse, uint16_t *pRespLength)
{
    int16_t ret = -1;

    if (pUdsResponse == NULL || pRespLength == NULL) {
        return -1;
    }

    // 初始化响应包
    g_respPack.pDataBuffer = g_respDataBuffer;
    g_respPack.dataBufferSize = sizeof(g_respDataBuffer);
    g_respPack.dataLength = 0;

    // 尝试接收（非阻塞）
    ret = MpuHalReceive(g_mpuHandle, &g_respPack, 0);

    if (ret == 0 && g_respPack.dataLength > 0) 
    {
        uint8_t subCommand = g_respPack.subcommand & 0x7F;
        if (g_respPack.aid == PASSTHROUGH_AID &&
            g_respPack.mid == PASSTHROUGH_MID &&
            subCommand == PASSTHROUGH_SUB_MPU_TO_MCU &&
            g_reqDataBuffer[0] == g_respDataBuffer[0] && /* UDS */
            g_reqDataBuffer[1] == g_respDataBuffer[1] && /* DID */
            g_reqDataBuffer[2] == g_respDataBuffer[2])
        {
            memcpy(pUdsResponse, g_respPack.pDataBuffer, g_respPack.dataLength);
            *pRespLength = g_respPack.dataLength;
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

//return 0:E_OK 1:DCM_E_PENDING -1:(timeout)E_NOT_OK other:NRC
int16_t CanPassthroughRoutine_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData, uint16_t *UDSRespDataLen)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t cnt = 0;

    respRet = CanPassthrough_ReceiveResponse(UDSRespData, UDSRespDataLen);
    cnt++;

    if((respRet == 0) && (*UDSRespDataLen > 0))//接收到响应
    {
        if(UDSRespData[0] != 0x7F)
        {
            /* 正响应 写入成功*/
            if(*UDSRespDataLen >= 4)
            {
                memmove(UDSRespData,UDSRespData + 4,(*UDSRespDataLen - 4));
                *UDSRespDataLen -= 4;
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














