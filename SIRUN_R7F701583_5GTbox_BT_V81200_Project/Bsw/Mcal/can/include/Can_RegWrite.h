/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_RegWrite.h                                              */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation                              */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file is to have macro definitions for the registers write, ram        */
/* mirroring and verification.                                                */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas. Any        */
/* warranty is expressly disclaimed and excluded by Renesas, either expressed */
/* or implied, including but not limited to those for non-infringement of     */
/* intellectual property, merchantability and/or fitness for the particular   */
/* purpose.                                                                   */
/*                                                                            */
/* Renesas shall not have any obligation to maintain, service or provide bug  */
/* fixes for the supplied Product(s) and/or the Application.                  */
/*                                                                            */
/* Each User is solely responsible for determining the appropriateness of     */
/* using the Product(s) and assumes all risks associated with its exercise    */
/* of rights under this Agreement, including, but not limited to the risks    */
/* and costs of program errors, compliance with applicable laws, damage to    */
/* or loss of data, programs or equipment, and unavailability or              */
/* interruption of operations.                                                */
/*                                                                            */
/* Limitation of Liability                                                    */
/*                                                                            */
/* In no event shall Renesas be liable to the User for any incidental,        */
/* consequential, indirect, or punitive damage (including but not limited     */
/* to lost profits) regardless of whether such liability is based on breach   */
/* of contract, tort, strict liability, breach of warranties, failure of      */
/* essential purpose or otherwise and even if advised of the possibility of   */
/* such damages. Renesas shall not be liable for any services or products     */
/* provided by third party vendors, developers or consultants identified or   */
/* referred to the User by Renesas in connection with the Product(s) and/or   */
/* the Application.                                                           */
/*                                                                            */
/*============================================================================*/
/* Environment:                                                               */
/*              Devices:        X1x                                           */
/*============================================================================*/
/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  31-May-2019 : Initial Version
 *          13-Jul-2019 : Remove write verify and RAM mirror macro
 *          01-Aug-2019 : Add macros CAN_WRITE_REG_ONLY, CAN_WRITE_RAM_MIRROR,
 *                        CAN_VERIFY_WRITE_REG.
 *                        Remove internal ID. Add CAN_WAKEUP_ISR_API_ID.
 * V1.0.1:  03-Apr-2021 : Update QAC 931, MISRA-C Rule Violation.
 *          03-Jun-2021  :Update QAC messages.
 */
/******************************************************************************/
#ifndef CAN_REG_WRITE_H
#define CAN_REG_WRITE_H
/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "Std_Types.h"
#include "Can_Cfg.h"
#include "Dem.h"
#include "Can_Cbk.h"
/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3458) Macro defines a braced code statement block.      */
/* Rule          : MISRA-C:2004 Rule 19.4                                     */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for  MISRA Violation: START Msg(2:3458)-1 and         */
/*                 END Msg(2:3458)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3412) Macro defines an unrecognised code-fragment.      */
/* Rule          : MISRA-C:2004 Rule-19.4                                     */
/* Justification : Macro definition as multi-line operation hence multi-line  */
/*                 macro is used                                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3412)-2 and                           */
/*                 END Msg(2:3412)-2 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                     Macro Definitions                                      **
*******************************************************************************/
/* Currently there is no definition of ISR service ID so this ID will be used
   when write verify error occurs */
#define CAN_WAKEUP_ISR_API_ID                    (uint8)0x20

/* Macro for Register readback disable */
#define CAN_WV_DISABLE                 0U
/* Macro for Register readback INIT_ONLY */
#define CAN_WV_INIT_ONLY               1U
/* Macro for Register readback INIT_RUNTIME */
#define CAN_WV_INIT_RUNTIME            2U

/* Common register mask for write verify */
#define CAN_COMMON_REG_MASK        0xFFFFFFFFUL

