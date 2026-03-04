#ifndef _UDS_EOL_TEST_SYNC_WITH_CPU_H_
#define _UDS_EOL_TEST_SYNC_WITH_CPU_H_

#include "stdlib.h"


#define SYNC_CPU_CONTROL_ITEM_TEST_MODE                 1
#define SYNC_CPU_CONTROL_ITEM_APN_PING                  2


#define SYNC_CPU_CONTROL_ITEM_WIFI_CONNECT              4

#define SYNC_CPU_CONTROL_ITEM_BLUETOOTH_CONNECT         6


#define SYNC_CPU_CONTROL_ITEM_CALL_TEST                 8
#define SYNC_CPU_CONTROL_ITEM_SET_BLUE_TOOTH_NAME       10

#define SYNC_CPU_GET_INFO_ITEM_APN_PING_RESULT          3
#define SYNC_CPU_GET_INFO_ITEM_WIFI_CONNECT_RESULT      5
#define SYNC_CPU_GET_INFO_ITEM_BLUETOOTH_CONNECT_RESULT 7
#define SYNC_CPU_GET_INFO_ITEM_CALL_TEST_RESULT         9
#define SYNC_CPU_GET_INFO_ITEM_BLUE_TOOTH_NAME          11
#define SYNC_CPU_GET_INFO_ITEM_FLASH_CAPACITY           45
#define SYNC_CPU_GET_INFO_ITEM_4G_SIGNAL_VALUE          40
//#define SYNC_CPU_GET_INFO_ITEM_PIN_ECALL_STATE          2
#define SYNC_CPU_GET_INFO_ITEM_NET_TYPE                 41
#define SYNC_CPU_GET_INFO_ITEM_APN_NUMBER               42
#define SYNC_CPU_GET_INFO_ITEM_NET_PROVIDER             43
#define SYNC_CPU_GET_INFO_ITEM_GNSS                     44



void EolTestSyncWithCpuInit(void);

int16_t EolTestSyncWithCpuTransmit(uint8_t item, uint8_t *pData,uint16_t length);
int16_t EolTestSyncWithCpuRecv(uint8_t item, uint8_t *pData,uint16_t *pLength);


#endif
