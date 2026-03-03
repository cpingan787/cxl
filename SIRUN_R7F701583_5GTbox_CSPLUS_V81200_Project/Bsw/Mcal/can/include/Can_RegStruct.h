/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_RegStruct.h                                             */
/* Version      = V1.0.4                                                      */
/* Date         = 06-Apr-2023                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2023 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of Controller register structure.                                */
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
 * V1.0.0: 31-May-2019  : Initial version
 *         26-Jul-2019  : Distinguish macro CAN_RSCAN_TXBUFFER_PER_CH,
 *                        CAN_RSCAN_SINGLEBUFFER_LENGTH, CAN_RSCAN_TXQUEUEWINDOW
 *                        between F1K and F1KH/F1KM
 * V1.0.1: 08-Sep-2020  : As per ARDAACH-225, Add macro CAN_RSCAN_CFDC_GET,
 *                        CAN_RSCAN_RFDC_GET, CAN_RSCAN_THL_ENTRIES_PER_CH,
 *                        CAN_RSCAN_FIFO_BUFFER_DEPTH_GET.
 * V1.0.2: 19-Mar-2021  : As per ARDAABD-3191, Add comment for some structure
 *                        missing in Source comment.
 *         03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *         08-Apr-2021  : As per ARDAABD-5517, correct value of macro
 *                        CAN_RSCAN_CFTXIF, CAN_RSCAN_TXQIF, CAN_RSCAN_TMTRF_NO
 *                        CAN_RSCAN_RFIF, CAN_RSCAN_RFMLT, CAN_RSCAN_CFRXIF
 *                        CAN_RSCAN_CFMLT, CAN_RSCAN_THLIF.
 *         16-Apr-2021  : As per ARDAABD-3217, remove unused macros:
 *                        CAN_RSCAN_GMDC_MASK, CAN_RSCAN_GHLTSTS, 
 *                        CAN_RSCAN_RFFLL, CAN_RSCAN_CTMS_NORMAL, 
 *                        CAN_RSCAN_CTMS_LISTEN, CAN_RSCAN_ERRD, 
 *                        CAN_RSCAN_BOM_ISO, CAN_RSCAN_BOM_HALT_BUSOFF_END, 
 *                        CAN_RSCAN_BOM_HALT_SOFTWARE, CAN_RSCAN_TAIE,
 *                        CAN_RSCAN_ALIE, CAN_RSCAN_BLIE, CAN_RSCAN_CLIE, 
 *                        CAN_RSCAN_BORIE, CAN_RSCAN_EPIE, CAN_RSCAN_EWIE, 
 *                        CAN_RSCAN_BEIE, CAN_RSCAN_RTBO, CAN_RSCAN_COMSTS,
 *                        CAN_RSCAN_RECSTS, CAN_RSCAN_TRMSTS, CAN_RSCAN_BOSTS,
 *                        CAN_RSCAN_EPSTS, CAN_RSCAN_THLIM, CAN_RSCAN_THLFLL,
 *                        CAN_RSCAN_BT_BUFFER, CAN_RSCAN_XXIESI, CAN_RSCAN_CFITR
 *                        CAN_RSCAN_CFITSS, CAN_RSCAN_TXQEMP, CAN_RSCAN_RTR,
 *                        CAN_RSCAN_IDMASK, CAN_RSCAN_LOCK_DATA1,
 *                        CAN_RSCAN_LOCK_DATA2, CAN_RSCAN_RAM_PAGE_BYTES.
 *         03-Jun-2021  : Added QAC Warning messages.
 * V1.0.3: 20-Dec-2021  : To support P1M-E, added macro CAN_RSCAN_DNFA(x)
 * V1.0.4: 06-Apr-2023  : As per ARDAABD-9547: Add new macro CAN_RSCAN_THLIM
 */
/******************************************************************************/

#ifndef CAN_REGSTRUCT_H
#define CAN_REGSTRUCT_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_REGSTRUCT_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_REGSTRUCT_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION
#define CAN_REGSTRUCT_AR_RELEASE_REVISION_VERSION\
                                                 CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_REGSTRUCT_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_REGSTRUCT_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3453) A function could probably be used instead         */
/*                 of this function-like macro.                               */
/* Rule          : MISRA-C:2004 Rule-19.7                                     */
/* Justification : Accept this message Function can't be used in              */
/*                 initializing expressions of const value,                   */
/*                 or macro is better in point of performance.                */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3453)-1 and                           */
/*                 END Msg(2:3453)-1 tags in the code.                        */
/******************************************************************************/

/******************************************************************************/
/**                      QAC warning                                         **/
/******************************************************************************/

/* 1. QAC Warning:                                                            */
/* Message       : (1:3132) Hard coded 'magic' number, 'n', used to define    */
/*                 the size of an array.                                      */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3132           */
/* Justification : These numbers are used to define register structures.      */
/*                 These completely depend on H/W and it is impossible to     */
/*                 define particular symbolic names.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(1:3132)-1 and                           */
/*                 END Msg(1:3132)-1 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* Create a word data from four byte data */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CREATEWORD(byte0, byte1, byte2, byte3) ( \
  (uint32)(byte0) | ((uint32)(byte1) << 8UL) | \
  ((uint32)(byte2) << 16UL) | ((uint32)(byte3) << 24UL))
/* END Msg(2:3453)-1 */

/* F1KH/F1KM devices */
#if (CAN_CANV2_CONFIGURED != STD_ON)
/* Number of tx buffers per controller */
#define CAN_RSCAN_TXBUFFER_PER_CH     32UL
/* Payload length of tx buffer and rx buffer */
#define CAN_RSCAN_SINGLEBUFFER_LENGTH 64UL
/* F1K devices */
#else
/* Number of tx buffers per controller */
#define CAN_RSCAN_TXBUFFER_PER_CH     16UL
/* Payload length of tx buffer and rx buffer */
#define CAN_RSCAN_SINGLEBUFFER_LENGTH 20UL
#endif

/* Number of RxFIFO per unit */
#define CAN_RSCAN_RXFIFO_PER_UNIT     8UL

/* Number of TxRxFIFO per controller */
#define CAN_RSCAN_TXRXFIFO_PER_CH     3UL

/* Number of Tx History List entries per controller */
/* F1KH/F1KM devices */
#if (CAN_CANV2_CONFIGURED != STD_ON)
#define CAN_RSCAN_THL_ENTRIES_PER_CH     32UL
/* F1K devices */
#else
#define CAN_RSCAN_THL_ENTRIES_PER_CH     16UL
#endif

/* Get number of FIFO Buffer Depth (number of messages) */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_FIFO_BUFFER_DEPTH_GET(x) \
  (uint8)(((uint8)(x) == 1U) ? 4U   : \
         (((uint8)(x) == 2U) ? 8U   : \
         (((uint8)(x) == 3U) ? 16U  : \
         (((uint8)(x) == 4U) ? 32U  : \
         (((uint8)(x) == 5U) ? 48U  : \
         (((uint8)(x) == 6U) ? 64U  : \
         (((uint8)(x) == 7U) ? 128U : 0U )))))))
