/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Dcm.c
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
//#include "delay.h"
#include "CanIf.h"
#include "CanTp.h"
#include "Common.h"
#include "CommonMacroDefine.h"
#include "Dcm.h"
#include "Dcm_Macro.h"
#include "MemM_cfg.h"
#include "Diag_Callout.h"
#include "RequestDownload.h"
#include "TransferData.h"
#include "ResetService.h"
#include "RoutineControl.h"
#include "DIDReadWrite.h"
#include "RequestTransferExit.h"
#include "SignatureHeader.h"
#if(DCM_SERVICE_27_ENABLED==STD_ON)
#include "SecurityAccess.h"
#endif
#if(DCM_SERVICE_29_ENABLED == STD_ON)
#include "Authentication.h"
#endif
/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/

/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
/* Local data ****************************************************************/
static uint8 Dcm_SduBuffer[DCM_SDU_BUFFER_SIZE];
static uint8                  Dcm_NegativeResCode;
static uint16                 Dcm_ReqDataIndex;
static uint16                 Dcm_ResDataIndex;
static uint16                 Dcm_ReqDataLength;
static uint16                 Dcm_ResDataLength;
static uint16                 TransDataBlockSeqCounter;
static uint16                 TransDataTotalNumofBlock;
static uint16                 TransDataLastBlockSize;
static uint32         TransDataNumofTransmittedData;
static uint32      ProgramStartAddr;  /* Actual address for flash programming */
static uint32         ProgramMemorySize;
uint8             Dcm_ResponseFlag;
PduInfoType  Dcm_TxSduInfo;
/* External data *************************************************************/
uint8             gDCM_FunReq_Flag;
uint8             Dcm_S3TimerStartFlag;
uint16            Dcm_S3Timer;
uint8             Dcm_P2TimerStartFlag;
uint16            Dcm_P2Timer;
DcmState_t       DcmState;
uint8        	 ServerIdPost ;
uint8        	 ServerPostCount;
uint16           CurrentProgramCnt;
/***************************************************************************************************
*                                 INTERNAL FUNCTION PROTOTYPES
***************************************************************************************************/
#define DcmIsNoResponse()                      (Dcm_ResponseFlag == 1U)
#define DcmSetNoResponse()                     (Dcm_ResponseFlag = 1)
#define DcmClrNoResponse()                     (Dcm_ResponseFlag = 0)

