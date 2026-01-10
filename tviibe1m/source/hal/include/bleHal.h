#ifndef _BLEHAL_H
#define _BLEHAL_H

void BleHalInit(void);
int16_t BleHalTransmit(uint8_t *pData,uint32_t txLength);
int16_t BleHalRead(uint8_t *pData,uint32_t *readCount);
void BleHalSetMode(uint8_t BleHalRead);
int16_t BleHalGetConnectStatus(void);
int16_t BleHalReadAT(uint8_t *pData,uint32_t *ble_len);

#endif  //_BLEHAL_H