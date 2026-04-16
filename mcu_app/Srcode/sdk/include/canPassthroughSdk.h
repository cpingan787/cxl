/*************************************************
 Copyright © 2026 SiRun (Hefei) . All rights reserved.
 File Name: canPassthroughSdk.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef __CANPASSTHROUGH_SDK_H__
#define __CANPASSTHROUGH_SDK_H__

/****************************** include ***************************************/
#include <stdint.h>
/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/





/*************************************************
  Function:       CanPassthroughWithMpuInit
  Description:    初始化CAN透传
  Input:          None
  Return:         None
*************************************************/
void CanPassthroughWithMpuInit(void);


int8_t CanPassthrough_SendRequest(const uint8_t *pUdsRequest, uint16_t reqLength);
int8_t CanPassthrough_ReceiveResponse(uint8_t *pUdsResponse, uint16_t *pRespLength);
int16_t CanPassthroughRead_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData);
int16_t CanPassthroughWrite_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen);
int16_t CanPassthroughRoutine_PENDING(uint8_t *UDSReqData, uint16_t UDSReqDataLen, uint8_t *UDSRespData, uint16_t *UDSRespDataLen);

#endif