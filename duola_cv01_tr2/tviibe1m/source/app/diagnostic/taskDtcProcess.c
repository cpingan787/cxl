#include "FreeRTOS.h"
#include "task.h"
#include <string.h>
#include "taskDtcProcess.h"

#include "canHal.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "powerManageSdk.h"
#include "canParseSdk.h"
#include "parameterStoreManageApp.h"
#include "timeSyncSdk.h"
#include "vehicleSignalApp.h"

#define DTC_STATUS_BIT0_ENABLE           1//test failed
#define DTC_STATUS_BIT1_ENABLE           0//test failed this monitoring cycle
#define DTC_STATUS_BIT2_ENABLE           0//pending DTC
#define DTC_STATUS_BIT3_ENABLE           1//confirmed DTC
#define DTC_STATUS_BIT4_ENABLE           0//test not completed since last clear
#define DTC_STATUS_BIT5_ENABLE           0//test failed since last clear
#define DTC_STATUS_BIT6_ENABLE           0//test not completed this monitoring cycle
#define DTC_STATUS_BIT7_ENABLE           0//warning indicator requested


#define DTC_AGING_LIMIT                  (40)



typedef struct
{  
   uint8_t kl15OnDetect;//0:not detect kl15 state;1:when kl15 is off ,discard the current fault
   int8_t canChannel;//when canChannel>=0,when CanDtcDetectDisable is called ,discard the current fault;when canChannel<0,this option is invalid
   uint8_t faultNum;//indication the valid count in the array of faultItem 
   uint8_t faultItem[5];//type is enum_DTC_item,when the element of faultItem is used, when this fault happened, discard the releated fault(eg.node missing)
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
  DtcSnapshotRecordGlobal_t snapshotData00;
  // DtcSnapshotRecordGlobal_t snapshotData01;
  // DtcSnapshotRecordGlobal_t snapshotData05;
  DtcExtendedDataRecordGlobal_t extendData;    
}DtcState_t;

typedef enum
{
  E_DTC_PROCESS_STATE_INIT,
  E_DTC_PROCESS_STATE_NORMAL,
  E_DTC_PROCESS_STATE_KL15OFF,
  E_DTC_PROCESS_STATE_SLEEP,
}DtcProcessState_t;

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

const DtcDependency_t m_canBDNodeLost =
{
  .kl15OnDetect = 0x01,
  .canChannel = TBOX_CAN_CHANNEL_2,
  .faultNum = 3,
  .faultItem = {E_DTC_ITEM_BDCAN_BUSOFF,E_DTC_ITEM_KL30_VOLTAGE_HIGH,E_DTC_ITEM_KL30_VOLTAGE_LOW,0,0},
};
const DtcDependency_t m_canPTNodeLost =
{
  .kl15OnDetect = 0x01,
  .canChannel = TBOX_CAN_CHANNEL_1,
  .faultNum = 3,
  .faultItem = {E_DTC_ITEM_PTCAN_BUSOFF,E_DTC_ITEM_KL30_VOLTAGE_HIGH,E_DTC_ITEM_KL30_VOLTAGE_LOW,0,0},
};

const DtcDependency_t m_canChannelDTC =
{
  .kl15OnDetect = 0x01,
  .canChannel = TBOX_CAN_CHANNEL_1,
  .faultNum = 2,
  .faultItem = {E_DTC_ITEM_KL30_VOLTAGE_HIGH,E_DTC_ITEM_KL30_VOLTAGE_LOW,0,0,0},
};

