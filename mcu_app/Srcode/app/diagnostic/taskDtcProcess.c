#include <string.h>
#include "taskDtcProcess.h"

#include "logHal.h"
#include "powerManageSdk.h"

#include "Dem_PBcfg.h"
#include "batterySdk.h"
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
#include "peripheralHal.h"
#include "taskPowerManage.h"

#if (0)
#define DTC_STATUS_BIT0_ENABLE           1//test failed
#define DTC_STATUS_BIT1_ENABLE           1//test failed this monitoring cycle
#define DTC_STATUS_BIT2_ENABLE           0//pending DTC
#define DTC_STATUS_BIT3_ENABLE           1//confirmed DTC
#define DTC_STATUS_BIT4_ENABLE           0//test not completed since last clear
#define DTC_STATUS_BIT5_ENABLE           0//test failed since last clear
#define DTC_STATUS_BIT6_ENABLE           1//test not completed this monitoring cycle
#define DTC_STATUS_BIT7_ENABLE           0//warning indicator requested


#define DTC_AGING_LIMIT                  (40)

#endif

#define DTC_EVT_5G4G_MAIN_SHORT_GND  ((Dem_EventIdType)EventParameter_0x95A011) /*B15A0 FTB:11 */
#define DTC_EVT_5G4G_MAIN_OPEN       ((Dem_EventIdType)EventParameter_0x95A013) /*B15A0 FTB:13 */
#define DTC_EVT_5G_DIV2_SHORT_GND    ((Dem_EventIdType)EventParameter_0x95A111) /*B15A1 FTB:11 */
#define DTC_EVT_5G_DIV2_OPEN         ((Dem_EventIdType)EventParameter_0x95A113) /*B15A1 FTB:13 */
#define DTC_EVT_5G_DIV1_SHORT_GND    ((Dem_EventIdType)EventParameter_0x95A311) /*B15A3 FTB:11 */
#define DTC_EVT_5G_DIV1_OPEN         ((Dem_EventIdType)EventParameter_0x95A313) /*B15A3 FTB:13 */
#define DTC_EVT_5G_DIV3_SHORT_GND    ((Dem_EventIdType)EventParameter_0x95A411) /*B15A4 FTB:11 */
#define DTC_EVT_5G_DIV3_OPEN         ((Dem_EventIdType)EventParameter_0x95A413) /*B15A4 FTB:13 */
#define DTC_EVT_MICIN_SHORT_GND      ((Dem_EventIdType)EventParameter_0x953311) /*B1533 FTB:11 */
#define DTC_EVT_MICIN_SHORT_BAT      ((Dem_EventIdType)EventParameter_0x953312) /*B1533 FTB:12 */
#define DTC_EVT_MICIN_OPEN           ((Dem_EventIdType)EventParameter_0x953313) /*B1533 FTB:13 */
#define DTC_EVT_GPS_SHORT_GND        ((Dem_EventIdType)EventParameter_0x95A711) /*B15A7 FTB:11 */
#define DTC_EVT_GPS_OPEN             ((Dem_EventIdType)EventParameter_0x95A713) /*B15A7 FTB:13 */
#define DTC_EVT_SIM_NOT_ONLINE       ((Dem_EventIdType)EventParameter_0x954100) /*B1541 FTB:00 */
#define DTC_EVT_SIM_INVALID          ((Dem_EventIdType)EventParameter_0x954200) /*B1542 FTB:00 */
#define DTC_EVT_SPEAKER_SHORT_GND    ((Dem_EventIdType)EventParameter_0x953111) /*B1513 FTB:11 */
#define DTC_EVT_SPEAKER_OPEN         ((Dem_EventIdType)EventParameter_0x953113) /*B1513 FTB:13 */
#define DTC_EVT_SPEAKER_SHORT_BAT    ((Dem_EventIdType)EventParameter_0x953512) /*B1535 FTB:12 */

#define SIZE_OF_ARRAY(arrayName) (sizeof(arrayName) / sizeof(arrayName)[0])

static uint16_t g_PowerVoltage = 0;

static uint32_t GetAverageAdValue(uint32_t *pDataIn, uint16_t dataLength)   //均值电压
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

void kl30DetectProcess(void)        // KL30检测
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

//公共使能条件
#define DIAG_PRECOND_USGMD_DELAY_CNT      5    // 5次即1S，DTC200ms检测一次
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
    uint8_t usgMd = 0;
    boolean usgMdV = FALSE;
    Std_ReturnType retMode= E_NOT_OK;
    Std_ReturnType retValid= E_NOT_OK;

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

boolean Diag_CheckUsgMdPrecondition1s(uint8_t *pCnt)   // 对外接口函数：判断 usgmd 条件是否已连续满足1s
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
        *pCnt = 0;
    }
    if (*pCnt >= DIAG_PRECOND_USGMD_DELAY_CNT)
    {
        return TRUE;
    }
    return FALSE;
}

boolean ISEPTStCmdOff(void)
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

#define DTC_COMMON_KL30_MIN_MV            9000     //监测使能条件kl30电压下限
#define DTC_COMMON_KL30_MAX_MV            16000    //监测使能条件kl30电压上限
#define DTC_COMMON_START_DELAY_CNT        5        //上电1s计数

static uint8_t g_dtcCommonStartCnt = 0;   //上电延时计数
//static uint8_t g_dtcCommonUsgMdCnt = 0;   //usgmd计数
static boolean g_dtcCommonEnable = FALSE; 

static void DtcCommonMonitorInit(void)
{
    g_dtcCommonStartCnt = 0;                     
    //g_dtcCommonUsgMdCnt = 0;                     
    g_dtcCommonEnable = FALSE;                    /* 默认不使能 */
}

static void DtcCommonMonitorProcess_200ms(void)
{
    uint16_t kl30Voltage = g_PowerVoltage; 
    //boolean usgMdReady = FALSE;                   

    if (g_dtcCommonStartCnt < DTC_COMMON_START_DELAY_CNT) 
    {
        g_dtcCommonStartCnt++;                    
    }

    //usgMdReady = Diag_CheckUsgMdPrecondition1s(&g_dtcCommonUsgMdCnt); /* 更新UsgMd连续1s条件 */

    if ((kl30Voltage >= DTC_COMMON_KL30_MIN_MV) &&     
        (kl30Voltage <= DTC_COMMON_KL30_MAX_MV) &&     
        (g_dtcCommonStartCnt >= DTC_COMMON_START_DELAY_CNT) && 
        /*(usgMdReady == TRUE) && */                       
        (ISEPTStCmdOff()))                   
    {
        g_dtcCommonEnable = TRUE;                      
    }
    else
    {
        g_dtcCommonEnable = FALSE;                     
    }
}

boolean Dtc_IsCommonMonitorEnable(void)    //公共使能条件统一调用接口
{
    return g_dtcCommonEnable;                         
}


//5G分集各天线判断
#define ANT_DTC_SHORT_GND_TH_MV             200    
#define ANT_DTC_OPEN_LOW_TH_MV              1500    
#define ANT_DTC_OPEN_HIGH_TH_MV             1900   
#define ANT_DTC_NORMAL_LOW_TH_MV            200   
#define ANT_DTC_NORMAL_HIGH_TH_MV           1500      
#define ANT_DTC_CONFIRM_CNT                 20         
#define ANT_DTC_RECOVER_CNT                 20 

#define DEM_EVT_5G_DIV2_SHORT ((Dem_EventIdType)EventParameter_0x95A111) /* 第二分集短路事件，*/
#define DEM_EVT_5G_DIV2_OPEN ((Dem_EventIdType)EventParameter_0x95A113)  /* 第二分集开路事件，*/
#define DEM_EVT_5G_DIV1_SHORT ((Dem_EventIdType)EventParameter_0x95A311) /* 第一分集短路事件，*/
#define DEM_EVT_5G_DIV1_OPEN ((Dem_EventIdType)EventParameter_0x95A313)  /* 第一分集开路事件，*/
#define DEM_EVT_5G_DIV3_SHORT ((Dem_EventIdType)EventParameter_0x95A411) /* 第三分集短路事件，*/
#define DEM_EVT_5G_DIV3_OPEN ((Dem_EventIdType)EventParameter_0x95A413)  /* 第三分集开路事件，*/

#define ANT5GDIV2_ADC_CHANNEL AD0_CHANNEL_MIMO3_ANT_ADC /* 第二分集 ADC 通道，*/
#define ANT5GDIV1_ADC_CHANNEL AD0_CHANNEL_DIV_ANT_ADC   /* 第一分集 ADC 通道，*/
#define ANT5GDIV3_ADC_CHANNEL AD0_CHANNEL_MIMO4_ANT_ADC /* 第三分集 ADC 通道，*/

static const ANT_DetectConfig_t g_antDetectCfg[ANT5G_DIV_MAX] =
{
        {DEM_EVT_5G_DIV2_SHORT, DEM_EVT_5G_DIV2_OPEN, ANT5GDIV2_ADC_CHANNEL}, /* 第二分集配置 */
        {DEM_EVT_5G_DIV1_SHORT, DEM_EVT_5G_DIV1_OPEN, ANT5GDIV1_ADC_CHANNEL}, /* 第一分集配置 */
        {DEM_EVT_5G_DIV3_SHORT, DEM_EVT_5G_DIV3_OPEN, ANT5GDIV3_ADC_CHANNEL}  /* 第三分集配置 */
};

static ANT_DetectState_t g_antDetectState[ANT5G_DIV_MAX];

static uint16_t ANT_ReadVoltage(uint16_t adcChannel) // 读取天线的电压值
{
    uint32_t antVoltage = 0;
    PeripheralHalAdGet(adcChannel, &antVoltage);
    return (uint16_t)antVoltage;
}

static void ANT_ResetShortState(ANT_DetectState_t *pState)
{
    pState->shortCnt = 0;
    pState->okCnt = 0;
    pState->shortFlag = FALSE;
}

static void ANT_ResetOpenState(ANT_DetectState_t *pState)
{
    pState->openCnt = 0;
    pState->okCnt = 0;
    pState->openFlag = FALSE;
}

static void ANT_SyncStateWithDem(const ANT_DetectConfig_t *pCfg, ANT_DetectState_t *pState)
{
    Dem_UdsStatusByteType eventStatus = 0;
    if (pState->shortFlag == TRUE)
    {
        if (Dem_GetEventStatus(pCfg->shortEventId, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                ANT_ResetShortState(pState);
            }
        }
    }
    if (pState->openFlag == TRUE)
    {
        if (Dem_GetEventStatus(pCfg->openEventId, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                ANT_ResetOpenState(pState);
            }
        }
    }
}

static void ANT_InitOneState(ANT_DetectState_t *pState) // 初始化单路状态
{
    pState->shortCnt = 0;
    pState->openCnt = 0;
    pState->okCnt = 0;
    pState->shortFlag = FALSE;
    pState->openFlag = FALSE;
}

