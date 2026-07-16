/**
 * COPYRIGHT
 * ---------------------------------------------------------------------------------------------------------------------
 * Copyright (c) iSOFT INFRASTRUCTURE SOFTWARE CO., LTD. This software is proprietary to
 * iSOFT INFRASTRUCTURE SOFTWARE CO., LTD., and all rights are reserved by iSOFT INFRASTRUCTURE SOFTWARE CO., LTD.
 * Without the express written permission of the company, no organization or individual may copy, install, trial,
 * distribute, or reverse engineer this software. For terms of use and further details, please refer to the End User
 * License Agreement (EULA) or contact us business@i-soft.com.cn for more assistance.
 *
 * This file contains code from iSoft, which is licensed under the LGPL-2.1. However, due to a special exception,
 * you are not required to comply with the provisions of section 6a of LGPL-2.1. Specifically, you may distribute
 * your software, including this file, under terms of your choice, including proprietary licenses, without needing to
 * provide the source code or object code as specified in section 6a. For more details, please refer to the project's
 * LICENSE and EXCEPTION files and the specific exception statement.
 * ---------------------------------------------------------------------------------------------------------------------
 * FILE DESCRIPTION
 * ---------------------------------------------------------------------------------------------------------------------
 * @MCU               : R7F7015833
 * @file              : Os_Arti.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 10:40:28
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_ARTI_H
#define OS_ARTI_H
/* =================================================== inclusions =================================================== */
#include "Arti.h"
/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

/*! arti_os_trace endcoding
 *
 *  [0:7]  : Core ID
 *  [8:14] : OS State ID
 *  [15]   : Valid bit, always 1 ("ARTI_VALID_OS_SIGNALING")
 *  [16:31]: Task/ISR ID
 *
 *  0000 80 00
 *  ---- -- --
 *    |  ||  |
 *    |  ||  \ Core ID
 *    |  ||
 *    |  |\ State ID
 *    |  \  Bit 15: valid bit (always 1)
 *    \ Thread ID (16-bit)
 *
 **********************************************************************************************************************/
extern volatile uint32 arti_os_trace; /* PRQA S 1512, 1500, 1752 */ /* VL_Os_1512, VL_Os_1500, VL_Os_1752 */

/*! arti_sc_trace endcoding:
 *
 *  [0:7]  : Core ID
 *  [8:14] : service call ID
 *  [15]   : set on return
 *  [16:31]: service call parameter
 *
 **********************************************************************************************************************/
extern volatile uint32 arti_sc_trace; /* PRQA S 1512, 1500, 1752 */ /* VL_Os_1512, VL_Os_1500, VL_Os_1752 */

/** Bit 16 of arti_os_trace is always written to 1 in order to identify a valid write of the OS (not by e.g. data init
 * routine of C-startup). **/
#define ARTI_VALID_OS_SIGNALING 0x80

/** ARTI context definitions **/
typedef enum
{
    NOSUSP = 0,
    SPRVSR = 1,
    USER   = 2
} Arti_ContextType;

/** ARTI OS Task state transitions **/
typedef enum
{
    OsTask_Activate  = 0,
    OsTask_Start     = 1,
    OsTask_Wait      = 2,
    OsTask_Release   = 3,
    OsTask_Preempt   = 4,
    OsTask_Terminate = 5,
    OsTask_Resume    = 6,
    OsTask_Continue  = 7
} Arti_OsTaskEventType;

/** ARTI OS ISR2 state transitions **/
typedef enum
{
    OsCat2Isr_Start    = 16,
    OsCat2Isr_Stop     = 17,
    OsCat2Isr_Activate = 18,
    OsCat2Isr_Preempt  = 19,
    OsCat2Isr_Resume   = 20
} Arti_OsCat2IsrEventType;

/** ARTI OS spinlock state transitions **/
typedef enum
{
    OsSpinlock_Locked   = 24,
    OsSpinlock_Released = 25
} Arti_OsSpinlockEventType;

