

#include "CanTp.h" /* TRACE[SWS_CanTp_00221] */
#include "CanTp_Cbk.h"
#include "CanTp_Prv.h" /* TRACE[SWS_CanTp_00156] Indirect inclusion CanTp_Cfg.h[through CanTp.h] SchM_CanTp.h Det.h */


/* TRACE[SWS_CanTp_00253][SWS_CanTp_00168]TRACE[SWS_CanTp_00161] Defined as global variable available for debugging */
uint8 CanTp_MainState;





/***********************************************************************************************************************
 Function name    : CanTp_Init
 Syntax           : CanTp_Init(CfgPtr)
 Description      : TRACE[SWS_CanTp_00208] This function initializes the CanTp module.
 Parameter        : const CanTp_ConfigType*
 Return value     : None
***********************************************************************************************************************/
void CanTp_Init(const CanTp_ConfigType *CfgPtr)
{
    CanTp_MainState = CANTP_OFF; /* TRACE[SWS_CanTp_00027] */

    CanTp_CfgPtr = &CanTp_Config;
    (void)CfgPtr;

    {   /* TRACE[SWS_CanTp_00030][SWS_CanTp_00111][SWS_CanTp_00273] */
        CanTp_Prv_RxParamInit(); /* This is required for Change Parameter Api usecase.  */
        CanTp_Prv_QInit(); /* Burst Mode initialization  */
        /* Initialize all the channels to Idle  */
        CanTp_Prv_ArrayInit(&CanTp_SubState[0], CanTp_CfgPtr->NumberOfChannels, CANTP_IDLE);
        CanTp_Prv_ArrayInit(&CanTp_TxConfirmationChannel[0], CanTp_CfgPtr->NumberOfTxPdus, CANTP_INVALID_CHANNEL);

        CanTp_MainState = CANTP_ON; /* TRACE[SWS_CanTp_00027][SWS_CanTp_00170] */
    }
}



/***********************************************************************************************************************
 Function name    : CanTp_MainFunction
 Syntax           : CanTp_MainFunction()
 Description      : TRACE[SWS_CanTp_00213][SWS_CanTp_00164] CanTp scheduled functions which is called by the
                    BSW sheduler in a cyclic interval defined by the configuration parameter CanTp_MainFunctionPeriod.
                    Carries out all the routine job w.r.t. Timeout handling functionality of the CanTp when the OS is
                    running.
 Parameter        : None
 Return value     : None
***********************************************************************************************************************/
void CanTp_MainFunction(void)
{
    CanTp_ChannelIdType ChannelId;

    {

        {   /* Execute the states of all the non-burst channels. */
            for(ChannelId = 0; ChannelId < CanTp_CfgPtr->NumberOfChannels; ChannelId++)
            {
                CanTp_Prv_ExecuteState(ChannelId);
            }

            CanTp_IncrementCounter();
        }
    }
}



