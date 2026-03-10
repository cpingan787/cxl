 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Dcm_Cfg.h
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
#ifndef DCM_CFG_H
#define DCM_CFG_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
//#include "StandardTypes.h"
/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/
/* Service switches ********************************************************/
#define DCM_SERVICE_27_ENABLED                  STD_ON
#define DCM_SERVICE_29_ENABLED                  STD_OFF
#define DCM_SERVICE_22_ENABLED                  STD_ON
#define DCM_SERVICE_2E_ENABLED                  STD_ON
#define DCM_SERVICE_28_01_ENABLED               STD_OFF
#define DCM_SERVICE_28_02_ENABLED               STD_OFF
/*reset response sequence*/
#define DCM_RESPONSE_BEFORE_RESET               (0x01U)
#define DCM_RESET_BEFORE_RESPONSE               (0x02U)
#define DCM_RESET_PROGRAMMING_RESPONSE_TYPE     DCM_RESET_BEFORE_RESPONSE
#define DCM_RESET_RESPONSE_TYPE                 DCM_RESPONSE_BEFORE_RESET

#define DCM_CALL_CYCLE                          (1U)
#define DCM_S3TIMERVALUE                        (5000U)
#define DCM_P2TIMERVALUE                        (uint16)(50U)
#define DCM_P2STARTIMERVALUE                     (uint16)(5000u)  //(uint16)(2000U)   /*yjp*/
#define DCM_P2STARTIMER_DIV                     (10U)/*ISO15765-3*/
#define DCM_P2TIMERCNT                          (DCM_P2TIMERVALUE/DCM_CALL_CYCLE)
#define DCM_S3TIMERCNT                          (DCM_S3TIMERVALUE/DCM_CALL_CYCLE)

#define DCM_SDU_BUFFER_SIZE                     (TRANSDATA_BLOCKSIZE_MAX + 0x10U) /*reserve 16 bytes*/


#endif /* DCM_CFG_H */
