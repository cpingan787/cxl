/******************************************************************************
 Copyright(C),CEC Huada Electronic Design Co.,Ltd.
 File name: 		gpc_data_link_protocol.c
 Author:			zhengwd 
 Version:			V1.0	
 Date:			2021-03-02	
 Description:	       
 History:		
 		V1.1		2022-08-11
 						1、修改gpc_send_rblock序列号翻转
 						2、修改gpc_block_handler协议超时次数被错误清零
******************************************************************************/


/***************************************************************************
* Include Header Files
***************************************************************************/
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "include/se_crc16.h"
#include "include/se_protocol.h"

static uint16_t g_sErrCode;
static uint16_t g_bSpiCommProtocol = SPI_COMM_PROTOCOL_GPC_DLL;
/**************************************************************************
* Global Variable Declaration
***************************************************************************/
static uint16_t g_sIfsd=GPC_IFSD_DEFAULT;		//infomation feild size in I block sent by card
static uint8_t g_bSendSeqNum=0;					//mark the N(S) in I block sent by HD
static uint16_t g_sIfsc=GPC_IFSC_DEFAULT;		//infomation feild size in I block received by card
static uint8_t g_bRecvSeqNum=0;					//mark the N(S) in I block sent by SE

static uint8_t g_bRetryNum=0; 					//链路层异常， 异常处理 次数
static uint8_t g_bTransRetryNum=0;
static uint16_t g_sBwt=GPC_BWT_DEFAULT;

static uint8_t g_abPrologue[GPC_BLOCK_PROLOGUE_FIELD_SIZE] = {0};

static uint8_t g_bPver=0;
static uint8_t g_bPlid=0;
static uint8_t g_bHistBytesLen=0;
static uint8_t g_abIin[4] = {0};
static uint8_t g_abHistBytes[32] = {0};


#ifndef EMPTY_I_BLOCK_ALLOWED
static uint8_t *g_bLastSentAddress;
static uint16_t g_LastSentLen;
static uint8_t g_bMoreDataFlag;
#endif


uint8_t g_bWtx=0x01;   //缺省值

/************************************************* 
  Function:     static unsigned int sendASuvBlock(unsigned int Stype, unsigned int Sinfo)
  Description:    
		send a SuperVisory block (T = 1 protocol)			
  Calls: HED_T1_SendNBytes              
  Input: 
		Stype:type of S block
						0xC0:RESYNCH request
						0xC1:IFSC request
						0xC2:ABORT request
						0xC3:WTX request

						0xE0:RESYNCH response
						0xE1:IFSD response
						0xE2:ABORT response
						0xE3:WTX response

		Sinfo:infomation field of S block
						IFSC when 'Stype' is IFSC request
						WTX  when 'Stype' is WTX request
						IFSD when 'Stype' is IFSD response
						no use when others
  Output:no
  Return:
		0x00:data sent successfully
		0x01:data sent fail
		0x02:API's para illegal  
  Others:none
*************************************************/
#if 1
void gpc_timer_start(void)
{
	uint32_t wTimeout = 0;
	
	wTimeout = (uint32_t)g_sBwt*1000;
	wTimeout = (uint32_t)(wTimeout*g_bWtx);
	timer2_start(SE_RECEIVE_TIMEOUT, wTimeout);
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
	abBlockBuf_ib[GPC_BLOCK_PCB_OFFSET]=(g_bSendSeqNum<<6)|(m_flag<<5);//g_bSendSeqNum 0:HS->SE 	m_flag 0:最后一块
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
		g_sErrCode = SW_GPC_COMM_ERR;   
		return FAIL;
	}
	
	return OK;
}

static int32_t gpc_send_rblock(uint8_t error_flag, uint8_t  error_type)
{
	uint16_t sOff = 0;
	uint16_t sCrc = 0;
	uint8_t abBlockBuf[6] = {0};
	//uint8_t bRecvSeqNum=g_bRecvSeqNum?0:1;
	//uint8_t bNr=error_flag?bRecvSeqNum:g_bRecvSeqNum;
	uint8_t bRecvSeqNum=(g_bRecvSeqNum?0:1);
	uint8_t bNr=(error_flag?g_bRecvSeqNum:bRecvSeqNum); //modified by hd 20220801

	//1.Prepare R block start field data
	abBlockBuf[GPC_BLOCK_NAD_OFFSET] = GPC_BLOCK_NAD;
	abBlockBuf[GPC_BLOCK_PCB_OFFSET] = 0x80|(bNr<<4)|error_type;
	abBlockBuf[GPC_BLOCK_LEN_OFFSET] = 0x00;
	abBlockBuf[GPC_BLOCK_LEN_OFFSET+1] = 0x00;
	sOff += GPC_BLOCK_PROLOGUE_FIELD_SIZE;

	//2.Prepare R block termination field data
	sCrc = CRC16(CRC_B, sOff, abBlockBuf, (uint8_t*)0); 	//4 
	abBlockBuf[sOff] = (sCrc>>8)&0xFF;
	abBlockBuf[sOff+1] = sCrc&0xFF;
	sOff += GPC_BLOCK_EPILOGUE_FIELD_SIZE;

	//3.Send R block data to SE
//	if(g_GpcPhyInter.BusSend(abBlockBuf, sOff))
    if(Gpc_Phy_Spi_Send(abBlockBuf, sOff))
	{
		g_sErrCode = SW_GPC_COMM_ERR;   
		return FAIL;
	}
	
	return OK;
}