static void ANT_DetectOneProcess(const ANT_DetectConfig_t *pCfg, ANT_DetectState_t *pState, uint16_t antVoltage_5g)
{
    ANT_SyncStateWithDem(pCfg, pState);
    if (Dtc_IsCommonMonitorEnable())
    {
        if (antVoltage_5g < ANT_DTC_SHORT_GND_TH_MV) // 短路
        {
            if (pState->shortCnt < ANT_DTC_CONFIRM_CNT)
            {
                pState->shortCnt++;
            }

            pState->openCnt = 0;
            pState->okCnt = 0;
        }
        else if ((antVoltage_5g >= ANT_DTC_OPEN_LOW_TH_MV) && (antVoltage_5g <= ANT_DTC_OPEN_HIGH_TH_MV)) // 开路
        {
            if (pState->openCnt < ANT_DTC_CONFIRM_CNT)
            {
                pState->openCnt++;
            }

            pState->shortCnt = 0;
            pState->okCnt = 0;
        }
        else if ((antVoltage_5g > ANT_DTC_NORMAL_LOW_TH_MV) && (antVoltage_5g < ANT_DTC_NORMAL_HIGH_TH_MV)) // 恢复
        {
            if (pState->okCnt < ANT_DTC_RECOVER_CNT)
            {
                pState->okCnt++;
            }

            pState->shortCnt = 0;
            pState->openCnt = 0;
        }
        else
        {
            pState->shortCnt = 0;
            pState->openCnt = 0;
            pState->okCnt = 0;
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
        pState->shortCnt = 0;
        pState->openCnt = 0;
        pState->okCnt = 0;
    }
}

void ANT5G_DIV_DtcInit(void) // 统一初始化三路分集天线的诊断状态以及天线使能
{
    uint8_t i = 0;
    for (i = 0; i < (uint8_t)ANT5G_DIV_MAX; i++)
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

static uint8_t ANT5GMAIN_Short_Cnt = 0; 
static uint8_t ANT5GMAIN_Open_Cnt = 0;  
static uint8_t ANT5GMAIN_Ok_Cnt = 0;    // 5G主天线恢复正常连续计数
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
    Dem_UdsStatusByteType eventStatus = 0;

    if (ANT5GMAIN_Short_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_5G_MAIN_SHORT, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                ANT5GMAIN_ResetShortMonitorState();
            }
        }
    }

    if (ANT5GMAIN_Open_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_5G_MAIN_OPEN, &eventStatus) == E_OK)
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
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
    ANT5GMAIN_Short_Flag = FALSE;
    ANT5GMAIN_Open_Flag = FALSE;
}

void ANT5GMAIN_DetectProcess(uint16_t antVoltage_5g)
{
    ANT5GMAIN_SyncMonitorStateWithDem();
    if (Dtc_IsCommonMonitorEnable())
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


// GPS_ANT   DTC
#define DEM_EVT_GPS_SHORT ((Dem_EventIdType)EventParameter_0x95A711) /*36u - B15A7 FTB:11*/
#define DEM_EVT_GPS_OPEN ((Dem_EventIdType)EventParameter_0x95A713)  /*37u - B15A7 FTB:13*/

#define GPS_DTC_SHORT_TH_MV 400
#define GPS_DTC_OPEN_LOW_TH_MV 2000
#define GPS_DTC_OPEN_HIGH_TH_MV 2650
#define GPS_DTC_RECOVER_ADC0_LOW_TH_MV 1600  /* 解除故障条件中 ADC0 下限：1600mV */
#define GPS_DTC_RECOVER_ADC0_HIGH_TH_MV 2450 /* 解除故障条件中 ADC0 上限：2450mV */
#define GPS_DTC_RECOVER_ADC1_TH_MV 400       /* 解除故障条件中 ADC1：小于 400mV */
#define GPS_DTC_CONFIRM_CNT 25
#define GPS_DTC_RECOVER_CNT 25

static uint8_t GPS_Short_Cnt = 0; 
static uint8_t GPS_Open_Cnt = 0;  
static uint8_t GPS_Ok_Cnt = 0;    // GPS 恢复正常连续计数
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
    GPS_Short_Flag = FALSE;
    GPS_Open_Flag = FALSE;
}

void GPS_DetectProcess_200ms(void) 
{
    uint32_t gpsVoltageAdc1 = 0;           // 保存 ADC1 通道采样值
    uint32_t gpsVoltageAdc0 = 0;           // 保存 ADC0 通道采样值

    GPS_SyncMonitorStateWithDem();
    PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC1, &gpsVoltageAdc1); /* 采集 GPS ADC1 通道电压 */
    PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC0, &gpsVoltageAdc0); /* 采集 GPS ADC0 通道电压 */

    //TBOX_PRINT("gpsVoltageAdc1_value: %d\n", gpsVoltageAdc1);
    //TBOX_PRINT("gpsVoltageAdc0_value: %d\n", gpsVoltageAdc0);

    if (Dtc_IsCommonMonitorEnable())
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

#define MICIN_DTC_SHORT_GND_TH_MV          50
#define MICIN_DTC_OPEN_LOW_TH_MV           430
#define MICIN_DTC_OPEN_HIGH_TH_MV          550
#define MICIN_DTC_SHORT_BAT_LOW_TH_MV      900
#define MICIN_DTC_SHORT_BAT_HIGH_TH_MV     1100

#define MICIN_DTC_NORMAL_LOW_TH_MV  100 
#define MICIN_DTC_NORMAL_HIGH_TH_MV 420

#define MICIN_DTC_CONFIRM_CNT 3
#define MICIN_DTC_RECOVER_CNT 3

static uint8_t MICIN_ShortGnd_Cnt = 0; // 对地短路连续计数
static uint8_t MICIN_Open_Cnt = 0;     // MIC IN 开路连续计数
static uint8_t MICIN_ShortBat_Cnt = 0; // MIC IN 对电源短路连续计数
static uint8_t MICIN_Ok_Cnt = 0;       // MIC IN 恢复正常连续计数

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
    TBOX_PRINT("MICIN_Voltage: %d\n", micInVoltage);

    if (Dtc_IsCommonMonitorEnable())
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

#define DEM_EVT_LED_SHORT_GND ((Dem_EventIdType)EventParameter_0x951511) /*59u - B1515 FTB:11 */
#define DEM_EVT_LED_SHORT_BAT ((Dem_EventIdType)EventParameter_0x951512) /*2u - B1515 FTB:12 */

#define LED_ADC_CHANNEL           AD0_CHANNEL_beCALL_GenLED_StateDET_ADC
#define LED_DTC_SHORT_GND_TH_MV            100
#define LED_DTC_SHORT_BAT_TH_MV            3000
#define LED_DTC_NORMAL_LOW_TH_MV           1900
#define LED_DTC_NORMAL_HIGH_TH_MV          2100
#define LED_DTC_CONFIRM_CNT                25
#define LED_DTC_RECOVER_CNT                25

static uint8_t LED_ShortGnd_Cnt = 0;      /* LED 对地短路连续计数 */
static uint8_t LED_ShortBat_Cnt = 0;      /* LED 对电源短路连续计数 */
static uint8_t LED_Ok_Cnt = 0;            /* LED 恢复正常连续计数 */
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
    LED_ShortGnd_Flag = FALSE;
    LED_ShortBat_Flag = FALSE;
}

