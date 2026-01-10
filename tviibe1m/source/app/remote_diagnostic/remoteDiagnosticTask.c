#include "canTpSdk.h"
#include "stdint.h"
#include "remoteDiagnosticSdk.h"
#include "remoteDiagnosticTask.h"

static int16_t RemoteUdsPreCondition(void);
static int16_t RemoteUdsCyleTestPresent(uint8_t stopFlag,uint8_t *pTxData,uint8_t txLength,uint32_t cycleTime_ms);

static UdsTpParameter_t g_canTpParameter[] = 
{
  {
  	.blockSize = 100,//application mode
    .STmin = 0,//application mode
    .fillByte = 0xCC,
    .N_As_enforced = 70,//70ms
    .N_Ar_enforced = 70,//70ms
    .N_Bs_enforced = 150,//70ms
    .N_Br_enforced = 70,//70ms
    .N_Cs_enforced = 70,//70ms
    .N_Cr_enforced = 150,//70ms
    .N_As_obd = 25,//25ms
    .N_Ar_obd = 25,//25ms
    .N_Bs_obd = 75,//70m
    .N_Br_obd = 0,//(N_Br+N_Ar)ü25ms
    .N_Cs_obd = 0,//(N_Cs+N_As) ü50ms
    .N_Cr_obd = 150,//(N_Br+N_Ar)ü25ms
  },
  {
  	.blockSize = 100,//application mode
    .STmin = 0,//application mode
    .fillByte = 0xCC,
    .N_As_enforced = 70,//70ms
    .N_Ar_enforced = 70,//70ms
    .N_Bs_enforced = 150,//70ms
    .N_Br_enforced = 70,//70ms
    .N_Cs_enforced = 70,//70ms
    .N_Cr_enforced = 150,//70ms
    .N_As_obd = 25,//25ms
    .N_Ar_obd = 25,//25ms
    .N_Bs_obd = 75,//70m
    .N_Br_obd = 0,//(N_Br+N_Ar)ü25ms
    .N_Cs_obd = 0,//(N_Cs+N_As) ü50ms
    .N_Cr_obd = 150,//(N_Br+N_Ar)ü25ms
  },
  {
  	.blockSize = 100,//application mode
    .STmin = 0,//application mode
    .fillByte = 0xCC,
    .N_As_enforced = 70,//70ms
    .N_Ar_enforced = 70,//70ms
    .N_Bs_enforced = 150,//70ms
    .N_Br_enforced = 70,//70ms
    .N_Cs_enforced = 70,//70ms
    .N_Cr_enforced = 150,//70ms
    .N_As_obd = 25,//25ms
    .N_Ar_obd = 25,//25ms
    .N_Bs_obd = 75,//70m
    .N_Br_obd = 0,//(N_Br+N_Ar)ü25ms
    .N_Cs_obd = 0,//(N_Cs+N_As) ü50ms
    .N_Cr_obd = 150,//(N_Br+N_Ar)ü25ms
  }
};

static CanIdConfig_t g_ecuConfigure = {
    .functionalId = 0x7DF,
    .selfDiagnosticReqId = 0x703,
    .selfDiagnosticRespId = 0x783,
    .pCheckPreconditionFun = RemoteUdsPreCondition,
    .pSetTestPresentFun = RemoteUdsCyleTestPresent,
};

MpuBuffer_t g_mpuBuffer;

static uint8_t g_canChanl[] = 
{
    TBOX_CAN_CHANNEL_1,
	TBOX_CAN_CHANNEL_2,
	TBOX_CAN_CHANNEL_3
};
static CanChanel_t g_canChanlList = {
    .canChanelList = g_canChanl,
    .canChanelListSize = sizeof(g_canChanl)/sizeof(g_canChanl[0]),
};

static int16_t RemoteUdsPreCondition(void)
{
    return 0;
}

static TestPreset_t g_canTestPresent;

static int16_t RemoteUdsCyleTestPresent(uint8_t stopFlag,uint8_t *pTxData,uint8_t txLength,uint32_t cycleTime_ms)
{
    uint8_t i;
    TestPreset_t *pTestPresentVarialble = NULL;
    pTestPresentVarialble = &g_canTestPresent;
    
    if(stopFlag)
    {
        pTestPresentVarialble->startFlag = 0;
    }
    else
    {
        if(txLength>7)
        {
            //pTestPresentVarialble->txLength = 7;
            pTestPresentVarialble->txData[0] = 7;
        }
        else
        {
            pTestPresentVarialble->txData[0] = txLength;
            //pTestPresentVarialble->txLength = txLength;
        }
        pTestPresentVarialble->txLength = 0x08;
        for(i=0;i<pTestPresentVarialble->txData[0];i++)
        {
            pTestPresentVarialble->txData[i+1] = pTxData[i];
        }
        for(;i<7;i++)
        {
//            pTestPresentVarialble->txData[i+1] = g_canTpParameter.fillByte;
        }
        pTestPresentVarialble->cycleTime = cycleTime_ms;
        
        pTestPresentVarialble->startFlag = 1;
    }
    return 0;
}


/*************************************************
  Function:       remoteDiagnosticTaskMain
  Description:    远程诊断主任务接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
void remoteDiagnosticTaskMain(void *pvParameters)
{
    RemoteUartDiagnosticInit();
    RemoteDiagnosticSdkProcess(&g_ecuConfigure,&g_mpuBuffer,g_canTpParameter,&g_canChanlList);
}
void TaskCanGwRemoteDiagnostic(void *pvParameters)
{
  //GwRemoteDiagnosticTaskInit();
  //GwRemoteDiagnosticTaskStar();
}