const static DtcConfig_t g_dtcList[] =
{
		/* dtcCode testDtcCode		checkCycleTime	   faultLimit RecoverLimit DTCAgingLimit FaultDepend FaultDetectEnable****/
		{0xF00317,0x3A98,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0xF00316,0x3A99,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0xC07588,0x3A9A,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canChannelDTC,		BOOL_TRUE },
		{0xC07788,0x3A9B,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canChannelDTC,		BOOL_TRUE },
		{0xC07888,0x3A9C,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canChannelDTC,		BOOL_TRUE },
		{0x9A0211,0x3A9D,(10/DTC_PROCESS_CYCLE_TIME),     1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0x9A0213,0x3A9E,(10/DTC_PROCESS_CYCLE_TIME),     1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0x9A0311,0x3A9F,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0x9A0313,0x3AA0,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0x9A0431,0x3AA1,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0x9A0532,0x3AA2,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		{0x9A0616,0x3AA3,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   NULL,		BOOL_TRUE },
		//CAN
		{0xC12187,0x3AA4,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canPTNodeLost,	   BOOL_TRUE },
		{0xC15187,0x3AA5,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canPTNodeLost,	   BOOL_TRUE },
		{0xC13187,0x3AA6,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canPTNodeLost,	   BOOL_TRUE },
		{0xC11187,0x3AA7,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canPTNodeLost,	   BOOL_TRUE },
		{0xC29887,0x3AA8,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canPTNodeLost,	   BOOL_TRUE },
		{0xC29487,0x3AA9,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canBDNodeLost,	   BOOL_TRUE },
		{0xC14087,0x3AAA,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canBDNodeLost,	   BOOL_TRUE },
		{0xC15587,0x3AAB,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canBDNodeLost,	   BOOL_TRUE },
		{0xC10F87,0x3AAC,(10/DTC_PROCESS_CYCLE_TIME),	  1,		   -1,		  40,		   &m_canBDNodeLost,	   BOOL_TRUE },

		{0xD11087,0x3AAD,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canPTNodeLost,		 BOOL_TRUE },
		{0xD11287,0x3AAE,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canPTNodeLost,		 BOOL_TRUE },
		{0xD11787,0x3AAF,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canPTNodeLost,		 BOOL_TRUE },
		{0xD11F87,0x3AB0,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canPTNodeLost,		 BOOL_TRUE },
	    {0xD12187,0x3AB1,(10/DTC_PROCESS_CYCLE_TIME),	1,			 -1,		40, 		 &m_canBDNodeLost,		 BOOL_TRUE },
		{0xD11687,0x3AB2,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canBDNodeLost,		 BOOL_TRUE },
		{0xD11E87,0x3AB3,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canBDNodeLost,		 BOOL_TRUE },
		{0xD11387,0x3AB4,(10/DTC_PROCESS_CYCLE_TIME), 	1,			 -1,		40, 		 &m_canBDNodeLost,		 BOOL_TRUE },

};



#define WORKFLASH_DTC_NUMBER            (sizeof(g_dtcList)/sizeof(g_dtcList[0]))


static DtcState_t g_DtcState[sizeof(g_dtcList)/sizeof(g_dtcList[0])];
static DtcGroupManage_t g_dtcGroupManage; 



//static uint8_t m_sleepFlag = 0;
static int16_t g_sleepCommandHandle = -1;
static uint8_t g_detectEnableFlag = 1;
static uint8_t g_dtcClearRequestFlag = 0;
static DtcProcessState_t g_dtcProcessState = E_DTC_PROCESS_STATE_INIT;
static uint16_t g_DTCDisableTimeCount	=   0;                      //禁止时间计数
static const uint8_t g_CanSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB;
static uint32_t g_delayWriteCount = 0;
static uint32_t g_delayWriteFlag = 0;
static uint8_t g_duolapendingDTC = 0;
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
}struc_dtcStatusBit;


static int16_t GetCurrentSnapshotData(DtcSnapshotRecordGlobal_t *pSnapshotData);
static int16_t WorkFlashWriteVehicleDTCBufferToFlash(void);
static void SetDTCExtendedData(DtcState_t *pDtcState);
static void ClearDTCExtendedData(DtcState_t *pDtcState);
static void DtcSaveToWorkFlash(void);

int16_t TaskAppDtcProcessInit(void)
{
  return 0;
}