void LED_DetectProcess_200ms(void)
{
    uint32_t ledVoltage = 0;

    LED_SyncMonitorStateWithDem();
    PeripheralHalAdGet(LED_ADC_CHANNEL, &ledVoltage);
    //TBOX_PRINT("ledVoltage: %d\n", ledVoltage);

    if (Dtc_IsCommonMonitorEnable())
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


//ecall button DTC

// #define DEM_EVT_ECALL_BUTTON_STUCK   ((Dem_EventIdType)EventParameter_0x951171)  /*1u - B1511 FTB:71 */

// #define ECALL_SOS_BUTTON_NORMAL_LEVEL     0                               /* eCALL 按键未按下时返回 0 */
// #define ECALL_SOS_BUTTON_PRESSED_LEVEL    1                               /* eCALL 按键未按下时返回 1 */

// // #define ECALL_DTC_KL30_MIN_MV              9000
// // #define ECALL_DTC_KL30_MAX_MV              16000
// // #define ECALL_DTC_START_DELAY_CNT          5
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
//     //uint16_t kl30Voltage = g_PowerVoltage;

//     ECALL_SyncMonitorStateWithDem();
//     ecallButtonStatus = EcallHalGetSosButtonStatus();                      /* 读取 eCALL SOS 按键当前 IO 电平状态 */

//     // if (ECALL_StartCnt < ECALL_DTC_START_DELAY_CNT)
//     // {
//     //     ECALL_StartCnt++;
//     // }
//     if (Dtc_IsCommonMonitorEnable() == TRUE)
//     // if ((kl30Voltage >= ECALL_DTC_KL30_MIN_MV) &&
//     //     (kl30Voltage <= ECALL_DTC_KL30_MAX_MV) &&
//     //     ISEPTStCmdOff() &&
//     //     (ECALL_StartCnt >= ECALL_DTC_START_DELAY_CNT))
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
//                 Dem_SetEventStatus(DEM_EVT_ECALL_BUTTON_STUCK, DEM_EVENT_STATUS_PASSED);
//             }
//         }
//     }
//     else
//     {
//         ECALL_Stuck_Cnt = 0u;
//         ECALL_Ok_Cnt = 0u;
//     }
// }



// eeprom  DTC

#define DEM_EVT_ECU_EEPROM_ERROR ((Dem_EventIdType)EventParameter_0xE00142) /*48u - U2001 FTB:42 */
             
static uint8_t g_eepromReadAllPass = 0;                                 //ReadAll是否成功，1成功，0失败
static NvM_RequestResultType g_eepromReadAllResult = NVM_REQ_PENDING;   //ReadAll初始状态 

void EepromDetectInit(void)                                                     
{
    g_eepromReadAllPass = 0;                                                   
    g_eepromReadAllResult = NVM_REQ_PENDING;                                 //上电初始化时，整体任务状态为PENDING
}

void EepromSetReadAllResult(NvM_RequestResultType readAllResult)              //获取ReadAll结果
{
    g_eepromReadAllResult = readAllResult;                                    //readall是否完成
                                                   
    if ((readAllResult == NVM_REQ_NOT_OK) ||                                   
        (readAllResult == NVM_REQ_INTEGRITY_FAILED) ||                          
        (readAllResult == NVM_REQ_REDUNDANCY_FAILED) ||                         
        (readAllResult == NVM_REQ_NV_INVALIDATED))                              
    {
        g_eepromReadAllPass = 0;                                               
        Dem_SetEventStatus(DEM_EVT_ECU_EEPROM_ERROR, DEM_EVENT_STATUS_FAILED);  
    }
    else                                                                        
    {
        g_eepromReadAllPass = 1;                                               //ReadAll成功
    }
}

static uint8 Eeprom_IsBlockStatusFault(NvM_RequestResultType blockResult)       //判断单个NvM block状态是否应计为EEPROM DTC故障
{
    if ((blockResult == NVM_REQ_NOT_OK) ||                                      
        (blockResult == NVM_REQ_INTEGRITY_FAILED) ||                            
        (blockResult == NVM_REQ_REDUNDANCY_FAILED) ||                           
        (blockResult == NVM_REQ_NV_INVALIDATED) )                             
    {
        return 1;                                                              //返回1表示该block状态异常，计入故障
    }

    return 0;                                                                  //返回0表示该block状态不计为故障
}

static void EepromMiswriteDtcDetect(void)                                       
{
    NvM_RequestResultType blockResult = NVM_REQ_PENDING;                        //保存当前遍历到的单个block状态 
    NvM_BlockIdType blockId = 2;                                               //从block2开始遍历
    uint8_t hasFaultBlock = 0;                                                 //标记是否发现了任意一个异常block

    if (!Dtc_IsCommonMonitorEnable())                                           
    {
        return;                                                                
    }

    if (g_eepromReadAllPass == 0)                                              //上电ReadAll失败
    {
        return;                                                                 
    }

    for (blockId = 2; blockId <= (NvM_BlockIdType)NVM_BLOCK_NUM_ALL; blockId++)  //遍历当前工程里所有配置的NvM block
    {
        NvM_GetErrorStatus(blockId, &blockResult);                        

        if (blockResult == NVM_REQ_PENDING)                                     
        {
            return;                                                             
        }
        if (Eeprom_IsBlockStatusFault(blockResult) != 0)                       
        {
            hasFaultBlock = 1;                                           
            break;                                                             
        }
    }

    if (hasFaultBlock != 0)                                                    
    {
        Dem_SetEventStatus(DEM_EVT_ECU_EEPROM_ERROR, DEM_EVENT_STATUS_FAILED); 
    }
    else                                                                        
    {
        Dem_SetEventStatus(DEM_EVT_ECU_EEPROM_ERROR, DEM_EVENT_STATUS_PASSED);  
    }
}

// 行程计数器
#define TRIPCNT_STORE_DTC_KL30_MIN_MV          9000
#define TRIPCNT_STORE_DTC_KL30_MAX_MV          16000
#define TRIPCNT_STORE_DTC_START_DELAY_CNT      5   //上电延时计数
#define TRIPCNT_STORE_DTC_CAN_CONFIRM_CNT      5   //CAN网络确认计数
#define TRIPCNT_STORE_DTC_WAKE_DELAY_CNT       5   //唤醒计数

static uint8_t TripCntStore_WakeCnt = 0;                                       //唤醒计数
static uint8_t TripCntStore_StartCnt = 0;                                      //上电延时计数
static uint8_t TripCntStore_CanNormalCnt = 0;                                  //CAN网络正常持续计数
static uint8_t TripCntStore_Enable = 0;                                        //行程计数器监测使能

static boolean IsCanNetworkNormal(void)     //检测CAN网络是否正常
{
    // Nm_StateType nmStatePtr = 0;
    // Nm_ModeType nmModePtr = 0;

    // CanNm_GetState(0, &nmStatePtr, &nmModePtr);

    // if (nmStatePtr == NM_STATE_NORMAL_OPERATION || nmStatePtr == NM_STATE_REPEAT_MESSAGE || nmStatePtr == NM_STATE_SYNCHRONIZE)
    // {
    //     return TRUE;
    // }
    // return FALSE;

    Nm_StateType nmStatePtr = NM_STATE_UNINIT;                                    // 保存当前 NM 状态
    Nm_ModeType nmModePtr = NM_MODE_BUS_SLEEP;                                    // 保存当前 NM 模式
    Std_ReturnType ret = E_NOT_OK;                                                // 保存 CanNm_GetState 的返回值，避免状态读取失败时误判

    ret = CanNm_GetState(0, &nmStatePtr, &nmModePtr);                             // 读取 0 号 CAN 网络的当前 NM 状态和模式
    if (ret != E_OK)                                                              // 如果状态接口本次读取失败
    {
        return FALSE;                                                             // 直接返回 FALSE，防止在状态未知时打开诊断使能
    }

    if ((nmStatePtr == NM_STATE_NORMAL_OPERATION) ||                              // 正常通信状态，允许诊断
        (nmStatePtr == NM_STATE_REPEAT_MESSAGE) ||                                // 重复报文状态，网络已唤醒，允许诊断
        (nmStatePtr == NM_STATE_SYNCHRONIZE) ||                                   // 同步状态，允许诊断
        (nmStatePtr == NM_STATE_READY_SLEEP))                                     // 关键：当前工程里 READY_SLEEP 期间仍可能存在有效通信，不能把它当成“网络不正常”
    {
        return TRUE;                                                              // 以上状态都视为“网络已正常可用于该类 DTC 诊断”
    }

    return FALSE;                  
}

void TripCntStore_DtcInit(void)                                                 
{
    TripCntStore_StartCnt = 0;                                                 
    TripCntStore_CanNormalCnt = 0;
    TripCntStore_WakeCnt = 0;
    TripCntStore_Enable = 0;                                                  
}

void TripCntStore_DetectProcess_200ms(void)                                    
{
    uint16_t kl30Voltage = g_PowerVoltage;                                     

    if (TripCntStore_WakeCnt < TRIPCNT_STORE_DTC_WAKE_DELAY_CNT)               
    {
        TripCntStore_WakeCnt++;                                                
    }

    if (TripCntStore_StartCnt < TRIPCNT_STORE_DTC_START_DELAY_CNT)             
    {
        TripCntStore_StartCnt++;                                               
    }

    if ((TripCntStore_WakeCnt >= TRIPCNT_STORE_DTC_WAKE_DELAY_CNT) &&          
        (kl30Voltage >= TRIPCNT_STORE_DTC_KL30_MIN_MV) &&                      
        (kl30Voltage <= TRIPCNT_STORE_DTC_KL30_MAX_MV) &&                      
        (TripCntStore_StartCnt >= TRIPCNT_STORE_DTC_START_DELAY_CNT) &&        
        ISEPTStCmdOff() &&                                                     
        (IsCanNetworkNormal() == TRUE))                                        
    {
        if (TripCntStore_CanNormalCnt < TRIPCNT_STORE_DTC_CAN_CONFIRM_CNT)     
        {
            TripCntStore_CanNormalCnt++;                                       
        }
    }
    else                                                                       
    {
        TripCntStore_CanNormalCnt = 0;                                        
    }

    if (TripCntStore_CanNormalCnt >= TRIPCNT_STORE_DTC_CAN_CONFIRM_CNT)        
    {
        TripCntStore_Enable = 1;                                             
    }
    else
    {
        TripCntStore_Enable = 0;                                             
    }
}

uint8 GetTripCounterDetectEnable(void)
{
    return TripCntStore_Enable;
}


// 同步报文丢失
#define DTC_EVT_SYNC_MSG_LOSS   ((Dem_EventIdType)EventParameter_0xD60087)   /* U1600 FTB:87*/  
#define SYNCMSG_DTC_KL30_MIN_MV                  9000                                         
#define SYNCMSG_DTC_KL30_MAX_MV                  16000                                        
#define SYNCMSG_DTC_START_DELAY_CNT              5                                           
#define SYNCMSG_DTC_FAIL_CONFIRM_CNT             25     //故障成熟计数                                      
#define SYNCMSG_DTC_RECOVER_CNT                  10     //故障解除计数

static uint8_t SyncMsgLoss_StartCnt = 0;
static uint8_t SyncMsgLoss_FailCnt = 0;
static uint8_t SyncMsgLoss_RecoverCnt = 0;
static uint8_t g_syncMsgLossAndIccEnableCount = 0;
static uint8_t g_SyncMsgLossAndIccEnable=0;

static boolean IsBusOffFaultActive(void)                   /* 判断当前是否存在BusOff故障 */
{
    Dem_UdsStatusByteType eventStatus = 0;                                              
    if (Dem_GetEventStatus(EventParameter_0xC07388, &eventStatus) != E_OK)              
    {
        return TRUE;                                                                    
    }
    if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC)) != 0)
    {
        return TRUE;                                                                    
    }
    return FALSE;                                                                       
}

// void SyncMsgLoss_DetectProcess_200ms(void)                                            
// {
//     uint16_t kl30Voltage = g_PowerVoltage;                                           
//     uint64 syncMsg = 0;                                                              
//     Std_ReturnType ret = E_NOT_OK;                                                    

//     if ((kl30Voltage >= SYNCMSG_DTC_KL30_MIN_MV) &&                                   
//         (kl30Voltage <= SYNCMSG_DTC_KL30_MAX_MV) &&                                   
//         (ISEPTStCmdOff()) && (IsBusOffFaultActive()== FALSE))                                                               
//     {
//         if (IsCanNetworkNormal() == TRUE)                                             
//         {
//             if (SyncMsgLoss_StartCnt < SYNCMSG_DTC_START_DELAY_CNT)                   
//             {
//                 SyncMsgLoss_StartCnt++;                                               
//             }
//         }
//         else
//         {
//             SyncMsgLoss_StartCnt = 0;                                                 
//             SyncMsgLoss_FailCnt = 0;                                                  
//             SyncMsgLoss_RecoverCnt = 0;                                               
//         }
//     }
//     else
//     {
//         SyncMsgLoss_StartCnt = 0;                                                     
//         SyncMsgLoss_FailCnt = 0;                                                      
//         SyncMsgLoss_RecoverCnt = 0;                                                   
//     }

//     if (SyncMsgLoss_StartCnt >= SYNCMSG_DTC_START_DELAY_CNT)                        //can网络正常后开始检测
//     {
//         ret = Com_ReceiveSignal(                                                      //读取同步报文对应的COM 数据
//             SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,
//             &syncMsg);
//         if (ret != E_OK)                                                              
//         {
//             if (SyncMsgLoss_FailCnt < SYNCMSG_DTC_FAIL_CONFIRM_CNT)                   
//             {
//                 SyncMsgLoss_FailCnt++;                                                
//             }
//             SyncMsgLoss_RecoverCnt = 0;                                               
//             if (SyncMsgLoss_FailCnt >= SYNCMSG_DTC_FAIL_CONFIRM_CNT)                 
//             {
//                 SyncMsgLoss_FailCnt = SYNCMSG_DTC_FAIL_CONFIRM_CNT;                   
//                 Dem_SetEventStatus(DTC_EVT_SYNC_MSG_LOSS, DEM_EVENT_STATUS_FAILED);   
//             }
//         }
//         else
//         {
//             if (SyncMsgLoss_RecoverCnt < SYNCMSG_DTC_RECOVER_CNT)                     
//             {
//                 SyncMsgLoss_RecoverCnt++;                                             
//             }
//             SyncMsgLoss_FailCnt = 0;                                                  

//             if (SyncMsgLoss_RecoverCnt >= SYNCMSG_DTC_RECOVER_CNT)                    
//             {
//                 SyncMsgLoss_RecoverCnt = SYNCMSG_DTC_RECOVER_CNT;                     
//                 Dem_SetEventStatus(DTC_EVT_SYNC_MSG_LOSS, DEM_EVENT_STATUS_PASSED); 
//             }
//         }
//     }
// }

static void SyncMsgLossAndIccDetect()
{
    uint16_t kl30Voltage = g_PowerVoltage; 
    Dem_UdsStatusByteType bufOffFaultStatus = 0;      // 获取BufOff故障状态
    Dem_GetEventStatus(EventParameter_0xC07388, &bufOffFaultStatus);
  
    if((kl30Voltage >= SYNCMSG_DTC_KL30_MIN_MV) && (kl30Voltage <= SYNCMSG_DTC_KL30_MAX_MV) &&
    (ISEPTStCmdOff()) && (IsBusOffFaultActive()== FALSE) && (IsCanNetworkNormal() == TRUE))
    {
    //if (1)
    //     g_syncMsgLossAndIccEnableCount++;
    //     if (g_syncMsgLossAndIccEnableCount >= 5)
    //     {
    //         g_syncMsgLossAndIccEnableCount = 5;
    //     }
    //     if (g_syncMsgLossAndIccEnableCount >= 5)
    //     {
    //         g_SyncMsgLossAndIccEnable=1;
    //     }
    //     else
    //     {
    //     }
    // }
    // else
    // {
    //     g_syncMsgLossAndIccEnableCount = 0;
    //     g_SyncMsgLossAndIccEnable = 0;
    // }

    if (g_syncMsgLossAndIccEnableCount < SYNCMSG_DTC_START_DELAY_CNT)         // 若连续满足条件时间还没到 1 秒
        {
            g_syncMsgLossAndIccEnableCount++;                                      
        }
        else
        {
            g_syncMsgLossAndIccEnableCount = SYNCMSG_DTC_START_DELAY_CNT;         
        }

        if (g_syncMsgLossAndIccEnableCount >= SYNCMSG_DTC_START_DELAY_CNT)        // 连续满足 1 秒
        {
            g_SyncMsgLossAndIccEnable = 1;                                         // 打开 U1600/U0146 共用诊断使能
        }
        else
        {
            g_SyncMsgLossAndIccEnable = 0;                                         
        }
    }
    else
    {
        g_syncMsgLossAndIccEnableCount = 0;                                        
        g_SyncMsgLossAndIccEnable = 0;                                            
    }
}

