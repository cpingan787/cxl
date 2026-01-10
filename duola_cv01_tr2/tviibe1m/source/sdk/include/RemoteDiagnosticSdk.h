/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       remoteDiagnosticSdk.h
  Author:          lei.wang
  Created Time:    2024
  Description:     remote diagnostic SDK module
   Others:      // 其它说明
*************************************************/
#ifndef _REMOTE_DIAGNOSTIC_SDK_H_
#define _REMOTE_DIAGNOSTIC_SDK_H_

#include "canHal.h"
#include "udsTp.h"
#include "stdint.h"
#include "canTpSdk.h"

typedef int16_t (* CheckPreconditionFun_t)(void);
typedef int16_t (* SetTestPresentFun_t)(uint8_t stopFlag,uint8_t *pTxData,uint8_t txLength,uint32_t cycleTime);


//
typedef struct 
{
    uint8_t *canChanelList;   //Can通道列表
    uint16_t canChanelListSize;//Can通道列表大小
}CanChanel_t;


//诊断信息设置结构体
typedef struct 
{
    uint32_t functionalId;                        //功能寻址请求ID
    uint32_t selfDiagnosticReqId;                 //自诊断请求ID
    uint32_t selfDiagnosticRespId;                //自诊断响应ID
    CheckPreconditionFun_t pCheckPreconditionFun; //
    SetTestPresentFun_t pSetTestPresentFun;       //
}CanIdConfig_t;


//
typedef struct 
{
    uint8_t mpuRecvBuffer[2200];    //MPU通信接收buffer设置
    uint16_t mpuRecvBufferSize;     //接收buf的大小
    uint8_t txData[200];           //MPU通信发送缓存
    uint8_t rxData[2200];           //MPU通信接收缓存
    CanHalMsg_t canRxBuffer[10];    //Can数据接收buffer
    uint16_t canRxBufferSize;       //Can数据接收buffer数量 10
}MpuBuffer_t;


typedef struct 
{
    uint8_t txData[10];
    uint8_t txLength;
    uint8_t startFlag;
    uint32_t cycleTime;
    uint32_t timeCount;
}TestPreset_t;

typedef struct 
{
    uint8_t CRCResult;
    uint8_t UpDataProgress;
    uint8_t UpDataResult;
    uint8_t UpDataBagProgress;
	uint8_t UpDataBagCnt;
}UdsUpdata_t;

typedef enum
{
  REMOTE_AUTH_STATE_IDLE = 0,
  REMOTE_AUTH_REQUEST,
  REMOTE_AUTH_RESPONSE,
  REMOTE_AUTH_CANMSG_COLLECT,
  REMOTE_AUTH_CANMSG_COLLECT_RESPONSE,

}remote_auth_state_t;
typedef struct
{
  uint8_t driverBuffer[200];
  uint16_t driverBufferSize;
  uint8_t tx[200];
  uint8_t rx[200];
  CanHalMsg_t canRxBuffer[10];
  uint16_t canRxBufferSize;
  CanHalMsg_t canERxBuffer[10];
  uint16_t canERxBufferSize;
}struct_UartGwBuffer;

#define RX_CANGW_CONFIGURE_CHANNEL_NUMBER            1
#define RX_CANGW_CONFIGURE_BUFFER_SIZE            	 10
#define TX_BUFFER_CAN_MSG_GW_NUM_MAX                 10

/*************************************************
  Function:       RemoteDiagnosticSdkProcess
  Description:    远程诊断接口
  Input:          pEcuConfigure：
                  pMpuBuffer：
                  pTpParameter：
                  canChannelList：
  Output:         无
  Return:         无
  Others:         
*************************************************/
void RemoteDiagnosticSdkProcess(CanIdConfig_t *pEcuConfigure,MpuBuffer_t *pMpuBuffer,UdsTpParameter_t *pTpParameter,CanChanel_t *canChannelList);

/*************************************************
  Function:       RemoteDiagnosticSdkDisable
  Description:    打断远程诊断功能接口，持续10s
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void RemoteDiagnosticSdkDisable(void);

void GwRemoteDiagnosticTaskInit(void);

void GwRemoteDiagnosticTaskStar(void);

uint8_t GetCpuCRCResult(void);

uint8_t GetUpDataProgress();

uint8_t GetUpDataResult();

uint8_t GetUdsHeartFlag(void);

#endif
