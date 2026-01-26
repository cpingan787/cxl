
#include "stdint.h"
#include "stddef.h"
#include "remoteDiagnosticSdk.h"
#include "remoteDiagnosticTask.h"
#include "virtualTpSdk.h"
#include "logHal.h"
#include "taskDiagnostic.h"
static int16_t RemoteUdsPreCondition(void);
static int16_t RemoteUdsCyleTestPresent(uint8_t stopFlag, uint8_t *pTxData, uint8_t txLength, uint32_t cycleTime_ms);

static UdsTpParameter_t g_canTpParameter =
    {
        .blockSize = 100, // application mode
        .STmin = 0,       // application mode
        .fillByte = 0x00,
        .N_As_enforced = 70,  // 70ms
        .N_Ar_enforced = 70,  // 70ms
        .N_Bs_enforced = 150, // 70ms
        .N_Br_enforced = 70,  // 70ms
        .N_Cs_enforced = 70,  // 70ms
        .N_Cr_enforced = 150, // 70ms
        .N_As_obd = 25,       // 25ms
        .N_Ar_obd = 25,       // 25ms
        .N_Bs_obd = 75,       // 70m
        .N_Br_obd = 0,        //(N_Br+N_Ar)ü25ms
        .N_Cs_obd = 0,        //(N_Cs+N_As) ü50ms
        .N_Cr_obd = 150,      //(N_Br+N_Ar)ü25ms
};

static EcuId_t g_ecuList[] = {
    /* PCAN Nodes (Mapped to TBOX_CAN_CHANNEL_2 based on your example) */
    {0x727, 0x7A7, TBOX_CAN_CHANNEL_2}, // ECU_PCAN_SRS
    {0x7F1, 0x7F9, TBOX_CAN_CHANNEL_2}, // ECU_PCAN_SRS
    {0x710, 0x790, TBOX_CAN_CHANNEL_2}, // ECU_PCAN_BCS
    {0x7E0, 0x7E8, TBOX_CAN_CHANNEL_2}, // ECU_PCAN_EMS
    {0x765, 0x76D, TBOX_CAN_CHANNEL_2}, // ECU_PCAN_MFS
    {0x7E1, 0x7E9, TBOX_CAN_CHANNEL_2}, // ECU_PCAN_TCU

    /* ACAN Nodes */
    {0x731, 0x7B1, TBOX_CAN_CHANNEL_2}, // ECU_ACAN_PAS
    {0x714, 0x794, TBOX_CAN_CHANNEL_2}, // ECU_ACAN_EPS
    {0x73E, 0x7BE, TBOX_CAN_CHANNEL_2}, // ECU_ACAN_FR
    {0x740, 0x7C0, TBOX_CAN_CHANNEL_2}, // ECU_ACAN_IFC

    /* BCAN Nodes */
    {0x72C, 0x7AC, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_HVACF
    {0x72B, 0x7AB, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_AVNT
    {0x755, 0x7D5, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_ETC
    {0x728, 0x7A8, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_IID
    {0x720, 0x7A0, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_IBCM 
    {0x748, 0x7C8, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_WCM
    {0x718, 0x798, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_FLDCM
    {0x719, 0x799, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_FRDCM
    {0x73B, 0x7BB, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_HVSM
    {0x73A, 0x7BA, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_RCP
    {0x724, 0x7A4, TBOX_CAN_CHANNEL_2}, // ECU_BCAN_PLGM

    /* TCAN Nodes */
    {0x72D, 0x7AD, TBOX_CAN_CHANNEL_2}, // ECU_TCAN_TBOX

    /* DCAN Nodes */
    {0x74F, 0x7CF, TBOX_CAN_CHANNEL_2}, // ECU_DCAN_GWM/

    {0x067,0x068, TBOX_CAN_CHANNEL_2}, //用于TBOX和网关之间ota模式认证

    {0x069,0x322, TBOX_CAN_CHANNEL_2}, // 用于向网关请求整车ota模式


};

static CanIdConfig_t g_ecuConfigure = {
    .functionalId = 0x7DF,
    .selfDiagnosticReqId = 0x72D,
    .selfDiagnosticRespId = 0x7AD,
    .ecuListSize = sizeof(g_ecuList) / sizeof(g_ecuList[0]),
    .pEcuList = g_ecuList,
    .pCheckPreconditionFun = RemoteUdsPreCondition,
    .pSetTestPresentFun = RemoteUdsCyleTestPresent,
};

static MpuBuffer_t g_mpuBuffer;

static uint8_t g_canChanl[] =
    {
        TBOX_CAN_CHANNEL_2,
};
static CanChanel_t g_canChanlList = {
    .canChanelList = g_canChanl,
    .canChanelListSize = sizeof(g_canChanl) / sizeof(g_canChanl[0]),
};

static int16_t RemoteUdsPreCondition(void)
{
    return 0;
}

static TestPreset_t g_canTestPresent;

static int16_t RemoteUdsCyleTestPresent(uint8_t stopFlag, uint8_t *pTxData, uint8_t txLength, uint32_t cycleTime_ms)
{
    uint8_t i;
    TestPreset_t *pTestPresentVarialble = NULL;
    pTestPresentVarialble = &g_canTestPresent;

    if (stopFlag)
    {
        pTestPresentVarialble->startFlag = 0;
    }
    else
    {
        if (txLength > 7)
        {
            // pTestPresentVarialble->txLength = 7;
            pTestPresentVarialble->txData[0] = 7;
        }
        else
        {
            pTestPresentVarialble->txData[0] = txLength;
            // pTestPresentVarialble->txLength = txLength;
        }
        pTestPresentVarialble->txLength = 0x08;
        for (i = 0; i < pTestPresentVarialble->txData[0]; i++)
        {
            pTestPresentVarialble->txData[i + 1] = pTxData[i];
        }
        for (; i < 7; i++)
        {
            pTestPresentVarialble->txData[i + 1] = g_canTpParameter.fillByte;
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
void RemoteDiagnosticTaskMain(void *pvParameters)
{
    RemoteDiagnosticSdkProcess(&g_ecuConfigure, &g_mpuBuffer, &g_canTpParameter, &g_canChanlList);
}
