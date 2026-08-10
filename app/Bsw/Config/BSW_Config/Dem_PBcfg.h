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
 *  @MCU                : R7F7015813
 *  @file               : Dem_PBcfg.h
 *  @author             : iSoft
 *  @date               : 2026-07-09 16:48:09
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef DEM_PBCFG_H_
#define DEM_PBCFG_H_

#include "Dem_Cfg.h"
#include "Dem_Types.h"

/* COUNT(DemGeneral/DemCallbackDTCStatusChanged) 0-* */
#define DEM_CALLBACK_DTC_STATUS_CHANGED_NUM 0u

/*******************************************************************************
*                          DemDataElementClass Configuration
*******************************************************************************/
/*DemDataElementClass*/
#define DEM_DATA_ELEMENT_CLASS_NUM  10

#define DEM_EXTERAL_DATA_ELEMENT_CLASS_NUM  6u

/*******************************************************************************
*                          Condition Configuration
*******************************************************************************/
/* DemOperationCycle 1-256 */
#define DEM_OPERATION_CYCLE_NUM 1u

#define DEMPOWER_ID 0u

/* DemEnableCondition 0-255 */
#define DEM_ENABLE_CONDITION_NUM 4u

#define DemEnableCondition_U156217_ID 0u
#define DemEnableCondition_U156316_ID 1u
#define DemEnableCondition_U226200_ID 2u
#define DemEnableCondition_PowerONDlyTimer_ID 3u

/* DemEnableConditionGroup 0-255 */
#define DEM_ENABLE_CONDITION_GROUP_NUM 3u

/* DemEnableCondition 0-255 */
#define DEM_STORAGE_CONDITION_NUM 0u

/* DemStorageConditionGroup 0-255 */
#define DEM_STORAGE_CONDITION_GROUP_NUM 0u

/*******************************************************************************
*                          FreezeFrame Configuration
*******************************************************************************/
#define DEM_FFPRESTORAGE_SUPPORT   STD_OFF

/* DemSPNClass 0-0xFFFF */
#define DEM_SPN_CLASS_NUM 0u

#define DEM_J1939_FREEZE_FRAME_CLASS_NUM 0u

#define DEM_SPN_CLASS_REF_TOTAL_NUM 0u

/* DemDidClass 0-0xFFFF */
#define DEM_DID_CLASS_NUM 6u

/* DemFreezeFrameClass 0-65535 */
#define DEM_FREEZE_FRAME_CLASS_NUM 2u

/* SUM COUNT DemFreezeFrameClass/DemDidClassRef */
#define DEM_DID_CLASS_REF_TOTAL_NUM 6u

/* DemFreezeFrameRecordClass 0-255 */
#define DEM_FREEZE_FRAME_RECORD_CLASS_NUM 1u

#define DEM_FREEZE_FRAME_REC_NUM_CLASS_NUM 1u

/* SUM(COUNT(DemGeneral/DemFreezeFrameRecNumClass/DemFreezeFrameRecordClassRef)) */
#define DEM_FREEZE_FRAME_RECORD_CLASS_REF_TOTAL_NUM 1u

/* MAX(COUNT((DemGeneral/DemFreezeFrameRecNumClass/DemFreezeFrameRecordClassRef)))  1-254 */
#define DEM_MAX_NUMBER_FF_RECORDS 1u

/* DemPidClass 0-0xFFFF */
#define DEM_PID_CLASS_NUM 0u
#define DEM_PID_TOTAL_SIZE  0u /*total size of all pid*/

/* max value of PID and all ref freezeframe size) */
#define DEM_FREEZE_FRAME_MAX_LEN 13u
/*******************************************************************************
*                          ExtendedData Configuration
*******************************************************************************/
/* DemExtendedDataRecordClass 0-253 */
#define DEM_EXTENDED_DATA_RECORD_CLASS_NUM 4u

/* DemExtendedDataClass 0-* */
#define DEM_EXTENDED_DATA_CLASS_NUM 1u

/* SUM(COUNT(DemGeneral/DemExtendedDataClass/DemExtendedDataRecordClassRef)) */
#define DEM_EXTENDED_DATA_RECORD_CLASS_REF_TOTAL_NUM  4u

