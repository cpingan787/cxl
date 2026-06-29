/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : RoutineControl.h
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
*   1.0         2024/07/08    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/

#ifndef ROUTINECONTROL_H
#define ROUTINECONTROL_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "MemM.h"
/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/
#define RC_ERASE_ADDR_FORMAT                             0x04U
#define RC_ERASE_SIZE_FORMAT                             0x04U
#define RC_ERASE_NO_ERROR                                0x00U
#define RC_ERASE_LEN_ERROR                               0x01U
#define RC_ERASE_ADDR_ERROR                              0x02U
#define RC_CHECKSUM_LEN                                  0x04U
#define RC_CHECKSUM_BUF_SIZE                             ((uint16)128U)
#define RIdCheckProgrammingPreConditions                 ((uint16)0x0203U)
#define RIdEraseMemory                                   ((uint16)0xFF00U)
#define RIdCheckProgrammingIntegrity                     ((uint16)0xDFFFU)
#define RIdCheckProgrammingDependencies                  ((uint16)0xFF01U)
#define RIdActivationAndRollback                         ((uint16)0xDFFDU)
#define RIdCheckSVN                                      ((uint16)0xDFFEU)
/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/

/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
extern uint8 g_DownBlockStart[2];

extern uint8 RC_EraseMem_Preprocess(uint8* buf, uint16 len);
extern uint8 RC_EraseMemory(void);
extern uint8 RC_ChecksumVerify(uint8* crcValue);
extern uint8 RC_CheckDependency(void);
extern uint8 RC_ActivationAndRollback(void);
extern uint8 RC_CheckSVN (void);

#endif /* ROUTINECONTROL_H */
