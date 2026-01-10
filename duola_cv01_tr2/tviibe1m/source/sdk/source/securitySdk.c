#include "securitySdk.h"
#include "securityHal.h"
#include "logHal.h"

#include <string.h>
#include "FreeRTOS.h"
#include "task.h"

#if 1   // se_protocol.h
#define GPC_BLOCK_NAD                   0x21

#define GPC_BLOCK_INF_FIELD_MAX_SIZE    0x012C

#define GPC_BLOCK_PROLOGUE_FIELD_SIZE   		4
#define GPC_BLOCK_EPILOGUE_FIELD_SIZE   		2

#define GPC_BLOCK_NAD_OFFSET            0
#define GPC_BLOCK_PCB_OFFSET            1
#define GPC_BLOCK_LEN_OFFSET            2
#define GPC_BLOCK_INF_OFFSET            4
#endif

#if 1  // se_inter.h
#define OK                              0
#define FAIL                            1

#define GPC_PHY_BLOCK_NAD_OFFSET        (0)

#define GPC_PHY_SEND_FIRST_FRAG_LEN             (6)     /* 发送数据时第1 片段数据长度 */
#define GPC_PHY_RECV_FIRST_FRAG_LEN             (6)     /* 接收数据时第1 片段数据长度 */
#endif

#if 1       // se_crc16
#define	CRC_A 0
#define	CRC_B 1	// if not equal to CRC_A, equal to CRC_B


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

#endif



#if 0
uint8_t gpc_t1_send_appdata(uint8_t *appbuf, uint16_t appbuf_len)
{
	uint8_t bStatus=0;
	uint8_t bMoreDataFlag=0;
	uint16_t sSendInfLen=0;
	uint16_t sTotalLen=0;
	
	do
	{
		//发送IBlock
		bMoreDataFlag=(appbuf_len-sTotalLen>g_sIfsc)?GPC_BLOCK_MORE:GPC_BLOCK_LAST;
		sSendInfLen=bMoreDataFlag?g_sIfsc:(appbuf_len-sTotalLen);
#ifdef EMPTY_I_BLOCK_ALLOWED
		gpc_send_iblock(appbuf+sTotalLen,sSendInfLen,GPC_BLOCK_MORE);
#else
		gpc_send_iblock(appbuf+sTotalLen,sSendInfLen,bMoreDataFlag);
		if(!bMoreDataFlag)  //2021-03-09  remove
		{
			g_bSendSeqNum^=1;
			g_bLastSentAddress=appbuf+sTotalLen;
			g_LastSentLen=sSendInfLen;
			g_bMoreDataFlag = bMoreDataFlag;  //2021-03-09  add
			return OK;   //2021-03-09  remove
		}
#endif

		//若IBlock大小超过261则需要链接起来
		do
		{
			//接收RBlock即接收响应Block
			bStatus=gpc_receive_rblock(g_bSendSeqNum^1);
			if(bStatus==GPC_TRANS_OK) 
			{
				//continue loop to transmit next chained block				
				if(bMoreDataFlag)
				{//send not finished
					g_bSendSeqNum^=1;
					sTotalLen+=sSendInfLen;
					break;
				}
				else
				{//send finished
					g_bSendSeqNum^=1;
					gpc_send_iblock(NULL,0,GPC_BLOCK_LAST);
					g_bSendSeqNum^=1;
					return OK;
				}
			}

			else if((bStatus==GPC_TRANS_TIMEROUT)||(bStatus==GPC_TRANS_COMM_ERR)) 
			{
				if(bStatus==GPC_TRANS_TIMEROUT) g_codeTrace4 = GPC_CODE_TRACE_SEND_TIMEROUT;
				else g_codeTrace4 = GPC_CODE_TRACE_SEND_TRANS_COMM_ERR;
				return FAIL;
			}

			else if(bStatus==GPC_TRANS_ABORT) 
			{
				//received ABORT request S block
				sTotalLen=0;
				continue;
			}

			else
			{
				break;//loop to retransmit last chained block
			}
		}while(1);

	}while(1); //end while(1)
}

int32_t SE_CmdExecute(uint8_t *cmd, uint16_t cmd_len, uint8_t *ack, uint16_t *ack_len)
{
	int32_t u32ErrRetryMax = 3;		//timeout times, if more than, SE Reset
	static int32_t u32ErrRetryCnt = 0;	//if timeout times more than 10, call SE connect

	{
		int32_t ret = gpc_t1_send_appdata(cmd, cmd_len);
		if(!ret)
		{
			ret = gpc_t1_receive_appdata(ack, ack_len);
		}

		if( !ret && *ack_len >= 2 && *ack_len <= 258 && ((0x90 != ack[(int)(*ack_len -2)])||(0x00 != ack[(int)(*ack_len -1)])) )
		{
			g_u8TrackSeBufBase[0] = cmd[1];		//add by wangyx
			g_u8TrackSeBufBase[1] = cmd[4];
			g_u8TrackSeBufBase[2] = ack[(int)(*ack_len -2)];
			g_u8TrackSeBufBase[3] = ack[(int)(*ack_len -1)];
		}

		return ret;
	}
	
	return OK;
}

