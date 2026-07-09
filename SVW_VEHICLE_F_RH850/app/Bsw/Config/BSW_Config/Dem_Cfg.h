/*==============================================================================*/
/**
 *
 * Copyright (C) iSOFT   (2023)
 *
 * All rights reserved.
 *
 * This document contains proprietary information belonging to iSOFT.
 * Passing on and copying of this document, and communication
 * of its contents is not permitted without prior written authorization.
 * 
 ********************************************************************************
 * 
 *  @MCU                : R7F7015833
 *  @file               : Dem_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-01-19 21:44:12
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef DEM_CFG_H_
#define DEM_CFG_H_


#define DEM_CFG_AR_RELEASE_MAJOR_VERSION     4
#define DEM_CFG_AR_RELEASE_MINOR_VERSION     2
#define DEM_CFG_AR_RELEASE_REVISION_VERSION  2

/* Module Software version information */
#define DEM_CFG_SW_MAJOR_VERSION  1
#define DEM_CFG_SW_MINOR_VERSION  0
#define DEM_CFG_SW_PATCH_VERSION  2


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define DemConf_DemEventParameter_DemEventParameter0         (Dem_EventIdType)1

#define DemConf_DemEventParameter_DemEventParameter1         (Dem_EventIdType)2

#define DemConf_DemEventParameter_DemEventParameter2         (Dem_EventIdType)3

#define DemConf_DemEventParameter_DemEventParameter3         (Dem_EventIdType)4

#define DemConf_DemEventParameter_DemEventParameter4         (Dem_EventIdType)5

#define DemConf_DemEventParameter_DemEventParameter5         (Dem_EventIdType)6

#define DemConf_DemEventParameter_DemEventParameter6         (Dem_EventIdType)7

#define DemConf_DemEventParameter_DemEventParameter7         (Dem_EventIdType)8

/*Extended DEM from Dem_Eth.arxml*/
#define DemConf_DemEventParameter_DemEventParameter20 (Dem_EventIdType)20
#define DemConf_DemEventParameter_DemEventParameter21 (Dem_EventIdType)21
#define DemConf_DemEventParameter_DemEventParameter22 (Dem_EventIdType)22
#define DemConf_DemEventParameter_DemEventParameter23 (Dem_EventIdType)23
#define DemConf_DemEventParameter_DemEventParameter24 (Dem_EventIdType)24
#define DemConf_DemEventParameter_DemEventParameter25 (Dem_EventIdType)25
#define DemConf_DemEventParameter_DemEventParameter26 (Dem_EventIdType)26
#define DemConf_DemEventParameter_DemEventParameter27 (Dem_EventIdType)27
#define DemConf_DemEventParameter_DemEventParameter28 (Dem_EventIdType)28
#define DemConf_DemEventParameter_DemEventParameter29 (Dem_EventIdType)29

/* DEM IDs for Davici configuration */
#define DemConf_DemEventParameter_DemEventParameter         (Dem_EventIdType)0

#define DemConf_DemEventParameter_DemEventParameter_001     (Dem_EventIdType)1

#define DemConf_DemEventParameter_DemEventParameter_002     (Dem_EventIdType)2

#define DemConf_DemEventParameter_DemEventParameter_003     (Dem_EventIdType)3

#define DemConf_DemEventParameter_DemEventParameter_004     (Dem_EventIdType)4

#define DemConf_DemEventParameter_DemEventParameter_005     (Dem_EventIdType)5

#define DemConf_DemEventParameter_DemEventParameter_006     (Dem_EventIdType)6

#define DemConf_DemEventParameter_DemEventParameter_007     (Dem_EventIdType)7

#define DemConf_DemEventParameter_DemEventParameter_008     (Dem_EventIdType)8

#define DemConf_DemEventParameter_DemEventParameter_009     (Dem_EventIdType)9

#define DemConf_DemEventParameter_DemEventParameter_010     (Dem_EventIdType)10

