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
 * @file              : Arti.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:08
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

#ifndef ARTI_H
#define ARTI_H
/* =================================================== inclusions =================================================== */
#include "Std_Types.h"
/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */
extern void Arti_Init(void); /* PRQA S 1753, 1501 */ /* VL_Os_1753, VL_Os_1501 */
extern void Arti_GetVersionInfo(Std_VersionInfoType* VersionInfoPtr); /* PRQA S 1753, 1501 */ /* VL_Os_1753, VL_Os_1501 */
/* ========================================== internal function definitions ========================================= */

#define ARTI_E_INIT_FAILED   0x01
#define ARTI_E_PARAM_POINTER 0x02
#define ARTI_TRACE_UNUSEPARA(arti_context, arti_x_trace, arti_coreid)

/**
 * \brief Common ARTI trace macro
 *
 * This macro acts as a top level macro that
 * - discards the parameter \p _contextName
 * - takes the parameter \p _className to create a new module specific macro
 *
 * Macro parameters:
 * - \param[in] _contextName Discarded
 * - \param[in] _className Used as token
 * - \param[in] _instanceName Discarded
 * - \param[in] instanceParameter Passed to new module specific macro
 * - \param[in] _eventName Passed to new module specific macro
 * - \param[in] eventParameter Passed to new module specific macro
 */
/*PRQA S 3443, 0342 ++ */  /* VL_Os_3443, VL_Os_0342 */
#define ARTI_TRACE(_contextName, _className, _instanceName, instanceParameter, _eventName, eventParameter) \
    ARTI_TRACE##_##_className((_contextName), (_eventName), (instanceParameter), (eventParameter))
/*PRQA S 3443, 0342 -- */


#endif  /*  ARTI_H */
