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
 *  @file               : CanTSyn_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-02-04 16:09:22
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef CANTSYN_CFG_H_
#define CANTSYN_CFG_H_
/******************************************************************************
**                      Includes                                             **
******************************************************************************/
#include "Std_Types.h"

#define CANTSYN_DEV_ERROR_DETECT  STD_ON
#define CANTSYN_VERSIONINFO_API STD_OFF
#define CANTSYN_GLOBALTIMEDOMAIN_NUMBER 1U
/* Schedule period of the main function */
#define CANTSYN_MAIN_FUNCTION_PERIOD 10U
#define  CANTSYN_RX_PDU_CANTSYNC 0u
/* Used for Integration Project, undef it to match with IfTrasnmit Standard for 4.2.2 */
#define CANTSYN_VER_R19_11  STD_OFF

#define CANTSYN_MULTIPLE_PARTITION_ENABLED         STD_OFF

/*Used for judging whether CRC is supported.It will configured as STD_OFF if all
 * CanTSynGlobalTimeDomain/CanTSynGlobalTimeMaster/CanTSynGlobalTimeTxCrcSecured are CRC_NOT_SUPPORTED and all
 * CanTSynGlobalTimeSlave/CanTSynRxCrcValidated are CRC_IGNORED and CRC_NOT_VALIDATED, otherwise it will be STD_ON.*/
#define CANTSYN_CRC_SUPPORT STD_OFF
#endif /* CANTSYN_CFG_H_ */
