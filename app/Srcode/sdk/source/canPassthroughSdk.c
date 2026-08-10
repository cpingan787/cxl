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
#include "Com_Cfg.h"
/****************************** Macro Definitions ******************************/
#define PASSTHROUGH_AID 0x05
#define PASSTHROUGH_MID 0x10
#define PASSTHROUGH_SUB_MCU_TO_MPU 0x22
#define PASSTHROUGH_SUB_MPU_TO_MCU 0x23
#define PASSTHROUGH_SUB_RESTART_REQ 0x24
#define PASSTHROUGH_SUB_RESTART_ACK 0x25
#define PASSTHROUGH_RESEND_MS  660//重发间隔为660ms
#define PASSTHROUGH_TIMEOUT_MS 2000//最大超时时间为2000ms

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static int16_t g_mpuHandle = -1;            //MPU通信句柄
static uint8_t g_recvDataBuffer[550] = {0}; //底层缓存buffer   

static uint8_t g_canThroughDataBuffer[810] = {0} ; //透传数据缓冲区  发送/接收共用同一个缓冲区以节省RAM
static MpuHalDataPack_t g_canThroughPack ;         //透传数据打包结构体

static uint8_t g_passthroughRestartState = 0; //重启标志位
static uint16_t g_passthroughRestartDelayCnt = 0;//重启延时计数器

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:       CanPassthroughWithMpuInit
  Description:    初始化透传与MPU通信
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
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
        //DIAG_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_INIT_START, "Set Rx Filter failed, ret:%d", ret);
        return;
    }
    ret = MpuHalSetRxBuffer(g_mpuHandle, g_recvDataBuffer, sizeof(g_recvDataBuffer));
    if(ret != 0)
    {
        TBOX_PRINT("Set Rx Buffer failed, ret:%d\r\n",ret);
        // DIAG_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_INIT_START, "Set Rx Buffer failed, ret:%d", ret);
        return;
    }

    return;
}

/*************************************************
  Function:       CanPassthrough_SendRequest
  Description:    发送透传请求
  Input:          pUdsRequest：透传请求数据指针（包括AID、MID、subcommand、数据）
                  reqLength：请求数据长度（UDS请求长度 + 请求数据长度）
  Output:         无
  Return:         0:执行成功
                  -1：执行失败
  Others:         
*************************************************/
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
        //DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_TX_MSG, "Send Passthrough Request success: %02X %02X %02X", g_canThroughDataBuffer[0], g_canThroughDataBuffer[1], g_canThroughDataBuffer[2]);
    }
    else
    {
        TBOX_PRINT("Send Passthrough Request failed, ret:%d\r\n",ret);
        // DIAG_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_TX_MSG, "Send Passthrough Request failed, ret:%d", ret);
    }
    
    return 0;
}

/*************************************************
  Function:       CanPassthrough_ReceiveResponse
  Description:    接收透传响应
  Input:          
  Output:         pUdsResponse：透传响应数据指针（包括AID、MID、subcommand、数据）
                  pRespLength：响应数据长度（响应数据长度）
  Return:         0:执行成功
                  -1：执行失败
  Others:         
*************************************************/
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

/*************************************************
  Function:       CanPassthroughRead_PENDING
  Description:    接收UDS22服务透传响应
  Input:          pUDSReqData：UDS请求数据指针（UDS请求+请求数据，仅用于重发请求）
                  pUDSReqDataLen：UDS请求数据长度（UDS请求长度 + 请求数据长度，用于重发请求及响应数据偏移计算）
  Output:         pUDSRespData：UDS响应数据指针（响应数据，不包含UDS请求）
  Return:         0:执行成功
                  1:等待MPU响应
                  -1：超时未收到MPU响应 或 传参错误
                  其他：NRC错误 直接传递
  Others:         超时时间为50ms，期间最多重发两次
*************************************************/
int16_t CanPassthroughRead_PENDING(uint8_t *pUDSReqData, uint16_t udsReqDataLen, uint8_t *pUDSRespData)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t uds22Cnt = 0;
    uint16_t udsRespDataLen = 0;

    if (pUDSReqData == NULL || pUDSRespData == NULL)
    {
        return -1;
    }

    respRet = CanPassthrough_ReceiveResponse(pUDSRespData, &udsRespDataLen);
    uds22Cnt++;

    if(respRet == 0 && udsRespDataLen > 0)//接收到响应
    {
        TBOX_PRINT("UDS22RespSuc\n");
        //DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "UDS22RespSuc");
        if(pUDSRespData[0] != 0x7F)
        {
            if(udsRespDataLen >= udsReqDataLen)
            {
                /* 仅传递响应数据，不包含UDS请求 */
                memmove(pUDSRespData,pUDSRespData + udsReqDataLen,(udsRespDataLen - udsReqDataLen));
            }
            ret = 0;
            uds22Cnt = 0;
        }
        else
        {
            /* 负响应 */
            ret = pUDSRespData[2];//NRC 
            uds22Cnt = 0;
        }
    }
    else
    {
        ret = 1;//DCM_E_PENDING
        if((uds22Cnt % (PASSTHROUGH_RESEND_MS / 10)) == 0)//DCM在pending状态下会周期性回调DID的cbk，大约10ms
        {
            CanPassthrough_SendRequest(pUDSReqData, udsReqDataLen);
        }

        if(uds22Cnt >= (PASSTHROUGH_TIMEOUT_MS / 10))//最大超时时间为500ms
        {
            uds22Cnt = 0;
            ret = -1;//timeout
            TBOX_PRINT("UDS22RespTimeout\n");
            //DIAG_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_RX_MSG, "UDS22RespTimeout");
        }
    }   

    return ret;
}