uint8_t GetSyncMsgLossAndIccEnable(void)
{
    return g_SyncMsgLossAndIccEnable;
}


//709报文发送队列结构


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
    Com_SendSignal(IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx, &dtcMsg);
}

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


#if (0)

typedef struct
{  
  uint8_t faultNum;//indication the valid count in the array of faultItem 
  uint8_t faultItem[5];//type is enum_E_DTC_ITEM,when the element of faultItem is used, when this fault happened, discard the releated fault(eg.node missing)
}DtcDependency_t;

typedef struct
{
  uint32_t dtcCode;
  uint32_t testDtcCode;//used for EOL test
  uint32_t checkCycleTime;//ms
  int32_t faultLimit;
  int32_t faultRecoverLimit;
  //DTCAgintCounter:confirmedDTC cleared when DTCAgintCounter reaches a maximum vaule(DTCAgingFaultLimit)
  uint32_t DTCAgingFaultLimit;//
  //trip counter:used by confirmedDTC detect when trip counter reaches a maximum value(TripCounterFaultLimit)
  //uint32_t TripCounterFaultLimit;//
  
  const DtcDependency_t *pDependce;  
  DtcGroup_e dtcGroup;//0:no fault recover,1:fault recover
  
}DtcConfig_t;

typedef enum
{
  E_CONFIRM_STAGE_INITIAL_MONITOR = 0,
  E_CONFIRM_STAGE_AGING_MONITOR,//
}DtcConfirmStage_e;

typedef struct
{
  uint8_t dtcStatus;
  uint8_t faultFlag;
  //uint8_t faultDetectFlag;
  uint8_t testResult;
  uint8_t faultStateChange;
  uint8_t testFailedLastOperationCycle;
  uint8_t confirmStage;
  int16_t faultCount;  
  uint32_t timeCount;
  uint16_t currentOperationCycle;
  //uint32_t lastOperationCycle;
  uint16_t failedOperationCycle;
  uint16_t DTCAgingCounter;
  //uint32_t TripCounter;
  //snapshot data
  DtcSnapshotRecordGlobal_t snapshotData01;
  DtcSnapshotRecordGlobal_t snapshotData05;
  DtcSnapshotRecordGlobal_t     snapshotData;
  DtcExtendedDataRecordGlobal_t extendData;    
}DtcState_t;

typedef enum
{
  E_DTC_PROCESS_STATE_INIT,
  E_DTC_PROCESS_STATE_NORMAL,
  E_DTC_PROCESS_STATE_KL15OFF,
  E_DTC_PROCESS_STATE_SLEEP,
}DtcProcessState_e;

typedef struct
{
    uint8_t enableFlag[8];
}DtcGroupManage_t;

//dtc process cycle definition
#define DTC_PROCESS_CYCLE_TIME          5//ms

//test result definition
#define DTC_TEST_RESULT_NOT_COMPLETE    0
#define DTC_TEST_RESULT_PASSED          1
#define DTC_TEST_RESULT_FAILED          2
//DetectEnable definition
#define BOOL_FALSE    0
#define BOOL_TRUE     1

const DtcDependency_t g_canDNodeLost =
{
  .faultNum = 2,
  .faultItem = {E_DTC_ITEM_DCAN_BUSOFF,E_DTC_ITEM_KL30_VOLTAGE_LOW,0,0,0},
};

const static DtcConfig_t g_dtcList[] =
{
  /* dtcCode testDtcCode      checkCycleTime     faultLimit RecoverLimit DTCAgingLimit FaultDepend FaultDetectEnable****/
  {0xC07388,0x007388,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          NULL,                   E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_DCAN_BUSOFF
  {0xD10017,0x110017,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          NULL,                   E_DTC_GROUP_KL15_DEDECT },//DTC_ITEM_KL30_VOLTAGE_HIGH
  {0xD10116,0x110016,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          NULL,                   E_DTC_GROUP_KL15_DEDECT },//DTC_ITEM_KL30_VOLTAGE_LOW

  {0xD02016,0x102016,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_BCM1_319,
  {0xD02019,0x102019,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_AC1_29D,
  {0xD02021,0x102021,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_PEPS2_295,
  {0xD02024,0x102024,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_GWFD1_2BB,
  {0xD02028,0x102028,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_IP2_27F,
  {0xD02031,0x102031,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_TPMS1_341,
  {0xD02032,0x102032,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          &g_canDNodeLost,        E_DTC_GROUP_KL15_DEDECT },//E_DTC_ITEM_NODE_MISSING_EEM1_2A8,
  
  {0x000000,0x000000,(10/DTC_PROCESS_CYCLE_TIME),     1,           -1,        40,          NULL,                   E_DTC_GROUP_UNUSED },//  RESERVED

};



#define WORKFLASH_DTC_NUMBER            (sizeof(g_dtcList)/sizeof(g_dtcList[0]))


static DtcState_t g_dtcState[WORKFLASH_DTC_NUMBER];
static DtcGroupManage_t g_dtcGroupManage; 



//static uint8_t g_sleepFlag = 0;
static int16_t g_sleepCommandHandle = -1;
static uint8_t g_detectEnableFlag = 1;
static uint8_t g_dtcClearRequestFlag = 0;
static DtcProcessState_e g_dtcProcessState = E_DTC_PROCESS_STATE_INIT;


static uint32_t g_delayWriteCount = 0;
static uint32_t g_delayWriteFlag = 0;

typedef struct
{
  uint8_t testFailed :1;
  uint8_t testFailedThisOperationCycle :1;
  uint8_t pendingDTC :1;
  uint8_t confirmedDTC :1;
  uint8_t testNotCompletedSinceLastClear :1;
  uint8_t testFailedSinceLastClear :1;  
  uint8_t testNotCompletedThisOperationCycle :1;
  uint8_t warningIndicatorRequested :1;    
}DtcStatusBit_t;


static int16_t GetCurrentSnapshotData(DtcSnapshotRecordGlobal_t *pSnapshotData);
static int16_t WorkFlashWriteVehicleDTCBufferToFlash(void);
static void SetDTCExtendedData(DtcState_t *pDtcState);
static void ClearDTCExtendedData(DtcState_t *pDtcState);
static void DtcSaveToWorkFlash(void);

int16_t TaskAppDtcProcessInit(void)
{
  return 0;
}

static int16_t CheckDtcDependceMsgMissing(const DtcDependency_t *pDependency)
{
  int16_t ret;
  int16_t i;  
  ret = 1;

  for(i=0;i<pDependency->faultNum;i++)
  {
    if(g_dtcState[pDependency->faultItem[i]].faultFlag )
    {
      ret = 0;
      return ret;
    }
  }  
  return ret;
}


static void DtcStatusBitTestFailedProcess(DtcState_t *pDtcState)
{
  //uint8_t clearDiagnosticInformationRequest;
  //uint8_t testResultFailed;
  uint8_t McuResetFlag;
  DtcStatusBit_t *pStatusBit;
  
  //clearDiagnosticInformationRequest = 0;// for debug
  McuResetFlag = 0;//for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus;

  if(pStatusBit->testFailed==0)
  {
    if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
    {
      pStatusBit->testFailed = 1;
      pDtcState->faultStateChange = 1;
    }
  }
  else//pStatusBit->testFailed = 1
  {
    if((pDtcState->testResult==DTC_TEST_RESULT_PASSED)||(g_dtcClearRequestFlag)||(McuResetFlag))
    {
      pStatusBit->testFailed = 0;
    }
  }
  
}
#if(DTC_STATUS_BIT1_ENABLE) 
static void DtcStatusBitTestFailedThisOperationCycleProcess(DtcState_t *pDtcState)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus;
  
  /*if(initializationFlag_TFTOC==0)
  {
    initializationFlag_TFTOC = 1;
    testFailedThisOperationCycle = 0;
    lastOperationCycle = currentOperationCycle;
    
  }  */
  /*if((pDtcState->currentOperationCycle!=pDtcState->lastOperationCycle)||(g_dtcClearRequestFlag))
  {
    pDtcState->lastOperationCycle = pDtcState->currentOperationCycle;
    pStatusBit->testFailedThisOperationCycle = 0;
  }*/
  if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
  {
    pStatusBit->testFailedThisOperationCycle = 1;
  }
  else if(g_dtcClearRequestFlag)
  {
    pStatusBit->testFailedThisOperationCycle = 0;      
  }
 
}
#endif

#if(DTC_STATUS_BIT2_ENABLE) 
static void DtcStatusBitPendingDtcProcess(DtcState_t *pDtcState,const DtcConfig_t* dtcConfig)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  
  /*if(initializatinoFlag_PDTC==0)
  {
    initializatinoFlag_PDTC = 1;
    pendingDTC = 0;
    failedOperationCycle = currentOperationCycle;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus;  
  if(g_dtcClearRequestFlag)
  {
    pStatusBit->pendingDTC = 0;
    //pDtcState->TripCounter = 0;//xwm
  }
  else if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
  {
    pStatusBit->pendingDTC = 1;
    if(pDtcState->failedOperationCycle != pDtcState->currentOperationCycle)
    {
      pDtcState->failedOperationCycle = pDtcState->currentOperationCycle;
      /*if((pDtcState->TripCounter)<(dtcConfig->TripCounterFaultLimit))
      {
        pDtcState->TripCounter++;
      }    */  
    }    
  }
  else if((pDtcState->testResult==DTC_TEST_RESULT_PASSED)&&(!pStatusBit->testFailedThisOperationCycle)&&(!pDtcState->testFailedLastOperationCycle))
  {
    pStatusBit->pendingDTC = 0;
    //trip counter = 0 xwm
    //pDtcState->TripCounter = 0;
  }

}
#else
static void DtcStatusBitPendingDtcProcess(DtcState_t *pDtcState,const DtcConfig_t* dtcConfig)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  
  /*if(initializatinoFlag_PDTC==0)
  {
    initializatinoFlag_PDTC = 1;
    pendingDTC = 0;
    failedOperationCycle = currentOperationCycle;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus;  

  pStatusBit->pendingDTC = 0;

}

#endif

#if(DTC_STATUS_BIT3_ENABLE) 
static void DtcStatusBitConfirmedDtcProcess(DtcState_t *pDtcState,const DtcConfig_t* dtcConfig)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  uint8_t DTCConfirmationCriteriaSatisfied;
  uint8_t agingCtriteriaSatisfied;
  /*if(initializatinoFlag_CDTC==0)
  {
    initializatinoFlag_CDTC = 1;
    confirmedDTC = 0;
    confirmState = INITIAL_MONITOR;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug

  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus; 
  
  
  /*if((pDtcState->TripCounter)>=(dtcConfig->TripCounterFaultLimit))
  {
    DTCConfirmationCriteriaSatisfied = 1;
  }
  else
  {
    DTCConfirmationCriteriaSatisfied = 0;
  }*/
  if(pDtcState->testResult==DTC_TEST_RESULT_FAILED)
  {
    DTCConfirmationCriteriaSatisfied = 1;
  }
  else
  {
    DTCConfirmationCriteriaSatisfied = 0;
  }
  
  if((pDtcState->DTCAgingCounter)>=(dtcConfig->DTCAgingFaultLimit))
  {
    agingCtriteriaSatisfied = 1;
  }
  else
  {
    agingCtriteriaSatisfied = 0;
  }

  if((pDtcState->confirmStage)==E_CONFIRM_STAGE_INITIAL_MONITOR)
  {
    if((DTCConfirmationCriteriaSatisfied)&&(g_dtcClearRequestFlag==0))
    {
      pStatusBit->confirmedDTC = 1;
      //Reset aging status
      pDtcState->DTCAgingCounter = 0;
      pDtcState->confirmStage = E_CONFIRM_STAGE_AGING_MONITOR;
    }
    else
    {
      pStatusBit->confirmedDTC = 0;
    }

  }
  else if((pDtcState->confirmStage)==E_CONFIRM_STAGE_AGING_MONITOR)
  {
    if((g_dtcClearRequestFlag)||(agingCtriteriaSatisfied))
    {
      pStatusBit->confirmedDTC = 0;
      pDtcState->confirmStage = E_CONFIRM_STAGE_INITIAL_MONITOR;
    }
    else if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
    {
      //reset aging status
      pDtcState->DTCAgingCounter = 0;
      //pDtcState->confirmStage = CONFIRM_STAGE_INITIAL_MONITOR;
    }
    else
    {
      //update aging status as appropriate
      //do nothing
    }
    
  }
  else
  {
    pDtcState->confirmStage = E_CONFIRM_STAGE_INITIAL_MONITOR;    
    pDtcState->DTCAgingCounter = 0;
  }
}
#endif

#if(DTC_STATUS_BIT4_ENABLE) 
static void DtcStatusBitTestNotCompletedSinceLastClearProcess(DtcState_t *pDtcState)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  
  /*if(initializationFlag_TNCSLC==0)
  {
    initializationFlag_TNCSLC = 1;
    pStatusBit->testNotCompletedSinceLastClear = 1;
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus; 
  
  if(g_dtcClearRequestFlag)
  {
    pStatusBit->testNotCompletedSinceLastClear = 1;
  }
  else if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)||(pDtcState->testResult==DTC_TEST_RESULT_PASSED))
  {
    pStatusBit->testNotCompletedSinceLastClear = 0;
  }
}
#endif

#if(DTC_STATUS_BIT5_ENABLE) 
static void DtcStatusBitTestFailedSinceLastClearProcess(DtcState_t *pDtcState)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  
  /*if(initializatinoFlag_TFSLC==0)
  {
    initializatinoFlag_TFSLC = 1;
    testFailedSinceLastClear = 0;
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus; 
  
  if(g_dtcClearRequestFlag)
  {
    pStatusBit->testFailedSinceLastClear = 0;
  }
  else if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
  {
    pStatusBit->testFailedSinceLastClear = 1;
  }
}
#endif

#if(DTC_STATUS_BIT6_ENABLE) 
static void DtcStatusBitTestNotCompletedThisOperationCycleProcess(DtcState_t *pDtcState)
{
  //uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  
  /*if(initializatinoFlag_TNCTOC==0)
  {
    initializatinoFlag_TNCTOC = 1;
    pStatusBit->testNotCompletedThisOperationCycle = 1;
    lastOperationCycle = currentOperationCycle;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus; 

  if(g_dtcClearRequestFlag)
  {
    pStatusBit->testNotCompletedThisOperationCycle = 1;
  }
  /*else if(pDtcState->currentOperationCycle!=pDtcState->lastOperationCycle)
  {
    pDtcState->lastOperationCycle = pDtcState->currentOperationCycle;
    pStatusBit->testNotCompletedThisOperationCycle = 1;
  }*/
  else if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)||(pDtcState->testResult==DTC_TEST_RESULT_PASSED))
  {
    pStatusBit->testNotCompletedThisOperationCycle = 0;
  }

}
#endif

