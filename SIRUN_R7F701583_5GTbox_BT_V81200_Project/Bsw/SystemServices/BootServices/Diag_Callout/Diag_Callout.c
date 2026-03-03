/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Diag_Callout.c
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
*   1.0         2024/06/28    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Diag_Callout.h"
//#include "Adc.h"
#include "Dcm.h"
#include "Dcm_Macro.h"
#include "MemM_Cfg.h"
//#include "Wdg_43_Instance0.h"
#include "FlsIf.h"
#include "EEIf.h"
/***************************************************************************************************
*                                  DATA TYPES AND STRUCTURES
***************************************************************************************************/

/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/

/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
DownSeg_t g_DownSeg[DOWNSEG_MAXNUM];
uint8 g_CurLogicalBlockId;
uint8 g_DownSegIdx;
uint16 Adc_VoltageValue;
/***************************************************************************************************
*                                 INTERNAL FUNCTION PROTOTYPES
***************************************************************************************************/

/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : ADC_Update_Value
*
* Description   : Obtain voltage value
*
* Inputs        : None
*
* Outputs       : None
*
* Limitations   : None
*
************************************************************************************************
END_FUNCTION_HDR */
void ADC_Update_Value(void)
{
//    Std_ReturnType StdReturn   = E_OK;
//    Adc_StartGroupConversion(AdcGroup_ADC1_GROUP1);
//    if(ADC_COMPLETED == Adc_GetGroupStatus(AdcGroup_ADC1_GROUP1))
//    {
//    }
//    StdReturn = Adc_ReadGroup(AdcGroup_ADC1_GROUP1,&Adc_VoltageValue);
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Diag_WdgFeed
*
* Description   : This function is used to feed watch dog
*
* Inputs        : None
*
* Outputs       : None
*
* Limitations   : None
*
************************************************************************************************
END_FUNCTION_HDR */
void Diag_WdgFeed(void)
{
  //  Wdg_43_Instance0_SetTriggerCondition(2000);
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Diag_NRC78Send
* Description   : This function is used to send the 0x78 response.
*                 It's called by internal service handle functions.
*
* Inputs        : none
*
* Outputs       : none
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void Diag_NRC78Send(void)
{
    Dsd_Nrc78ResponseProcess(DCM_NRC78_TIMEOUT);
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Diag_FlagRead
*
* Description   : This function is used to read flag data.
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
uint8 Diag_FlagRead(uint8 flagId, uint8* ReadData)
{
    uint8 retValue = E_OK;

    if(g_FlagsInfo[flagId].flagDrv == MEMM_DRV_EE)
    {
        retValue = EEIf_Read(g_FlagsInfo[flagId].flagAddr, g_FlagsInfo[flagId].flagSize, ReadData);
    }
    else if(g_FlagsInfo[flagId].flagDrv == MEMM_DRV_FLASH)
    {
        retValue = FlsIf_Read(g_FlagsInfo[flagId].flagAddr, g_FlagsInfo[flagId].flagSize, ReadData);
    }
    else if(g_FlagsInfo[flagId].flagDrv == MEMM_DRV_RAM)
    {
        CommF_DataCopy(ReadData,(void *)&g_FlagsInfo[flagId].flagAddr, g_FlagsInfo[flagId].flagSize);
    }
    else
    {
        retValue = E_NOT_OK;
    }

    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Diag_FlagCompare
*
* Description   : Compare the stored data with the input data
*
* Inputs        : flagId
*
* Outputs       : E_OK: data are consistent
*                 E_NOT_OK: data are inconsistent
*
* Limitations   : None
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 Diag_FlagCompare(uint8 flagId)
{
    uint8 retValue = E_OK;
    uint32 dataRead = 0;

    retValue = Diag_FlagRead(flagId, (uint8*)&dataRead);

    if((retValue != E_OK) || (dataRead != g_FlagsInfo[flagId].flagData))
    {
        retValue = E_NOT_OK;
    }

    return retValue;
}

uint32 Diag_GetAddrFlagVal(uint8 flagId)
{

}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Diag_FlagWrite
*
* Description   : This function is used to write flag data.
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
uint8 Diag_FlagWrite(uint8 flagId, uint8* WriteData)
{
    MemM_FlagInfo_t *       pFlag;
    uint8 retValue = E_NOT_OK;

    pFlag = &g_FlagsInfo[flagId];

    if(pFlag->flagDrv ==  MEMM_DRV_EE)
    {
        retValue = EEIf_Write(pFlag->flagAddr, pFlag->flagSize, WriteData);
    }
    else if(pFlag->flagDrv ==  MEMM_DRV_FLASH)
    {
        retValue = FlsIf_Write(pFlag->flagAddr, pFlag->flagSize, WriteData);
    }
    else if(pFlag->flagDrv ==  MEMM_DRV_RAM)
    {
        CommF_DataCopy((void *)&pFlag->flagAddr, WriteData, pFlag->flagSize);
        retValue = E_OK;
    }
    else
    {
        /*do nothing*/
    }
    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Diag_FlagClear
*
* Description   : This function is used to clear flag data.
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
uint8 Diag_FlagClear(uint8 flagId)
{
    uint8 retValue = E_OK;
    uint8 invalidData[4] = {0};

    retValue = Diag_FlagWrite(flagId, invalidData);

    return retValue;
}

