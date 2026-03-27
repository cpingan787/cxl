#include "logHal.h"
// #include "timerHal.h"
#include "peripheralHal.h"
#include "mpuHal.h"
#include "powerManageHal.h"
// #include "bleHal.h"

#include "batterySdk.h"
// #include "autosarNmSdk.h"
#include "powerManageSdk.h"
#include "taskPowerManage.h"
// #include "taskDtcProcess.h"
// #include "canPeriodTask.h"
#include "NVM.h"
#include "Dem.h"
#include "Dem_PBcfg.h"
#include "Std_Types.h"
#include "Com.h"
#include "Com_Cfg.h"
#include "r_cg_macrodriver.h"
#include "r_port.h"
#include "r_cg_port.h"
#include "NvM_Cfg.h"
#include "NvM_Inter.h"
#include "CanNm.h"

#define SIZE_OF_ARRAY(arrayName) (sizeof(arrayName) / sizeof(arrayName)[0])

static uint16_t g_PowerVoltage = 0;

static uint32_t GetAverageAdValue(uint32_t *pDataIn, uint16_t dataLength)
{
    uint32_t averageValue = 0;
    uint32_t maxValue = 0x00;
    uint32_t minValue = 0xFFFFFFFF;
    uint16_t i = 0;
    uint32_t sum = 0;
    if (pDataIn == NULL || dataLength < 3)
    {
        return 0;
    }

    for (i = 0; i < dataLength; i++)
    {
        if (pDataIn[i] > maxValue)
        {
            maxValue = pDataIn[i];
        }
        if (pDataIn[i] < minValue)
        {
            minValue = pDataIn[i];
        }
        sum += pDataIn[i];
    }
    sum -= maxValue;
    sum -= minValue;
    averageValue = sum / (dataLength - 2);
    return averageValue;
}

static void kl30DetectProcess(void) // KL30检测
{
    static uint8_t adcCount = 0;
    static uint32_t adcValueBuffer[5] = {0};
    uint32_t KL30value = 0;
    if (PeripheralHalAdGet(AD0_CHANNEL_KL30, &KL30value) == 0)
    {
        adcValueBuffer[adcCount] = KL30value;
        adcCount++;
        if (adcCount >= SIZE_OF_ARRAY(adcValueBuffer))
        {
            adcCount = 0;
            g_PowerVoltage = GetAverageAdValue(adcValueBuffer, SIZE_OF_ARRAY(adcValueBuffer));
            //TBOX_PRINT("KL30__value: %d\n", g_PowerVoltage);
        }
    }
}

// test code  1s after usgmd=comfortable/normal driving/AI pilot/AI parking & usgmdV=valid；
#define DIAG_USGMD_TEST_MODE 1u                /* 1: 测试模式; 0: 正式读取CAN信号 */
#define DIAG_USGMD_TEST_PATTERN_ALWAYS_TRUE 1u /* 1: 一直满足; 0: 按下面的测试节奏跑 */
#define DIAG_PRECOND_USGMD_DELAY_CNT 5u        /* 200ms调用一次时，5次=1s */

#define DIAG_USGMD_COMFORTABLE 2u
#define DIAG_USGMD_NORMAL_DRIVING 3u
#define DIAG_USGMD_AI_PARKING 4u
#define DIAG_USGMD_AI_PILOT 5u

static boolean Diag_IsUsgMdTargetValue(uint8_t usgMd)
{
    if ((usgMd == DIAG_USGMD_COMFORTABLE) ||
        (usgMd == DIAG_USGMD_NORMAL_DRIVING) ||
        (usgMd == DIAG_USGMD_AI_PARKING) ||
        (usgMd == DIAG_USGMD_AI_PILOT))
    {
        return TRUE;
    }
    return FALSE;
}

static boolean Diag_IsUsgMdRawConditionOk(void)
{
#if (DIAG_USGMD_TEST_MODE == 1u)

#if (DIAG_USGMD_TEST_PATTERN_ALWAYS_TRUE == 1u)
    //TBOX_PRINT("USG TEST raw=TRUE\r\n");
    return TRUE;
#else
    static uint8_t testStep = 0u;
    testStep++;
    /* 测试节奏:
       1~3次: TRUE
       第4次: FALSE -> 用来验证计数清零
       5~9次: TRUE -> 连续5次后应成立
       10次以后: TRUE
    */
    if ((testStep == 1u) || (testStep == 2u) || (testStep == 3u))
    {
        //TBOX_PRINT("USG TEST step=%d raw=TRUE\r\n", testStep);
        return TRUE;
    }
    if (testStep == 4u)
    {
        //TBOX_PRINT("USG TEST step=%d raw=FALSE\r\n", testStep);
        return FALSE;
    }
    //TBOX_PRINT("USG TEST step=%d raw=TRUE\r\n", testStep);
    return TRUE;
#endif

#else
    uint8_t usgMd = 0u;
    boolean usgMdV = FALSE;
    Std_ReturnType retMode;
    Std_ReturnType retValid;

    retValid = Com_ReceiveSignal(
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usgMdV);

    retMode = Com_ReceiveSignal(
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usgMd);

    //TBOX_PRINT("USG raw: retValid=%d retMode=%d usgMdV=%d usgMd=%d\r\n",
               retValid, retMode, usgMdV, usgMd);

    if ((retValid != E_OK) || (retMode != E_OK))
    {
        return FALSE;
    }

    if (usgMdV != TRUE)
    {
        return FALSE;
    }

    if (Diag_IsUsgMdTargetValue(usgMd) == FALSE)
    {
        return FALSE;
    }

    return TRUE;
#endif
}

boolean Diag_CheckUsgMdPrecondition1s(uint8_t *pCnt)
{
    boolean rawOk;

    if (pCnt == NULL_PTR)
    {
        return FALSE;
    }

    rawOk = Diag_IsUsgMdRawConditionOk();

    if (rawOk == TRUE)
    {
        if (*pCnt < DIAG_PRECOND_USGMD_DELAY_CNT)
        {
            (*pCnt)++;
        }
    }
    else
    {
        *pCnt = 0u;
    }

    //TBOX_PRINT("USG 1S: rawOk=%d cnt=%d ready=%d\r\n",
            //    rawOk,
            //    *pCnt,
            //    (*pCnt >= DIAG_PRECOND_USGMD_DELAY_CNT) ? 1 : 0);

    if (*pCnt >= DIAG_PRECOND_USGMD_DELAY_CNT)
    {
        return TRUE;
    }

    return FALSE;
}

/*#define DIAG_PRECOND_USGMD_DELAY_CNT      5         //需要5次才能实现1S
#define DIAG_USGMD_COMFORTABLE            2    // 对应 UsgMd_2_Comfortable
#define DIAG_USGMD_NORMAL_DRIVING         3    // 对应 UsgMd_3_NormalDriving
#define DIAG_USGMD_AI_PARKING             4    // 对应 UsgMd_4_AIPraking
#define DIAG_USGMD_AI_PILOT               5    // 对应 UsgMd_5_AIPilot

static boolean Diag_IsUsgMdTargetValue(uint8_t usgMd)   // 判断 usgmd 是否属于 DTCMatrix 允许的那几个模式
{
    if ((usgMd == DIAG_USGMD_COMFORTABLE) ||
        (usgMd == DIAG_USGMD_NORMAL_DRIVING) ||
        (usgMd == DIAG_USGMD_AI_PARKING) ||
        (usgMd == DIAG_USGMD_AI_PILOT))
    {
        return TRUE;
    }
    return FALSE;
}

static boolean Diag_IsUsgMdRawConditionOk(void)        // 判断是否满足 usgmd/usgmdV 条件
{
    uint8_t usgMd = 0u;
    boolean usgMdV = FALSE;
    Std_ReturnType retMode;
    Std_ReturnType retValid;

    retValid = Com_ReceiveSignal(
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usgMdV);

    retMode = Com_ReceiveSignal(
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usgMd);
    if ((retValid != E_OK) || (retMode != E_OK))
    {
        return FALSE;
    }
    if (usgMdV != TRUE)
    {
        return FALSE;
    }
    if (Diag_IsUsgMdTargetValue(usgMd) == FALSE)       // 如果usgmd 不是要求的那几个模式之一
    {
        return FALSE;
    }
    return TRUE;
}

boolean Diag_CheckUsgMdPrecondition1s(uint8_t *pCnt)   // 对外公共函数：判断 usgmd 条件是否已连续满足1s
{
    if (pCnt == NULL_PTR)
    {
        return FALSE;
    }
    if (Diag_IsUsgMdRawConditionOk() == TRUE)
    {
        if (*pCnt < DIAG_PRECOND_USGMD_DELAY_CNT)
        {
            (*pCnt)++;
        }
    }
    else
    {
        *pCnt = 0u;
    }
    if (*pCnt >= DIAG_PRECOND_USGMD_DELAY_CNT)
    {
        return TRUE;
    }
    return FALSE;
}*/

static boolean ISEPTStCmdOff(void)
{
    boolean eptStCmdOn = FALSE;
    Std_ReturnType ret;
    ret = Com_ReceiveSignal(
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx, &eptStCmdOn);
    if ((ret == E_OK) && (eptStCmdOn != TRUE))
    {
        return TRUE;
    }

    return FALSE;
}

#define ANT_DTC_KL30_MIN_MV 9000       /* KL30 下限 9V，低于该值不允许诊断 */
#define ANT_DTC_KL30_MAX_MV 16000      /* KL30 上限 16V，高于该值不允许诊断 */
#define ANT_DTC_SHORT_GND_TH_MV 200    /* 小于 0.2V 判定为短路 */
#define ANT_DTC_OPEN_LOW_TH_MV 1500    /* 开路区间下限，按你现有工程先写 1.5V */
#define ANT_DTC_OPEN_HIGH_TH_MV 1900   /* 开路区间上限，按你现有工程先写 1.9V */
#define ANT_DTC_NORMAL_LOW_TH_MV 200   /* 正常恢复区间下限，大于 0.2V */
#define ANT_DTC_NORMAL_HIGH_TH_MV 1500 /* 正常恢复区间上限，小于 1.5V */
#define ANT_DTC_START_DELAY_CNT 5      /* 上电延时计数，200ms 一次，6 次约 1.2s */
#define ANT_DTC_CONFIRM_CNT 20         /* 故障成熟计数，20 次约 4s */
#define ANT_DTC_RECOVER_CNT 20         /* 故障恢复计数，20 次约 4s */

#define DEM_EVT_5G_DIV2_SHORT ((Dem_EventIdType)EventParameter_0x95A111) /* 第二分集短路事件，*/
#define DEM_EVT_5G_DIV2_OPEN ((Dem_EventIdType)EventParameter_0x95A113)  /* 第二分集开路事件，*/
#define DEM_EVT_5G_DIV1_SHORT ((Dem_EventIdType)EventParameter_0x95A311) /* 第一分集短路事件，*/
#define DEM_EVT_5G_DIV1_OPEN ((Dem_EventIdType)EventParameter_0x95A313)  /* 第一分集开路事件，*/
#define DEM_EVT_5G_DIV3_SHORT ((Dem_EventIdType)EventParameter_0x95A411) /* 第三分集短路事件，*/
#define DEM_EVT_5G_DIV3_OPEN ((Dem_EventIdType)EventParameter_0x95A413)  /* 第三分集开路事件，*/

#define ANT5GDIV2_ADC_CHANNEL AD0_CHANNEL_MIMO3_ANT_ADC /* 第二分集 ADC 通道，*/
#define ANT5GDIV1_ADC_CHANNEL AD0_CHANNEL_DIV_ANT_ADC   /* 第一分集 ADC 通道，*/
#define ANT5GDIV3_ADC_CHANNEL AD0_CHANNEL_MIMO4_ANT_ADC /* 第三分集 ADC 通道，*/

typedef enum
{
    ANT5G_DIV2_INDEX = 0u, /* 第二分集数组索引 */
    ANT5G_DIV1_INDEX,      /* 第一分集数组索引 */
    ANT5G_DIV3_INDEX,      /* 第三分集数组索引 */
    ANT5G_DIV_MAX          /* 分集总数 */
} ANT5G_DetectIndex_t;

typedef struct
{
    Dem_EventIdType shortEventId; /* 本路短路对应的 Dem EventId */
    Dem_EventIdType openEventId;  /* 本路开路对应的 Dem EventId */
    uint16_t adcChannel;          /* 本路使用的 ADC 通道 */
} ANT_DetectConfig_t;

typedef struct
{
    uint8_t shortCnt;  /* 短路连续计数 */
    uint8_t openCnt;   /* 开路连续计数 */
    uint8_t okCnt;     /* 恢复正常连续计数 */
    uint8_t startCnt;  /* 上电延时计数 */
    boolean shortFlag; /* 短路故障已成熟并上报过的锁存标志 */
    boolean openFlag;  /* 开路故障已成熟并上报过的锁存标志 */
} ANT_DetectState_t;   /* 单路天线运行状态 */