#if(DTC_STATUS_BIT7_ENABLE) 
static void DtcStatusBitWarningIndicatorReuestedProcess(DtcState_t *pDtcState)
{
  DtcStatusBit_t *pStatusBit;
  uint8_t warningIndicatorNotRequested;
  uint8_t warningIndicatorEnable;
  uint8_t warningIndicatorExists;
  
  /*if(initializatinoFlag_WIR==0)
  {
    initializatinoFlag_WIR = 1;
    pStatusBit->warningIndicatorRequested = 0;
  }*/
  
  warningIndicatorNotRequested = 1;//for debug
  warningIndicatorEnable = 1;//for debug
  warningIndicatorExists = 1;
  
  pStatusBit = (DtcStatusBit_t*) &pDtcState->dtcStatus; 
  
  if(((g_dtcClearRequestFlag)||(!pDtcState->testResultFailed)||(!warningIndicatorEnable))&&(warningIndicatorNotRequested))
  {
    pStatusBit->warningIndicatorRequested = 0;
  }
  else if((pDtcState->testResultFailed)&&(warningIndicatorExists)&&((pStatusBit->confirmedDTC)||(warningIndicatorEnable)))
  {
    pStatusBit->warningIndicatorRequested = 1;
  }
}
#endif


static void SnapshotSaveLogicProcess(uint8_t *pDtcStatus, uint8_t *pFaultStateChange,DtcSnapshotRecordGlobal_t *pSnapshotData01,DtcSnapshotRecordGlobal_t *pSnapshotData05)
{
    DtcStatusBit_t *pStatusBit = NULL ;
    pStatusBit = (DtcStatusBit_t*)pDtcStatus;
    
    if(((pStatusBit->testFailed) == 1))
    {

        if(pStatusBit->confirmedDTC != 1)
        {
            GetCurrentSnapshotData(pSnapshotData01);
            //DtcSaveToWorkFlash();
        }
        if(*pFaultStateChange)
        {
        	*pFaultStateChange = 0;
        	GetCurrentSnapshotData(pSnapshotData05);
        	DtcSaveToWorkFlash();
        }
    }
}


static void DtcNormalProcess(void)
{
  uint32_t i;  
  uint32_t size;
  
  size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  
  for(i=0;i<size;i++)
  {

      if(g_dtcGroupManage.enableFlag[g_dtcList[i].dtcGroup]!=0)
      {
          if(g_dtcList[i].pDependce==NULL)
          {
            if(g_dtcState[i].faultFlag)
            {
                g_dtcState[i].testResult = DTC_TEST_RESULT_FAILED;
            }
            else
            {
                g_dtcState[i].testResult = DTC_TEST_RESULT_PASSED;
            }            
          }
          else
          {
            if(CheckDtcDependceMsgMissing(g_dtcList[i].pDependce)==0)
            {
              g_dtcState[i].testResult = DTC_TEST_RESULT_PASSED;
            }
            else
            {
                if(g_dtcState[i].faultFlag)
                {
                    g_dtcState[i].testResult = DTC_TEST_RESULT_FAILED;
                }
                else
                {
                    g_dtcState[i].testResult = DTC_TEST_RESULT_PASSED;
                } 
            }
          }
      }


    //dtc bit status  process  
#if(DTC_STATUS_BIT0_ENABLE)
    DtcStatusBitTestFailedProcess(&g_dtcState[i]);//status bit0
    SnapshotSaveLogicProcess(&g_dtcState[i].dtcStatus, &g_dtcState[i].faultStateChange,&g_dtcState[i].snapshotData01,&g_dtcState[i].snapshotData05);
    //debug
    /*if(i==E_DTC_ITEM_NODE_MISSING_165)
    {
    	if(g_dtcState[i].dtcStatus&0x01)
    	{
    		TBOX_PRINT("g_dtcState[i].dtcStatus %2x,%d \r\n",g_dtcState[i].dtcStatus,RTOS_HalGetTickCount());
    	}
    }*/
#endif
#if(DTC_STATUS_BIT1_ENABLE)
    DtcStatusBitTestFailedThisOperationCycleProcess(&g_dtcState[i]);//status bit1
#endif
#if(DTC_STATUS_BIT2_ENABLE)    
    DtcStatusBitPendingDtcProcess(&g_dtcState[i],&g_dtcList[i]);//status bit2
#else
    DtcStatusBitPendingDtcProcess(&g_dtcState[i],&g_dtcList[i]);//status bit2		
#endif
		
#if(DTC_STATUS_BIT3_ENABLE)  
    DtcStatusBitConfirmedDtcProcess(&g_dtcState[i],&g_dtcList[i]);//status bit3 
#endif
#if(DTC_STATUS_BIT4_ENABLE)      
    DtcStatusBitTestNotCompletedSinceLastClearProcess(&g_dtcState[i]);//status bit4  
#endif
#if(DTC_STATUS_BIT5_ENABLE)         
    DtcStatusBitTestFailedSinceLastClearProcess(&g_dtcState[i]);//status bit5
#endif
#if(DTC_STATUS_BIT6_ENABLE) 
    DtcStatusBitTestNotCompletedThisOperationCycleProcess(&g_dtcState[i]);//status bit6
#endif
#if(DTC_STATUS_BIT7_ENABLE)     
    DtcStatusBitWarningIndicatorReuestedProcess(&g_dtcState[i]);//status bit7
#endif
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    SetDTCExtendedData(&g_dtcState[i]); //whl 20200109
    ClearDTCExtendedData(&g_dtcState[i]);  //whl 20200109
  }  
}