#define DEM_CFG_H_AR_MAJOR_VERSION 4U
#define DEM_CFG_H_AR_MINOR_VERSION 2U
#define DEM_CFG_H_AR_PATCH_VERSION 2U
#define DEM_CFG_H_SW_MAJOR_VERSION 2U
#define DEM_CFG_H_SW_MINOR_VERSION 1U
#define DEM_CFG_H_SW_PATCH_VERSION 0U

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
*                          General Configuration
*******************************************************************************/
/* DemAvailabilitySupport type: Enum
define DEM_EVENT_AVAILABILITY 1
define DEM_NO_AVAILABILITY 2 */
#define DEM_AVAILABILITY_SUPPORT DEM_EVENT_AVAILABILITY

/* DemBswErrorBufferSize Range:0~255 */
#define DEM_BSW_ERROR_BUFFER_SIZE 58u

/* DemClearDTCBehavior type: Enum
define DEM_CLRRESP_NONVOLATILE_FINISH 1
define DEM_CLRRESP_NONVOLATILE_TRIGGER 2
define DEM_CLRRESP_VOLATILE 3 */
#define DEM_CLEAR_DTCBEHAVIOR DEM_CLRRESP_NONVOLATILE_FINISH

/* DemClearDTCLimitation type: Enum
define DEM_ALL_SUPPORTED_DTCS 1
define DEM_ONLY_CLEAR_ALL_DTCS 2 */
#define DEM_CLEAR_DTCLIMITATION DEM_ALL_SUPPORTED_DTCS

/* DemDebounceCounterBasedSupport Range: true or false */
#define DEM_DEBOUNCE_COUNTER_BASED_SUPPORT STD_ON

/* DemDebounceTimeBasedSupport Range: true or false */
#define DEM_DEBOUNCE_TIME_BASED_SUPPORT STD_ON

/* DemDevErrorDetect Range: true or false */
#define DEM_DEV_ERROR_DETECT STD_ON

/* DemEnvironmentDataCapture type: Enum
define DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING 1
define DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING 2 */
#define DEM_ENVIRONMENT_DATA_CAPTURE DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING

/* DemEventCombinationSupport type: Enum
define DEM_EVCOMB_DISABLED 1
define DEM_EVCOMB_ONRETRIEVAL 2
define DEM_EVCOMB_ONSTORAGE 3 */
#define DEM_EVENT_COMBINATION_SUPPORT DEM_EVCOMB_DISABLED

/* DemEventDisplacementStrategy type: Enum
define DEM_DISPLACEMENT_FULL 1
define DEM_DISPLACEMENT_NONE 2
define DEM_DISPLACEMENT_PRIO_OCC 3 */
#define DEM_EVENT_DISPLACEMENT_STRATEGY DEM_DISPLACEMENT_FULL

/* DemEventMemoryEntryStorageTrigger type: Enum
define DEM_TRIGGER_ON_CONFIRMED 1
define DEM_TRIGGER_ON_FDC_THRESHOLD 2
define DEM_TRIGGER_ON_PENDING 3
define DEM_TRIGGER_ON_TEST_FAILED 4 */
#define DEM_EVENT_MEMORY_ENTRY_STORAGE_TRIGGER DEM_TRIGGER_ON_TEST_FAILED

/* DemGeneralInterfaceSupport Range: true or false */
#define DEM_GENERAL_INTERFACE_SUPPORT STD_ON

/* DemImmediateNvStorageLimit Range:1~255 */
#define DEM_IMMEDIATE_NV_STORAGE_LIMIT 0xffu

/* DemMaxNumberEventEntryEventBuffer Range:1~250 */
#define DEM_MAX_NUMBER_EVENT_ENTRY_EVENT_BUFFER 0u

/* DemMaxNumberPrestoredFF Range:0~255 */
#define DEM_MAX_NUMBER_PRESTORED_FF 0u

/* DemOccurrenceCounterProcessing type: Enum
define DEM_PROCESS_OCCCTR_CDTC 1
define DEM_PROCESS_OCCCTR_TF 2
define DEM_PROCESS_OCCCTR_TFTOC 3 */
/*DEM_PROCESS_OCCCTR_TF is only triggered by the TestFailed bit (and the fault confirmation is not considered) This
parameter is mandatory in case of J1939.
DEM_PROCESS_OCCCTR_TFTOC is only used in ASIC requirement*/
#define DEM_OCCURRENCE_COUNTER_PROCESSING DEM_PROCESS_OCCCTR_CDTC

