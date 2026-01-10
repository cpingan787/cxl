/******************************************************************************
 Copyright(C),CEC Huada Electronic Design Co.,Ltd.
 File name: 	    crc16.c
 Author:    	    zhengwd	
 Version:		    V1.0	
 Date:      	            2019-07-22
 Description:       
 History:		

******************************************************************************/

/***************************************************************************
* Include Header Files
***************************************************************************/
#include "include/se_crc16.h"


unsigned short crc16_cal(unsigned char * pLcPtr, int LcLen)
{
    unsigned char i;
    unsigned short lwCRC16 = 0;

    while (LcLen--) {
        for (i = 0x80; i != 0; i >>= 1) {
            if (0 != (lwCRC16 & 0x8000)) {
                lwCRC16 <<= 1;
                lwCRC16 ^= 0x1021;
            } else {
                lwCRC16 <<= 1;
            }

            if (0 != (*pLcPtr & i)) {
                lwCRC16 ^= 0x1021;
            }
        }
        pLcPtr++;
    }

    return (lwCRC16);
}


/***********************************************************************************
* Function:     UpdateCrc
* Description:  update crc value
* Input:        ch:  , lpwCrc: 
* Output:       None
* Return:       result
* Date:         2019.07.22
* ModifyRecord:
**********************************************************************************/
unsigned short UpdateCrc(unsigned char ch, unsigned short *lpwCrc)
{
	ch = (ch^(unsigned char)((*lpwCrc) & 0x00FF));
	ch = (ch^(ch<<4));
	*lpwCrc = (*lpwCrc >> 8)^((unsigned short)ch << 8)^((unsigned short)ch<<3)^((unsigned short)ch>>4);
	return (*lpwCrc);
}



// When the frame is transmitted, the low byte is transmitted first (array index 0, or the low 8BITS of WORD)
/***********************************************************************************
* Function:     CRC16
* Description:  calculate crc
* Input:        CRCType:  CRC type, CRC_A/CRCB
*               Length: CRC data length
*               Data: CRC data buffer
* Output:       None
* Return:       crc value
* Date:         2019.07.22
* ModifyRecord:
**********************************************************************************/
unsigned short CRC16(int CRCType, int Length , unsigned char *Data, unsigned char *Transmit)
{
    unsigned char chBlock;
    unsigned short wCrc;

    wCrc = (CRCType == CRC_A) ? 0x6363 : 0xFFFF;    // CRC_A : ITU-V.41 , CRC_B : ISO 3309

    do
    {
        chBlock = *Data++;
        UpdateCrc(chBlock, &wCrc);
    } while (--Length);

    if (CRCType != CRC_A)
    {
        wCrc = ~wCrc; // ISO 3309
    }

    if (Transmit)
    {
        *((unsigned short *)Transmit) = wCrc;
    }

    return wCrc;
}


/***********************************************************************************
* Function:     InvertUint8
* Description:  Single byte data inversion 
* Input:        DesBuf: destination buffer
*               SrcBuf: source buffer
* Output:       None
* Return:       None
* Date:         2019.07.22
* ModifyRecord:
**********************************************************************************/
void InvertUint8(unsigned char *DesBuf, unsigned char *SrcBuf)
{
    int i;
    unsigned char temp = 0;

    for(i = 0; i < 8; i++)
    {
        if(SrcBuf[0] & (1 << i))
        {
            temp |= 1<<(7-i);
        }
    }
    DesBuf[0] = temp;
}


/***********************************************************************************
* Function:     InvertUint16
* Description:  double byte data inversion  
* Input:        DesBuf: destination buffer
*               SrcBuf: source buffer
* Output:       None
* Return:       None
* Date:         2019.07.22
* ModifyRecord:
**********************************************************************************/
void InvertUint16(unsigned short *DesBuf, unsigned short *SrcBuf)  
{  
    int i;  
    unsigned short temp = 0;    

    for(i = 0; i < 16; i++)  
    {  
        if(SrcBuf[0] & (1 << i))
        {          
            temp |= 1<<(15 - i);  
        }
    }  
    DesBuf[0] = temp;  
}

