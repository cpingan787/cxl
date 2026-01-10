/******************************************************************************
 Copyright(C),Beijing Renxin Certificate Technology Co., Ltd.
 File name: 	    crc16.h
 Author:    	    zhengwd	
 Version:		    V1.0	
 Date:      	            2019-07-22
 Description:       
 History:		

******************************************************************************/

#ifndef __CRC16_H
#define __CRC16_H
#ifdef __cplusplus
 extern "C" {
#endif /* __cplusplus */

/**************************************************************************
* Global Macro Definition
***************************************************************************/
#define	CRC_A 0
#define	CRC_B 1	// if not equal to CRC_A, equal to CRC_B


extern unsigned short CRC16(int CRCType, int Length , unsigned char *Data, unsigned char *Transmit);
extern unsigned short CRC16_CCITT(unsigned char *puchMsg, unsigned int usDataLen)  ;
extern unsigned short CRC16_CCITT_FALSE(unsigned char *puchMsg, unsigned int usDataLen) ;
extern unsigned short CRC16_IBM(unsigned char *puchMsg, unsigned int usDataLen);
extern unsigned short crc16_cal(unsigned char * pLcPtr, int LcLen);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif
