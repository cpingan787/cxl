/*************************************************
 Copyright © 2026 SiRun (Hefei) . All rights reserved.
 File Name: canPassthroughSdk.h
 Author: OuChenyang
 Created Time: 2026年4月24日
 Description:
 Others:
*************************************************/
#ifndef __CANPASSTHROUGH_SDK_H__
#define __CANPASSTHROUGH_SDK_H__

/****************************** include ***************************************/
#include <stdint.h>
/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
/****************************** Function Declarations *************************/
/*************************************************
  Function:       CanPassthroughWithMpuInit
  Description:    初始化透传与MPU通信
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void CanPassthroughWithMpuInit(void);

/*************************************************
  Function:       CanPassthrough_SendRequest
  Description:    发送透传请求
  Input:          pUdsRequest：透传请求数据指针（包括AID、MID、subcommand、数据）
                   reqLength：请求数据长度（UDS请求长度 + 请求数据长度）
  Output:         无
  Return:         无
  Others:         
*************************************************/
int8_t CanPassthrough_SendRequest(const uint8_t *pUdsRequest, uint16_t reqLength);

/*************************************************
  Function:       CanPassthrough_ReceiveResponse
  Description:    接收透传响应
  Input:          pUdsResponse：透传响应数据指针（包括AID、MID、subcommand、数据）
                   pRespLength：响应数据长度指针（UDS响应长度 + 响应数据长度）
  Output:         无
  Return:         无
  Others:         
*************************************************/
int8_t CanPassthrough_ReceiveResponse(uint8_t *pUdsResponse, uint16_t *pRespLength);

/*************************************************
  Function:       CanPassthroughRead_PENDING
  Description:    读取透传数据（待处理）
  Input:          UDSReqData：UDS请求数据指针（UDS请求数据）
                   UDSReqDataLen：UDS请求数据长度（UDS请求数据长度）
                   UDSRespData：UDS响应数据指针（UDS响应数据）
  Output:         无
  Return:         无
  Others:         
*************************************************/
int16_t CanPassthroughRead_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData);

/*************************************************
  Function:       CanPassthroughWrite_PENDING
  Description:    写入透传数据（待处理）
  Input:          UDSReqData：UDS请求数据指针（UDS请求数据）
                   UDSReqDataLen：UDS请求数据长度（UDS请求数据长度）
  Output:         无
  Return:         无
  Others:         
*************************************************/
int16_t CanPassthroughWrite_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen);

/*************************************************
  Function:       CanPassthroughRoutine_PENDING
  Description:    透传数据处理（待处理）
  Input:          UDSReqData：UDS请求数据指针（UDS请求数据）
                   UDSReqDataLen：UDS请求数据长度（UDS请求数据长度）
                   UDSRespData：UDS响应数据指针（UDS响应数据）
                   UDSRespDataLen：UDS响应数据长度指针（UDS响应数据长度）
  Output:         无
  Return:         无
  Others:         
*************************************************/
int16_t CanPassthroughRoutine_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData, uint16_t *UDSRespDataLen);

/*************************************************
  Function:       AF0C_SendRequest
  Description:    发送AF0C透传请求
  Input:          pUDSSID：UDS请求数据指针（UDS请求）
                   pUdsRequest：UDS请求数据指针（请求数据）
                   reqLength：请求数据长度（请求数据长度）
  Output:         无
  Return:         无
  Others:         
*************************************************/
int8_t AF0C_SendRequest(uint8_t *pUDSSID, const uint8_t *pUdsRequest, uint16_t reqLength);

/*************************************************
  Function:       AF0C_PENDING
  Description:    接收 AF0C透传响应
  Input:          pUDSSID：UDS请求数据指针（UDS请求）
                  pUdsRequest：UDS请求数据指针（请求数据）
                  reqLength：请求数据长度（请求数据长度）
  Output:         pUDSRespData：UDS响应数据指针（UDS响应数据）
                  pUDSRespDataLen：UDS响应数据长度指针（UDS响应数据长度）
  Return:         无
  Others:         
*************************************************/
int16_t AF0C_PENDING(uint8_t *pUDSSID, const uint8_t *pUdsRequest, uint16_t reqLength, uint8_t *pUDSRespData, uint16_t *pUDSRespDataLen);

/*************************************************
  Function:       CanPassthrough_CheckRestartCmd
  Description:    检查MPU 0x24 重启命令
  Input:          None               
  Output:         None                
  Return:         void
  Others:         None
*************************************************/
void CanPassthrough_CheckRestartCmd(void);
#endif