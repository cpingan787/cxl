#include "FreeRTOS.h"
#include "task.h"
#include <string.h>
#include "taskDtcProcess.h"

#include "canHal.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "powerManageSdk.h"
#include "stateSyncSdk.h"
#include "parameterStoreManageApp.h"
#include "vehicleSignalApp.h"
#include "timeSyncSdk.h"
#define DTC_STATUS_BIT0_ENABLE 1 // test failed
#define DTC_STATUS_BIT1_ENABLE 0 // test failed this monitoring cycle
#define DTC_STATUS_BIT2_ENABLE 0 // pending DTC
#define DTC_STATUS_BIT3_ENABLE 1 // confirmed DTC
#define DTC_STATUS_BIT4_ENABLE 0 // test not completed since last clear
#define DTC_STATUS_BIT5_ENABLE 1 // test failed since last clear
#define DTC_STATUS_BIT6_ENABLE 0 // test not completed this monitoring cycle
#define DTC_STATUS_BIT7_ENABLE 0 // warning indicator requested

#define DTC_AGING_LIMIT (40)

typedef struct
{
  uint8_t faultNum;     // indication the valid count in the array of faultItem
  uint8_t faultItem[5]; // type is enum_E_DTC_ITEM,when the element of faultItem is used, when this fault happened, discard the releated fault(eg.node missing)
} DtcDependency_t;

typedef struct
{
  uint32_t dtcCode;
  uint32_t testDtcCode;    // used for EOL test
  uint32_t checkCycleTime; // ms
  int32_t faultLimit;
  int32_t faultRecoverLimit;
  // DTCAgintCounter:confirmedDTC cleared when DTCAgintCounter reaches a maximum vaule(DTCAgingFaultLimit)
  uint32_t DTCAgingFaultLimit; //
  // trip counter:used by confirmedDTC detect when trip counter reaches a maximum value(TripCounterFaultLimit)
  // uint32_t TripCounterFaultLimit;//

  const DtcDependency_t *pDependce;
  DtcGroup_e dtcGroup; // 0:no fault recover,1:fault recover

  uint8_t did0120Byte; // 0xFF 默认全1 全使能dtc
  uint8_t did0120Bit;

} DtcConfig_t;

typedef enum
{
  E_CONFIRM_STAGE_INITIAL_MONITOR = 0,
  E_CONFIRM_STAGE_AGING_MONITOR, //
} DtcConfirmStage_e;

typedef struct
{
  uint8_t dtcStatus;
  uint8_t faultFlag;
  // uint8_t faultDetectFlag;
  uint8_t testResult;
  uint8_t faultStateChange;
  uint8_t testFailedLastOperationCycle;
  uint8_t confirmStage;
  int16_t faultCount;
  uint32_t timeCount;
  uint16_t currentOperationCycle;
  // uint32_t lastOperationCycle;
  uint16_t failedOperationCycle;
  uint16_t DTCAgingCounter;
  // uint32_t TripCounter;
  // snapshot data
  DtcSnapshotRecordGlobal_t snapshotData01;
  DtcSnapshotRecordGlobal_t snapshotData05;
  DtcSnapshotRecordGlobal_t snapshotData;
  DtcExtendedDataRecordGlobal_t extendData;
} DtcState_t;

typedef enum
{
  E_DTC_PROCESS_STATE_INIT,
  E_DTC_PROCESS_STATE_NORMAL,
  E_DTC_PROCESS_STATE_KL15OFF,
  E_DTC_PROCESS_STATE_SLEEP,
} DtcProcessState_e;

typedef struct
{
  uint8_t enableFlag[8];
} DtcGroupManage_t;

// dtc process cycle definition
#define DTC_PROCESS_CYCLE_TIME 5 // ms

// test result definition
#define DTC_TEST_RESULT_NOT_COMPLETE 0
#define DTC_TEST_RESULT_PASSED 1
#define DTC_TEST_RESULT_FAILED 2
// DetectEnable definition
#define BOOL_FALSE 0
#define BOOL_TRUE 1

const DtcDependency_t g_canDNodeLost =
    {
        .faultNum = 2,
        .faultItem = {E_DTC_ITEM_DCAN_BUSOFF, E_DTC_ITEM_KL30_VOLTAGE_LOW, 0, 0, 0},
};

const static DtcConfig_t g_dtcList[] =
{
    // dtcCode, testCode, time, limit, recLimit, age, dep, group,                                     BYTE, BIT
    {0xC07388, 0X007388, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,     0, 1}, // U007388
    {0x91001C, 0xB11001C, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    0, 3}, // B11001C
    {0x910091, 0xB110091, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    0, 4}, // B110091
    {0xB20244, 0xB320244, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    0, 7}, // B320244
    
    {0xB20415, 0xB320415, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 2}, // B320415
    {0xB20411, 0xB320411, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 3}, // B320411
    
    {0xB20513, 0xB320513, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 4}, // B320513
    {0xB20512, 0xB320512, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 5}, // B320512
    {0xB20511, 0xB320511, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 6}, // B320511
    
    {0xB20613, 0xB320613, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 7}, // B320613
    {0xB20612, 0xB320612, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 0}, // B320612
    {0xB20611, 0xB320611, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 1}, // B320611
    
    {0xB20909, 0xB320909, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 4}, // B320909
    {0xB20104, 0xB320104, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 5}, // B320104
    {0xB20B79, 0xB320B79, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 7}, // B320B79
    {0xB20B08, 0xB320B08, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    3, 0}, // B320B08
    {0xB21296, 0xB321296, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    0xFF, 0xFF}, // B321296 (调查表中未明确位置，需确认)
    
    {0xB20707, 0xB320707, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 2}, // B320707
    {0xB20807, 0xB320807, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    2, 3}, // B320807
    
    {0xB20C11, 0xB320C11, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    3, 1}, // B320C11
    {0xB20D11, 0xB320D11, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    3, 2}, // B320D11
    
    {0xB2011C, 0xB32011C, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    0, 5}, // B32011C
    {0xB3001C, 0xB33001C, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    0, 6}, // B33001C
    {0xB2031C, 0xB32031C, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 0}, // B32031C
    {0xB2031F, 0xB32031F, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    1, 1}, // B32031F
    
    {0xB20198, 0xB320198, (10 / DTC_PROCESS_CYCLE_TIME), 1, -1, 40, NULL, E_DTC_GROUP_KL15_DEDECT,    4, 0}, // B320198
};

#define WORKFLASH_DTC_NUMBER (sizeof(g_dtcList) / sizeof(g_dtcList[0]))

static uint8_t g_u8DtcSettingControl[12];

static DtcState_t g_dtcState[WORKFLASH_DTC_NUMBER];
static DtcGroupManage_t g_dtcGroupManage;

// static uint8_t g_sleepFlag = 0;
static int16_t g_sleepCommandHandle = -1;
static uint8_t g_detectEnableFlag = 1;
static uint8_t g_dtcClearRequestFlag = 0;
static DtcProcessState_e g_dtcProcessState = E_DTC_PROCESS_STATE_INIT;

static uint32_t g_delayWriteCount = 0;
static uint32_t g_delayWriteFlag = 0;
// static uint8_t g_guangqipendingDTC = 0;
typedef struct
{
  uint8_t testFailed : 1;
  uint8_t testFailedThisOperationCycle : 1;
  uint8_t pendingDTC : 1;
  uint8_t confirmedDTC : 1;
  uint8_t testNotCompletedSinceLastClear : 1;
  uint8_t testFailedSinceLastClear : 1;
  uint8_t testNotCompletedThisOperationCycle : 1;
  uint8_t warningIndicatorRequested : 1;
} DtcStatusBit_t;

static int16_t GetCurrentSnapshotData(DtcSnapshotRecordGlobal_t *pSnapshotData);
static int16_t WorkFlashWriteVehicleDTCBufferToFlash(void);
static void SetDTCExtendedData(DtcState_t *pDtcState);
static void ClearDTCExtendedData(DtcState_t *pDtcState);
static void DtcSaveToWorkFlash(void);