static const ANT_DetectConfig_t g_antDetectCfg[ANT5G_DIV_MAX] =
    {
        {DEM_EVT_5G_DIV2_SHORT, DEM_EVT_5G_DIV2_OPEN, ANT5GDIV2_ADC_CHANNEL}, /* 第二分集配置 */
        {DEM_EVT_5G_DIV1_SHORT, DEM_EVT_5G_DIV1_OPEN, ANT5GDIV1_ADC_CHANNEL}, /* 第一分集配置 */
        {DEM_EVT_5G_DIV3_SHORT, DEM_EVT_5G_DIV3_OPEN, ANT5GDIV3_ADC_CHANNEL}  /* 第三分集配置 */
};

static ANT_DetectState_t g_antDetectState[ANT5G_DIV_MAX];

static uint16_t ANT_ReadVoltage(uint16_t adcChannel) // 读取天线的电压值
{
    uint32_t antVoltage = 0u;
    PeripheralHalAdGet(adcChannel, &antVoltage);
    return (uint16_t)antVoltage;
}

static void ANT_ResetShortState(ANT_DetectState_t *pState)
{
    pState->shortCnt = 0u;
    pState->okCnt = 0u;
    pState->shortFlag = FALSE;
}

static void ANT_ResetOpenState(ANT_DetectState_t *pState)
{
    pState->openCnt = 0u;
    pState->okCnt = 0u;
    pState->openFlag = FALSE;
}

static void ANT_SyncStateWithDem(const ANT_DetectConfig_t *pCfg, ANT_DetectState_t *pState)
{
    Dem_UdsStatusByteType eventStatus = 0u;
    if (pState->shortFlag == TRUE)
    {
        if (Dem_GetEventStatus(pCfg->shortEventId, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                ANT_ResetShortState(pState);
            }
        }
    }
    if (pState->openFlag == TRUE)
    {
        if (Dem_GetEventStatus(pCfg->openEventId, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                ANT_ResetOpenState(pState);
            }
        }
    }
}

static void ANT_InitOneState(ANT_DetectState_t *pState) // 初始化单路状态
{
    pState->shortCnt = 0u;
    pState->openCnt = 0u;
    pState->okCnt = 0u;
    pState->startCnt = 0u;
    pState->shortFlag = FALSE;
    pState->openFlag = FALSE;
}

static void ANT_DetectOneProcess(const ANT_DetectConfig_t *pCfg, ANT_DetectState_t *pState, uint16_t antVoltage_5g)
{
    uint16_t kl30Voltage = g_PowerVoltage;
    ANT_SyncStateWithDem(pCfg, pState);
    if (pState->startCnt < ANT_DTC_START_DELAY_CNT)
    {
        pState->startCnt++;
    }
    if ((kl30Voltage >= ANT_DTC_KL30_MIN_MV) &&
        (kl30Voltage <= ANT_DTC_KL30_MAX_MV) &&
        ISEPTStCmdOff() &&
        (pState->startCnt >= ANT_DTC_START_DELAY_CNT))
    {
        if (antVoltage_5g < ANT_DTC_SHORT_GND_TH_MV) // 短路
        {
            if (pState->shortCnt < ANT_DTC_CONFIRM_CNT)
            {
                pState->shortCnt++;
            }

            pState->openCnt = 0u;
            pState->okCnt = 0u;
        }
        else if ((antVoltage_5g >= ANT_DTC_OPEN_LOW_TH_MV) && (antVoltage_5g <= ANT_DTC_OPEN_HIGH_TH_MV)) // 开路
        {
            if (pState->openCnt < ANT_DTC_CONFIRM_CNT)
            {
                pState->openCnt++;
            }

            pState->shortCnt = 0u;
            pState->okCnt = 0u;
        }
        else if ((antVoltage_5g > ANT_DTC_NORMAL_LOW_TH_MV) && (antVoltage_5g < ANT_DTC_NORMAL_HIGH_TH_MV)) // 恢复
        {
            if (pState->okCnt < ANT_DTC_RECOVER_CNT)
            {
                pState->okCnt++;
            }

            pState->shortCnt = 0u;
            pState->openCnt = 0u;
        }
        else
        {
            pState->shortCnt = 0u;
            pState->openCnt = 0u;
            pState->okCnt = 0u;
        }

        if ((pState->shortCnt >= ANT_DTC_CONFIRM_CNT) && (pState->shortFlag == FALSE))
        {
            pState->shortFlag = TRUE;
            Dem_SetEventStatus(pCfg->shortEventId, DEM_EVENT_STATUS_FAILED);
        }

        if ((pState->openCnt >= ANT_DTC_CONFIRM_CNT) && (pState->openFlag == FALSE))
        {
            pState->openFlag = TRUE;
            Dem_SetEventStatus(pCfg->openEventId, DEM_EVENT_STATUS_FAILED);
        }

        if (pState->okCnt >= ANT_DTC_RECOVER_CNT)
        {
            if (pState->shortFlag == TRUE)
            {
                pState->shortFlag = FALSE;
                Dem_SetEventStatus(pCfg->shortEventId, DEM_EVENT_STATUS_PASSED);
            }

            if (pState->openFlag == TRUE)
            {
                pState->openFlag = FALSE;
                Dem_SetEventStatus(pCfg->openEventId, DEM_EVENT_STATUS_PASSED);
            }
        }
    }
    else
    {
        pState->shortCnt = 0u;
        pState->openCnt = 0u;
        pState->okCnt = 0u;
    }
}

void ANT5G_DIV_DtcInit(void) // 统一初始化三路分集天线的诊断状态以及天线使能
{
    // PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    // PORT.PDSC10 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PDSC10 |= _PORT_PDSCn10_SLOW_MODE_SELECT;
    // PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    // PORT.PODC10 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PODC10 |= _PORT_PODCn10_PUSH_PULL;
    // PORT.PBDC10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PBDC10 |= _PORT_PBDCn10_PBDC_MODE_DISABLED;
    // PORT.P10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.P10 |= _PORT_Pn10_OUTPUT_LOW;
    // PORT.PM10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PM10 |= _PORT_PMn10_MODE_OUTPUT;
    // R_PORT_SetGpioOutput(Port10, 10, 1);

    uint8_t i = 0u;
    for (i = 0u; i < (uint8_t)ANT5G_DIV_MAX; i++)
    {
        ANT_InitOneState(&g_antDetectState[i]);
    }
}

void ANT5G_DIV_DetectProcess_200ms(void)
{
    uint16_t antVoltage[ANT5G_DIV_MAX];
    antVoltage[ANT5G_DIV2_INDEX] = ANT_ReadVoltage(g_antDetectCfg[ANT5G_DIV2_INDEX].adcChannel);                                /* 采集第二分集电压 */
    antVoltage[ANT5G_DIV1_INDEX] = ANT_ReadVoltage(g_antDetectCfg[ANT5G_DIV1_INDEX].adcChannel);                                /* 采集第一分集电压 */
    antVoltage[ANT5G_DIV3_INDEX] = ANT_ReadVoltage(g_antDetectCfg[ANT5G_DIV3_INDEX].adcChannel);                                /* 采集第三分集电压 */
    ANT_DetectOneProcess(&g_antDetectCfg[ANT5G_DIV2_INDEX], &g_antDetectState[ANT5G_DIV2_INDEX], antVoltage[ANT5G_DIV2_INDEX]); /* 处理第二分集诊断 */
    ANT_DetectOneProcess(&g_antDetectCfg[ANT5G_DIV1_INDEX], &g_antDetectState[ANT5G_DIV1_INDEX], antVoltage[ANT5G_DIV1_INDEX]); /* 处理第一分集诊断 */
    ANT_DetectOneProcess(&g_antDetectCfg[ANT5G_DIV3_INDEX], &g_antDetectState[ANT5G_DIV3_INDEX], antVoltage[ANT5G_DIV3_INDEX]); /* 处理第三分集诊断 */
}


// 5G main ant

#define DEM_EVT_5G_MAIN_SHORT ((Dem_EventIdType)EventParameter_0x95A011) /* 23u - B15A1 FTB:11 */
#define DEM_EVT_5G_MAIN_OPEN ((Dem_EventIdType)EventParameter_0x95A013)  /* 24u - B15A1 FTB:13 */

static uint8_t ANT5GMAIN_Short_Cnt = 0; // 5G主天线短路连续计数
static uint8_t ANT5GMAIN_Open_Cnt = 0;  // 5G主天线开路连续计数
static uint8_t ANT5GMAIN_Ok_Cnt = 0;    // 5G主天线恢复正常连续计数
static uint8_t ANT5GMAIN_StartCnt = 0;  // 上电延时计数，200ms调用一次
// static uint8_t ANT5GMAIN_UsgMdCnt = 0;       //5G主天线usgmd计数器
static boolean ANT5GMAIN_Short_Flag = FALSE; // 5G主天线短路故障已成熟标志
static boolean ANT5GMAIN_Open_Flag = FALSE;  // 5G主天线开路故障已成熟标志

static void ANT5GMAIN_ResetShortMonitorState(void)
{
    ANT5GMAIN_Short_Cnt = 0;
    ANT5GMAIN_Ok_Cnt = 0;
    ANT5GMAIN_Short_Flag = FALSE;
}

static void ANT5GMAIN_ResetOpenMonitorState(void)
{
    ANT5GMAIN_Open_Cnt = 0;
    ANT5GMAIN_Ok_Cnt = 0;
    ANT5GMAIN_Open_Flag = FALSE;
}

static void ANT5GMAIN_SyncMonitorStateWithDem(void)
{
    Dem_UdsStatusByteType eventStatus = 0u;

    if (ANT5GMAIN_Short_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_5G_MAIN_SHORT, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                ANT5GMAIN_ResetShortMonitorState();
            }
        }
    }

    if (ANT5GMAIN_Open_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_5G_MAIN_OPEN, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                ANT5GMAIN_ResetOpenMonitorState();
            }
        }
    }
}

void ANT5GMAIN_DtcInit(void)
{
    ANT5GMAIN_Short_Cnt = 0;
    ANT5GMAIN_Open_Cnt = 0;
    ANT5GMAIN_Ok_Cnt = 0;
    ANT5GMAIN_StartCnt = 0;
    // ANT5GMAIN_UsgMdCnt = 0;
    ANT5GMAIN_Short_Flag = FALSE;
    ANT5GMAIN_Open_Flag = FALSE;

    // PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    // PORT.PDSC10 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PDSC10 |= _PORT_PDSCn10_SLOW_MODE_SELECT;
    // PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    // PORT.PODC10 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PODC10 |= _PORT_PODCn10_PUSH_PULL;
    // PORT.PBDC10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PBDC10 |= _PORT_PBDCn10_PBDC_MODE_DISABLED;
    // PORT.P10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.P10 |= _PORT_Pn10_OUTPUT_LOW;
    // PORT.PM10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    // PORT.PM10 |= _PORT_PMn10_MODE_OUTPUT;
    // R_PORT_SetGpioOutput(Port10, 10, 1);
}