static int32_t gpc_send_sbolck(uint8_t block_type, uint16_t block_info)
{
	uint8_t bRet = OK;
	uint16_t sOff = 0;
	uint16_t sCrc = 0;
	uint16_t sInfLen = 0;
	uint8_t abBlockBuf[8] = {0};
	
	switch(block_type)
	{
		case GPC_IFS_REQUEST:
		case GPC_IFS_RESPONSE:
			if((block_info>0x00) && (block_info<0xFF))
			{
				sInfLen=1;
			}
			else if((block_info>=0x00FF) && (block_info<=0x0FF9))
			{
				sInfLen=2;
			}
			else
			{
				bRet = FAIL;
			}
			break;
		

		case GPC_WTX_RESPONSE:
			if((block_info>0x00) && (block_info<0xFF))
			{
				sInfLen=1;
			}
			else
			{
				bRet = FAIL;
			}
			break;
		case GPC_RESYNCH_REQUEST:
		case GPC_ABORT_REQUEST:
		case GPC_CIP_REQUEST:
		case GPC_RELEASE_REQUEST:
		case GPC_SWR_REQUEST:
			break;
		default:
			bRet = FAIL;
	}
	
	if(bRet)
	{
		return bRet;
	}

	//1.Prepare S block start field data
	abBlockBuf[GPC_BLOCK_NAD_OFFSET] = GPC_BLOCK_NAD;
	abBlockBuf[GPC_BLOCK_PCB_OFFSET] = block_type;
	abBlockBuf[GPC_BLOCK_LEN_OFFSET]=(sInfLen>>8)&0xFF;
	abBlockBuf[GPC_BLOCK_LEN_OFFSET+1]=sInfLen&0xFF;

	sOff += GPC_BLOCK_PROLOGUE_FIELD_SIZE;

	//2.Prepare S block termination field data
	if(sInfLen == 1)
	{
		abBlockBuf[sOff] = (uint8_t)block_info&0xff;
		sOff++;
	}
	else if(sInfLen == 2)
	{
		abBlockBuf[sOff] = (uint8_t)(block_info>>8)&0xff;
		abBlockBuf[sOff+1] = (uint8_t)block_info&0xff;
		sOff+=2;
	}

	//3.Prepare S block info field data (if any)
	sCrc = CRC16(CRC_B, sOff, abBlockBuf, (uint8_t*)0); 	//4 
	abBlockBuf[sOff] = (sCrc>>8)&0xFF;
	abBlockBuf[sOff+1] = sCrc&0xFF;
	sOff += GPC_BLOCK_EPILOGUE_FIELD_SIZE;

	//4.Send S blocks of data to SE
//	if(g_GpcPhyInter.BusSend(abBlockBuf, sOff))
    if(Gpc_Phy_Spi_Send(abBlockBuf, sOff))
	{
		g_sErrCode = SW_GPC_COMM_ERR;   
		bRet = FAIL;
	}
	
	return bRet;
}