/* MAX(COUNT(DemGeneral/DemExtendedDataClass/DemExtendedDataRecordClassRef)) */
#define DEM_EXTENDED_DATA_MAX_REF_NUM 4u

/* MAX(SUM(DemGeneral/DemExtendedDataClass/DemExtendedDataRecordClassRef/DataSize)) */
#define DEM_EXTENDED_DATA_MAX_LEN 0u
/*******************************************************************************
*                          DTC Configuration
*******************************************************************************/
/* DemGroupOfDTC 0-255 */
#define DEM_GROUP_OF_DTC_NUM 0u

#define DEM_DTC_REF_EMISSION_NUM  0u

/* DemDTC 0-65535 */
#define DEM_DTC_NUM 62u

#define DEM_WWWOBD_NUM 0u

/* DemDTCAttributes 0-65535 */
#define DEM_DTC_ATTRIBUTES_NUM 2u

#define DEM_J1939_NODE_NUM 0u
#define DEM_J1939_NODEID_MAX_NUM  0u

/* DemObdDTC 0-65535 */
#define DEM_OBD_DTC_NUM 0u

/*******************************************************************************
*                          Indicator Configuration
*******************************************************************************/
/* DemIndicator 0..255 */
#define DEM_INDICATOR_NUM 1u

#define Indicator_0 0u

/*DemMILIndicatorRef*/
#define DEM_MALFUNCTION_LAMP_INDICATOR DemIndicator_INVALID

/*DemProtectLampIndicatorRef */
#define DEM_PROTECT_LAMP_INDICATOR DemIndicator_INVALID

/*DemRedStopLampIndicatorRef */
#define DEM_RED_STOP_LAMP_INDICATOR DemIndicator_INVALID

/*DemAmberWarningLampIndicatorRef */
#define DEM_AMBER_WARING_LAMP_INDICATOR DemIndicator_INVALID

/* SUM(COUNT(DemConfigSet/DemEventParameter/DemIndicatorAttribute)) */
#define DEM_INDICATOR_ATTRIBUTE_TOTAL_NUM 62u

/*******************************************************************************
*                          Debounce Configuration
*******************************************************************************/
/* DemDebounceCounterBasedClass 0-65535 */
#define DEM_DEBOUNCE_COUNTER_BASED_CLASS_NUM 5u

/* COUNT(DemConfigSet/DemEventParameter)
 * WHERE ((DemEventParameter/DemDebounceAlgorithmClass == DemDebounceCounterBased)
 *         && DemDebounceCounterBased/DemDebounceCounterBasedClassRef/DemDebounceCounterStorage == true) */
#define DEM_DEBOUNCE_COUNTER_STORAGE_NUM 0u

/* DemDebounceTimeBaseClass 0-65535 */
#define DEM_DEBOUNCE_TIME_BASE_CLASS_NUM 14u

/* COUNT(DemConfigSet/DemEventParameter)
 * WHERE (DemEventParameter/DemDebounceAlgorithmClass == DemDebounceTimeBase) */
#define DEM_DEBOUNCE_TIME_BASED_EVENT_NUM 43u

/* COUNT(DemConfigSet/DemEventParameter)
 * WHERE (DemEventParameter/DemDebounceAlgorithmClass == DemDebounceCounterBased) */
#define DEM_DEBOUNCE_COUNTER_BASED_EVENT_NUM 19u

/* COUNT(DemConfigSet/DemEventParameter)
 * WHERE (DemEventParameter/DemDebounceAlgorithmClass == DemDebounceMonitorInternal) */
#define DEM_DEBOUNCE_MONITOR_INTERNAL_EVENT_NUM 0u

/* SUM(COUNT(DemConfigSet/DemEventParameter/DemCallbackEventStatusChanged))) */
#define DEM_CALLBACK_EVENT_STATUS_CHANGED_TOTAL_NUM 0u

/*******************************************************************************
*                          Event Configuration
*******************************************************************************/
/*DemComponentClass*/
#define DEM_COMPONENT_NUM 0u