void ANT5GMAIN_DetectProcess(uint16_t antVoltage_5g)
{
    uint16_t kl30Voltage = g_PowerVoltage;
    ANT5GMAIN_SyncMonitorStateWithDem();

    if (ANT5GMAIN_StartCnt < ANT_DTC_START_DELAY_CNT)
    {
        ANT5GMAIN_StartCnt++;
    }

    if ((kl30Voltage >= ANT_DTC_KL30_MIN_MV) && (kl30Voltage <= ANT_DTC_KL30_MAX_MV) &&
        ISEPTStCmdOff() && (ANT5GMAIN_StartCnt >= ANT_DTC_START_DELAY_CNT) /*&&
      (Diag_CheckUsgMdPrecondition1s(&ANT5GMAIN_UsgMdCnt) == TRUE)*/
    )
    {
        if (antVoltage_5g < ANT_DTC_SHORT_GND_TH_MV)
        {
            if (ANT5GMAIN_Short_Cnt < ANT_DTC_CONFIRM_CNT)
            {
                ANT5GMAIN_Short_Cnt++;
            }
            ANT5GMAIN_Open_Cnt = 0;
            ANT5GMAIN_Ok_Cnt = 0;
        }
        else if ((antVoltage_5g >= ANT_DTC_OPEN_LOW_TH_MV) && (antVoltage_5g <= ANT_DTC_OPEN_HIGH_TH_MV))
        {
            if (ANT5GMAIN_Open_Cnt < ANT_DTC_CONFIRM_CNT)
            {
                ANT5GMAIN_Open_Cnt++;
            }
            ANT5GMAIN_Short_Cnt = 0;
            ANT5GMAIN_Ok_Cnt = 0;
        }
        else if ((antVoltage_5g > ANT_DTC_NORMAL_LOW_TH_MV) && (antVoltage_5g < ANT_DTC_NORMAL_HIGH_TH_MV))
        {
            if (ANT5GMAIN_Ok_Cnt < ANT_DTC_RECOVER_CNT)
            {
                ANT5GMAIN_Ok_Cnt++;
            }
            ANT5GMAIN_Short_Cnt = 0;
            ANT5GMAIN_Open_Cnt = 0;
        }
        else
        {
            ANT5GMAIN_Short_Cnt = 0;
            ANT5GMAIN_Open_Cnt = 0;
            ANT5GMAIN_Ok_Cnt = 0;
        }

        if ((ANT5GMAIN_Short_Cnt >= ANT_DTC_CONFIRM_CNT) && (ANT5GMAIN_Short_Flag == FALSE))
        {
            ANT5GMAIN_Short_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_5G_MAIN_SHORT, DEM_EVENT_STATUS_FAILED);
        }

        if ((ANT5GMAIN_Open_Cnt >= ANT_DTC_CONFIRM_CNT) && (ANT5GMAIN_Open_Flag == FALSE))
        {
            ANT5GMAIN_Open_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_5G_MAIN_OPEN, DEM_EVENT_STATUS_FAILED);
        }

        if (ANT5GMAIN_Ok_Cnt >= ANT_DTC_RECOVER_CNT)
        {
            if (ANT5GMAIN_Short_Flag == TRUE)
            {
                ANT5GMAIN_Short_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_5G_MAIN_SHORT, DEM_EVENT_STATUS_PASSED);
            }

            if (ANT5GMAIN_Open_Flag == TRUE)
            {
                ANT5GMAIN_Open_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_5G_MAIN_OPEN, DEM_EVENT_STATUS_PASSED);
            }
        }
    }
    else
    {
        ANT5GMAIN_Short_Cnt = 0;
        ANT5GMAIN_Open_Cnt = 0;
        ANT5GMAIN_Ok_Cnt = 0;
    }
}

#define kl30VOLTAGE_DTC_HIGH ((Dem_EventIdType)EventParameter_0xD56217) /* 45u - U1562 FTB:17 */
#define kl30VOLTAGE_DTC_LOW ((Dem_EventIdType)EventParameter_0xD56316)  /* 46u - U1563 FTB:16 */

typedef enum
{
    E_KL30_DETECT_NORMAL = 0,
    E_KL30_DETECT_HIGH,
    E_KL30_DETECT_LOW,
} Kl30DetectState;

static Kl30DetectState g_voltageDiagState = E_KL30_DETECT_LOW;
static uint32_t g_diagRecoverTimerCount = 0;
static uint8_t g_diagStartFlag = 0x00;
static uint32_t g_diagFaultTimerCount = 0;
static const uint16_t g_diagMaxVolage = 16000;
static const uint16_t g_diagMinVolage = 9000;
static const uint16_t g_diagMaxRecoverVolage = 15500;
static const uint16_t g_diagMinRecoverVolage = 9500;
static const uint32_t g_diagRecoverTime = 1000;
static const uint32_t g_digStartTime = 1000;
static const uint32_t g_diagFaultTime = 1000;

void kl30VoltageDTCProcess(uint16_t powerVoltage)
{
    if (E_KL30_DETECT_NORMAL == g_voltageDiagState)
    {
        if (powerVoltage > g_diagMaxVolage)
        {
            g_voltageDiagState = E_KL30_DETECT_HIGH;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
        }
        else if (powerVoltage < g_diagMinVolage)
        {
            g_voltageDiagState = E_KL30_DETECT_LOW;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
        }
    }
    else if (E_KL30_DETECT_HIGH == g_voltageDiagState)
    {
        if (powerVoltage <= g_diagMaxRecoverVolage)
        {
            g_diagFaultTimerCount = 0;
            if (g_diagRecoverTimerCount >= (g_diagRecoverTime / 200))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;
                Dem_SetEventStatus(kl30VOLTAGE_DTC_HIGH, DEM_EVENT_STATUS_PASSED);
            }
            else
            {
                g_diagRecoverTimerCount++;
            }
        }
        else
        {
            g_diagRecoverTimerCount = 0;
            if (powerVoltage > g_diagMaxVolage)
            {
                if (g_diagFaultTimerCount >= (g_diagFaultTime / 200))
                {
                    Dem_SetEventStatus(kl30VOLTAGE_DTC_HIGH, DEM_EVENT_STATUS_FAILED);
                }
                else
                {
                    g_diagFaultTimerCount += 1;
                }
            }
            else
            {
                g_diagFaultTimerCount = 0;
            }
        }
    }
    else if (E_KL30_DETECT_LOW == g_voltageDiagState)
    {
        if (powerVoltage >= g_diagMinRecoverVolage)
        {
            g_diagFaultTimerCount = 0;
            if (g_diagRecoverTimerCount >= (g_diagRecoverTime / 200))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;
                g_diagRecoverTimerCount = 0;
                Dem_SetEventStatus(kl30VOLTAGE_DTC_LOW, DEM_EVENT_STATUS_PASSED);
            }
            else
            {
                g_diagRecoverTimerCount++;
            }
        }
        else
        {
            g_diagRecoverTimerCount = 0;
            if (powerVoltage < g_diagMinVolage)
            {
                if (g_diagFaultTimerCount >= (g_diagFaultTime / 200))
                {
                    Dem_SetEventStatus(kl30VOLTAGE_DTC_LOW, DEM_EVENT_STATUS_FAILED);
                }
                else
                {
                    g_diagFaultTimerCount++;
                }
            }
            else
            {
                g_diagFaultTimerCount = 0;
            }
        }
    }
    else
    {
        g_voltageDiagState = E_KL30_DETECT_NORMAL;
        g_diagRecoverTimerCount = 0;
        g_diagFaultTimerCount = 0;
    }
}

// GPS_ANT   DTC
#define DEM_EVT_GPS_SHORT ((Dem_EventIdType)EventParameter_0x95A711) /*36u - B15A7 FTB:11*/
#define DEM_EVT_GPS_OPEN ((Dem_EventIdType)EventParameter_0x95A713)  /*37u - B15A7 FTB:13*/

#define GPS_DTC_KL30_MIN_MV 9000
#define GPS_DTC_KL30_MAX_MV 16000
#define GPS_DTC_SHORT_TH_MV 400
#define GPS_DTC_OPEN_LOW_TH_MV 2000
#define GPS_DTC_OPEN_HIGH_TH_MV 2650
#define GPS_DTC_RECOVER_ADC0_LOW_TH_MV 1600  /* 解除故障条件中 ADC0 下限：1600mV */
#define GPS_DTC_RECOVER_ADC0_HIGH_TH_MV 2450 /* 解除故障条件中 ADC0 上限：2450mV */
#define GPS_DTC_RECOVER_ADC1_TH_MV 400       /* 解除故障条件中 ADC1：小于 400mV */
#define GPS_DTC_START_DELAY_CNT 5
#define GPS_DTC_CONFIRM_CNT 25
#define GPS_DTC_RECOVER_CNT 25

static uint8_t GPS_Short_Cnt = 0; // GPS 短路连续计数
static uint8_t GPS_Open_Cnt = 0;  // GPS 开路连续计数
static uint8_t GPS_Ok_Cnt = 0;    // GPS 恢复正常连续计数
static uint8_t GPS_StartCnt = 0;  // GPS 上电延时计数
static boolean GPS_Short_Flag = FALSE;
static boolean GPS_Open_Flag = FALSE;

static void GPS_ResetShortMonitorState(void) /* 复位 GPS 短路相关状态 */
{
    GPS_Short_Cnt = 0;
    GPS_Ok_Cnt = 0;
    GPS_Short_Flag = FALSE;
}

static void GPS_ResetOpenMonitorState(void) /* 复位 GPS 开路相关状态 */
{
    GPS_Open_Cnt = 0;
    GPS_Ok_Cnt = 0;
    GPS_Open_Flag = FALSE;
}

static void GPS_SyncMonitorStateWithDem(void) // 当 14 FF FF FF 清除了Dem，但应用层flag没清时，在这里同步
{
    Dem_UdsStatusByteType eventStatus = 0;
    if (GPS_Short_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_GPS_SHORT, &eventStatus) == E_OK) /* 读取 GPS 短路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                GPS_ResetShortMonitorState();
            }
        }
    }
    if (GPS_Open_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_GPS_OPEN, &eventStatus) == E_OK) /* 读取 GPS 开路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                GPS_ResetOpenMonitorState();
            }
        }
    }
}

void GPS_DtcInit(void)
{
    GPS_Short_Cnt = 0;
    GPS_Open_Cnt = 0;
    GPS_Ok_Cnt = 0;
    GPS_StartCnt = 0;
    GPS_Short_Flag = FALSE;
    GPS_Open_Flag = FALSE;

    // PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    // PORT.PDSC10 &= (uint32_t)~_PORT_PMn5_MODE_UNUSED;
    // PORT.PDSC10 |= _PORT_PDSCn5_SLOW_MODE_SELECT;
    // PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    // PORT.PODC10 &= (uint32_t)~_PORT_PMn5_MODE_UNUSED;
    // PORT.PODC10 |= _PORT_PODCn5_PUSH_PULL;
    // PORT.PBDC10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    // PORT.PBDC10 |= _PORT_PBDCn5_PBDC_MODE_DISABLED;
    // PORT.P10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    // PORT.P10 |= _PORT_Pn5_OUTPUT_LOW;
    // PORT.PM10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    // PORT.PM10 |= _PORT_PMn5_MODE_OUTPUT;
    // R_PORT_SetGpioOutput(Port10, 5, 1);
}

void GPS_DetectProcess_200ms(void) /* GPS 诊断主函数，每200ms周期调用一次 */
{
    uint32_t gpsVoltageAdc1 = 0;           // 保存 ADC1 通道采样值
    uint32_t gpsVoltageAdc0 = 0;           // 保存 ADC0 通道采样值
    uint16_t kl30Voltage = g_PowerVoltage; // 读取当前 KL30 电压

    GPS_SyncMonitorStateWithDem();
    PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC1, &gpsVoltageAdc1); /* 采集 GPS ADC1 通道电压 */
    PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC0, &gpsVoltageAdc0); /* 采集 GPS ADC0 通道电压 */

    //TBOX_PRINT("gpsVoltageAdc1_value: %d\n", gpsVoltageAdc1);
    //TBOX_PRINT("gpsVoltageAdc0_value: %d\n", gpsVoltageAdc0);

    if (GPS_StartCnt < GPS_DTC_START_DELAY_CNT)
    {
        GPS_StartCnt++;
    }
    if ((kl30Voltage >= GPS_DTC_KL30_MIN_MV) &&
        (kl30Voltage <= GPS_DTC_KL30_MAX_MV) &&
        ISEPTStCmdOff() &&
        (GPS_StartCnt >= GPS_DTC_START_DELAY_CNT))
    {
        if ((gpsVoltageAdc1 < GPS_DTC_SHORT_TH_MV) &&
            (gpsVoltageAdc0 < GPS_DTC_SHORT_TH_MV)) // ADC0 ADC1电压也小于 0.1V，两个通道必须同时满足才算短路
        {
            if (GPS_Short_Cnt < GPS_DTC_CONFIRM_CNT)
            {
                GPS_Short_Cnt++;
            }
            GPS_Open_Cnt = 0;
            GPS_Ok_Cnt = 0;
        }
        else if ((gpsVoltageAdc1 >= GPS_DTC_OPEN_LOW_TH_MV) && // ADC0 ADC1 电压均满足开路上下限
                 (gpsVoltageAdc1 <= GPS_DTC_OPEN_HIGH_TH_MV) &&
                 (gpsVoltageAdc0 >= GPS_DTC_OPEN_LOW_TH_MV) &&
                 (gpsVoltageAdc0 <= GPS_DTC_OPEN_HIGH_TH_MV))
        {
            if (GPS_Open_Cnt < GPS_DTC_CONFIRM_CNT)
            {
                GPS_Open_Cnt++;
            }
            GPS_Short_Cnt = 0;
            GPS_Ok_Cnt = 0;
        }
        else if ((gpsVoltageAdc0 >= GPS_DTC_RECOVER_ADC0_LOW_TH_MV) && // ADC0 ADC1电压均满足正常区间上下限
                 (gpsVoltageAdc0 <= GPS_DTC_RECOVER_ADC0_HIGH_TH_MV) &&
                 (gpsVoltageAdc1 < GPS_DTC_RECOVER_ADC1_TH_MV))
        {
            if (GPS_Ok_Cnt < GPS_DTC_RECOVER_CNT)
            {
                GPS_Ok_Cnt++;
            }
            GPS_Short_Cnt = 0;
            GPS_Open_Cnt = 0;
        }
        else // 如果两个通道当前既不同时满足短路，也不同时满足开路，也不同时满足正常
        {
            GPS_Short_Cnt = 0;
            GPS_Open_Cnt = 0;
            GPS_Ok_Cnt = 0;
        }
        if ((GPS_Short_Cnt >= GPS_DTC_CONFIRM_CNT) &&
            (GPS_Short_Flag == FALSE))
        {
            GPS_Short_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_GPS_SHORT, DEM_EVENT_STATUS_FAILED);
        }
        if ((GPS_Open_Cnt >= GPS_DTC_CONFIRM_CNT) &&
            (GPS_Open_Flag == FALSE))
        {
            GPS_Open_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_GPS_OPEN, DEM_EVENT_STATUS_FAILED);
        }
        if (GPS_Ok_Cnt >= GPS_DTC_RECOVER_CNT)
        {
            if (GPS_Short_Flag == TRUE)
            {
                GPS_Short_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_GPS_SHORT, DEM_EVENT_STATUS_PASSED);
            }
            if (GPS_Open_Flag == TRUE)
            {
                GPS_Open_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_GPS_OPEN, DEM_EVENT_STATUS_PASSED);
            }
        }
    }
    else
    {
        GPS_Short_Cnt = 0;
        GPS_Open_Cnt = 0;
        GPS_Ok_Cnt = 0;
    }
}