/*************************************************
  Function:       CanPassthroughWrite_PENDING
  Description:    接收UDS2E服务透传响应
  Input:          UDSReqData：UDS请求数据指针（UDS请求+请求数据，仅用于重发请求）
                  UDSReqDataLen：UDS请求数据长度（UDS请求长度 + 请求数据长度，仅用于重发请求）
  Output:         无
  Return:         0:执行成功
                  1:等待MPU响应
                  -1：超时未收到MPU响应 或 传参错误
                  其他：NRC错误 直接传递
  Others:         超时时间为50ms，期间最多重发两次
*************************************************/
int16_t CanPassthroughWrite_PENDING(uint8_t *pUDSReqData, uint16_t udsReqDataLen)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t uds2ECnt = 0;
    uint16_t udsRespDataLen = 0;//MPU响应数据长度
    uint8_t udsRespData[3] = {0};//接收MPU响应缓冲区

    if (pUDSReqData == NULL)
    {
        return -1;
    }

    respRet = CanPassthrough_ReceiveResponse(udsRespData, &udsRespDataLen);
    uds2ECnt++;

    if(respRet == 0 && udsRespDataLen > 0)//接收到响应
    {
        TBOX_PRINT("UDS2ERespSuc\n");
        //DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "UDS2ERespSuc");
        if(udsRespData[0] != 0x7F)
        {
            /* 正响应 写入成功*/
            ret = 0;
            uds2ECnt = 0;
        }
        else
        {
            /* 负响应 回复NRC*/
            ret = udsRespData[2];
            uds2ECnt = 0;
        }
    }
    else
    {
        ret = 1;//DCM_E_PENDING
        if((uds2ECnt % (PASSTHROUGH_RESEND_MS / 10)) == 0)
        {
            CanPassthrough_SendRequest(pUDSReqData, udsReqDataLen);
        }

        if(uds2ECnt >= (PASSTHROUGH_TIMEOUT_MS / 10))
        {
            uds2ECnt = 0;
            ret = -1;//timeout
            TBOX_PRINT("UDS2ERespTimeout\n");
            //DIAG_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_RX_MSG, "UDS2ERespTimeout");
        }
    }   
    return ret;
}