static void DtcInitialize(void)
{
  uint32_t i;
  //DtcStore_t dtcTem;
  DtcStatusBit_t *pStatusBit;
  uint32_t itemNum = sizeof(g_dtcList)/sizeof(g_dtcList[0]);

  FlashDtcRead((uint8_t *)g_dtcState,sizeof(g_dtcState));
  //TBOX_PRINT("DTC buffer size is %d\r\n",sizeof(g_dtcState));
  for(i=0;i<itemNum;i++)
  {
    //WorkFlashWriteVehicleDTCReadByIndex(i,1,&dtcTem);
    
    g_dtcState[i].currentOperationCycle++;
    //g_dtcState[i].DTCAgingCounter = dtcTem.AgingCounter;
    
    //g_dtcState[i].confirmStage = (DtcConfirmStage_e)dtcTem.confirmStage;
    //g_dtcState[i].failedOperationCycle = dtcTem.faildOperationCycle;
    g_dtcState[i].faultCount = 0;
    g_dtcState[i].faultFlag = 0;
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_dtcState[i].timeCount = 0;
    g_dtcState[i].faultStateChange = 0;
    //g_dtcState[i].TripCounter = dtcTem.TripCounter;
    pStatusBit = (DtcStatusBit_t*) &g_dtcState[i].dtcStatus;
    g_dtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;
    //snapshot data
    //memcpy(&g_dtcState[i].snapshotData,&dtcTem.snapshotData,sizeof(dtcTem.snapshotData));
    //extended data //whl 20200107
    //memcpy(&g_dtcState[i].extendData,&dtcTem.extendData,sizeof(dtcTem.extendData));
    //
    /*if(g_dtcState[i].dtcStatus.bitField.pendingDTC)//pending dtc bit
    {
      if( g_dtcState[i].TripCounter<g_dtcList[i].TripCounterFaultLimit)
      {
        g_dtcState[i].TripCounter++;
      }
    }*/
        
   //g_dtcState[i].dtcStatus = dtcTem.dtcStatus.u8Field;
    


    pStatusBit->testFailedThisOperationCycle = 0;
    pStatusBit->testFailed = 0;
#if(!DTC_STATUS_BIT4_ENABLE) 
    pStatusBit->testNotCompletedSinceLastClear = 0;
#endif    
    
#if(!DTC_STATUS_BIT5_ENABLE) 
    pStatusBit->testFailedSinceLastClear = 0;
#endif        
    
#if(DTC_STATUS_BIT6_ENABLE) 
    pStatusBit->testNotCompletedThisOperationCycle = 1;
#else
    pStatusBit->testNotCompletedThisOperationCycle = 0;
#endif
    pStatusBit->warningIndicatorRequested = 0;
    
    if(!g_dtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
      if(g_dtcState[i].DTCAgingCounter<g_dtcList[i].DTCAgingFaultLimit)
      {
          g_dtcState[i].DTCAgingCounter++;        
      }
    }
    //if(E_DTC_ITEM_NODE_MISSING_120==i)
    //{
    //	TBOX_PRINT("120-DTCAgingCounter %x \r\n",g_dtcState[E_DTC_ITEM_NODE_MISSING_120].DTCAgingCounter);
    //}

  }
  
}

static void DtcAwakeInitialize(void)
{
  uint32_t i;
  //DtcStore_t dtcTem;
  DtcStatusBit_t *pStatusBit;
//  uint32_t size = sizeof(g_dtcState);
  uint32_t itemNum = sizeof(g_dtcList)/sizeof(g_dtcList[0]);

  for(i=0;i<itemNum;i++)
  {
   
    g_dtcState[i].currentOperationCycle++;
    //g_dtcState[i].DTCAgingCounter = dtcTem.AgingCounter;
    
    //g_dtcState[i].confirmStage = (DtcConfirmStage_e)dtcTem.confirmStage;
    //g_dtcState[i].failedOperationCycle = dtcTem.faildOperationCycle;
    g_dtcState[i].faultCount = 0;
    if(g_dtcList[i].pDependce != NULL)
    {
      g_dtcState[i].faultFlag = 0;
    }
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_dtcState[i].timeCount = 0;
    g_dtcState[i].faultStateChange = 0;
    //g_dtcState[i].TripCounter = dtcTem.TripCounter;
    pStatusBit = (DtcStatusBit_t*) &g_dtcState[i].dtcStatus;
    g_dtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;
    //snapshot data
    //memcpy(&g_dtcState[i].snapshotData,&dtcTem.snapshotData,sizeof(dtcTem.snapshotData));
    //extended data //whl 20200107
    //memcpy(&g_dtcState[i].extendData,&dtcTem.extendData,sizeof(dtcTem.extendData));
    //
    /*if(g_dtcState[i].dtcStatus.bitField.pendingDTC)//pending dtc bit
    {
      if( g_dtcState[i].TripCounter<g_dtcList[i].TripCounterFaultLimit)
      {
        g_dtcState[i].TripCounter++;
      }
    }*/
        
   //g_dtcState[i].dtcStatus = dtcTem.dtcStatus.u8Field;
    


    pStatusBit->testFailedThisOperationCycle = 0;
    pStatusBit->testFailed = 0;
#if(!DTC_STATUS_BIT4_ENABLE) 
    pStatusBit->testNotCompletedSinceLastClear = 0;
#endif    
    
#if(!DTC_STATUS_BIT5_ENABLE) 
    pStatusBit->testFailedSinceLastClear = 0;
#endif        
    
#if(DTC_STATUS_BIT6_ENABLE) 
    pStatusBit->testNotCompletedThisOperationCycle = 1;
#else
    pStatusBit->testNotCompletedThisOperationCycle = 0;
#endif
    pStatusBit->warningIndicatorRequested = 0;
    
    if(!g_dtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
      if(g_dtcState[i].DTCAgingCounter<g_dtcList[i].DTCAgingFaultLimit)
      {
          g_dtcState[i].DTCAgingCounter++;        
      }
    }
    //if(E_DTC_ITEM_NODE_MISSING_120==i)
    //{
    //	TBOX_PRINT("120-DTCAgingCounter %x \r\n",g_dtcState[E_DTC_ITEM_NODE_MISSING_120].DTCAgingCounter);
    //}

  }
  
}

static void DtcKl15OnInitialize(void)
{
  uint32_t i;
  //DtcStore_t dtcTem;
  DtcStatusBit_t *pStatusBit;
//  uint32_t size = sizeof(g_dtcState);
  uint32_t itemNum = sizeof(g_dtcList)/sizeof(g_dtcList[0]);

  for(i=0;i<itemNum;i++)
  {
    g_dtcState[i].currentOperationCycle++;
    //g_dtcState[i].DTCAgingCounter = dtcTem.AgingCounter;
    
    //g_dtcState[i].confirmStage = (DtcConfirmStage_e)dtcTem.confirmStage;
    //g_dtcState[i].failedOperationCycle = dtcTem.faildOperationCycle;
    g_dtcState[i].faultCount = 0;
    if(g_dtcList[i].pDependce != NULL)
    {
      g_dtcState[i].faultFlag = 0;
    }
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_dtcState[i].timeCount = 0;
    g_dtcState[i].faultStateChange = 0;
    //g_dtcState[i].TripCounter = dtcTem.TripCounter;
    pStatusBit = (DtcStatusBit_t*) &g_dtcState[i].dtcStatus;
    g_dtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;
    //snapshot data
    //memcpy(&g_dtcState[i].snapshotData,&dtcTem.snapshotData,sizeof(dtcTem.snapshotData));
    //extended data //whl 20200107
    //memcpy(&g_dtcState[i].extendData,&dtcTem.extendData,sizeof(dtcTem.extendData));
    //
    /*if(g_dtcState[i].dtcStatus.bitField.pendingDTC)//pending dtc bit
    {
      if( g_dtcState[i].TripCounter<g_dtcList[i].TripCounterFaultLimit)
      {
        g_dtcState[i].TripCounter++;
      }
    }*/
        
   //g_dtcState[i].dtcStatus = dtcTem.dtcStatus.u8Field;
    


    pStatusBit->testFailedThisOperationCycle = 0;
    pStatusBit->testFailed = 0;
#if(!DTC_STATUS_BIT4_ENABLE) 
    pStatusBit->testNotCompletedSinceLastClear = 0;
#endif    
    
#if(!DTC_STATUS_BIT5_ENABLE) 
    pStatusBit->testFailedSinceLastClear = 0;
#endif        
    
#if(DTC_STATUS_BIT6_ENABLE) 
    pStatusBit->testNotCompletedThisOperationCycle = 1;
#else
    pStatusBit->testNotCompletedThisOperationCycle = 0;
#endif
    pStatusBit->warningIndicatorRequested = 0;
    
    if(!g_dtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
      if(g_dtcState[i].DTCAgingCounter<g_dtcList[i].DTCAgingFaultLimit)
      {
          g_dtcState[i].DTCAgingCounter++;        
      }
    }
    //if(E_DTC_ITEM_NODE_MISSING_120==i)
    //{
    //	TBOX_PRINT("120-DTCAgingCounter %x \r\n",g_dtcState[E_DTC_ITEM_NODE_MISSING_120].DTCAgingCounter);
    //}

  }
  
}

static void DtcSaveToWorkFlash(void)
{
    g_delayWriteFlag = 0x01;
    g_delayWriteCount = 0x00;
}

static void DtcCycleProcess(void)
{
  int16_t sleepFlag;
  sleepFlag = PowerManageSdkGetSleepState(g_sleepCommandHandle);
  if(E_DTC_PROCESS_STATE_INIT==g_dtcProcessState)
  {
    g_dtcProcessState = E_DTC_PROCESS_STATE_NORMAL;
     //to do initialize operation   
    //DtcAwakeInitialize();
    DtcInitialize();
  }
  else if(E_DTC_PROCESS_STATE_NORMAL==g_dtcProcessState)
  {
    if(PeripheralHalGetKl15Status()==0x00)
    {
        DtcNormalProcess();
        g_delayWriteFlag = 1;
        g_delayWriteCount = 1000;//write immediately
        g_dtcProcessState = E_DTC_PROCESS_STATE_KL15OFF;
    }
    else  if(g_dtcClearRequestFlag)
    {
      //ClearNodeMissingCheckConfig(); 
      DtcNormalProcess(); 
      g_dtcClearRequestFlag = 0;
      DtcSaveToWorkFlash();
    }
    else
    {  
      DtcNormalProcess();      
    }
  }
  else if(E_DTC_PROCESS_STATE_KL15OFF==g_dtcProcessState)
  {
    if(sleepFlag)
    {
        g_dtcProcessState = E_DTC_PROCESS_STATE_SLEEP;
        PowerManageSdkSetSleepAck(g_sleepCommandHandle);
    }
    else if(PeripheralHalGetKl15Status())
    {
      g_dtcProcessState = E_DTC_PROCESS_STATE_NORMAL;
      DtcKl15OnInitialize();
    }    
    else if(g_dtcClearRequestFlag)
    {
      //ClearNodeMissingCheckConfig(); 
      DtcNormalProcess(); 
      g_dtcClearRequestFlag = 0;
      DtcSaveToWorkFlash();    
    }
    else
    {
        DtcNormalProcess(); 
    }
    
  }
  else if(E_DTC_PROCESS_STATE_SLEEP==g_dtcProcessState)
  {
      if(sleepFlag)
      {
          if(PeripheralHalGetKl15Status()==0)
          {
              DtcKl15OnInitialize();
              g_dtcProcessState = E_DTC_PROCESS_STATE_KL15OFF;
          }
          else
          {
              DtcAwakeInitialize();
              g_dtcProcessState = E_DTC_PROCESS_STATE_NORMAL;
          }
        
      }
  }
  if(g_delayWriteFlag)
  {
      if(g_delayWriteCount>=100)
      {
          g_delayWriteFlag = 0;
          g_delayWriteCount = 0x00;
          WorkFlashWriteVehicleDTCBufferToFlash();
      }
      else
      {
          g_delayWriteCount++;
      }
  }
}
/*
static void PrintTaskInfo(void)
{
    static uint32_t cycleCount = 0;
    cycleCount++;
    if(cycleCount<100)
    {
      return;
    }
    cycleCount = 0;
    unsigned long uxHighWaterMark_DataToCPU;
    uxHighWaterMark_DataToCPU = uxTaskGetStackHighWaterMark(NULL);
    TBOX_PRINT("dtc thread remain stack space:%d.\r\n",uxHighWaterMark_DataToCPU);
}*/

static void DtcGroupInit(void)
{
    uint8_t i;
    uint8_t num;
    num = sizeof(g_dtcGroupManage.enableFlag);
    for(i=0;i<num;i++)
    {
        g_dtcGroupManage.enableFlag[i] = 1;
    }
}