// MIN IN

#define DEM_EVT_MICIN_SHORT_GND ((Dem_EventIdType)EventParameter_0x953311) /*7u - B1533 FTB:11 */
#define DEM_EVT_MICIN_OPEN ((Dem_EventIdType)EventParameter_0x953313)      /*9u - B1533 FTB:13 */
#define DEM_EVT_MICIN_SHORT_BAT ((Dem_EventIdType)EventParameter_0x953312) /*8u - B1533 FTB:12 */

#define MICIN_ADC_CHANNEL      AD1_CHANNEL_MIC_IN_ADC_DET

#define MICIN_DTC_KL30_MIN_MV              9000
#define MICIN_DTC_KL30_MAX_MV              16000
#define MICIN_DTC_SHORT_GND_TH_MV          50
#define MICIN_DTC_OPEN_LOW_TH_MV           430
#define MICIN_DTC_OPEN_HIGH_TH_MV          550
#define MICIN_DTC_SHORT_BAT_LOW_TH_MV      900
#define MICIN_DTC_SHORT_BAT_HIGH_TH_MV     1100

#define MICIN_DTC_NORMAL_LOW_TH_MV  100 
#define MICIN_DTC_NORMAL_HIGH_TH_MV 420

#define MICIN_DTC_START_DELAY_CNT 1
#define MICIN_DTC_CONFIRM_CNT 3
#define MICIN_DTC_RECOVER_CNT 3

static uint8_t MICIN_ShortGnd_Cnt = 0; // 对地短路连续计数
static uint8_t MICIN_Open_Cnt = 0;     // MIC IN 开路连续计数
static uint8_t MICIN_ShortBat_Cnt = 0; // MIC IN 对电源短路连续计数
static uint8_t MICIN_Ok_Cnt = 0;       // MIC IN 恢复正常连续计数
static uint8_t MICIN_StartCnt = 0;     // MIC IN 上电延时计数

static boolean MICIN_ShortGnd_Flag = FALSE;
static boolean MICIN_Open_Flag = FALSE;
static boolean MICIN_ShortBat_Flag = FALSE;

static void MICIN_SyncMonitorStateWithDem(void)
{
    Dem_UdsStatusByteType eventStatus = 0;
    if (MICIN_ShortGnd_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_MICIN_SHORT_GND, &eventStatus) == E_OK) /* 读取对地短路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                MICIN_ShortGnd_Cnt = 0;
                MICIN_Ok_Cnt = 0;
                MICIN_ShortGnd_Flag = FALSE;
            }
        }
    }
    if (MICIN_Open_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_MICIN_OPEN, &eventStatus) == E_OK) /* 读取开路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                MICIN_Open_Cnt = 0;
                MICIN_Ok_Cnt = 0;
                MICIN_Open_Flag = FALSE;
            }
        }
    }
    if (MICIN_ShortBat_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_MICIN_SHORT_BAT, &eventStatus) == E_OK) /* 读取对电源短路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                MICIN_ShortBat_Cnt = 0;
                MICIN_Ok_Cnt = 0;
                MICIN_ShortBat_Flag = FALSE;
            }
        }
    }
}

void MICIN_DtcInit(void)
{
    MICIN_ShortGnd_Cnt = 0;
    MICIN_Open_Cnt = 0;
    MICIN_ShortBat_Cnt = 0;
    MICIN_Ok_Cnt = 0;
    MICIN_StartCnt = 0;

    MICIN_ShortGnd_Flag = FALSE;
    MICIN_Open_Flag = FALSE;
    MICIN_ShortBat_Flag = FALSE;
}

void MICIN_DetectProcess_2s(void)
{
    uint32_t micInVoltage = 0;
    uint16_t kl30Voltage = g_PowerVoltage;

    MICIN_SyncMonitorStateWithDem();
    PeripheralHalAdGet(MICIN_ADC_CHANNEL, &micInVoltage);
    //TBOX_PRINT("MICIN_Voltage: %d\n", micInVoltage);

    if (MICIN_StartCnt < MICIN_DTC_START_DELAY_CNT)
    {
        MICIN_StartCnt++;
    }
    if ((kl30Voltage >= MICIN_DTC_KL30_MIN_MV) &&
        (kl30Voltage <= MICIN_DTC_KL30_MAX_MV) &&
        ISEPTStCmdOff() &&
        (MICIN_StartCnt >= MICIN_DTC_START_DELAY_CNT))
    {
        if (micInVoltage < MICIN_DTC_SHORT_GND_TH_MV)
        {
            if (MICIN_ShortGnd_Cnt < MICIN_DTC_CONFIRM_CNT)
            {
                MICIN_ShortGnd_Cnt++;
            }
            MICIN_Open_Cnt = 0;
            MICIN_ShortBat_Cnt = 0;
            MICIN_Ok_Cnt = 0;
        }
        else if ((micInVoltage >= MICIN_DTC_OPEN_LOW_TH_MV) &&
                 (micInVoltage <= MICIN_DTC_OPEN_HIGH_TH_MV))
        {
            if (MICIN_Open_Cnt < MICIN_DTC_CONFIRM_CNT)
            {
                MICIN_Open_Cnt++;
            }
            MICIN_ShortGnd_Cnt = 0;
            MICIN_ShortBat_Cnt = 0;
            MICIN_Ok_Cnt = 0;
        }
        else if ((micInVoltage >= MICIN_DTC_SHORT_BAT_LOW_TH_MV) &&
                 (micInVoltage <= MICIN_DTC_SHORT_BAT_HIGH_TH_MV))
        {
            if (MICIN_ShortBat_Cnt < MICIN_DTC_CONFIRM_CNT)
            {
                MICIN_ShortBat_Cnt++;
            }
            MICIN_ShortGnd_Cnt = 0;
            MICIN_Open_Cnt = 0;
            MICIN_Ok_Cnt = 0;
        }
        else if ((micInVoltage >= MICIN_DTC_NORMAL_LOW_TH_MV) &&
                 (micInVoltage <= MICIN_DTC_NORMAL_HIGH_TH_MV))
        {
            if (MICIN_Ok_Cnt < MICIN_DTC_RECOVER_CNT)
            {
                MICIN_Ok_Cnt++;
            }
            MICIN_ShortGnd_Cnt = 0;
            MICIN_Open_Cnt = 0;
            MICIN_ShortBat_Cnt = 0;
        }
        else
        {
            MICIN_ShortGnd_Cnt = 0;
            MICIN_Open_Cnt = 0;
            MICIN_ShortBat_Cnt = 0;
            MICIN_Ok_Cnt = 0;
        }
        if ((MICIN_ShortGnd_Cnt >= MICIN_DTC_CONFIRM_CNT) &&
            (MICIN_ShortGnd_Flag == FALSE))
        {
            MICIN_ShortGnd_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_MICIN_SHORT_GND, DEM_EVENT_STATUS_FAILED);
        }
        if ((MICIN_Open_Cnt >= MICIN_DTC_CONFIRM_CNT) &&
            (MICIN_Open_Flag == FALSE))
        {
            MICIN_Open_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_MICIN_OPEN, DEM_EVENT_STATUS_FAILED);
        }
        if ((MICIN_ShortBat_Cnt >= MICIN_DTC_CONFIRM_CNT) &&
            (MICIN_ShortBat_Flag == FALSE))
        {
            MICIN_ShortBat_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_MICIN_SHORT_BAT, DEM_EVENT_STATUS_FAILED);
        }
        if (MICIN_Ok_Cnt >= MICIN_DTC_RECOVER_CNT)
        {
            if (MICIN_ShortGnd_Flag == TRUE)
            {
                MICIN_ShortGnd_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_MICIN_SHORT_GND, DEM_EVENT_STATUS_PASSED);
            }
            if (MICIN_Open_Flag == TRUE)
            {
                MICIN_Open_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_MICIN_OPEN, DEM_EVENT_STATUS_PASSED);
            }
            if (MICIN_ShortBat_Flag == TRUE)
            {
                MICIN_ShortBat_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_MICIN_SHORT_BAT, DEM_EVENT_STATUS_PASSED);
            }
        }
    }
    else
    {
        MICIN_ShortGnd_Cnt = 0;
        MICIN_Open_Cnt = 0;
        MICIN_ShortBat_Cnt = 0;
        MICIN_Ok_Cnt = 0;
    }
}

// LED DTC

#define DEM_EVT_LED_SHORT_GND ((Dem_EventIdType)EventParameter_0x951512) /*这个少配置了7u - B1515 FTB:11 */
#define DEM_EVT_LED_SHORT_BAT ((Dem_EventIdType)EventParameter_0x951512) /*2u - B1515 FTB:12 */

#define LED_ADC_CHANNEL AD0_CHANNEL_beCALL_GenLED_StateDET_ADC

#define LED_DTC_KL30_MIN_MV 9000
#define LED_DTC_KL30_MAX_MV 16000

#define LED_DTC_SHORT_GND_TH_MV 100
#define LED_DTC_SHORT_BAT_TH_MV 3000

#define LED_DTC_NORMAL_LOW_TH_MV 1900
#define LED_DTC_NORMAL_HIGH_TH_MV 2100

#define LED_DTC_START_DELAY_CNT 5
#define LED_DTC_CONFIRM_CNT 25
#define LED_DTC_RECOVER_CNT 25

static uint8_t LED_ShortGnd_Cnt = 0;      /* LED 对地短路连续计数 */
static uint8_t LED_ShortBat_Cnt = 0;      /* LED 对电源短路连续计数 */
static uint8_t LED_Ok_Cnt = 0;            /* LED 恢复正常连续计数 */
static uint8_t LED_StartCnt = 0;          /* LED 上电延时计数 */
static boolean LED_ShortGnd_Flag = FALSE; /* LED 对地短路故障已成熟并上报过的锁存标志 */
static boolean LED_ShortBat_Flag = FALSE; /* LED 对电源短路故障已成熟并上报过的锁存标志 */