static uint8_t abBlockBuf_cb[GPC_BLOCK_INF_FIELD_MAX_SIZE+6] = {0};
static int32_t gpc_receive_check_block(uint8_t *outbuf, uint16_t *outbuf_len)//主要接收数据入口
{
	uint8_t bRet = FAIL;
	uint16_t sCrc;
	uint8_t bPcb = 0;
	uint8_t bBlockType = 0;
//	uint8_t abBlockBuf[GPC_BLOCK_INF_FIELD_MAX_SIZE+6] = {0};
	uint16_t sInfoLen = 0;
	uint16_t sRecvBlockLen = 0;

	*outbuf_len = 0;

	//Set the start time of receive data timeout设置接收数据超时计数器
	gpc_timer_start();

	do
	{		
		//1.receive block data
//		if(g_GpcPhyInter.BusRecv(abBlockBuf_cb, &sRecvBlockLen))
		if(Gpc_Phy_Spi_Recv(abBlockBuf_cb, &sRecvBlockLen))//接收数据块[I,R,S]，完整数据块
		{
			//g_sErrCode = SW_GPC_COMM_ERR;
			g_sErrCode = SW_SE_TIMEOUT;
			g_codeTrace3 = GPC_CODE_TRACE_GPC_SE_TIMEOUT;
			break;
		}

		memcpy(g_abPrologue, abBlockBuf_cb, GPC_BLOCK_PROLOGUE_FIELD_SIZE);//拷贝协议头
		
		//2.Check if the length of the information field is greater than IFSD
		sInfoLen =((uint16_t)g_abPrologue[GPC_BLOCK_LEN_OFFSET]<<8) + g_abPrologue[GPC_BLOCK_LEN_OFFSET+1];	//Information field length
		if((sInfoLen > g_sIfsd)||(sRecvBlockLen != (sInfoLen+GPC_BLOCK_PROLOGUE_FIELD_SIZE+GPC_BLOCK_EPILOGUE_FIELD_SIZE)))
		{
			g_sErrCode = SW_GPC_LEN_ERR;
			g_codeTrace3 = GPC_CODE_TRACE_GPC_LEN_ERR;
			break;
		}

		//3.Check block data format correctness
		bPcb = g_abPrologue[GPC_BLOCK_PCB_OFFSET];
		bBlockType = bPcb>>6;
		
		if(bBlockType==GPC_R_BLOCK)
		{
			//When the data is an R block, check the data format
			if( ((bPcb&0x2C)!=0) || ((bPcb&0x03)==0x03) )
			{
				g_sErrCode = SW_GPC_PCB_ERR;
				g_codeTrace3 = GPC_CODE_TRACE_GPC_PCB_ERR;
				break;
			}
			if(sInfoLen!=0)
			{
				g_sErrCode = SW_GPC_LEN_ERR;
				g_codeTrace3 = GPC_CODE_TRACE_GPC_LEN_ERR2;
				break;
			}
		}
		
		else if(bBlockType==GPC_S_BLOCK)
		{
			//When the data is S block, check the data format
			if((bPcb&0x10) != 0)
			{
				g_sErrCode =SW_GPC_PCB_ERR;
				g_codeTrace3 = GPC_CODE_TRACE_GPC_PCB_ERR2;
				break;
			}
			
			if(((bPcb&0x03) == 1)||((bPcb&0x03) == 3))
			{
				if((sInfoLen != 1)&&(sInfoLen != 2))
				{

					g_sErrCode = SW_GPC_LEN_ERR;
					g_codeTrace3 = GPC_CODE_TRACE_GPC_LEN_ERR3;
					break;
				}
			}
		}
		else
		{
			//When the data is an I block, check the data format
			if((bPcb&0x1F)!=0)
			{
				g_codeTrace3 = GPC_CODE_TRACE_GPC_PCB_ERR3;
				g_sErrCode =SW_GPC_PCB_ERR;
				break;
			}
		}

		//4.Check if block data CRC is correct
		sCrc = CRC16(CRC_B, sRecvBlockLen-GPC_BLOCK_EPILOGUE_FIELD_SIZE, abBlockBuf_cb, (uint8_t*)0); 	//4 
		if((abBlockBuf_cb[sRecvBlockLen-GPC_BLOCK_EPILOGUE_FIELD_SIZE+1]!=(sCrc&0xff))||
		    (abBlockBuf_cb[sRecvBlockLen-GPC_BLOCK_EPILOGUE_FIELD_SIZE]!=sCrc>>8))
		{
			g_codeTrace3 = GPC_CODE_TRACE_GPC_CRC_ERR;
			g_sErrCode =SW_GPC_CRC_ERR;
			break;
		} 
		
		if(sInfoLen > 0)
		{
			memcpy(outbuf, abBlockBuf_cb+GPC_BLOCK_PROLOGUE_FIELD_SIZE, sInfoLen);
		}
		*outbuf_len = sInfoLen;

		bRet = OK;
		break;
	}while(1);

	
	return bRet;
}

void gpc_handle_sbolck(uint8_t block_type, uint16_t block_info)
{
	switch(block_type)
	{
		case GPC_IFS_REQUEST:
			g_sIfsc=block_info;
			break;
		case GPC_IFS_RESPONSE:
			g_sIfsd=block_info;
			break;
		case GPC_RESYNCH_RESPONSE:
			g_sIfsd=GPC_IFSD_DEFAULT;
			g_sIfsc=GPC_IFSC_DEFAULT;
			break;
		case GPC_WTX_REQUEST:
			g_bWtx=block_info & 0xFF;
			break;
	
		case GPC_ABORT_REQUEST:

			break;

		case GPC_ABORT_RESPONSE:

			break;
		default:
			break;
	}


}