/* DemOperationCycleStatusStorage Range: true or false */
#define DEM_OPERATION_CYCLE_STATUS_STORAGE STD_OFF

/*DemPTOSupport*/
#define DEM_PTO_SUPPORT STD_OFF

/* DemResetConfirmedBitOnOverflow Range: true or false */
#define DEM_RESET_CONFIRMED_BIT_ON_OVERFLOW STD_ON

/* DemGeneral/DemStatusBitHandlingTestFailedSinceLastClear
define DEM_STATUS_BIT_AGING_AND_DISPLACEMENT 1
define DEM_STATUS_BIT_NORMAL 2 */
#define DEM_STATUS_BIT_HANDLING_TEST_FAILED_SINCE_LAST_CLEAR DEM_STATUS_BIT_NORMAL

/* DemStatusBitStorageTestFailed Range: true or false */
#define DEM_STATUS_BIT_STORAGE_TEST_FAILED STD_OFF

/* DemSuppressionSupport type: Enum
define DEM_DTC_SUPPRESSION 1
define DEM_NO_SUPPRESSION 2 */
#define DEM_SUPPRESSION_SUPPORT DEM_DTC_SUPPRESSION

/* DemTaskTime */
#define DEM_TASK_TIME 10u

/* DemTriggerDcmReports Range: true or false */
#define DEM_TRIGGER_DCM_REPORTS STD_OFF

/* DemTriggerDltReports Range: true or false */
#define DEM_TRIGGER_DLT_REPORTS STD_OFF

/* DemTriggerFiMReports Range: true or false */
#define DEM_TRIGGER_FIM_REPORTS STD_OFF

/* DemTriggerMonitorInitBeforeClearOk Range: true or false */
#define DEM_TRIGGER_MONITOR_INIT_BEFORE_CLEAR_OK STD_OFF

/* DemTypeOfDTCSupported type: Enum
define DEM_DTC_TRANSLATION_ISO11992_4 1
define DEM_DTC_TRANSLATION_ISO14229_1 2
define DEM_DTC_TRANSLATION_ISO15031_6 3
define DEM_DTC_TRANSLATION_SAEJ1939_73 4
define DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04 5 */
#define DEM_TYPE_OF_DTCSUPPORTED DEM_DTC_TRANSLATION_ISO14229_1

/* DemTypeOfFreezeFrameRecordNumeration type: Enum
define DEM_FF_RECNUM_CALCULATED 1
define DEM_FF_RECNUM_CONFIGURED 2 */
#define DEM_TYPE_OF_FREEZE_FRAME_RECORD_NUMERATION DEM_FF_RECNUM_CONFIGURED

/* DemVersionInfoApi Range: true or false */
#define DEM_VERSION_INFO_API STD_ON

/* DemAgingRequieresTestedCycle Range: true or false */
#define DEM_AGING_REQUIERES_TESTED_CYCLE STD_ON

#define DEM_DEAL_MAINFUNCTION_ENABLE STD_OFF

#define DEM_ENABLE_SOFT_FILTER_OF_PASS STD_ON

#define DEM_NVRAM_DIVADED    STD_OFF

/* DemDtcStatusAvailabilityMask Range:0~255 */
#define DEM_DTC_STATUS_AVAILABILITY_MASK 0xffu

/*******************************************************************************
*                          Memory Configuration
*******************************************************************************/
/* COUNT(DemGeneral/Dem<xx>Memory) */
#define DEM_MEM_DEST_TOTAL_NUM 1u

/* MAX(DemGeneral/Dem<XX>Memory/DemMaxNumberEventEntry<XX>) */
#define DEM_MEM_DEST_MAX_ENTRY_NUM 59u

/* DemMaxNumberEventEntryPermanent Range:0~255 */
#define DEM_MAX_NUMBER_EVENT_ENTRY_PERMANENT 0u

/* DemPrimaryMemory 1-1 */
/* DemMaxNumberEventEntryPrimary Range:1~255 */
#define DEM_MAX_NUMBER_EVENT_ENTRY_PRIMARY 59u

/* DemMirrorMemory 0-1 */
/* DemMaxNumberEventEntryMirror Range:0~255 */
#define DEM_MAX_NUMBER_EVENT_ENTRY_MIRROR  0u

/*DemMaxNumberEventEntryUserDefined*/

/*DemUserDefinedMemoryIdentifier*/

/* DemGeneral/DemNvRamBlockId number */
#define DEM_NVRAM_BLOCKID_NUM 2

/* DemGeneral/DemEventMemorySet/DemGlobalFreezeFrame */
#define DEM_GLOBAL_FREEZE_FRAME_SUPPORT   STD_ON
#define DEM_GLOBAL_FREEZE_FRAME_LENGTH    13

/*******************************************************************************
*                          OBD Configuration
*******************************************************************************/
/*DemOBDSupport
define DEM_OBD_DEP_SEC_ECU 1
define DEM_OBD_MASTER_ECU 2
define DEM_OBD_NO_OBD_SUPPORT 3
define DEM_OBD_PRIMARY_ECU 4*/
#define DEM_OBD_SUPPORT DEM_OBD_NO_OBD_SUPPORT

/*******************************************************************************
*                          J1939 Configuration
*******************************************************************************/
#define DEM_J1939_SUPPORT STD_OFF

/*DemJ1939ClearDtcSupport*/
#define DEM_J1939_CLEAR_DTC_SUPPORT STD_OFF

/*DemJ1939ReadingDtcSupport*/
#define DEM_J1939_READING_DTC_SUPPORT STD_OFF

/*DemJ1939Dm31Support*/
#define DEM_J1939_DM31_SUPPORT STD_OFF

/*DemJ1939ExpandedFreezeFrameSupport*/
#define DEM_J1939_EXPANDED_FREEZE_FRAME_SUPPORT STD_OFF

/*DemJ1939FreezeFrameSupport*/
#define DEM_J1939_FREEZE_FRAME_SUPPORT STD_OFF

/*DemJ1939RatioSupport*/
#define DEM_J1939_RATIO_SUPPORT STD_OFF

/*DemJ1939Readiness1Support*/
#define DEM_J1939_READINESS1_SUPPORT STD_OFF

/*DemJ1939Readiness2Support*/
#define DEM_J1939_READINESS2_SUPPORT STD_OFF

/*DemJ1939Readiness3Support*/
#define DEM_J1939_READINESS3_SUPPORT STD_OFF

/*******************************************************************************
*                          Optimization Configuration
*******************************************************************************/
#define DEM_OCC6EANLE STD_OFF
#define DEM_OCC4EANLE STD_OFF
#define DEM_MAXFDCSINCELASTCLEAR_EANLE STD_OFF
#define DEM_CYCLESSINCEFRISTFAILEDEANLE STD_OFF
#define DEM_CYCLESSINCELASTFAILEDEANLE STD_OFF
#define DEM_TRIGGERONFDCTHRESHOLDEANLE STD_OFF
#define DEM_TRIGGERONTESTFAILEDEANLE STD_ON
#define DEM_TRIGGERONPENDINGEDEANLE STD_OFF
#define DEM_TRIGGERONCONFIRMEDEDEANLE STD_ON
#define DEM_TRIGGERONPASSEDEANLE STD_OFF
#define DEM_TRIGGERONMIRROREANLE STD_OFF
#define DEM_ONEDTCMAPPINGMUTILEVENT STD_OFF
#define DEM_FAILURE_PENGDING_SAIC     STD_ON
#define DEM_AGEDCOUNT_SAIC     STD_ON
#define DEM_STATUSINDICATOR30ENABLE STD_OFF

#endif /* DEM_CFG_H_ */
/*******************************************************************************
**                      end of file                                           **
*******************************************************************************/