void TaskDtcProcess( void *pvParameters )
{
  g_sleepCommandHandle = PowerManageSdkOpenHandle("dtc");
  DtcGroupInit();
  while(1)
  {
    vTaskDelay(DTC_PROCESS_CYCLE_TIME);
    DtcCycleProcess();
    //PrintTaskInfo();
  }
}

int16_t SetDtcFaultState(DtcItem_e item)
{
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  if(item>=size)
  {
    return -1;
  }
  g_dtcState[item].faultFlag = 1;
  return 0;
}

int16_t ClearDtcFaultState(DtcItem_e item)
{
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  if(item>=size)
  {
    return -1;
  }
  g_dtcState[item].faultFlag = 0;
  return 0;
}

static int32_t g_disableCount = 0;

static void DtcDetectEnable(void)
{
	if(g_disableCount>0)
	{
		g_disableCount--;
	}
	if(g_disableCount==0)
	{
		g_detectEnableFlag = 1;
	}
	//TBOX_PRINT("dtc enable %d\r\n",g_disableCount);
}

static void DtcDetectDisable(void)
{

	g_detectEnableFlag = 0;
	g_disableCount++;
	//TBOX_PRINT("dtc disable %d\r\n",g_disableCount);
}

static void SetDtcProcessEnableFlag(uint8_t flag)
{
    static uint8_t enableFlag = 0;
    if(flag)
    {
            if(enableFlag==0)
            {
                    enableFlag = 1;
                    DtcDetectEnable();
            }
    }
    else
    {
            if(enableFlag)
            {
                    enableFlag = 0;
                    DtcDetectDisable();
            }
    }
}
int16_t DtcProcessEnable(void)
{
    SetDtcProcessEnableFlag(1);
    return 0;
}

int16_t DtcProcessDisable(void)
{
  SetDtcProcessEnableFlag(0);
  return 0;
}

void DtcProcessEnableByGroup(DtcGroup_e groupItem)
{
    uint8_t num;
    num = sizeof(g_dtcGroupManage.enableFlag);
    if(groupItem>=num)   
    {
        return;
    }
    g_dtcGroupManage.enableFlag[groupItem] = 1;
}

void DtcProcessDisableByGroup(DtcGroup_e groupItem)
{
    uint8_t num;
    num = sizeof(g_dtcGroupManage.enableFlag);
    if(groupItem>=num)   
    {
        return;
    }
    g_dtcGroupManage.enableFlag[groupItem] = 0;
}



uint8_t GetDtcProcessSetStatus(void)
{
    return g_detectEnableFlag;
}

int16_t DtcProcessGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut,uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  validCount = 0;
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
            if(g_dtcState[i].dtcStatus&statusMaskIn)
            {
                //
                dtcData[validCount*4+0] = (g_dtcList[i].dtcCode>>16);
                dtcData[validCount*4+1] = (g_dtcList[i].dtcCode>>8);
                dtcData[validCount*4+2] = (g_dtcList[i].dtcCode);
                dtcData[validCount*4+3] = g_dtcState[i].dtcStatus;
                validCount++;              
            }          
      }

  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if(DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if(DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01<<1;
#endif
#if(DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01<<2;
#endif  
#if(DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01<<3;
#endif
#if(DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01<<4;
#endif    
#if(DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01<<5;
#endif
#if(DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01<<6;
#endif  
#if(DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01<<7;
#endif
  return 0;
}

int16_t DtcProcessDtcGetCountByMask(uint8_t statusMaskIn,uint32_t *dtcNumOut,uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  validCount = 0;
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
            if(g_dtcState[i].dtcStatus&statusMaskIn)
            {
                //
                validCount++;      
            }          
      }

  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if(DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if(DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01<<1;
#endif
#if(DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01<<2;
#endif  
#if(DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01<<3;
#endif
#if(DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01<<4;
#endif    
#if(DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01<<5;
#endif
#if(DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01<<6;
#endif  
#if(DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01<<7;
#endif
  return 0;
}

int16_t DtcProcessTestGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut,uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  validCount = 0;
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
            if(g_dtcState[i].dtcStatus&statusMaskIn)
            {
                //
                if(g_dtcList[i].testDtcCode!=0)
                {
                  dtcData[validCount*4+0] = (g_dtcList[i].testDtcCode>>16);
                  dtcData[validCount*4+1] = (g_dtcList[i].testDtcCode>>8);
                  dtcData[validCount*4+2] = (g_dtcList[i].testDtcCode);
                  dtcData[validCount*4+3] = g_dtcState[i].dtcStatus;
                  validCount++;        
                }           
            }          
      }

  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if(DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if(DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01<<1;
#endif
#if(DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01<<2;
#endif  
#if(DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01<<3;
#endif
#if(DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01<<4;
#endif    
#if(DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01<<5;
#endif
#if(DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01<<6;
#endif  
#if(DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01<<7;
#endif
  return 0;
}

int16_t DtcProcessDtcTestGetCountByMask(uint8_t statusMaskIn,uint32_t *dtcNumOut,uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  validCount = 0;
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
            if(g_dtcState[i].dtcStatus&statusMaskIn)
            {
                //
                if(g_dtcList[i].testDtcCode!=0)
                {
                  validCount++;       
                }              
            }          
      }
  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if(DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if(DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01<<1;
#endif
#if(DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01<<2;
#endif  
#if(DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01<<3;
#endif
#if(DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01<<4;
#endif    
#if(DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01<<5;
#endif
#if(DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01<<6;
#endif  
#if(DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01<<7;
#endif
  
  return 0;
}

/****************************************************

return 
  0 : success
  -2:invalid record number
  -1:invalid dtc code
***************************************************/
int16_t DtcProcessGetExtendedData(uint32_t dtcCode,uint8_t recordNum,uint8_t *extendedData,uint32_t *pExtendedDataLength,uint8_t *statusOut)
{
  uint32_t i;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  int16_t ret = -1;  
  
  for(i=0;i<size;i++)
  {
      //
      if(g_dtcList[i].dtcCode==dtcCode)
      {
        if(0x01==recordNum)//fault occurrence counter data
        {
          extendedData[0] = 0x01;//extended record number
          extendedData[1] = g_dtcState[i].extendData.FaultOccurrenceCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_dtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0x02==recordNum)// fault pending counter data
        {
          extendedData[0] = 0x02;//extended record number
          extendedData[1] = g_dtcState[i].extendData.FaultPendingCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_dtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0x03==recordNum)// aging counter data
        {
          extendedData[0] = 0x03;//extended record number
          extendedData[1] = g_dtcState[i].extendData.DtcAgingCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_dtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0x04==recordNum)// aged counter data
        {
          extendedData[0] = 0x04;//extended record number
          extendedData[1] = g_dtcState[i].extendData.DtcAgedCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_dtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0xFF==recordNum)// all extended data
        {
          //fault occurence counter
          extendedData[0] = 0x01;//extended record number
          extendedData[1] = g_dtcState[i].extendData.FaultOccurrenceCounter;
          //fault pending counter
          extendedData[2] = 0x02;//extended record number
          extendedData[3] = g_dtcState[i].extendData.DtcAgingCounter;
          //aging counter
          extendedData[4] = 0x03;//extended record number
          extendedData[5] = g_dtcState[i].extendData.FaultPendingCounter ;
          //aged counter
//          extendedData[6] = 0x04;//extended record number
//          extendedData[7] = g_dtcState[i].extendData.DtcAgedCounter;
          *pExtendedDataLength = 0x06;
          //
          *statusOut = g_dtcState[i].dtcStatus;
          ret = 0x00;
        } 
        else
        {
          ret = -2;
        }
        break;       
      }    
  }
  if(ret!=0)
  {
    return ret;
  }

  return ret;
}



/****************************************************

return 
  0 : success
  -2:invalid record number
  -1:invalid dtc code
***************************************************/
int16_t DtcProcessGetReportSnapshotRecordByDtcNumber(uint32_t dtcCode,uint8_t snapshotRecordNum,uint8_t *pSnapshotRecord,uint32_t *pRecordLength,uint8_t *statusOut)
{
  uint32_t i,j;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  int16_t ret = -1;  

  if((snapshotRecordNum!=0x01) && (snapshotRecordNum!=0xff))
  {
      return ret;
  }
  for(i=0;i<size;i++)//?��??��???DTC
  {
      //if(g_dtcList[i].FaultDetectEnable)//DTC???
      {
          if(g_dtcList[i].dtcCode==dtcCode)
          {
              j = 0;
              pSnapshotRecord[j++] = 0x05;//number of identifiers
              //????
              pSnapshotRecord[j++] = 0xD0;// did H
              pSnapshotRecord[j++] = 0x01;//did L
              pSnapshotRecord[j++] = (g_dtcState[i].snapshotData.vehicleSpeed>>8)&0xFF;//0.5625
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleSpeed&0xFF;
              //???
              pSnapshotRecord[j++] = 0xD0;// did H
              pSnapshotRecord[j++] = 0x02;//did L
              pSnapshotRecord[j++] = (g_dtcState[i].snapshotData.motorSpeed>>8)&0xFF;//0.125
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.motorSpeed&0xFF;
              //ECU??????
              pSnapshotRecord[j++] = 0xD0;// did H
              pSnapshotRecord[j++] = 0x03;//did L
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.ecuVoltage;
              //?????
              pSnapshotRecord[j++] = 0xD0;// did H
              pSnapshotRecord[j++] = 0x04;//did L
//              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleOdlmeter[0];
//              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleOdlmeter[1];
//              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleOdlmeter[2];
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleOdlmeter;
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleOdlmeter;
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.vehicleOdlmeter;
              //???
              pSnapshotRecord[j++] = 0xD0;// did H
              pSnapshotRecord[j++] = 0x05;//did L
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.globalRealTime[0];
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.globalRealTime[1];
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.globalRealTime[2];
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.globalRealTime[3];
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.globalRealTime[4];
              pSnapshotRecord[j++] = g_dtcState[i].snapshotData.globalRealTime[5];
              
              *statusOut = g_dtcState[i].dtcStatus;
              ret = 0x00;
              *pRecordLength = j;
              break;
          }
      }
  }
  return ret;
}

int16_t DtcProcessGetSupportedDtc(uint8_t *pDtcData,uint32_t *pDtcNum,uint8_t *pStutasMaskOut)
{
  uint32_t i;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  uint32_t validCount = 0; 
  
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
          pDtcData[validCount*4+0] = (g_dtcList[i].dtcCode>>16);
          pDtcData[validCount*4+1] = (g_dtcList[i].dtcCode>>8);
          pDtcData[validCount*4+2] = (g_dtcList[i].dtcCode);
          pDtcData[validCount*4+3] = g_dtcState[i].dtcStatus;
          validCount++;           
      }
  }
  
  *pDtcNum = validCount;
  
  *pStutasMaskOut = 0x00;
#if(DTC_STATUS_BIT0_ENABLE)
  *pStutasMaskOut |= 0x01;
#endif
#if(DTC_STATUS_BIT1_ENABLE)
  *pStutasMaskOut |= 0x01<<1;
#endif
#if(DTC_STATUS_BIT2_ENABLE)
  *pStutasMaskOut |= 0x01<<2;
#endif  
#if(DTC_STATUS_BIT3_ENABLE)
  *pStutasMaskOut |= 0x01<<3;
#endif
#if(DTC_STATUS_BIT4_ENABLE)
  *pStutasMaskOut |= 0x01<<4;
#endif    
#if(DTC_STATUS_BIT5_ENABLE)
  *pStutasMaskOut |= 0x01<<5;
#endif
#if(DTC_STATUS_BIT6_ENABLE)
  *pStutasMaskOut |= 0x01<<6;
#endif  
#if(DTC_STATUS_BIT7_ENABLE)
  *pStutasMaskOut |= 0x01<<7;
#endif
  return 0;
}

static int16_t GetCurrentSnapshotData(DtcSnapshotRecordGlobal_t *pSnapshotData)
{
  //GetSnapshotRecordData(pSnapshotData);
  return 0;
}


uint16_t DtcProcessClearAll(void)
{
  g_dtcClearRequestFlag = 1;
  return 0;
}


static int16_t WorkFlashWriteVehicleDTCBufferToFlash(void)
{
  int16_t ret;
  ret = FlashDtcStore((uint8_t*)g_dtcState,sizeof(g_dtcState));
  return ret;
}

static void SetDTCExtendedData(DtcState_t *pDtcState)
{
    //static uint8_t StatusBit1Flag = 0;  
    //static uint8_t StatusBit2Flag = 0; 
    
    DtcStatusBit_t *pStatusBit = NULL;    
    
    pStatusBit = (DtcStatusBit_t*)&(pDtcState->dtcStatus);
    
    if(pStatusBit->testFailedThisOperationCycle == 0)
    {
        pDtcState->extendData.Bit1CycleFlag = 1;
    }
    else
    {
        if(1 == pDtcState->extendData.Bit1CycleFlag)
        {
            pDtcState->extendData.Bit1CycleFlag = 0;       
            
            if(pDtcState->extendData.FaultOccurrenceCounter != 0xFF)
            {
                pDtcState->extendData.FaultOccurrenceCounter += 1;            
            }
            else
            {
                pDtcState->extendData.FaultOccurrenceCounter = 0xFF;          
            }      
        }    
    }
    
    if(pStatusBit->pendingDTC == 1)
    {
        pDtcState->extendData.Bit2CycleFlag = 1;
        if(pDtcState->extendData.FaultPendingCounter != 0xff)
        {
            pDtcState->extendData.FaultPendingCounter += 1;
        }
        else
        {
            pDtcState->extendData.FaultPendingCounter = 0xff;
        }
         
    }
    else
    {
        pDtcState->extendData.FaultPendingCounter = 0; 
        if(1 == pDtcState->extendData.Bit2CycleFlag)
        {
            pDtcState->extendData.Bit2CycleFlag = 0; 
            if(pDtcState->extendData.DtcAgingCounter != 0x28)
            {
                pDtcState->extendData.DtcAgingCounter += 1; 
            }
            else
            {
                pDtcState->extendData.DtcAgingCounter = 0x28; 
            } 
        }
    }
    
    if(1 == pStatusBit->testFailed)
    {
        pDtcState->extendData.DtcAgingCounter = 0;
    }
    
    if(pDtcState->extendData.DtcAgingCounter == 0x28)
    {
        pDtcState->extendData.DtcAgedCounter += 1;
    }
}



static void ClearDTCExtendedData(DtcState_t *pDtcState)
{
//    DtcStatusBit_t *pStatusBit = NULL;       
//    pStatusBit = (DtcStatusBit_t*)&(pDtcState->dtcStatus);   
    if(g_dtcClearRequestFlag || (pDtcState->DTCAgingCounter >= DTC_AGING_LIMIT))
    {
        memset(&(pDtcState->extendData), 0 ,sizeof(pDtcState->extendData));  
    }
}

#endif

static int16_t DtcGetEventFailedFlag(                             /*读取某个 Dem 事件当前是否故障 */
    Dem_EventIdType eventId,                                      
    uint8_t *pIsFailed)                                          
{
    Dem_UdsStatusByteType eventStatus = 0;                       
    if (pIsFailed == NULL_PTR)                                    
    {
        return -1;                                                
    }
    *pIsFailed = 0;                                              
    if (Dem_GetEventStatus(eventId, &eventStatus) != E_OK)       
    {
        return -2;                                                
    }
    *pIsFailed = ((eventStatus & DEM_UDS_STATUS_TF) != 0) ? 1 : 0; 
    return 0;                                                     
}

DtcQueryState_e DtcGetObjState(DtcQueryObj_e obj)                 /* 统一查询接口*/
{
    uint8_t shortGndFlag = 0;                                   
    uint8_t shortBatFlag = 0;                                    
    uint8_t openFlag = 0;
    uint8_t simNotOnlineFlag = 0;
    uint8_t simInvalidFlag = 0; 
    
    if ((uint32_t)obj >= (uint32_t)E_DTC_QUERY_MAX)               /* 检查对象是否越界 */
    {
        return E_DTC_QUERY_STATE_UNKNOWN;                         
    }

    switch (obj)                                                  
    {
        case E_DTC_QUERY_5G_MAIN_ANT:                           
        {
            if (DtcGetEventFailedFlag(DTC_EVT_5G4G_MAIN_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_5G4G_MAIN_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (shortGndFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (openFlag != 0)                                   
            {
                return E_DTC_QUERY_STATE_OPEN;                    
            }
            return E_DTC_QUERY_STATE_NORMAL;                      
        }
        case E_DTC_QUERY_5G_DIV2_ANT:                             
        {
            if (DtcGetEventFailedFlag(DTC_EVT_5G_DIV2_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_5G_DIV2_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (shortGndFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (openFlag != 0)                                   
            {
                return E_DTC_QUERY_STATE_OPEN;                    
            }
            return E_DTC_QUERY_STATE_NORMAL;                      
        }
        case E_DTC_QUERY_5G_DIV1_ANT:                             
        {
            if (DtcGetEventFailedFlag(DTC_EVT_5G_DIV1_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_5G_DIV1_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (shortGndFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (openFlag != 0)                                   
            {
                return E_DTC_QUERY_STATE_OPEN;                    
            }
            return E_DTC_QUERY_STATE_NORMAL;                      
        }
        case E_DTC_QUERY_5G_DIV3_ANT:                            
        {
            if (DtcGetEventFailedFlag(DTC_EVT_5G_DIV3_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_5G_DIV3_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (shortGndFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (openFlag != 0)                                   
            {
                return E_DTC_QUERY_STATE_OPEN;                    
            }
            return E_DTC_QUERY_STATE_NORMAL;                      
        }
        case E_DTC_QUERY_MIC_IN:                                  
        {
            if (DtcGetEventFailedFlag(DTC_EVT_MICIN_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_MICIN_SHORT_BAT, &shortBatFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_MICIN_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (shortGndFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (shortBatFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_BAT;               
            }
            if (openFlag != 0)                                   
            {
                return E_DTC_QUERY_STATE_OPEN;                    
            }
            return E_DTC_QUERY_STATE_NORMAL;                      
        }
        case E_DTC_QUERY_GPS_ANT:                                 
        {
            if (DtcGetEventFailedFlag(DTC_EVT_GPS_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_GPS_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (shortGndFlag != 0u)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (openFlag != 0u)                                   
            {
                return E_DTC_QUERY_STATE_OPEN;                    
            }
            return E_DTC_QUERY_STATE_NORMAL;                      
        }
        case E_DTC_QUERY_SIM_CARD:                                
        {
            if (DtcGetEventFailedFlag(DTC_EVT_SIM_NOT_ONLINE, &simNotOnlineFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                
            }
            if (DtcGetEventFailedFlag(DTC_EVT_SIM_INVALID, &simInvalidFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (simNotOnlineFlag != 0)                           
            {
                return E_DTC_QUERY_STATE_SIM_NOT_ONLINE;          
            }
            if (simInvalidFlag != 0)                             
            {
                return E_DTC_QUERY_STATE_SIM_INVALID;             
            }
            return E_DTC_QUERY_STATE_NORMAL;                     
        }
        case E_DTC_QUERY_SPEAKER:                                 
        {
            if (DtcGetEventFailedFlag(DTC_EVT_SPEAKER_SHORT_GND, &shortGndFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_SPEAKER_SHORT_BAT, &shortBatFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                 
            }
            if (DtcGetEventFailedFlag(DTC_EVT_SPEAKER_OPEN, &openFlag) != 0) 
            {
                return E_DTC_QUERY_STATE_UNKNOWN;                
            }
            if (shortGndFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_GND;               
            }
            if (shortBatFlag != 0)                               
            {
                return E_DTC_QUERY_STATE_SHORT_BAT;               
            }
            if (openFlag != 0)                                  
            {
                return E_DTC_QUERY_STATE_OPEN;                   
            }
            return E_DTC_QUERY_STATE_NORMAL;                     
        }
        default:                                                  
        {
            return E_DTC_QUERY_STATE_UNKNOWN;                     
        }
    }
}



void DtcGpioInit(void)     // 使能DTC检测引脚
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
    R_PORT_SetGpioOutput(Port1, 10, 1);
}

void DtcDetectProcessInit(void)
{
    DtcGpioInit();
    DtcCommonMonitorInit();
    ANT5GMAIN_DtcInit();        // 主天线初始化
    ANT5G_DIV_DtcInit();       // 一、二、三分集初始化
    GPS_DtcInit();             // GPS初始化
    MICIN_DtcInit();           // MICIN初始化
    LED_DtcInit();             // LED初始化
    BackupBat_DtcInit();       // 备用电池初始化
    EepromDetectInit();        //EEPROM初始化
    TripCntStore_DtcInit();    //行程计数器初始化
    BackupBatAging_DtcInit();  // 备用电池老化检测初始化
    // DIDs_DTC_Configuation_Init(); // 诊断DTC启用配置初始化
}

void TaskDtcDetect100ms(void)
{
    static uint8_t cnt = 0;
    static uint8_t MIC_cnt = 0;
    uint32_t antVoltage_5g = 0;

    cnt++;
    MIC_cnt++;
    if (cnt >= 2)
    {
        DtcCommonMonitorProcess_200ms();
        PeripheralHalAdGet(AD0_CHANNEL_MAIN_ANT_ADC, &antVoltage_5g);
        //TBOX_PRINT("antVoltage_5g_value: %d\n", antVoltage_5g);
        ANT5GMAIN_DetectProcess((uint16_t)antVoltage_5g); // 主天线
        ANT5G_DIV_DetectProcess_200ms();                  // 一、二、三分集检测
        GPS_DetectProcess_200ms();                        // GPS检测
        LED_DetectProcess_200ms();                        // LED检测
        BackupBat_DetectProcess_200ms();                  // 备用电池检测
        EepromMiswriteDtcDetect();                        //EEPROM
        TripCntStore_DetectProcess_200ms();                   //行程计数器
        SecocTripCntDtcMonitor_200ms();
        //SyncMsgLoss_DetectProcess_200ms();                 // 同步消息丢失检测
        SyncMsgLossAndIccDetect();
        CheckDtcStatusAndSend709();                        //709报文
        BackupBatAging_DetectProcess();                   // 备用电池老化检测
        kl30VoltageDTCProcess(g_PowerVoltage);            //蓄电池检测
        //TBOX_PRINT("g_PowerVoltage: %d\n", g_PowerVoltage);
        //GetSystemTimeMs();
        cnt = 0;
    }
    if (MIC_cnt >= 10)
    {
        MICIN_DetectProcess_2s(); // MICIN检测
        MIC_cnt = 0;
    }
}