uint8_t gpc_handle_cip_bolck(uint8_t *cip_buf, uint16_t *cip_len)
{
	uint8_t bRet = FAIL;
	uint8_t bOff = 0;
	uint8_t bLen = 0;

	*cip_len = 0;

	do
	{
		//1.Get Protocol Version
		g_bPver = cip_buf[bOff];
		bOff++;

		//2.Get Issuer Identification Nummber
		bLen = cip_buf[bOff];
		if((bLen !=0x03)&&(bLen !=0x04))
		{
			break;
		}
		bOff++;
		
		memcpy(g_abIin, cip_buf+bOff, bLen);
		bOff += bLen;

		//3.Get Physical Layer ID
		g_bPlid = cip_buf[bOff];
		bOff++;

		//4.Get Physical Layer Parameters
		bLen = cip_buf[bOff];
		if((bLen!=GPC_BLOCK_CIP_SPI_PARAM_SIZE)&&(bLen!=GPC_BLOCK_CIP_I2C_PARAM_SIZE))
		{
			break;
		}
		bOff++;

		if(g_bPlid == 0x01)  //for SPI Physical Layer
		{
			//5.Configuration  RFU
			bOff++;

			//6.Get Power Wake-Up Time(in ms)
			g_bGpcPwt = cip_buf[bOff];
			bOff++;

			//7.Get Maximum Clock Frequency(in KHz)
			g_sGpcMcf = ((uint16_t)cip_buf[bOff]<<8) + cip_buf[bOff+1];
			bOff+=2;

			//8.Get Power Saving Timeput(in ms)
			g_bGpcPst = cip_buf[bOff];
			bOff++;

			//9.Get Minimum Polling Time(multiple of 100us)
			//g_bGpcMpot = cip_buf[bOff];
			bOff++;

			//10.Get Secure Element Guard Time(in us)
			//g_sGpcSegt = ((uint16_t)cip_buf[bOff]<<8) + cip_buf[bOff+1];
			bOff+=2;

			//11.Get Maximum SE Access Length(in bytes)
			//g_sGpcSeal = ((uint16_t)cip_buf[bOff]<<8) + cip_buf[bOff+1];
			bOff+=2;

			//12.Get Wake-Up Time(in us)
			//g_sGpcWut = ((uint16_t)cip_buf[bOff]<<8) + cip_buf[bOff+1];
			bOff+=2;
	
		}
		else if(g_bPlid == 0x02)  //for I2C Physical Layer
		{

		}
		else
		{
			break;
		}

		//13.Get Data Link Layer Parameters
		bLen = cip_buf[bOff];
		if(bLen !=0x04)
		{

			break;
		}
		bOff+=1;

		//Get Block Waiting Time(in ms)
		g_sBwt = ((uint16_t)cip_buf[bOff]<<8) + cip_buf[bOff+1];
		bOff+=2;

		//Get Maximum Information Field Size of the SE(in bytes)
		g_sIfsc = ((uint16_t)cip_buf[bOff]<<8) + cip_buf[bOff+1];
		bOff+=2;

		//14.Get Historical Bytes and Length
		g_bHistBytesLen = cip_buf[bOff];
		if(g_bHistBytesLen > 32)
		{

			break;
		}
		bOff+=1;

		memcpy(g_abHistBytes, cip_buf+bOff, g_bHistBytesLen);
		bOff += g_bHistBytesLen;

		*cip_len = bOff;
		bRet = OK;
	
	}while(0);

	return bRet;
}


//Block块处理总入口函数
static uint8_t gpc_block_handler(uint8_t *outbuf, uint16_t *outbuf_len)
{
	uint8_t bRet = GPC_TRANS_OK;
	uint8_t bPcb = 0;
	uint8_t bWtx = 0;
	uint8_t bBlockType = 0;
	uint16_t sIfs = 0;

	do
	{
		wdg_handler(FEED_DOG_MODE_TIME);            //定时喂狗

		//add by dwq20220517
		if(timerglb_over())
		{
			bRet = GPC_TRANS_LONG_TIMEROUT;
			g_codeTrace2 = GPC_CODE_TRACE_BLCOK_LONG_TIMEROUT;
			break;
		}

		//1.Receive block data, check whether the block data format is correct, if there is information field data, output the information field data
		if(gpc_receive_check_block(outbuf, outbuf_len))
		{
			if(g_sErrCode ==SW_SE_TIMEOUT)
			{
				#if 1
				bRet = GPC_TRANS_TIMEROUT;
				g_codeTrace2 = GPC_CODE_TRACE_BLCOK_TRANS_TIMEROUT;
				break;
				#else
				if(g_bRetryNum>=GPC_BLOCK_ERROR_HANDLING_MAX_NUM)
				{
					bRet = GPC_TRANS_TIMEROUT;
					break;
				}
				#endif
			}

			if(g_bRetryNum>=GPC_BLOCK_ERROR_HANDLING_MAX_NUM)
			{
				g_sErrCode = SW_GPC_COMM_ERR;  
				g_codeTrace2 = GPC_CODE_TRACE_BLCOK_COMM_ERR;
				bRet = GPC_TRANS_COMM_ERR;
				break;
			}
			
			//send R block to inform error, then turn to receive
			if(g_sErrCode ==SW_GPC_CRC_ERR)
			{
				g_codeTrace2 = GPC_CODE_TRACE_BLCOK_CRC_ERR;
				gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_CRC_ERR);
			}
			else
			{
				g_codeTrace2 = GPC_CODE_TRACE_BLCOK_OTHER_ERR;
				gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);
			}
			gpc_timer_start();  //重新计时，开始接收Block
			g_bRetryNum++;
			continue;
		}
		
		//2.Check whether it is an S block, if so, deal with it accordingly
		bPcb = g_abPrologue[GPC_BLOCK_PCB_OFFSET];
		bBlockType = bPcb>>6;
		
		if(bBlockType==GPC_S_BLOCK)
		{
			//when receive S request,send S response, then turn to receive
			//when receive S response,return back to up level to handle
			//when receive  nonsense Sblock,send  R block to inform error, then turn to receive
			if(bPcb==GPC_WTX_REQUEST)
			{
				bWtx = outbuf[0];
				BoardSleepms(5);
				gpc_send_sbolck(GPC_WTX_RESPONSE,(uint16_t)bWtx);
				gpc_handle_sbolck(GPC_WTX_REQUEST,(uint16_t)bWtx);
				gpc_timer_start();  //重新计时

				//user_appcallback();			//user can do something here, within 200ms

				//return GPC_TRANS_WTX;
				continue;
			}

			else if(bPcb==GPC_IFS_REQUEST)
			{
				sIfs = (uint16_t)(outbuf[0]<<8)+outbuf[1];
				BoardSleepms(5);
				gpc_send_sbolck(GPC_IFS_RESPONSE,sIfs);
				gpc_handle_sbolck(GPC_IFS_REQUEST,sIfs);
				gpc_timer_start();  //重新计时
				continue;
			}
			else if( (bPcb==GPC_RESYNCH_RESPONSE) || (bPcb==GPC_CIP_RESPONSE) || (bPcb==GPC_IFS_RESPONSE) ||(bPcb==GPC_ABORT_RESPONSE) || (bPcb==GPC_SWR_RESPONSE) || (bPcb==GPC_RELEASE_RESPONSE) )
			{
				g_codeTrace2 = bPcb;
				break;
			}
			else				
			{
				gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);// modify4
				gpc_timer_start();  //重新计时
				g_bRetryNum++;
				continue;
			}
		}
		
		else
		{
			//when receive I or R,return back to up level to handle
			break;
		}
	}while(1);

	return bRet;
}

