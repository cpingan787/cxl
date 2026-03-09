#ifndef _TASK_APP_DTC_PROCESS_H
#define _TASK_APP_DTC_PROCESS_H

#include <stdint.h>

typedef enum
{
  E_DTC_GROUP_WAKE_DEDECT = 0,
  E_DTC_GROUP_KL15_DEDECT,
  E_DTC_GROUP_UNUSED,
} DtcGroup_e;

typedef enum
{

  //_cxl
  E_DTC_ITEM_TCAN_BUSOFF,               // U007388: T-CAN 总线离线
  //E_DTC_ITEM_BACKUP_BATTERY_LOW,        // B320E16: 后备电池电量低
  E_DTC_ITEM_MAIN_POWER_OVER_RANGE,     // B11001C: 主电源电压超限
  E_DTC_ITEM_MAIN_POWER_OVER_MAX_RANGE, // B110091: 主电源电压超极限
  E_DTC_ITEM_MEMORY_FAILURE,            // B320244: 内部数据存储器故障

  E_DTC_ITEM_MPU_GPS_ANTENNA_OPEN_SHORT, // B320415: GPS 天线开路或短路到电源 (MPU)
  E_DTC_ITEM_MPU_GPS_ANTENNA_SHORT_GND,  // B320411: GPS 天线短路到地 (MPU)

  E_DTC_ITEM_MPU_4G_MAIN_ANT_OPEN,      // B320513: 4G 主天线开路 (MPU)
  E_DTC_ITEM_MPU_4G_MAIN_ANT_SHORT_BAT, // B320512: 4G 主天线短路到电源 (MPU)
  E_DTC_ITEM_MPU_4G_MAIN_ANT_SHORT_GND, // B320511: 4G 主天线短路到地 (MPU)

  E_DTC_ITEM_MPU_4G_AUX_ANT_OPEN,      // B320613: 4G 副天线开路 (MPU)
  E_DTC_ITEM_MPU_4G_AUX_ANT_SHORT_BAT, // B320612: 4G 副天线短路到电源 (MPU)
  E_DTC_ITEM_MPU_4G_AUX_ANT_SHORT_GND, // B320611: 4G 副天线短路到地 (MPU)

  E_DTC_ITEM_MPU_SIM_FAULT,              // B320909: SIM 卡故障 (MPU)
  E_DTC_ITEM_MPU_4G_INTERNAL_COMM_FAULT, // B320104: 4G 模块内部通信故障 (MPU)
  E_DTC_ITEM_MPU_ETH_LINE_FAULT,         // B320B79: 以太网物理线路故障 (MPU)
  E_DTC_ITEM_MPU_ETH_COMM_FAULT,         // B320B08: 以太网通信错误 (MPU)
  E_DTC_ITEM_MPU_DDR_FAULT,              // B321296: 模组 DDR 故障 (MPU)

  E_DTC_ITEM_MPU_BCALL_KEY_STUCK, // B320707: B-Call 按键卡滞 (MPU)
  E_DTC_ITEM_MPU_ECALL_KEY_STUCK, // B320807: E-Call 按键卡滞 (MPU)

  E_DTC_ITEM_ECALL_LIGHT_SHORT_GND, // B320C11: E-Call 指示灯短路到地
  E_DTC_ITEM_BCALL_LIGHT_SHORT_GND, // B320D11: B-Call 指示灯短路到地

  E_DTC_ITEM_4G_MODULE_VOLTAGE,    // B32011C: 4G 模块电压异常 (MPU)
  E_DTC_ITEM_CAN_POWER_ABNORMAL,   // B33001C: CAN 电源电压超限
  E_DTC_ITEM_MPU_MIC_POWER_FAULT,  // B32031C: 麦克风电源故障 (MPU)
  E_DTC_ITEM_MPU_MIC_SIGNAL_FAULT, // B32031F: 麦克风信号输入故障 (MPU)

  E_DTC_ITEM_MPU_OPENCPU_OVER_TEMP, // B320198: OpenCPU 过温 (MPU)

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
} DtcItem_e;

typedef struct _TimeService_t
{
  uint32_t year;
  uint8_t month;
  uint8_t day;
  uint8_t hour;
  uint8_t minute;
  uint8_t second;

} TimeService_t;

typedef struct _TIME_SERVICE
{
  uint32_t year;
  uint8_t month;
  uint8_t day;
  uint8_t hour;
  uint8_t minute;
  uint8_t second;

} TIME_SERVICE;

// typedef struct
// {
//   uint8_t ecuVoltage;
//   uint16_t motorSpeed;
//   uint16_t vehicleSpeed;
//   uint32_t vehicleOdlmeter;
//   uint8_t globalRealTime[7];
//   uint8_t PowerMode;
// 	uint16_t SOC;

// } DtcSnapshotRecordGlobal_t;
typedef struct
{
  uint16_t vehicleSpeed;     // 0-1
  int16_t motorSpeed;        // 2-3
  uint16_t ecuVoltage;       // 4-5
  uint8_t keyStatus;         // 6
  uint8_t reserved;          // 7
  uint8_t globalRealTime[6]; // 8-13
} DtcSnapshotRecordGlobal_t;

typedef struct
{
  uint8_t Bit1CycleFlag;
  uint8_t Bit2CycleFlag;
  uint8_t FaultOccurrenceCounter;
  uint8_t FaultPendingCounter;
  uint8_t DtcAgingCounter;
  uint8_t DtcAgedCounter;
} DtcExtendedDataRecordGlobal_t;

/********storage struct************************/
typedef struct
{
  uint8_t testFailed : 1;
  uint8_t testFailedThisOperationCycle : 1;   //
  uint8_t pendingDTC : 1;                     //
  uint8_t confirmedDTC : 1;                   //
  uint8_t testNotCompletedSinceLastClear : 1; //
  uint8_t testFailedSinceLastClear : 1;       //
  uint8_t testNotCompletedThisOperationCycle : 1;
  uint8_t warningIndicatorRequested : 1;
} DtcStatusStoreBit_t;

typedef union
{
  DtcStatusStoreBit_t bitField;
  uint8_t u8Field;
} DtcStatusStore_t;

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

  // snapshot data
  DtcSnapshotRecordGlobal_t snapshotData;
  // Extended Data
  DtcExtendedDataRecordGlobal_t extendData;

} DtcStore_t;

int16_t DtcUpdateStatusFromMpu(DtcItem_e item, uint8_t statusByte); //_cxl

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

int16_t DtcProcessGetListByMask(uint8_t statusMaskIn, uint8_t *dtcData, uint32_t *dtcNumOut, uint8_t *statusMaskOut);
int16_t DtcProcessDtcGetCountByMask(uint8_t statusMaskIn, uint32_t *dtcNumOut, uint8_t *statusMaskOut);
int16_t DtcProcessGetExtendedData(uint32_t dtcCode, uint8_t recordNum, uint8_t *extendedData, uint32_t *pExtendedDataLength, uint8_t *statusMaskOut);
int16_t DtcProcessGetReportSnapshotRecordByDtcNumber(uint32_t dtcCode, uint8_t snapshotRecordNum, uint8_t *pSnapshotRecord, uint32_t *pRecordLength, uint8_t *statusMaskOut);
int16_t DtcProcessGetSupportedDtc(uint8_t *pDtcData, uint32_t *pDtcNum, uint8_t *pStutasMaskOut);
uint16_t DtcProcessClearAll(void);

/******only used by EOL test*****************/
int16_t DtcProcessTestGetListByMask(uint8_t statusMaskIn, uint8_t *dtcData, uint32_t *dtcNumOut, uint8_t *statusMaskOut);
int16_t DtcProcessDtcTestGetCountByMask(uint8_t statusMaskIn, uint32_t *dtcNumOut, uint8_t *statusMaskOut);

void SetVolFault(void);

int16_t TaskAppDtcProcessInit(void);
void TaskDtcProcess(void *pvParameters);

void DtcReloadSettingControl(void);
#endif //_TASK_APP_MCU_CPU_SYSNC_H