static void LED_SyncMonitorStateWithDem(void) /* 当 14 FF FF FF 清除了 Dem，但应用层锁存状态还没清掉时，在这里同步 */
{
    Dem_UdsStatusByteType eventStatus = 0; /* 保存当前事件的 Dem UDS 状态字节 */

    if (LED_ShortGnd_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_LED_SHORT_GND, &eventStatus) == E_OK) /* 读取 LED 对地短路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                LED_ShortGnd_Cnt = 0;
                LED_Ok_Cnt = 0;
                LED_ShortGnd_Flag = FALSE;
            }
        }
    }
    if (LED_ShortBat_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_LED_SHORT_BAT, &eventStatus) == E_OK) /* 读取 LED 对电源短路事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
            {
                LED_ShortBat_Cnt = 0;
                LED_Ok_Cnt = 0;
                LED_ShortBat_Flag = FALSE;
            }
        }
    }
}

void LED_DtcInit(void)
{
    LED_ShortGnd_Cnt = 0;
    LED_ShortBat_Cnt = 0;
    LED_Ok_Cnt = 0;
    LED_StartCnt = 0;
    LED_ShortGnd_Flag = FALSE;
    LED_ShortBat_Flag = FALSE;

    // PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    // PORT.PDSC0 &= (uint32_t)~_PORT_PMn14_MODE_UNUSED;
    // PORT.PDSC0 |= _PORT_PDSCn14_SLOW_MODE_SELECT;
    // PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    // PORT.PODC0 &= (uint32_t)~_PORT_PMn14_MODE_UNUSED;
    // PORT.PODC0 |= _PORT_PODCn14_PUSH_PULL;
    // PORT.PBDC0 &= (uint16_t)~_PORT_PMn14_MODE_UNUSED;
    // PORT.PBDC0 |= _PORT_PBDCn14_PBDC_MODE_DISABLED;
    // PORT.P0 &= (uint16_t)~_PORT_PMn14_MODE_UNUSED;
    // PORT.P0 |= _PORT_Pn14_OUTPUT_LOW;
    // PORT.PM0 &= (uint16_t)~_PORT_PMn14_MODE_UNUSED;
    // PORT.PM0 |= _PORT_PMn14_MODE_OUTPUT;
    // R_PORT_SetGpioOutput(Port0, 14, 1);
}

void LED_DetectProcess_200ms(void)
{
    uint32_t ledVoltage = 0;
    uint16_t kl30Voltage = g_PowerVoltage;

    LED_SyncMonitorStateWithDem();
    PeripheralHalAdGet(LED_ADC_CHANNEL, &ledVoltage);
    //TBOX_PRINT("ledVoltage: %d\n", ledVoltage);

    if (LED_StartCnt < LED_DTC_START_DELAY_CNT)
    {
        LED_StartCnt++;
    }

    if ((kl30Voltage >= LED_DTC_KL30_MIN_MV) &&
        (kl30Voltage <= LED_DTC_KL30_MAX_MV) &&
        ISEPTStCmdOff() &&
        (LED_StartCnt >= LED_DTC_START_DELAY_CNT))
    {
        if (ledVoltage < LED_DTC_SHORT_GND_TH_MV) // 对地短路区间
        {
            if (LED_ShortGnd_Cnt < LED_DTC_CONFIRM_CNT)
            {
                LED_ShortGnd_Cnt++;
            }
            LED_ShortBat_Cnt = 0;
            LED_Ok_Cnt = 0;
        }
        else if (ledVoltage > LED_DTC_SHORT_BAT_TH_MV) // 对电源短路区间
        {
            if (LED_ShortBat_Cnt < LED_DTC_CONFIRM_CNT)
            {
                LED_ShortBat_Cnt++;
            }
            LED_ShortGnd_Cnt = 0;
            LED_Ok_Cnt = 0;
        }
        else if ((ledVoltage >= LED_DTC_NORMAL_LOW_TH_MV) && // 恢复正常区间上下限区间
                 (ledVoltage <= LED_DTC_NORMAL_HIGH_TH_MV))
        {
            if (LED_Ok_Cnt < LED_DTC_RECOVER_CNT)
            {
                LED_Ok_Cnt++;
            }
            LED_ShortGnd_Cnt = 0;
            LED_ShortBat_Cnt = 0;
        }
        else
        {
            LED_ShortGnd_Cnt = 0;
            LED_ShortBat_Cnt = 0;
            LED_Ok_Cnt = 0;
        }
        if ((LED_ShortGnd_Cnt >= LED_DTC_CONFIRM_CNT) &&
            (LED_ShortGnd_Flag == FALSE))
        {
            LED_ShortGnd_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_LED_SHORT_GND, DEM_EVENT_STATUS_FAILED);
        }
        if ((LED_ShortBat_Cnt >= LED_DTC_CONFIRM_CNT) &&
            (LED_ShortBat_Flag == FALSE))
        {
            LED_ShortBat_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_LED_SHORT_BAT, DEM_EVENT_STATUS_FAILED);
        }
        if (LED_Ok_Cnt >= LED_DTC_RECOVER_CNT)
        {
            if (LED_ShortGnd_Flag == TRUE)
            {
                LED_ShortGnd_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_LED_SHORT_GND, DEM_EVENT_STATUS_PASSED);
            }
            if (LED_ShortBat_Flag == TRUE)
            {
                LED_ShortBat_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_LED_SHORT_BAT, DEM_EVENT_STATUS_PASSED);
            }
        }
    }
    else
    {
        LED_ShortGnd_Cnt = 0;
        LED_ShortBat_Cnt = 0;
        LED_Ok_Cnt = 0;
    }
}

// ecall button DTC

// #define DEM_EVT_ECALL_BUTTON_STUCK   ((Dem_EventIdType)EventParameter_0x951171)  /*1u - B1511 FTB:71 */

// #define ECALL_SOS_BUTTON_NORMAL_LEVEL     0                               /* eCALL 按键未按下时返回 0 */
// #define ECALL_SOS_BUTTON_PRESSED_LEVEL    1                               /* eCALL 按键未按下时返回 1 */

// #define ECALL_DTC_KL30_MIN_MV              9000
// #define ECALL_DTC_KL30_MAX_MV              16000
// #define ECALL_DTC_START_DELAY_CNT          5
// #define ECALL_DTC_CONFIRM_CNT              100
// #define ECALL_DTC_RECOVER_CNT              10

// static uint16_t ECALL_Stuck_Cnt = 0;                                      /* eCALL 按键卡滞连续计数 */
// static uint16_t ECALL_Ok_Cnt = 0;                                         /* eCALL 按键恢复正常连续计数 */
// static uint8_t ECALL_StartCnt = 0;                                        /* eCALL 诊断上电延时计数 */
// static boolean ECALL_Stuck_Flag = FALSE;

// static void ECALL_SyncMonitorStateWithDem(void)
// {
//     Dem_UdsStatusByteType eventStatus = 0;

//     if (ECALL_Stuck_Flag == TRUE)
//     {
//         if (Dem_GetEventStatus(DEM_EVT_ECALL_BUTTON_STUCK, &eventStatus) == E_OK) /* 读取 eCALL 按键粘连事件当前的 Dem 状态 */
//         {
//             if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u)
//             {
//                 ECALL_Stuck_Cnt = 0;
//                 ECALL_Ok_Cnt = 0;
//                 ECALL_Stuck_Flag = FALSE;
//             }
//         }
//     }
// }

// void ECALL_DtcInit(void)
// {
//     ECALL_Stuck_Cnt = 0;
//     ECALL_Ok_Cnt = 0;
//     ECALL_StartCnt = 0;
//     ECALL_Stuck_Flag = FALSE;
// }

// void ECALL_DetectProcess_200ms(void)
// {
//     uint8_t ecallButtonStatus;                                             /* 保存当前 eCALL 按键电平状态 */
//     uint16_t kl30Voltage = g_PowerVoltage;

//     ECALL_SyncMonitorStateWithDem();
//     ecallButtonStatus = EcallHalGetSosButtonStatus();                      /* 读取 eCALL SOS 按键当前 IO 电平状态 */

//     if (ECALL_StartCnt < ECALL_DTC_START_DELAY_CNT)
//     {
//         ECALL_StartCnt++;
//     }
//     if ((kl30Voltage >= ECALL_DTC_KL30_MIN_MV) &&
//         (kl30Voltage <= ECALL_DTC_KL30_MAX_MV) &&
//         ISEPTStCmdOff() &&
//         (ECALL_StartCnt >= ECALL_DTC_START_DELAY_CNT))
//     {
//         if (ecallButtonStatus == ECALL_SOS_BUTTON_PRESSED_LEVEL)           /* 如果当前按键状态为按下，说明按键处于“卡滞/持续按下”状态判定 */
//         {
//             if (ECALL_Stuck_Cnt < ECALL_DTC_CONFIRM_CNT)
//             {
//                 ECALL_Stuck_Cnt++;
//             }

//             ECALL_Ok_Cnt = 0;
//         }
//         else if (ecallButtonStatus == ECALL_SOS_BUTTON_NORMAL_LEVEL)       /* 如果当前按键状态为未按下，说明按键处于正常状态判定 */
//         {
//             if (ECALL_Ok_Cnt < ECALL_DTC_RECOVER_CNT)
//             {
//                 ECALL_Ok_Cnt++;
//             }
//             ECALL_Stuck_Cnt = 0;
//         }
//         else
//         {
//             ECALL_Stuck_Cnt = 0;
//             ECALL_Ok_Cnt = 0;
//         }
//         if ((ECALL_Stuck_Cnt >= ECALL_DTC_CONFIRM_CNT) &&                  /* 如果按键持续按下已经达到 20S */
//             (ECALL_Stuck_Flag == FALSE))
//         {
//             ECALL_Stuck_Flag = TRUE;
//             Dem_SetEventStatus(DEM_EVT_ECALL_BUTTON_STUCK, DEM_EVENT_STATUS_FAILED);
//         }
//         if (ECALL_Ok_Cnt >= ECALL_DTC_RECOVER_CNT)                         /* 如果按键连续正常已经达到 2S */
//         {
//             if (ECALL_Stuck_Flag == TRUE)
//             {
//                 ECALL_Stuck_Flag = FALSE;
//                 (void)Dem_SetEventStatus(DEM_EVT_ECALL_BUTTON_STUCK, DEM_EVENT_STATUS_PASSED);
//             }
//         }
//     }
//     else
//     {
//         ECALL_Stuck_Cnt = 0u;
//         ECALL_Ok_Cnt = 0u;
//     }
// }



//备用电池电压过高、过低  DTC

#define DEM_EVT_BACKUP_BAT_HIGH   ((Dem_EventIdType)EventParameter_0x955017) /*19u - B1550 FTB:17 */
#define DEM_EVT_BACKUP_BAT_LOW    ((Dem_EventIdType)EventParameter_0x955016) /*18u - B1550 FTB:16 */

#define BACKUP_BAT_ADC_CHANNEL    AD0_CHANNEL_BUB_VOLTAGE_ADC

#define BACKUP_BAT_DTC_KL30_MIN_MV                9000   
#define BACKUP_BAT_DTC_KL30_MAX_MV                16000  
#define BACKUP_BAT_DTC_LOW_TH_MV                  1600   
#define BACKUP_BAT_DTC_HIGH_TH_MV                 3000   
#define BACKUP_BAT_DTC_NORMAL_HIGH_TH_MV            3000   
#define BACKUP_BAT_DTC_NORMAL_LOW_TH_MV             1600

#define BACKUP_BAT_DTC_START_DELAY_CNT               5     /* 上电完成 1s 的延时计数，200ms调一次时5次约等于 1s */
#define BACKUP_BAT_DTC_HIGH_CONFIRM_CNT              25    /* 过压故障连续 5s 成熟，200ms调一次时25次约等于 5s */
#define BACKUP_BAT_DTC_LOW_CONFIRM_CNT             1200   
#define BACKUP_BAT_DTC_RECOVER_CNT                   25  

static uint16_t BackupBat_High_Cnt = 0;                                   
static uint16_t BackupBat_Low_Cnt = 0;                                   
static uint16_t BackupBat_Ok_Cnt = 0;                                     
static uint8_t BackupBat_StartCnt = 0;                                    

static boolean BackupBat_High_Flag = FALSE;                               
static boolean BackupBat_Low_Flag = FALSE;  

// static boolean BackupBat_IsCharging(void)               /* 判断当前备用电池是否处于充电状态 */
// {                                                       
//     if (BatteryHalGetState() == 1)                      
//     {                                                   
//         return TRUE;                                   
//     }                                                  
//     return FALSE;                                       
// } 

static void BackupBat_SyncMonitorStateWithDem(void)                        
{
    Dem_UdsStatusByteType eventStatus = 0;                                

    if (BackupBat_High_Flag == TRUE)                                       
    {
        if (Dem_GetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, &eventStatus) == E_OK) /* 读取备用电池高电压事件当前的Dem状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u) 
            {
                BackupBat_High_Cnt = 0;                                   
                BackupBat_Ok_Cnt = 0;                                     
                BackupBat_High_Flag = FALSE;                              
            }
        }
    }
    if (BackupBat_Low_Flag == TRUE)                                        
    {
        if (Dem_GetEventStatus(DEM_EVT_BACKUP_BAT_LOW, &eventStatus) == E_OK) /* 读取备用电池低电压事件当前的 Dem 状态 */
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0u) 
            {
                BackupBat_Low_Cnt = 0;                                    
                BackupBat_Ok_Cnt = 0;                                     
                BackupBat_Low_Flag = FALSE;                                
            }
        }
    }
}

void BackupBat_DtcInit(void)                                               
{
    BackupBat_High_Cnt = 0;                                               
    BackupBat_Low_Cnt = 0;                                                
    BackupBat_Ok_Cnt = 0;                                                 
    BackupBat_StartCnt = 0;                                               
    BackupBat_High_Flag = FALSE;                                           
    BackupBat_Low_Flag = FALSE;                                           
}

