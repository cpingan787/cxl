/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : BootM.c
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : Dongxue.Guo
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
*   1.0         2024/07/01    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxxxxxxxx        N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/

/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Dcm.h"
#include "EcuMService.h"
#include "MemM_cfg.h"
#include "BootM.h"
#include "Diag_Callout.h"
#include "CanIf.h"
#include "CanTp_Cfg.h"
#include "firmwareUpdateSdk.h"

/***************************************************************************************************
*                                  DATA TYPES AND STRUCTURES
***************************************************************************************************/
typedef void (* theApp)(void);
/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/
#define BOOTM_APPAJUMP_ADDR                           (0x00050202UL)
#define BOOTM_OFFSET_ADDR                             (0x00050200UL)
#define BOOTM_APPBJUMP_ADDR                           (0x00050202UL)
#define BOOTM_VALID_REPROGRAM                         (0x00u)
#define BOOTM_VALID_10RESET                           (0x01u)
#define BOOTM_VALID_11RESET                           (0x02u)
#define BOOTM_VALID_SIB                               (0x03u)
#define BOOTM_INVALID_APP                             (0x04u)
#define BOOTM_VALID_MPU_REPROGRAM                     (0x05u)
/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
uint8 g_BootM_SIBTimeout = FALSE;
uint8 g_BootM_SIBData[BOOTM_SIB_REQUEST_LEN];
static const uint8 gs_StayInBootFrame[BOOTM_SIB_REQUEST_LEN] =
{
    0x04,0x31,0x01,0xFD,0x06
};

