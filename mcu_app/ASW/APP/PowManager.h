/**
 * Copyright (C) 2008-2025 isoft Infrastructure Software Co., Ltd.
 * SPDX-License-Identifier: LGPL-2.1-only-with-exception
 *
 * This library is free software; you can redistribute it and/or modify it under the terms of the
 * GNU Lesser General Public License as published by the Free Software Foundation; version 2.1.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this library;
 * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 * or see <https://www.gnu.org/licenses/>.
 */


#ifndef POWMANAGER_H
#define POWMANAGER_H

/*******************************************************************************
 **                        Revision Control History                           **
******************************************************************************/

/*******************************************************************************
 **                        Version Information                                **
******************************************************************************/

/*******************************************************************************
 **                        Include Section                                    **
******************************************************************************/
#include "Rte_Type.h"
#include "BswM_Cfg.h"
#include "BswM_Swc.h"
#include "Icu.h"
/*******************************************************************************
 **                        Macro Definitions                                  **
******************************************************************************/
extern Icu_ValueType CrashTimeElapsed;

/** API mappings */

/*******************************************************************************
 **                        Global Function Declarations                       **
******************************************************************************/
typedef struct
{
    boolean Can_WakeFlag;                         
    boolean KL30_WakeFlag;
    boolean NAD_WakeFlag;
    boolean Crash_WakeFlag;
    boolean Ecall_WakeFlag;
    boolean Imu_Int1_WakeFlag;
    boolean Imu_Int2_WakeFlag;
    boolean Rtc_WakeFlag;
} Mcu_WakeSourceType;

extern Mcu_WakeSourceType Mcu_WakeSource;
extern uint8 APP_WakeupNotified ;
extern EcuM_WakeupSourceType Mcu_CheckWakeSource(void);

extern void Power_Init(void);
extern void Power_Detect(void);

extern void Icu_Edge_Detect_Crash(void);

/*******************************************************************************
*Function-Name        APP_RequestNetWork
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
extern void APP_RequestNetWork(void);
extern void APP_ReleaseNetWork(void);
extern void APP_AllowedGodown(void);
extern void APP_SetWakeupHold(void) ;
extern void APP_ClearWakeupHold(void);
extern uint8  APP_GetWakeupHold(void);

/*******************************************************************************
 APP 实现
******************************************************************************/

extern void APP_SetWakeupSource(uint8 WakeupSrc);
extern void APP_GotoSleep(void);

extern void Pre_LowPowerMode(void);
#endif

