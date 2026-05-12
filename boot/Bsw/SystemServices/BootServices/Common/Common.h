 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Common.h
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
#ifndef COMMON_H
#define COMMON_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
//#include "ComStackTypes.h"
#include "Std_Types.h"
/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/
extern volatile uint16 Comm_MainTick;
/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
#define CommF_SetStartTime(x)       (x = Comm_MainTick)
#define COMMF_UNUSED_PARAM(Variable)            {if((Variable) != 0U)\
                                                {/* Do Nothing */}}
#define COMMF_UNUSED_PTR(Variable)              {if((Variable) != NULL_PTR)\
                                                {/* Do Nothing */}}
extern void CommF_DataCopy(void * des, void * src,uint32 srcSize);
extern uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length);
extern void CommF_DataSet(void * des, uint8 src,uint32 desSize);
extern uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length);
extern void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue);
#endif /*COMMON_H*/
