/*******************************************************************************
**                                                                            **
**  FILENAME    : Rte_SecOC.c                                                  **
**                                                                            **
**  Created on  :                                                             **
**  Author      :                                                  **
**  Vendor      :                                                             **
**  DESCRIPTION :                                     **
**                                                                            **
**  SPECIFICATION(S) : AUTOSAR Classic Platform 4.2.2 and R19-11              **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "SecOC_Cfg.h"
#include "SecOC_Types.h"
#include "queue_fifo.h"
#include "Com.h"
#include "NvM.h"
#include "Csm.h"
#include "Crypto_ISoft.h"
#include "Crypto_internal.h"
#include "logHal.h"
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/

// 定义联合体体（按信号位宽分配，总位宽需对齐）
typedef  struct 
{

    uint16 DataId     ;  // 11位：DataId
    uint8 AlgFlag     ;   // 1位：算法类型
    uint8 FailedReason;   // 4位：失败原因   
    uint16 ErrorCount ;  // 16位：错误次数 
    // byte 4
    uint8  TripNvmTag ;   // 1位：同步计数器NVM失败
    uint8  ECUResetCnt;   // 4位：重置计数器
    uint8  ECUKeySt   ;   // 1位：密钥状态   
    // byte 5-7
    uint32 ECUTripCnt ;  // 24位：行程计数器    
} SecOC_ErrLogInfo_Fields;

typedef struct 
{
    // byte 0~1
    uint16 DataId    ;  // 11位：DataId
}SecOC_RxTxPduIndo_Type;

QueueFIFO SecOC_ErrorLogQueue;
SecOC_ErrLogInfo_Fields SecOC_ErrLog_QueueRead;
SecOC_ErrLogInfo_Fields SecOC_ErrLogInfo[SECOC_RX_PDU_NUM+SECOC_TX_PDU_NUM] ;
SecOC_RxTxPduIndo_Type SecOC_RxTxPduInfo[SECOC_RX_PDU_NUM+SECOC_TX_PDU_NUM] = {0x00,0x98};

static uint8 App_SecOC_RxTxPduInfo_Index(uint16 DataId )
{
    uint16 i = 0;
    uint16 Index = 0xFFFF;
    for ( i = 0; i < SECOC_RX_PDU_NUM+SECOC_TX_PDU_NUM; i++)
    {
        if (DataId == SecOC_RxTxPduInfo[i].DataId)
        {
           Index = i;
           break;
        }
        
    }
    return Index ;
    
}

/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

void App_VerificationStatusCallout(SecOC_VerificationStatusType VerificationStatus)
{
    uint16 Index = 0xFFFF;
    uint8 ECUTripCntTemp[4] = 0;
    SecOC_ErrLogInfo_Fields* lSecOC_ErrLogInfo = NULL_PTR;
    Index = App_SecOC_RxTxPduInfo_Index(VerificationStatus.secOCDataId );
    if (Index != 0xFFFF)
    {
        lSecOC_ErrLogInfo = &SecOC_ErrLogInfo[Index];

        // byte 0~1
        lSecOC_ErrLogInfo->DataId = (uint16)VerificationStatus.secOCDataId ;        // 11位：DataId

        lSecOC_ErrLogInfo->AlgFlag  = 0;          // 1位：算法类型
        lSecOC_ErrLogInfo->FailedReason = VerificationStatus.verificationStatus;      // 4位：失败原因
        // byte 2~3
        lSecOC_ErrLogInfo->ErrorCount ++;        // 16位：错误次数      
        // byte 4 
        lSecOC_ErrLogInfo->TripNvmTag = 0;        // 1位：同步计数器NVM失败
        lSecOC_ErrLogInfo->ECUResetCnt = 0;       // 4位：重置计数器
        if (CryptoKeyStatus[CsmKey_SecOC_Key] == CRYPTO_KEYSTATE_VALID)
        {
            lSecOC_ErrLogInfo->ECUKeySt = 0;          // 1位：密钥状态       
        }
        else
        {
            lSecOC_ErrLogInfo->ECUKeySt = 1;          // 1位：密钥状态       
        }
        // byte 5-7
        NvM_RequestResultType NvMReadSecOc_count_Status = NVM_REQ_PENDING;
        uint32 NVM_ReadTIME=0;
        NvM_ReadBlock(NvMBlock_SecOc_count,ECUTripCntTemp);
        do
        {
            NVM_ReadTIME++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(NvMBlock_SecOc_count,&NvMReadSecOc_count_Status);
            if (NVM_ReadTIME == 5000)
                break;
        }while(NvMReadSecOc_count_Status != NVM_REQ_OK);

        if(NvMReadSecOc_count_Status == E_OK  )
        {
            lSecOC_ErrLogInfo->ECUTripCnt |= ECUTripCntTemp[0]<<16 ;    // 24位：行程计数器
            lSecOC_ErrLogInfo->ECUTripCnt |= ECUTripCntTemp[1]<<8 ;    // 24位：行程计数器
            lSecOC_ErrLogInfo->ECUTripCnt |= ECUTripCntTemp[2] ;    // 24位：行程计数器

        }
        else
        {
            lSecOC_ErrLogInfo->ECUTripCnt = 0 ;    // 24位：行程计数器
        }

        queue_write(&SecOC_ErrorLogQueue,lSecOC_ErrLogInfo,(uint8)sizeof(SecOC_ErrLogInfo_Fields));
    }
    else
    {

    }
}
static uint16 queue_count = 0;
void App_SecOC_ErrorLogProcess(void)
{
    static uint16 ErrorLogCycle = 0;
    SecOC_ErrLogInfo_Fields* lSecOC_ErrLog_QueueRead = &SecOC_ErrLog_QueueRead;
    ErrorLogCycle++;

    if ((ErrorLogCycle % 10) == 0)
    {
        ErrorLogCycle = 0;

        queue_count = queue_get_count(&SecOC_ErrorLogQueue);
        if(queue_read(&SecOC_ErrorLogQueue,lSecOC_ErrLog_QueueRead,(uint8)sizeof(SecOC_ErrLogInfo_Fields)) == QUEUE_OK)
         {

            
            // DataId = lSecOC_ErrLog_QueueRead->B.DataId      ;  // 11位：DataId
            // AlgFlag = lSecOC_ErrLog_QueueRead->B.AlgFlag      ;   // 1位：算法类型
            // FailedReason = lSecOC_ErrLog_QueueRead->B.FailedReason      ;   // 4位：失败原因    // byte 2~3
            // ErrorCount = lSecOC_ErrLog_QueueRead->B.ErrorCount      ;  // 16位：错误次数      
            // TripNvmTag = lSecOC_ErrLog_QueueRead->B.TripNvmTag      ;   // 1位：同步计数器NVM失败
            // ECUResetCnt = lSecOC_ErrLog_QueueRead->B.ECUResetCnt      ;   // 4位：重置计数器
            // ECUKeySt = lSecOC_ErrLog_QueueRead->B.ECUKeySt      ;   // 1位：密钥状态       
            // ECUTripCnt = lSecOC_ErrLog_QueueRead->B.ECUTripCnt      ;  // 24位：行程计数器

            Com_SendSignal(IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->DataId);             // 11位：DataId
            Com_SendSignal(IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->AlgFlag);           // 1位：算法类型
            Com_SendSignal(IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->FailedReason); // 4位：失败原因
            Com_SendSignal(IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->ErrorCount);     // 16位：错误次数      
            Com_SendSignal(IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->TripNvmTag);     // 1位：同步计数器NVM失败
            Com_SendSignal(IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->ECUResetCnt);      // 4位：重置计数器
            Com_SendSignal(IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->ECUKeySt);        // 1位：密钥状态       
            Com_SendSignal(IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,&lSecOC_ErrLog_QueueRead->ECUTripCnt);        // 24位：行程计数器
            SECOC_LOG_SEND(LOG_LEVEL_WARN, LOG_EVT_AUTH_FAIL, lSecOC_ErrLog_QueueRead, sizeof(SecOC_ErrLogInfo_Fields));
         }
         else
         {

         }
    }

}

