#ifndef _UDS_EOL_TEST_SYNC_WITH_CPU_H_
#define _UDS_EOL_TEST_SYNC_WITH_CPU_H_

#include "stdlib.h"
#include <stdint.h>
#define SYNC_CPU_CONTROL_ITEM_TEST_MODE 1
#define SYNC_CPU_CONTROL_ITEM_APN_PING 2

#define SYNC_CPU_CONTROL_ITEM_WIFI_CONNECT 4

#define SYNC_CPU_CONTROL_ITEM_BLUETOOTH_CONNECT 6

#define SYNC_CPU_CONTROL_ITEM_CALL_TEST 8
#define SYNC_CPU_CONTROL_ITEM_SET_BLUE_TOOTH_NAME 10

#define SYNC_CPU_GET_INFO_ITEM_APN_PING_RESULT 3
#define SYNC_CPU_GET_INFO_ITEM_WIFI_CONNECT_RESULT 5
#define SYNC_CPU_GET_INFO_ITEM_BLUETOOTH_CONNECT_RESULT 7
#define SYNC_CPU_GET_INFO_ITEM_CALL_TEST_RESULT 9
#define SYNC_CPU_GET_INFO_ITEM_BLUE_TOOTH_NAME 11
#define SYNC_CPU_GET_INFO_ITEM_FLASH_CAPACITY 45
#define SYNC_CPU_GET_INFO_ITEM_4G_SIGNAL_VALUE 40
// #define SYNC_CPU_GET_INFO_ITEM_PIN_ECALL_STATE          2
#define SYNC_CPU_GET_INFO_ITEM_NET_TYPE 41
#define SYNC_CPU_GET_INFO_ITEM_APN_NUMBER 42
#define SYNC_CPU_GET_INFO_ITEM_NET_PROVIDER 43
#define SYNC_CPU_GET_INFO_ITEM_GNSS 44

#define SYNC_CPU_GET_INFO_ITEM_PKI_STATUS 46 // B262_cxl获取PKI状态的命令ID

typedef enum
{
    EOL_STATE_IDLE,
    EOL_STATE_SEND_REQ,
    EOL_STATE_WAIT_RESP,
    EOL_STATE_COMPLETE,
    EOL_STATE_TIMEOUT,
    EOL_STATE_ERROR
} EolSyncState_e;

// 定义回调函数指针类型
typedef int16_t (*UdsResponseCallback_t)(uint8_t *pData, uint16_t length, uint8_t result);

void EolTestSyncWithCpuInit(void);

// 供 TaskEcuDiagnostic 周期性调用
void EolTestSyncMainLoop(void);

// 异步启动请求
int16_t EolSync_StartRequest(const uint8_t *pRequest, uint16_t reqLen, UdsResponseCallback_t callback);

// 获取当前状态
EolSyncState_e EolSync_GetState(void);

// 兼容旧接口的函数声明
int16_t CanPassthrough_RequestAndGetResponse(const uint8_t *pUdsRequest, uint16_t reqLength, uint8_t *pUdsResponse, uint16_t *pRespLength);
int16_t EolTestSyncWithCpuRecv(uint8_t item, uint8_t *pData, uint16_t *pLength);
int16_t EolTestSyncWithCpuTransmit(uint8_t item, uint8_t *pData, uint16_t length);
#endif
