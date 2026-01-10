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
	E_DTC_ITEM_KL30_VOLTAGE_HIGH, //HIGH
	E_DTC_ITEM_KL30_VOLTAGE_LOW,//LOW
	E_DTC_ITEM_BDCAN_BUSOFF,//CAN1
	E_DTC_ITEM_PTCAN_BUSOFF,//CAN2
	E_DTC_ITEM_ADCAN_BUSOFF,//CANOTA3
	E_DTC_ITEM_GSM_ANTENNA_SHROT,//GPS 
	E_DTC_ITEM_GSM_ANTENNA_OPEN,//GPS
	E_DTC_ITEM_GPS_ANTENNA_SHROT,//GPS 
	E_DTC_ITEM_GPS_ANTENNA_OPEN,//GPS
	E_DTC_ITEM_SIM_CARD_FAULT,//sim
	E_DTC_ITEM_WIFI_MODULE_FAULT,//LTE
	E_DTC_ITEM_BATTERY_FAULT,//BATTERY LOST
	E_DTC_ITEM_LOST_COMMUNICATION_ABS,//ABS
	E_DTC_ITEM_LOST_COMMUNICATION_ACU,//ACU
	E_DTC_ITEM_LOST_COMMUNICATION_EPS,//EPS
	E_DTC_ITEM_LOST_COMMUNICATION_BMS,//BMS
	E_DTC_ITEM_LOST_COMMUNICATION_IPU,//IPU  
	E_DTC_ITEM_LOST_COMMUNICATION_VCU,//VCU
	E_DTC_ITEM_LOST_COMMUNICATION_BCM,//BCM  
	E_DTC_ITEM_LOST_COMMUNICATION_IPK,//IPK
	E_DTC_ITEM_LOST_COMMUNICATION_ACM,//ACM
	E_DTC_ITEM_E2E_ABS,//ABS
	E_DTC_ITEM_E2E_ACU,//ACU
	E_DTC_ITEM_E2E_BMS,//BMS
	E_DTC_ITEM_E2E_IPU,//IPU  
	E_DTC_ITEM_E2E_VCU,//VCU
	E_DTC_ITEM_E2E_BCM,//BCM  
	E_DTC_ITEM_E2E_IPK,//IPK
	E_DTC_ITEM_E2E_ACM,//ACM
    E_DTC_ITEM_MAX_NUMBER,
}DtcItem_e;



typedef struct _TIME_SERVICE
{
    uint32_t year;
    uint8_t  month;
    uint8_t  day;
    uint8_t  hour;
    uint8_t  minute;
    uint8_t  second;

}TIME_SERVICE;

typedef struct
{
	uint8_t PowerMode;
	uint16_t ecuVoltage;
	uint16_t vehicleSpeed;
	uint32_t vehicleOdlmeter;
	uint8_t globalRealTime[6];
	uint16_t SOC;

}DtcSnapshotRecordGlobal_t;

typedef struct
{
  uint8_t Bit1CycleFlag;
  uint8_t Bit2CycleFlag;
  uint8_t FaultOccurrenceCounter;
  uint8_t FaultPendingCounter;
  uint8_t DtcAgingCounter;
  uint8_t DtcAgedCounter;
  uint8_t globalRealTime[4];
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
}struc_dtc_status_store;

typedef union
{
  struc_dtc_status_store bitField;
  uint8_t u8Field;
}dtc_status_store;

typedef struct 
{
  dtc_status_store dtcStatus; 
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
  
}struc_dtc_store;

//
int16_t SetDtcFaultState(DtcItem_e item);
int16_t ClearDtcFaultState(DtcItem_e item);
int16_t GetDtcFaultState(DtcItem_e item);

/*
int16_t CanDtcDetectEnable(uint8_t canChannel);
int16_t CanDtcDetectDisable(uint8_t canChannel);
*/
int16_t DtcProcessEnable(void);
int16_t DtcProcessDisable(void);
uint8_t GetDtcProcessSetStatus(void);
void DtcProcessEnableByGroup(DtcGroup_e groupItem);
void DtcProcessDisableByGroup(DtcGroup_e groupItem);
int16_t DtcProcessGetListByCAN(uint8_t *dtcData,uint32_t *dtcNumOut);
int16_t DtcProcessGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut,uint8_t *statusMaskOut);
int16_t DtcProcessDtcGetCountByMask(uint8_t statusMaskIn,uint32_t *dtcNumOut,uint8_t *statusMaskOut);
int16_t DtcProcessGetExtendedData(uint32_t dtcCode,uint8_t recordNum,uint8_t *extendedData,uint32_t *pExtendedDataLength,uint8_t *statusMaskOut);
int16_t DtcProcessGetReportSnapshotRecordByDtcNumber(uint32_t dtcCode,uint8_t snapshotRecordNum,uint8_t *pSnapshotRecord,uint32_t *pRecordLength,uint8_t *statusMaskOut);
int16_t DtcProcessGetSupportedDtc(uint8_t *pDtcData,uint32_t *pDtcNum,uint8_t *pStutasMaskOut);
uint16_t DtcProcessClearAll(void);

uint8_t GetRemoteDtcStatus(void);




/******only used by EOL test*****************/
int16_t DtcProcessTestGetListByMask(uint8_t statusMaskIn,uint8_t *dtcData,uint32_t *dtcNumOut);
int16_t DtcProcessDtcTestGetCountByMask(uint8_t statusMaskIn,uint32_t *dtcNumOut,uint8_t *statusMaskOut);


void SetVolFault(void);





int16_t TaskAppDtcProcessInit(void);
void TaskDtcProcess( void *pvParameters );




#endif    //_TASK_APP_MCU_CPU_SYSNC_H