/** ARTI OS application state transitions **/
typedef enum
{
    OsApplication_Start       = 32,
    OsApplication_Restart     = 33,
    OsApplication_AllowAccess = 34,
    OsApplication_Terminate   = 35,
} Arti_OsApplicationEventType;

/** ARTI OS hook events **/
typedef enum
{
    OsHook_ErrorHook_Start       = 40,
    OsHook_ErrorHook_Return      = 41,
    OsHook_PostTaskHook_Start    = 42,
    OsHook_PostTaskHook_Return   = 43,
    OsHook_PreTaskHook_Start     = 44,
    OsHook_PreTaskHook_Return    = 45,
    OsHook_ProtectionHook_Start  = 46,
    OsHook_ProtectionHook_Return = 47,
    OsHook_StartupHook_Start     = 48,
    OsHook_StartupHook_Return    = 49,
    OsHook_ShutdownHook_Start    = 50,
    OsHook_ShutdownHook_Return   = 51,
} Arti_OsHookEventType;

/** ARTI OS ServiceCall events **/
typedef enum
{
    OsServiceCall_GetApplicationID_Start = 0,
    OsServiceCall_GetApplicationID_Return = 1,
    OsServiceCall_GetISRID_Start = 2,
    OsServiceCall_GetISRID_Return = 3,
    OsServiceCall_CallTrustedFunction_Start = 4,
    OsServiceCall_CallTrustedFunction_Return = 5,
    OsServiceCall_CheckISRMemoryAccess_Start = 6,
    OsServiceCall_CheckISRMemoryAccess_Return = 7,
    OsServiceCall_CheckTaskMemoryAccess_Start = 8,
    OsServiceCall_CheckTaskMemoryAccess_Return = 9,
    OsServiceCall_CheckObjectAccess_Start = 10,
    OsServiceCall_CheckObjectAccess_Return = 11,
    OsServiceCall_CheckObjectOwnership_Start = 12,
    OsServiceCall_CheckObjectOwnership_Return = 13,
    OsServiceCall_StartScheduleTableRel_Start = 14,
    OsServiceCall_StartScheduleTableRel_Return = 15,
    OsServiceCall_StartScheduleTableAbs_Start = 16,
    OsServiceCall_StartScheduleTableAbs_Return = 17,
    OsServiceCall_StopScheduleTable_Start = 18,
    OsServiceCall_StopScheduleTable_Return = 19,
    OsServiceCall_NextScheduleTable_Start = 20,
    OsServiceCall_NextScheduleTable_Return = 21,
    OsServiceCall_StartScheduleTableSynchron_Start = 22,
    OsServiceCall_StartScheduleTableSynchron_Return = 23,
    OsServiceCall_SyncScheduleTable_Start = 24,
    OsServiceCall_SyncScheduleTable_Return = 25,
    OsServiceCall_SetScheduleTableAsync_Start = 26,
    OsServiceCall_SetScheduleTableAsync_Return = 27,
    OsServiceCall_GetScheduleTableStatus_Start = 28,
    OsServiceCall_GetScheduleTableStatus_Return = 29,
    OsServiceCall_IncrementCounter_Start = 30,
    OsServiceCall_IncrementCounter_Return = 31,
    OsServiceCall_GetCounterValue_Start = 32,
    OsServiceCall_GetCounterValue_Return = 33,
    OsServiceCall_GetElapsedValue_Start = 34,
    OsServiceCall_GetElapsedValue_Return = 35,
    OsServiceCall_TerminateApplication_Start = 36,
    OsServiceCall_TerminateApplication_Return = 37,
    OsServiceCall_AllowAccess_Start = 38,
    OsServiceCall_AllowAccess_Return = 39,
    OsServiceCall_GetApplicationState_Start = 40,
    OsServiceCall_GetApplicationState_Return = 41,
    OsServiceCall_GetNumberOfActivatedCores_Start = 42,
    OsServiceCall_GetNumberOfActivatedCores_Return = 43,
    OsServiceCall_GetCoreID_Start = 44,
    OsServiceCall_GetCoreID_Return = 45,
    OsServiceCall_StartCore_Start = 46,
    OsServiceCall_StartCore_Return = 47,
    OsServiceCall_StartNonAutosarCore_Start = 48,
    OsServiceCall_StartNonAutosarCore_Return = 49,
    OsServiceCall_GetSpinlock_Start = 50,
    OsServiceCall_GetSpinlock_Return = 51,
    OsServiceCall_ReleaseSpinlock_Start = 52,
    OsServiceCall_ReleaseSpinlock_Return = 53,
    OsServiceCall_TryToGetSpinlock_Start = 54,
    OsServiceCall_TryToGetSpinlock_Return = 55,
    OsServiceCall_ShutdownAllCores_Start = 56,
    OsServiceCall_ShutdownAllCores_Return = 57,
    OsServiceCall_ControlIdle_Start = 58,
    OsServiceCall_ControlIdle_Return = 59,
    OsServiceCall_IocSend_Start = 60,
    OsServiceCall_IocSend_Return = 61,
    OsServiceCall_IocWrite_Start = 62,
    OsServiceCall_IocWrite_Return = 63,
    OsServiceCall_IocSendGroup_Start = 64,
    OsServiceCall_IocSendGroup_Return = 65,
    OsServiceCall_IocWriteGroup_Start = 66,
    OsServiceCall_IocWriteGroup_Return = 67,
    OsServiceCall_IocReceive_Start = 68,
    OsServiceCall_IocReceive_Return = 69,
    OsServiceCall_IocRead_Start = 70,
    OsServiceCall_IocRead_Return = 71,
    OsServiceCall_IocReceiveGroup_Start = 72,
    OsServiceCall_IocReceiveGroup_Return = 73,
    OsServiceCall_IocReadGroup_Start = 74,
    OsServiceCall_IocReadGroup_Return = 75,
    OsServiceCall_IocEmptyQueue_Start = 76,
    OsServiceCall_IocEmptyQueue_Return = 77,
    OsServiceCall_GetCurrentApplicationID_Start = 78,
    OsServiceCall_GetCurrentApplicationID_Return = 79,
    OsServiceCall_ReadPeripheral8_Start = 80,
    OsServiceCall_ReadPeripheral8_Return = 81,
    OsServiceCall_ReadPeripheral16_Start = 82,
    OsServiceCall_ReadPeripheral16_Return = 83,
    OsServiceCall_ReadPeripheral32_Start = 84,
    OsServiceCall_ReadPeripheral32_Return = 85,
    OsServiceCall_WritePeripheral8_Start = 86,
    OsServiceCall_WritePeripheral8_Return = 87,
    OsServiceCall_WritePeripheral16_Start = 88,
    OsServiceCall_WritePeripheral16_Return = 89,
    OsServiceCall_WritePeripheral32_Start = 90,
    OsServiceCall_WritePeripheral32_Return = 91,
    OsServiceCall_ModifyPeripheral8_Start = 92,
    OsServiceCall_ModifyPeripheral8_Return = 93,
    OsServiceCall_ModifyPeripheral32_Start = 94,
    OsServiceCall_ModifyPeripheral32_Return = 95,
    OsServiceCall_DisableInterruptSource_Start = 96,
    OsServiceCall_DisableInterruptSource_Return = 97,
    OsServiceCall_EnableInterruptSource_Start = 98,
    OsServiceCall_EnableInterruptSource_Return = 99,
    OsServiceCall_ClearPendingInterrupt_Start = 100,
    OsServiceCall_ClearPendingInterrupt_Return = 101,
    OsServiceCall_ActivateTaskAsyn_Start = 102,
    OsServiceCall_ActivateTaskAsyn_Return = 103,
    OsServiceCall_SetEventAsyn_Start = 104,
    OsServiceCall_SetEventAsyn_Return = 105,
    OsServiceCall_ModifyPeripheral16_Start = 106,
    OsServiceCall_ModifyPeripheral16_Return = 107,
    OsServiceCall_WaitAllEvents_Start = 108,
    OsServiceCall_WaitAllEvents_Return = 109,
    OsServiceCall_IocCallBackNotify_Start = 110,
    OsServiceCall_IocCallBackNotify_Return = 111,
    OsServiceCall_ActivateTask_Start = 112,
    OsServiceCall_ActivateTask_Return = 113,
    OsServiceCall_TerminateTask_Start = 114,
    OsServiceCall_TerminateTask_Return = 115,
    OsServiceCall_ChainTask_Start = 116,
    OsServiceCall_ChainTask_Return = 117,
    OsServiceCall_Schedule_Start = 118,
    OsServiceCall_Schedule_Return = 119,
    OsServiceCall_GetTaskID_Start = 120,
    OsServiceCall_GetTaskID_Return = 121,
    OsServiceCall_GetTaskState_Start = 122,
    OsServiceCall_GetTaskState_Return = 123,
    OsServiceCall_EnableAllInterrupts_Start = 124,
    OsServiceCall_EnableAllInterrupts_Return = 125,
    OsServiceCall_DisableAllInterrupts_Start = 126,
    OsServiceCall_DisableAllInterrupts_Return = 127,
    OsServiceCall_ResumeAllInterrupts_Start = 128,
    OsServiceCall_ResumeAllInterrupts_Return = 129,
    OsServiceCall_SuspendAllInterrupts_Start = 130,
    OsServiceCall_SuspendAllInterrupts_Return = 131,
    OsServiceCall_ResumeOSInterrupts_Start = 132,
    OsServiceCall_ResumeOSInterrupts_Return = 133,
    OsServiceCall_SuspendOSInterrupts_Start = 134,
    OsServiceCall_SuspendOSInterrupts_Return = 135,
    OsServiceCall_GetResource_Start = 136,
    OsServiceCall_GetResource_Return = 137,
    OsServiceCall_ReleaseResource_Start = 138,
    OsServiceCall_ReleaseResource_Return = 139,
    OsServiceCall_SetEvent_Start = 140,
    OsServiceCall_SetEvent_Return = 141,
    OsServiceCall_ClearEvent_Start = 142,
    OsServiceCall_ClearEvent_Return = 143,
    OsServiceCall_GetEvent_Start = 144,
    OsServiceCall_GetEvent_Return = 145,
    OsServiceCall_WaitEvent_Start = 146,
    OsServiceCall_WaitEvent_Return = 147,
    OsServiceCall_GetAlarmBase_Start = 148,
    OsServiceCall_GetAlarmBase_Return = 149,
    OsServiceCall_GetAlarm_Start = 150,
    OsServiceCall_GetAlarm_Return = 151,
    OsServiceCall_SetRelAlarm_Start = 152,
    OsServiceCall_SetRelAlarm_Return = 153,
    OsServiceCall_SetAbsAlarm_Start = 154,
    OsServiceCall_SetAbsAlarm_Return = 155,
    OsServiceCall_CancelAlarm_Start = 156,
    OsServiceCall_CancelAlarm_Return = 157,
    OsServiceCall_GetActiveApplicationMode_Start = 158,
    OsServiceCall_GetActiveApplicationMode_Return = 159,
    OsServiceCall_StartOS_Start = 160,
    OsServiceCall_StartOS_Return = 161,
    OsServiceCall_ShutdownOS_Start = 162,
    OsServiceCall_ShutdownOS_Return = 163,
    OsServiceCall_BarrierSynchronize_Start = 164,
    OsServiceCall_BarrierSynchronize_Return = 165
} Arti_OsServiceCallType;

