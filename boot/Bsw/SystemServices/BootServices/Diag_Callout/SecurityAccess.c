/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : SecurityAccess.c
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : Junpeng.Yue
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
*   1.0         2024/07/01    Junpeng.Yue        N/A         Original
*   1.1         xxxx/xx/xx    xxxxxxxxxxx        N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/

/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Dcm_cfg.h"
#if(DCM_SERVICE_27_ENABLED==STD_ON)
#include "Std_Types.h"
#include "SecM.h"
#include "Diag_Callout.h"
#include "SecurityAccess.h"
/***************************************************************************************************
*                                  DATA TYPES AND STRUCTURES
***************************************************************************************************/
static uint8 gs_SeedBuf[SA_L1_SEEDLEN] = {0};
static uint8 longKey[16] = {0xCB, 0x57, 0xE4, 0xEF, 0xB1, 0x10, 0x5B, 0x9C,
    0x8C, 0x44, 0x92, 0x29, 0xFA, 0x26, 0xB7, 0x9C};
uint8 g_SA_FAC; /*Failure Attempt Counter*/
uint8 g_SA_FAC_Last;
uint16 g_SA_DelayTimer;
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : SecurityAccess_SeedGet
*
* Description   : This function is used to provide seed.
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
void SecurityAccess_SeedGet(uint8 IsSame, uint8 * buf)
{
    if(IsSame == TRUE)
    {
        CommF_DataCopy(buf,gs_SeedBuf,SA_L1_SEEDLEN);
    }
    else
    {
        /*generate a random number and keep it.*/
        SecM_RandomSeedGet(buf, SA_L1_SEEDLEN);
        CommF_DataCopy(gs_SeedBuf,buf,SA_L1_SEEDLEN);
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : SecurityAccess_KeyVerify
*
* Description   : This function is used to verify key.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: Verification passed
*                 E_NOT_OK: Verification failed
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
Std_ReturnType SecurityAccess_KeyVerify( uint8 * key,uint8 Level)
{
    Std_ReturnType retValue = E_NOT_OK;
    uint8 accKey[SA_L1_KEYLEN];
    /*use random number to compute key*/
    genKeyByCode(gs_SeedBuf, longKey, accKey);
   // SecM_AccessKeyGet(SA_L1_SEEDLEN, gs_SeedBuf, Level, SA_L1_KEYLEN, accKey);
    /*if accKey == key then retValue =  E_OK*/
    if (CommF_DataCompare(key, accKey, SA_L1_KEYLEN) == E_OK)
    {
        /*clear g_CurLogicalBlockId*/
        g_CurLogicalBlockId = COMMF_INVALID_U8;
        retValue = E_OK;
    }

    return retValue;
}
#endif