static void Dsd_SuppressPositiveResponse(void);
static void Dsd_ProcessingDone( PduLengthType dataLength );
static void Dsp_DiagnosticSessionControl(void);
static void Dsp_EcuReset(void);
#if(DCM_SERVICE_22_ENABLED==STD_ON)
static void Dsp_ReadDataByIdentifier(void);
#endif
#if(DCM_SERVICE_27_ENABLED==STD_ON)
static void Dsp_SecurityAccess(void);
static void Dsp_SA_SeedProcess(void);
static void Dsp_SA_KeyProcess(void);
#endif
static void Dsp_CommunicationControl(void);
#if(DCM_SERVICE_2E_ENABLED==STD_ON)
static void Dsp_WriteDataByIdentifier(void);
#endif
static void Dsp_RoutineControl(void);
static void Dsp_RC_CheckProgrammingPreConditions(void);
static void Dsp_RC_EraseMemory(void);
static void Dsp_RC_CheckProgrammingIntegrity(void);
static void Dsp_RC_CheckProgrammingDependencies(void);
static void Dsp_RequestDownload(void);
static uint8 Dsp_RD_SequenceCheck(void);
static void Dsp_TransferData(void);
static uint8 Dsp_TD_BlockSequenceProsess(void);
static void Dsp_RequestTransferExit(void);
static void Dsp_TesterPresent(void);
static void Dsp_ControlDTCSetting(void);
static void Dcm_ClearState(void) ;
#if(DCM_SERVICE_29_ENABLED == STD_ON)
static void Dsp_Authentication(void);
#endif
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_ClearState
*
* Description   : This function is used to clear all dcm states.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dcm_ClearState(void)
{
    uint8 i;
    for(i = 0 ; i < 4 ; i++)
    {
        DcmState.u8_arr[i] = 0;
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_Init
*
* Description   : This function is used initialize module variables.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_Init(void)
{
    Dcm_ClearState();
    SetDcmState_Session(DCM_SubFun_DefaultSession);
    DCM_RESET_NRC();     
    DCM_STOP_P2TIMER();
    DCM_STOP_S3TIMER();
    DcmClrNoResponse();
    Dcm_ResDataIndex = 0;
    Dcm_ReqDataIndex = 0;
    Dcm_ResDataLength = 0;
    gDCM_FunReq_Flag = 0;

    g_CurLogicalBlockId = COMMF_INVALID_U8;
    g_DownSegIdx = 0;
    g_DownBlockIdx = 0;
    ServerIdPost = 0xFF ;
    ServerPostCount = 0 ;
    EEIf_Read(PROGRAM_CNT_ADDR_IDX, PROGRAM_CNT_LEN, &CurrentProgramCnt);
#if(DCM_SERVICE_27_ENABLED==STD_ON)
    (void)Diag_FlagRead(MEMM_FLAG_FAC_ID,(uint8*)&g_SA_FAC_Last);
    g_SA_FAC = g_SA_FAC_Last;
    CommF_SetStartTime(g_SA_DelayTimer);
#endif
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_MainFunction
*
* Description   : This function dispatches all services requests to the appropriate service
*                 handler.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_MainFunction( void )
{
    /* Judge whether the diagnostic request flag is valid */
   if (GetDcmState_ReceivedRequset())
   {
       /* Set the Enter diagnostic service flag*/
        SetDcmState_ServiceInProgress();
        /* Clear the diagnostic request flag */
        ClrDcmState_ReceivedRequset();
        /* Reset response flag */
        DCM_RESET_NRC();
        /* Clear no response flag to ensure each request starts fresh */
        DcmClrNoResponse();

        /* Judge which service it is */
        switch (Dcm_SduBuffer[DCM_SID_Idx])
        {
            case DCM_SID_DiagnosticSessionControl:
                Dsd_SuppressPositiveResponse();
                Dsp_DiagnosticSessionControl();
                break;

            case DCM_SID_EcuReset:
                Dsd_SuppressPositiveResponse();
                Dsp_EcuReset();
                break;
#if(DCM_SERVICE_27_ENABLED==STD_ON)
            case DCM_SID_SecurityAccess:
                Dsp_SecurityAccess();
                break;
#endif
            case DCM_SID_CommunicationControl:
                Dsd_SuppressPositiveResponse();
                Dsp_CommunicationControl();
                break;
 
            case DCM_SID_RoutineControl:
                Dsd_SuppressPositiveResponse();
                Dsp_RoutineControl();
                break;
                
            case DCM_SID_RequestDownload:
                Dsp_RequestDownload();
                break;

            case DCM_SID_TransferData:
                Dsp_TransferData();
                break;

            case DCM_SID_RequestTransferExit:
                Dsp_RequestTransferExit();
                break;
                
            case DCM_SID_TesterPresent:
                Dsd_SuppressPositiveResponse();
                Dsp_TesterPresent();
                break;
                
            case DCM_SID_ControlDTCSetting:
                Dsd_SuppressPositiveResponse();
                Dsp_ControlDTCSetting();
                break;

            case DCM_SID_WriteDataByIdentifier:
                Dsp_WriteDataByIdentifier();
                break;

            case DCM_SID_ReadDataByIdentifier:
                Dsp_ReadDataByIdentifier();
                break;
#if(DCM_SERVICE_29_ENABLED == STD_ON)
            case DCM_SID_Authentication:
                Dsp_Authentication();
                break;
#endif
            default:
                DCM_SET_NRC(DCM_NRC_serviceNotSupported);

                break;
        }
        
        if ((DCM_GET_NRC() != DCM_NRC_positiveResponse)||(DcmIsNoResponse()))
        {
            Dsd_ProcessingDone((uint16)0U);
        }
        
        ClrDcmState_FunctionalRequest();
        ClrDcmState_ServiceInProgress();
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_MainFunction
*
* Description   : This function dispatches all services requests to the appropriate service
*                 handler.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_MainFunction_Post( void )
{
    /* Judge which service it is */
	if(ServerIdPost != 0xFF)
	{
		if(ServerPostCount > 1)
		{
			switch (ServerIdPost)
			{
				case DCM_SID_DiagnosticSessionControl:
#if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)
					  ResetService_EcuReset(RESET_HARD);
#endif
					   break;
				case DCM_SID_EcuReset:
#if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)
					   ResetService_EcuReset(RESET_HARD);
#endif
					   break;
			#if(DCM_SERVICE_27_ENABLED==STD_ON)
				case DCM_SID_SecurityAccess:
					   break;
			#endif
				   case DCM_SID_CommunicationControl:
					   break;

				   case DCM_SID_RoutineControl:
					   break;

				   case DCM_SID_RequestDownload:
					   break;

				   case DCM_SID_TransferData:
					   break;

				   case DCM_SID_RequestTransferExit:
					   break;

				   case DCM_SID_TesterPresent:
					   break;

				   case DCM_SID_ControlDTCSetting:
					   break;

				   case DCM_SID_WriteDataByIdentifier:
					   break;

				   case DCM_SID_ReadDataByIdentifier:
					   break;
			#if(DCM_SERVICE_29_ENABLED == STD_ON)
				   case DCM_SID_Authentication:
					   Dsp_Authentication();
					   break;
			#endif
				   default:

					   break;
			   }
			   ServerIdPost = 0xFF;
		}
		ServerPostCount ++ ;
	}
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_MainFunction
*
* Description   : The function handles the monitor of the tester-present timer. When a timeout
*                 occurs the startup code of the Boot is executed.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_TimerFunction(void)
{
    uint16 S3Timeout;
#if(DCM_SERVICE_27_ENABLED==STD_ON)
    uint16 SATimeout;

   /* for 0x27, access delay time */
    if(g_SA_FAC >= SA_FAC)
    {
        CommF_GetElapsedValue(&g_SA_DelayTimer, &SATimeout);
        if(SATimeout >= SA_DELAYTIME)
        {
            g_SA_FAC = SA_FAC - 1U;
            Diag_FlagWrite(MEMM_FLAG_FAC_ID, (uint8*)&g_SA_FAC);
        }
    }
#endif
    if(DCM_IsS3TimerStart())
    {
        CommF_GetElapsedValue(&Dcm_S3Timer, &S3Timeout);
        if(S3Timeout >= DCM_S3TIMERCNT)
        {
            DCM_STOP_S3TIMER();
            SetDcmState_Session(DCM_SubFun_ExtendedDiagnosticSession);
            //ClrDcmState_EnablePrgSession();
            //ClrDcmState_EnableExtSession();
            Dcm_ClearState();
            /*reset*/
            ResetService_EcuReset(RESET_HARD);
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_StartOfReception
*
* Description   : Callbak function Dcm provided by Dcm to CanTp.(Base on AUTOSAR 4.3.1)This
*                 function is called at the start of receiving an N-SDU(cantp message).
*
* Inputs        : id: unused, AUTOSAR standard interface parameter
*                 info: unused, AUTOSAR standard interface parameter
*                 TpSduLength: Total length of the N-SDU to be received.(Length in Single Frame
*                 or Fist Frame)
*
* Outputs       : bufferSizePtr: Available receive buffer in the dcm.This parameter will be used
*                 to compute the BlockSize (BS) in the cantp.
*
* Return        : BUFREQ_OK: Connection has been accepted.bufferSizePtr indicates the available
*                 receive buffer;reception is continued.
*                 BUFREQ_E_NOT_OK: Connection has been rejected; reception is aborted.
*                 bufferSizePtr remains unchanged.
*                 BUFREQ_E_OVFL: No buffer of the required length can be provided; reception is
*                 aborted. bufferSizePtr remains unchanged.
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
BufReq_ReturnType Dcm_StartOfReception(PduIdType id, const PduInfoType* info, PduLengthType TpSduLength, PduLengthType* bufferSizePtr)
{
    BufReq_ReturnType BufReq_Return=BUFREQ_OK;

    COMMF_UNUSED_PARAM(id);
    COMMF_UNUSED_PTR(info);

    if(GetDcmState_ReceivedRequset()||GetDcmState_ServiceInProgress() /*Service is in progress*/
       ||((!DCM_IsS3TimerStart())&&(Dcm_IsFunReq())
       &&((GetDcmState_Session() == DCM_SubFun_ProgrammingSession)
       ||(GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession))))
    {
        BufReq_Return=BUFREQ_E_NOT_OK;
    }
    else
    {
        if(TpSduLength > DCM_SDU_BUFFER_SIZE)
        {
            BufReq_Return=BUFREQ_E_OVFL;
        }
        else
        {
            Dcm_ReqDataIndex=0;
            Dcm_ReqDataLength=TpSduLength;
            if((GetDcmState_Session() == DCM_SubFun_ProgrammingSession)||
                (GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession))
            //if(GetDcmState_EnablePrgSession()||GetDcmState_EnableExtSession())
            {
                DCM_STOP_S3TIMER();
            }
            *bufferSizePtr = DCM_SDU_BUFFER_SIZE;
        }
    }
    return BufReq_Return;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_CopyRxData
*
* Description   : Callbak function Dcm provided by Dcm to CanTp.(Base on AUTOSAR 4.3.1)This
*                 function is called to provide the received data of an I-PDU segment(N-PDU) to
*                 the upper layer.
*
* Inputs        : id: unused, AUTOSAR standard interface parameter
*                 info: Pointer to a PduInfoType which indicates the number of bytes to be
*                 copied (SduLength) and the location of the source data (SduDataPtr).
*
* Outputs       : bufferSizePtr: Available receive buffer after data has been copied.
*
* Return        : BUFREQ_OK: Data copied successfully
*                 BUFREQ_E_NOT_OK: Data was not copied because an error occurred.
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
BufReq_ReturnType Dcm_CopyRxData(PduIdType id, const PduInfoType *info, PduLengthType* bufferSizePtr)
{
    uint8 i;
    BufReq_ReturnType BufReq_Return=BUFREQ_OK;

    COMMF_UNUSED_PARAM(id);

    if(GetDcmState_ReceivedRequset()||GetDcmState_ServiceInProgress()) /*Service is in progress*/
    {
        BufReq_Return=BUFREQ_E_BUSY;
    }
    else
    {
        for(i=0;i<info->SduLength;i++)
        {
           Dcm_SduBuffer[(PduLengthType)(Dcm_ReqDataIndex+i)]=info->SduDataPtr[i];
        }
        Dcm_ReqDataIndex += info->SduLength;
        *bufferSizePtr = DCM_SDU_BUFFER_SIZE - info->SduLength;
    }
    return  BufReq_Return;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_RxIndication
*
* Description   : Callbak function Dcm provided by Dcm to CanTp.(Base on AUTOSAR 4.3.1)Called
*                 after an I-PDU has been received via the TP API, the result indicates whether
*                 the transmission was successful or not.
*
* Inputs        : id: unused, AUTOSAR standard interface parameter
*                 Result: Result of the reception. NTFRSLT_OK means the complete N-PDU has been
*                 received and is stored in the receive buffer.Any other value means the N_PDU
*                 has not been received.
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_RxIndication(PduIdType id, Std_ReturnType Result)
{
    COMMF_UNUSED_PARAM(id);

    if(Result == NTFRSLT_OK)
    {
        if(Dcm_IsFunReq())
        {
            Clr_FunReq_Flag();
            Dcm_FuncRxIndication();
        }
        else
        {
            DCM_RESET_NRC();
            CommF_SetStartTime(Dcm_P2Timer);
            DCM_START_P2TIMER();
            SetDcmState_ReceivedRequset();
        }
    }
    else
    {
        ClrDcmState_ReceivedRequset();
        Dcm_ResDataIndex=0;
        Dcm_ReqDataIndex=0;
        CanTp_Init(NULL_PTR);
        /***for :when receive over timer ,it need start s3 **/
        if ((GetDcmState_Session() == DCM_SubFun_ProgrammingSession)||
            (GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession))
        {
            DCM_START_S3TIMER();
            CommF_SetStartTime(Dcm_S3Timer);
        }
    }

}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_FuncRxIndication
*
* Description   : Function for support of functionally addressed requests
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_FuncRxIndication(void)
{
    if (!GetDcmState_ServiceInProgress())
    {
        DCM_RESET_NRC();
        CommF_SetStartTime(Dcm_P2Timer);
        DCM_START_P2TIMER();
        SetDcmState_ReceivedRequset();
        SetDcmState_FunctionalRequest();
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_TxConfirmation
*
* Description   : Callbak function Dcm provided by Dcm to CanTp.(Base on AUTOSAR 4.3.1) This
*                 function is called after the I-PDU has been transmitted on its network, the
*                 result indicates whether the transmission was successful or not.
*
* Inputs        : id: unused, AUTOSAR standard interface parameter
*                 Result: Result of the transmission of the I-PDU. NTFRSLT_OK means the
*                 complete N-PDU has been transmitted.Any other value means an error occurred
*                 during transmission.
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dcm_TxConfirmation(PduIdType id, Std_ReturnType Result)
{
    COMMF_UNUSED_PARAM(id);

    switch(Result)
    {
       case NTFRSLT_OK: /* Everythings fine */
       {
           ClrDcmState_ServiceInProgress();
           Dcm_ResDataIndex=0;
           if((!GetDcmState_RcrRpInProgress())&&
           ((GetDcmState_Session() == DCM_SubFun_ProgrammingSession)||
           (GetDcmState_Session()== DCM_SubFun_ExtendedDiagnosticSession)))
           {
               DCM_START_S3TIMER();
               CommF_SetStartTime(Dcm_S3Timer);
           }
       }
       break;
       case NTFRSLT_E_NOT_OK:
       case NTFRSLT_E_TIMEOUT_A:
       case NTFRSLT_E_TIMEOUT_BS:
       case NTFRSLT_E_NO_BUFFER:
       case NTFRSLT_E_INVALID_FS:
       {
           ClrDcmState_ServiceInProgress();
           Dcm_ResDataIndex=0;
           CanTp_Init(NULL_PTR);

           if ((GetDcmState_Session() = DCM_SubFun_ProgrammingSession)||
           (GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession))
           {
               DCM_START_S3TIMER();
               CommF_SetStartTime(Dcm_S3Timer);
           }
       }
       break;
       default:

       break;
   }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dcm_CopyTxData
*
* Description   : Callbak function Dcm provided by Dcm to CanTp.(Base on AUTOSAR 4.3.1)This
*                 function is called to  acquire the transmit data of an I-PDU segment(N-PDU).
*
* Inputs        : id: unused, AUTOSAR standard interface parameter
*                 info: Pointer to a PduInfoType, which indicates the number of bytes to be
*                 copied (SduLength) and the location where the data have to be copied to
*                 (SduDataPtr).
*                 retry: unused, AUTOSAR standard interface parameter
*
* Outputs       : availableDataPtr: Indicates the remaining number of bytes that are available
*                 in the upper layer module’s Tx buffer.
*
* Return        : BUFREQ_OK: Data has been copied to the transmit buffer completely as
*                 requested.
*                 BUFREQ_E_BUSY: Request could not be fulfilled, because the required amount of
*                 Tx data is not available.
*                 BUFREQ_E_NOT_OK: Data has not been copied. Request failed.
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
BufReq_ReturnType Dcm_CopyTxData(PduIdType id, const PduInfoType *info, const RetryInfoType* retry, PduLengthType* availableDataPtr)
{
    uint8 i;

    COMMF_UNUSED_PARAM(id);
    COMMF_UNUSED_PTR(retry);

    for(i=0;i<info->SduLength;i++)
    {
        info->SduDataPtr[i] = Dcm_SduBuffer[(PduLengthType)(Dcm_ResDataIndex+i)];
    }
    Dcm_ResDataIndex+=info->SduLength;

    *availableDataPtr = Dcm_TxSduInfo.SduLength;

    return BUFREQ_OK;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsd_SuppressPositiveResponse
*
* Description   : Judge suppressPostiveResponseBit.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsd_SuppressPositiveResponse(void)
{
    if((Dcm_SduBuffer[DCM_SubFun_Idx] & DCM_SuppressPosRes_BitMask)!=0)
    {
        Dcm_SduBuffer[DCM_SubFun_Idx] &= (uint8)(~DCM_SuppressPosRes_BitMask);
        DcmSetNoResponse();
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsd_ProcessingDone
*
* Description   : Send diagnostic response message.
*
* Inputs        : dataLength: Data length to be transmitted.
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsd_ProcessingDone( PduLengthType dataLength )
{
    ClrDcmState_RcrRpInProgress();
    DCM_STOP_P2TIMER();
 
    if (DCM_GET_NRC() != DCM_NRC_positiveResponse)/* Transmit negative response */
    {
        Dcm_SduBuffer[DCM_SubFun_Idx]     = Dcm_SduBuffer[DCM_SID_Idx];
        Dcm_SduBuffer[DCM_SID_Idx]  = DCM_RsId_NegativeResponse;
        Dcm_SduBuffer[DCM_NRC_Idx]  = DCM_GET_NRC();
        Dcm_TxSduInfo.SduDataPtr=Dcm_SduBuffer;
        Dcm_TxSduInfo.SduLength=DCM_RsLen_NegativeResponse;
        DcmClrNoResponse();

        if(!GetDcmState_FunctionalRequest())        
        {
           (void)CanTp_Transmit(0, &Dcm_TxSduInfo);
        }
        else
        {
            if((DCM_GET_NRC()!=DCM_NRC_serviceNotSupported) &&
               (DCM_GET_NRC()!=DCM_NRC_SubFunctionNotSupported) &&
               (DCM_GET_NRC()!=DCM_NRC_requestOutOfRange) &&
               (DCM_GET_NRC()!=DCM_NRC_SubFunctionNotSupportedInActiveSession) &&
               (DCM_GET_NRC()!=DCM_NRC_serviceNotSupportedInActiveSession))
            {
                DCM_RESET_NRC();
                (void)CanTp_Transmit(0, &Dcm_TxSduInfo);
            }
            else /**add by yzl for clear uds state ,otherwise uds will dead**/
            {
                Dcm_TxConfirmation(0U,NTFRSLT_OK);
            }
        }
    }
    else /* Transmit positive response */
    {
        if(DcmIsNoResponse())
        {
            DcmClrNoResponse();
            Dcm_TxConfirmation(0U,NTFRSLT_OK);
        }
        else
        {
            Dcm_SduBuffer[DCM_SID_Idx] += 0x40;
            Dcm_TxSduInfo.SduDataPtr=Dcm_SduBuffer;
            Dcm_TxSduInfo.SduLength=dataLength;
            (void)CanTp_Transmit(0, &Dcm_TxSduInfo);
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsd_Nrc78ResponseProcess
*
* Description   : Transmit a busy message if timer expires (forceSend ==DCM_NRC78_TIMEOUT)
*                 or if DCM_NRC78_FORCE is passed.
*
* Inputs        : forceSend: determines if a message is sent independently from timer state.
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Dsd_Nrc78ResponseProcess( uint8 forceSend )
{
    uint16 P2Timeout;
#if(CANTP_PADDING_SUPPORT == CANTP_ON)
    static uint8 TxNRC78Buf[8];
#else
    static uint8 TxNRC78Buf[4];
#endif
    if(DCM_IsP2TimerStart())
    {
        CommF_GetElapsedValue(&Dcm_P2Timer, &P2Timeout);
    }
    else
    {
        P2Timeout = DCM_P2STARTIMERVALUE;
    }

    /* P2Server>40 or P2*Server>1000 or forceSend=0x01u*/
    if(((!GetDcmState_RcrRpInProgress())&&(P2Timeout > 40U))\
    || ((GetDcmState_RcrRpInProgress())&&(P2Timeout > (uint16)(DCM_P2STARTIMERVALUE>>1U)))\
    || (forceSend == DCM_NRC78_FORCE))
    {
        CommF_SetStartTime(Dcm_P2Timer);
        TxNRC78Buf[0]= 0x03;/* SF PCI */
        TxNRC78Buf[DCM_SID_Idx+1]= DCM_RsId_NegativeResponse;
        TxNRC78Buf[DCM_SubFun_Idx+1]   = Dcm_SduBuffer[DCM_SID_Idx];        
        TxNRC78Buf[DCM_NRC_Idx+1]= DCM_NRC_requestCorrectlyReceived_ResponsePending;
#if(CANTP_PADDING_SUPPORT == CANTP_ON)
        TxNRC78Buf[DCM_NRC_Idx+2] = CANTP_PADDING_BYTE;
        TxNRC78Buf[DCM_NRC_Idx+3] = CANTP_PADDING_BYTE;
        TxNRC78Buf[DCM_NRC_Idx+4] = CANTP_PADDING_BYTE;
        TxNRC78Buf[DCM_NRC_Idx+5] = CANTP_PADDING_BYTE;
#endif 

        Dcm_TxSduInfo.SduDataPtr = TxNRC78Buf;
        Dcm_TxSduInfo.SduLength  = sizeof(TxNRC78Buf);
        SetDcmState_RcrRpInProgress();
        (void)CanIf_Transmit(0, &Dcm_TxSduInfo);

        Delay_Nms(5);
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_DiagnosticSessionControl
*
* Description   : This function is called when a when a DiagnosticSessionControl (0x10) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_DiagnosticSessionControl(void)
{
#if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)
    uint8 l_SessionResetFlg = FALSE;
#endif

    if(Dcm_ReqDataLength < DCM_RqLen_DiagnosticSessionControl)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat); 
    }
    else if(Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_DefaultSession &&
            Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_ProgrammingSession &&
            Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_ExtendedDiagnosticSession)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength > DCM_RqLen_DiagnosticSessionControl)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat); 
    }
    else
    {
        switch(Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            /* DefaultSession */
            case DCM_SubFun_DefaultSession:
            {
                /* Turn off S3 timer */
                DCM_STOP_S3TIMER();
                /* Determine whether the current mode is reprogramming */
                if((GetDcmState_Session() == DCM_SubFun_ProgrammingSession) || 
                   (GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession))
              //  if(GetDcmState_EnablePrgSession() || GetDcmState_EnableExtSession())
                {
                    #if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)
                    l_SessionResetFlg = TRUE;
                    #else
                    if(!DcmIsNoResponse()) /*if no response is required, reset flag will not be set*/
                    {
                        (void)Diag_FlagWrite(MEMM_FLAG_RESET_SESSION_ID, (uint8*)&g_FlagsInfo[MEMM_FLAG_RESET_SESSION_ID].flagData);
                    }
                    /* Ecu Reset */
                    ResetService_EcuReset(RESET_HARD);
                    #endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)*/
                }
                /* reset all activated/initiated/changed settings/controls during the activated session.*/
                SetDcmState_Session(DCM_SubFun_DefaultSession);
               // ClrDcmState_EnableExtSession();
                ClrDcmState_SecurityKeyAllowed();
                ClrDcmState_SecurityUnlock();
            }
            break;
            case DCM_SubFun_ProgrammingSession:
            {
                if(GetDcmState_FunctionalRequest())
                {
                    DcmSetNoResponse();
                }
                else if((GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession)||
                        (GetDcmState_Session() == DCM_SubFun_ProgrammingSession) ||
                        (GetDcmState_Session() == DCM_SubFun_DefaultSession))
               // else if(GetDcmState_EnableExtSession()||GetDcmState_EnablePrgSession())
                {
                    /* Set the current mode is reprogramming*/
                     SetDcmState_Session(DCM_SubFun_ProgrammingSession);
                   // SetDcmState_EnablePrgSession();
                   // ClrDcmState_EnableExtSession();
                    ClrDcmState_SecurityKeyAllowed();
                    ClrDcmState_SecurityUnlock();

                    /* Any configured periodic scheduler shall remain active*/
                    /*****before response do not need start s3****/
                }
                else
                {
                    DCM_SET_NRC(DCM_NRC_SubFunctionNotSupportedInActiveSession);
                }
            }
            break;
            case DCM_SubFun_ExtendedDiagnosticSession:
            {
                if((GetDcmState_Session() == DCM_SubFun_ExtendedDiagnosticSession)||
                   (GetDcmState_Session() == DCM_SubFun_DefaultSession))
               //if(!GetDcmState_EnablePrgSession())
                {
                     SetDcmState_Session(DCM_SubFun_ExtendedDiagnosticSession);
                    //SetDcmState_EnableExtSession();
                    //ClrDcmState_EnablePrgSession();
                    ClrDcmState_SecurityKeyAllowed();
                    ClrDcmState_SecurityUnlock();
                    /*****before response do not need start s3****/
                }
                else
                {
                    DCM_SET_NRC(DCM_NRC_SubFunctionNotSupportedInActiveSession);
                }
            }
            break;
        }

        /* Determine response flag*/
        if(DCM_GET_NRC() == DCM_NRC_positiveResponse)
        {
            Dcm_SduBuffer[DCM_SubFun_Idx+1U] = DCM_P2TIMERVALUE >> BIT_NUM_OF_BYTE;
            Dcm_SduBuffer[DCM_SubFun_Idx+2U] = DCM_P2TIMERVALUE & BYTE_MASK;
            Dcm_SduBuffer[DCM_SubFun_Idx+3U] = (DCM_P2STARTIMERVALUE/DCM_P2STARTIMER_DIV) >> BIT_NUM_OF_BYTE;
            Dcm_SduBuffer[DCM_SubFun_Idx+4U] = (DCM_P2STARTIMERVALUE/DCM_P2STARTIMER_DIV) & BYTE_MASK;
            Dsd_ProcessingDone(DCM_RsLen_DiagnosticSessionControl);/*  positive response if not suppressed */
            #if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)
            if(l_SessionResetFlg == TRUE)
            {
            ServerIdPost = DCM_SID_DiagnosticSessionControl ;
            ServerPostCount = 0 ;
            }
            #endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESPONSE_BEFORE_RESET)*/
        }

    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_EcuReset
*
* Description   : This function is called when a when a EcuReset (0x11) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_EcuReset(void)
{
#if(DCM_SERVICE_29_ENABLED == STD_ON)
    if(g_AuthnState != E_FullVerified)
    {
        DCM_SET_NRC(DCM_NRC_authenticationRequired);
    }
    else
#endif
    /* Determine the length of received data*/
    if(Dcm_ReqDataLength < DCM_RqLen_EcuReset)
    {
        /* Response negative response 13 */
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
        else if(Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_HardReset)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength > DCM_RqLen_EcuReset)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat); 
    }
    else
    {
        switch(Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            case DCM_SubFun_HardReset:
            {
                #if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
                if(!DcmIsNoResponse()) /*if no response is required, reset flag will not be set*/
                {
                    (void)Diag_FlagWrite(MEMM_FLAG_RESET_REQUEST_ID, (uint8*)&g_FlagsInfo[MEMM_FLAG_RESET_REQUEST_ID].flagData);
                }
            		ResetService_EcuReset(RESET_HARD);
                #endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)*/
                break;
            }
        }  

        /* Determine response flag*/
        if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
        {
            Dsd_ProcessingDone(DCM_RsLen_EcuReset);
            ServerPostCount = 0 ;
            ServerIdPost = DCM_SID_EcuReset;
        }
    }
}
#if(DCM_SERVICE_27_ENABLED==STD_ON)
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_SecurityAccess
*
* Description   : This function is called when a when a SecurityAccess (0x27) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_SecurityAccess(void)
{
    if(GetDcmState_FunctionalRequest())
    {
        DcmSetNoResponse();
    }
    /* Determine whether the current session mode is the reprogramming or the expanding */
     else if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
   // else if(!(GetDcmState_EnablePrgSession() /*|| GetDcmState_EnableExtSession()*/))
    {
        /* Response negative response 7F */
        DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
    /* Determine if the data length is less than the minimum length */
    else if(Dcm_ReqDataLength < DCM_RqLen_SecurtityAccessMin)
    {
        /* Response negative response 13 */
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else
    {
        /* Determine sub services */
        switch (Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            case DCM_SubFun_RequestSeed :
            {
                Dsp_SA_SeedProcess();
            }
            break;
            
            case DCM_SubFun_SendKey:
            {    
                Dsp_SA_KeyProcess();
            }    
            break;
            
            default:
            { 
                /* SubService is unsupported,  response 12 */
                DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
            }
            break;
        }

        if(g_SA_FAC_Last != g_SA_FAC)
        {
            g_SA_FAC_Last = g_SA_FAC;
            (void)Diag_FlagWrite(MEMM_FLAG_FAC_ID,(uint8*)&g_SA_FAC_Last);
        }
        if(g_SA_FAC >= SA_FAC)
        {
            CommF_SetStartTime(g_SA_DelayTimer);
        }
    }
    
    if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
    {
        Dsd_ProcessingDone(Dcm_ResDataLength);
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_SA_SeedProcess
*
* Description   : This function is called when a request seed service request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_SA_SeedProcess(void)
{
    uint8 IsSameSeed = FALSE;
    /* Determine the length of received data*/
    if (Dcm_ReqDataLength != DCM_RqLen_SecurityAccessSeed)
    {
        /*  Response negative response 13 */
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    /* */
    else if(g_SA_FAC >= SA_FAC)
    {
        ClrDcmState_SecurityKeyAllowed();
        DCM_SET_NRC(DCM_NRC_requiredTimeDelayNotExpired);
    }
    else if(GetDcmState_IsSecurityUnlock()) /*if ECU is already unlock, seed is set as 0*/
    {
        CommF_DataSet(&Dcm_SduBuffer[DCM_SeedKey_Idx],0,SA_L1_SEEDLEN);
    }
    else
    {
        if(GetDcmState_SecurityKeyAllowed()) /*if seed is already sent, send same seed again*/
        {
            IsSameSeed = TRUE;
            g_SA_FAC++;
        }
        /* get Seed */
        SecurityAccess_SeedGet(IsSameSeed, &Dcm_SduBuffer[DCM_SeedKey_Idx]);
        SetDcmState_SecurityKeyAllowed();

        if(g_SA_FAC >= SA_FAC)
        {
            /* Clear the SecurityKey flag */
            ClrDcmState_SecurityKeyAllowed();
            DCM_SET_NRC(DCM_NRC_requiredTimeDelayNotExpired);
        }
        else
        {
            /* response data length*/
            Dcm_ResDataLength = DCM_RsLen_SecurityAccessSeed;
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_SA_KeyProcess
*
* Description   : This function is called when a send key service request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_SA_KeyProcess(void)
{
    /* Determine the length of received data*/
    if (Dcm_ReqDataLength != DCM_RqLen_SecurityAccessKey)
    {
        /*  Response negative response 13 */
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if (!GetDcmState_SecurityKeyAllowed())
    {
        DCM_SET_NRC(DCM_NRC_requestSequenceError);
    }
    else
    {
        /*Clear unlocking flag*/
        ClrDcmState_SecurityUnlock();
        /*Clear SecurityKey flag*/
        ClrDcmState_SecurityKeyAllowed();

        if (SecurityAccess_KeyVerify(&Dcm_SduBuffer[2], Dcm_SduBuffer[DCM_SubFun_Idx])!= E_OK)
        {
            g_SA_FAC++;
            if(g_SA_FAC >= SA_FAC)
            {
                DCM_SET_NRC(DCM_NRC_exceedNumberOfAttempts);
            }
            else
            {
                DCM_SET_NRC(DCM_NRC_invalidKey);
            }
        }
        else
        {
            g_SA_FAC = 0;
            
	        FlsIf_Init();
            /* Set SecurityUnlock flag is valid */
            SetDcmState_SecurityUnlock();
            /* Response data length*/
            Dcm_ResDataLength = DCM_RsLen_SecurityAccessKey;
        }
    }
}
#endif /*#if(DCM_SERVICE_27_ENABLED==STD_ON)*/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_CommunicationControl
*
* Description   : This function is called when a when a CommunicationControl (0x28) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_CommunicationControl(void)
{
    /* Determine whether the current session mode is the reprogramming or the expanding */
    if(GetDcmState_Session() != DCM_SubFun_ExtendedDiagnosticSession )
    //if(!(GetDcmState_EnablePrgSession() || GetDcmState_EnableExtSession()))
    {
        DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
    /* Determine the length of received data*/
    else if(Dcm_ReqDataLength < DCM_RqLen_CommunicationControl)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if((Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_EnableRxAndTx) &&
            (Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_DisableRxAndTx))
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength > DCM_RqLen_CommunicationControl)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat); 
    }
    else
    {
        switch(Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            case DCM_SubFun_EnableRxAndTx:
#if DCM_SERVICE_28_01_ENABLED
            case DCM_SubFun_EnableRxAndDisableTx:
#endif
#if DCM_SERVICE_28_02_ENABLED
            case DCM_SubFun_DisableRxAndEnableTx:
#endif
            case DCM_SubFun_DisableRxAndTx:/* FallThrough Allowed */
                if(Dcm_SduBuffer[DCM_SubFun_Idx+1] != DCM_CommTypeNormalComm &&
                   (Dcm_SduBuffer[DCM_SubFun_Idx+1] != DCM_CommTypeNmComm) &&
                   (Dcm_SduBuffer[DCM_SubFun_Idx+1] != DCM_CommTypeNormalAndNmComm))
                {
                   DCM_SET_NRC(DCM_NRC_requestOutOfRange);
                }

            break;

            default:
            {
                DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
            }
            break;
        }
        if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
        {
            Dsd_ProcessingDone(DCM_RsLen_CommunicationControl);
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RoutineControl
*
* Description   : This function is called when a when a RoutineControl (0x31) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RoutineControl(void)
{
    uint16 RoutineId;

    if(GetDcmState_FunctionalRequest())
    {
        DcmSetNoResponse();
    }
    else if((GetDcmState_Session() != DCM_SubFun_ExtendedDiagnosticSession) && 
            (GetDcmState_Session() != DCM_SubFun_ProgrammingSession))
   // else if((!GetDcmState_EnablePrgSession()) && (!GetDcmState_EnableExtSession()))
    {
        DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
    else if(Dcm_ReqDataLength < DCM_RqLen_RoutineControlMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else
    {
       RoutineId=(((uint16)Dcm_SduBuffer[DCM_SubFun_Idx+1u]) << BIT_NUM_OF_BYTE)|\
                   ((uint16)Dcm_SduBuffer[DCM_SubFun_Idx+2u]);

        switch(RoutineId)
        {
            case RIdCheckProgrammingIntegrity:
            {
                Dsp_RC_CheckProgrammingIntegrity();
                break;
            }

            case RIdEraseMemory:
            {
                Dsp_RC_EraseMemory();
                break;
            }

            case RIdCheckProgrammingPreConditions:
            {
                Dsp_RC_CheckProgrammingPreConditions();
                break;
            }

            case RIdCheckProgrammingDependencies:
            {
                Dsp_RC_CheckProgrammingDependencies();
                break;
            }

            case RIdActivationAndRollback:
            {
                RC_ActivationAndRollback();
                break;
            }

            case RIdCheckSVN:
            {
                RC_CheckSVN();
                break;
            }

            default:
            {
                DCM_SET_NRC(DCM_NRC_requestOutOfRange);
                break;
            }
        }

        if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
        {
            Dsd_ProcessingDone(DCM_RsLen_RoutineControl);
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RC_CheckProgrammingPreConditions
*
* Description   : This function is used to process check programming precondition.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RC_CheckProgrammingPreConditions(void)
{
    if(GetDcmState_Session() != DCM_SubFun_ExtendedDiagnosticSession)
    //if(!GetDcmState_EnableExtSession())
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupportedInActiveSession);
    }
    else if((Dcm_SduBuffer[DCM_SubFun_Idx])!= DCM_SubFun_StartRoutine)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength != DCM_RqLen_RoutineControlMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if(Diag_IsVoltageTooHigh() == E_OK)
    {
        DCM_SET_NRC(DCM_NRC_voltageTooHigh);
    }
    else if(Diag_IsVoltageTooLow() == E_OK)
    {
        DCM_SET_NRC(DCM_NRC_voltageTooLow);
    }
    else
    {
        Dcm_SduBuffer[DCM_RoutineParam_Idx]=DCM_Routine_CorrectResult;
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RC_EraseMemory
*
* Description   : This function is used to process erase memory.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RC_EraseMemory(void)
{
    uint8 Ret = RC_ERASE_NO_ERROR;
    if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
    //if(!GetDcmState_EnablePrgSession())
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupportedInActiveSession);
    }
#if(DCM_SERVICE_27_ENABLED==STD_ON)
    else if(!GetDcmState_IsSecurityUnlock())
    {
        DCM_SET_NRC(DCM_NRC_securityAccessDenied);
    }
#endif
    else if((Dcm_SduBuffer[DCM_SubFun_Idx])!=DCM_SubFun_StartRoutine)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else
    {
        Ret = RC_EraseMem_Preprocess(&Dcm_SduBuffer[DCM_RoutineParam_Idx],Dcm_ReqDataLength);

        if(Ret == RC_ERASE_LEN_ERROR)
        {
            DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
        }
        else if(Ret == RC_ERASE_ADDR_ERROR)
        {
            DCM_SET_NRC(DCM_NRC_requestOutOfRange);
        }
        /*Check if the flashDriver download is complete */
        else if(!GetDcmState_DriverCrc())
        {
             DCM_SET_NRC(DCM_NRC_requestSequenceError);
        }
        else
        {
            if(RC_EraseMemory()!= E_OK)
            {
                Dcm_SduBuffer[DCM_RoutineParam_Idx]=DCM_Routine_IncorrectResult;
            }
            else
            {
                Dcm_SduBuffer[DCM_RoutineParam_Idx]=DCM_Routine_CorrectResult;

                if(g_CurLogicalBlockId == MEMM_APPA)
                {
                    SetDcmState_EraseMemoryAppA();
                }
                else if(g_CurLogicalBlockId == MEMM_APPB)
                {
                    SetDcmState_EraseMemoryAppB();
                }
                else if(g_CurLogicalBlockId == MEMM_CAL)
                {
                    SetDcmState_EraseMemoryCal();
                }
            }
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RC_CheckProgrammingIntegrity
*
* Description   : This function is used to process check programming integrity.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RC_CheckProgrammingIntegrity(void)
{
    if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
    //if(!GetDcmState_EnablePrgSession())
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupportedInActiveSession);
    }
#if(DCM_SERVICE_27_ENABLED==STD_ON)
    else if(!GetDcmState_IsSecurityUnlock())
    {
        DCM_SET_NRC(DCM_NRC_securityAccessDenied);
    }
#endif
    else if((Dcm_SduBuffer[DCM_SubFun_Idx])!=DCM_SubFun_StartRoutine)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength!=(DCM_RqLen_RoutineControlMin + RC_CHECKSUM_LEN))
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if(!GetDcmState_RequestTransferExit())
    {
        DCM_SET_NRC(DCM_NRC_requestSequenceError);
    }
    else
    {
        if(RC_ChecksumVerify(&Dcm_SduBuffer[DCM_RoutineParam_Idx]) != E_OK)
        {
            Dcm_SduBuffer[DCM_RoutineParam_Idx] = DCM_Routine_IncorrectResult;
        }
        else
        {
            switch(g_CurLogicalBlockId)
            {
                case MEMM_FLASHDRV:
                    SetDcmState_DriverCrc();
                    break;
                case MEMM_APPA:
                    SetDcmState_AppACrc();
                    break;
                case MEMM_APPB:
                    SetDcmState_AppBCrc();
                    break;
                case MEMM_CAL:
                    SetDcmState_CalCrc();
                    break;
            }
            Dcm_SduBuffer[DCM_RoutineParam_Idx] = DCM_Routine_CorrectResult;
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RC_CheckProgrammingDependencies
*
* Description   : This function is used to process check programming dependencies.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RC_CheckProgrammingDependencies(void)
{
    if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
   // if(!GetDcmState_EnablePrgSession())
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupportedInActiveSession);
    }
#if(DCM_SERVICE_27_ENABLED==STD_ON)
    else if(!GetDcmState_IsSecurityUnlock())
    {
       DCM_SET_NRC(DCM_NRC_securityAccessDenied);
    }
#endif
    else if((Dcm_SduBuffer[DCM_SubFun_Idx])!=DCM_SubFun_StartRoutine)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength!=DCM_RqLen_RoutineControlMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if(!GetDcmState_AppACrc())
    {
        DCM_SET_NRC(DCM_NRC_requestSequenceError);
    }
    else
    {
        if((RC_CheckDependency()!= E_OK) || \
           (SecureProgram_CheckProgrammingIntegrity() != SECURE_PROGRAM_SUCCESS))
        {
             Dcm_SduBuffer[DCM_RoutineParam_Idx] = DCM_Routine_IncorrectResult;
        }
        else
        {
             Dcm_SduBuffer[DCM_RoutineParam_Idx] = DCM_Routine_CorrectResult;
             uint8 AllowWrite = 0x01;
             Diag_FlagWrite(ALLOW_F187_WRITE_ID, &AllowWrite);
             Diag_FlagWrite(ALLOW_F190_WRITE_ID, &AllowWrite);
             CurrentProgramCnt++;
             EEIf_Write(PROGRAM_CNT_ADDR_IDX, PROGRAM_CNT_LEN, &CurrentProgramCnt);
        }
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RequestDownload
*
* Description   : This function is called when a when a RequestDownload (0x34) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RequestDownload(void)
{
    uint8 DataFormat;
    uint8 AddressFormat;
    uint8 SizeFormat;
    uint8 i;

    DataFormat = Dcm_SduBuffer[DCM_34_DataFormat_Idx];
    AddressFormat = (uint8)(Dcm_SduBuffer[DCM_34_AddrLenFormat_Idx]&LOW_NIBBLE_MASK);
    SizeFormat = (uint8)((uint8)Dcm_SduBuffer[DCM_34_AddrLenFormat_Idx]>>BIT_NUM_OF_NIBBLE);
    /*Calculate flash program start address*/
    ProgramStartAddr=CommF_GetUint32DataValue(&Dcm_SduBuffer[DCM_34_MemAddr_Idx],DCM_34_ADDR_FORMAT);
    /*Calculate flash program size*/
    ProgramMemorySize=CommF_GetUint32DataValue(&Dcm_SduBuffer[DCM_34_MemSize_Idx],DCM_34_SIZE_FORMAT);

    if(GetDcmState_FunctionalRequest())
    {
        DcmSetNoResponse();
    }
#if(DCM_SERVICE_29_ENABLED == STD_ON)
    else if(g_AuthnState != E_FullVerified)
    {
        DCM_SET_NRC(DCM_NRC_authenticationRequired);
    }
#endif
    else if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
    //else if(!GetDcmState_EnablePrgSession())
    {
        /* The session status wrong , response 7F */
       DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
    else if(Dcm_ReqDataLength < DCM_RqLen_RequestDownloadMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if((DataFormat != DCM_34_DATA_FORMAT)||       /*compression method & the encryption method.*/
            (AddressFormat != DCM_34_ADDR_FORMAT)|| /*bytes of address */
            (SizeFormat != DCM_34_SIZE_FORMAT)||        /*bytes of size */
            (ProgramStartAddr < MEMM_APPA_START_ADDR)|| /*program start address must be in APPA memory */
            (ProgramStartAddr > MEMM_APPA_LIMIT_ADDR)|| /*program start address must be in APPA memory */
            (ProgramMemorySize > MEMM_APPA_SIZE)|| /*program size must be in APPA memory */
            (CurrentProgramCnt >= PROGRAM_CNT_MAX) /*program count must be less than max */
    )
    {
        DCM_SET_NRC(DCM_NRC_requestOutOfRange);
    }
    else if(Dcm_ReqDataLength != DCM_RqLen_RequestDownload)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else
    {

        if (RequestDownload(ProgramStartAddr,ProgramMemorySize) == E_OK)
        {
            #if(DCM_SERVICE_27_ENABLED==STD_ON)
            if(!GetDcmState_IsSecurityUnlock())
            {
                DCM_SET_NRC(DCM_NRC_securityAccessDenied);
            }
            else
            #endif
            if(Dsp_RD_SequenceCheck() == E_OK)
            {
                Dcm_SduBuffer[DCM_34_DataFormat_Idx] = (uint8)(DCM_34_LENGTH << 4U);

                for(i=0;i< DCM_34_LENGTH;i++)
                {
                    Dcm_SduBuffer[DCM_34_DataFormat_Idx+1U+i]=(uint8)(TRANSDATA_BLOCKSIZE_MAX>>(uint8)(8U*(DCM_34_LENGTH -i-1U)));
                }
                TransDataBlockSeqCounter = 0;
                TransDataNumofTransmittedData = 0;
                if((ProgramMemorySize % (TRANSDATA_BLOCKSIZE_MAX-2)) != 0)
                {
                    TransDataTotalNumofBlock = (uint16)(ProgramMemorySize/(TRANSDATA_BLOCKSIZE_MAX-2))+1;
                    TransDataLastBlockSize = (uint16)(ProgramMemorySize%(TRANSDATA_BLOCKSIZE_MAX-2))+2;
                }
                else
                {
                    TransDataTotalNumofBlock = (uint16)(ProgramMemorySize/(uint16)(TRANSDATA_BLOCKSIZE_MAX-2U));
                    TransDataLastBlockSize = TRANSDATA_BLOCKSIZE_MAX;
                }

                Dsd_ProcessingDone(DCM_RsLen_RequestDownload);
                SetDcmState_AllowTransferData();
                SetDcmState_SID36_1stBlock();
            }
        }
        else 
        {
            DCM_SET_NRC(DCM_NRC_requestOutOfRange);
        }
    }
    TransData_ClrSequenceBuffer();
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RD_SequenceCheck
*
* Description   : This function is used to check request sequences.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 Dsp_RD_SequenceCheck(void)
{
    uint8 ret = E_OK;

    //if(!GetDcmState_FingerPrint())
    //{
    //    DCM_SET_NRC(DCM_NRC_uploadDownloadNotAccepted);
    //}
    //else
    if(GetDcmState_AllowTransferData())
    {
        DCM_SET_NRC(DCM_NRC_requestSequenceError);
        ClrDcmState_AllowTransferData();
    }
    else if(g_CurLogicalBlockId != MEMM_FLASHDRV)
    {
        if(g_CurLogicalBlockId == MEMM_APPA)
        {
            //请求擦除 擦除整个APP
            if(FlsIf_Erase(MEMM_APPA_FLAG_ADDR, MEMM_APPA_LIMIT_ADDR - MEMM_APPA_FLAG_ADDR) != E_OK)
            {
                DCM_SET_NRC(DCM_NRC_uploadDownloadNotAccepted);
            }
        }
        else
        {
            DCM_SET_NRC(DCM_NRC_uploadDownloadNotAccepted);
        }
    }
    else
    {
        /*do nothing*/
    }
    if(DCM_GET_NRC() != DCM_NRC_positiveResponse)
    {
        ret = E_NOT_OK;
    }
    return ret;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_TransferData
*
* Description   : This function is called when a when a TransferData (0x36) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_TransferData(void)
{
    if(GetDcmState_FunctionalRequest())
    {
        DcmSetNoResponse();
    }
#if(DCM_SERVICE_29_ENABLED == STD_ON)
    else if(g_AuthnState != E_FullVerified)
    {
        DCM_SET_NRC(DCM_NRC_authenticationRequired);
    }
#endif
    else if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
    //else if(!GetDcmState_EnablePrgSession())
    {
       DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
    else if(Dcm_ReqDataLength < DCM_RqLen_TransferDataMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
#if(DCM_SERVICE_27_ENABLED==STD_ON)
    else if(!GetDcmState_IsSecurityUnlock())
    {
        DCM_SET_NRC(DCM_NRC_securityAccessDenied);
    }
#endif
    else if(!GetDcmState_AllowTransferData()) /*RequestDownload service is not active.*/
    {
        DCM_SET_NRC(DCM_NRC_requestSequenceError);    
    }
    else if(Diag_IsVoltageTooHigh() == E_OK)
    {
        DCM_SET_NRC(DCM_NRC_voltageTooHigh);
    }
    else if(Diag_IsVoltageTooLow() == E_OK)
    {
        DCM_SET_NRC(DCM_NRC_voltageTooLow);
    }
    else
    {
        if(Dsp_TD_BlockSequenceProsess() == E_OK)
        {
            if(TransData_WriteMemory(ProgramStartAddr,(Dcm_ReqDataLength-2),&Dcm_SduBuffer[DCM_36_Data_Idx])!= E_OK)
            {
                DCM_SET_NRC(DCM_NRC_generalProgrammingFailure);
                ClrDcmState_TransferDataOver();
            }
            else
            {
                TransData_Copy2SequenceBuffer(&Dcm_SduBuffer[DCM_36_Data_Idx]);
                ProgramStartAddr += (uint16)(Dcm_ReqDataLength-2U);
            }
        }
        Dsd_ProcessingDone(DCM_RsLen_TransferData);
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_TD_BlockSequenceProsess
*
* Description   : This function is used to determine whether the block sequence counter and block
*                 size of each 36 transmission are reasonable.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: check pass
*                 E_NOT_OK: check fail or same block received
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 Dsp_TD_BlockSequenceProsess(void)
{
    uint8 ret = E_OK;
    TransDataBlockSeqCounter++;
    TransDataNumofTransmittedData += (uint16)(Dcm_ReqDataLength-2U);
    if((uint8)(TransDataBlockSeqCounter & BYTE_MASK) != Dcm_SduBuffer[DCM_36_BSC_Idx]) /*count error*/
    {
        if(((uint8)(TransDataBlockSeqCounter & BYTE_MASK) == (Dcm_SduBuffer[DCM_36_BSC_Idx] + 1))/*this TransferData request is repeated.*/
                && (TransData_CheckSequenceBuffer(&Dcm_SduBuffer[DCM_36_Data_Idx]) == E_OK)) /*transfer data is consist*/
        {
            if(GetDcmState_SID36_1stBlock() && ((Dcm_SduBuffer[DCM_36_BSC_Idx]) == 0))
            {
                DCM_SET_NRC(DCM_NRC_wrongBlockSequenceCounter);
                ClrDcmState_SID36_1stBlock();
            }
            TransDataBlockSeqCounter-=1;
            TransDataNumofTransmittedData -= (uint16)(Dcm_ReqDataLength-2U);
            ret = E_NOT_OK; /*special request: the same block is received, there is no need to write memory again*/
        }
        else
        {
            DCM_SET_NRC(DCM_NRC_wrongBlockSequenceCounter);
        }
    }
    else
    {
        if(TransDataBlockSeqCounter < TransDataTotalNumofBlock)
        {
            if(Dcm_ReqDataLength != TRANSDATA_BLOCKSIZE_MAX)
            {
                DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
            }
        }
        else if(TransDataBlockSeqCounter == TransDataTotalNumofBlock)
        {
            if(Dcm_ReqDataLength != TransDataLastBlockSize)
            {
                DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
            }
            /*The download module length does not meet the requirements of the memorySize parameter
                sent in the request message of the requestDownload service*/
            else if(TransDataNumofTransmittedData != ProgramMemorySize)
            {
                DCM_SET_NRC(DCM_NRC_transferDataSuspended);
            }
            else
            {
                /*last block is received*/
                SetDcmState_TransferDataOver();
            }
        }
        else
        {
            DCM_SET_NRC(DCM_NRC_requestSequenceError);
        }
    }
    if((GetDcmState_SID36_1stBlock()) && ((Dcm_SduBuffer[DCM_36_BSC_Idx]) != 1))
    {
        ClrDcmState_SID36_1stBlock();
    }
    if(DCM_GET_NRC() != DCM_NRC_positiveResponse)
    {
        ClrDcmState_AllowTransferData();
        ret = E_NOT_OK;
    }
    return ret;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_RequestTransferExit
*
* Description   : This function is called when a when a RequestTransferExit (0x37) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_RequestTransferExit(void)
{
    if(GetDcmState_Session() != DCM_SubFun_ProgrammingSession)
  //  if(!GetDcmState_EnablePrgSession())
    {
       DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
#if(DCM_SERVICE_29_ENABLED == STD_ON)
    else if(g_AuthnState != E_FullVerified)
    {
        DCM_SET_NRC(DCM_NRC_authenticationRequired);
    }
#endif
    else if(Dcm_ReqDataLength < DCM_RqLen_RequestTransferExit)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if((Dcm_SduBuffer[DCM_SubFun_Idx] != 0x00)&&
            (Dcm_SduBuffer[DCM_SubFun_Idx] != 0x01))
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(!GetDcmState_TransferDataOver()) /*data are not received complete.*/
    {
        DCM_SET_NRC(DCM_NRC_requestSequenceError);
    }
    else
    { 
        if(Calculate36blockCRC16(&Dcm_SduBuffer[DCM_SubFun_Idx+1]) == E_OK)
        {
            ClrDcmState_AllowTransferData();
            SetDcmState_RequestTransferExit();
            Dsd_ProcessingDone(DCM_RsLen_RequestTransferExit);
        }
        
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_TesterPresent
*
* Description   : This function is called when a when a TesterPresent (0x3E) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_TesterPresent(void)
{
    if(Dcm_ReqDataLength < DCM_RqLen_TesterPresent)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if(Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_ZeroSubFunction)
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength > DCM_RqLen_TesterPresent)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat); 
    }
    else
    {
        switch(Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            case DCM_SubFun_ZeroSubFunction:
            break;
        }
        if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
        {
            Dsd_ProcessingDone(DCM_RsLen_TesterPresent);
        } 
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_ControlDTCSetting
*
* Description   : This function is called when a when a ControlDTCSetting (0x85) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_ControlDTCSetting(void)
{  
    if(GetDcmState_Session() != DCM_SubFun_ExtendedDiagnosticSession)
   // if(!(GetDcmState_EnablePrgSession() || GetDcmState_EnableExtSession()))
    {
        DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);                 
    }
    else if(Dcm_ReqDataLength < DCM_RqLen_ControlDTCSetting)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else if((Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_DTCSettingOn) &&
            (Dcm_SduBuffer[DCM_SubFun_Idx] != DCM_SubFun_DTCSettingOff))
    {
        DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
    }
    else if(Dcm_ReqDataLength > DCM_RqLen_ControlDTCSetting)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat); 
    }
    else
    {
        switch(Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            case DCM_SubFun_DTCSettingOn:
            case DCM_SubFun_DTCSettingOff:/* FallThrough Allowed */
            {
                /*do nothing*/
                break;
            }

            default:
            {
                DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
            }
            break;
        }
        if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
        {
            Dsd_ProcessingDone(DCM_RsLen_ControlDTCSetting); 
        }
    }
}
#if(DCM_SERVICE_2E_ENABLED==STD_ON)
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_WriteDataByIdentifier
*
* Description   : This function is called when a when a Write-Data-By-Identifier (0x2E) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_WriteDataByIdentifier( void )
{
    uint16 WriteDidTemp=0;
    uint16 i = 0U ;
    WriteDidTemp= ((uint16)Dcm_SduBuffer[DCM_SubFun_Idx]<<BIT_NUM_OF_BYTE)|\
                    ((uint16)Dcm_SduBuffer[DCM_SubFun_Idx+1]);
    if((GetDcmState_Session() != DCM_SubFun_ProgrammingSession) &&
       (GetDcmState_Session() != DCM_SubFun_ExtendedDiagnosticSession))
   // if (!(GetDcmState_EnablePrgSession() || GetDcmState_EnableExtSession()))
    {
        DCM_SET_NRC(DCM_NRC_serviceNotSupportedInActiveSession);
    }
#if(DCM_SERVICE_29_ENABLED == STD_ON)
    else if(g_AuthnState != E_FullVerified)
    {
        DCM_SET_NRC(DCM_NRC_authenticationRequired);
    }
#endif
    else if(Dcm_ReqDataLength < DCM_RqLen_WriteDataByIdentifierMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else
    {
        for(i = 0U; i < Dcm_NUMBER_OF_DIDS; i++)
        {
            if(WriteDidTemp == DID_Infos[i].Did)
            {
                if((DID_Infos[i].RW_Permission & DID_INFO_WRITE_ONLY) == DID_INFO_WRITE_ONLY)
                {
                    if ((Dcm_ReqDataLength != (DID_Infos[i].Size + 3)))
                    {
                        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
                    }
#if(DCM_SERVICE_27_ENABLED == STD_ON)
                    else if(!GetDcmState_IsSecurityUnlock())
                    {
                        DCM_SET_NRC(DCM_NRC_securityAccessDenied);
                    }
#endif
                    else
                    {
                        if (DID_Write(&Dcm_SduBuffer[DCM_SubFun_Idx + 2], &DID_Infos[i]) == E_OK)
                        {
                            Dsd_ProcessingDone(3);
                           // if(WriteDidTemp == 0xF184U)
                            {
                                SetDcmState_FingerPrint();
                            }
                        }
                        else
                        {
                            if(WriteDidTemp == 0xF187U)
                            {
                                uint8 AllowF187WriteId = 0U;
                                Diag_FlagRead(ALLOW_F187_WRITE_ID,&AllowF187WriteId);
                                if(AllowF187WriteId == 0U)
                                {
                                    DCM_SET_NRC(DCM_NRC_conditionsNotCorrect);
                                }
                                else
                                {
                                    DCM_SET_NRC(DCM_NRC_generalProgrammingFailure);
                                }
                            }
                            else
                            {
                                DCM_SET_NRC(DCM_NRC_generalProgrammingFailure);
                            }
                        }
                    }
                    break;
                }
            }
        }
        if(i >= Dcm_NUMBER_OF_DIDS)
        {
            DCM_SET_NRC(DCM_NRC_requestOutOfRange);
        }
    }
}
#endif /*#if(DCM_SERVICE_2E_ENABLED==STD_ON)*/
#if(DCM_SERVICE_22_ENABLED==STD_ON)
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_ReadDataByIdentifier
*
* Description   : This function is called when a when a Read-Data-By-Identifier (0x22) service
*                 request is received.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_ReadDataByIdentifier(void)
{
    uint16 ReadDidTemp=0;
    uint16 i = 0 ;
  /*  if ((Dcm_ReqDataLength < DCM_RqLen_ReadDataByIdentifierMin)||
        (((Dcm_ReqDataLength-1)%2) != 0)) */
    /* Determine if the received data length is correct */
    if (Dcm_ReqDataLength != DCM_RqLen_ReadDataByIdentifierMin)
    {
        /*  The received data length is wrong , response 13*/
         DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else
    {
        /* Calculate did */
        ReadDidTemp= ((uint16)Dcm_SduBuffer[DCM_SubFun_Idx]<<BIT_NUM_OF_BYTE)|\
                        ((uint16)Dcm_SduBuffer[DCM_SubFun_Idx+1]);
        /* Traverse the DID array to find the corresponding DID */
        for(i = 0U; i < Dcm_NUMBER_OF_DIDS; i++)
        {
            if(ReadDidTemp == DID_Infos[i].Did)
            {
                /*Determine if the DID is readable */
                if((DID_Infos[i].RW_Permission & DID_INFO_READ_ONLY) == DID_INFO_READ_ONLY)
                {
                     /* Read the data , Determine the return value */
                       if (DID_Read(&Dcm_SduBuffer[DCM_SubFun_Idx+2], &DID_Infos[i])!= E_OK)
                       {
                           DCM_SET_NRC(DCM_NRC_generalProgrammingFailure);
                       }
                       else
                       {
                           Dsd_ProcessingDone(DID_Infos[i].Size + 3);
                       }
                }
                break;
            }
        }
        if(i == Dcm_NUMBER_OF_DIDS)
        {
            DCM_SET_NRC(DCM_NRC_requestOutOfRange);
        }
    }
}
#endif/*#if(DCM_SERVICE_22_ENABLED==STD_ON)*/
#if(DCM_SERVICE_29_ENABLED == STD_ON)
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Dsp_Authentication
*
* Description   : This function is called when a Authentication (0x29) service
*                 request is received.
*
* Inputs        :
*
* Return        :
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Dsp_Authentication(void)
{
    AuthnRet_t ret = E_RequestAccepted;

    if(GetDcmState_FunctionalRequest())
    {
        DcmSetNoResponse();
    }
    else if(Dcm_ReqDataLength < DCM_RqLen_AuthenticationMin)
    {
        DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
    }
    else
    {
        switch(Dcm_SduBuffer[DCM_SubFun_Idx])
        {
            case DCM_SubFun_deAuthenticate:
            {
                if(Dcm_ReqDataLength != DCM_RqLen_Authn_DA)
                {
                    DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
                }
                else
                {
                    ret = Authn_DeAuthentication();
                    Dcm_SduBuffer[DCM_Authn_RetVal_Idx] = ret;
                    /* response data length*/
                    Dcm_ResDataLength = 3;
                }
                break;
            }

            case DCM_SubFun_verifyCertificateBidirectional:
            {
                /*calculate lengthOfCertificateClient and lengthOfChallengeClient*/
                if(E_OK != Authn_VCB_PreProcess(Dcm_ReqDataLength,&Dcm_SduBuffer[DCM_SubFun_Idx+1u]))
                {
                    DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
                }
                else
                {
                    ret = Authn_VCB();
                    Dcm_SduBuffer[DCM_Authn_RetVal_Idx] = ret;
                    Dcm_ResDataLength = Authn_VCB_PostProcess(&Dcm_SduBuffer[DCM_Authn_RetVal_Idx + 1U]);
                }
                break;
            }

            case DCM_SubFun_proofOfOwnership:
            {
                if(E_OK != Authn_POwn_PreProcess(Dcm_ReqDataLength,&Dcm_SduBuffer[DCM_SubFun_Idx+1u]))
                {
                    DCM_SET_NRC(DCM_NRC_incorrectMessageLengthOrInvalidFormat);
                }
                else if(g_AuthnState != E_CertVerified)
                {
                    DCM_SET_NRC(DCM_NRC_requestSequenceError);
                }
                else
                {
                    ret = Authn_POwn();
                    Dcm_SduBuffer[DCM_Authn_RetVal_Idx] = ret;
                    Dcm_ResDataLength = Authn_POwn_PostProcess(&Dcm_SduBuffer[DCM_Authn_RetVal_Idx + 1U]);
                }
                break;
            }

            default:
            {
                DCM_SET_NRC(DCM_NRC_SubFunctionNotSupported);
                break;
            }
        }
    }

    if(DCM_GET_NRC()== DCM_NRC_positiveResponse)
    {
        Dsd_ProcessingDone(Dcm_ResDataLength);
    }
}
#endif/*#if(DCM_SERVICE_29_ENABLED == STD_ON)*/
/************************************End*****************************/
