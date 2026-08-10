#ifndef _TASK_APP_DTC_PROCESS_H
#define _TASK_APP_DTC_PROCESS_H

#include <stdint.h>
#include "Dem.h"
#include "Rte_Dem_Type.h"
#include "Rte_NvM_Type.h"
#include "r_port.h"
#include "Std_Types.h"
#include "Dem_Dcm.h"

typedef enum                                          /*对外可查询的对象*/
{
    E_DTC_QUERY_5G_MAIN_ANT = 0,                                                                      
    E_DTC_QUERY_5G_DIV1_ANT,                                                                           
    E_DTC_QUERY_MIC_IN,
    E_DTC_QUERY_GPS_ANT,
    E_DTC_QUERY_SIM_CARD,
    E_DTC_QUERY_SPEAKER, 
    E_DTC_QUERY_LED,
    E_DTC_QUERY_BACKUP_BAT,                                         
    E_DTC_QUERY_MAX                                              
} DtcQueryObj_e;

typedef enum                                                      /*定义统一返回状态*/
{
    E_DTC_QUERY_STATE_NORMAL = 0,                                 
    E_DTC_QUERY_STATE_OPEN,                                       
    E_DTC_QUERY_STATE_SHORT_GND,                                  
    E_DTC_QUERY_STATE_SHORT_BAT, 
    E_DTC_QUERY_STATE_SIM_NOT_ONLINE, 
    E_DTC_QUERY_STATE_SIM_INVALID,
    E_DTC_QUERY_STATE_BACKUP_BAT_HIGH,
    E_DTC_QUERY_STATE_BACKUP_BAT_LOW,
    E_DTC_QUERY_STATE_BACKUP_BAT_AGING,                            
    E_DTC_QUERY_STATE_UNKNOWN = 0xFF                             /*非法状态/查询失败*/
} DtcQueryState_e; 

typedef enum
{
    ANT5G_MAIN_INDEX = 0,  /* 主天线索引*/
    ANT5G_DIV1_INDEX,      /* 第一分集索引*/
    ANT5G_ANT_MAX          /* 分集总数*/
} ANT5G_DetectIndex_t;

typedef enum
{
    ANT_DTC_STATE_NORMAL = 0, 
    ANT_DTC_STATE_SHORT_GND, 
    ANT_DTC_STATE_OPEN 
} ANT_DtcFaultState_e; /* 单根天线当前诊断状态 */

typedef struct
{
    Dem_EventIdType shortEventId; /* 本路短路对应的 Dem EventId */
    Dem_EventIdType openEventId;  /* 本路开路对应的 Dem EventId */
    uint16_t adcChannel;          /* 本路使用的 ADC 通道 */
    boolean switchEnable;         /* 是否需切换 */
} ANT_DetectConfig_t;

typedef struct
{
    uint8_t shortCnt;  /* 短路连续计数 */
    uint8_t openCnt;   /* 开路连续计数 */
    uint8_t recoverCnt;     /* 恢复正常连续计数 */
    uint16_t mainReturnCnt; /* 切换主天线计数 */
    ANT_DtcFaultState_e faultState; /* 当前锁存的故障状态 */
    boolean backupActive; /* 当前是否已经切到备用天线，仅主天线使用 */
    boolean passedReportedThisCycle; /* 驱动老化计数 */
} ANT_DetectState_t;   /* 单路天线运行状态 */

#if (0)

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

#endif






#endif    //_TASK_APP_MCU_CPU_SYSNC_H


DtcQueryState_e DtcGetObjState(DtcQueryObj_e obj);   //对外的查询对象状态接口

void DtcDetectProcessInit(void);

void kl30VoltageDTCProcess(uint16_t powerVoltage);

//void kl30VoltageDTCProcess(uint16_t powerVoltage);

uint8_t GetTripCounterDetectEnable(void);

void TripCntStore_DetectProcess_200ms(void);

//void SystemTimeMs(void);

void EepromSetReadAllResult(NvM_RequestResultType readAllResult);

uint8_t GetSyncMsgLossAndIccEnable(void);

boolean Dtc_IsCommonMonitorEnable(void); //公共使能接口
boolean Diag_CheckUsgMdPrecondition1s(uint8_t *pCnt);
boolean IsCanNetworkNormal(void);