/***************************************************************************************************
*                                 INTERNAL FUNCTION PROTOTYPES
***************************************************************************************************/
static void BootM_AppJump(void);
static void BootM_AppIntVectRemap(void);
static void BootM_AppGo(void);
static void BootM_ResetRespond(uint8 reason);
static void BootM_ReprogramStateSet(void);
#if(DCM_RESET_PROGRAMMING_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
static void BootM_ReprogramRespond(void);
static void BootM_MCUResetRespond(uint8 reason);
#endif
static Std_ReturnType BooM_IsSIBValid(void);
static uint8 BootM_StayInBootProcess(void);
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_AppIntVectRemap
* Description   : This function is used for remapping interrupt vector table.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_AppIntVectRemap(void)
{
 //   MCU_IntRemap();
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BLApp_AppJump
* Description   : This function is used for jumping to Application.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_AppJump(void)
{
    theApp AppEntry;

    AppEntry = (theApp)(*((uint32 *)BOOTM_APPAJUMP_ADDR) + BOOTM_OFFSET_ADDR);

    //AppEntry = (theApp)((uint32 *)0x00073404u);

    if (NULL_PTR != AppEntry)
    {
        AppEntry();/*if the application reset vector is not null then jump to it*/
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_AppGo
*
* Description   : This function is used for going to application.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_AppGo(void)
{
   // if (BootM_StayInBootProcess() == E_NOT_OK)
    {
        /*remap interrupt vector table*/
        BootM_AppIntVectRemap();
        /*DeInit bootloader*/
        EcuMService_DeInit();
        /*jump to app*/
        BootM_AppJump();
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_AppVerify
*
* Description   : This function is to get all flag
*                 
* Inputs        : none
* 
* Outputs       : none
* 
* Limitations   : ryn
*                                
************************************************************************************************
END_FUNCTION_HDR */
uint8 BootM_GetFlag(void)
{
    /* check flag */
    uint8 flag;
     /*check reprogram request flag*/
    if(Diag_FlagCompare(MEMM_FLAG_REPROGRAM_ID) == E_OK)
    {
         flag = BOOTM_VALID_REPROGRAM;
    }
    else if (Diag_FlagCompare(MEMM_FLAG_MPU_REPROGRAM_ID) == E_OK)
    {
         flag = BOOTM_VALID_MPU_REPROGRAM;
    }
    else if(BootM_IsAllLBA_Valid() == E_OK)
    {
         BootM_AppGo();
         flag = BOOTM_VALID_SIB;
    }
//    else if(MEMM_FLAG_APPAddrVal == MEMM_FLAG_APPA_DATA)
//    {
//   		if(BootM_IsAllLBA_Valid())
//		{
//			BootM_AppGo();
//		}
//   		flag = BOOTM_VALID_SIB;
//    }
//    else if(MEMM_FLAG_APPAddrVal == MEMM_FLAG_APPB_DATA)
//    {
// 		if(BootM_IsAllLBB_Valid())
//		{
// 			BootM_AppGo();
//		}
// 		flag = BOOTM_VALID_SIB;
//    }

#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
    else if(Diag_FlagCompare(MEMM_FLAG_RESET_REQUEST_ID) == E_OK)
    {
         flag = BOOTM_VALID_11RESET;
    }
    else if(Diag_FlagCompare(MEMM_FLAG_RESET_SESSION_ID) == E_OK)
    {
         flag = BOOTM_VALID_10RESET;
    }
#endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)*/
    else
    {
         flag = BOOTM_INVALID_APP;
    }
    /*when the boot gets here, SIB is no longer needed*/
    g_BootM_SIBTimeout = TRUE;

    return flag;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_FlagHandle
*
* Description   : This function is used to handle different flags
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   : ryn
*
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 BootM_FlagHandle(uint8 Flag)
{
    uint8 retValue = E_OK;

    switch(Flag)
    {
        case BOOTM_VALID_REPROGRAM:
            /*Clear reprogram flag*/
            retValue = Diag_FlagClear(MEMM_FLAG_REPROGRAM_ID);
#if(DCM_RESET_PROGRAMMING_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
            BootM_ReprogramRespond();
#endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)*/
            BootM_ReprogramStateSet();
            break;
        case BOOTM_VALID_MPU_REPROGRAM:
            /*Clear reprogram flag*/
            retValue = Diag_FlagClear(MEMM_FLAG_MPU_REPROGRAM_ID);
            FirmwareUpdate_SetMpuOtaFlag(1U);
            break;
#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
        case BOOTM_VALID_10RESET:
            retValue = Diag_FlagClear(MEMM_FLAG_RESET_SESSION_ID);
            /*send respond*/
            BootM_MCUResetRespond(BOOTM_VALID_10RESET);
            break;
        case BOOTM_VALID_11RESET:
            retValue = Diag_FlagClear(MEMM_FLAG_RESET_REQUEST_ID);
            /*send respond*/
            BootM_MCUResetRespond(BOOTM_VALID_11RESET);
            break;
#endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)*/
        default:
            break;
    }
    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_IsAllLBValid
* Description   : This function is used for verifying all logical blocks.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 BootM_IsAllLBA_Valid(void)
{
    uint8 retValue = E_NOT_OK;

    retValue = Diag_FlagCompare(MEMM_FLAG_APPA_ID);

//    if(E_OK == retValue)
//    {
//        retValue = Diag_FlagCompare(MEMM_FLAG_CAL_ID);
//    }

    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_IsAllLBValid
* Description   : This function is used for verifying all logical blocks.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 BootM_IsAllLBB_Valid(void)
{
    uint8 retValue = E_NOT_OK;

    retValue = Diag_FlagCompare(MEMM_FLAG_APPB_ID);

//    if(E_OK == retValue)
//    {
//        retValue = Diag_FlagCompare(MEMM_FLAG_CAL_ID);
//    }

    return retValue;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_ResetRespond
*
* Description   : This function is used to send response to a reset request.
*
* Inputs        : reason: reset reason
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_ResetRespond(uint8 reason)
{
    PduInfoType TxPduInfo;
    uint8 ResBuffer[8] = {0};
    uint8 RemainBytes = 0;
#if(CANTP_PADDING_SUPPORT == CANTP_ON)
    uint8 i = 0;
#endif

    TxPduInfo.SduDataPtr = ResBuffer;
#if(DCM_RESET_PROGRAMMING_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
    if(reason == BOOTM_VALID_REPROGRAM)
    {
        ResBuffer[0] = 0x06;
        ResBuffer[1] = 0x50;
        ResBuffer[2] = 0x02;
        ResBuffer[3] = DCM_P2TIMERVALUE >> BIT_NUM_OF_BYTE;
        ResBuffer[4] = DCM_P2TIMERVALUE & BYTE_MASK;
        ResBuffer[5] = (DCM_P2STARTIMERVALUE/DCM_P2STARTIMER_DIV) >> BIT_NUM_OF_BYTE;
        ResBuffer[6] = (DCM_P2STARTIMERVALUE/DCM_P2STARTIMER_DIV) & BYTE_MASK;
        RemainBytes = 1;
    }
    else if(reason == BOOTM_VALID_10RESET)
    {
        ResBuffer[0] = 0x06;
        ResBuffer[1] = 0x50;
        ResBuffer[2] = 0x01;
        ResBuffer[3] = DCM_P2TIMERVALUE >> BIT_NUM_OF_BYTE;
        ResBuffer[4] = DCM_P2TIMERVALUE & BYTE_MASK;
        ResBuffer[5] = (DCM_P2STARTIMERVALUE/DCM_P2STARTIMER_DIV) >> BIT_NUM_OF_BYTE;
        ResBuffer[6] = (DCM_P2STARTIMERVALUE/DCM_P2STARTIMER_DIV) & BYTE_MASK;
        RemainBytes = 1;
    }
    else if(reason == BOOTM_VALID_11RESET)
    {
        ResBuffer[0] = 0x02;
        ResBuffer[1] = 0x51;
        ResBuffer[2] = 0x01;
        RemainBytes = 5;
    }
    else
#endif
        if(reason == BOOTM_VALID_SIB)
    {
        ResBuffer[0] = gs_StayInBootFrame[0];
        ResBuffer[1] = gs_StayInBootFrame[1] | 0x40U;
        ResBuffer[2] = gs_StayInBootFrame[2];
        ResBuffer[3] = gs_StayInBootFrame[3];
        ResBuffer[4] = gs_StayInBootFrame[4];
        RemainBytes = 3;
    }
    else
    {
        /*do nothing*/
    }

#if(CANTP_PADDING_SUPPORT == CANTP_ON)
    for(i = 0; i < RemainBytes; i++)
    {
        ResBuffer[7U - i] = CANTP_PADDING_BYTE;
    }

    TxPduInfo.SduLength = 8;
#else
    TxPduInfo.SduLength = 8U - RemainBytes;
#endif
    (void)CanIf_Transmit(0, &TxPduInfo);
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_ReprogramStateSet
* Description   : After MCU send response,it will set reprogramming state.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   : This function must be called by RTE_ResetProcess function.
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_ReprogramStateSet(void)
{
    /*set program session*/
    SetDcmState_Session(DCM_SubFun_ProgrammingSession);

    if (!DCM_IsS3TimerStart())
    {
        CommF_SetStartTime(Dcm_S3Timer);
        DCM_START_S3TIMER();
    }
}
#if(DCM_RESET_PROGRAMMING_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RTE_ResetProcess
* Description   : After MCU receive reprogramming request, It will send response.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   : This function must be called by RTE_ResetProcess function.
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_ReprogramRespond(void)
{
    if(Diag_FlagCompare(MEMM_FLAG_NORESPONSE_ID) == E_OK)
    {
        Diag_FlagClear(MEMM_FLAG_NORESPONSE_ID);
    }
    else
    {
        BootM_ResetRespond(BOOTM_VALID_REPROGRAM);
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RTE_MCUResetRespond
* Description   : send response after MCU reset
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   : This function must be called by RTE_ResetProcess function.
*
************************************************************************************************
END_FUNCTION_HDR */
static void BootM_MCUResetRespond(uint8 reason)
{
    if(Diag_FlagCompare(MEMM_FLAG_NORESPONSE_ID) == E_OK)
    {
        Diag_FlagClear(MEMM_FLAG_NORESPONSE_ID);
    }
    else
    {
        if(reason == BOOTM_VALID_10RESET)
        {
            BootM_ResetRespond(BOOTM_VALID_10RESET);
        }
        else if(reason == BOOTM_VALID_11RESET)
        {
            BootM_ResetRespond(BOOTM_VALID_11RESET);
        }
        else
        {
            /*do nothing*/
        }
    }

}
#endif/*#if(DCM_RESET_RESPONSE_TYPE == DCM_RESET_BEFORE_RESPONSE)*/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BooM_IsSIBValid
* Description   : This function is used for verifying the SIB request.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static Std_ReturnType BooM_IsSIBValid(void)
{
    uint8 i;
    for(i = 0; i < BOOTM_SIB_REQUEST_LEN; i++)
    {
        if(g_BootM_SIBData[i] != gs_StayInBootFrame[i])
        {
             return E_NOT_OK;
        }
    }
    return E_OK;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : BootM_StayInBootProcess
* Description   : This function is used for Stay-In-Boot.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 BootM_StayInBootProcess(void)
{
    uint16 SIBTimer = 0;
    uint16 SIBTimeout = 0;
    uint8 isValidSIBRequest = 0;
    CommF_SetStartTime(SIBTimer);
    do
    {
        if(BooM_IsSIBValid() == E_OK)
        {
            BootM_ResetRespond(BOOTM_VALID_SIB);
            isValidSIBRequest = 1;
        }
        CommF_GetElapsedValue(&SIBTimer, &SIBTimeout);
    }
    while((SIBTimeout < BOOTM_SIB_REQUEST_TIME) && (isValidSIBRequest == 0));

    if(isValidSIBRequest == 1)
    {
        return E_OK;
    }

    return E_NOT_OK;

}
