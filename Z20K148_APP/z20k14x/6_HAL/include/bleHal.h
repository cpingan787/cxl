/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: bleHal.h
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
#ifndef _BLEHAL_H
#define _BLEHAL_H
/****************************** include ***************************************/
/****************************** Macro Definitions *****************************/
/****************************** Type Definitions ******************************/
/****************************** Function Declarations *************************/
void BleHalInit(void);
int16_t BleHalTransmit(uint8_t *pData,uint32_t txLength);
int16_t BleHalRead(uint8_t *pData,uint32_t readCount,uint32_t *pLength);
void BleHalSetMode(uint8_t BleHalRead);
int16_t BleHalGetConnectStatus(void);
int16_t BleHalRestSet(uint8_t flag);

#endif  //_BLEHAL_H