void DtcReloadSettingControl(void)
{
    uint32_t len = 0;
    // 从 WorkFlash 读取，如果失败则默认全 1 (全 Enable)
    if (WorkFlashVehicleInforRead(E_PARAMETER_INFO_DTC_SETTING_CONTROL, g_u8DtcSettingControl, &len) != 0 || len == 0)
    {
        memset(g_u8DtcSettingControl, 0xFF, sizeof(g_u8DtcSettingControl));
    }
}

int16_t TaskAppDtcProcessInit(void)
{
  return 0;
}

static int16_t CheckDtcDependceMsgMissing(const DtcDependency_t *pDependency)
{
  int16_t ret;
  int16_t i;
  ret = 1;

  for (i = 0; i < pDependency->faultNum; i++)
  {
    if (g_dtcState[pDependency->faultItem[i]].faultFlag)
    {
      ret = 0;
      return ret;
    }
  }
  return ret;
}

static void DtcStatusBitTestFailedProcess(DtcState_t *pDtcState)
{
  // uint8_t clearDiagnosticInformationRequest;
  // uint8_t testResultFailed;
  uint8_t McuResetFlag;
  DtcStatusBit_t *pStatusBit;

  // clearDiagnosticInformationRequest = 0;// for debug
  McuResetFlag = 0; // for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  if (pStatusBit->testFailed == 0)
  {
    if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) && (!g_dtcClearRequestFlag))
    {
      pStatusBit->testFailed = 1;
      pDtcState->faultStateChange = 1;
    }
  }
  else // pStatusBit->testFailed = 1
  {
    if ((pDtcState->testResult == DTC_TEST_RESULT_PASSED) || (g_dtcClearRequestFlag) || (McuResetFlag))
    {
      pStatusBit->testFailed = 0;
    }
  }
}
#if (DTC_STATUS_BIT1_ENABLE)
static void DtcStatusBitTestFailedThisOperationCycleProcess(DtcState_t *pDtcState)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  // clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

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
  if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) && (!g_dtcClearRequestFlag))
  {
    pStatusBit->testFailedThisOperationCycle = 1;
  }
  else if (g_dtcClearRequestFlag)
  {
    pStatusBit->testFailedThisOperationCycle = 0;
  }
}
#endif

#if (DTC_STATUS_BIT2_ENABLE)
static void DtcStatusBitPendingDtcProcess(DtcState_t *pDtcState, const DtcConfig_t *dtcConfig)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  /*if(initializatinoFlag_PDTC==0)
  {
    initializatinoFlag_PDTC = 1;
    pendingDTC = 0;
    failedOperationCycle = currentOperationCycle;
  }*/

  // clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;
  if (g_dtcClearRequestFlag)
  {
    pStatusBit->pendingDTC = 0;
    // pDtcState->TripCounter = 0;//xwm
  }
  else if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) && (!g_dtcClearRequestFlag))
  {
    pStatusBit->pendingDTC = 1;
    if (pDtcState->failedOperationCycle != pDtcState->currentOperationCycle)
    {
      pDtcState->failedOperationCycle = pDtcState->currentOperationCycle;
      /*if((pDtcState->TripCounter)<(dtcConfig->TripCounterFaultLimit))
      {
        pDtcState->TripCounter++;
      }    */
    }
  }
  else if ((pDtcState->testResult == DTC_TEST_RESULT_PASSED) && (!pStatusBit->testFailedThisOperationCycle) && (!pDtcState->testFailedLastOperationCycle))
  {
    pStatusBit->pendingDTC = 0;
    // trip counter = 0 xwm
    // pDtcState->TripCounter = 0;
  }
}
#else
static void DtcStatusBitPendingDtcProcess(DtcState_t *pDtcState, const DtcConfig_t *dtcConfig)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  /*if(initializatinoFlag_PDTC==0)
  {
    initializatinoFlag_PDTC = 1;
    pendingDTC = 0;
    failedOperationCycle = currentOperationCycle;
  }*/

  // clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  pStatusBit->pendingDTC = 0;
  if (g_dtcClearRequestFlag)
  {
    // g_guangqipendingDTC = 0;
  }
  else if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) && (!g_dtcClearRequestFlag))
  {
    // g_guangqipendingDTC = 1;
    if (pDtcState->failedOperationCycle != pDtcState->currentOperationCycle)
    {
      pDtcState->failedOperationCycle = pDtcState->currentOperationCycle;
    }
  }
  else if ((pDtcState->testResult == DTC_TEST_RESULT_PASSED) && (!pStatusBit->testFailedThisOperationCycle) && (!pDtcState->testFailedLastOperationCycle))
  {
    // g_guangqipendingDTC = 0;
  }
}
#endif

#if (DTC_STATUS_BIT3_ENABLE)
static void DtcStatusBitConfirmedDtcProcess(DtcState_t *pDtcState, const DtcConfig_t *dtcConfig)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;
  uint8_t DTCConfirmationCriteriaSatisfied;
  uint8_t agingCtriteriaSatisfied;
  /*if(initializatinoFlag_CDTC==0)
  {
    initializatinoFlag_CDTC = 1;
    confirmedDTC = 0;
    confirmState = INITIAL_MONITOR;
  }*/

  // clearDiagnosticInformationRequested = 0;// for debug

  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  /*if((pDtcState->TripCounter)>=(dtcConfig->TripCounterFaultLimit))
  {
    DTCConfirmationCriteriaSatisfied = 1;
  }
  else
  {
    DTCConfirmationCriteriaSatisfied = 0;
  }*/
  if (pDtcState->testResult == DTC_TEST_RESULT_FAILED)
  {
    DTCConfirmationCriteriaSatisfied = 1;
  }
  else
  {
    DTCConfirmationCriteriaSatisfied = 0;
  }

  if ((pDtcState->DTCAgingCounter) >= (dtcConfig->DTCAgingFaultLimit))
  {
    agingCtriteriaSatisfied = 1;
  }
  else
  {
    agingCtriteriaSatisfied = 0;
  }

  if ((pDtcState->confirmStage) == E_CONFIRM_STAGE_INITIAL_MONITOR)
  {
    if ((DTCConfirmationCriteriaSatisfied) && (g_dtcClearRequestFlag == 0))
    {
      pStatusBit->confirmedDTC = 1;
      // Reset aging status
      pDtcState->DTCAgingCounter = 0;
      pDtcState->confirmStage = E_CONFIRM_STAGE_AGING_MONITOR;
    }
    else
    {
      pStatusBit->confirmedDTC = 0;
    }
  }
  else if ((pDtcState->confirmStage) == E_CONFIRM_STAGE_AGING_MONITOR)
  {
    if ((g_dtcClearRequestFlag) || (agingCtriteriaSatisfied))
    {
      pStatusBit->confirmedDTC = 0;
      pDtcState->confirmStage = E_CONFIRM_STAGE_INITIAL_MONITOR;
    }
    else if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) && (!g_dtcClearRequestFlag))
    {
      // reset aging status
      pDtcState->DTCAgingCounter = 0;
      // pDtcState->confirmStage = CONFIRM_STAGE_INITIAL_MONITOR;
    }
    else
    {
      // update aging status as appropriate
      // do nothing
    }
  }
  else
  {
    pDtcState->confirmStage = E_CONFIRM_STAGE_INITIAL_MONITOR;
    pDtcState->DTCAgingCounter = 0;
  }
}
#endif

#if (DTC_STATUS_BIT4_ENABLE)
static void DtcStatusBitTestNotCompletedSinceLastClearProcess(DtcState_t *pDtcState)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  /*if(initializationFlag_TNCSLC==0)
  {
    initializationFlag_TNCSLC = 1;
    pStatusBit->testNotCompletedSinceLastClear = 1;
  }*/

  // clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  if (g_dtcClearRequestFlag)
  {
    pStatusBit->testNotCompletedSinceLastClear = 1;
  }
  else if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) || (pDtcState->testResult == DTC_TEST_RESULT_PASSED))
  {
    pStatusBit->testNotCompletedSinceLastClear = 0;
  }
}
#endif