void BackupBat_DetectProcess_200ms(void)                                   
{
    uint32_t backupBatVoltage = 0;                                        
    uint16_t kl30Voltage = g_PowerVoltage;                                 

    BackupBat_SyncMonitorStateWithDem();                                   
    PeripheralHalAdGet(BACKUP_BAT_ADC_CHANNEL, &backupBatVoltage); 
    //TBOX_PRINT("BackupBatVoltage: %d\n", backupBatVoltage);        //备用电池电压采集打印

    if (BackupBat_StartCnt < BACKUP_BAT_DTC_START_DELAY_CNT)               
    {
        BackupBat_StartCnt++;                                             
    }
    if ((kl30Voltage >= BACKUP_BAT_DTC_KL30_MIN_MV) &&                     
        (kl30Voltage <= BACKUP_BAT_DTC_KL30_MAX_MV) &&                     
        ISEPTStCmdOff() &&                                                  
        (BackupBat_StartCnt >= BACKUP_BAT_DTC_START_DELAY_CNT))            
    {
        if (backupBatVoltage > BACKUP_BAT_DTC_HIGH_TH_MV)                  /* 备用电池高电压故障判断 */
        {
            if (BackupBat_High_Cnt < BACKUP_BAT_DTC_HIGH_CONFIRM_CNT)      
            {
                BackupBat_High_Cnt++;                                      
            }
            BackupBat_Low_Cnt = 0;                                        
            BackupBat_Ok_Cnt = 0;                                         
        }
        else if ((backupBatVoltage < BACKUP_BAT_DTC_LOW_TH_MV) /*&&          /* 备用电池低压判断*/
                 /*(BackupBat_IsCharging() == TRUE)*/)              
        {
            if (BackupBat_Low_Cnt < BACKUP_BAT_DTC_LOW_CONFIRM_CNT)        
            {
                BackupBat_Low_Cnt++;                                       
            }
            BackupBat_High_Cnt = 0;                                       
            BackupBat_Ok_Cnt = 0;                                         
        }
        else if ((backupBatVoltage >= BACKUP_BAT_DTC_NORMAL_LOW_TH_MV) &&  /* 恢复判断*/
                 (backupBatVoltage <= BACKUP_BAT_DTC_NORMAL_HIGH_TH_MV))   
        {
            if (BackupBat_Ok_Cnt < BACKUP_BAT_DTC_RECOVER_CNT)             
            {
                BackupBat_Ok_Cnt++;                                        
            }
            BackupBat_High_Cnt = 0;                                       
            BackupBat_Low_Cnt = 0;                                        
        }
        else                                                               
        {
            BackupBat_High_Cnt = 0;                                       
            BackupBat_Low_Cnt = 0;                                        
            BackupBat_Ok_Cnt = 0;                                         
        }
        if ((BackupBat_High_Cnt >= BACKUP_BAT_DTC_HIGH_CONFIRM_CNT) &&     
            (BackupBat_High_Flag == FALSE))                                
        {
            BackupBat_High_Flag = TRUE;                                    
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, DEM_EVENT_STATUS_FAILED); 
        }
        if ((BackupBat_Low_Cnt >= BACKUP_BAT_DTC_LOW_CONFIRM_CNT) &&       
            (BackupBat_Low_Flag == FALSE))                                
        {
            BackupBat_Low_Flag = TRUE;                                     
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_LOW, DEM_EVENT_STATUS_FAILED);
        }
        if (BackupBat_Ok_Cnt >= BACKUP_BAT_DTC_RECOVER_CNT)                
        {
            if (BackupBat_High_Flag == TRUE)                               
            {
                BackupBat_High_Flag = FALSE;                               
                Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, DEM_EVENT_STATUS_PASSED);
            }
            if (BackupBat_Low_Flag == TRUE)                                
            {
                BackupBat_Low_Flag = FALSE;                                
                Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_LOW, DEM_EVENT_STATUS_PASSED); 
            }
        }
    }
    else                                                                   
    {
        BackupBat_High_Cnt = 0;                                           
        BackupBat_Low_Cnt = 0;                                            
        BackupBat_Ok_Cnt = 0;                                             
    }
}


// eeprom  DTC

#define DEM_EVT_ECU_EEPROM_ERROR ((Dem_EventIdType)EventParameter_0xE00142) /*48u - U2001 FTB:42 */

#define EEPROM_DTC_KL30_MIN_MV 9000
#define EEPROM_DTC_KL30_MAX_MV 16000
#define EEPROM_DTC_START_DELAY_CNT 5
#define EEPROM_DTC_CONFIRM_CNT 1
#define EEPROM_DTC_RECOVER_CNT 1

uint8 g_eepromTest = 0;
void EepromDetect()
{
    uint16_t kl30Voltage = g_PowerVoltage;
    static uint8_t EEPROM_StartCnt = 0;

    uint8_t flashTestBuffer = 0;
    uint8_t flashReadBuffer = 0;
    uint8_t flashErrorDetected = 0;
    Std_ReturnType ret;
    uint8 testData = 0xAA;

    if (EEPROM_StartCnt < EEPROM_DTC_START_DELAY_CNT) /* 如果上电延时还没达到 1S */
    {
        EEPROM_StartCnt++; /* 每 200ms 累加一次 */
    }

    if ((kl30Voltage >= EEPROM_DTC_KL30_MIN_MV) &&
        (kl30Voltage <= EEPROM_DTC_KL30_MAX_MV) &&
        ISEPTStCmdOff() &&
        (EEPROM_StartCnt >= EEPROM_DTC_START_DELAY_CNT))
    {
        // 1. 写入测试数据
        if (g_eepromTest == 0)
        {
            NvMBlockRamBuffer48[0] = testData;
            ret = NvM_WriteBlock(NvMBlock_Reserved_block2, NvMBlockRamBuffer48);
            if (ret != E_OK)
            {
                flashErrorDetected = 1;
            }
            g_eepromTest = 1;
            //TBOX_PRINT("111\r\n");
        }
        else if (g_eepromTest == 1)
        {
            // 等待操作完成
            // while (NvM_GetJobError() == E_OK && NvM_MultiJob.ReqResult == NVM_REQ_PENDING)
            if (NvM_MultiJob.ReqResult == NVM_REQ_PENDING)
            {
                NvM_MainFunction();
                Fee_MainFunction();
                Fls_MainFunction();
            }
            else
            {
                g_eepromTest = 2;
                //TBOX_PRINT("222\r\n");
            }
        }
        else if (g_eepromTest == 2)
        {
            // 2. 读取数据
            ret = NvM_ReadBlock(NvMBlock_Reserved_block2, NvMBlockRamBuffer48);
            if (ret != E_OK)
            {
                flashErrorDetected = 1;
            }
            g_eepromTest = 3;
            //TBOX_PRINT("333\r\n");
        }
        else if (g_eepromTest == 3)
        {
            // 等待操作完成
            // while (NvM_GetJobError() == E_OK && NvM_MultiJob.ReqResult == NVM_REQ_PENDING)
            if (NvM_MultiJob.ReqResult == NVM_REQ_PENDING)
            {
                NvM_MainFunction();
                Fee_MainFunction();
                Fls_MainFunction();
            }
            else
            {
                g_eepromTest = 4;
                //TBOX_PRINT("444\r\n");
            }
        }
        else if (g_eepromTest == 4)
        {
            // 3. 比较读写数据
            if (NvMBlockRamBuffer48[0] == testData)
            {
                // 数据一致，Flash正常
                flashErrorDetected = 0;
                //TBOX_PRINT("same!!!\r\n");
            }
            else
            {
                // 数据不一致，Flash故障
                flashErrorDetected = 1;
                //TBOX_PRINT("diff!!!\r\n");
            }
            if (flashErrorDetected)
            {
                Dem_SetEventStatus(EventParameter_0xE00142, DEM_EVENT_STATUS_FAILED);
            }
            else if (flashErrorDetected == 0)
            {
                Dem_SetEventStatus(EventParameter_0xE00142, DEM_EVENT_STATUS_PASSED);
            }
        }
    }
}

// 行程计数器
// 内部函数：检测CAN网络是否正常
static boolean IsCanNetworkNormal(void)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    CanNm_GetState(0, &nmStatePtr, &nmModePtr);

    if (nmStatePtr == NM_STATE_NORMAL_OPERATION || nmStatePtr == NM_STATE_REPEAT_MESSAGE || nmStatePtr == NM_STATE_SYNCHRONIZE)
    {
        return TRUE;
    }
    return FALSE;
}

static uint8 g_wakeKl30NetEnable = 0;
static uint8 g_wakeKl30NetCount = 0;
void TripCounterDetect()
{
    if (IsCanNetworkNormal() && ISEPTStCmdOff() && (g_PowerVoltage >= 9000 && g_PowerVoltage <= 16000))
    {
        g_wakeKl30NetCount++;
        if (g_wakeKl30NetCount >= 5)
        {
            g_wakeKl30NetEnable = 1;
            g_wakeKl30NetCount = 0;
        }
    }
    else
    {
        g_wakeKl30NetCount = 0;
        g_wakeKl30NetEnable = 0;
    }
}

uint8 GetTripCounterDetectEnable(void)
{
    return g_wakeKl30NetEnable;
}

// 同步报文丢失
static uint8_t g_syncMsgLossEnableCount = 0;
static uint16_t g_syncMsgLossCount5000 = 0;
static uint16_t g_syncMsgLossCount2000 = 0;
void SyncMsgLossDetect()
{
    // 获取BufOff故障状态
    Dem_UdsStatusByteType bufOffFaultStatus = 0;
    Dem_GetEventStatus(EventParameter_0xC07388, &bufOffFaultStatus);
    // if ((g_PowerVoltage >= 9000 && g_PowerVoltage <= 16000) && IsCanNetworkNormal() && ISEPTStCmdOff() && bufOffFaultStatus == 0)
    if (1)
    {
        g_syncMsgLossEnableCount++;
        if (g_syncMsgLossEnableCount >= 5)
        {
            g_syncMsgLossEnableCount = 5;
            uint64 syncMsg = 0;
            uint8 ret = Com_ReceiveSignal(SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx, &syncMsg);
            //  if(syncMsg!=0)
            // {
            //     ret=E_OK;
            // }
            // else
            // {
            ret = 1;
            // }
            if (ret != E_OK)
            {
                g_syncMsgLossCount5000++;
                g_syncMsgLossCount2000 = 0;
                if (g_syncMsgLossCount5000 >= 25)
                {
                    // 连续5000ms未收到报文
                    //TBOX_PRINT("error!!!\r\n");
                    //TBOX_PRINT("error!!!\r\n");
                    //TBOX_PRINT("error!!!\r\n");
                    g_syncMsgLossCount5000 = 25;
                    Dem_SetEventStatus(EventParameter_0xD60087, DEM_EVENT_STATUS_FAILED);
                }
            }
            else if (ret == E_OK)
            {
                g_syncMsgLossCount2000++;
                g_syncMsgLossCount5000 = 0;
                if (g_syncMsgLossCount2000 >= 10)
                {
                    // 连续2000ms收到报文
                    //TBOX_PRINT("success!!!\r\n");
                    //TBOX_PRINT("success!!!\r\n");
                    //TBOX_PRINT("success!!!\r\n");
                    g_syncMsgLossCount2000 = 10;
                    Dem_SetEventStatus(EventParameter_0xD60087, DEM_EVENT_STATUS_PASSED);
                }
            }
        }
        else
        {
        }
    }
    else
    {
        g_syncMsgLossEnableCount = 0;
        g_syncMsgLossCount5000 = 0;
        g_syncMsgLossCount2000 = 0;
    }
}

/**********************************************************************************************************
** 709报文发送队列结构
**********************************************************************************************************/

uint32 time = 0;
void SystemTimeMs(void)
{
    time += 50;
}

static uint32_t GetSystemTimeMs(void)
{
    return time;
}

typedef struct
{
    boolean isPending;            // 是否有待发送的报文
    Dem_EventIdType eventId;      // DTC事件ID
    Dem_UdsStatusByteType status; // DTC状态
    uint32_t sendTime;            // 计划发送时间
} Send709Queue_t;
// 709报文发送队列深度
#define SEND_709_QUEUE_DEPTH 5

// 709报文发送队列
static Send709Queue_t g_send709Queue[SEND_709_QUEUE_DEPTH] = {0};
static uint8_t g_send709QueueCount = 0; // 当前队列中的报文数量
static uint32_t g_lastSendTime = 0;     // 上一次发送709报文的时间

