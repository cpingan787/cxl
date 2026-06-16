 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : CanIf.c
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
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "CanIf.h"
#include "CanTp_Cbk.h"
#include "Dcm.h"
#include "BootM.h"
#include "EcuMService.h"
#include "Common.h"
#include "Can.h"
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CanIf_Transmit
*
* Description   : This function is used to transmit can message by call can_write.
*
* Inputs        : CanTxPduId: unused, AUTOSAR standard interface parameter
*                 PduInfoPtr: can message info
*
* Outputs       : None
*
* Return        : E_OK: can message transmit success
*                 E_NOT_OK: can message transmit fail
*
* Limitations   : Only for bootloader
*
************************************************************************************************
END_FUNCTION_HDR */
Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType* PduInfoPtr )
{
     Std_ReturnType retval = E_OK;
     Can_PduType CanIfTxPduObject;

     COMMF_UNUSED_PARAM(CanTxPduId);
     CanIfTxPduObject.swPduHandle = CANIF_CANTXPDUID;  /*  bootloader has only one tx frame */
     CanIfTxPduObject.length      = (uint8)PduInfoPtr->SduLength;
     CanIfTxPduObject.id          = CANIF_TX_ID; /*  bootloader has only one tx id */
     CanIfTxPduObject.sdu         = PduInfoPtr->SduDataPtr;
#if(ECUM_SLEEP_ENABLE == STD_ON)
     CommF_SetStartTime(gEcuM_SleepCnt);
#endif
     if(CAN_OK != Can_Write(HTH,&CanIfTxPduObject))
     {
        retval = E_NOT_OK;
     }
     return retval;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CanIf_TxConfirmation
*
* Description   : This function is used to to confirm the message transmission.
*
* Inputs        : CanTxPduId: L-PDU handle of CAN L-PDU successfully transmitted.
*                 This ID specifies the corresponding CAN L-PDU ID and implicitly the CAN Driver
*                 instance as well as the corresponding CAN controller device.
*
* Outputs       : None
*
* Return        : None
*
* Limitations   : Only for bootloader
*
************************************************************************************************
END_FUNCTION_HDR */
void CanIf_TxConfirmation( PduIdType CanTxPduId )
{
    if(CanTxPduId == CANIF_CANTXPDUID)
    {
        CanTp_TxConfirmation(0);
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CanIf_RxIndication
*
* Description   : This function is used to to indicate the message reception.
*
* Inputs        : Mailbox: Identifies the HRH and its corresponding CAN Controller
*                 PduInfoPtr: can message info
*
* Outputs       : None
*
* Return        : None
*
* Limitations   : Only for bootloader
*
************************************************************************************************
END_FUNCTION_HDR */
void CanIf_RxIndication(const Can_HwType * Mailbox, const PduInfoType * PduInfoPtr)
{
    PduInfoType CanIf_TpRxPduInfo ;
    uint8 i;
    /* Store and receive data,  the data is used for checking SIB data */
    if(g_BootM_SIBTimeout == FALSE)
    {
        for(i = 0; i < BOOTM_SIB_REQUEST_LEN; i++)
        {
            g_BootM_SIBData[i] = PduInfoPtr->SduDataPtr[i];
        }
    }

    CanIf_TpRxPduInfo.SduLength = PduInfoPtr->SduLength;
    CanIf_TpRxPduInfo.SduDataPtr = (uint8*)PduInfoPtr->SduDataPtr;
#if(ECUM_SLEEP_ENABLE == STD_ON)
    CommF_SetStartTime(gEcuM_SleepCnt);
#endif
    if (PduInfoPtr->SduLength <= 64U)
    {
        /* bootloader use only 2 rx id  */
        if(CANIF_RX_PHY_ID == Mailbox->CanId )
        {
            CanTp_RxIndication(0, &CanIf_TpRxPduInfo);
        }
        else if (CANIF_RX_FUN_ID == Mailbox->CanId )
        {
            Set_FunReq_Flag();
            CanTp_RxIndication(1, &CanIf_TpRxPduInfo);
        }
        else
        {
            /*do nothing*/
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CanIf_ControllerBusOff
*
* Description   : This function is used to to handle busoff.
*                 It's AUTOSAR standard interface, unused.
*
* Inputs        : ControllerId: unused, AUTOSAR standard interface parameter
*
* Outputs       : None
*
* Return        : None
*
* Limitations   : Only for bootloader
*
************************************************************************************************
END_FUNCTION_HDR */
void CanIf_ControllerBusOff(uint8 ControllerId)
{
    /* Initialize CAN Driver */
    Can_Init(CanConfigSet0);
    Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CanIf_ControllerModeIndication
*
* Description   : This function is used to to handle controller mode change.
*                 It's AUTOSAR standard interface, unused.
*
* Inputs        : ControllerId: unused, AUTOSAR standard interface parameter
*                 ControllerMode: unused, AUTOSAR standard interface parameter
*
* Outputs       : None
*
* Return        : None
*
* Limitations   : Only for bootloader
*
************************************************************************************************
END_FUNCTION_HDR */
void CanIf_ControllerModeIndication( uint8 ControllerId, CanIf_ControllerModeType ControllerMode )
{
    COMMF_UNUSED_PARAM(ControllerId);
    COMMF_UNUSED_PARAM(ControllerMode);
    /*do nothing*/
}