uint8_t Check(uint8_t *buf, uint16_t buflen)
{
    uint8_t ret = 0;

    ret = (((uint16_t)buf[buflen - 2]) << 8) | buf[buflen - 1];
    if (ret == 0x9000)
    {
        ret = 0;
    }

    return ret;
}

static uint8_t ver_cmd1[] = {0x00, 0xA4, 0x04, 0x00, 0x08, 0xA0, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};
static uint8_t ver_cmd2[5] = {0x80, 0xCA, 0x9F, 0x7D, 0x00};

uint32_t SE_Version(void)
{
	uint8_t ret=0;
	uint8_t buf[256] = {0};
	uint16_t buf_len = sizeof(buf);

	SE_CmdExecute(ver_cmd1, sizeof(ver_cmd1), buf, &buf_len);
	
	ret=Check(buf,buf_len);
	if(!ret)
	{    
	SE_CmdExecute(ver_cmd2, sizeof(ver_cmd2), buf, &buf_len);
	}
	else
	{
	return 1;
	}
}

int32_t SE_Connect(void)
{  
	uint8_t ret=OK;

	SPIResetl();
	// BoardSleepms(2);//5ms//1ms
    vtaskdelay(2);
	SPIReseth();
	// BoardSleepms(8);//30ms//> 5ms
    vtaskdelay(8);

	{
		g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID; 

		//After reset, parameters are initialized to their initial values
		g_sIfsd=GPC_IFSD_DEFAULT;
		g_bSendSeqNum=0;
		g_sIfsc=GPC_IFSC_DEFAULT;
		g_bRecvSeqNum=0;
		g_sBwt=GPC_BWT_DEFAULT;

		g_bRetryNum=0;
		g_bTransRetryNum=0;
	}

	return ret;  
}
#endif


int32_t Gpc_Phy_Spi_Send(uint8_t *inbuf, uint16_t inbuf_len)
{
    uint8_t bNullByte = 0x00;
    uint8_t bRet = FAIL;
#if 0
	uint16_t i = 0;
	uint16_t sDivX = 0;
	uint16_t sModX = 0;

	BoardSleepms(GPC_PHY_RECEIVE_TO_SEND_DELAY_TIME);   
	do
	{
   		 //g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;
		//1. sent wake-up data
		if(spi_send_frag(&bNullByte, 1))   // send one Null-Byte
		{
			break;
		}
		#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
		BoardSleepms(1);
		#else
		BoardSleepus(g_sGpcWut);                         // wait for a duration of WUT唤醒时间
		#endif

		//2. sent first fragment of data 
		if(spi_send_frag(inbuf, GPC_PHY_SEND_FIRST_FRAG_LEN))   
		{
			break;
		}
		#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
		BoardSleepms(1);
		#else
		BoardSleepus(g_sGpcSegt);                         // wait for a duration of SE Guard Time保护时间
		#endif

		//3. cumpute value of sDivx and sModx 切分为g_sGpcSeal块大小后传输
		sDivX = (inbuf_len-GPC_PHY_SEND_FIRST_FRAG_LEN) /g_sGpcSeal;  
		sModX = (inbuf_len-GPC_PHY_SEND_FIRST_FRAG_LEN)% g_sGpcSeal;

		//4. sent remaining fragment of data 
		for(i=0;i<sDivX;i++)
		{
			if(spi_send_frag(inbuf+GPC_PHY_SEND_FIRST_FRAG_LEN+g_sGpcSeal*i, g_sGpcSeal))   
			{
				break;
			}
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus(g_sGpcSegt);                         // wait for a duration of SE Guard Time
			#endif
		}
			
		if (sModX)
		{	
			if(spi_send_frag(inbuf+GPC_PHY_SEND_FIRST_FRAG_LEN+g_sGpcSeal*i, sModX))   
			{
				break;
			}
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus(g_sGpcSegt);						 // wait for a duration of SE Guard Time
			#endif
		}
		bRet = OK;
	}while(0);

	g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;

#else
    do
    {
        if(Iwall_HAL_SE_SpiSend(&bNullByte, 1))
        {
            break;
        }
        vTaskDelay(3);
        if(Iwall_HAL_SE_SpiSend(inbuf, GPC_PHY_SEND_FIRST_FRAG_LEN))
        {
            break;
        }
        vTaskDelay(3);
        if(Iwall_HAL_SE_SpiSend(inbuf+GPC_PHY_SEND_FIRST_FRAG_LEN, 16))
        {
            break;
        }
        vTaskDelay(3);
        if(Iwall_HAL_SE_SpiSend(inbuf+GPC_PHY_SEND_FIRST_FRAG_LEN + 16, 1))
        {
            break;
        }
        bRet = OK;
    } while (0);
    
#endif
    return bRet;
}



