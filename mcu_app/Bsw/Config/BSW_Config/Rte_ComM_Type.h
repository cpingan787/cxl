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
 *  @file               : Rte_ComM_Type.h
 *  @author             : iSoft
 *  @date               : 2026-01-16 11:47:20
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef RTE_COMM_TYPE_H_
#define RTE_COMM_TYPE_H_
/*=================================================[inclusions]=======================================================*/
#include "Std_Types.h"

/*====================================================[macros]========================================================*/

#if !defined(RTE_COMM_TYPE_LOCAL)
#define RTE_COMM_TYPE_LOCAL 1
#endif

/*=============================================[type definitions]=====================================================*/
/** @ref SWS_ComM_00669 */
typedef uint8 ComM_InhibitionStatusType;

#ifndef COMM_WAKEUP_INHIBITION_ACTIVE_BflMask
#define COMM_WAKEUP_INHIBITION_ACTIVE_BflMask 0x1u
#endif

#ifndef COMM_WAKEUP_INHIBITION_ACTIVE_YES
#define COMM_WAKEUP_INHIBITION_ACTIVE_YES 0x1u
#endif

#ifndef COMM_WAKEUP_INHIBITION_NO
#define COMM_WAKEUP_INHIBITION_NO 0x0u
#endif

#ifndef COMM_LIMITED_TO_NO_COM_BflMask
#define COMM_LIMITED_TO_NO_COM_BflMask 0x2u
#endif

#ifndef COMM_LIMITED_TO_NO_COM_YES
#define COMM_LIMITED_TO_NO_COM_YES 0x2u
#endif

#ifndef COMM_LIMITED_TO_NO_COM_NO
#define COMM_LIMITED_TO_NO_COM_NO 0x0u
#endif

/** @ref SWS_ComM_00672 */
typedef uint8 ComM_ModeType;
#if !defined(COMM_NO_COMMUNICATION)
#define COMM_NO_COMMUNICATION 0u
#endif

#if !defined(COMM_SILENT_COMMUNICATION)
#define COMM_SILENT_COMMUNICATION 1u
#endif

#if !defined(COMM_FULL_COMMUNICATION)
#define COMM_FULL_COMMUNICATION 2u
#endif

#if !defined(COMM_FULL_COMMUNICATION_WITH_WAKEUP_REQUEST)
#define COMM_FULL_COMMUNICATION_WITH_WAKEUP_REQUEST 3u
#endif

/** \brief mode switch used types */
#if !defined(RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION)
#define RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION (0u)
#endif

#if !defined(RTE_MODE_ComMMode_COMM_NO_COMMUNICATION)
#define RTE_MODE_ComMMode_COMM_NO_COMMUNICATION (1U)
#endif

#if !defined(RTE_MODE_ComMMode_COMM_SILENT_COMMUNICATION)
#define RTE_MODE_ComMMode_COMM_SILENT_COMMUNICATION (2U)
#endif

/** @ref SWS_ComM_00670 */
typedef uint8 ComM_UserHandleType;

/** @ref SWS_ComM_01005 */
typedef uint8 ComM_UserHandleSubArrayType_ComMChannel_0[1];

/** @ref SWS_ComM_00906 */
typedef struct{

    uint8 numberOfRequesters;
    ComM_UserHandleSubArrayType_ComMChannel_0 handleArray;
}ComM_UserHandleArrayType_ComMChannel_0;

#endif /* RTE_COMM_TYPE_H_ */