static uint8_t gpc_receive_iblock(uint8_t *outbuf , uint16_t *outbuf_len)	
{
	uint8_t bStatus=GPC_TRANS_OK;
	uint8_t bBlockType = 0;
	uint8_t bPcb = 0;
	uint8_t bNr = 0;

	do
	{
		//add by dwq20220610
		if(timerglb_over())
		{
			g_sErrCode = SW_SE_GLB_TIMEOUT;
			g_codeTrace = GPC_CODE_TRACE_SEND_TIMEROUT;
			break;
		}

		bStatus=gpc_block_handler(outbuf,outbuf_len);
		if(bStatus != GPC_TRANS_OK)
		{
			g_codeTrace = GPC_CODE_TRACE_SEND_LONG_HANDLER;
			break;
		}

		bPcb = g_abPrologue[GPC_BLOCK_PCB_OFFSET];
		bBlockType = bPcb>>6;

		if(g_bRetryNum>=GPC_BLOCK_ERROR_HANDLING_MAX_NUM)
		{
			g_sErrCode = SW_GPC_COMM_ERR;
			g_codeTrace = GPC_CODE_TRACE_SEND_TRANS_COMM_ERR;
			bStatus = GPC_TRANS_COMM_ERR;
			break;
		}
		
		if(bBlockType==GPC_S_BLOCK)
		{	
			//received not likely S block
			gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);// modify4
			g_codeTrace = GPC_CODE_TRACE_SEND_TRANS_OTHER_ERR;
			g_bRetryNum++;
			continue;
		}
		else if(bBlockType==GPC_R_BLOCK)
		{
			//received R block
			bNr=(bPcb&0x10)?1:0;
			if(bNr==g_bSendSeqNum)
			{
				gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);// modify4
				g_codeTrace = GPC_CODE_TRACE_SEND_TRANS_OTHER_ERR2;
				g_bRetryNum++;
				continue;
			}
			else
			{
				bStatus=GPC_TRANS_RETRY;
				g_codeTrace = GPC_CODE_TRACE_SEND_TRANS_RETRY;
				break;
			}			
		}
		else
		{
			//received I block
			bNr=(bPcb&0x40)?1:0;			
			if(bNr!=g_bRecvSeqNum)
			{//received overlap I block which is not needed
				gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);// modify4
				g_codeTrace = GPC_CODE_TRACE_SEND_TRANS_OTHER_ERR3;
				g_bRetryNum++;
				continue;
			}

			if(bPcb&0x20)
			{
				//received a chaining I block,chain not finished
				bStatus=GPC_TRANS_MOREDATA;
				g_codeTrace = GPC_CODE_TRACE_SEND_TRANS_MOREDATA;
				break;
			}
			else
			{
				//received the tail I block of chain,chain finished
				bStatus=GPC_TRANS_OK;
				break;
			}
		}
		
	}while(1);//end while(1)
	
	g_bRetryNum = 0;
	return bStatus;
		
}

static uint8_t gpc_receive_rblock(uint16_t seq_num)
{
	uint8_t bStatus=GPC_TRANS_OK;
	uint8_t bBlockType = 0;
	uint8_t bPcb = 0;
	uint8_t bNr = 0;
	uint8_t abTmp[1];
	uint16_t sTmpLen = 0;
	
	do
	{
		//1.Receive block data, check whether the block data format is correct接收【I,R,S】block
		bStatus=gpc_block_handler(abTmp,&sTmpLen);
		if(bStatus != GPC_TRANS_OK)
		{
			break;
		}

		bPcb = g_abPrologue[GPC_BLOCK_PCB_OFFSET];
		bBlockType = bPcb>>6;
		
		if(bBlockType!=GPC_R_BLOCK)
		{
			gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);// modify4
			continue;
		}
		else
		{
			bNr=(bPcb&0x10)?1:0;
			if(bNr!=seq_num)
			{
				bStatus=GPC_TRANS_RETRY;
				break;
			}
			else
			{
				bStatus=GPC_TRANS_OK;
				break;
			}
		}
	}while(1); //end while(1)
	
	return bStatus;
}

static uint8_t gpc_receive_sblock(uint8_t block_type, uint16_t block_info)
{
	uint8_t bStatus=GPC_TRANS_OK;
	uint8_t bBlockType = 0;
	uint8_t bPcb = 0;
	uint8_t abTmp[GPC_BLOCK_CIP_INF_MAX_SIZE+6];    //64+6
	uint16_t sTmpLen = 0;
	uint16_t sCipLen = 0;
	
	do
	{
		//1.Receive block data, check whether the block data format is correct
		bStatus=gpc_block_handler(abTmp,&sTmpLen);
		if(bStatus != GPC_TRANS_OK)
		{
			break;
		}

		bPcb = g_abPrologue[GPC_BLOCK_PCB_OFFSET];
		
		if(bPcb!=block_type)
		{
			bStatus=GPC_TRANS_RETRY;
			break;
		}

		if(block_type == GPC_CIP_RESPONSE)
		{
			if(gpc_handle_cip_bolck(abTmp, &sCipLen))
			{
				bStatus=GPC_TRANS_CIP_PARAM_ERR;
				break;
			}
		}
		else
		{
			gpc_handle_sbolck(block_type,block_info);
		}		

	}while(0); //end while(1)

	return bStatus;
}


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

//拉低拉高RESET复位后执行变量清零
int32_t SE_Connect_ResetVar(void)
{
	g_bSendSeqNum=0;
	g_bRecvSeqNum=0;
	g_bRetryNum=0;
	g_bTransRetryNum=0;
	return OK;
}

uint8_t gpc_t1_receive_appdata(uint8_t *appbuf, uint16_t *appbuf_len)
{
	uint8_t bStatus=0;
	uint16_t sRecvInfLen=0;
	uint16_t sTotalLen=0;
	uint8_t bRet = FAIL;

	//add by dwq 20220517
	timerglb_start();

	do
	{
		//add by dwq20220517
		if(timerglb_over())
		{
			g_sErrCode = SW_SE_GLB_TIMEOUT;
			break;
		}

		//接收RBlock即接收应用响应Block
		bStatus=gpc_receive_iblock(appbuf,&sRecvInfLen);
		if(bStatus==GPC_TRANS_OK)
		{
			//received the last chained I block
			g_bRecvSeqNum=g_bRecvSeqNum?0:1;
			sTotalLen+=sRecvInfLen;
			bRet = OK;
			break;
		}
		else if(bStatus==GPC_TRANS_LONG_TIMEROUT)
		{
			//add by dwq 20220517
			g_sErrCode = SW_SE_GLB_LONGTIMEOUT;
			break;
		}
		else if((bStatus==GPC_TRANS_TIMEROUT)||(bStatus==GPC_TRANS_COMM_ERR)) 
		{
			SE_Connect_ResetVar();//add by dwq 20220804
			g_sErrCode = SW_SE_TIMEOUT;
			break;
		}
		else if(bStatus==GPC_TRANS_MOREDATA)
		{
			//received chaining I block,chain not finished
			g_bRecvSeqNum=g_bRecvSeqNum?0:1;
			gpc_send_rblock(GPC_BLOCK_OK, GPC_R_BLOCK_OK);// modify4
			sTotalLen+=sRecvInfLen;
			appbuf+=sRecvInfLen;
			continue;
		}
		else if(bStatus==GPC_TRANS_ABORT) 
		{
			//received ABORT request S block
			appbuf-=sTotalLen;
			sTotalLen=0;
			continue;
		}
		//else if(receivedStatus==GPC_TRANS_RESYNCH)
		//{//received RESYNCH request S block
		//	AppDataAddr-=length;
		//	*pAppDataLen-=length;
		//	continue;
		//}
		//else if( (bStatus==GPC_TRANS_RETRY) && (sTotalLen==0) )  //2021-03-09 remove
		else if(bStatus==GPC_TRANS_RETRY)   //2021-03-09  add
		{
			if(g_bTransRetryNum>=GPC_BLOCK_TRANS_RETRY_MAX_NUM)
			{
				g_sErrCode = SW_GPC_COMM_ERR;  
				bStatus = GPC_TRANS_COMM_ERR;
				break;
			}
			
			//last APDU response sent failed
			g_bSendSeqNum^=1;
#ifdef EMPTY_I_BLOCK_ALLOWED
			gpc_send_iblock(NULL,0,GPC_BLOCK_LAST);
#else
			//gpc_send_iblock(g_bLastSentAddress,g_LastSentLen,GPC_BLOCK_LAST); //2021-03-09  remove
			gpc_send_iblock(g_bLastSentAddress,g_LastSentLen,g_bMoreDataFlag);   //2021-03-09  add
#endif
			g_bSendSeqNum^=1;
			g_bTransRetryNum++;
			continue;
		}

		else
		{
			//received nonsense R block
			g_codeTrace4 = GPC_CODE_TRACE_SEND_TRANS_NONSENSE;
			gpc_send_rblock(GPC_BLOCK_ERR, GPC_R_BLOCK_OTHER_ERR);
			continue;
		}
	}while(1); //end while(1)

	*appbuf_len = sTotalLen;
	g_bTransRetryNum = 0;
	return bRet;
}


uint8_t gpc_t1_exchange(uint8_t block_type, uint16_t block_info)
{
	uint8_t bStatus=0;

	do
	{
		gpc_send_sbolck(block_type,block_info);
		if(block_type == GPC_IFS_REQUEST)
		{
			bStatus=gpc_receive_sblock(GPC_IFS_RESPONSE,block_info);
			if(bStatus==GPC_TRANS_OK)
			{
				return OK;
			}
		}

		else if(block_type == GPC_RESYNCH_REQUEST)
		{
			bStatus=gpc_receive_sblock(GPC_RESYNCH_RESPONSE,0);
			if(bStatus==GPC_TRANS_OK)
			{
				return OK;
			}
		}

		else if(block_type == GPC_ABORT_REQUEST)
		{
			bStatus=gpc_receive_sblock(GPC_ABORT_RESPONSE,0);
			if(bStatus==GPC_TRANS_OK)
			{
				return OK;
			}
		}

		else if(block_type == GPC_CIP_REQUEST)
		{
			bStatus=gpc_receive_sblock(GPC_CIP_RESPONSE,0);
			if(bStatus==GPC_TRANS_OK)
			{
				return OK;
			}
		}

		if((bStatus==GPC_TRANS_TIMEROUT)||(bStatus==GPC_TRANS_CIP_PARAM_ERR))
		{
			return FAIL;
		}

	}while(1);
	
}
#endif


int32_t SE_Disconnect(void)
{
    return Status_Success;
}

/***********************************************************************************
* Function: 	SE_Connect
* Input:		cmd:command data
				cmd_len:command data length
* Output:		ack:return ATR data
				ack_len:return ATR data length
* Return:		OK:RATR execute success, SE switch to SPI_SE_ACTIVE;
				FAIL:RATR execute failed
* Description:	
* Date:
* ModifyRecord:
**********************************************************************************/
int32_t SE_Connect(void)
{  
	uint8_t ret=OK;

	SPIResetl();
	BoardSleepms(2);//5ms//1ms
//	CPUdelay(12 * 5000);
	SPIReseth();
//	CPUdelay(12 * 30000);
	BoardSleepms(8);//30ms//> 5ms

	if(g_bSpiCommProtocol == SPI_COMM_PROTOCOL_GPC_PHY)
	{
		g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID; 
	}
	else if(g_bSpiCommProtocol == SPI_COMM_PROTOCOL_GPC_DLL)
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


		#if 0
		//Send CIP request to SE
		if(gpc_t1_exchange(GPC_CIP_REQUEST, 0))
		{
			//All requests fail, returning an ATR value indicating an error
			memcpy(atr, "\x3b\x80\x80\x03\x03", 5);
			*len = 5;
			return ret; 
		}
		#endif
		
		#if 0
		//Send debug command to SE
		cmd_len = 5;
		memcpy(cmd_buf, "\x80\xfe\xff\xff\x00", cmd_len);
		if(SE_CmdExecute(cmd_buf, cmd_len, res_buf, &res_len))
		{
			//All requests fail, returning an ATR value indicating an error
			memcpy(atr, "\x3b\x80\x80\x03\x03", 5);
			*len = 5;
			return ret; 
		}
		#endif
		
		#if 0
		//Send IFS request to SE
		if(gpc_t1_exchange(GPC_IFS_REQUEST, GPC_IFSD_EXPECT))
		{
			//All requests fail, returning an ATR value indicating an error
			memcpy(atr, "\x3b\x80\x80\x03\x03", 5);
			*len = 5;
			return ret; 
		}
		#endif

		//The request is correct, the return indicates the correct ATR value
//		memcpy(atr, "\x3b\x80\x80\x02\x02", 5);
//		*len = 5;
	}

	return ret;  
}


/***********************************************************************************
* Function: 	SE_CmdExecute
* Input:		cmd:command data
				cmd_len:command data length
* Output:		res:response data
				res_len:response data length
* Return:		OK:HED_SPI command executed successfully
				FAIL:HED_SPI command executed failed
* Description:	
* Date:
* ModifyRecord:
**********************************************************************************/
unsigned char g_u8TrackSeBufBase[4] = {0xff, 0xff, 0xff, 0xff};	//add by wangyx
#ifdef IW_DEBUG_PHY
unsigned char g_u8PrintBufBase[500] = {0};
unsigned int g_u8PrintBufBaseOff = 0;
extern uint16_t  g_sErrCodePhy;

void DEBUG_PHY_PRINT(void)
{
	int i;
	for(i = g_u8PrintBufBaseOff; i< 500; i++)
	{
		if((i%20) == 0)printf_("\r\n");
		printf_("%02X", g_u8PrintBufBase[i]);
	}
	for(i = 0; i< g_u8PrintBufBaseOff; i++)
	{
		if((i%20) == 0)printf_("\r\n");
		printf_("%02X", g_u8PrintBufBase[i]);
	}
	return;
}

#endif
int32_t SE_CmdExecute(uint8_t *cmd, uint16_t cmd_len, uint8_t *ack, uint16_t *ack_len)
{
	int32_t u32ErrRetryMax = 3;		//timeout times, if more than, SE Reset
	static int32_t u32ErrRetryCnt = 0;	//if timeout times more than 10, call SE connect

	//add by dwq 20220517
#ifdef IW_DEBUG_PHY
	if(g_u8PrintBufBaseOff <= 0) g_u8PrintBufBaseOff = 500;
	g_u8PrintBufBaseOff-=20;
	memset(g_u8PrintBufBase + g_u8PrintBufBaseOff, 0, 20);
	memcpy(g_u8PrintBufBase + g_u8PrintBufBaseOff, cmd, (cmd_len > 9?9:cmd_len));
	g_sErrCodePhy = GPC_PHY_ERROR_NULL;
	g_sErrCode = SW_OK;
	g_codeTrace = GPC_CODE_TRACE_INIT;
	g_codeTrace2 = GPC_CODE_TRACE_INIT;
	g_codeTrace3 = GPC_CODE_TRACE_INIT;
	g_codeTrace4 = GPC_CODE_TRACE_INIT;
#endif

	if(SPI_COMM_PROTOCOL_GPC_PHY == g_bSpiCommProtocol)//not use
	{
//		if(g_GpcPhyInter.BusSend(cmd, cmd_len))
		if(Gpc_Phy_Spi_Send(cmd, cmd_len))
		{
			g_sErrCode = SW_GPC_COMM_ERR;   
			return FAIL;
		}

		if(g_bGpcMpot == 0x00)
		{
			//Set the start time of receive data timeout
//			gpc_timer_start();
			do
			{
//				if(timer2_over(SE_RECEIVE_TIMEOUT))  
//				{	
//					g_sErrCode = SW_SE_TIMEOUT;  
//					return FAIL;
					//break;  //Temporary debugging, when the IRQ cannot be queried all the time, jump out to read the data directly
//				}
				
				//Data that SE is not ready to send
				if(GPC_PHY_IRQ_TYPE_INVALID==g_bGpcIrqOk )
				{
					continue;
				}
				//g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;
				break;

			}while(1);
		} 
//		if(g_GpcPhyInter.BusRecv(ack, ack_len))
        if(Gpc_Phy_Spi_Recv(ack, ack_len))
		{
			g_sErrCode = SW_GPC_COMM_ERR;   
			return FAIL;
		}
	}

	else if(SPI_COMM_PROTOCOL_GPC_DLL == g_bSpiCommProtocol)
	{
//		if(gpc_t1_send_appdata(cmd, cmd_len))
//		{
//			//g_sErrCode = SW_GPC_COMM_ERR;
//			return FAIL;
//		}
//
//		if(gpc_t1_receive_appdata(ack, ack_len))
//		{
//			//g_sErrCode = SW_GPC_COMM_ERR;
//			return FAIL;
//		}

		int32_t ret = gpc_t1_send_appdata(cmd, cmd_len);
		if(!ret)
		{
			ret = gpc_t1_receive_appdata(ack, ack_len);
		}

#if 0
		//add by wangyx, 20221114 begin
		if(0 == ack_len)
		{
			if(u32ErrRetryCnt >= u32ErrRetryMax)
			{
				if(u32ErrRetryCnt < u32ErrRetryMax*3)		//SE connect 3 times continuous at most
				{
					SE_Connect();
					Iwall_SEInit();
				}
				else
					u32ErrRetryCnt = u32ErrRetryMax*3;
			}
			u32ErrRetryCnt++;
		}
		else
			u32ErrRetryCnt = 0;
		//add by wangyx, 20221114 end
#endif

		if( !ret && *ack_len >= 2 && *ack_len <= 258 && ((0x90 != ack[(int)(*ack_len -2)])||(0x00 != ack[(int)(*ack_len -1)])) )
		{
			g_u8TrackSeBufBase[0] = cmd[1];		//add by wangyx
			g_u8TrackSeBufBase[1] = cmd[4];
			g_u8TrackSeBufBase[2] = ack[(int)(*ack_len -2)];
			g_u8TrackSeBufBase[3] = ack[(int)(*ack_len -1)];
		}

#ifdef IW_DEBUG_PHY

		g_u8PrintBufBase[g_u8PrintBufBaseOff + 9] = g_codeTrace; //代码跟踪点
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 10] = g_codeTrace2; //代码跟踪点
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 11] = g_codeTrace3; //代码跟踪点
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 12] = g_codeTrace4; //代码跟踪点
		if(!ret && *ack_len >= 2 && *ack_len <= 258)//error
		{
			g_u8PrintBufBase[g_u8PrintBufBaseOff + 13] = ack[(int)(*ack_len -2)];
			g_u8PrintBufBase[g_u8PrintBufBaseOff + 14] = ack[(int)(*ack_len -1)];
		}
		else
		{
			g_u8PrintBufBase[g_u8PrintBufBaseOff + 13] = (uint8_t)0;
			g_u8PrintBufBase[g_u8PrintBufBaseOff + 14] = (uint8_t)0;
		}
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 15] = (uint8_t)ret;
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 16] = (uint8_t)(g_sErrCode>>8);
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 17] = (uint8_t)(g_sErrCode&0xFF);
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 18] = (uint8_t)(g_sErrCodePhy>>8);
		g_u8PrintBufBase[g_u8PrintBufBaseOff + 19] = (uint8_t)(g_sErrCodePhy&0xFF);

		if(ret)
		{
	//		DEBUG_PHY_PRINT();
		}
#endif
		return ret;
	}
	
	return OK;
}


uint8_t gpc_reset_se(uint8_t *atr, uint16_t *len)
{
	SE_Board_init();
	return 0;
}
