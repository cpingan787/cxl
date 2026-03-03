/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Diag_Callout.h
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
#ifndef DIAG_CALLOUT_H
#define DIAG_CALLOUT_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "MemM.h"
//#include "Adc_Ipw_Types.h"
/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/
#define DIAG_VOLTAGETOOHIGH                       0x4BFU //  1215
#define DIAG_VOLTAGETOOLOW                        0x26CU   // 620
/*max reprogram segment number:seg0 is only used for flash driver*/
#define DOWNSEG_MAXNUM                            ((uint8)20U)
/***************************************************************************************************
*                                 STRUCTURES AND OTHER TYPEDEFS
***************************************************************************************************/
typedef struct
{
    uint32   sAddr;
    uint32   size;
} DownSeg_t;
/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/
extern uint8 g_DownSegIdx;
extern uint8 g_CurLogicalBlockId;
extern DownSeg_t g_DownSeg[DOWNSEG_MAXNUM];
extern uint32 g_CrcAddrEnd[2];
extern uint8 g_DownBlockEnd[2];
extern uint8 g_DownBlockIdx;
extern uint16 Adc_VoltageValue;
/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
#define Diag_IsVoltageTooHigh() (((Adc_VoltageValue) > (DIAG_VOLTAGETOOHIGH)) ? (E_NOT_OK) : (E_NOT_OK))
#define Diag_IsVoltageTooLow() (((Adc_VoltageValue) < (DIAG_VOLTAGETOOLOW)) ? (E_NOT_OK) : (E_NOT_OK))

extern void   ADC_Update_Value(void);
extern void   Diag_WdgFeed(void);
extern void   Diag_NRC78Send(void);
extern uint8  Diag_FlagRead(uint8 flagId, uint8* ReadData);
extern uint8  Diag_FlagCompare(uint8 flagId);
extern uint32 Diag_GetAddrFlagVal(uint8 flagId);
extern uint8  Diag_FlagWrite(uint8 flagId, uint8* WriteData);
extern uint8  Diag_FlagClear(uint8 flagId);
extern void   APPAddr_Init(void);

#endif /* DIAG_CALLOUT_H */