/*******************************************************************************
** Macro Name            : CAN_WRITE_REG_ONLY
**
** Description           : This macro is to perform the write operation to the
**                         register which is passed. This macro shall be used
**                         in the below case.
**                         1. By CAN_WRITE_REG_AND_MIRROR macro
**                         for writing the registers when the RAM mirroring is
**                         is disabled for the respective instance.
**                         2. To write the value to the register directly for
**                         which the RAM mirroring is neither possible nor
**                         required.
**
** Input Parameters      : pWriteRegAddr, RegWriteValue
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Pre-conditions        : None
**
** Functions invoked     : None
*******************************************************************************/
/* MISRA Violation: START Msg(2:3458)-1 */
#define CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
{ \
  (*(pWriteRegAddr)) = (RegWriteValue);\
}
/* END Msg(2:3458)-1 */

/*******************************************************************************
** Macro Name            : CAN_WRITE_RAM_MIRROR
**
** Description           : This macro is to perform the write operation to the
**                         register and respective RAM mirroring.
**                         This macro shall be used by the
**                         CAN_WRITE_REG_AND_MIRROR macro
**                         for writing the registers when the RAM mirroring is
**                         is enabled for the respective instance.
**
** Input Parameters      : pMirrorAddr, RegWriteValue
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Pre-conditions        : RAM Mirror ON
**
** Functions invoked     : None
*******************************************************************************/
#if (CAN_RAM_MIRROR == STD_ON)
/* MISRA Violation: START Msg(2:3458)-1 */
#define CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
{ \
  (*(pMirrorAddr)) = (RegWriteValue); \
}
/* END Msg(2:3458)-1 */
#else
/* MISRA Violation: START Msg(2:3412)-2 */
#define CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
{ \
}
/* END Msg(2:3412)-2 */
#endif

/*******************************************************************************
** Macro Name            : CAN_WV_REPORT_ERROR
**
** Description           : This macro is to report the error to respective
**                         interface.
**
** Input Parameters      : WVErrId, ErrStat, ApiId
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Pre-conditions        : None
**
** Functions invoked     : Dem_ReportErrorStatus, CAN_ERROR_NOTIFICATION
*******************************************************************************/
#if (CAN_USE_WV_ERROR_INTERFACE == STD_ON)
  /* MISRA Violation: START Msg(2:3412)-2 */
  #define CAN_WV_REPORT_ERROR(WVErrId, ErrStat, ApiId) \
              CAN_ERROR_NOTIFICATION(WVErrId, ApiId);
  /* END Msg(2:3412)-2 */
#else
  /* MISRA Violation: START Msg(2:3412)-2 */
  #define CAN_WV_REPORT_ERROR(WVErrId, ErrStat, ApiId) \
              Dem_ReportErrorStatus(WVErrId, ErrStat);
  /* END Msg(2:3412)-2 */
#endif

/*******************************************************************************
** Macro Name            : CAN_VERIFY_WRITE_REG
**
** Description           : This macro is to do the comparison check and do
**                         the error reporting if the comparison fails.
**
** Input Parameters      : pWriteRegAddr, RegWriteValue, MaskValue, ApiId
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Pre-conditions        : None
**
** Functions invoked     : None
*******************************************************************************/
#if (CAN_WRITE_VERIFY != CAN_WV_DISABLE)
  /* MISRA Violation: START Msg(2:3412)-2 */
  #define CAN_VERIFY_WRITE_REG(pWriteRegAddr, RegWriteValue, MaskValue, ApiId) \
  { \
    if ((RegWriteValue) != (((*(pWriteRegAddr)) & (MaskValue)))) \
    { \
      CAN_WV_REPORT_ERROR(CAN_E_REG_WRITE_VERIFY, DEM_EVENT_STATUS_FAILED, \
                                                                    ApiId) \
    } \
    else \
    { \
    } \
  }
  /* END Msg(2:3412)-2 */
#else
  /* MISRA Violation: START Msg(2:3412)-2 */
  #define CAN_VERIFY_WRITE_REG(pWriteRegAddr, RegWriteValue, MaskValue, ApiId) \
  {\
  }
  /* END Msg(2:3412)-2 */
#endif

#endif /*  CAN_REG_WRITE_H */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