#if (DTC_STATUS_BIT5_ENABLE)
static void DtcStatusBitTestFailedSinceLastClearProcess(DtcState_t *pDtcState)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  /*if(initializatinoFlag_TFSLC==0)
  {
    initializatinoFlag_TFSLC = 1;
    testFailedSinceLastClear = 0;
  }*/

  // clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  if (g_dtcClearRequestFlag)
  {
    pStatusBit->testFailedSinceLastClear = 0;
  }
  else if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) && (!g_dtcClearRequestFlag))
  {
    pStatusBit->testFailedSinceLastClear = 1;
  }
}
#endif

#if (DTC_STATUS_BIT6_ENABLE)
static void DtcStatusBitTestNotCompletedThisOperationCycleProcess(DtcState_t *pDtcState)
{
  // uint8_t clearDiagnosticInformationRequested;
  DtcStatusBit_t *pStatusBit;

  /*if(initializatinoFlag_TNCTOC==0)
  {
    initializatinoFlag_TNCTOC = 1;
    pStatusBit->testNotCompletedThisOperationCycle = 1;
    lastOperationCycle = currentOperationCycle;
  }*/

  // clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  if (g_dtcClearRequestFlag)
  {
    pStatusBit->testNotCompletedThisOperationCycle = 1;
  }
  /*else if(pDtcState->currentOperationCycle!=pDtcState->lastOperationCycle)
  {
    pDtcState->lastOperationCycle = pDtcState->currentOperationCycle;
    pStatusBit->testNotCompletedThisOperationCycle = 1;
  }*/
  else if ((pDtcState->testResult == DTC_TEST_RESULT_FAILED) || (pDtcState->testResult == DTC_TEST_RESULT_PASSED))
  {
    pStatusBit->testNotCompletedThisOperationCycle = 0;
  }
}
#endif

#if (DTC_STATUS_BIT7_ENABLE)
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

  warningIndicatorNotRequested = 1; // for debug
  warningIndicatorEnable = 1;       // for debug
  warningIndicatorExists = 1;

  pStatusBit = (DtcStatusBit_t *)&pDtcState->dtcStatus;

  if (((g_dtcClearRequestFlag) || (!pDtcState->testResultFailed) || (!warningIndicatorEnable)) && (warningIndicatorNotRequested))
  {
    pStatusBit->warningIndicatorRequested = 0;
  }
  else if ((pDtcState->testResultFailed) && (warningIndicatorExists) && ((pStatusBit->confirmedDTC) || (warningIndicatorEnable)))
  {
    pStatusBit->warningIndicatorRequested = 1;
  }
}
#endif

// static void SnapshotSaveLogicProcess(uint8_t *pDtcStatus, uint8_t *pFaultStateChange, DtcSnapshotRecordGlobal_t *pSnapshotData01, DtcSnapshotRecordGlobal_t *pSnapshotData05)
// {
//   DtcStatusBit_t *pStatusBit = NULL;
//   pStatusBit = (DtcStatusBit_t *)pDtcStatus;

//   if (((pStatusBit->testFailed) == 1))
//   {

//     if (pStatusBit->confirmedDTC != 1)
//     {
//       GetCurrentSnapshotData(pSnapshotData01);
//       DtcSaveToWorkFlash();
//     }
//     if (*pFaultStateChange)
//     {
//       *pFaultStateChange = 0;
//       GetCurrentSnapshotData(pSnapshotData05);
//       DtcSaveToWorkFlash();
//     }
//   }
// }

static void SnapshotSaveLogicProcess(uint8_t *pDtcStatus, uint8_t *pFaultStateChange, DtcSnapshotRecordGlobal_t *pSnapshotData01, DtcSnapshotRecordGlobal_t *pSnapshotData05)
{
  DtcStatusBit_t *pStatusBit = NULL;
  pStatusBit = (DtcStatusBit_t *)pDtcStatus;

  // 1. 检查 *pFaultStateChange，确保只在故障刚发生（0->1）时才捕获快照
  if (*pFaultStateChange)
  {
    *pFaultStateChange = 0; // 立即清除触发标志

    // 2. 检查 Bit 5 (testFailedSinceLastClear)
    //    DtcStatusBitTestFailedSinceLastClearProcess() 在此函数之后运行，
    //    所以如果 Bit 5 仍然为 0，说明这是自上次清除以来的“第一次”故障
    if (pStatusBit->testFailedSinceLastClear == 0)
    {
      // 捕获“第一次”快照 (冻结帧)
      GetCurrentSnapshotData(pSnapshotData01);
    }

    // 3. 无论是不是第一次，都必须更新“最新一次”快照
    GetCurrentSnapshotData(pSnapshotData05);

    // 4. 统一保存到 Flash
    DtcSaveToWorkFlash();
  }

  // 删除了原先在 if (pStatusBit->confirmedDTC != 1) 中的逻辑，
  // 防止 pSnapshotData01 被反复覆盖
}

