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
 *  @file               : Rte_E2EXf.h
 *  @author             : iSoft
 *  @date               : 2026-01-19 18:49:39
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/* <VERSION>     <DATE>       <AUTHOR>       <REVISION LOG>
 *  V1.0.0       20200610     Wanglili       Initial version
 ******************************************************************************/
#ifndef E2EXF_H_
#define E2EXF_H_
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Rte_E2EXf_Cfg.h"
#include "Rte_E2EXf_LCfg.h"
#include "Rte_Xf_Cfg.h"
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define E2EXF_MODULE_ID                     176u
#define E2EXF_VENDOR_ID                     62u
#define E2EXF_H_AR_RELEASE_MAJOR_VERSION    4u
#define E2EXF_H_AR_RELEASE_MINOR_VERSION    5u
#define E2EXF_H_AR_RELEASE_PATCH_VERSION    0u
#define E2EXF_H_SW_MAJOR_VERSION            2u
#define E2EXF_H_SW_MINOR_VERSION            1u
#define E2EXF_H_SW_PATCH_VERSION            0u
#define E2EXf_INSTANCE_ID   0u
#define E2EXF_GETVERSIONINFO_ID   5u
/* E2EXf service ID */
#define E2EXF_INIT_SERVICEID 0x01u
#define E2EXF_DEINIT_SERVICEID 0x02u
#define E2EXF_TRANSFORMERID_SERVICEID 0x03u
#define E2EXF_INV_TRANSFORMERID_SERVICEID 0x04u
#define E2EXF_GETVERSIONINFO_SERVICEID 0x05u
/* E2EXf error code, Req<SWS_E2EXf_00137> */
#define E2EXF_E_UNINIT            1u
#define E2EXF_E_INIT_FAILED       2u
#define E2EXF_E_PARAM             3u
#define E2EXF_E_PARAM_POINTER     4u
#define E_SAFETY_SOFT_RUNTIMEERROR 0x77u
#define E_SAFETY_HARD_RUNTIMEERROR 0xFFu
/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/*******************************************************************************
**                      Global Data Declaration                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/
#if (STD_ON == E2EXF_VERSION_INFO_API)
/******************************************************************************/
/*
 * Brief               This service returns the version information of
 *                     this module
 * ServiceId           0x05
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      None
 * Param-Name[out]     Versioninfo: Pointer to where to store the version
 * Param-Name[in/out]  None
 * Return              None
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
/* Req<SWS_E2EXf_00036> */
extern FUNC(void, E2EXF_CODE)E2EXf_GetVersionInfo(Std_VersionInfoType* VersionInfo);
#endif/* STD_ON == E2EXF_VERSION_INFO_API */
/******************************************************************************/
/*
 * Brief               This service initializes  the state of  the E2E
 *                     Transformer
 * ServiceId           0x01
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      None
 * Param-Name[out]     None
 * Param-Name[in/out]  None
 * Return              None
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
/* <SWS_E2EXf_00035> */
extern FUNC(void, E2EXF_CODE)
E2EXf_Init
(
    P2CONST(E2EXf_ConfigType, AUTOMATIC, E2EXF_CONST) config
);
/******************************************************************************/
/*
 * Brief               This service deinitializes  the state of  the E2E
 *                     Transformer
 * ServiceId           0x02
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      None
 * Param-Name[out]     None
 * Param-Name[in/out]  None
 * Return              None
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(void, E2EXF_CODE)
E2EXf_DeInit(void);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx   /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx     /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx    /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

/******************************************************************************/
/*
 * Brief               Protects the array/buffer to be transmitted, using
 *                     the in-place transformation.
 * ServiceId           0x03
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  holds  the  length  of
 *                     the E2E  transformer's  input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the buffer;
 * Param-Name[in/out]  buffer:This argument is only an INOUT argument for
 *                     E2E transformers which  are  configured  for  in-place
 *                     transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/

FUNC(uint8, E2EXF_CODE)
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);
/******************************************************************************/
/*
 * Brief               Checks the received data.  If the data can be used
 *                     by  the caller, then  the function returns E_OK.
 * ServiceId           0x04
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      inputBuffer:This  argument  only  exists  for E2E
 *                     transformers  configured  for out-of-place. This
 *                     argument  holds  the  length  of the E2E  transformer's
 *                     input data;
 *                     inputBufferLength: This  argument  holds  the  length
 *                     of  the E2E  transformer's  input data
 * Param-Name[out]     bufferLength:Used length of the output buffer;
 * Param-Name[in/out]  buffer:This  argument  is  only  an  INOUT  argument
 *                     for  E2E transformers, which are configured for
 *                     in-place transformation.
 * Return              uint8
 * PreCondition        None
 * CallByAPI           Up layer
 */
/******************************************************************************/
extern FUNC(uint8, E2EXF_CODE)
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40      /* PRQA S 0777 */ /* MISRA Rule 1.3,5.1 */
(
    P2VAR(uint8, AUTOMATIC, E2EXF_VAR) buffer,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2VAR(uint32, AUTOMATIC, E2EXF_VAR) bufferLength,/* PRQA S 3432 */ /* MISRA Rule 20.7 */
    P2CONST(uint8, AUTOMATIC, E2EXF_CONST) inputBuffer,
    uint32  inputBufferLength
);

#endif/* E2EXF_H_ */