/* END Msg(2:3453)-1 */

/* GCFG */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_ITRCP(x)    ((uint32)(x) << 16UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_CMPOC       0x00000020UL
#define CAN_RSCAN_DCS         0x00000010UL
#define CAN_RSCAN_MME         0x00000008UL
#define CAN_RSCAN_DCE         0x00000002UL
#define CAN_RSCAN_TPRI        0x00000001UL

/* GFDCFG */
#define CAN_RSCAN_GFDCFG_DEFAULT 0x00000000UL

/* GCTR */
#define CAN_RSCAN_GSLPR       0x00000004UL
#define CAN_RSCAN_GMDC_OP     0x00000000UL
#define CAN_RSCAN_GMDC_RESET  0x00000001UL
#define CAN_RSCAN_GMDC_TEST   0x00000002UL

/* GSTS */
#define CAN_RSCAN_GRAMINIT    0x00000008UL
#define CAN_RSCAN_GSTSMASK    0x00000007UL
#define CAN_RSCAN_GSLPSTS     0x00000004UL
#define CAN_RSCAN_GRSTSTS     0x00000001UL
#define CAN_RSCAN_GOPSTS      0x00000000UL

/* GAFLECTR */
#define CAN_RSCAN_RULES_PER_PAGE 16UL

#define CAN_RSCAN_AFLDAE      0x00000100UL
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_AFLPN(x)    ((uint32)(x))
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_AFLDAE_OFF  0x00000000UL

/* GAFLP0_j */
#define CAN_RSCAN_GAFLP_PAGE0 0U
#define CAN_RSCAN_GAFLP_PAGE1 1U
#if (CAN_CANV2_CONFIGURED == STD_ON)
#define CAN_RSCAN_GAFLDLC_0   0x00000000UL
#define CAN_RSCAN_GAFLDLC_1   0x10000000UL
#define CAN_RSCAN_GAFLDLC_2   0x20000000UL
#define CAN_RSCAN_GAFLDLC_3   0x30000000UL
#define CAN_RSCAN_GAFLDLC_4   0x40000000UL
#define CAN_RSCAN_GAFLDLC_5   0x50000000UL
#define CAN_RSCAN_GAFLDLC_6   0x60000000UL
#define CAN_RSCAN_GAFLDLC_7   0x70000000UL
#define CAN_RSCAN_GAFLDLC_8   0x80000000UL
#define CAN_RSCAN_GAFLDLC_12  0x90000000UL
#define CAN_RSCAN_GAFLDLC_16  0xA0000000UL
#define CAN_RSCAN_GAFLDLC_20  0xB0000000UL
#define CAN_RSCAN_GAFLDLC_24  0xC0000000UL
#define CAN_RSCAN_GAFLDLC_32  0xD0000000UL
#define CAN_RSCAN_GAFLDLC_48  0xE0000000UL
#define CAN_RSCAN_GAFLDLC_64  0xF0000000UL
#else
#define CAN_RSCAN_GAFLDLC_0   0x00000000UL
#define CAN_RSCAN_GAFLDLC_1   0x00000001UL
#define CAN_RSCAN_GAFLDLC_2   0x00000002UL
#define CAN_RSCAN_GAFLDLC_3   0x00000003UL
#define CAN_RSCAN_GAFLDLC_4   0x00000004UL
#define CAN_RSCAN_GAFLDLC_5   0x00000005UL
#define CAN_RSCAN_GAFLDLC_6   0x00000006UL
#define CAN_RSCAN_GAFLDLC_7   0x00000007UL
#define CAN_RSCAN_GAFLDLC_8   0x00000008UL
#define CAN_RSCAN_GAFLDLC_12  0x00000009UL
#define CAN_RSCAN_GAFLDLC_16  0x0000000AUL
#define CAN_RSCAN_GAFLDLC_20  0x0000000BUL
#define CAN_RSCAN_GAFLDLC_24  0x0000000CUL
#define CAN_RSCAN_GAFLDLC_32  0x0000000DUL
#define CAN_RSCAN_GAFLDLC_48  0x0000000EUL
#define CAN_RSCAN_GAFLDLC_64  0x0000000FUL
#endif /*(CAN_CANV2_CONFIGURED != STD_ON)*/
#define CAN_RSCAN_GAFLRMV     0x00008000UL
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_GAFLRMDP(x) (uint32)((uint32)(x) << 8U)
/* END Msg(2:3453)-1 */

/* GAFLP1_j */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_GAFLFDP_TXRXFIFO(x)  (0x100UL << (uint32)(x))
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_GAFLFDP_RXFIFO(x)    (1UL << (uint32)(x))
/* END Msg(2:3453)-1 */

/* RFCCx */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RFPLS_GET(x) (((uint32)(x) >> 4UL) & 0x7UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RFIE_GET(x) (((uint32)(x) >> 1UL) & 1UL)
/* END Msg(2:3453)-1 */
/* Get Rx FIFO Buffer Depth */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RFDC_GET(x) (((uint32)(x) >> 8UL) & 0x7UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_RFIGCV_1_8  0x00000000UL
#define CAN_RSCAN_RFIGCV_2_8  0x00002000UL
#define CAN_RSCAN_RFIGCV_3_8  0x00004000UL
#define CAN_RSCAN_RFIGCV_4_8  0x00006000UL
#define CAN_RSCAN_RFIGCV_5_8  0x00008000UL
#define CAN_RSCAN_RFIGCV_6_8  0x0000A000UL
#define CAN_RSCAN_RFIGCV_7_8  0x0000C000UL
#define CAN_RSCAN_RFIGCV_8_8  0x0000E000UL
#define CAN_RSCAN_RFIM        0x00001000UL
#define CAN_RSCAN_RFDC_0      0x00000000UL
#define CAN_RSCAN_RFDC_4      0x00000100UL
#define CAN_RSCAN_RFDC_8      0x00000200UL
#define CAN_RSCAN_RFDC_16     0x00000300UL
#define CAN_RSCAN_RFDC_32     0x00000400UL
#define CAN_RSCAN_RFDC_48     0x00000500UL
#define CAN_RSCAN_RFDC_64     0x00000600UL
#define CAN_RSCAN_RFDC_128    0x00000700UL
#define CAN_RSCAN_RFPLS_8     0x00000000UL
#define CAN_RSCAN_RFPLS_12    0x00000010UL
#define CAN_RSCAN_RFPLS_16    0x00000020UL
#define CAN_RSCAN_RFPLS_20    0x00000030UL
#define CAN_RSCAN_RFPLS_24    0x00000040UL
#define CAN_RSCAN_RFPLS_32    0x00000050UL
#define CAN_RSCAN_RFPLS_48    0x00000060UL
#define CAN_RSCAN_RFPLS_64    0x00000070UL
#define CAN_RSCAN_RFIE        0x00000002UL
#define CAN_RSCAN_RFE         0x00000001UL

/* RFSTSx */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RFIF_GET(x) (((uint32)(x) >> 3UL) & 1UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_RFIF        0xFFFF00F8UL
#define CAN_RSCAN_RFMLT       0xFFFF00F4UL
#define CAN_RSCAN_RFEMP       0x00000001UL

/* CmCFG, CFDCmDCFG */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_SJW(x)      (((uint32)(x) - 1UL) << 24UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_TSEG2(x)    (((uint32)(x) - 1UL) << 20UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_TSEG1(x)    (((uint32)(x) - 1UL) << 16UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_BRP(x)      ((uint32)(x))
/* END Msg(2:3453)-1 */

/* CFDCmNCFG */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_NTSEG2(x)   (((uint32)(x) - 1UL) << 24UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_NTSEG1(x)   (((uint32)(x) - 1UL) << 16UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_NSJW(x)     (((uint32)(x) - 1UL) << 11UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_NBRP(x)     ((uint32)(x))
/* END Msg(2:3453)-1 */

/* CmCTR */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_GET_EIEBITS(x) (((uint32)(x) >> 8UL) & 0xFFUL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_CTM_MASK    0xF8FFFFFFUL
#define CAN_RSCAN_CTMS_SELF0  0x04000000UL
#define CAN_RSCAN_CTMS_SELF1  0x06000000UL
#define CAN_RSCAN_CTME        0x01000000UL
#define CAN_RSCAN_BOM_HALT_BUSOFF_ENTRY 0x00200000UL
#define CAN_RSCAN_BOEIE       0x00000800UL
#define CAN_RSCAN_CHMDC_MASK  0x00000007UL
#define CAN_RSCAN_CSLPR       0x00000004UL
#define CAN_RSCAN_CHMDC_COM   0x00000000UL
#define CAN_RSCAN_CHMDC_RESET 0x00000001UL
#define CAN_RSCAN_CHMDC_HALT  0x00000002UL

/* CmSTS */
#define CAN_RSCAN_CSTSMASK    0x00000007UL
#define CAN_RSCAN_CSLPSTS     0x00000004UL
#define CAN_RSCAN_CHLTSTS     0x00000002UL
#define CAN_RSCAN_CRSTSTS     0x00000001UL
#define CAN_RSCAN_COPSTS      0x00000000UL

/* CmERFL */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_GET_EFBITS(x) ((uint32)(x) & 0xFFUL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_BOEF        0x00000008UL
#define CAN_RSCAN_ERFL_CLEAR  0x00000000UL

/* CmFDCFG */
#define CAN_RSCAN_TMME        0x08000000UL
#define CAN_RSCAN_GWBRS       0x04000000UL
#define CAN_RSCAN_GWFDF       0x02000000UL
#define CAN_RSCAN_GWEN        0x01000000UL
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_TDCO(x)     ((uint32)(x) << 16UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_TDCE        0x00000200UL

/* GRMCFG */
#define CAN_RSCAN_RCMC        0x00000001UL

/* THLCCm */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_THLIE_GET(x) (((uint32)(x) >> 8UL) & 1UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_THLDTE      0x00000400UL
#define CAN_RSCAN_THLIE       0x00000100UL
#define CAN_RSCAN_THLE        0x00000001UL
#define CAN_RSCAN_THLIM       0x00000200UL

/* THLSTSm */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_THLIF_GET(x) (((uint32)(x) >> 3UL) & 1UL)
/* END Msg(2:3453)-1 */
/* F1KH/F1KM devices */
#if (CAN_CANV2_CONFIGURED != STD_ON)
#define CAN_RSCAN_THLIF       0xFFFFC0F8UL
#else
#define CAN_RSCAN_THLIF       0xFFFFE0F8UL
#endif
#define CAN_RSCAN_THLELT      0x00000004UL
#define CAN_RSCAN_THLEMP      0x00000001UL

/* THLACCm */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_TID_GET(x)  (uint32)(((uint32)(x) & 0x0000FF00UL) >> 8UL)
/* END Msg(2:3453)-1 */
#define CAN_LABEL_BITS_MASK   (uint32)0x0000FFFFUL
#if (CAN_CANV2_CONFIGURED == STD_ON)
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_BN_GET(x)   (uint32)(((uint32)(x) >> 3UL) & 0x0FUL)
/* END Msg(2:3453)-1 */
#else
#define CAN_RSCAN_BN_GET(x)   (uint32)(((uint32)(x) >> 3UL) & 0x1FUL)
#endif
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_BT_GET(x)   (uint32)((uint32)(x) & 0x07UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_BT_TXRXFIFO 0x00000002UL
#define CAN_RSCAN_BT_TXQUEUE  0x00000004UL

/* THLPCTRm */
#define CAN_RSCAN_THLPC_NEXT  0x000000FFUL

/* TMPTRp, CFPTRk */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_XXDLC(x)    (uint32)((uint32)(x) << 28UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_XXDLC_GET(x) (uint32)((uint32)(x) >> 28UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_XXPTR(x)    (uint32)((uint32)(x) << 16UL)
/* END Msg(2:3453)-1 */

/* TMFDCTR, CFFDCSTS, RFFDSTS, RMFDSTS */
#define CAN_RSCAN_XXFDF       0x00000004UL
#define CAN_RSCAN_XXBRS       0x00000002UL

/* TMCp */
#define CAN_RSCAN_TMOM        (uint8)0x04U
#define CAN_RSCAN_TMTAR       (uint8)0x02U
#define CAN_RSCAN_TMTR        (uint8)0x01U

/* TMSTSp */
#define CAN_RSCAN_TMARM       (uint8)0x10U
#define CAN_RSCAN_TMTRM       (uint8)0x08U
#define CAN_RSCAN_TMTRF_CMP   (uint8)0x04U
#define CAN_RSCAN_TMTRF_ABT   (uint8)0x02U
#define CAN_RSCAN_TMTRF_NO    (uint8)0x19U
#define CAN_RSCAN_TMSTS       (uint8)0x01U

/* TMIDp, CFIDk */
#define CAN_RSCAN_THLEN       0x20000000UL

/* CFPCTRk */
#define CAN_RSCAN_CFPC_NEXT   0x000000FFUL

/* CFCCk */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFITT(x)    (uint32)((uint32)(x) << 24UL)
/* END Msg(2:3453)-1 */
#if (CAN_CANV2_CONFIGURED == STD_ON)
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFTML(x)    (uint32)((uint32)(x) << 20UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFTML_GET(x) (((uint32)(x) >> 20UL) & 0xFUL)
/* END Msg(2:3453)-1 */
#else
#define CAN_RSCAN_CFTML(x)    (uint32)((uint32)(x) << 16UL)
#define CAN_RSCAN_CFTML_GET(x) (((uint32)(x) >> 16UL) & 0x1FUL)
#endif
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFPLS_GET(x) (((uint32)(x) >> 4UL) & 0x7UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFTXIE_GET(x) (((uint32)(x) >> 2UL) & 1UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFRXIE_GET(x) (((uint32)(x) >> 1UL) & 1UL)
/* END Msg(2:3453)-1 */
/* Get Tx/Rx FIFO Buffer Depth */
/* F1KH/F1KM devices */
#if (CAN_CANV2_CONFIGURED != STD_ON)
#define CAN_RSCAN_CFDC_GET(x) (((uint32)(x) >> 21UL) & 0x7UL)
/* F1K devices */
#else
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFDC_GET(x) (((uint32)(x) >> 8UL) & 0x7UL)
/* END Msg(2:3453)-1 */
#endif

#if (CAN_CANV2_CONFIGURED == STD_ON)
#define CAN_RSCAN_CFM_RX      0x00000000UL
#define CAN_RSCAN_CFM_TX      0x00010000UL
#define CAN_RSCAN_CFM_GW      0x00020000UL
#else
#define CAN_RSCAN_CFM_RX      0x00000000UL
#define CAN_RSCAN_CFM_TX      0x00000100UL
#define CAN_RSCAN_CFM_GW      0x00000200UL
#endif
#define CAN_RSCAN_CFIGCV_1_8  0x00000000UL
#define CAN_RSCAN_CFIGCV_2_8  0x00002000UL
#define CAN_RSCAN_CFIGCV_3_8  0x00004000UL
#define CAN_RSCAN_CFIGCV_4_8  0x00006000UL
#define CAN_RSCAN_CFIGCV_5_8  0x00008000UL
#define CAN_RSCAN_CFIGCV_6_8  0x0000A000UL
#define CAN_RSCAN_CFIGCV_7_8  0x0000C000UL
#define CAN_RSCAN_CFIGCV_8_8  0x0000E000UL
#define CAN_RSCAN_CFIM        0x00001000UL
#if (CAN_CANV2_CONFIGURED == STD_ON)
#define CAN_RSCAN_CFDC_0      0x00000000UL
#define CAN_RSCAN_CFDC_4      0x00000100UL
#define CAN_RSCAN_CFDC_8      0x00000200UL
#define CAN_RSCAN_CFDC_16     0x00000300UL
#define CAN_RSCAN_CFDC_32     0x00000400UL
#define CAN_RSCAN_CFDC_48     0x00000500UL
#define CAN_RSCAN_CFDC_64     0x00000600UL
#define CAN_RSCAN_CFDC_128    0x00000700UL
#else
#define CAN_RSCAN_CFDC_0      0x00000000UL
#define CAN_RSCAN_CFDC_4      0x00200000UL
#define CAN_RSCAN_CFDC_8      0x00400000UL
#define CAN_RSCAN_CFDC_16     0x00600000UL
#define CAN_RSCAN_CFDC_32     0x00800000UL
#define CAN_RSCAN_CFDC_48     0x00A00000UL
#define CAN_RSCAN_CFDC_64     0x00C00000UL
#define CAN_RSCAN_CFDC_128    0x00E00000UL
#endif
#define CAN_RSCAN_CFPLS_8     0x00000000UL
#define CAN_RSCAN_CFPLS_12    0x00000010UL
#define CAN_RSCAN_CFPLS_16    0x00000020UL
#define CAN_RSCAN_CFPLS_20    0x00000030UL
#define CAN_RSCAN_CFPLS_24    0x00000040UL
#define CAN_RSCAN_CFPLS_32    0x00000050UL
#define CAN_RSCAN_CFPLS_48    0x00000060UL
#define CAN_RSCAN_CFPLS_64    0x00000070UL
#define CAN_RSCAN_CFTXIE      0x00000004UL
#define CAN_RSCAN_CFRXIE      0x00000002UL
#define CAN_RSCAN_CFE         0x00000001UL

/* CFSTSk */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFTXIF_GET(x) (((uint32)(x) >> 4UL) & 1UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_CFRXIF_GET(x) (((uint32)(x) >> 3UL) & 1UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_CFTXIF      0xFFFF00F0UL
#define CAN_RSCAN_CFRXIF      0xFFFF00E8UL
#define CAN_RSCAN_CFMLT       0xFFFF00E4UL
#define CAN_RSCAN_CFFLL       0x00000002UL
#define CAN_RSCAN_CFEMP       0x00000001UL

/* TXQPCTRm */
#define CAN_RSCAN_TXQPC_NEXT  0x000000FFUL

/* TXQCCm */
#if (CAN_CANV2_CONFIGURED == STD_ON)
#define CAN_RSCAN_TXQIM       0x00002000UL
#define CAN_RSCAN_TXQIE       0x00001000UL
#else
#define CAN_RSCAN_TXQIM       0x00000080UL
#define CAN_RSCAN_TXQIE       0x00000020UL
#endif
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_TXQDC(x)    (uint32)((uint32)(x) << 8UL)
/* END Msg(2:3453)-1 */
#define CAN_RSCAN_TXQE        0x00000001UL

/* TXQSTSm */
#define CAN_RSCAN_TXQIF       0xFFFFFFFCUL
#define CAN_RSCAN_TXQFLL      0x00000002UL

/* RMIDq, RFIDx, CFIDk, TMIDp, CFIDk */
#define CAN_RSCAN_IDE         0x80000000UL

/* RMNDy */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RMND_GET_INDEX(x) (uint32)((uint32)(x) >> 5UL)
/* END Msg(2:3453)-1 */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RMND_GET_BITMASK(x) (uint32)(1UL << ((uint32)(x) & 0x1FUL))
/* END Msg(2:3453)-1 */

/* GTSTCFG */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_RTMPS(page) (uint32)((uint32)(page) << 16UL)
/* END Msg(2:3453)-1 */

/* GTSTCTR */
#define CAN_RSCAN_RTME        0x00000004UL
#define CAN_RSCAN_ICBCTME     0x00000001UL
#define CAN_RSCAN_GTSTCTR_DISABLE 0x00000000UL

/* Calculate TxBuffer index to access TxQueue */
/* F1KH/F1KM devices */
#if (CAN_CANV2_CONFIGURED != STD_ON)
#define CAN_RSCAN_TXQUEUEWINDOW(x) (((uint32)(x) * 32UL) + 31UL)
/* F1K devices */
#else
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_TXQUEUEWINDOW(x) (((uint32)(x) * 16UL) + 15UL)
/* END Msg(2:3453)-1 */
#endif

#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
/* ulWUFMask */
#define CAN_RSCAN_WUF_CHANNEL_0  0x00000008UL
#define CAN_RSCAN_WUF_CHANNEL_1  0x00000010UL
#define CAN_RSCAN_WUF_CHANNEL_2  0x00000020UL
#define CAN_RSCAN_WUF_CHANNEL_3  0x00000040UL
#define CAN_RSCAN_WUF_CHANNEL_4  0x00000080UL
#define CAN_RSCAN_WUF_CHANNEL_5  0x00000100UL
#define CAN_RSCAN_WUF_CHANNEL_6  0x00000400UL
#if (CAN_CANV2_CONFIGURED != STD_ON)
#define CAN_RSCAN_WUF_CHANNEL_7  0x00000800UL
#define CAN_RSCAN_WUF_CHANNEL_8  0x00002000UL
#define CAN_RSCAN_WUF_CHANNEL_9  0x00004000UL
#define CAN_RSCAN_WUF_CHANNEL_10  0x00008000UL
#define CAN_RSCAN_WUF_CHANNEL_11  0x00010000UL
#endif
/* ulRxFIFOWUFMask */
#define CAN_RSCAN_WUF_GLOBAL_0  0x00000004UL
#if (CAN_CANV2_CONFIGURED != STD_ON)
#define CAN_RSCAN_WUF_GLOBAL_1  0x00001000UL
#else
#define CAN_RSCAN_WUF_GLOBAL_1  0x00000200UL
#endif
#endif

#define CAN_RSCAN_FCLA_FALLING_EDGE (uint8) 0x02U
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RSCAN_DNFA(x) (uint16)(1UL << (uint32)(x))
/* END Msg(2:3453)-1 */
/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/* This structure is used to access registers via symbol */
typedef struct STag_Can_ChRegType
{
/* RSCANnCmCFG / RSCFDnCFDCmNCFG */
  uint32 ulCFG;                                  /* +0000H+(m*10H) Cm(N)CFG  */
/* RSCANnCmCTR / RSCFDnCFDCmCTR */
  uint32 ulCTR;                                  /* +0004H+(m*10H) CmCTR     */
/* RSCANnCmSTS / RSCFDnCFDCmSTS */
  uint32 ulSTS;                                  /* +0008H+(m*10H) CmSTS     */
/* RSCANnCmERFL / RSCFDnCFDCmERFL */
  uint32 ulERFL;                                 /* +000CH+(m*10H) CmERFL    */
} Can_ChRegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDChRegType
{
  /* RSCFDnCFDCmDCFG */
  uint32 ulDCFG;                            /* +0500H/+700H+(m*20H) CmDCFG    */
  /* RSCFDnCFDCmFDCFG */
  uint32 ulFDCFG;                           /* +0504H/+704H+(m*20H) CmFDCFG   */
  /* RSCFDnCFDCmFDCTR */
  uint32 ulFDCTR;                           /* +0508H/+708H+(m*20H) CmFDCTR   */
  /* RSCFDnCFDCmFDSTS */
  uint32 ulFDSTS;                           /* +050CH/+70CH+(m*20H) CmFDSTS   */
  /* RSCFDnCFDCmFDCRC */
  uint32 ulFDCRC;                           /* +0510H/+710H+(m*20H) CmFDCRC   */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved[3];                     /* +0514H/+714H(m*20H) Reserved  */
  /* END Msg(1:3132)-1 */
} Can_FDChRegType;
/* This structure is used to access registers via symbol */
typedef struct STag_Can_RRuleRegType
{                                         /* RSCAN /RSCANFD                  */
  /* RSCANnGAFLIDj / RSCFDnCFDGAFLIDj */
  uint32 ulGAFLID;                        /* +0500H/+1000H+(j*10H) GAFLIDj   */
  /* RSCANnGAFLMj / RSCFDnCFDGAFLMj */
  uint32 ulGAFLM;                         /* +0504H/+1004H+(j*10H) GAFLMj    */
  /* RSCANnGAFLPxj / RSCFDnCFDGAFLPxj */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaGAFLP[2];                      /* +0508H/+1008H+(j*10H) GAFLPbj   */
  /* END Msg(1:3132)-1 */
} Can_RRuleRegType;

  /* This structure is used to access registers via symbol */
typedef struct STag_Can_HrhRegType
{
  /* RSCANnRMIDq */
  uint32 ulRMID;                                 /* +0600H+(q*10H) RMIDq     */
  /* RSCANnRMPTRq */
  uint32 ulRMPTR;                                /* +0604H+(q*10H) RMPTRq    */
  /* RSCANnRMDFb_q */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRMDF[2];                              /* +0608H+(q*10H) RMDFbq    */
  /* END Msg(1:3132)-1 */
} Can_HrhRegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDHrhRegType
{
  /* RSCFDnCFDRMIDq */
  uint32 ulFDRMID;                               /* +2000H+(20H*q) FDRMIDq   */
  /* RSCFDnCFDRMPTRq */
  uint32 ulFDRMPTR;                              /* +2004H+(20H*q) FDRMPTRq  */
  /* RSCFDnCFDFDRMFDSTSq */
  uint32 ulFDRMFDSTS;                            /* +2008H+(20H*q) FDRMSTSq  */
  #if(CAN_CANV2_CONFIGURED != STD_ON)
  uint32 aaFDRMDF[16];                           /* +200CH+(20H*q) FDRMDFbq  */
  uint32 aaReserved[13];                         /* +204CH+(20H*q) Reserved  */
  #else
  /* RSCFDnCFDRMDFbq */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaFDRMDF[5];                            /* +200CH+(20H*q) FDRMDFbq  */
  /* END Msg(1:3132)-1 */
  #endif
} Can_FDHrhRegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_HRTFIFORegType
{
  /* RSCANnRFIDx */
  uint32 ulRFID;                                 /* +0E00H+(10H*x) RFIDx     */
  /* RSCANnRFPTRx */
  uint32 ulRFPTR;                                /* +0E04H+(10H*x) RFPTRx    */
  /* RSCANnRFDFb_x */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRFDF[2];                              /* +0E08H+(10H*x) RFDFdx    */
  /* END Msg(1:3132)-1 */
} Can_HRTFIFORegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDHRTFIFORegType
{
  /* RSCFDnCFDRFIDx */
  uint32 ulFDRFID;                               /* +3000H+(80H*x) FDRFIDx   */
  /* RSCFDnCFDRFPTRx */
  uint32 ulFDRFPTR;                              /* +3004H+(80H*x) FDRFPTRx  */
  /* RSCFDnCFDRFFDSTSx */
  uint32 ulFDRFFDSTS;                            /* +3008H+(80H*x) FDRFFDSTSx*/
  /* RSCFDnCFDRFDFbx */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaFDRFDF[29];                           /* +300CH+(80H*x) FDRFDFdx  */
  /* END Msg(1:3132)-1 */
} Can_FDHRTFIFORegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_CFIFORegType
{
  /* RSCANnCFIDk */
  uint32 ulCFID;                                 /* +0E80H+(10H*k) CFIDk     */
  /*RSCANnCFPTRk*/
  uint32 ulCFPTR;                                /* +0E84H+(10H*k) CFPTRk    */
  /* RSCANnCFDFb_k */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaCFDF[2];                              /* +0E88H+(10H*k) CFDFak    */
  /* END Msg(1:3132)-1 */
} Can_CFIFORegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDCFIFORegType
{
  /* RSCFDnCFDCFIDk */
  uint32 ulFDCFID;                          /* +3400H/+6400+(80H*k) FDCFIDk   */
  /* RSCFDnCFDCFPTRk */
  uint32 ulFDCFPTR;                         /* +3404H/+6404+(80H*k) FDCFPTRk  */
  /* RSCFDnCFDCFFDCSTSk */
  uint32 ulFDCSTS;                          /* +3408H/+6408+(80H*k) FDCFFDCST */
  /* RSCFDnCFDCFDFd_k */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaFDCFDF[29];                      /* +340CH/+640C+(80H*k) FDCFDFdk  */
  /* END Msg(1:3132)-1 */
} Can_FDCFIFORegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_HthRegType
{
  /* RSCANnTMIDp */
  uint32 ulTMID;                                 /* +1000H+(10H*p) TMIDp     */
  /* RSCANnTMPTRp */
  uint32 ulTMPTR;                                /* +1004H+(10H*p) TMPTRp    */
  /* RSCANnTMDFb_p */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTMDF[2];                              /* +1008H+(10H*p) TMDFbp    */
  /* END Msg(1:3132)-1 */
} Can_HthRegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDHthRegType
{
  /* RSCFDnCFDTMIDp */
  uint32 ulFDTMID;                               /* +4000H+(20H*p) FDTMIDp   */
  /* RSCFDnCFDTMPTRp */
  uint32 ulFDTMPTR;                              /* +4004H+(20H*p) FDTMPTRp  */
  /* RSCFDnCFDTMFDCTRp */
  uint32 ulFDTMFDCTR;                            /* +4008H+(20H*p) FDTMFDCTRp*/
  #if(CAN_CANV2_CONFIGURED != STD_ON)
  uint32 aaFDTMDF[16];                            /* +400CH+(80H*p) FDTMDFbp  */
  uint32 aaReserved[13];                          /* +204CH+(80H*q) Reserved  */
  #else
  /* RSCFDnCFDTMDFb_p */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaFDTMDF[5];                            /* +400CH+(20H*p) FDTMDFbp  */
  /* END Msg(1:3132)-1 */
  #endif
} Can_FDHthRegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDTHLRegType
{
  /* RCFDCnCFDTHLACC0m */
  uint32 aaTHLACC0;                           /* +10000H+(08H*m)           */
  /* RCFDCnCFDTHLACC1m */
  uint32 aaTHLACC1;                           /* +10004H+(08H*m)           */
} Can_FDTHLRegType;

/* This structure is used to access registers via symbol */
typedef struct STag_Can_CommonRegType
{
  /* Channel registers */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_ChRegType aaChReg[8];                      /* +0000H+(10H*m) ChRegs    */
  /* END Msg(1:3132)-1 */
  /* Reserved */
  uint32 ulReserved0;                            /* +0080H Reserved          */
  /* RSCANnGCFG / RSCFDnCFDGCFG */
  uint32 ulGCFG;                                 /* +0084H GCFG              */
  /* RSCANnGCTR / RSCFDnCFDGCTR */
  uint32 ulGCTR;                                 /* +0088H GCTR              */
  /* RSCANnGSTS / RSCFDnCFDGSTS */
  uint32 ulGSTS;                                 /* +008CH GSTS              */
  /* RSCANnGERFL / RSCFDnCFDGERFL */
  uint32 ulGERFL;                                /* +0090H GERFL             */
  /* RSCANnGTSC / RSCFDnCFDGTSC */
  uint32 ulGTSC;                                 /* +0094H GTSC              */
  /* RSCANnGAFLECTR / RSCFDnCFDGAFLECTR */
  uint32 ulGAFLECTR;                             /* +0098H GAFLECTR          */
  /* RSCANnGAFLCFGm / RSCFDnCFDGAFLCFGm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaGAFLCFG[2];                           /* +009CH GAFLCFGn          */
  /* END Msg(1:3132)-1 */
  /* RSCANnRMNB / RSCFDnCFDRMNB */
  uint32 ulRMNB;                                 /* +00A4H RMNB              */
  /* RSCANnRMNDm / RSCFDnCFDRMNDm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRMND[4];                              /* +00A8H RMNDy             */
  /* END Msg(1:3132)-1 */
  /* RSCANnRFCCx / RSCFDnCFDRFCCx */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRFCC[8];                              /* +00B8H+(04H*x) RFCCx     */
  /* END Msg(1:3132)-1 */
  /* RSCANnRFSTSx / RSCFDnCFDRFSTSx */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRFSTS[8];                             /* +00D8H+(04H*x) RFSTSx    */
  /* END Msg(1:3132)-1 */
  /* RSCANnRFPCTRx / RSCFDnCFDRFPCTRx */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRFPCTR[8];                            /* +00F8H+(04H*x) RFPCTRx   */
  /* END Msg(1:3132)-1 */
  /* RSCANnCFCCk / RFCFDnCFDCFCCk */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaCFCC[24];                             /* +0118H+(04H*x) CFCCk     */
  /* END Msg(1:3132)-1 */
  /* RSCANnCFSTSk / RSCFDnCFDCFSTSk */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaCFSTS[24];                            /* +0178H+(04H*x) CFSTSk    */
  /* END Msg(1:3132)-1 */
  /* RSCANnCFPCTRk / RSCFDnCFDCFPCTRk */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaCFPCTR[24];                           /* +01D8H+(04H*x) CFPCTRk   */
  /* END Msg(1:3132)-1 */
  /* RSCANnFESTS / RSCFDnCFDFESTS */
  uint32 ulFESTS;                                /* +0238H FESTS             */
  /* RSCANnFFSTS / RSCFDnCFDFFSTS */
  uint32 ulFFSTS;                                /* +023CH FFSTS             */
  /* RSCANnFMSTS / RSCFDnCFDFMSTS */
  uint32 ulFMSTS;                                /* +0240H FMSTS             */
  /* RSCANnRFISTS / RSCFDnCFDRFISTS */
  uint32 ulRFISTS;                               /* +0244H RFISTS            */
  /* RSCANnCFRISTS / RSCFDnCFDCFRISTS */
  uint32 ulCFRISTS;                              /* +0248H CFRISTS           */
  /* RSCANnCFTISTS / RSCFDnCFDCFTISTS */
  uint32 ulCFTISTS;                              /* +024CH CRTISTS           */

  #if (CAN_CANV2_CONFIGURED != STD_ON)
  /* RSCANnTMCp / RSCFDnCFDTMCp */
  uint8 aaTMC[256];                              /* +0250H+(01H*p) TMCp      */
  /* RSCANnTMSTSp / RSCFDnCFDTMSTSp */
  uint8 aaTMSTS[256];                            /* +0350H+(01H*p) TMSTSp    */
  /* RSCANnTMTRSTSy / RSCFDnCFDTMTRSTSy */
  uint32 aaTMTRSTS[8];                           /* +0450H+(04H*y) TMTRSTSy  */
  /* RSCANnTMTARSTSy / RSCFDnCFDTMTARSTSy */
  uint32 aaTMTARSTS[8];                          /* +0470H+(04H*y) TMTARSTSy */
  /* RSCANnTMTCSTSy / RSCFDnCFDTMTCSTSy */
  uint32 aaTMTCSTS[8];                           /* +0490H+(04H*y) TMTCSTSy  */
  /* RSCANnTMTASTSy / RSCFDnCFDTMTASTSy */
  uint32 aaTMTASTS[8];                           /* +04B0H+(04H*y) TMTASTSy  */
  /* RSCANnTMIECy / RSCFDnCFDTMIECy */
  uint32 aaTMIEC[8];                             /* +04D0H+(04H*y) aaTMIEC  */
  /* Reserved */
  uint32 aaReserved0[24];                         /* +04F0H+(04H*y) Reserved  */
  /* RSCANnTXQCCm / RSCFDnCFDTXQCCm */
  uint32 aaTXQCC[8];                             /* +0550H+(04H*y) TXQCCm    */
  /* RSCANnTXQSTSm / RSCFDnCFDTXQSTSm */
  uint32 aaTXQSTS[8];                            /* +0570H+(04H*y) TXQTSTm   */
  /* RSCANnTXQPCTRm / RSCFDnCFDTXQPCTRm */
  uint32 aaTXQPCTR[8];                           /* +0590H+(04H*y) TXQPCTRm  */
  /* RSCANnTHLCCm / RSCFDnCFDTHLCCm */
  uint32 aaTHLCC[8];                             /* +05B0H+(04H*y) THLCCm    */
  /* RSCANnTHLSTSm / RSCFDnCFDTHLSTSm */
  uint32 aaTHLSTS[8];                            /* +05D0H+(04H*y) THLSTSm   */
  /* RSCANnTHLPCTRm / RSCFDnCFDPCTRm */
  uint32 aaTHLPCTR[8];                           /* +05F0H+(04H*y) THLPCTRm  */
  /* RSCANnGTINTSTS0/1 / RSCFDnCFDGTINTSTS0/1 */
  union                                          /* +0610H         GTINTSTSx */
  {
    uint32 aaW[2];                               /* for 32bit access         */
    uint8  aaB[8];                               /* for 8bit access          */
  } unGINTSTS;
  /* RSCANnGTSTCFG / RSCFDnCFDGTSTCFG */
  uint32 ulGTSTCFG;                              /* +0618H GTSTCFG           */
  /* RSCANnGTSTCTR / RSCFDnCFDGTSTCTR */
  uint32 ulGTSTCTR;                              /* +061CH GTSTCTR           */
  /* Reserved */
  uint32 ulReserved1;                            /* +0620H Reserved          */
  /* RSCFDnCFDGFDCFG */
  uint32 ulGFDCFG;                               /* +0624H [FD]GFDCFG        */
  /* Reserved */
  uint32 ulReserved2;                            /* +0628H Reserved       */
  /* RSCANnGLOCKK / RSCFDnCFDGLOCKK */
  uint32 ulGLOCKK;                               /* +062CH GLOCKK            */
  /* Reserved */
  uint32 aaReserved1[4];                         /* +0630H Reserved          */
  /* RSCFDnCFDCDTCT */
  uint32 ulCDTCT;                                /* +0640H [FD]CDTCT         */
  /* RSCFDnCFDCDSTS */
  uint32 ulCDTSTS;                               /* +0644H [FD]CDTSTS        */
  /* Reserved */
  uint32 aaReserved2[494];                       /* +0648H Reserved          */
  #else
  /* RSCANnTMCp / RSCFDnCFDTMCp */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint8 aaTMC[128];                              /* +0250H+(01H*p) TMCp      */
  /* END Msg(1:3132)-1 */
  /* RSCANnTMSTSp / RSCFDnCFDTMSTSp */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint8 aaTMSTS[128];                            /* +02D0H+(01H*p) TMSTSp    */
  /* END Msg(1:3132)-1 */
  /* RSCANnTMTRSTSy / RSCFDnCFDTMTRSTSy */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTMTRSTS[4];                           /* +0350H+(04H*y) TMTRSTSy  */
  /* END Msg(1:3132)-1 */
  /* RSCANnTMTARSTSy / RSCFDnCFDTMTARSTSy */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTMTARSTS[4];                          /* +0360H+(04H*y) TMTARSTSy */
  /* END Msg(1:3132)-1 */
  /* RSCANnTMTCSTSy / RSCFDnCFDTMTCSTSy */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTMTCSTS[4];                           /* +0370H+(04H*y) TMTCSTSy  */
  /* END Msg(1:3132)-1 */
  /* RSCANnTMTASTSy / RSCFDnCFDTMTASTSy */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTMTASTS[4];                           /* +0380H+(04H*y) TMTASTSy  */
  /* END Msg(1:3132)-1 */
  /* RSCANnTMIECy / RSCFDnCFDTMIECy */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTMIEC[4];                             /* +0390H+(04H*y) TMIECy    */
  /* END Msg(1:3132)-1 */
  /* RSCANnTXQCCm / RSCFDnCFDTXQCCm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTXQCC[8];                             /* +03A0H+(04H*y) TXQCCm    */
  /* END Msg(1:3132)-1 */
  /* RSCANnTXQSTSm / RSCFDnCFDTXQSTSm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTXQSTS[8];                            /* +03C0H+(04H*y) TXQTSTm   */
  /* END Msg(1:3132)-1 */
  /* RSCANnTXQPCTRm / RSCFDnCFDTXQPCTRm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTXQPCTR[8];                           /* +03E0H+(04H*y) TXQPCTRm  */
  /* END Msg(1:3132)-1 */
  /* RSCANnTHLCCm / RSCFDnCFDTHLCCm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTHLCC[8];                             /* +0400H+(04H*y) THLCCm    */
  /* END Msg(1:3132)-1 */
  /* RSCANnTHLSTSm / RSCFDnCFDTHLSTSm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTHLSTS[8];                            /* +0420H+(04H*y) THLSTSm   */
  /* END Msg(1:3132)-1 */
  /* RSCANnTHLPCTRm / RSCFDnCFDPCTRm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTHLPCTR[8];                           /* +0440H+(04H*y) THLPCTRm  */
  /* END Msg(1:3132)-1 */
  /* RSCANnGTINTSTS0/1 / RSCFDnCFDGTINTSTS0/1 */
  union                                          /* +0460H+(04H*x) GTINTSTSx */
  {
    /* QAC Warning: START Msg(1:3132)-1 */
    uint32 aaW[2];                               /* for 32bit access         */
    /* END Msg(1:3132)-1 */
    /* QAC Warning: START Msg(1:3132)-1 */
    uint8  aaB[8];                               /* for 8bit access          */
    /* END Msg(1:3132)-1 */
  } unGINTSTS;
  /* RSCANnGTSTCFG / RSCFDnCFDGTSTCFG */
  uint32 ulGTSTCFG;                              /* +0468H GTSTCFG           */
  /* RSCANnGTSTCTR / RSCFDnCFDGTSTCTR */
  uint32 ulGTSTCTR;                              /* +046CH GTSTCTR           */
  /* Reserved */
  uint32 ulReserved3;                            /* +0470H Reserved          */
  /* RSCFDnCFDGFDCFG */
  uint32 ulGFDCFG;                               /* +0474H [FD]GFDCFG        */
  /* RSCFDnCFDGCRCCFG */
  uint32 ulGCRCCFG;                              /* +0478H [FD]GCRCCFG       */
  /* RSCANnGLOCKK / RSCFDnCFDGLOCKK */
  uint32 ulGLOCKK;                               /* +047CH GLOCKK            */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved3[4];                         /* +0480H Reserved          */
  /* END Msg(1:3132)-1 */
  /* RSCFDnCFDCDTCT */
  uint32 ulCDTCT;                                /* +0490H [FD]CDTCT         */
  /* RSCFDnCFDCDSTS */
  uint32 ulCDTSTS;                               /* +0494H [FD]CDTSTS        */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved4[25];                        /* +0498H Reserved          */
  /* END Msg(1:3132)-1 */
  /* RSCFDnCFDGRMCFG */
  uint32 ulGRMCFG;                               /* +04FCH [FD]RMCFG         */
  /* The following regisers are available on RS-CAN (not RS-CANFD) only */
  /* Receive Rule registers (for RSCAN) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_RRuleRegType aaRRReg[16];                  /* +0500H+(10H*j)           */
  /* END Msg(1:3132)-1 */
  /* Receive Buffer registers (for RSCAN) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_HrhRegType aaHrhReg[128];                  /* +0600H+(10H*q)           */
  /* END Msg(1:3132)-1 */
  #endif
  /* Receive FIFO registers (for RSCAN) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_HRTFIFORegType aaRFReg[8];                 /* +0E00H+(10H*x)           */
  /* END Msg(1:3132)-1 */
  /* Transmit/Receive FIFO registers (for RSCAN) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_CFIFORegType aaCFReg[24];                  /* +0E80H+(10H*k)           */
  /* END Msg(1:3132)-1 */
  /* Transmit Buffer registers (for RSCAN) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_HthRegType aaHthReg[128];                  /* +1000H+(10H*p)           */
  /* END Msg(1:3132)-1 */
  /* RSCANnTHLACCm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTHLACC[16];                           /* +1800H+(04H*m)           */
  /* END Msg(1:3132)-1 */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved5[48];                        /* +1840H Reserved          */
  /* END Msg(1:3132)-1 */
  /* RSCANnRPGCCr */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRPGACC[64];                           /* +1900H+(04H*r)           */
  /* END Msg(1:3132)-1 */
} Can_CommonRegType;

#if(CAN_CANV2_CONFIGURED != STD_ON)
/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDRegType
{
  /* Channel registers (for RSCANFD) */
  Can_FDChRegType aaFDChReg[72];                 /* +0700H+(10H*m)           */
  /* Receive Rule registers (for RSCANFD) */
  Can_RRuleRegType aaRRReg[16];                  /* +1000H+(10H*j)           */
  /* Reserved */
  uint32 aaReserved0[960];                       /* +1100H Reserved          */
  /* Receive Buffer registers (for RSCANFD) */
  Can_FDHrhRegType aaHrhReg[128];                /* +2000H+(80H*q)           */
  /* Receive FIFO registers (for RSCANFD) */
  Can_FDHRTFIFORegType aaRFReg[8];               /* +6000H+(80H*x)           */
  /* Transmit/Receive FIFO registers (for RSCANFD) */
  Can_FDCFIFORegType aaCFReg[24];                /* +6400H+(80H*k)           */
  /* Reserved */
  uint32 aaReserved1[1024];                       /* +7000H Reserved          */
  /* Transmit Buffer registers (for RSCAN) */
  Can_FDHthRegType aaHthReg[256];                /* +8000H+(80H*p)           */
  /* Transmit History Access Register (for RSCANFD) */
  Can_FDTHLRegType aaTHLReg[8];                   /* +10000H+(08H*m)         */
  /* Reserved */
  uint32 aaReserved2[240];                       /* +10040H Reserved         */
  /* RSCFDnCFDRPGACCr */
  uint32 aaRPGACC[64];                           /* +10400H+(04H*r)          */
} Can_FDRegType;

#else
/* This structure is used to access registers via symbol */
typedef struct STag_Can_FDRegType
{
  /* Channel registers (for RSCANFD) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_FDChRegType aaFDChReg[16];                 /* +0500H+(10H*m)           */
  /* END Msg(1:3132)-1 */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved0[576];                       /* +0700H Reserved          */
  /* END Msg(1:3132)-1 */
  /* Receive Rule registers (for RSCANFD) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_RRuleRegType aaRRReg[16];                  /* +1000H+(10H*j)           */
  /* END Msg(1:3132)-1 */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved1[960];                       /* +1100H Reserved          */
  /* END Msg(1:3132)-1 */
  /* Receive Buffer registers (for RSCANFD) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_FDHrhRegType aaHrhReg[128];                /* +2000H+(20H*q)           */
  /* END Msg(1:3132)-1 */
  /* Receive FIFO registers (for RSCANFD) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_FDHRTFIFORegType aaRFReg[8];               /* +3000H+(80H*x)           */
  /* END Msg(1:3132)-1 */
  /* Transmit/Receive FIFO registers (for RSCANFD) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_FDCFIFORegType aaCFReg[24];                /* +3400H+(80H*k)           */
  /* END Msg(1:3132)-1 */
  /* Transmit Buffer registers (for RSCAN) */
  /* QAC Warning: START Msg(1:3132)-1 */
  Can_FDHthRegType aaHthReg[128];                /* +4000H+(20H*p)           */
  /* END Msg(1:3132)-1 */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved2[1024];                      /* +5000H Reserved          */
  /* END Msg(1:3132)-1 */
  /* RSCFDnCFDTHLACCm */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaTHLACC[16];                           /* +6000H+(04H*m)           */
  /* END Msg(1:3132)-1 */
  /* Reserved */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaReserved3[240];                       /* +6040H Reserved          */
  /* END Msg(1:3132)-1 */
  /* RSCFDnCFDRPGACCr */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaRPGACC[64];                           /* +6400H+(04H*r)           */
  /* END Msg(1:3132)-1 */
} Can_FDRegType;
#endif

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif /* CAN_REGSTRUCT_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