static int16_t CheckDtcDependce_MsgMissing(const DtcDependency_t *pDependency)
{
  int16_t ret;
  int16_t i;  
  ret = 1;

  for(i=0;i<pDependency->faultNum;i++)
  {
    if(g_DtcState[pDependency->faultItem[i]].faultFlag )
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
  struc_dtcStatusBit *pStatusBit;
  
  //clearDiagnosticInformationRequest = 0;// for debug
  McuResetFlag = 0;//for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus;

  if(pStatusBit->testFailed==0)
  {
    if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
    {
      pStatusBit->testFailed = 1;
      pDtcState->faultStateChange = 1;
	  pDtcState->extendData.Bit1CycleFlag = 1;
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
#if(DTC_STATUS_BIT1_ENABLE) //other object
static void DtcStatusBitTestFailedThisOperationCycleProcess(DtcState_t *pDtcState)
{
  //uint8_t clearDiagnosticInformationRequested;
  struc_dtcStatusBit *pStatusBit;

  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus;
  
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
  struc_dtcStatusBit *pStatusBit;
  
  /*if(initializatinoFlag_PDTC==0)
  {
    initializatinoFlag_PDTC = 1;
    pendingDTC = 0;
    failedOperationCycle = currentOperationCycle;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus;  
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
  struc_dtcStatusBit *pStatusBit;
  
  /*if(initializatinoFlag_PDTC==0)
  {
    initializatinoFlag_PDTC = 1;
    pendingDTC = 0;
    failedOperationCycle = currentOperationCycle;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus;  

  if(g_dtcClearRequestFlag)
  {
    g_duolapendingDTC= 0;
  }
  else if((pDtcState->testResult==DTC_TEST_RESULT_FAILED)&&(!g_dtcClearRequestFlag))
  {
    g_duolapendingDTC = 1;
    if(pDtcState->failedOperationCycle != pDtcState->currentOperationCycle)
    {
      pDtcState->failedOperationCycle = pDtcState->currentOperationCycle;
    }    
  }
  else if((pDtcState->testResult==DTC_TEST_RESULT_PASSED)&&(!pStatusBit->testFailedThisOperationCycle)&&(!pDtcState->testFailedLastOperationCycle))
  {
    g_duolapendingDTC = 0;
  }

}

#endif

#if(DTC_STATUS_BIT3_ENABLE) 
static void DtcStatusBitConfirmedDtcProcess(DtcState_t *pDtcState,const DtcConfig_t* dtcConfig)
{
  //uint8_t clearDiagnosticInformationRequested;
  struc_dtcStatusBit *pStatusBit;
  uint8_t DTCConfirmationCriteriaSatisfied;
  uint8_t agingCtriteriaSatisfied;
  /*if(initializatinoFlag_CDTC==0)
  {
    initializatinoFlag_CDTC = 1;
    confirmedDTC = 0;
    confirmState = INITIAL_MONITOR;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug

  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus; 
  
  
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
  struc_dtcStatusBit *pStatusBit;
  
  /*if(initializationFlag_TNCSLC==0)
  {
    initializationFlag_TNCSLC = 1;
    pStatusBit->testNotCompletedSinceLastClear = 1;
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus; 
  
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
  struc_dtcStatusBit *pStatusBit;
  
  /*if(initializatinoFlag_TFSLC==0)
  {
    initializatinoFlag_TFSLC = 1;
    testFailedSinceLastClear = 0;
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus; 
  
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
  struc_dtcStatusBit *pStatusBit;
  
  /*if(initializatinoFlag_TNCTOC==0)
  {
    initializatinoFlag_TNCTOC = 1;
    pStatusBit->testNotCompletedThisOperationCycle = 1;
    lastOperationCycle = currentOperationCycle;    
  }*/
  
  //clearDiagnosticInformationRequested = 0;// for debug
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus; 

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
  struc_dtcStatusBit *pStatusBit;
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
  
  pStatusBit = (struc_dtcStatusBit*) &pDtcState->dtcStatus; 
  
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
    struc_dtcStatusBit *pStatusBit = NULL ;
    pStatusBit = (struc_dtcStatusBit*)pDtcStatus;
    
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
            if(g_DtcState[i].faultFlag)
            {
                g_DtcState[i].testResult = DTC_TEST_RESULT_FAILED;
            }
            else
            {
                g_DtcState[i].testResult = DTC_TEST_RESULT_PASSED;
            }            
          }
          else
          {
            if(CheckDtcDependce_MsgMissing(g_dtcList[i].pDependce)==0)
            {
              g_DtcState[i].testResult = DTC_TEST_RESULT_PASSED;
            }
            else
            {
                if(g_DtcState[i].faultFlag)
                {
                    g_DtcState[i].testResult = DTC_TEST_RESULT_FAILED;
                }
                else
                {
                    g_DtcState[i].testResult = DTC_TEST_RESULT_PASSED;
                } 
            }
          }
      }

	if((g_dtcClearRequestFlag)&&(i>E_DTC_ITEM_BATTERY_FAULT))//CAN DTC CLEAN
	{
		g_DtcState[i].faultFlag = 0;
	}
    //dtc bit status  process  
#if(DTC_STATUS_BIT0_ENABLE)
    DtcStatusBitTestFailedProcess(&g_DtcState[i]);//status bit0
    SnapshotSaveLogicProcess(&g_DtcState[i].dtcStatus, &g_DtcState[i].faultStateChange,&g_DtcState[i].snapshotData00,&g_DtcState[i].snapshotData00);
    //debug
    /*if(i==E_DTC_ITEM_E2E_ACM)
    {
    	if(g_DtcState[i].dtcStatus&0x01)
    	{
			canHandle = 1<<8;
			CanHalTransmit(canHandle,0x123,canData,8,0);
    	}
    }*/
#endif
#if(DTC_STATUS_BIT1_ENABLE) //other object
    DtcStatusBitTestFailedThisOperationCycleProcess(&g_DtcState[i]);//status bit1
#endif
#if(DTC_STATUS_BIT2_ENABLE)    
    DtcStatusBitPendingDtcProcess(&g_DtcState[i],&g_dtcList[i]);//status bit2
#else
    DtcStatusBitPendingDtcProcess(&g_DtcState[i],&g_dtcList[i]);//status bit2		
#endif
		
#if(DTC_STATUS_BIT3_ENABLE)  
    DtcStatusBitConfirmedDtcProcess(&g_DtcState[i],&g_dtcList[i]);//status bit3 
#endif
#if(DTC_STATUS_BIT4_ENABLE)      
    DtcStatusBitTestNotCompletedSinceLastClearProcess(&g_DtcState[i]);//status bit4  
#endif
#if(DTC_STATUS_BIT5_ENABLE)         
    DtcStatusBitTestFailedSinceLastClearProcess(&g_DtcState[i]);//status bit5
#endif
#if(DTC_STATUS_BIT6_ENABLE) 
    DtcStatusBitTestNotCompletedThisOperationCycleProcess(&g_DtcState[i]);//status bit6
#endif
#if(DTC_STATUS_BIT7_ENABLE)     
    DtcStatusBitWarningIndicatorReuestedProcess(&g_DtcState[i]);//status bit7
#endif
    g_DtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    SetDTCExtendedData(&g_DtcState[i]); //whl 20200109
    ClearDTCExtendedData(&g_DtcState[i]);  //whl 20200109
  }  
}

static void DtcInitialize(void)
{
  uint32_t i;
  //struc_dtc_store dtcTem;
  struc_dtcStatusBit *pStatusBit;
  uint32_t itemNum = sizeof(g_dtcList)/sizeof(g_dtcList[0]);

  FlashDtcRead((uint8_t *)g_DtcState,sizeof(g_DtcState));
  //TBOX_PRINT("DTC buffer size is %d\r\n",sizeof(g_DtcState));
  for(i=0;i<itemNum;i++)
  {
    //WorkFlashWriteVehicleDTCReadByIndex(i,1,&dtcTem);
    
    g_DtcState[i].currentOperationCycle++;
    //g_DtcState[i].DTCAgingCounter = dtcTem.AgingCounter;
    
    //g_DtcState[i].confirmStage = (DtcConfirmStage_e)dtcTem.confirmStage;
    //g_DtcState[i].failedOperationCycle = dtcTem.faildOperationCycle;
    g_DtcState[i].faultCount = 0;
    g_DtcState[i].faultFlag = 0;
    g_DtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_DtcState[i].timeCount = 0;
    g_DtcState[i].faultStateChange = 0;
    //g_DtcState[i].TripCounter = dtcTem.TripCounter;
    pStatusBit = (struc_dtcStatusBit*) &g_DtcState[i].dtcStatus;
    g_DtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;
    //snapshot data
    //memcpy(&g_DtcState[i].snapshotData,&dtcTem.snapshotData,sizeof(dtcTem.snapshotData));
    //extended data //whl 20200107
    //memcpy(&g_DtcState[i].extendData,&dtcTem.extendData,sizeof(dtcTem.extendData));
    //
    /*if(g_DtcState[i].dtcStatus.bitField.pendingDTC)//pending dtc bit
    {
      if( g_DtcState[i].TripCounter<g_dtcList[i].TripCounterFaultLimit)
      {
        g_DtcState[i].TripCounter++;
      }
    }*/
        
   //g_DtcState[i].dtcStatus = dtcTem.dtcStatus.u8Field;
    


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
    
    if(!g_DtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
      if(g_DtcState[i].DTCAgingCounter<g_dtcList[i].DTCAgingFaultLimit)
      {
          g_DtcState[i].DTCAgingCounter++;        
          g_DtcState[i].extendData.DtcAgingCounter++;
      }
    }
    //if(E_DTC_ITEM_NODE_MISSING_120==i)
    //{
    //	TBOX_PRINT("120-DTCAgingCounter %x \r\n",g_DtcState[E_DTC_ITEM_NODE_MISSING_120].DTCAgingCounter);
    //}

  }
  
}

static void DtcAwakeInitialize(void)
{
  uint32_t i;
  //struc_dtc_store dtcTem;
  struc_dtcStatusBit *pStatusBit;
//  uint32_t size = sizeof(g_DtcState);
  uint32_t itemNum = sizeof(g_dtcList)/sizeof(g_dtcList[0]);

  for(i=0;i<itemNum;i++)
  {
   
    g_DtcState[i].currentOperationCycle++;
    //g_DtcState[i].DTCAgingCounter = dtcTem.AgingCounter;
    
    //g_DtcState[i].confirmStage = (DtcConfirmStage_e)dtcTem.confirmStage;
    //g_DtcState[i].failedOperationCycle = dtcTem.faildOperationCycle;
    g_DtcState[i].faultCount = 0;
    if(g_dtcList[i].pDependce != NULL)
    {
      g_DtcState[i].faultFlag = 0;
    }
    g_DtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_DtcState[i].timeCount = 0;
    g_DtcState[i].faultStateChange = 0;
    //g_DtcState[i].TripCounter = dtcTem.TripCounter;
    pStatusBit = (struc_dtcStatusBit*) &g_DtcState[i].dtcStatus;
    g_DtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;
    //snapshot data
    //memcpy(&g_DtcState[i].snapshotData,&dtcTem.snapshotData,sizeof(dtcTem.snapshotData));
    //extended data //whl 20200107
    //memcpy(&g_DtcState[i].extendData,&dtcTem.extendData,sizeof(dtcTem.extendData));
    //
    /*if(g_DtcState[i].dtcStatus.bitField.pendingDTC)//pending dtc bit
    {
      if( g_DtcState[i].TripCounter<g_dtcList[i].TripCounterFaultLimit)
      {
        g_DtcState[i].TripCounter++;
      }
    }*/
        
   //g_DtcState[i].dtcStatus = dtcTem.dtcStatus.u8Field;
    


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
    
    if(!g_DtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
      if(g_DtcState[i].DTCAgingCounter<g_dtcList[i].DTCAgingFaultLimit)
      {
          g_DtcState[i].DTCAgingCounter++;        
          g_DtcState[i].extendData.DtcAgingCounter++;   
      }
    }
    //if(E_DTC_ITEM_NODE_MISSING_120==i)
    //{
    //	TBOX_PRINT("120-DTCAgingCounter %x \r\n",g_DtcState[E_DTC_ITEM_NODE_MISSING_120].DTCAgingCounter);
    //}

  }
  
}

static void DtcKl15OnInitialize(void)
{
  uint32_t i;
  //struc_dtc_store dtcTem;
  struc_dtcStatusBit *pStatusBit;
//  uint32_t size = sizeof(g_DtcState);
  uint32_t itemNum = sizeof(g_dtcList)/sizeof(g_dtcList[0]);

  for(i=0;i<itemNum;i++)
  {
    g_DtcState[i].currentOperationCycle++;
    //g_DtcState[i].DTCAgingCounter = dtcTem.AgingCounter;
    
    //g_DtcState[i].confirmStage = (DtcConfirmStage_e)dtcTem.confirmStage;
    //g_DtcState[i].failedOperationCycle = dtcTem.faildOperationCycle;
    g_DtcState[i].faultCount = 0;
    if(g_dtcList[i].pDependce != NULL)
    {
      g_DtcState[i].faultFlag = 0;
    }
    g_DtcState[i].testResult = DTC_TEST_RESULT_NOT_COMPLETE;
    g_DtcState[i].timeCount = 0;
    g_DtcState[i].faultStateChange = 0;
    //g_DtcState[i].TripCounter = dtcTem.TripCounter;
    pStatusBit = (struc_dtcStatusBit*) &g_DtcState[i].dtcStatus;
    g_DtcState[i].testFailedLastOperationCycle = pStatusBit->testFailedThisOperationCycle;
    //snapshot data
    //memcpy(&g_DtcState[i].snapshotData,&dtcTem.snapshotData,sizeof(dtcTem.snapshotData));
    //extended data //whl 20200107
    //memcpy(&g_DtcState[i].extendData,&dtcTem.extendData,sizeof(dtcTem.extendData));
    //
    /*if(g_DtcState[i].dtcStatus.bitField.pendingDTC)//pending dtc bit
    {
      if( g_DtcState[i].TripCounter<g_dtcList[i].TripCounterFaultLimit)
      {
        g_DtcState[i].TripCounter++;
      }
    }*/
        
   //g_DtcState[i].dtcStatus = dtcTem.dtcStatus.u8Field;
    


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
    
    if(!g_DtcState[i].testFailedLastOperationCycle)
    {
      pStatusBit->pendingDTC = 0;
      if(g_DtcState[i].DTCAgingCounter<g_dtcList[i].DTCAgingFaultLimit)
      {
          g_DtcState[i].DTCAgingCounter++;        
          g_DtcState[i].extendData.DtcAgingCounter++;
      }
    }
    //if(E_DTC_ITEM_NODE_MISSING_120==i)
    //{
    //	TBOX_PRINT("120-DTCAgingCounter %x \r\n",g_DtcState[E_DTC_ITEM_NODE_MISSING_120].DTCAgingCounter);
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
      ClearNodeMissingCheckConfig(); 
      DtcNormalProcess(); 
      g_dtcClearRequestFlag = 0;
      DtcSaveToWorkFlash();
    }
    else
    {  
    	if(GetDtcControlFlag()==0)
    	{
			DtcNormalProcess(); 	 
    	}
    }
  }
  else if(E_DTC_PROCESS_STATE_KL15OFF==g_dtcProcessState)
  {
    if(sleepFlag == 0)
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
      ClearNodeMissingCheckConfig(); 
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
  uint32_t distime;
  g_sleepCommandHandle = PowerManageSdkOpenHandle("dtc");
  DtcGroupInit();
  while(1)
  {
	  if(GetTboxOtaStatus() == 1)
	  {
			distime = 6*1000;//30s
			g_DTCDisableTimeCount++;
			if(g_DTCDisableTimeCount>=distime)
			{
			  g_DTCDisableTimeCount=0;
			  SetTboxOtaStatus(0);
			}
	  }
	  else
	  {
			g_DTCDisableTimeCount=0;
			DtcCycleProcess();
	  }	
	  
	  vTaskDelay(DTC_PROCESS_CYCLE_TIME);
    //PrintTaskInfo();
  }
}

int16_t GetDtcFaultState(DtcItem_e item)
{
	uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
	uint8_t status;	
	if(item>=size)
	{
	  return -1;
	}
	status = ((g_DtcState[item].dtcStatus)&0x01);
	return status;
}

int16_t SetDtcFaultState(DtcItem_e item)
{
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  if(item>=size)
  {
    return -1;
  }
  g_DtcState[item].faultFlag = 1;
  return 0;
}

int16_t ClearDtcFaultState(DtcItem_e item)
{
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  if(item>=size)
  {
    return -1;
  }
  g_DtcState[item].faultFlag = 0;
  return 0;
}

static int32_t m_disableCount = 0;

static void DtcDetectEnable(void)
{
	if(m_disableCount>0)
	{
		m_disableCount--;
	}
	if(m_disableCount==0)
	{
		g_detectEnableFlag = 1;
	}
	//TBOX_PRINT("dtc enable %d\r\n",m_disableCount);
}

static void DtcDetectDisable(void)
{

	g_detectEnableFlag = 0;
	m_disableCount++;
	//TBOX_PRINT("dtc disable %d\r\n",m_disableCount);
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
uint8_t GetRemoteDtcStatus(void)
{
	if((g_DtcState[E_DTC_ITEM_LOST_COMMUNICATION_VCU].dtcStatus)||(g_DtcState[E_DTC_ITEM_LOST_COMMUNICATION_BCM].dtcStatus))
	{
		return 1;
	}
	else if((g_DtcState[E_DTC_ITEM_E2E_VCU].dtcStatus)||(g_DtcState[E_DTC_ITEM_E2E_BCM].dtcStatus))
	{
		return 2;
	}
	return 0;
}

int16_t DtcProcessGetListByCAN(uint8_t *dtcData,uint32_t *dtcNumOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  validCount = 0;
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
            if(g_DtcState[i].dtcStatus&0x09)
            {
                //
                dtcData[validCount*3+0] = (g_dtcList[i].dtcCode>>16);
                dtcData[validCount*3+1] = (g_dtcList[i].dtcCode>>8);
                dtcData[validCount*3+2] = (g_dtcList[i].dtcCode);
                validCount++;              
            }          
      }

  }
  *dtcNumOut = validCount;
  return 0;
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
            if(g_DtcState[i].dtcStatus&statusMaskIn)
            {
                //
                dtcData[validCount*4+0] = (g_dtcList[i].dtcCode>>16);
                dtcData[validCount*4+1] = (g_dtcList[i].dtcCode>>8);
                dtcData[validCount*4+2] = (g_dtcList[i].dtcCode);
                dtcData[validCount*4+3] = g_DtcState[i].dtcStatus;
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
            if(g_DtcState[i].dtcStatus&statusMaskIn)
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

int16_t DtcProcessTestGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut)
{
  uint32_t i;
  uint32_t validCount;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  validCount = 0;
  for(i=0;i<size;i++)
  {
      if(g_dtcList[i].dtcGroup<E_DTC_GROUP_UNUSED)
      {
            if(g_DtcState[i].dtcStatus&statusMaskIn)
            {
                //
                if(g_dtcList[i].testDtcCode!=0)
                {
                  dtcData[validCount*2+0] = (g_dtcList[i].testDtcCode>>8);
                  dtcData[validCount*2+1] = (g_dtcList[i].testDtcCode);
                  validCount++;        
                }           
            }          
      }

  }
  *dtcNumOut = validCount;
#if 0

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
            if(g_DtcState[i].dtcStatus&statusMaskIn)
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
          extendedData[1] = g_DtcState[i].extendData.FaultOccurrenceCounter;
          extendedData[2] = g_DtcState[i].extendData.DtcAgedCounter;
          extendedData[3] = g_DtcState[i].extendData.DtcAgingCounter;
          *pExtendedDataLength = 0x04;
          //
          *statusOut = g_DtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0xFF==recordNum)// all extended data
        {
          //fault occurence counter
          extendedData[0] = 0x01;//extended record number
          extendedData[1] = g_DtcState[i].extendData.FaultOccurrenceCounter;
          extendedData[2] = g_DtcState[i].extendData.DtcAgedCounter;
          extendedData[3] = g_DtcState[i].extendData.DtcAgingCounter;
          *pExtendedDataLength = 0x04;
          *statusOut = g_DtcState[i].dtcStatus;
          ret = 0x00;
        } 
#if 0
        else if(0x02==recordNum)// fault pending counter data
        {
          extendedData[0] = 0x02;//extended record number
          extendedData[1] = g_DtcState[i].extendData.FaultPendingCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_DtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0x03==recordNum)// aging counter data
        {
          extendedData[0] = 0x03;//extended record number
          extendedData[1] = g_DtcState[i].extendData.DtcAgingCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_DtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0x04==recordNum)// aged counter data
        {
          extendedData[0] = 0x04;//extended record number
          extendedData[1] = g_DtcState[i].extendData.DtcAgedCounter;
          *pExtendedDataLength = 0x02;
          //
          *statusOut = g_DtcState[i].dtcStatus;
          ret = 0x00;
        }
        else if(0xFF==recordNum)// all extended data
        {
          //fault occurence counter
          extendedData[0] = 0x01;//extended record number
          extendedData[1] = g_DtcState[i].extendData.FaultPendingCounter;
          extendedData[1] = g_DtcState[i].extendData.DtcAgedCounter;
          extendedData[2] = g_DtcState[i].extendData.DtcAgingCounter;

          //fault pending counter
          extendedData[2] = 0x02;//extended record number
          extendedData[3] = g_DtcState[i].extendData.FaultPendingCounter;
          //aging counter
          extendedData[4] = 0x03;//extended record number
          extendedData[5] = g_DtcState[i].extendData.DtcAgingCounter;
          //aged counter
          extendedData[6] = 0x04;//extended record number
          extendedData[7] = g_DtcState[i].extendData.DtcAgedCounter;
          *pExtendedDataLength = 0x07;
          //
          *statusOut = g_DtcState[i].dtcStatus;
          ret = 0x00;
        } 
		
#endif
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
  uint32_t i;
  uint32_t size = sizeof(g_dtcList)/sizeof(g_dtcList[0]);
  int16_t ret = -1;  
  uint16_t len = 0;
  
  if((snapshotRecordNum==0x01)||(snapshotRecordNum==0xFF))
  {
	for(i=0;i<size;i++)
	{
		//
		if(g_dtcList[i].dtcCode==dtcCode)
		{
                  *statusOut = g_DtcState[i].dtcStatus;
                  if(*statusOut == 0x00)
                  {
                    memset(pSnapshotRecord,0,28);
                  }
                  else
                  {
					pSnapshotRecord[len++] = 0x01;
					pSnapshotRecord[len++] = 0x06;//number of identifiers
					//PowerMode
					pSnapshotRecord[len++] = 0xF1;// did H
					pSnapshotRecord[len++] = 0xA3;//did L
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.PowerMode;//unit 0.1V,offset 0,min 0,max 25.5
					//ecu voltage
					pSnapshotRecord[len++] = 0xF1;// did H
					pSnapshotRecord[len++] = 0xA4;//did L
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.ecuVoltage>>8)&0xFF;//unit 0.1V,offset 0,min 0,max 25.5
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.ecuVoltage>>0)&0xFF;//unit 0.1V,offset 0,min 0,max 25.5
					//vehicle odometer
					pSnapshotRecord[len++] = 0xF1;// did H
					pSnapshotRecord[len++] = 0xA5;//did L
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.vehicleOdlmeter>>16)&0xFF;
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.vehicleOdlmeter>>8)&0xFF;
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.vehicleOdlmeter>>0)&0xFF;
					//vehicle speed
					pSnapshotRecord[len++] = 0xF1;// did H
					pSnapshotRecord[len++] = 0xA6;//did L
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.vehicleSpeed>>8)&0xFF;//unit 0.015625 km/h,offset 0,min 0,max 1023.984375
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.vehicleSpeed&0xFF;
					//global real time data identifier
					pSnapshotRecord[len++] = 0xF1;// did H
					pSnapshotRecord[len++] = 0xA7;//did L
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.globalRealTime[0];// year high byte
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.globalRealTime[1];//did L
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.globalRealTime[2];// did H
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.globalRealTime[3];//did L
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.globalRealTime[4];// did H
					pSnapshotRecord[len++] = g_DtcState[i].snapshotData00.globalRealTime[5];//did L
					//SOC
					pSnapshotRecord[len++] = 0xF1;// did H
					pSnapshotRecord[len++] = 0xA8;//did L
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.vehicleOdlmeter>>24)&0xFF;//unit 0.015625 km/h,offset 0,min 0,max 6710863
					pSnapshotRecord[len++] = (g_DtcState[i].snapshotData00.vehicleOdlmeter>>16)&0xFF;
                    //
		  }
		  ret = 0x00;
		  *pRecordLength = len;
		  break;
		}	  
	}
  }
  else
  {
	  return ret;
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
          pDtcData[validCount*4+3] = g_DtcState[i].dtcStatus;
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

// HEX TO BCD
// hex_data(<0xff,>0)
static unsigned int HEX2BCD(unsigned char hex_data)
{
    unsigned int bcd_data;
    unsigned char temp;
    temp = hex_data % 100;
    bcd_data = ((unsigned int)hex_data) / 100 << 8;
    bcd_data = bcd_data | temp / 10 << 4;
    bcd_data = bcd_data | temp % 10;
    return bcd_data;
}

void GetSnapshotRecordData(DtcSnapshotRecordGlobal_t *SnapshotRecordData)
{

    double dataVaule = 0;
    uint8_t VecTMActSpdV_Temp = 0;
    uint8_t VehSpdAvgDrvnV_Temp = 0; 
    uint8_t VehOdoV_Temp = 0; 
    TIME_SERVICE Beijing_Time = {0};
	
    uint32_t KL30Voltage = 0;
    DtcSnapshotRecordGlobal_t *SnapshotRecordDataTemp = NULL;   
    const can_signal_configure_t *pCan0SignalConfigure = NULL;    
    
	pCan0SignalConfigure = GetCan0SignalConfigure();
    SnapshotRecordDataTemp = SnapshotRecordData;
	//
    PeripheralHalAdGet(AD_CHANNEL_KL30, &KL30Voltage);
    KL30Voltage = KL30Voltage / 100;
	if(KL30Voltage > 50 )
	{
	  KL30Voltage = KL30Voltage + 1;
	}
	
    SnapshotRecordDataTemp->ecuVoltage = KL30Voltage;
	
    ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->BCM_PowerMode,&dataVaule);    
    SnapshotRecordDataTemp->PowerMode  = (uint32_t)dataVaule;	
	
    ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->VCU_VehicleSpeed,&dataVaule);
    SnapshotRecordDataTemp->vehicleSpeed = (uint32_t)dataVaule*0.05625;

	ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->IPK_OdometerInfor,&dataVaule);
	SnapshotRecordDataTemp->vehicleOdlmeter = (uint32_t)dataVaule*1;
	
    if(0 == TimeSyncSdkGetRealTime(0,&Beijing_Time.year,&Beijing_Time.month,&Beijing_Time.day,&Beijing_Time.hour,&Beijing_Time.minute,&Beijing_Time.second))
    {
        SnapshotRecordDataTemp->globalRealTime[0] = (Beijing_Time.year-2000);
        SnapshotRecordDataTemp->globalRealTime[1] = Beijing_Time.month;
        SnapshotRecordDataTemp->globalRealTime[2] = Beijing_Time.day;
        SnapshotRecordDataTemp->globalRealTime[3] = Beijing_Time.hour;
        SnapshotRecordDataTemp->globalRealTime[4] = Beijing_Time.minute;
        SnapshotRecordDataTemp->globalRealTime[5] = Beijing_Time.second;
    }
    else
    {
        SnapshotRecordDataTemp->globalRealTime[0] = 0x00;
        SnapshotRecordDataTemp->globalRealTime[1] = 0x01;
        SnapshotRecordDataTemp->globalRealTime[2] = 0x01;
        SnapshotRecordDataTemp->globalRealTime[3] = 0x00;
        SnapshotRecordDataTemp->globalRealTime[4] = 0x00;
        SnapshotRecordDataTemp->globalRealTime[5] = 0x00;
    }
	
	ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->BMS_RealSOC,&dataVaule);
	SnapshotRecordDataTemp->SOC = (uint32_t)dataVaule*1;

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
  ret = FlashDtcStore((uint8_t*)g_DtcState,sizeof(g_DtcState));
  return ret;
}

