 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : CanIf.h
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : zhongliang.Yang
************************************************************************************************
*   Description     :
*
************************************************************************************************
*   Limitations     : None
*
************************************************************************************************
*
************************************************************************************************
*   Revision History:
* 
*   Version     Date          Initials           CR#         Descriptions
*   --------    -----------   ----------------   --------    -----------------------
*   1.0         2018/05/29    zhongliang.yang    N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
#ifndef CANIF_H
#define CANIF_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
//#include "ComStackTypes.h"
#include "CanIf_Types.h"
#include "System_Cfg.h"

/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/
#define CANIF_FD_MASK                (0x40000000U)
#define CANIF_EXTENDED_MASK          (0x80000000U)

#define CANIF_CANTXPDUID             (0U)

/* only 1 tx can id, it needs to add corresponding mask base on id format(canfd/extended)*/
#define CANIF_TX_ID                  (0x719U | CANIF_FD_MASK) /* | CANIF_FD_MASK | CANIF_EXTENDED_MASK*/
/* only 2 rx can id, they need to add corresponding mask base on id format(canfd/extended)*/
#define  CANIF_RX_PHY_ID             (0x711U | CANIF_FD_MASK) /* | CANIF_FD_MASK | CANIF_EXTENDED_MASK*/
#define  CANIF_RX_FUN_ID             (0x7DFU | CANIF_FD_MASK) /* | CANIF_FD_MASK | CANIF_EXTENDED_MASK*/
//
#define  HTH                         CanConf_CanHardwareObject_CanHardwareObject_Tx0
/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
extern Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType* PduInfoPtr );
extern void CanIf_TxConfirmation( PduIdType CanTxPduId );
extern void CanIf_RxIndication(const Can_HwType * Mailbox, const PduInfoType * PduInfoPtr);
extern void CanIf_ControllerBusOff(uint8 ControllerId);
extern void CanIf_ControllerModeIndication( uint8 ControllerId, CanIf_ControllerModeType ControllerMode );

#endif
