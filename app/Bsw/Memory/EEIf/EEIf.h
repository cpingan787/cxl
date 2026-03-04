 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: FlsIf.h
************************************************************************************************
*   Project/Product @:
*   Title           @:
*   Author          @: zhongliang.Yang
************************************************************************************************
*   Description     @:
*
************************************************************************************************
*   Limitations     @: None
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

#ifndef EEIF_H_
#define EEIF_H_

#include "Std_Types.h"
//#include "Common.h"
//#include "MemM.h"

/*********************************************************************************************************************/
/* function Import                                                                                                 */
/*********************************************************************************************************************/

#define  DATALEN                           (64u)
#define  BLOCKSIZE                         (128u)

#define  FEE_SECTOR0_STARTADDRESS          (0xFF200000UL)

#define  SECTORLEN                            (0x2000u)
#define  FEE_SECTOR0_FINAL_BANK_STARTADD   (FEE_SECTOR0_STARTADDRESS + SECTORLEN - DATALEN)

#define  FEE_SECTOR1_STARTADDRESS          (0xFF202000UL)
#define  FEE_SECTOR1_FINAL_BANK_STARTADD   (FEE_SECTOR1_STARTADDRESS + SECTORLEN - DATALEN)

#define  INVALIDSECTOR                     (0xFFFFFFFFu)




#define  VALIDBLOCK_FLAG                   (0xA532u)

#define  FEEBLOCK_USERDATA_STORE0          (0x01u)
#define  FEEBLOCK_USERDATA_STORE1          (0x02u)

extern  uint8    FeeUser_Data_Store[DATALEN];

/*********************************************************************************************************************/
/* function Export                                                                                                 */
/*********************************************************************************************************************/
extern uint8  EEIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_DeInit(void);
extern void   EEIf_Init(void);
#endif