static void SetDTCExtendedData(DtcState_t *pDtcState)
{
    //static uint8_t StatusBit1Flag = 0;  
    //static uint8_t StatusBit2Flag = 0; 
    
    struc_dtcStatusBit *pStatusBit = NULL;    
    
    pStatusBit = (struc_dtcStatusBit*)&(pDtcState->dtcStatus);
 #if 0 //duolaother   
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
 #else
 
	 if(PeripheralHalGetKl15Status()==0x00)
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
	 else
	 {
		 pDtcState->extendData.FaultOccurrenceCounter = 0; 		   
	 }
 #endif
    if(g_duolapendingDTC == 1)
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
        pDtcState->extendData.globalRealTime[0] = pDtcState->snapshotData00.globalRealTime[0];
        pDtcState->extendData.globalRealTime[1] = pDtcState->snapshotData00.globalRealTime[1];
        pDtcState->extendData.globalRealTime[2] = pDtcState->snapshotData00.globalRealTime[2];
        pDtcState->extendData.globalRealTime[3] = pDtcState->snapshotData00.globalRealTime[3];
    }
    
    if(pDtcState->extendData.DtcAgingCounter == 0x28)
    {
        pDtcState->extendData.DtcAgedCounter += 1;
    }
}



static void ClearDTCExtendedData(DtcState_t *pDtcState)
{
//    struc_dtcStatusBit *pStatusBit = NULL;       
//    pStatusBit = (struc_dtcStatusBit*)&(pDtcState->dtcStatus);   
    if(g_dtcClearRequestFlag || (pDtcState->DTCAgingCounter >= DTC_AGING_LIMIT))
    {
        memset(&(pDtcState->extendData), 0 ,sizeof(pDtcState->extendData));  
    }
}