/***********************************************************************************************************************
 Function name    : CanTp_Transmit
 Syntax           : CanTp_Transmit(CanTpTxSduId, CanTpTxInfoPtr)
 Description      : TRACE[SWS_CanTp_00212][SWS_CanTp_00176] Asyncrounus Transmission request Api for upper layer module
                    I.e. PduR Module calls this Api for[Segmented: Multiframe][Unsegemented: Singleframe] type
                    tranmission request.
 Parameter        : PduIdType, PduInfoType*
 Return value     : Std_ReturnType
***********************************************************************************************************************/
Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr)
{
    Std_ReturnType RetVal = E_NOT_OK; /* TRACE[SWS_CanTp_00294] */
    CanTp_TickType Value = 0;
    CanTp_TickType ElapsedValue;
    uint32 MaxLength;
    uint8 PciId;
    uint8 ErrorId;
    uint8 PayloadLength;
    uint8 TX_DL;
    const CanTp_TxSduType *Connection;
    CanTp_ChannelType *Channel;

    {
        Connection = CanTp_CfgPtr->TxSdu + CanTpTxSduId;

        Channel = CanTp_Channel + Connection->ChannelId;

        if(CanTpTxInfoPtr == NULL_PTR)
        {   /* TRACE[SWS_CanTp_00321] */
            ErrorId = CANTP_E_PARAM_POINTER;
        }
        else if(CanTpTxInfoPtr->SduLength == 0u)
        {
            ErrorId = CANTP_E_COM;
        }
        else
        {
            CanTp_Prv_TxPciInit(&PciId, CanTpTxSduId, CanTpTxInfoPtr);
            TX_DL = CanTp_Prv_GetTxDl(Connection); /* TRACE[SWS_CanTp_00354] */

            if(CanTp_Prv_GetBit(Connection->BitFields, CANTP_FUNCTIONAL))
            {
                PayloadLength = TX_DL - 1 - CanTp_AddressSize[Connection->AddressFormatId];
                MaxLength = (PciId < CANTP_NPCI_SFCANFD) ? PayloadLength : (PayloadLength - CANTP_FDSFDL_PCI);
            }
            else
            {
                #if(CANTP_CANFD_SUPPORT == CANTP_ON)
                MaxLength = (uint16)((TX_DL > CANTP_DEFAULT_CAN_DL) ? CANTP_MAXFDFFDL : CANTP_MAXFFDL);
                #else
                MaxLength = (uint16)CANTP_MAXFFDL;
                #endif
            }
            /* TRACE[SWS_CanTp_00093][SWS_CanTp_00231][SWS_CanTp_00232] */
            ErrorId = (CanTpTxInfoPtr->SduLength > MaxLength) ? CANTP_E_INVALID_TATYPE : CANTP_NO_ERROR;
        }

        if(ErrorId != CANTP_NO_ERROR)
        {
            CanTp_Prv_ReportRunTimeError(CANTP_TRANSMIT, ErrorId);
        }
        else
        {
            CanTp_GetElapsedValue(&Value, &ElapsedValue);

            SchM_Enter_CanTp_EXCLUSIVE_AREA();

            if(CanTp_Prv_GetState(Connection->ChannelId) == CANTP_IDLE)
            {    /* TRACE[SWS_CanTp_00206][SWS_CanTp_00287][SWS_CanTp_00288][SWS_CanTp_00123] Accept request for Tx in
                 IDLE state */
                Channel->ActiveSduId = (CanTp_SduIdType)CanTpTxSduId;
                Channel->PciId = PciId;
                Channel->SduLength = CanTpTxInfoPtr->SduLength;
                Channel->InitialTicks = Value; /* TRACE[SWS_CanTp_00167] */
                Channel->TxBufferStatus = CANTP_BUFFER_NOT_ASKED;
                /* Invalid STmin to denote that 1st FC-CTS is not received, shall be set after rx of 1st FC-CTS */
                Channel->STminTicks = CANTP_INVALID_STMIN_TICKS;
                CanTp_SubState[Connection->ChannelId] = CANTP_TX_TRANSMISSION_REQUEST_ACCEPTED;
                RetVal = E_OK;
            }

            SchM_Exit_CanTp_EXCLUSIVE_AREA();
        }
    }

    return(RetVal);
}



