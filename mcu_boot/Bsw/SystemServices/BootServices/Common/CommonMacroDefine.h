/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : CommonMacroDefine.h
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
#ifndef COMMONMACRODEFINE_H
#define COMMONMACRODEFINE_H
/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/
#define BIT_NUM_OF_BYTE         (uint8)0x08u
#define BIT_NUM_OF_NIBBLE       (uint8)0x04u
#define BYTE_MASK               (uint8)0xFFu
#define LOW_NIBBLE_MASK         (uint8)0x0Fu
#define HIGH_NIBBLE_MASK        (uint8)0xF0u

#define COMMF_INVALID_U8        ((uint8)0xFFU)
#define COMMF_INVALID_U16       ((uint16)0xFFFFU)
#define COMMF_INVALID_U32       ((uint32)0xFFFFFFFFUL)

#endif /*COMMONMACRODEFINE_H*/