static void Send709Message(Dem_EventIdType eventId, Dem_UdsStatusByteType status)
{
    uint32 dtcCode;
    Dem_GetDTCOfEvent(eventId, DEM_DTC_FORMAT_UDS, &dtcCode);
    Dem_DTCSeverityType severity = 0;
    Dem_DcmGetSeverityOfDTC(dtcCode, &severity);
    uint8_t dtcType = 0x05;
    uint64 dtcMsg = 0;
    dtcMsg = (uint64)(((severity << 4) | 0X0F) & 0x00000000000000FF);
    dtcMsg |= 0x000000000000FF00;
    uint8_t dtcCodeHigh = dtcCode >> 16;
    dtcMsg |= (uint64)((dtcCodeHigh << 16) & 0x0000000000FF0000);
    uint8_t dtcCodeLow = dtcCode >> 8;
    dtcMsg |= (uint64)((dtcCodeLow << 24) & 0x0000000000FF000000);
    uint8_t dtcCodeVaild = (uint8)(dtcCode & 0xFF);
    dtcMsg |= (uint64)((dtcCodeVaild << 32) & 0x000000FF00000000);
    dtcMsg |= (uint64)((status << 40) & 0x0000FF0000000000);
    dtcMsg |= (uint64)((dtcType << 48) & 0x00FF000000000000);
    dtcMsg |= 0xFF00000000000000;
    //TBOX_PRINT("send 709 success\r\n");
    //TBOX_PRINT("send 709 success\r\n");
    //TBOX_PRINT("send 709 success\r\n");
    Com_SendSignal(IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx, &dtcMsg);
    //TBOX_PRINT("send 709 success time: %d\r\n", GetSystemTimeMs());
    //TBOX_PRINT("send 709 success time: %d\r\n", GetSystemTimeMs());
    //TBOX_PRINT("send 709 success time: %d\r\n", GetSystemTimeMs());
    //TBOX_PRINT("send 709 success time: %d\r\n", GetSystemTimeMs());
}

/**********************************************************************************************************
** Function name:       Schedule709Message
** Descriptions:        调度709报文发送，包括时间间隔控制
** Input parameters:    eventId - DTC事件ID
**                      status - DTC状态
**                      lastSendTime - 上一次发送时间
** Output parameters:   none
** Returned value:      none
**********************************************************************************************************/
static void Schedule709Message(Dem_EventIdType eventId, Dem_UdsStatusByteType status)
{
    uint32_t currentTime = GetSystemTimeMs(); // 获取当前系统时间（毫秒）

    // 检查与上一次发送的时间间隔
    if (currentTime - g_lastSendTime < 1000) // 小于1S
    {
        // 计算计划发送时间
        // uint32_t scheduleTime = g_lastSendTime + 1000;

        // 查找队列中的空位置
        for (uint8_t i = 0; i < SEND_709_QUEUE_DEPTH; i++)
        {
            if (!g_send709Queue[i].isPending)
            {
                // 加入发送队列
                g_send709Queue[i].isPending = TRUE;
                g_send709Queue[i].eventId = eventId;
                g_send709Queue[i].status = status;
                g_send709Queue[i].sendTime = currentTime;
                g_send709QueueCount++;
                break;
            }
        }
    }
    else
    {
        // 直接发送709报文
        Send709Message(eventId, status);
        g_lastSendTime = currentTime;
    }
}

static void CheckPending709Message(void)
{
    uint32_t currentTime = GetSystemTimeMs();
    int8_t targetIndex = -1;
    int32_t maxTimeDiff = -1;

    // 遍历队列，找到时间差值最大的报文
    for (uint8_t i = 0; i < SEND_709_QUEUE_DEPTH; i++)
    {
        // if (g_send709Queue[i].isPending && (currentTime >= g_send709Queue[i].sendTime))
        if (g_send709Queue[i].isPending && (currentTime >= g_lastSendTime+1000))
        {
            int32_t timeDiff = currentTime - g_send709Queue[i].sendTime;
            if (timeDiff > maxTimeDiff)
            {
                maxTimeDiff = timeDiff;
                targetIndex = i;
            }
        }
    }

    // 发送找到的报文
    if (targetIndex != -1)
    {
        Send709Message(g_send709Queue[targetIndex].eventId, g_send709Queue[targetIndex].status);
        g_lastSendTime = currentTime;
        g_send709Queue[targetIndex].isPending = FALSE;
        g_send709QueueCount--;
    }
}



void CheckDtcStatusAndSend709(void)
{
    static Dem_UdsStatusByteType g_lastDtcStatus[59] = {0}; // 保存58个DTC的历史状态

    // 检查是否有待发送的709报文
    CheckPending709Message();

    // 遍历检查58个DTC
    for (uint8_t i = 1; i < 59; i++)
    {
        Dem_EventIdType eventId = i;
        Dem_UdsStatusByteType currentStatus;

        // 获取当前DTC状态
        if (Dem_GetEventStatus(eventId, &currentStatus) == E_OK)
        {
            // 检查是否从"未确认"变为"已确认"（故障成熟）
            boolean wasConfirmed = (g_lastDtcStatus[i] & DEM_UDS_STATUS_CDTC) != 0;
            boolean isConfirmed = (currentStatus & DEM_UDS_STATUS_CDTC) != 0;

            if (!wasConfirmed && isConfirmed)
            {
                // 故障成熟，准备发送709报文
                Schedule709Message(eventId, currentStatus);
            }
            // 更新历史状态
            g_lastDtcStatus[i] = currentStatus;
        }
    }
}



const BatteryConfigure_t g_batterConfig = 
{
    .tempHighErrorValue = 85,   //℃
    .tempHighAlarmValue = 70,    
    .voltageHighErrorValue = 3300,//mv
    .voltageLowErrorValue = 200,
    .batterySocAlarmValue = 30,   //电池电量%
    .batteryTemperatureHighErrorFun = NULL,
    .batteryNoPlugInErrorFun = NULL,
    .batteryVoltageHighErrorFun = NULL,
    .batteryVoltageLowErrorFun = NULL,
    .batteryShortErrorFun = NULL,
};

static uint32_t g_rvcWakeupDelay = 30*1000;   /* RVC唤醒维持时间默认30秒 */
static uint32_t g_smsWakeupDelay = 45*1000;   /* 短信唤醒维持时间默认45秒 */

int8_t GetRvcWakeupDelay(void)
{
    uint32_t rvcWakeupDelay = 30*1000;   /* RVC唤醒维持时间默认30秒 */

    if(NvM_ReadBlock(NvMBlock_DIDC30D, NvMBlockRamBuffer46) == E_NOT_OK)
    {
        return -1;
    }

    g_rvcWakeupDelay = NvMBlockRamBuffer46[1] * 1000;
    g_smsWakeupDelay = NvMBlockRamBuffer46[0] * 1000;
    return 0;
}


static void PowerWakeUpProcess(uint8_t mcuWakeUpSource,uint8_t cpuWakeUpSource,uint32_t *pDelayTime_ms)
{
    //uint8_t MapWakeUpSource = 0;
    uint8_t mpuSubWakeSource = 0;
  
    if((mcuWakeUpSource >= PM_HAL_WAKEUP_SOURCE_CAN1) && (mcuWakeUpSource <= PM_HAL_WAKEUP_SOURCE_CAN6))
    {
        *pDelayTime_ms = 0;
        //MapWakeUpSource = mcuWakeUpSource;
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_MPU)
    {
        if(cpuWakeUpSource == 0x21) // 短信唤醒
        {
            mpuSubWakeSource = MpuPowerSyncSdkGetMpuSubWakeUpSource();
            if (mpuSubWakeSource == 0x01) // RVC wakeup timer
            {
                *pDelayTime_ms = g_rvcWakeupDelay;
            }
            else    // 其他短信唤醒
            {
                //MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_MPU;
                *pDelayTime_ms = g_smsWakeupDelay;
            }
        }
        else
        {
            //MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
            *pDelayTime_ms = 45*1000;
        }
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_KL30)
    {
        *pDelayTime_ms = 2*60*1000;
        //MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_KL30;
    }
    else 
    {
        *pDelayTime_ms = 0;
        //MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
    }
}

const PmSdkConfig_t g_pmCondg = 
{
    .degInfo = 1,
    .canNmType = 1,
    .wakeDelayTime = 20,
    .wakeupFun = PowerWakeUpProcess,
    .kl30OffWakeDelay = (60*10),
    .deepSleepConfig = 
    {
        .mpuDeepSleep = 1,
        .gSensorDeepSleep = 1,
    },
    .customSleepConfig =
    {
        .mpuDeepSleep = 1,
        .gSensorDeepSleep = 1,
    },
};

#if(0)
/*################################# KL30 detection process ############################################*/
static void NmMessageSendDisable(void);
static void NmMessageSendEnable(void);

static uint8_t g_communicationStartFlag = 0;
static uint8_t g_powerOnState = 0;   


static void StartCommunication(void)
{
  if(0==g_communicationStartFlag)
  {  
    g_communicationStartFlag = 1;
    
    if(0==g_powerOnState)
    {
      g_powerOnState = 1;
      PowerManageSdkPowerOn();
      //CycleSendSetPowerStartState();
      CanPeriodCycleStart();
    }
    else
    {
      NmMessageSendEnable();
      CanPeriodSendEnableAll();       
    }
    ////TBOX_PRINT("CycleSendEnableAll---\r\n");
  }

}

static void StopCommunication(void)
{
  if(g_communicationStartFlag)
  {
    NmMessageSendDisable();
    CanPeriodSendDisableAll();
    g_communicationStartFlag = 0;
    ////TBOX_PRINT("CycleSendDisableAll---\r\n");
  }
}

typedef enum
{
  E_KL30_DETECT_NORMAL,
  E_KL30_DETECT_HIGH,
  E_KL30_DETECT_LOW,
}kl30DetectState_e;

static kl30DetectState_e g_voltageComState = E_KL30_DETECT_LOW;
static kl30DetectState_e g_voltageDiagState = E_KL30_DETECT_LOW;
static uint32_t g_diagRecoverTimerCount = 0;
static uint8_t g_DiagStartFlag = 0x00;


//
static uint8_t g_kl30DtcResetFlag = 0;
static uint32_t g_diagFaultTimerCount = 0;
static const uint16_t g_communicationMaxVoltage = 18400;//mv
static const uint16_t g_communicationMinVoltage = 6500;//mv

//diagnostic start process
static const uint16_t g_diagMaxVoltage = 16000;//mv
static const uint16_t g_diagMaxRecoverVoltage = 15000;//mv
static const uint16_t g_diagMinVoltage = 9000;//mv
static const uint16_t g_diagMinRecoverVoltage = 10000;//mv
static const uint32_t g_diagRecoverTime = 500;//ms
static const uint32_t g_diagStartTime = 500;//ms
static const uint32_t g_diagFaultTime = 500;//ms

