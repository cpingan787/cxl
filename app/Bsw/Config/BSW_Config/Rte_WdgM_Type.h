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
 *  @file               : Rte_WdgM_Type.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:22:35
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef RTE_WDGM_TYPE_H_
#define RTE_WDGM_TYPE_H_

/*===================[type definitions]===========================*/
/* Type of local status for each Supervision entities */
typedef  enum
{
    WDGM_LOCAL_STATUS_OK,
    WDGM_LOCAL_STATUS_FAILED,
    WDGM_LOCAL_STATUS_EXPIRED,
    WDGM_LOCAL_STATUS_DEACTIVATED
} WdgM_LocalStatusType;

/* Type of global status */
typedef enum
{
    WDGM_GLOBAL_STATUS_OK,
    WDGM_GLOBAL_STATUS_FAILED,
    WDGM_GLOBAL_STATUS_EXPIRED,
    WDGM_GLOBAL_STATUS_STOPPED,
    WDGM_GLOBAL_STATUS_DEACTIVATED
} WdgM_GlobalStatusType;

#endif /* RTE_WDGM_TYPE_H_ */
