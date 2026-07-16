 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Dcm.h
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
#ifndef DCM_H
#define DCM_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Dcm_cfg.h"
#include "ComStack_Types.h"
#include "Dcm_Macro.h"
/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/

/***************************************************************************************************
*                                 STRUCTURES AND OTHER TYPEDEFS
***************************************************************************************************/
typedef union
{
    uint8 u8_arr[4];
    struct {
           uint8 ReceivedRequset       :1;
           uint8 EnableDiagResp        :1;
           uint8 FunctionalRequest     :1;
           uint8 ServiceInProgress     :1;
           uint8 RcrRpInProgress       :1;
           uint8 EnablePrgSession      :1;
           uint8 Session               :2;
           uint8 SecurityKeyAllowed    :1;
           uint8 SecurityUnlock        :1;
           uint8 FingerPrint           :1;
           uint8 AllowTransferData     :1;
           uint8 TransferDataOver      :1;
           uint8 RequestTransferExit   :1;
           uint8 Driver34              :1;
           uint8 Driver36              :1;
           uint8 Driver37              :1;
           uint8 DriverCrc             :1;
           uint8 EraseMemoryAppA       :1;
           uint8 AppA34                :1;
           uint8 AppA36                :1;
           uint8 AppA37                :1;
           uint8 Service36_1stBlock    :1;
           uint8 AppACrc               :1;
           uint8 AppBCrc               :1;
           uint8 CalCrc                :1;
           uint8 EraseMemoryAppB       :1;
           uint8 EraseMemoryCal        :1;
    } State;
} DcmState_t;
/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/
extern uint8             Dcm_S3TimerStartFlag;
extern uint16            Dcm_S3Timer;
extern uint8             Dcm_P2TimerStartFlag;
extern uint16            Dcm_P2Timer;
extern uint8             gDCM_FunReq_Flag;
extern DcmState_t        DcmState ;
extern uint8        	 ServerIdPost ;
extern uint8        	 ServerPostCount ;
/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
/* Macros for timer */
#define DCM_IsP2TimerStart()                               (Dcm_P2TimerStartFlag == 1U)
#define DCM_START_P2TIMER()                                (Dcm_P2TimerStartFlag = 1U)
#define DCM_STOP_P2TIMER()                                 (Dcm_P2TimerStartFlag = 0U)
#define DCM_IsS3TimerStart()                               (Dcm_S3TimerStartFlag == 1U)
#define DCM_START_S3TIMER()                                (Dcm_S3TimerStartFlag = 1)
#define DCM_STOP_S3TIMER()                                 (Dcm_S3TimerStartFlag = 0)

/* Macros for state flag access */
#define GetDcmState_ReceivedRequset()                  (DcmState.State.ReceivedRequset == 1U)
#define SetDcmState_ReceivedRequset()                  (DcmState.State.ReceivedRequset = 1)
#define ClrDcmState_ReceivedRequset()                  (DcmState.State.ReceivedRequset = 0)

#define GetDcmState_EnableDiagResp()                   (DcmState.State.EnableDiagResp == 1U)
#define SetDcmState_EnableDiagResp()                   (DcmState.State.EnableDiagResp = 1)
#define ClrDcmState_EnableDiagResp()                   (DcmState.State.EnableDiagResp = 0)

#define GetDcmState_FunctionalRequest()                (DcmState.State.FunctionalRequest == 1U)
#define SetDcmState_FunctionalRequest()                (DcmState.State.FunctionalRequest = 1)
#define ClrDcmState_FunctionalRequest()                (DcmState.State.FunctionalRequest = 0)

#define GetDcmState_ServiceInProgress()                 (DcmState.State.ServiceInProgress == 1U)
#define SetDcmState_ServiceInProgress()                 (DcmState.State.ServiceInProgress = 1)
#define ClrDcmState_ServiceInProgress()                 (DcmState.State.ServiceInProgress = 0)

#define GetDcmState_RcrRpInProgress()                   (DcmState.State.RcrRpInProgress == 1U)
#define SetDcmState_RcrRpInProgress()                   (DcmState.State.RcrRpInProgress = 1)
#define ClrDcmState_RcrRpInProgress()                  (DcmState.State.RcrRpInProgress = 0)

// #define GetDcmState_EnablePrgSession()                  (DcmState.State.EnablePrgSession == 1U)
// #define SetDcmState_EnablePrgSession()                  (DcmState.State.EnablePrgSession = 1)
// #define ClrDcmState_EnablePrgSession()                  (DcmState.State.EnablePrgSession = 0)

#define GetDcmState_Session()                                 (DcmState.State.Session)
#define SetDcmState_Session(session)                          (DcmState.State.Session = session)
#define ClrDcmState_Session()                                 (DcmState.State.Session = 0)



// #define GetDcmState_EnableExtSession()                  (DcmState.State.EnableExtSession == 1U)
// #define SetDcmState_EnableExtSession()                  (DcmState.State.EnableExtSession = 1)
// #define ClrDcmState_EnableExtSession()                  (DcmState.State.EnableExtSession = 0)

#define GetDcmState_SecurityKeyAllowed()                (DcmState.State.SecurityKeyAllowed == 1U)
#define SetDcmState_SecurityKeyAllowed()                (DcmState.State.SecurityKeyAllowed = 1)
#define ClrDcmState_SecurityKeyAllowed()                (DcmState.State.SecurityKeyAllowed = 0)

