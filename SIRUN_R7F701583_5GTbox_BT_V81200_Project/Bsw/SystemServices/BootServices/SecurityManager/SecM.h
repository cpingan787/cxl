 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: SecM.h
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

#ifndef SERURITY_MANAGER_H
#define SERURITY_MANAGER_H
/*********************************************************************************************
 * INCLUDES
 *********************************************************************************************/
#include "Dcm_cfg.h"
#include "MemM.h"
#include "SecM_cfg.h"

/* add start test  */
#define GETU32(pt) (((unsigned int)(pt)[0] << 24) ^ ((unsigned int)(pt)[1] << 16) ^ ((unsigned int)(pt)[2] <<  8) ^ ((unsigned int)(pt)[3]))

#define PUTU32(ct, st) { (ct)[0] = (unsigned char)((st) >> 24); (ct)[1] = (unsigned char)((st) >> 16); (ct)[2] = (unsigned char)((st) >>  8); (ct)[3] = (unsigned char)(st); }

struct aes_key_st
{
    unsigned int rd_key[4 * (14 + 1)];
    unsigned int rounds;
};

typedef struct aes_key_st AES_KEY; 

/* add end test  */


/*********************************************************************************************
 *  FUNCTION DECLARATION
 *********************************************************************************************/
extern void SecM_Init(void);
#if(DCM_SERVICE_27_ENABLED==STD_ON)
extern void SecM_RandomSeedGet(uint8 * random, uint32 len);
extern void SecM_AccessKeyGet(uint32 seedlen, uint8* accSeed, uint8 level, uint32 len, uint8* accKey);
#endif
extern void SecM_ChecksumPreprocess(void);
extern void SecM_ChecksumProcess(const uint8 * data,uint32 size);
extern void SecM_ChecksumFinish(uint8 * crcdata, uint32 crclen);
extern void SecM_Crc32Preprocess(void);
extern void SecM_Crc32Process(const uint8 * data,uint32 size);
extern void SecM_Crc32Finish(uint8 * checksum);
extern void SecM_HSE_Process(uint8 temp);
extern uint32 genKeyByCode(unsigned char* seed, unsigned char* longKey, unsigned char* accKey);

extern void SecM_Crc16Preprocess(void);
extern void SecM_Crc16Process(const uint8 * data,uint32 size);
extern void SecM_Crc16Finish(uint8 * checksum);


#endif  /*SERURITY_MANAGER_H*/
