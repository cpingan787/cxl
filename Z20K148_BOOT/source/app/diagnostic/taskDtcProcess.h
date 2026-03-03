#ifndef _TASK_APP_DTC_PROCESS_H
#define _TASK_APP_DTC_PROCESS_H

#include <stdint.h>


typedef enum
{
    E_DTC_GROUP_WAKE_DEDECT = 0,
    E_DTC_GROUP_KL15_DEDECT,
    E_DTC_GROUP_UNUSED,
}DtcGroup_e;


typedef enum
{
    E_DTC_ITEM_DCAN_BUSOFF,
    E_DTC_ITEM_KL30_VOLTAGE_HIGH,
    E_DTC_ITEM_KL30_VOLTAGE_LOW,

    E_DTC_ITEM_NODE_MISSING_310,

    E_DTC_ITEM_NODE_MISSING_BCM1_319,
    E_DTC_ITEM_NODE_MISSING_AC1_29D,
    E_DTC_ITEM_NODE_MISSING_PEPS2_295,
    E_DTC_ITEM_NODE_MISSING_GWFD1_2BB,
    E_DTC_ITEM_NODE_MISSING_IP2_27F,
    E_DTC_ITEM_NODE_MISSING_TPMS1_341,
    E_DTC_ITEM_NODE_MISSING_EEM1_2A8,
    
    E_DTC_ITEM_MAX_NUMBER,
}DtcItem_e;



typedef struct _TimeService_t
{
    uint32_t year;
    uint8_t  month;
    uint8_t  day;
    uint8_t  hour;
    uint8_t  minute;
    uint8_t  second;

}TimeService_t;

typedef struct
{
  uint8_t ecuVoltage;
  uint16_t motorSpeed;
  uint16_t vehicleSpeed;
  uint32_t vehicleOdlmeter;
  uint8_t globalRealTime[7];
  //TimeService_t globalRealTime;
}DtcSnapshotRecordGlobal_t;

typedef struct
{
  uint8_t Bit1CycleFlag;
  uint8_t Bit2CycleFlag;
  uint8_t FaultOccurrenceCounter;
  uint8_t FaultPendingCounter;
  uint8_t DtcAgingCounter;
  uint8_t DtcAgedCounter;
}DtcExtendedDataRecordGlobal_t;


/********storage struct************************/
typedef struct
{
  uint8_t testFailed :1;
  uint8_t testFailedThisOperationCycle :1;//
  uint8_t pendingDTC :1;//
  uint8_t confirmedDTC :1;//
  uint8_t testNotCompletedSinceLastClear :1;//
  uint8_t testFailedSinceLastClear :1;//  
  uint8_t testNotCompletedThisOperationCycle :1;
  uint8_t warningIndicatorRequested :1;   
}DtcStatusStoreBit_t;

typedef union
{
  DtcStatusStoreBit_t bitField;
  uint8_t u8Field;
}DtcStatusStore_t;

typedef struct 
{
  DtcStatusStore_t dtcStatus; 
  uint8_t confirmStage;
  uint32_t dtcCode; 
  uint32_t TripCounter;
  uint32_t AgingCounter;
  uint32_t agedCounter;
  uint32_t occurenceCounter;  
  uint32_t currentOperationCycle;
  uint32_t faildOperationCycle;
  
  //snapshot data
  DtcSnapshotRecordGlobal_t snapshotData;
  //Extended Data
  DtcExtendedDataRecordGlobal_t extendData;  
  
}DtcStore_t;

//
int16_t SetDtcFaultState(DtcItem_e item);
int16_t ClearDtcFaultState(DtcItem_e item);
/*
int16_t CanDtcDetectEnable(uint8_t canChannel);
int16_t CanDtcDetectDisable(uint8_t canChannel);
*/
int16_t DtcProcessEnable(void);
int16_t DtcProcessDisable(void);
uint8_t GetDtcProcessSetStatus(void);
void DtcProcessEnableByGroup(DtcGroup_e groupItem);
void DtcProcessDisableByGroup(DtcGroup_e groupItem);

int16_t DtcProcessGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut,uint8_t *statusMaskOut);
int16_t DtcProcessDtcGetCountByMask(uint8_t statusMaskIn,uint32_t *dtcNumOut,uint8_t *statusMaskOut);
int16_t DtcProcessGetExtendedData(uint32_t dtcCode,uint8_t recordNum,uint8_t *extendedData,uint32_t *pExtendedDataLength,uint8_t *statusMaskOut);
int16_t DtcProcessGetReportSnapshotRecordByDtcNumber(uint32_t dtcCode,uint8_t snapshotRecordNum,uint8_t *pSnapshotRecord,uint32_t *pRecordLength,uint8_t *statusMaskOut);
int16_t DtcProcessGetSupportedDtc(uint8_t *pDtcData,uint32_t *pDtcNum,uint8_t *pStutasMaskOut);
uint16_t DtcProcessClearAll(void);





/******only used by EOL test*****************/
int16_t DtcProcessTestGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut,uint8_t *statusMaskOut);
int16_t DtcProcessDtcTestGetCountByMask(uint8_t statusMaskIn,uint32_t *dtcNumOut,uint8_t *statusMaskOut);


void SetVolFault(void);





int16_t TaskAppDtcProcessInit(void);
void TaskDtcProcess( void *pvParameters );




#endif    //_TASK_APP_MCU_CPU_SYSNC_H
