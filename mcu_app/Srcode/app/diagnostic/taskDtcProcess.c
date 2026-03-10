#include "FreeRTOS.h"
#include "task.h"
#include <string.h>
#include "taskDtcProcess.h"

#include "canHal.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "powerManageSdk.h"

#include "parameterStoreManageApp.h"

#define DTC_STATUS_BIT0_ENABLE           1//test failed
#define DTC_STATUS_BIT1_ENABLE           1//test failed this monitoring cycle
#define DTC_STATUS_BIT2_ENABLE           0//pending DTC
#define DTC_STATUS_BIT3_ENABLE           1//confirmed DTC
#define DTC_STATUS_BIT4_ENABLE           0//test not completed since last clear
#define DTC_STATUS_BIT5_ENABLE           0//test failed since last clear
#define DTC_STATUS_BIT6_ENABLE           1//test not completed this monitoring cycle
#define DTC_STATUS_BIT7_ENABLE           0//warning indicator requested


#define DTC_AGING_LIMIT                  (40)



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
  for(i=0;i<size;i++)//?§Ø??§Þ???DTC
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