#define GetDcmState_IsSecurityUnlock()                    (DcmState.State.SecurityUnlock == 1U)
#define SetDcmState_SecurityUnlock()                    (DcmState.State.SecurityUnlock = 1)
#define ClrDcmState_SecurityUnlock()                    (DcmState.State.SecurityUnlock = 0)

#define GetDcmState_FingerPrint()                       (DcmState.State.FingerPrint == 1U)
#define SetDcmState_FingerPrint()                       (DcmState.State.FingerPrint = 1)
#define ClrDcmState_FingerPrint()                       (DcmState.State.FingerPrint = 0)

#define GetDcmState_AllowTransferData()              (DcmState.State.AllowTransferData == 1U)
#define SetDcmState_AllowTransferData()              (DcmState.State.AllowTransferData = 1)
#define ClrDcmState_AllowTransferData()              (DcmState.State.AllowTransferData = 0)

#define GetDcmState_TransferDataOver()                  (DcmState.State.TransferDataOver == 1U)
#define SetDcmState_TransferDataOver()                  (DcmState.State.TransferDataOver = 1)
#define ClrDcmState_TransferDataOver()                  (DcmState.State.TransferDataOver = 0)

#define GetDcmState_RequestTransferExit()               (DcmState.State.RequestTransferExit == 1U)
#define SetDcmState_RequestTransferExit()               (DcmState.State.RequestTransferExit = 1)
#define ClrDcmState_RequestTransferExit()               (DcmState.State.RequestTransferExit = 0)

#define GetDcmState_DriverCrc()                         (DcmState.State.DriverCrc)
#define SetDcmState_DriverCrc()                         (DcmState.State.DriverCrc = 1)
#define ClrDcmState_DriverCrc()                         (DcmState.State.DriverCrc = 0)

#define GetDcmState_EraseMemoryAppA()                (DcmState.State.EraseMemoryAppA == 1U)
#define SetDcmState_EraseMemoryAppA()                (DcmState.State.EraseMemoryAppA = 1)
#define ClrDcmState_EraseMemoryAppA()                (DcmState.State.EraseMemoryAppA = 0)

#define GetDcmState_SID36_1stBlock()                      (DcmState.State.Service36_1stBlock == 1U)
#define SetDcmState_SID36_1stBlock()                      (DcmState.State.Service36_1stBlock = 1)
#define ClrDcmState_SID36_1stBlock()                     (DcmState.State.Service36_1stBlock = 0)

#define GetDcmState_AppACrc()                              (DcmState.State.AppACrc == 1U)
#define SetDcmState_AppACrc()                             (DcmState.State.AppACrc = 1)
#define ClrDcmState_AppACrc()                             (DcmState.State.AppACrc = 0)

#define GetDcmState_AppBCrc()                              (DcmState.State.AppBCrc == 1U)
#define SetDcmState_AppBCrc()                            (DcmState.State.AppBCrc = 1)
#define ClrDcmState_AppBCrc()                             (DcmState.State.AppBCrc = 0)

#define GetDcmState_CalCrc()                              (DcmState.State.CalCrc == 1U)
#define SetDcmState_CalCrc()                             (DcmState.State.CalCrc = 1)
#define ClrDcmState_CalCrc()                             (DcmState.State.CalCrc = 0)

#define GetDcmState_EraseMemoryAppB()                (DcmState.State.EraseMemoryAppB == 1U)
#define SetDcmState_EraseMemoryAppB()                (DcmState.State.EraseMemoryAppB = 1)
#define ClrDcmState_EraseMemoryAppB()                (DcmState.State.EraseMemoryAppB = 0)

#define GetDcmState_EraseMemoryCal()                 (DcmState.State.EraseMemoryCal == 1U)
#define SetDcmState_EraseMemoryCal()                 (DcmState.State.EraseMemoryCal = 1)
#define ClrDcmState_EraseMemoryCal()                 (DcmState.State._EraseMemoryCal = 0)

/* -- Macros for diag exceptions -- */
#define DCM_SET_NRC(errorNo)                            (Dcm_NegativeResCode = (errorNo))
#define DCM_GET_NRC()                                   (Dcm_NegativeResCode)
#define DCM_RESET_NRC()                                 (Dcm_NegativeResCode = DCM_NRC_positiveResponse)

/* -- Macro for function addressing request -- */
#define Set_FunReq_Flag()                                 (gDCM_FunReq_Flag = 0x01)
#define Clr_FunReq_Flag()                                 (gDCM_FunReq_Flag = 0x00)
#define Dcm_IsFunReq()                                 (gDCM_FunReq_Flag == 1U)

extern void Dcm_Init( void );
extern void Dcm_MainFunction( void );
extern void Dcm_MainFunction_Post( void );
extern void Dcm_TimerFunction( void );
extern BufReq_ReturnType Dcm_CopyTxData(PduIdType id, const PduInfoType *info, const RetryInfoType* retry, PduLengthType* availableDataPtr);
extern void Dcm_RxIndication(PduIdType id, Std_ReturnType Result);
extern void Dcm_FuncRxIndication(void);
extern void Dcm_TxConfirmation(PduIdType id, Std_ReturnType Result);
extern void Dsd_Nrc78ResponseProcess(uint8 forceSend);
extern BufReq_ReturnType Dcm_StartOfReception(PduIdType id, const PduInfoType* info, PduLengthType TpSduLength, PduLengthType* bufferSizePtr);
extern BufReq_ReturnType Dcm_CopyRxData(PduIdType id, const PduInfoType *info, PduLengthType* bufferSizePtr);

#endif /*DCM_H*/