/**********************************************************************************************************************
 * Common ARTI Hook Implementation
 ********************************************************************************************************************/
 /* PRQA S 3458, 3410 ++ *//* VL_Os_3458, VL_Os_3410 */
#ifdef ARTI_ENABLE_OS_TASK
#define ARTI_TRACE_AR_CP_OS_TASK(_contextName, _eventName, CoreId, TaskId)                                             \
    {                                                                                                                  \
        arti_os_trace = (TaskId << 16u) | (ARTI_VALID_OS_SIGNALING << 8u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                                                     \
    }
#define ARTI_TRACE_AR_CP_OSARTI_TASK(_contextName, _eventName, CoreId, TaskId)                                         \
    {                                                                                                                  \
        arti_os_trace = (TaskId << 16u) | (ARTI_VALID_OS_SIGNALING << 8u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                                                     \
    }
#else
#define ARTI_TRACE_AR_CP_OS_TASK(_contextName, _eventName, CoreId, TaskId)
#define ARTI_TRACE_AR_CP_OSARTI_TASK(_contextName, _eventName, CoreId, TaskId)
#endif

#ifdef ARTI_ENABLE_OS_CAT2ISR
#define ARTI_TRACE_AR_CP_OS_CAT2ISR(_contextName, _eventName, CoreId, IsrId)                                          \
    {                                                                                                                 \
        arti_os_trace = (IsrId << 16u) | (ARTI_VALID_OS_SIGNALING << 8u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                                                    \
    }
#define ARTI_TRACE_AR_CP_OSARTI_CAT2ISR(_contextName, _eventName, CoreId, IsrId)                                      \
    {                                                                                                                 \
        arti_os_trace = (IsrId << 16u) | (ARTI_VALID_OS_SIGNALING << 8u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                                                    \
    }
#else
#define ARTI_TRACE_AR_CP_OS_CAT2ISR(_contextName, _eventName, CoreId, IsrId)
#define ARTI_TRACE_AR_CP_OSARTI_CAT2ISR(_contextName, _eventName, CoreId, IsrId)
#endif

#ifdef ARTI_ENABLE_OS_SPINLOCK
#define ARTI_TRACE_AR_CP_OS_SPINLOCK(_contextName, _eventName, CoreId, SpinlockId)                             \
    {                                                                                                          \
        arti_os_trace =                                                                                        \
            (SpinlockId << 16u) | (ARTI_VALID_OS_SIGNALING << 8u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                                             \
    }
#else
#define ARTI_TRACE_AR_CP_OS_SPINLOCK(_contextName, _eventName, CoreId, SpinlockId)
#endif

#ifdef ARTI_ENABLE_OS_APPLICATION
#define ARTI_TRACE_AR_CP_OS_APPLICATION(_contextName, _eventName, CoreId, AppId)                                      \
    {                                                                                                                 \
        arti_os_trace = (AppId << 16u) | (ARTI_VALID_OS_SIGNALING << 8u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                                                    \
    }
#else
#define ARTI_TRACE_AR_CP_OS_APPLICATION(_contextName, _eventName, CoreId, AppId)
#endif

#ifdef ARTI_ENABLE_OS_HOOK
#define ARTI_TRACE_AR_CP_OS_HOOK(_contextName, _eventName, CoreId, eventParameter)               \
    {                                                                                            \
        arti_os_trace = (((uint32)(eventParameter)) << 16u) | (ARTI_VALID_OS_SIGNALING << 8u)      \
                        | (((uint32)(_eventName)) << 8u) | CoreId;                                \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_os_trace, CoreId);                               \
    }
#else
#define ARTI_TRACE_AR_CP_OS_HOOK(_contextName, _eventName, CoreId, eventParameter)
#endif

#ifdef ARTI_ENABLE_OS_SERVICECALLS
#define ARTI_TRACE_AR_CP_OS_SERVICECALLS(_contextName, _eventName, CoreId, eventParameter)                \
    {                                                                                                     \
        arti_sc_trace = (((uint32)(eventParameter)) << 16u) | (((uint32)(_eventName)) << 8u) | CoreId;      \
        ARTI_TRACE_UNUSEPARA(_contextName, arti_sc_trace, CoreId);                                        \
    }
#else
#define ARTI_TRACE_AR_CP_OS_SERVICECALLS(_contextName, _eventName, CoreId, zero)
#endif
/* PRQA S 3458, 3410 -- */

#endif  /*  OS_ARTI_H */