/*************************************************
  Function:       CanPassthroughRoutine_PENDING
  Description:    接收UDS31服务透传响应
  Input:          UDSReqData：UDS请求数据指针（UDS请求+请求数据，仅用于重发请求）
                  UDSReqDataLen：UDS请求数据长度（UDS请求长度 + 请求数据长度，仅用于重发请求）
  Output:         UDSRespData：UDS响应数据指针（响应数据，不包含UDS请求）
                  UDSRespDataLen：UDS响应数据长度（响应数据长度，不包含UDS请求）
  Return:         0:执行成功
                  1:等待MPU响应
                  -1：超时未收到MPU响应 或 传参错误
                  其他：NRC错误 直接传递
  Others:         超时时间为50ms，期间最多重发两次
*************************************************/
int16_t CanPassthroughRoutine_PENDING(uint8_t *pUDSReqData, uint16_t UDSReqDataLen, uint8_t *pUDSRespData, uint16_t *pUDSRespDataLen)
{
    int16_t ret = 0;
    int8_t respRet = 0;
    static uint8_t uds31Cnt = 0;
    uint16_t respDataLen = 0;

    if (pUDSReqData == NULL || pUDSRespData == NULL ||pUDSRespDataLen == NULL) 
    {
        return -1;
    }

    respRet = CanPassthrough_ReceiveResponse(pUDSRespData, &respDataLen);
    uds31Cnt++;

    if((respRet == 0) && (respDataLen > 0))//接收到响应
    {
        TBOX_PRINT("UDS31RespSuc\n");
        //DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "UDS31RespSuc");
        if(pUDSRespData[0] != 0x7F)
        {
            /* 正响应 写入成功*/
            if(respDataLen >= 4)
            {
                memmove(pUDSRespData,pUDSRespData + 4,(respDataLen - 4));
                *pUDSRespDataLen = respDataLen - 4;
                if(pUDSRespData[1] == 0x12 && pUDSRespData[2] == 0x18) {
                    *pUDSRespDataLen = 0; // 强制告诉 DCM 长度为 0，防止触发 OutBuffer error
                }
            }
            ret = 0;
            uds31Cnt = 0;
        }
        else
        {
            /* 负响应 回复NRC*/
            ret = pUDSRespData[2];
            uds31Cnt = 0;
        }
    }
    else
    {
        ret = 1;//DCM_E_PENDING
        if((uds31Cnt % (PASSTHROUGH_RESEND_MS / 10)) == 0)
        {
            CanPassthrough_SendRequest(pUDSReqData, UDSReqDataLen);
        }

        if(uds31Cnt >= (PASSTHROUGH_TIMEOUT_MS / 10))
        {
            uds31Cnt = 0;
            ret = -1;//timeout
            TBOX_PRINT("UDS31RespTimeout\n");
            //DIAG_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_RX_MSG, "UDS31RespTimeout");
        }
    }   

    return ret;
}

/*************************************************
  Function:       CanPassthrough_CheckRestartCmd
  Description:    检查MPU 0x24 重启命令
  Input:          None               
  Output:         None                
  Return:         void
  Others:         None
*************************************************/
void CanPassthrough_CheckRestartCmd(void)
{
    MpuHalDataPack_t rxPack;
    uint8_t          rxBuf[128];
    MpuHalDataPack_t ackPack;
    uint8_t          ackData;
    uint8_t          iamReststs = 0x01;
    Std_ReturnType   comRet;

    if (g_mpuHandle < 0) 
    {
        return;
    }

    rxPack.pDataBuffer = rxBuf;
    rxPack.dataBufferSize = sizeof(rxBuf);
    rxPack.dataLength = 0;

    if (MpuHalReceive(g_mpuHandle, &rxPack, 0) == 0 && rxPack.dataLength > 0)
    {
        if ((rxPack.aid == PASSTHROUGH_AID) && (rxPack.mid == PASSTHROUGH_MID))
        {
            if ((rxPack.subcommand & 0x7F) == PASSTHROUGH_SUB_RESTART_REQ) 
            {
                if ((rxPack.dataLength >= 1) && (rxPack.pDataBuffer[0] == 0x01)) 
                {
                    comRet = Com_SendSignal(IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx, &iamReststs);
                    TBOX_PRINT("comRet: %d\r\n", comRet);

                    ackData = (comRet == E_OK) ? 0x01 : 0x02;
                    
                    ackPack.aid = PASSTHROUGH_AID;
                    ackPack.mid = PASSTHROUGH_MID;
                    ackPack.subcommand = PASSTHROUGH_SUB_RESTART_ACK;
                    ackPack.dataLength = 1;
                    ackPack.pDataBuffer = &ackData;
                    
                    MpuHalTransmit(g_mpuHandle, &ackPack);
                    
                    g_passthroughRestartDelayCnt = 200;
                    g_passthroughRestartState = 1; 
                }
            }
        }
    }

    if (g_passthroughRestartState > 0) 
    {
        if (g_passthroughRestartDelayCnt > 0) 
        {
            g_passthroughRestartDelayCnt--;
            if (g_passthroughRestartDelayCnt == 0) 
            {
                if (g_passthroughRestartState == 1)
                {
                    MpuHalPowerOff();
                    TBOX_PRINT("MPU Power Off\r\n");

                    g_passthroughRestartDelayCnt = 200;
                    g_passthroughRestartState = 2; 
                }
                else if (g_passthroughRestartState == 2)
                {
                    TBOX_PRINT("TBOX Reset\r\n");
                    
                    Mcu_PerformReset(); 
                }
            }
        }
    }
}


