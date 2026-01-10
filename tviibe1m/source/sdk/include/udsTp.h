/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       udsTp.h.h
  Author:          lei.wang
  Created Time:    2024
  Description:     remote diagnostic SDK module 
   Others:      // 其它说明
*************************************************/
#ifndef _USD_TP_H_
#define _USD_TP_H_

#include "canHal.h"
#include "stdint.h"

//CanTp设置
typedef struct
{
    uint8_t blockSize;
    uint8_t STmin;
    uint8_t fillByte;
    uint32_t N_As_enforced;
    uint32_t N_Ar_enforced;
    uint32_t N_Bs_enforced;
    uint32_t N_Br_enforced;
    uint32_t N_Cs_enforced;
    uint32_t N_Cr_enforced;
    uint32_t N_As_obd;
    uint32_t N_Ar_obd;
    uint32_t N_Bs_obd;
    uint32_t N_Br_obd;
    uint32_t N_Cs_obd;
    uint32_t N_Cr_obd;
}UdsTpParameter_t;


/*************************************************
  Function:       UdsTpOpen
  Description:    转发诊断报文获取句柄
  Input:          canChanal:
                  pCanRxbuffer:
                  pBufferNum:
                  pTpParameter:
  Output:         无
  Return:         -1：失败
                  >0:有效句柄
  Others:         
*************************************************/
int16_t UdsTpOpen(uint8_t canChanal,CanHalMsg_t *pCanRxbuffer,uint16_t pBufferNum,UdsTpParameter_t *pTpParameter);

/*************************************************
  Function:       UdsTpSetFunctionId
  Description:    设置功能寻址id
  Input:          handle：udsTp句柄
                  requestId：功能寻址请求ID
  Output:         无
  Return:         函数执行结果 
                  0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t UdsTpSetFunctionId(int16_t handle,uint32_t requestId);

/*************************************************
  Function:       UdsTpTransmit
  Description:    远程诊断报文TP发送接口
  Input:          handle：诊断Tp据句柄
                  typeFlag：诊断报文类型标记 0：物理寻址 1：功能寻址
                  txData：Can数据
                  dataLen：数据长度
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t UdsTpTransmit(int16_t handle,uint8_t typeFlag,uint8_t *txData,uint16_t dataLen,uint8_t CanSendFlag);
int16_t UdsTpTransmitExtend(int16_t handle,uint8_t typeFlag,uint8_t *txData,uint16_t dataLen);
int16_t UdsTpTransmitFd(int16_t handle,uint8_t typeFlag,uint8_t *txData,uint16_t dataLen,uint8_t CanSendFlag);

/*************************************************
  Function:       UdsTpReceive
  Description:    获取mcu设置单个参数到CPU的请求包
  Input:          udsTpHandle：接收usd响应句柄
                  pData：接收响应数据
                  dataLen：接收数据长度
                  waitTime：接收超时时间设置 单位：ms
  Output:         无
  Return:         0：接收数据成功 
                  -1：未接收到数据
  Others:         
*************************************************/
int16_t UdsTpReceive(int16_t udsTpHandle,uint8_t *pData,uint16_t *dataLen,uint32_t waitTime);
int16_t UdsTpReceiveExtend(int16_t udsTpHandle,uint8_t *pData,uint16_t *dataLen,uint32_t waitTime);
int16_t UdsTpReceiveFd(int16_t udsTpHandle,uint8_t *pData,uint16_t *dataLen,uint32_t waitTime);

/*************************************************
  Function:       UdsTpPhyAddressSetCanId
  Description:    USD TP物理寻址设置canID
  Input:          handle：udsTp句柄
                  reqCanId：诊断请求ID
                  respCanId：对应的响应ID
  Output:         无
  Return:         
  Others:         
*************************************************/
int16_t UdsTpPhyAddressSetCanId(int16_t handle,uint32_t reqCanId,uint32_t respCanId);
int16_t UdsTpFunAddressSetCanId(int16_t handle,uint32_t respCanId);

/*************************************************
  Function:       UdsTpSetFilter
  Description:    UDS诊断设置filter
  Input:          handle：UdsTp 通信句柄
                  respType：诊断请求类型0：物理寻址 1：功能寻址
  Output:         无
  Return:         
  Others:         
*************************************************/
int16_t UdsTpSetFilter(int16_t handle,uint8_t respType);

/*************************************************
  Function:       UdsTpClearRecvBuffer
  Description:    UDS诊断请求请求清空接收buf
  Input:          handle：UdsTp 通信句柄
  Output:         无
  Return:         
  Others:         
*************************************************/
void UdsTpClearRecvBuffer(int16_t handle);

#endif
