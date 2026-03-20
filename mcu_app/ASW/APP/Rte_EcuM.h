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


#ifndef RTE_ECUM_H
#define RTE_ECUM_H

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
/*******************************************************************************
 **                        Macro Definitions                                  **
******************************************************************************/

#define RTE_E_EcuM_BootTarget_E_OK 0
#define RTE_E_EcuM_BootTarget_E_NOT_OK 1
#define RTE_E_EcuM_StateRequest_E_OK 0
#define RTE_E_EcuM_StateRequest_E_NOT_OK 1
#define RTE_E_EcuM_Time_E_OK 0
#define RTE_E_EcuM_Time_E_NOT_OK 1
#define RTE_E_EcuM_ShutdownTarget_E_OK 0
#define RTE_E_EcuM_ShutdownTarget_E_NOT_OK 1

#define RTE_E_OK               (0U)
#define RTE_E_NO_DATA          (131U)
/** API mappings */

/*******************************************************************************
 **                        Global Function Declarations                       **
******************************************************************************/

/** API functions */

Std_ReturnType SchM_Switch_currentMode(Rte_ModeType_EcuM_Mode mode);

Rte_ModeType_EcuM_Mode SchM_SwitchAck_currentMode(void);

/** runnables */

Std_ReturnType EcuM_ReleasePOST_RUN(EcuM_UserType User);

Std_ReturnType EcuM_ReleaseRUN(EcuM_UserType User);

Std_ReturnType EcuM_RequestPOST_RUN(EcuM_UserType User);

Std_ReturnType EcuM_RequestRUN(EcuM_UserType User);

Std_ReturnType EcuM_GetLastShutdownTarget(EcuM_ShutdownTargetType* shutdownTarget, EcuM_ShutdownModeType* shutdownMode);

Std_ReturnType EcuM_GetShutdownCause(EcuM_ShutdownCauseType* shutdownCause);

Std_ReturnType EcuM_GetShutdownTarget(EcuM_ShutdownTargetType* shutdownTarget, EcuM_ShutdownModeType* shutdownMode);

Std_ReturnType EcuM_SelectShutdownCause(EcuM_ShutdownCauseType shutdownCause);

Std_ReturnType EcuM_SelectShutdownTarget(EcuM_ShutdownTargetType shutdownTarget, EcuM_ShutdownModeType shutdownMode);

/*void EcuM_MainFunction(void);*/

Std_ReturnType EcuM_GetBootTarget(EcuM_BootTargetType* target);

Std_ReturnType EcuM_SelectBootTarget(EcuM_BootTargetType target);

Std_ReturnType EcuM_GetCurrentTime(EcuM_TimeType* time);

Std_ReturnType EcuM_GetWakeupTime(EcuM_TimeType* time);

#define Rte_SwitchAck_EcuM_CurrentMode_currentMode() ((Std_ReturnType) 0)

#endif

