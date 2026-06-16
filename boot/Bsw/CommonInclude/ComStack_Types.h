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
/*
*******************************************************************************
**                                                                           **
**  $FILENAME   : ComStack_Types.h $                                         **
**                                                                           **
**  AUTHOR      :                                                            **
**                                                                           **
**  VENDOR      :                                                            **
**                                                                           **
**  DESCRIPTION :This file is partly ECU dependent.                          **
**               Implemented SWS: Communication Stack Types (ComStackTypes)  **
**                                                                           **
**  SPECIFICATION(S) :   AUTOSAR classic Platform 4.2.2                      **
**                                                                           **
******************************************************************************/
/* <VERSION> <DATE> <AUTHOR> <REVISION LOG>
 * V1.0.0 [2020/05/08][YangBo] Initial version
 */
#ifndef COMSTACK_TYPES_H
#define COMSTACK_TYPES_H

#include "Std_Types.h"
#include "ComStack_Cfg.h"


/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/** 
* @brief Parameters that shall be published within the standard types header file and also in the 
*        module's description file
*/
/** @violates @ref ComStackTypes_h_REF_1 MISRA 2012 Advisory Rule 2.5, unused macro.*/
#define COMTYPE_VENDOR_ID                    43
#define COMTYPE_AR_RELEASE_MAJOR_VERSION     4
#define COMTYPE_AR_RELEASE_MINOR_VERSION     2
/** @violates @ref ComStackTypes_h_REF_1 MISRA 2012 Advisory Rule 2.5, unused macro.*/
#define COMTYPE_AR_RELEASE_REVISION_VERSION  0
/** @violates @ref ComStackTypes_h_REF_1 MISRA 2012 Advisory Rule 2.5, unused macro.*/
#define COMTYPE_SW_MAJOR_VERSION             1
/** @violates @ref ComStackTypes_h_REF_1 MISRA 2012 Advisory Rule 2.5, unused macro.*/
#define COMTYPE_SW_MINOR_VERSION             0
/** @violates @ref ComStackTypes_h_REF_1 MISRA 2012 Advisory Rule 2.5, unused macro.*/
#define COMTYPE_SW_PATCH_VERSION             0

/**
* @brief  Action has been successfully finished 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_OK           0x00

/**
* @brief  Message not successfully received or sent out 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_NOT_OK     0x01

/**
* @brief  Timer N_Ar/N_As has passed its time-out value N_Asmax/N_Armax 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_TIMEOUT_A  0x02

/**
* @brief  Timer N_Bs has passed its time-out value N_Bsmax 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_TIMEOUT_BS 0x03

/**
* @brief  Timer N_Cr has passed its time-out value N_Crmax 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_TIMEOUT_CR 0x04

/**
* @brief  Unexpected sequence number (PCI.SN) value received 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_WRONG_SN   0x05

/**
* @brief  Invalid or unknown FlowStatus value has been received 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_INVALID_FS 0x06

/**
* @brief  Unexpected protocol data unit received 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_UNEXP_PDU  0x07

/**
* @brief  Flow control WAIT frame that exceeds the maximum counter N_WFTmax received 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_WFT_OVRN   0x08

/**
* @brief  Flow control (FC) N_PDU with FlowStatus = OVFLW received 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_ABORT  0x09

/**
* @brief  Indicates an abort of a transmission. 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_NO_BUFFER  0x0A

/**
* @brief  Requested cancellation has been executed 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_CANCELATION_OK 0x0B

/**
* @brief  Request cancellation has not been executed
*         Due to an internal error the requested cancelation has not been executed.
*         This will happen e.g. if the to be canceled transmission has been executed already. 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_CANCELATION_NOT_OK 0x0C

/**
* @brief  The parameter change request has been successfully executed
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_PARAMETER_OK  0x0D

/**
* @brief  The request for the change of the parameter did not complete successfully
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_PARAMETER_NOT_OK  0x0E

/**
* @brief  The parameter change request not executed successfully due to an ongoing reception 
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_RX_ON 0x0F

/**
* @brief  The parameter change request not executed successfully due to a wrong value
* @details   General return codes for NotifResultType
*/
#define NTFRSLT_E_VALUE_NOT_OK 0x10


/* Variables of this type shall be used to store the basic information
 * about a PDU of any type, namely a pointer variable pointing to its SDU (payload),
 * and the corresponding length of the SDU in bytes.*/
typedef struct
{
    P2VAR(uint8, TYPEDEF, TYPEDEF) SduDataPtr;
    P2VAR(uint8, TYPEDEF, TYPEDEF) MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;

/*Used to store the identifier of a partial network cluster.*/
typedef uint8 PNCHandleType;

/*Specify the parameter to which the value has to be changed (BS or STmin).*/
typedef enum
{
    TP_STMIN = 0x00, /*Separation Time*/
    TP_BS = 0x01,    /*Block Size*/
    TP_BC = 0x02     /*The Band width control parameter used in FlexRay transport
                   protocol module.*/
} TPParameterType;

/*Variables of this type shall be used to store the result of a buffer request.*/
typedef enum
{
    BUFREQ_OK = 0x00,       /*Buffer request accomplished successful.*/
    BUFREQ_E_NOT_OK = 0x01, /*Buffer request not successful. Buffer cannot be accessed*/
    BUFREQ_E_BUSY = 0x02,   /*Temporarily no buffer available. It's up the requester
                          to retry request for a certain time.*/
    BUFREQ_E_OVFL = 0x03    /*No Buffer of the required length can be provided*/
} BufReq_ReturnType;

/*Variables of this type shall be used to store the state of TP buffer.*/
typedef enum
{
    TP_DATACONF = 0x00,   /*Indicates that all data, that have been copied so far,
                        are confirmed and can be removed from the TP buffer.*/
    TP_DATARETRY = 0x01,  /*indicates that this API call shall copy already copied
                        data in order to recover from an error.*/
    TP_CONFPENDING = 0x02 /*indicates that the previously copied data must remain
                        in the TP.*/
} TpDataStateType;

/*Variables of this type shall be used to store the information about Tp
 * buffer handling.*/
typedef struct
{
    TpDataStateType TpDataState; /*The enumeration type to be used to store the
                                  state of Tp buffer.*/
    PduLengthType TxTpDataCnt;   /*Offset from the current position which identifies
                                  the number of bytes to be retransmitted.*/
} RetryInfoType;

/*Variables of the type NetworkHandleType shall be used to store the identifier
 * of a communication channel.*/
typedef uint8 NetworkHandleType;

/*IcomConfigIdType defines the configuration ID. An ID of 0 is the default
 * configuration. An ID greater than 0 shall identify a configuration for
 * Pretended Networking. There is more than 1 configuration possible.*/
typedef uint8 IcomConfigIdType;

typedef enum
{
    ICOM_SWITCH_E_OK = 0x00,
    ICOM_SWITCH_E_FAILED = 0x01
} IcomSwitch_ErrorType;

#endif /* COMSTACK_TYPES_H */