static uint8_t abBlockBuf_ib[GPC_BLOCK_INF_FIELD_MAX_SIZE+6] = {0};
static int32_t gpc_send_iblock(uint8_t *inbuf, uint16_t inbuf_len,uint8_t m_flag)
//组织应用数据（包含协议头），唤醒时间、保护时间等由物理层实现
{
	uint16_t sCrc;
	uint16_t sOff = 0;
//	uint8_t abBlockBuf[GPC_BLOCK_INF_FIELD_MAX_SIZE+6] = {0};

	//1.Prepare start field data
	abBlockBuf_ib[GPC_BLOCK_NAD_OFFSET] = GPC_BLOCK_NAD;
	abBlockBuf_ib[GPC_BLOCK_PCB_OFFSET]=(0<<6)|(0<<5);//g_bSendSeqNum 0:HS->SE 	m_flag 0:最后一块
	abBlockBuf_ib[GPC_BLOCK_LEN_OFFSET]=(inbuf_len>>8)&0xFF;
	abBlockBuf_ib[GPC_BLOCK_LEN_OFFSET+1]=inbuf_len&0xFF;
	sOff += GPC_BLOCK_PROLOGUE_FIELD_SIZE;

	//2.Prepare Information Field Data
	memcpy(abBlockBuf_ib+sOff, inbuf, inbuf_len);
	sOff += inbuf_len;

	//3.Preparing to Terminate Domain Data
	sCrc = CRC16(CRC_B, sOff, abBlockBuf_ib, (uint8_t*)0); 	//4 
	abBlockBuf_ib[sOff] = (sCrc>>8)&0xFF;
	abBlockBuf_ib[sOff+1] = sCrc&0xFF;
	sOff += GPC_BLOCK_EPILOGUE_FIELD_SIZE;

	//4.Send I block data to SE
//	if(g_GpcPhyInter.BusSend(abBlockBuf_ib, sOff))
    if(Gpc_Phy_Spi_Send(abBlockBuf_ib, sOff))
	{
		//g_sErrCode = SW_GPC_COMM_ERR;   
		return FAIL;
	}
	
	return OK;
}

uint8_t outbuf[30] = {0};
void SecuritySdkTestMain(void)
{
#if 0
    SPICsen();
    SPICsoff();
#else
    // uint8_t ver_cmd1[] = {0x00, 0xA4, 0x04, 0x00, 0x08, 0xA0, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};
    // uint8_t ver_cmd2[5] = {0x80, 0xCA, 0x9F, 0x7D, 0x00};
    uint8_t ver_cmd1[] = {0x00, 0xA4, 0x04, 0x00, 0x0C, 0xA0, 0x00, 0x00, 0x00, 0x83, 0x61, 0x70, 0x41, 0x01, 0x01, 0x00, 0x01, 0x73, 0x79};
    
    uint8_t tryCnt = 60;

	SPIResetl();
    vTaskDelay(2);
	SPIReseth();
    vTaskDelay(8);

    gpc_send_iblock(ver_cmd1, sizeof(ver_cmd1), 0);
    vTaskDelay(6);
    do
    {
        if(Iwall_HAL_SE_SpiReceive(outbuf, GPC_PHY_RECV_FIRST_FRAG_LEN) == 0)
        {
            if((outbuf[GPC_PHY_BLOCK_NAD_OFFSET] != 0x00) || (outbuf[1] != 0x00) 
            || (outbuf[2] != 0x00) || (outbuf[3] != 0x00)
            || (outbuf[4] != 0x00) || (outbuf[5] != 0x00))
            {
                TBOX_PRINT("read success\r\n");
                vTaskDelay(3);
                Iwall_HAL_SE_SpiReceive(&outbuf[6], 2);
            }
        }

        tryCnt--;
        vTaskDelay(1);
    } while (tryCnt);
    
    // vTaskDelay(200);
    // gpc_send_iblock(ver_cmd2, sizeof(ver_cmd2), 0);

    vTaskDelay(200);
#endif
}