#define DEM_IMMEDITE_CHILD_COMPONENT_MAX_NUM  0u

/* SUM(COUNT(DemConfigSet/DemEventParameter/DemCallbackClearEventAllowed))) */
#define DEM_CALLBACK_CLEAR_EVENT_ALLOWED_TOTAL_NUM 0u

/* DemEventParameter 1-65535 */
#define DEM_EVENT_PARAMETER_NUM 62u

#define EventParameter_0x951171  1u
#define EventParameter_0x951512  2u
#define EventParameter_0x952111  3u
#define EventParameter_0x952113  4u
#define EventParameter_0x953111  5u
#define EventParameter_0x953113  6u
#define EventParameter_0x953311  7u
#define EventParameter_0x953312  8u
#define EventParameter_0x953313  9u
#define EventParameter_0x953411  10u
#define EventParameter_0x953412  11u
#define EventParameter_0x953413  12u
#define EventParameter_0x953512  13u
#define EventParameter_0x954100  14u
#define EventParameter_0x954200  15u
#define EventParameter_0x955011  16u
#define EventParameter_0x955013  17u
#define EventParameter_0x955016  18u
#define EventParameter_0x955017  19u
#define EventParameter_0x955201  20u
#define EventParameter_0x957111  21u
#define EventParameter_0x957113  22u
#define EventParameter_0x95A011  23u
#define EventParameter_0x95A013  24u
#define EventParameter_0x95A111  25u
#define EventParameter_0x95A113  26u
#define EventParameter_0x95A211  27u
#define EventParameter_0x95A213  28u
#define EventParameter_0x95A311  29u
#define EventParameter_0x95A313  30u
#define EventParameter_0x95A411  31u
#define EventParameter_0x95A413  32u
#define EventParameter_0x95A511  33u
#define EventParameter_0x95A513  34u
#define EventParameter_0x95A711  35u
#define EventParameter_0x95A713  36u
#define EventParameter_0x95A809  37u
#define EventParameter_0x95A909  38u
#define EventParameter_0x95AA09  39u
#define EventParameter_0x95AD09  40u
#define EventParameter_0x95AE09  41u
#define EventParameter_0xC07388  42u
#define EventParameter_0xC07488  43u
#define EventParameter_0xC14687  44u
#define EventParameter_0xD56217  45u
#define EventParameter_0xD56316  46u
#define EventParameter_0xD60087  47u
#define EventParameter_0xE00142  48u
#define EventParameter_0xE00444  49u
#define EventParameter_0xE26200  50u
#define EventParameter_0xE28000  51u
#define EventParameter_0xE28200  52u
#define EventParameter_0xE29887  53u
#define EventParameter_0xE298F0  54u
#define EventParameter_0xE298F1  55u
#define EventParameter_0xE2A287  56u
#define EventParameter_0xE2A2F0  57u
#define EventParameter_0xE2A2F1  58u
#define EventParameter_0x951511  59u
#define EventParameter_0xE2B187  60u
#define EventParameter_0xE2B1F0  61u
#define EventParameter_0xE2B1F1  62u
/*******************************************************************************
*                          Memory Configuration
*******************************************************************************/
/* MAX(DemConfigSet/DemDTCAttributes/DemMemoryDestinationRef) 1~2 */
#define DEM_MEM_DEST_MAX_NUM_OF_DTC 1u /* DemMemoryDestinationRef 1-2 */
/*******************************************************************************
*                          OBD Configuration
*******************************************************************************/
#define DEM_CALLBACK_OBD_DTC_STATUS_CHANGED_NUM 0u

#define DEM_SECONDARY_FUNCTIONID_REF_MAX_NUM  2u

#define DEM_RATIO_NUM 0u

#define DEM_DTR_NUM 0u

/*******************************************************************************
*                          J1939 Configuration
*******************************************************************************/
#define DEM_CALLBACK_J1939_DTC_STATUS_CHANGED_NUM 0u

#endif /* DEM_PBCFG_H_ */
/*******************************************************************************
**                      end of file                                           **
*******************************************************************************/