static void KL30DetectDtcProcess(uint32_t kl30Voltage)
{
    if(E_KL30_DETECT_NORMAL==g_voltageDiagState)
    {
        if(kl30Voltage>g_diagMaxVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_HIGH;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            ////TBOX_PRINT("set mode high\r\n");
            //stop diagnostic 
            //StopDiagnosticDetection();
        }
        else if(kl30Voltage<g_diagMinVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_LOW;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            ////TBOX_PRINT("set mode low\r\n");
            //stop diagnostic
            //StopDiagnosticDetection();
        }
    }
    else if(E_KL30_DETECT_HIGH==g_voltageDiagState)
    {
        if(kl30Voltage <= g_diagMaxRecoverVoltage)//recover
        { 
            g_diagFaultTimerCount = 0;
            if(g_diagRecoverTimerCount>=(g_diagRecoverTime/10))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                //start diagnostic
                ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH);
                ////TBOX_PRINT("clear high DTC\r\n");
            }
            else
            {
                g_diagRecoverTimerCount++;
            }   
        }
        else
        {            
            g_diagRecoverTimerCount = 0;
            if(kl30Voltage > g_diagMaxVoltage)
            {
              if(g_diagFaultTimerCount >= (g_diagFaultTime/10) )
              {
                SetDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH); 
                //SetVolFault();
                ////TBOX_PRINT("set high DTC\r\n");
              }
              else
              {
                g_diagFaultTimerCount += 1;
              }
            }
            else
            {
                g_diagFaultTimerCount = 0;
                ////TBOX_PRINT("clear high DTC count\r\n");
            }
        }
    }
    else if(E_KL30_DETECT_LOW==g_voltageDiagState)
    {
        if(kl30Voltage >= g_diagMinRecoverVoltage)//recover
        {
            g_diagFaultTimerCount = 0;
            
            if(g_DiagStartFlag)
            {
                if(g_diagRecoverTimerCount>=(g_diagRecoverTime/10))
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                    ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);
                    ////TBOX_PRINT("clear low DTC\r\n");
                }
                else
                {
                    g_diagRecoverTimerCount++;
                }             
            }
            else
            {
                if(g_diagRecoverTimerCount>=(g_diagStartTime/10))
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                    g_DiagStartFlag = 1;
                    ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);  
                    ////TBOX_PRINT("clear low DTC\r\n");
                }
                else
                {
                    g_diagRecoverTimerCount++;
                } 
            }
        }
        else
        {
            g_diagRecoverTimerCount = 0;
            if(kl30Voltage<g_diagMinVoltage)
            {
              if(g_diagFaultTimerCount >= (g_diagFaultTime/10) )
              {
                SetDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW); 
                ////TBOX_PRINT("set low DTC\r\n");
              }
              else
              {
                g_diagFaultTimerCount += 1;
              }   
            }
            else
            {
                g_diagFaultTimerCount = 0;
                ////TBOX_PRINT("clear low DTC count\r\n");
            }  
        }
    }
    //
    if(g_kl30DtcResetFlag!=0)
    {
        g_kl30DtcResetFlag = 0;
        if(g_voltageDiagState!=E_KL30_DETECT_NORMAL)
        {
            g_diagFaultTimerCount = 0;
            ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);  
            ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH);
        }
    }
}
static void KL30DetectCommunicationProcess(uint32_t kl30Voltage)
{
    if(E_KL30_DETECT_NORMAL==g_voltageComState)
    {
        if(kl30Voltage>(g_communicationMaxVoltage + 500))
        {
            g_voltageComState = E_KL30_DETECT_HIGH;
            //to do stop communication
            StopCommunication();
            //Ng_AllDisableCommunication();
        }
        else if(kl30Voltage<(g_communicationMinVoltage - 500))
        {
            g_voltageComState = E_KL30_DETECT_LOW;
            //to do stop communication
            //Ng_AllDisableCommunication();
            StopCommunication();
        }
    }
    else if(E_KL30_DETECT_HIGH==g_voltageComState)
    {
        if(kl30Voltage<g_communicationMaxVoltage)//recover
        {
            g_voltageComState = E_KL30_DETECT_NORMAL;          
            //start communication
            //Nm_AllEnableCommunication();
            StartCommunication();
        }
        else
        {
            StopCommunication();
        }
    }
    else if(E_KL30_DETECT_LOW==g_voltageComState)
    {
        if(kl30Voltage>g_communicationMinVoltage)//recover
        {
            g_voltageComState = E_KL30_DETECT_NORMAL; 
            //start communication
            //Nm_AllEnableCommunication();
            StartCommunication();
        }         
        else
        {
            StopCommunication();
        }
    }
}

static void Kl30DetectCycleProcess(void)
{
    uint32_t u16BatVol;

    PeripheralHalAdGet(AD_CHANNEL_KL30,&u16BatVol);   
    /********communication control ************************************/
    KL30DetectCommunicationProcess(u16BatVol);
 
    /****************diagnostic voltage detecting ************/
    KL30DetectDtcProcess(u16BatVol);  
}

void Kl30DtcCheckReset(void)
{
    g_kl30DtcResetFlag = 1;
}

static void Can1BusErrorEvent(uint8_t flag)
{
   /* if(flag)
    {
        SetBusOffDtc();
    }
    else
    {
        ClearBusOffDtc();  
    }*/
}

static const AutosarNmParameter_t g_netManageAutosarConfigure[] = 
{
    {
        .canChannel                 = TBOX_CAN_CHANNEL_2,
        .NodeId                     = 0x0A,     //TBOX NM ID 0x50A
        .BaseAddress                = 0x500,
        .NodeIdMin                  = 0x00,     //CAN网络管理报文的节点最小值
        .NodeIdMax                  = 0x7F,     //CAN网络管理报文的节点最大值
        .repeatMessageTime          = 1600,     //节点在RMS(重复报文)状态中保持的最长时间  T_REPEAT_MESSAGE unit:ms
        .nmTimeOutTime              = 2000,     //长城要求1800-2200，但是由于误差原因，选择2300在这个范围内，节点在NM(网络模式)中保持的最长时间       T_NM_TIMEOUT  unit:ms
        .waitBusSleepTime           = 5000,     //确保所有节点有时间停止其网络活动          T_WAIT_BUS_SLEEP unit:ms
        .startTXTime                = 10,       //从非BSM(睡眠模式)进入RMS(重复报文模式)状态到开始发送第一帧NM报文的最大时间间隔
        .startxAppFrameTime         = 20,       //成功发送第一帧网络管理报文后开始发送应用报文最大间隔时间
        .immediateCycleTime         = 20,       //快速发送网络管理报文的周期ms
        .msgCycleTime               = 470,//500,      //正常发送子状态或常规操作状态下，网络管理报文发送周期		
        .wakeupTime                 = 100,      //从休眠模式进入网络模式，开始重复发送网络管理报文的最大时间
        .immediateTimes             = 10,       //快速发送子状态下，以周期时间immediateCycleTime发送的网络管理报文数量
        .busOffQuickTime            = 5,        //ms
        .busOffSlowTime             = 200,      //ms
        .busOffQuickTimes           = 1,        //节点进入快恢复次数
        .busOffErrorEventLimitCount = 2,        //设置BUSOFF的DTC的最低次数
        .canBusErrorCallBack = Can1BusErrorEvent,
    },

};

static void NmMessageSendDisable(void)
{
    uint8_t i,num;
    num = sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]);
    for(i=0;i<num;i++)
    {
        AutosarNmSdkDisableCommunication(i);
    }  
}

static void NmMessageSendEnable(void)
{
    uint8_t i,num;
    num = sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]);
    for(i=0;i<num;i++)
    {
        AutosarNmSdkEnableCommunication(i);
    }    
}
#endif
void PmDebugPrint(void)
{
    static uint32_t count = 0;
    uint32_t wakeCount;
    uint8_t pmState,wakeupSource;
    static uint8_t lastPmState = 0;

    count++;
    PowerManageSdkGetPowerInfo(&pmState,&wakeupSource,&wakeCount);
    if(pmState != lastPmState)
    {
        //TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
        lastPmState = pmState;
    }
    if(count < 1000)
    {
        return;
    }
    count = 0;
    //TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
    
    uint32_t voltage = 0;
    BatterySdkGetVoltage(&voltage);
    
    uint32_t level = BatterySdkGetBatteySoc();
    uint32_t voltageKl30 = 0;
    PeripheralHalAdGet(AD0_CHANNEL_KL30,&voltageKl30);
    
    
    //TBOX_PRINT("KL30 %d,battery %d, level %d%\r\n",voltageKl30,voltage,level);
    ////TBOX_PRINT("KL30 voltage %d",voltageKl30);
    /*TimerHalDebugPrint(&wakeCount);
    //TBOX_PRINT("timer hal test %d \r\n",wakeCount);*/    
}
#if(0)
void WatchDogCycleProcess(void)
{
    static uint32_t count = 0;
    count++;
    if(count<10)
    {
        return ;
    }
    count = 0;
    PeripheralHalFeedWatchDog();
}
#endif 

void TaskAntDetect100ms(void)
{
    static uint8_t cnt = 0;
    static uint8_t MIC_cnt = 0;
    uint32_t antVoltage_5g = 0;

    cnt++;
    MIC_cnt++;
    if (cnt >= 2)
    {
        PeripheralHalAdGet(AD0_CHANNEL_MAIN_ANT_ADC, &antVoltage_5g);
        //TBOX_PRINT("antVoltage_5g_value: %d\n", antVoltage_5g);
        ANT5GMAIN_DetectProcess((uint16_t)antVoltage_5g); // 主天线
        ANT5G_DIV_DetectProcess_200ms();                  // 一、二、三分集检测
        GPS_DetectProcess_200ms();                        // GPS检测
        LED_DetectProcess_200ms();                        // LED检测
        BackupBat_DetectProcess_200ms();                  // 备用电池检测
        EepromDetect();
        SyncMsgLossDetect();
        CheckDtcStatusAndSend709();
        //GetSystemTimeMs();

        // TripCounterDetect();
        cnt = 0;
    }
    if (MIC_cnt >= 10)
    {
        MICIN_DetectProcess_2s(); // MICIN检测
        MIC_cnt = 0;
    }
}

void TaskKl30Detect100ms(void)
{
    static uint8_t cnt = 0;
    cnt++;
    if (cnt >= 2)
    {
        kl30VoltageDTCProcess(g_PowerVoltage);
        cnt = 0;
    }
}

void TaskPowerManageInit(void)
{
    GetRvcWakeupDelay();
    PowerManageSdkInit(&g_pmCondg);
    BatterySdkInit(&g_batterConfig,10,E_BATTERY_FDK);
    PowerManageSdkPowerOn();
    MpuHalStart();
    ANT5GMAIN_DtcInit(); // 主天线初始化
    ANT5G_DIV_DtcInit(); // 一、二、三分集初始化
    GPS_DtcInit();       // GPS初始化
    MICIN_DtcInit();     // MICIN初始化
    LED_DtcInit();       // LED初始化
    BackupBat_DtcInit(); // 备用电池初始化
}

void TaskPowerManage(uint32_t cycleTime)
{   
    static uint8_t timeCount;

    PowerManageSdkCycleProcess(5);
    PowerManageSdkForceWakeupMpu(5);    // TODO guanyuan temp
    // NetManageAutosarCycleProcess();             
    // WatchDogCycleProcess();

    timeCount++;
    if(2==timeCount)
    {
        timeCount = 0;
        MpuHalCycleProcess(10);
        BatterySdkCycleProcess();
        // Kl30DetectCycleProcess();
        PmDebugPrint();
        kl30DetectProcess();
    }
}

void DtcGpioInit(void)     // 初始化DTC检测引脚
{
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;    //5G天线
    PORT.PDSC10 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PDSC10 |= _PORT_PDSCn10_SLOW_MODE_SELECT;
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PODC10 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PODC10 |= _PORT_PODCn10_PUSH_PULL;
    PORT.PBDC10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PBDC10 |= _PORT_PBDCn10_PBDC_MODE_DISABLED;
    PORT.P10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.P10 |= _PORT_Pn10_OUTPUT_LOW;
    PORT.PM10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PM10 |= _PORT_PMn10_MODE_OUTPUT;
    R_PORT_SetGpioOutput(Port10, 10, 1);

    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;    //GPS
    PORT.PDSC10 &= (uint32_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.PDSC10 |= _PORT_PDSCn5_SLOW_MODE_SELECT;
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PODC10 &= (uint32_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.PODC10 |= _PORT_PODCn5_PUSH_PULL;
    PORT.PBDC10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.PBDC10 |= _PORT_PBDCn5_PBDC_MODE_DISABLED;
    PORT.P10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.P10 |= _PORT_Pn5_OUTPUT_LOW;
    PORT.PM10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.PM10 |= _PORT_PMn5_MODE_OUTPUT;
    R_PORT_SetGpioOutput(Port10, 5, 1);

    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;    //LED
    PORT.PDSC0 &= (uint32_t)~_PORT_PMn14_MODE_UNUSED;
    PORT.PDSC0 |= _PORT_PDSCn14_SLOW_MODE_SELECT;
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PODC0 &= (uint32_t)~_PORT_PMn14_MODE_UNUSED;
    PORT.PODC0 |= _PORT_PODCn14_PUSH_PULL;
    PORT.PBDC0 &= (uint16_t)~_PORT_PMn14_MODE_UNUSED;
    PORT.PBDC0 |= _PORT_PBDCn14_PBDC_MODE_DISABLED;
    PORT.P0 &= (uint16_t)~_PORT_PMn14_MODE_UNUSED;
    PORT.P0 |= _PORT_Pn14_OUTPUT_LOW;
    PORT.PM0 &= (uint16_t)~_PORT_PMn14_MODE_UNUSED;
    PORT.PM0 |= _PORT_PMn14_MODE_OUTPUT;
    R_PORT_SetGpioOutput(Port0, 14, 1);

    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;    //AMP_STB   拉高
    PORT.PDSC1 &= (uint32_t)~_PORT_PMn11_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn11_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t)~_PORT_PMn11_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn11_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t)~_PORT_PMn11_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn11_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t)~_PORT_PMn11_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn11_OUTPUT_LOW;
    PORT.PM1 &= (uint16_t)~_PORT_PMn11_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn11_MODE_OUTPUT;
    R_PORT_SetGpioOutput(Port1, 11, 1);

    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;     //AMP_MUTE  拉低
    PORT.PDSC1 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn10_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn10_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn10_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn10_OUTPUT_LOW;
    PORT.PM1 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn10_MODE_OUTPUT;
    R_PORT_SetGpioOutput(Port1, 10, 0);
}