/***********************************************************************************
* Function:     CRC16_CCITT
* Description:  carculate crc16 by CCITT 
* Input:        puchMsg: pointer to input data buffer 
*               usDataLen: input data length
* Output:       None
* Return:       None
* Date:         2019.07.22
* ModifyRecord:
**********************************************************************************/
unsigned short CRC16_CCITT(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0x0000;  
    unsigned short wCPoly = 0x1021;  
    //unsigned short wCPoly = 0x1210;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        //InvertUint8(&wChar, &wChar);  
        wCRCin ^= (wChar << 8); 

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000)
            {
                wCRCin = (wCRCin << 1) ^ wCPoly; 
            }            
            else 
            {              
                wCRCin = wCRCin << 1;  
            }
        }  
    }  
    //InvertUint16(&wCRCin, &wCRCin);  
    return (wCRCin) ;  
} 

unsigned short CRC16_CCITT_FALSE(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0xFFFF;  
    unsigned short wCPoly = 0x1021;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        wCRCin ^= (wChar << 8); 

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000)  
            {
                wCRCin = (wCRCin << 1) ^ wCPoly;  
            }
            else  
            {
                wCRCin = wCRCin << 1; 
            }            
        }  
    }  
    return (wCRCin) ;  
}  

unsigned short CRC16_XMODEM(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0x0000;  
    unsigned short wCPoly = 0x1021;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        wCRCin ^= (wChar << 8);

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000)  
            {
                wCRCin = (wCRCin << 1) ^ wCPoly;  
            }
            else
            {              
                wCRCin = wCRCin << 1;
            }
        }  
    }  
    return (wCRCin) ;  
}  

unsigned short CRC16_X25(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0xFFFF;  
    unsigned short wCPoly = 0x1021;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        InvertUint8(&wChar, &wChar);  
        wCRCin ^= (wChar << 8); 

        for(int i = 0;i < 8;i++)  
        {  
            if(wCRCin & 0x8000)
            {              
                wCRCin = (wCRCin << 1) ^ wCPoly; 
            }            
            else  
            {
                wCRCin = wCRCin << 1; 
            }            
        }  
    }  
    InvertUint16(&wCRCin, &wCRCin);  
    return (wCRCin^0xFFFF) ;  
}  

unsigned short CRC16_MODBUS(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0xFFFF;  
    unsigned short wCPoly = 0x8005;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        InvertUint8(&wChar, &wChar);  
        wCRCin ^= (wChar << 8); 

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000) 
            {
                wCRCin = (wCRCin << 1) ^ wCPoly;  
            }
            else  
            {
                wCRCin = wCRCin << 1; 
            }            
        }  
    }  
    InvertUint16(&wCRCin, &wCRCin);  
    return (wCRCin) ;  
} 

unsigned short CRC16_IBM(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0x0000;  
    unsigned short wCPoly = 0x8005;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        InvertUint8(&wChar, &wChar);  
        wCRCin ^= (wChar << 8);  

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000)  
            {
                wCRCin = (wCRCin << 1) ^ wCPoly; 
            }            
            else  
            {
                wCRCin = wCRCin << 1;  
            }
        }  
    }  
    InvertUint16(&wCRCin,&wCRCin);  
    return (wCRCin) ;  
}  

unsigned short CRC16_MAXIM(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0x0000;  
    unsigned short wCPoly = 0x8005;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        InvertUint8(&wChar, &wChar);  
        wCRCin ^= (wChar << 8);  

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000) 
            {              
                wCRCin = (wCRCin << 1) ^ wCPoly;
            }
            else 
            {              
                wCRCin = wCRCin << 1;  
            }
        }  
    }  
    InvertUint16(&wCRCin, &wCRCin);  
    return (wCRCin^0xFFFF) ;  
}  

unsigned short CRC16_USB(unsigned char *puchMsg, unsigned int usDataLen)  
{  
    unsigned short wCRCin = 0xFFFF;  
    unsigned short wCPoly = 0x8005;  
    unsigned char wChar = 0;  

    while (usDataLen--)     
    {  
        wChar = *(puchMsg++);  
        InvertUint8(&wChar, &wChar);  
        wCRCin ^= (wChar << 8); 

        for(int i = 0; i < 8; i++)  
        {  
            if(wCRCin & 0x8000) 
            {              
                wCRCin = (wCRCin << 1) ^ wCPoly;
            }            
            else  
            {
                wCRCin = wCRCin << 1; 
            }            
        }  
    }  
    InvertUint16(&wCRCin, &wCRCin);  
    return (wCRCin^0xFFFF) ;  
} 