static void DtcNormalProcess(void)
{
    if (GetDtcProcessSetStatus() == 0) 
    {
        return;
    }
  uint32_t i;
  uint32_t size;
  uint8_t dtcEnabled = 1;
  size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);

  for (i = 0; i < size; i++)
  {
    dtcEnabled = 1;
    if (g_dtcList[i].did0120Byte < 12)
    {
        // 检查对应位是否为 1 为 0 表示屏蔽
        if (!((g_u8DtcSettingControl[g_dtcList[i].did0120Byte] >> g_dtcList[i].did0120Bit) & 0x01))
        {
            dtcEnabled = 0;
        }
    }

    if (g_dtcGroupManage.enableFlag[g_dtcList[i].dtcGroup] != 0 && dtcEnabled == 1)
    {
      if (g_dtcList[i].pDependce == NULL)
      {
        if (g_dtcState[i].faultFlag)
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
        if (CheckDtcDependceMsgMissing(g_dtcList[i].pDependce) == 0)
        {
          g_dtcState[i].testResult = DTC_TEST_RESULT_PASSED;
        }
        else
        {
          if (g_dtcState[i].faultFlag)
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

    // dtc bit status  process
#if (DTC_STATUS_BIT0_ENABLE)
    DtcStatusBitTestFailedProcess(&g_dtcState[i]); // status bit0
    SnapshotSaveLogicProcess(&g_dtcState[i].dtcStatus, &g_dtcState[i].faultStateChange, &g_dtcState[i].snapshotData01, &g_dtcState[i].snapshotData05);
    // debug
    /*if(i==E_DTC_ITEM_NODE_MISSING_165)
    {
      if(g_dtcState[i].dtcStatus&0x01)
      {
        TBOX_PRINT("g_dtcState[i].dtcStatus %2x,%d \r\n",g_dtcState[i].dtcStatus,RTOS_HalGetTickCount());
      }
    }*/
#endif
#if (DTC_STATUS_BIT1_ENABLE)
    DtcStatusBitTestFailedThisOperationCycleProcess(&g_dtcState[i]); // status bit1
#endif
#if (DTC_STATUS_BIT2_ENABLE)
    DtcStatusBitPendingDtcProcess(&g_dtcState[i], &g_dtcList[i]); // status bit2
#else
    DtcStatusBitPendingDtcProcess(&g_dtcState[i], &g_dtcList[i]); // status bit2
#endif

#if (DTC_STATUS_BIT3_ENABLE)
    DtcStatusBitConfirmedDtcProcess(&g_dtcState[i], &g_dtcList[i]); // status bit3
#endif
#if (DTC_STATUS_BIT4_ENABLE)
    DtcStatusBitTestNotCompletedSinceLastClearProcess(&g_dtcState[i]); // status bit4
#endif
#if (DTC_STATUS_BIT5_ENABLE)
    DtcStatusBitTestFailedSinceLastClearProcess(&g_dtcState[i]); // status bit5
#endif
#if (DTC_STATUS_BIT6_ENABLE)
    DtcStatusBitTestNotCompletedThisOperationCycleProcess(&g_dtcState[i]); // status bit6
#endif
#if (DTC_STATUS_BIT7_ENABLE)
    DtcStatusBitWarningIndicatorReuestedProcess(&g_dtcState[i]); // status bit7
#endif
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    SetDTCExtendedData(&g_dtcState[i]);   // whl 20200109
    ClearDTCExtendedData(&g_dtcState[i]); // whl 20200109
  }
}

static void DtcInitialize(void)
{
  uint32_t i;
  DtcStatusBit_t *pStatusBit;
  uint32_t itemNum = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  uint8_t needSave = 0; // 标记是否需要写Flash

  DtcReloadSettingControl();
  FlashDtcRead((uint8_t *)g_dtcState, sizeof(g_dtcState));
  
  if (g_dtcState[0].extendData.FaultOccurrenceCounter == 0xFF && 
      g_dtcState[0].extendData.DtcAgedCounter == 0xFF)
  {
      memset(g_dtcState, 0, sizeof(g_dtcState));
      needSave = 1;
  }

  for (i = 0; i < itemNum; i++)
  {
    // 1. 驾驶循环计数 +1
    g_dtcState[i].currentOperationCycle++;

    pStatusBit = (DtcStatusBit_t *)&g_dtcState[i].dtcStatus;
    
    // 2. 记录上个循环的结果
    g_dtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;

    // 3. === 真正的老化逻辑 (Aging Logic) ===
    if (pStatusBit->confirmedDTC == 1)
    {
        // 如果上一个循环测试通过（无故障）
        if (g_dtcState[i].testFailedLastOperationCycle == 0)
        {
            // 【修复】统一使用 extendData.DtcAgingCounter
            if (g_dtcState[i].extendData.DtcAgingCounter < 40)
            {
                g_dtcState[i].extendData.DtcAgingCounter++;
                needSave = 1;
            }

            // 检查是否达到 40 次
            if (g_dtcState[i].extendData.DtcAgingCounter >= 40)
            {
                // 1. 清除 Confirmed 位
                pStatusBit->confirmedDTC = 0;
                // 2. 老化计数器清零
                g_dtcState[i].extendData.DtcAgingCounter = 0;
                // 3. 已老去计数器 +1
                if (g_dtcState[i].extendData.DtcAgedCounter < 0xFF) {
                    g_dtcState[i].extendData.DtcAgedCounter++;
                }
                needSave = 1;
            }
        }
        else
        {
            // 上个循环坏了，老化清零
            if(g_dtcState[i].extendData.DtcAgingCounter != 0) {
                g_dtcState[i].extendData.DtcAgingCounter = 0;
                needSave = 1;
            }
        }
    }
    else
    {
        // 非Confirmed状态，计数器保持0
        if(g_dtcState[i].extendData.DtcAgingCounter != 0) {
            g_dtcState[i].extendData.DtcAgingCounter = 0;
            needSave = 1;
        }
    }

    // 4. === 【关键】新循环开始，清除锁存标志 ===
    // 允许新的点火周期再次计数
    g_dtcState[i].extendData.Bit1CycleFlag = 0;

    // 5. 清除状态位
    g_dtcState[i].faultCount = 0;
    g_dtcState[i].faultFlag = 0;
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_dtcState[i].timeCount = 0;
    g_dtcState[i].faultStateChange = 0;

    pStatusBit->testFailedThisOperationCycle = 0;
    pStatusBit->testFailed = 0;
    
    if (!g_dtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
    }
    
    // ... (保留原有的宏定义清除逻辑) ...
    #if (!DTC_STATUS_BIT4_ENABLE)
    pStatusBit->testNotCompletedSinceLastClear = 0;
    #endif
    #if (!DTC_STATUS_BIT5_ENABLE)
    pStatusBit->testFailedSinceLastClear = 0;
    #endif
    #if (DTC_STATUS_BIT6_ENABLE)
    pStatusBit->testNotCompletedThisOperationCycle = 1;
    #else
    pStatusBit->testNotCompletedThisOperationCycle = 0;
    #endif
    pStatusBit->warningIndicatorRequested = 0;
  }

  if(needSave)
  {
      DtcSaveToWorkFlash();
  }
}

static void DtcAwakeInitialize(void)
{
  uint32_t i;
  DtcStatusBit_t *pStatusBit;
  uint32_t itemNum = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  uint8_t needSave = 0;

  for (i = 0; i < itemNum; i++)
  {
    g_dtcState[i].currentOperationCycle++;
    
    pStatusBit = (DtcStatusBit_t *)&g_dtcState[i].dtcStatus;
    g_dtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;

    // === 老化逻辑 (同DtcInitialize) ===
    if (pStatusBit->confirmedDTC == 1)
    {
        if (g_dtcState[i].testFailedLastOperationCycle == 0)
        {
            if (g_dtcState[i].extendData.DtcAgingCounter < 40)
            {
                g_dtcState[i].extendData.DtcAgingCounter++;
                needSave = 1;
            }
            if (g_dtcState[i].extendData.DtcAgingCounter >= 40)
            {
                pStatusBit->confirmedDTC = 0;
                g_dtcState[i].extendData.DtcAgingCounter = 0;
                if (g_dtcState[i].extendData.DtcAgedCounter < 0xFF) {
                    g_dtcState[i].extendData.DtcAgedCounter++;
                }
                needSave = 1;
            }
        }
        else
        {
            if(g_dtcState[i].extendData.DtcAgingCounter != 0) {
                g_dtcState[i].extendData.DtcAgingCounter = 0;
                needSave = 1;
            }
        }
    }
    else
    {
        if(g_dtcState[i].extendData.DtcAgingCounter != 0) {
            g_dtcState[i].extendData.DtcAgingCounter = 0;
            needSave = 1;
        }
    }

    // === 清除本周期标志 ===
    g_dtcState[i].extendData.Bit1CycleFlag = 0;

    // === 常规清除 ===
    g_dtcState[i].faultCount = 0;
    if (g_dtcList[i].pDependce != NULL)
    {
      g_dtcState[i].faultFlag = 0;
    }
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_dtcState[i].timeCount = 0;
    g_dtcState[i].faultStateChange = 0;

    pStatusBit->testFailedThisOperationCycle = 0;
    pStatusBit->testFailed = 0;
    if (!g_dtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
    }

    #if (!DTC_STATUS_BIT4_ENABLE)
    pStatusBit->testNotCompletedSinceLastClear = 0;
    #endif
    #if (!DTC_STATUS_BIT5_ENABLE)
    pStatusBit->testFailedSinceLastClear = 0;
    #endif
    #if (DTC_STATUS_BIT6_ENABLE)
    pStatusBit->testNotCompletedThisOperationCycle = 1;
    #else
    pStatusBit->testNotCompletedThisOperationCycle = 0;
    #endif
    pStatusBit->warningIndicatorRequested = 0;
  }

  if(needSave)
  {
      DtcSaveToWorkFlash();
  }
}

static void DtcKl15OnInitialize(void)
{
  uint32_t i;
  DtcStatusBit_t *pStatusBit;
  uint32_t itemNum = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  uint8_t needSave = 0;

  for (i = 0; i < itemNum; i++)
  {
    g_dtcState[i].currentOperationCycle++;
    
    pStatusBit = (DtcStatusBit_t *)&g_dtcState[i].dtcStatus;
    g_dtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;

    // === 老化逻辑 ===
    if (pStatusBit->confirmedDTC == 1)
    {
        if (g_dtcState[i].testFailedLastOperationCycle == 0)
        {
            if (g_dtcState[i].extendData.DtcAgingCounter < 40)
            {
                g_dtcState[i].extendData.DtcAgingCounter++;
                needSave = 1;
            }
            if (g_dtcState[i].extendData.DtcAgingCounter >= 40)
            {
                pStatusBit->confirmedDTC = 0;
                g_dtcState[i].extendData.DtcAgingCounter = 0;
                if (g_dtcState[i].extendData.DtcAgedCounter < 0xFF) {
                    g_dtcState[i].extendData.DtcAgedCounter++;
                }
                needSave = 1;
            }
        }
        else
        {
            if(g_dtcState[i].extendData.DtcAgingCounter != 0) {
                g_dtcState[i].extendData.DtcAgingCounter = 0;
                needSave = 1;
            }
        }
    }
    else
    {
        if(g_dtcState[i].extendData.DtcAgingCounter != 0) {
            g_dtcState[i].extendData.DtcAgingCounter = 0;
            needSave = 1;
        }
    }

    // === 清除本周期标志 ===
    g_dtcState[i].extendData.Bit1CycleFlag = 0;

    // === 常规清除 ===
    g_dtcState[i].faultCount = 0;
    if (g_dtcList[i].pDependce != NULL)
    {
      g_dtcState[i].faultFlag = 0;
    }
    g_dtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_dtcState[i].timeCount = 0;
    g_dtcState[i].faultStateChange = 0;

    pStatusBit->testFailedThisOperationCycle = 0;
    pStatusBit->testFailed = 0;
    if (!g_dtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
    }

    #if (!DTC_STATUS_BIT4_ENABLE)
    pStatusBit->testNotCompletedSinceLastClear = 0;
    #endif
    #if (!DTC_STATUS_BIT5_ENABLE)
    pStatusBit->testFailedSinceLastClear = 0;
    #endif
    #if (DTC_STATUS_BIT6_ENABLE)
    pStatusBit->testNotCompletedThisOperationCycle = 1;
    #else
    pStatusBit->testNotCompletedThisOperationCycle = 0;
    #endif
    pStatusBit->warningIndicatorRequested = 0;
  }

  if(needSave)
  {
      DtcSaveToWorkFlash();
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
  if (E_DTC_PROCESS_STATE_INIT == g_dtcProcessState)
  {
    g_dtcProcessState = E_DTC_PROCESS_STATE_NORMAL;
    // to do initialize operation
    // DtcAwakeInitialize();
    DtcInitialize();
  }
  else if (E_DTC_PROCESS_STATE_NORMAL == g_dtcProcessState)
  {
    if (PeripheralHalGetKl15Status() == 0x00)
    {
      DtcNormalProcess();
      g_delayWriteFlag = 1;
      g_delayWriteCount = 1000; // write immediately
      g_dtcProcessState = E_DTC_PROCESS_STATE_KL15OFF;
    }
    else if (g_dtcClearRequestFlag)
    {
      // ClearNodeMissingCheckConfig();
      DtcNormalProcess();
      g_dtcClearRequestFlag = 0;
      DtcSaveToWorkFlash();
    }
    else
    {
      DtcNormalProcess();
    }
  }
  else if (E_DTC_PROCESS_STATE_KL15OFF == g_dtcProcessState)
  {
    if (sleepFlag == 0)
    {
      g_dtcProcessState = E_DTC_PROCESS_STATE_SLEEP;
      PowerManageSdkSetSleepAck(g_sleepCommandHandle);
      
    }
    else if (PeripheralHalGetKl15Status())
    {
      g_dtcProcessState = E_DTC_PROCESS_STATE_NORMAL;
      DtcKl15OnInitialize();
    }
    else if (g_dtcClearRequestFlag)
    {
      // ClearNodeMissingCheckConfig();
      DtcNormalProcess();
      g_dtcClearRequestFlag = 0;
      DtcSaveToWorkFlash();
    }
    else
    {
      DtcNormalProcess();
    }
  }
  else if (E_DTC_PROCESS_STATE_SLEEP == g_dtcProcessState)
  {
    if (sleepFlag)
    {
      if (PeripheralHalGetKl15Status() == 0)
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
  if (g_delayWriteFlag)
  {
    if (g_delayWriteCount >= 100)
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
  for (i = 0; i < num; i++)
  {
    g_dtcGroupManage.enableFlag[i] = 1;
  }
}
// // B320244_cxl
// static void DtcMemoryCheckProcess(void)
// {
//   static uint32_t checkCounter = 0;
//   const uint32_t checkInterval = 9000 / DTC_PROCESS_CYCLE_TIME; // 9s

//   if (checkCounter++ < checkInterval)
//   {
//     return;
//   }
//   checkCounter = 0;

//   uint8_t isFaulty = 0; // 故障标志，0=正常, 1=故障

//   EmmcStatePayload_t emmcState;
//   if (StateSyncGetEmmcState(&emmcState) == 0)
//   {
//     if (emmcState.state == 0) // 0=Error
//     {
//       isFaulty = 1;
//     }
//   }
//   else
//   {

//   }

//   const uint8_t testPattern[] = {0xAA, 0x55, 0xDE, 0xAD, 0xBE, 0xEF, 0xCA, 0xFE};
//   uint8_t readBuffer[sizeof(testPattern)];

//   if (FlashHalDataBlockWrite(WORKFLASH_ADDRESS_RESERVED4, 0, testPattern, sizeof(testPattern)) == 0)
//   {
//     FlashHalDataBlockRead(WORKFLASH_ADDRESS_RESERVED4, 0, readBuffer, sizeof(readBuffer));

//     if (memcmp(testPattern, readBuffer, sizeof(testPattern)) != 0)
//     {
//       isFaulty = 1;
//     }
//   }
//   else
//   {
//     isFaulty = 1;
//   }

//   if (isFaulty)
//   {
//     SetDtcFaultState(E_DTC_ITEM_MEMORY_FAILURE);
//   }
//   else
//   {
//     ClearDtcFaultState(E_DTC_ITEM_MEMORY_FAILURE);
//   }
// }

void TaskDtcProcess(void *pvParameters)
{
  g_sleepCommandHandle = PowerManageSdkOpenHandle("dtc");
  DtcGroupInit();
  while (1)
  {
    vTaskDelay(DTC_PROCESS_CYCLE_TIME);
    DtcCycleProcess();
    // DtcMemoryCheckProcess(); // B320244_cxl
    //  PrintTaskInfo();
  }
}

int16_t SetDtcFaultState(DtcItem_e item)
{
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  if (item >= size)
  {
    return -1;
  }
  g_dtcState[item].faultFlag = 1;
  return 0;
}

int16_t ClearDtcFaultState(DtcItem_e item)
{
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  if (item >= size)
  {
    return -1;
  }
  g_dtcState[item].faultFlag = 0;
  return 0;
}

static int32_t g_disableCount = 0;

static void DtcDetectEnable(void)
{
  if (g_disableCount > 0)
  {
    g_disableCount--;
  }
  if (g_disableCount == 0)
  {
    g_detectEnableFlag = 1;
  }
  // TBOX_PRINT("dtc enable %d\r\n",g_disableCount);
}

static void DtcDetectDisable(void)
{

  g_detectEnableFlag = 0;
  g_disableCount++;
  // TBOX_PRINT("dtc disable %d\r\n",g_disableCount);
}

static void SetDtcProcessEnableFlag(uint8_t flag)
{
  static uint8_t enableFlag = 0;
  if (flag)
  {
    if (enableFlag == 0)
    {
      enableFlag = 1;
      DtcDetectEnable();
    }
  }
  else
  {
    if (enableFlag)
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
  if (groupItem >= num)
  {
    return;
  }
  g_dtcGroupManage.enableFlag[groupItem] = 1;
}

void DtcProcessDisableByGroup(DtcGroup_e groupItem)
{
  uint8_t num;
  num = sizeof(g_dtcGroupManage.enableFlag);
  if (groupItem >= num)
  {
    return;
  }
  g_dtcGroupManage.enableFlag[groupItem] = 0;
}

uint8_t GetDtcProcessSetStatus(void)
{
  return g_detectEnableFlag;
}

int16_t DtcProcessGetListByMask(uint8_t statusMaskIn, uint8_t *dtcData, uint32_t *dtcNumOut, uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  validCount = 0;
  for (i = 0; i < size; i++)
  {
    if (g_dtcList[i].dtcGroup < E_DTC_GROUP_UNUSED)
    {
      if (g_dtcState[i].dtcStatus & statusMaskIn)
      {
        //
        dtcData[validCount * 4 + 0] = (g_dtcList[i].dtcCode >> 16);
        dtcData[validCount * 4 + 1] = (g_dtcList[i].dtcCode >> 8);
        dtcData[validCount * 4 + 2] = (g_dtcList[i].dtcCode);
        dtcData[validCount * 4 + 3] = g_dtcState[i].dtcStatus;
        validCount++;
      }
    }
  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if (DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if (DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01 << 1;
#endif
#if (DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01 << 2;
#endif
#if (DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01 << 3;
#endif
#if (DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01 << 4;
#endif
#if (DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01 << 5;
#endif
#if (DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01 << 6;
#endif
#if (DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01 << 7;
#endif
  return 0;
}

int16_t DtcProcessDtcGetCountByMask(uint8_t statusMaskIn, uint32_t *dtcNumOut, uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  validCount = 0;
  for (i = 0; i < size; i++)
  {
    if (g_dtcList[i].dtcGroup < E_DTC_GROUP_UNUSED)
    {
      if (g_dtcState[i].dtcStatus & statusMaskIn)
      {
        //
        validCount++;
      }
    }
  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if (DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if (DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01 << 1;
#endif
#if (DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01 << 2;
#endif
#if (DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01 << 3;
#endif
#if (DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01 << 4;
#endif
#if (DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01 << 5;
#endif
#if (DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01 << 6;
#endif
#if (DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01 << 7;
#endif
  return 0;
}

int16_t DtcProcessTestGetListByMask(uint8_t statusMaskIn, uint8_t *dtcData, uint32_t *dtcNumOut, uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  validCount = 0;
  for (i = 0; i < size; i++)
  {
    if (g_dtcList[i].dtcGroup < E_DTC_GROUP_UNUSED)
    {
      if (g_dtcState[i].dtcStatus & statusMaskIn)
      {
        //
        if (g_dtcList[i].testDtcCode != 0)
        {
          dtcData[validCount * 4 + 0] = (g_dtcList[i].testDtcCode >> 16);
          dtcData[validCount * 4 + 1] = (g_dtcList[i].testDtcCode >> 8);
          dtcData[validCount * 4 + 2] = (g_dtcList[i].testDtcCode);
          dtcData[validCount * 4 + 3] = g_dtcState[i].dtcStatus;
          validCount++;
        }
      }
    }
  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if (DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if (DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01 << 1;
#endif
#if (DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01 << 2;
#endif
#if (DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01 << 3;
#endif
#if (DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01 << 4;
#endif
#if (DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01 << 5;
#endif
#if (DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01 << 6;
#endif
#if (DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01 << 7;
#endif
  return 0;
}

int16_t DtcProcessDtcTestGetCountByMask(uint8_t statusMaskIn, uint32_t *dtcNumOut, uint8_t *statusMaskOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  validCount = 0;
  for (i = 0; i < size; i++)
  {
    if (g_dtcList[i].dtcGroup < E_DTC_GROUP_UNUSED)
    {
      if (g_dtcState[i].dtcStatus & statusMaskIn)
      {
        //
        if (g_dtcList[i].testDtcCode != 0)
        {
          validCount++;
        }
      }
    }
  }
  *dtcNumOut = validCount;
  *statusMaskOut = 0x00;
#if (DTC_STATUS_BIT0_ENABLE)
  *statusMaskOut |= 0x01;
#endif
#if (DTC_STATUS_BIT1_ENABLE)
  *statusMaskOut |= 0x01 << 1;
#endif
#if (DTC_STATUS_BIT2_ENABLE)
  *statusMaskOut |= 0x01 << 2;
#endif
#if (DTC_STATUS_BIT3_ENABLE)
  *statusMaskOut |= 0x01 << 3;
#endif
#if (DTC_STATUS_BIT4_ENABLE)
  *statusMaskOut |= 0x01 << 4;
#endif
#if (DTC_STATUS_BIT5_ENABLE)
  *statusMaskOut |= 0x01 << 5;
#endif
#if (DTC_STATUS_BIT6_ENABLE)
  *statusMaskOut |= 0x01 << 6;
#endif
#if (DTC_STATUS_BIT7_ENABLE)
  *statusMaskOut |= 0x01 << 7;
#endif

  return 0;
}

int16_t DtcProcessGetExtendedData(uint32_t dtcCode, uint8_t recordNum, uint8_t *extendedData, uint32_t *pExtendedDataLength, uint8_t *statusOut)
{
  uint32_t i;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  int16_t ret = -1;

  for (i = 0; i < size; i++)
  {
    if (g_dtcList[i].dtcCode == dtcCode)
    {
      if (0x01 == recordNum) 
      {
        extendedData[0] = 0x01; // Record Number
        extendedData[1] = 0x00; // High Byte
        extendedData[2] = g_dtcState[i].extendData.FaultOccurrenceCounter; // Low Byte
        *pExtendedDataLength = 0x03; // 总长度 = 1(ID) + 2(Data)
        *statusOut = g_dtcState[i].dtcStatus;
        ret = 0x00;
      }
      else if (0x02 == recordNum) 
      {
        extendedData[0] = 0x02; // Record Number
        extendedData[1] = 0x00;
        extendedData[2] = g_dtcState[i].extendData.DtcAgingCounter; // Low Byte
        *pExtendedDataLength = 0x03; // 总长度 = 1(ID) + 2(Data)
        *statusOut = g_dtcState[i].dtcStatus;
        ret = 0x00;
      }
      else if (0x03 == recordNum) 
      {
        extendedData[0] = 0x03; // Record Number
        extendedData[1] = g_dtcState[i].extendData.DtcAgedCounter; // Value
        *pExtendedDataLength = 0x02; // 总长度 = 1(ID) + 1(Data)
        *statusOut = g_dtcState[i].dtcStatus;
        ret = 0x00;
      }
      else if (0xFF == recordNum) 
      {
        uint32_t len = 0;

        // Record 0x01 (Length 2 Data)
        extendedData[len++] = 0x01;
        extendedData[len++] = 0x00; // High
        extendedData[len++] = g_dtcState[i].extendData.FaultOccurrenceCounter; // Low

        // Record 0x02 (Length 2 Data)
        extendedData[len++] = 0x02;
        extendedData[len++] = 0x00; // High
        extendedData[len++] = g_dtcState[i].extendData.DtcAgingCounter; // Low

        // Record 0x03 (Length 1 Data)
        extendedData[len++] = 0x03;
        extendedData[len++] = g_dtcState[i].extendData.DtcAgedCounter; 

        *pExtendedDataLength = len; //8 字节
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

  return ret;
}

static uint32_t PackSingleSnapshotRecord(uint8_t *pSnapshotRecord, uint8_t recordNum, DtcSnapshotRecordGlobal_t *pSnapshotData)
{
  uint32_t j = 0;

  // Byte #7: DTCSnapshotRecordNumber
  pSnapshotRecord[j++] = recordNum;

  // Byte #8: DTCSnapshotRecordNumberOfIdentifiers
  pSnapshotRecord[j++] = 0x01; // 声明我们有 1 个 DID

  pSnapshotRecord[j++] = 0x05;
  pSnapshotRecord[j++] = 0x02;

  // Byte #11+: SnapshotData#1 (从传入的 pSnapshotData 读取)
  pSnapshotRecord[j++] = (pSnapshotData->vehicleSpeed >> 8) & 0xFF;
  pSnapshotRecord[j++] = pSnapshotData->vehicleSpeed & 0xFF;
  pSnapshotRecord[j++] = (pSnapshotData->motorSpeed >> 8) & 0xFF;
  pSnapshotRecord[j++] = pSnapshotData->motorSpeed & 0xFF;
  pSnapshotRecord[j++] = (pSnapshotData->ecuVoltage >> 8) & 0xFF;
  pSnapshotRecord[j++] = pSnapshotData->ecuVoltage & 0xFF;
  pSnapshotRecord[j++] = pSnapshotData->keyStatus;
  pSnapshotRecord[j++] = pSnapshotData->reserved;
  pSnapshotRecord[j++] = pSnapshotData->globalRealTime[0];
  pSnapshotRecord[j++] = pSnapshotData->globalRealTime[1];
  pSnapshotRecord[j++] = pSnapshotData->globalRealTime[2];
  pSnapshotRecord[j++] = pSnapshotData->globalRealTime[3];
  pSnapshotRecord[j++] = pSnapshotData->globalRealTime[4];
  pSnapshotRecord[j++] = pSnapshotData->globalRealTime[5];

  return j; // 返回这条记录的总长度
}
int16_t DtcProcessGetReportSnapshotRecordByDtcNumber(uint32_t dtcCode, uint8_t snapshotRecordNum, uint8_t *pSnapshotRecord, uint32_t *pRecordLength, uint8_t *statusOut)
{
  uint32_t i;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  int16_t ret = -1;       // 默认为 -1 (DTC 未找到)
  uint32_t j = 0;         // 响应数据的总长度
  uint32_t recordLen = 0; // 单条记录的长度

  // 1. 修正检查：必须同时接受 0x01, 0x02, 0xFF
  if ((snapshotRecordNum != 0x01) && (snapshotRecordNum != 0x02) && (snapshotRecordNum != 0xFF))
  {
    return -2; // -2 代表无效的记录号 (NRC 0x31)
  }

  for (i = 0; i < size; i++) // 遍历 DTC 列表
  {
    if (g_dtcList[i].dtcCode == dtcCode) // 找到匹配的 DTC
    {
      ret = 0x00; // 找到了 DTC，设置返回值为 0 (成功)
      *statusOut = g_dtcState[i].dtcStatus;

      // 2. 打包 "第一次" 记录 (记录号 0x01)
      // 如果请求的是 0x01 或者 0xFF (全部)
      if ((snapshotRecordNum == 0x01) || (snapshotRecordNum == 0xFF))
      {
        // 假设 snapshotData01 存储的是 "第一次" 记录
        recordLen = PackSingleSnapshotRecord(pSnapshotRecord + j, 0x01, &g_dtcState[i].snapshotData01);
        j += recordLen;
      }

      // 3. 打包 "最新一次" 记录 (记录号 0x02)
      // 如果请求的是 0x02 或者 0xFF (全部)
      if ((snapshotRecordNum == 0x02) || (snapshotRecordNum == 0xFF))
      {
        // 假设 snapshotData05 存储的是 "最新" 记录
        recordLen = PackSingleSnapshotRecord(pSnapshotRecord + j, 0x02, &g_dtcState[i].snapshotData05);
        j += recordLen;
      }

      *pRecordLength = j; // 设置总长度
      break;              // 退出循环
    }
  }

  // 如果找到了 DTC (ret=0)，但没有打包任何数据 (j=0)
  // (例如: 请求了 0x02，但只有 0x01 的数据)
  if (ret == 0 && j == 0)
  {
    ret = -2; // 也返回无效记录号 (NRC 0x31)
  }

  return ret;
}
// /****************************************************

// return
//   0 : success
//   -2:invalid record number
//   -1:invalid dtc code
// ***************************************************/
// int16_t DtcProcessGetReportSnapshotRecordByDtcNumber(uint32_t dtcCode, uint8_t snapshotRecordNum, uint8_t *pSnapshotRecord, uint32_t *pRecordLength, uint8_t *statusOut)
// {
//   uint32_t i, j;
//   uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
//   int16_t ret = -1;

//   if ((snapshotRecordNum != 0x01) && (snapshotRecordNum != 0xff))
//   {
//     return ret;
//   }

//   for (i = 0; i < size; i++) // DTC
//   {
//     {
//       if (g_dtcList[i].dtcCode == dtcCode)
//       {
//         j = 0;

//         pSnapshotRecord[j++] = 0x01;
//         pSnapshotRecord[j++] = 0x01;
//         pSnapshotRecord[j++] = 0x05; // DID MSB
//         pSnapshotRecord[j++] = 0x02; // DID LSB

//         pSnapshotRecord[j++] = (g_dtcState[i].snapshotData01.vehicleSpeed >> 8) & 0xFF;
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.vehicleSpeed & 0xFF;

//         pSnapshotRecord[j++] = (g_dtcState[i].snapshotData01.motorSpeed >> 8) & 0xFF;
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.motorSpeed & 0xFF;

//         pSnapshotRecord[j++] = (g_dtcState[i].snapshotData01.ecuVoltage >> 8) & 0xFF;
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.ecuVoltage & 0xFF;
//         TBOX_PRINT("DTC Snapshot ECU Voltage Report: %d\r\n", g_dtcState[i].snapshotData01.ecuVoltage);

//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.keyStatus;

//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.reserved; // 0x00

//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.globalRealTime[0]; // Year
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.globalRealTime[1]; // Month
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.globalRealTime[2]; // Day
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.globalRealTime[3]; // Hour
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.globalRealTime[4]; // Minute
//         pSnapshotRecord[j++] = g_dtcState[i].snapshotData01.globalRealTime[5]; // Second
//         // TBOX_PRINT("DTC Snapshot Time Report: %02d-%02d-%02d %02d:%02d:%02d\r\n",
//         //            g_dtcState[i].snapshotData01.globalRealTime[0],
//         //            g_dtcState[i].snapshotData01.globalRealTime[1],
//         //            g_dtcState[i].snapshotData01.globalRealTime[2],
//         //            g_dtcState[i].snapshotData01.globalRealTime[3],
//         //            g_dtcState[i].snapshotData01.globalRealTime[4],
//         //            g_dtcState[i].snapshotData01.globalRealTime[5]);

//         *statusOut = g_dtcState[i].dtcStatus;
//         ret = 0x00;
//         *pRecordLength = j;
//         break;
//       }
//     }
//   }
//   return ret;
// }

int16_t DtcProcessGetSupportedDtc(uint8_t *pDtcData, uint32_t *pDtcNum, uint8_t *pStutasMaskOut)
{
  uint32_t i;
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  uint32_t validCount = 0;

  for (i = 0; i < size; i++)
  {
    if (g_dtcList[i].dtcGroup < E_DTC_GROUP_UNUSED)
    {
      pDtcData[validCount * 4 + 0] = (g_dtcList[i].dtcCode >> 16);
      pDtcData[validCount * 4 + 1] = (g_dtcList[i].dtcCode >> 8);
      pDtcData[validCount * 4 + 2] = (g_dtcList[i].dtcCode);
      pDtcData[validCount * 4 + 3] = g_dtcState[i].dtcStatus;
      validCount++;
    }
    // TBOX_PRINT("DTC Code: %02X %02X %02X, Status: %02X\r\n", pDtcData[validCount * 4 + 0], pDtcData[validCount * 4 + 1], pDtcData[validCount * 4 + 2], pDtcData[validCount * 4 + 3]);
  }

  *pDtcNum = validCount;

  *pStutasMaskOut = 0x00;
#if (DTC_STATUS_BIT0_ENABLE)
  *pStutasMaskOut |= 0x01;
#endif
#if (DTC_STATUS_BIT1_ENABLE)
  *pStutasMaskOut |= 0x01 << 1;
#endif
#if (DTC_STATUS_BIT2_ENABLE)
  *pStutasMaskOut |= 0x01 << 2;
#endif
#if (DTC_STATUS_BIT3_ENABLE)
  *pStutasMaskOut |= 0x01 << 3;
#endif
#if (DTC_STATUS_BIT4_ENABLE)
  *pStutasMaskOut |= 0x01 << 4;
#endif
#if (DTC_STATUS_BIT5_ENABLE)
  *pStutasMaskOut |= 0x01 << 5;
#endif
#if (DTC_STATUS_BIT6_ENABLE)
  *pStutasMaskOut |= 0x01 << 6;
#endif
#if (DTC_STATUS_BIT7_ENABLE)
  *pStutasMaskOut |= 0x01 << 7;
#endif
  return 0;
}

void GetSnapshotRecordData(DtcSnapshotRecordGlobal_t *SnapshotRecordData)
{
  double dataValue = 0;
  TimeSevice_t Beijing_Time = {0};
  uint32_t KL30Voltage = 0;
  DtcSnapshotRecordGlobal_t *SnapshotRecordDataTemp = SnapshotRecordData;
  const can0_signal_configure_t *pCan0SignalConfigure = GetCan0SignalConfigure();

  PeripheralHalAdGet(AD_CHANNEL_KL30, &KL30Voltage);
  KL30Voltage = KL30Voltage / 100;
  if (KL30Voltage > 50)
  {
    KL30Voltage = KL30Voltage + 1;
  }
  SnapshotRecordDataTemp->ecuVoltage = (uint16_t)KL30Voltage;
  // TBOX_PRINT("DTC Snapshot ECU Voltage: %d\r\n", SnapshotRecordDataTemp->ecuVoltage);

  CanParseSdkReadSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB, &pCan0SignalConfigure->BCS_VehSpd, &dataValue);
  SnapshotRecordDataTemp->vehicleSpeed = (uint16_t)(dataValue / 0.05625f);

  CanParseSdkReadSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB, &pCan0SignalConfigure->EMS_EngSpd, &dataValue);

  SnapshotRecordDataTemp->motorSpeed = (uint16_t)dataValue;

  // 4. 钥匙状态 (Byte 6)
  CanParseSdkReadSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB, &pCan0SignalConfigure->BCM_KeySt, &dataValue);
  SnapshotRecordDataTemp->keyStatus = (uint8_t)dataValue;

  // 5. 预留 (Byte 7)
  SnapshotRecordDataTemp->reserved = 0x00;

  // 6. 时间 (Bytes 8-13)
  if (0 == TimeSyncSdkGetRealTime(0, &Beijing_Time))
  {
    SnapshotRecordDataTemp->globalRealTime[0] = (Beijing_Time.year - 2000);
    SnapshotRecordDataTemp->globalRealTime[1] = Beijing_Time.month;
    SnapshotRecordDataTemp->globalRealTime[2] = Beijing_Time.day;
    SnapshotRecordDataTemp->globalRealTime[3] = Beijing_Time.hour;
    SnapshotRecordDataTemp->globalRealTime[4] = Beijing_Time.minute;
    SnapshotRecordDataTemp->globalRealTime[5] = Beijing_Time.second;
  }
  else
  {
    SnapshotRecordDataTemp->globalRealTime[0] = 0x00;
    SnapshotRecordDataTemp->globalRealTime[1] = 0x00;
    SnapshotRecordDataTemp->globalRealTime[2] = 0x00;
    SnapshotRecordDataTemp->globalRealTime[3] = 0x00;
    SnapshotRecordDataTemp->globalRealTime[4] = 0x00;
    SnapshotRecordDataTemp->globalRealTime[5] = 0x00;
  }
  // TBOX_PRINT("DTC Snapshot Time: %02d-%02d-%02d %02d:%02d:%02d\r\n",
  //            SnapshotRecordDataTemp->globalRealTime[0],
  //            SnapshotRecordDataTemp->globalRealTime[1],
  //            SnapshotRecordDataTemp->globalRealTime[2],
  //            SnapshotRecordDataTemp->globalRealTime[3],
  //            SnapshotRecordDataTemp->globalRealTime[4],
  //            SnapshotRecordDataTemp->globalRealTime[5]);
}

static int16_t GetCurrentSnapshotData(DtcSnapshotRecordGlobal_t *pSnapshotData)
{
  GetSnapshotRecordData(pSnapshotData);
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
  ret = FlashDtcStore((uint8_t *)g_dtcState, sizeof(g_dtcState));
  return ret;
}

// static void SetDTCExtendedData(DtcState_t *pDtcState)
// {
//   // static uint8_t StatusBit1Flag = 0;
//   // static uint8_t StatusBit2Flag = 0;

//   DtcStatusBit_t *pStatusBit = NULL;

//   pStatusBit = (DtcStatusBit_t *)&(pDtcState->dtcStatus);

//   if (pStatusBit->testFailedThisOperationCycle == 0)
//   {
//     pDtcState->extendData.Bit1CycleFlag = 1;
//   }
//   else
//   {
//     if (1 == pDtcState->extendData.Bit1CycleFlag)
//     {
//       pDtcState->extendData.Bit1CycleFlag = 0;

//       if (pDtcState->extendData.FaultOccurrenceCounter != 0xFF)
//       {
//         pDtcState->extendData.FaultOccurrenceCounter += 1;
//       }
//       else
//       {
//         pDtcState->extendData.FaultOccurrenceCounter = 0xFF;
//       }
//     }
//   }

//   if (g_guangqipendingDTC == 1)
//   {
//     pDtcState->extendData.Bit2CycleFlag = 1;
//     if (pDtcState->extendData.FaultPendingCounter != 0xff)
//     {
//       pDtcState->extendData.FaultPendingCounter += 1;
//     }
//     else
//     {
//       pDtcState->extendData.FaultPendingCounter = 0xff;
//     }
//   }
//   else
//   {
//     pDtcState->extendData.FaultPendingCounter = 0;
//     if (1 == pDtcState->extendData.Bit2CycleFlag)
//     {
//       pDtcState->extendData.Bit2CycleFlag = 0;
//       if (pDtcState->extendData.DtcAgingCounter != 0x28)
//       {
//         pDtcState->extendData.DtcAgingCounter += 1;
//       }
//       else
//       {
//         pDtcState->extendData.DtcAgingCounter = 0x28;
//       }
//     }
//   }

//   if (1 == pStatusBit->testFailed)
//   {
//     pDtcState->extendData.DtcAgingCounter = 0;
//   }

//   if (pDtcState->extendData.DtcAgingCounter == 0x28)
//   {
//     pDtcState->extendData.DtcAgedCounter += 1;
//   }
// }
static void SetDTCExtendedData(DtcState_t *pDtcState)
{
  DtcStatusBit_t *pStatusBit = NULL;
  pStatusBit = (DtcStatusBit_t *)&(pDtcState->dtcStatus);

  if (pStatusBit->testFailed == 1)
  {

    if (pDtcState->extendData.Bit1CycleFlag == 0)
    {
      pDtcState->extendData.Bit1CycleFlag = 1; 
      if (pDtcState->extendData.FaultOccurrenceCounter < 0xFF)
      {
        pDtcState->extendData.FaultOccurrenceCounter++;
      }
    }


    pDtcState->extendData.DtcAgingCounter = 0;

    pStatusBit->confirmedDTC = 1;
  }
  else
  {

  }
}

static void ClearDTCExtendedData(DtcState_t *pDtcState)
{
  //    DtcStatusBit_t *pStatusBit = NULL;
  //    pStatusBit = (DtcStatusBit_t*)&(pDtcState->dtcStatus);
  if (g_dtcClearRequestFlag || (pDtcState->DTCAgingCounter >= DTC_AGING_LIMIT))
  {
    memset(&(pDtcState->extendData), 0, sizeof(pDtcState->extendData));
    memset(&(pDtcState->snapshotData01), 0, sizeof(pDtcState->snapshotData01));
    memset(&(pDtcState->snapshotData05), 0, sizeof(pDtcState->snapshotData05));
  }
}

int16_t DtcUpdateStatusFromMpu(DtcItem_e item, uint8_t statusByte) //_cxl
{
  uint32_t size = sizeof(g_dtcList) / sizeof(g_dtcList[0]);
  if (item >= size)
  {
    return -1;
  }

  if (g_dtcState[item].dtcStatus != statusByte)
  {
    g_dtcState[item].dtcStatus = statusByte;
    DtcSaveToWorkFlash();
  }

  return 0;
}