/***********************************************************************************************************************
 Function name    : CanTp_TxConfirmation
 Syntax           : CanTp_TxConfirmation(TxPduId)
 Description      : Indication of a transmit confirmation from a lower layer communication interface module. I.e.
                    CanIf Module calls this Api for [SF][FF][CF][FC] transmit confirmation.
                    TRACE[SWS_CanTp_00215][SWS_CanTp_00076][SWS_CanTp_00236]
 Parameter        : PduIdType
 Return value     : None
***********************************************************************************************************************/
void CanTp_TxConfirmation(PduIdType TxPduId)
{   /* TRACE[SWS_CanTp_00076] */
    CanTp_ChannelType *Channel;
    CanTp_ChannelIdType ChannelId;
    uint8 SubState;
    CanTp_TickType Value = 0;
    CanTp_TickType ElapsedValue;
    uint8 MaxCopyLength;
    const CanTp_TxSduType *TxConnection;

    {
        CanTp_GetElapsedValue(&Value, &ElapsedValue);

        SchM_Enter_CanTp_EXCLUSIVE_AREA();

        ChannelId = CanTp_TxConfirmationChannel[TxPduId];
        Channel = CanTp_Channel + ((ChannelId < CanTp_CfgPtr->NumberOfChannels) ? ChannelId : 0);
        SubState = (ChannelId < CanTp_CfgPtr->NumberOfChannels) ? CanTp_SubState[ChannelId] : CANTP_IDLE;

        switch(SubState)
        {
            case CANTP_RX_WAIT_FOR_FCTRANSMIT_CONFIRMATION:

                Channel->InitialTicks = Value;
                CanTp_Prv_FcTxConfirmation(ChannelId);
                CanTp_TxConfirmationChannel[TxPduId] = CANTP_INVALID_CHANNEL; /* TRACE[SWS_CanTp_00248] */
                break;

            case CANTP_TX_WAIT_FOR_TRANSMIT_CONFIRMATION:

                Channel->InitialTicks = Value;
                TxConnection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
                MaxCopyLength = CanTp_Prv_GetTxDl(TxConnection) -
                                CanTp_AddressSize[TxConnection->AddressFormatId] - CanTp_PciSize[Channel->PciId];
                Channel->SduLengthRemaining = (Channel->SduLengthRemaining < MaxCopyLength) ? 0u :
                                              (Channel->SduLengthRemaining - MaxCopyLength);

                if(Channel->PciId == CANTP_NPCI_CF)
                {
                    Channel->SN++;
                    Channel->SN &= CANTP_LOWERNIBBLE_MASK ;
                    Channel->BlockCfsRemaining--;
                }

                if(Channel->SduLengthRemaining == 0u)
                {   /* TRACE[SWS_CanTp_00177][SWS_CanTp_00090][SWS_CanTp_00204] This is entered for SF or Last CF. */
                    CanTp_SubState[ChannelId] = CANTP_IDLE;
                    CanTp_Prv_PduRConfirmation(CANTP_TX_PDUR_CONFIRMATION, TxConnection->PduRPduHandleId, E_OK);
                }
                else
                {
                    if(Channel->BlockCfsRemaining != 0u)
                    {
                        CanTp_SubState[ChannelId] = CANTP_TX_SEND_CONSECUTIVE_FRAME;
                    }
                    else
                    {   /* If flowcontrol is disabled then move state to next level and update STMin/BS defaults. */
                        CanTp_Prv_PrepareFcRecieve(ChannelId);
                    }
                }
                /* TRACE[SWS_CanTp_00248][SWS_CanTp_00075] */
                CanTp_TxConfirmationChannel[TxPduId] = CANTP_INVALID_CHANNEL;
                break;

            default:    /* Wrong State */
                break;
        }

        SchM_Exit_CanTp_EXCLUSIVE_AREA();
        /* If burst mode is enabled then activate state function directly. */
        CanTp_Prv_BurstMainFunction(ChannelId, CANTP_TRIGGER_TX_CONFIRMATION);
    }
}

/***********************************************************************************************************************
 Function name    : CanTp_RxIndication
 Syntax           : CanTp_RxIndication(RxPduId, PduInfoPtr)
 Description      : Indication of a received I-PDU from a lower layer communication interface module. I.e. CanIf Module
                    calls this Api for [SF][FF][CF][FC] type frames. TRACE[SWS_CanTp_00214][SWS_CanTp_00078]
                    [SWS_CanTp_00235][SWS_CanTp_00057][SWS_CanTp_00290]
 Parameter        : PduIdType, PduInfoType
 Return value     : None
***********************************************************************************************************************/
void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType *PduInfoPtr)
{
    CanTp_RxContextType Context;
    uint8 ErrorId;

    Context.PduId = RxPduId;
    Context.FrameType = 0;
    Context.ChannelId = 0;

    {/* TRACE[SWS_CanTp_00238] Initialization check done in CanTp_Prv_IsNoDevError */
        if(PduInfoPtr == NULL_PTR)
        {   /* TRACE[SWS_CanTp_00322] */
            CanTp_Prv_ReportRunTimeError(CANTP_RXINDICATION, CANTP_E_PARAM_POINTER);
        }
        else
        {
            ErrorId = CanTp_Prv_GetRxContext(&Context, PduInfoPtr);

            if(ErrorId != CANTP_NO_ERROR)
            {
                CanTp_Prv_ReportRunTimeError(CANTP_RXINDICATION, ErrorId);
            }
            else if(CanTp_Prv_RxSduLengthCheck(&Context, PduInfoPtr) != E_OK)
            {
                CanTp_Prv_LengthError(&Context);
            }
            else
            {   /* Frame Processing based on Context updated in CanTp_Prv_GetRxContext and CanTp_Prv_RxSduLengthCheck */
                CanTp_Prv_ProcessFrame(&Context, PduInfoPtr);
                /* If burst mode is enabled then activate state function directly. */
                CanTp_Prv_BurstMainFunction(Context.ChannelId, CANTP_TRIGGER_RX_INDICATION);
            }
        }
    }
}




