#include "cy_project.h"
#include "cy_device_headers.h"

#include "canParseSdk.h"

const uint8_t m_bitMaskOfByte[8] = {0x01,0x03,0x07,0x0F,0x1F,0x3F,0x7F,0xFF};

static int ReadCanSignalFdMotoMsb(uint16_t startBit,uint16_t bitLength,const uint8_t *dataBuffer,uint32_t *pDataOut) 
{
	uint16_t byteNum;
	uint16_t bitOffsetOnByte;
	uint16_t bitLenthLeft;
	uint32_t tmp;
	byteNum = startBit/8;
	if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
	{
	    return -1;
	}
	bitOffsetOnByte = startBit-(byteNum*8);
	tmp = dataBuffer[byteNum]&m_bitMaskOfByte[bitOffsetOnByte];
	bitLenthLeft = bitLength;
	if((bitOffsetOnByte+1)<bitLenthLeft)
	{
		bitLenthLeft -= (bitOffsetOnByte+1);
		byteNum++;
		while(bitLenthLeft>=8)
		{
			tmp = tmp<<8;
			tmp |= dataBuffer[byteNum];
			byteNum++;
			if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
			{
				return -1;
			}
			bitLenthLeft -= 8;
		}
		if(bitLenthLeft!=0)
		{
			tmp = tmp<<bitLenthLeft;
			tmp |= (dataBuffer[byteNum]>>(8-bitLenthLeft));
		}
	}
	else
	{
		tmp = tmp>>(bitOffsetOnByte+1-bitLenthLeft);
	}
	*pDataOut = tmp;
	return 0;
}

static int ReadCanSignalFdMotoMlb(uint16_t startBit,uint16_t bitLength,const uint8_t *dataBuffer,uint32_t *pDataOut) 
{
	uint16_t byteNum;
	uint16_t bitOffsetOnByte;
	uint16_t bitLenthLeft;
	uint16_t bitOffet;
	uint32_t tmp;
	uint8_t outOfRangeError;
	byteNum = startBit/8;
	if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
	{
		return -1;
	}
	bitOffsetOnByte = startBit-(byteNum*8);
	bitLenthLeft = bitLength;
	outOfRangeError = 0;
	if(bitLenthLeft>(8-bitOffsetOnByte))
	{
		tmp = (dataBuffer[byteNum]>>bitOffsetOnByte)&m_bitMaskOfByte[7-bitOffsetOnByte];
		bitLenthLeft -= (8-bitOffsetOnByte);
		bitOffet = (8-bitOffsetOnByte);
		if(byteNum>0)
		{			
			while(bitLenthLeft>=8)
			{
				if(byteNum==0)
				{
					outOfRangeError = 1;
					break;
				}
				byteNum--;
				tmp |= dataBuffer[byteNum]<<bitOffet;
				bitOffet += 8;
				bitLenthLeft -= 8;
			}
			if(outOfRangeError==0)
			{	
				if(bitLenthLeft!=0)
				{
					if(byteNum>0)
					{
						byteNum--;
						tmp |= ((dataBuffer[byteNum]&m_bitMaskOfByte[bitLenthLeft-1])<<bitOffet);
					}
					else
					{
						outOfRangeError = 1;
					}
				}
			}
		}
	}
	else
	{
		if(bitLenthLeft>0)
		{
			tmp = (dataBuffer[byteNum]>>bitOffsetOnByte)&m_bitMaskOfByte[bitLenthLeft-1];
		}		
	}
	if(outOfRangeError)
	{
		return -1;
	}
	*pDataOut = tmp;
	return 0;
}

static int ReadCanSignalFdIntel(uint16_t startBit,uint16_t bitLength,const uint8_t *dataBuffer,uint32_t *pDataOut) 
{
	uint16_t byteNum;
	uint16_t bitOffsetOnByte;
	uint16_t bitLenthLeft;
	uint16_t bitOffet;
	uint32_t tmp;
	//uint8_t outOfRangeError;
	byteNum = startBit/8;
	if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
	{
		return -1;
	}
	bitOffsetOnByte = startBit-(byteNum*8);	
	bitLenthLeft = bitLength;
	if(bitLenthLeft>(8-bitOffsetOnByte))
	{
		tmp = (dataBuffer[byteNum]>>bitOffsetOnByte)&m_bitMaskOfByte[7-bitOffsetOnByte];
		bitLenthLeft -= (8-bitOffsetOnByte);
		bitOffet = (8-bitOffsetOnByte);
		
		while(bitLenthLeft>=8)
		{
			byteNum++;
			if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
			{
				return -1;
			}
			tmp |= dataBuffer[byteNum]<<bitOffet;
			bitOffet += 8;
			bitLenthLeft -= 8;
		}	
		if(bitLenthLeft!=0)
		{
			byteNum++;
			tmp |= ((dataBuffer[byteNum]&m_bitMaskOfByte[bitLenthLeft-1])<<bitOffet);
		}		
	}
	else
	{
		if(bitLenthLeft>0)
		{
			tmp = (dataBuffer[byteNum]>>bitOffsetOnByte)&m_bitMaskOfByte[bitLenthLeft-1];
		}		
	}
	*pDataOut = tmp;
	return 0;
}

int16_t CanSignalIsValid(uint8_t CanDataFormat,const CanParseSignal_t* signal)
{
    CanSignalMsgBuffer_t *pCanBuffer;

    pCanBuffer = signal->msgBufferPointer;
    if(pCanBuffer[signal->canBufferIdIndex].cycleTimeOutFlag == 1)
    {
        return -1;

    }
    return 0;
}

int16_t ReadCanSignal(uint8_t CanDataFormat,const CanParseSignal_t* signal,double* pValueOut)
{
      uint32_t tmp;
      CanSignalMsgBuffer_t *pCanBuffer;
      *pValueOut = 0x00;

      pCanBuffer = signal->msgBufferPointer;
      if(pCanBuffer[signal->canBufferIdIndex].cycleTimeOutFlag == 1)
      {  
          if(signal->useInvalidFlag == 1)
          {
              *pValueOut = signal->InvalidData;
              //*pValueOut = 0xFFFFFFFF;
              return -1; 
          }           
      }

      switch(CanDataFormat)
      {		
          case VEHICLE_CAN_UNPACK_FORMAT_INTEL:
                ReadCanSignalFdIntel(signal->startBit,signal->bitLength,pCanBuffer[signal->canBufferIdIndex].canData,&tmp);
                *pValueOut = tmp;
                break;
          case VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB:
                ReadCanSignalFdMotoMlb(signal->startBit,signal->bitLength,pCanBuffer[signal->canBufferIdIndex].canData,&tmp);
                *pValueOut = tmp;
                break;
          case VEHICLE_CAN_UNPACK_FORMAT_MOTO_MSB:
                ReadCanSignalFdMotoMsb(signal->startBit,signal->bitLength,pCanBuffer[signal->canBufferIdIndex].canData,&tmp);
                *pValueOut = tmp;
                break;
          default:
                return -2;////invalid format
      }

      float ConvertedValue;
      //RTOS_HalDisableScheduler();
      if(0==signal->resulotion)//error
      {
          *pValueOut = signal->InvalidData;
          return -4;
      }
      ConvertedValue = ((float)*pValueOut*signal->resulotion) + signal->offset;
      *pValueOut = ConvertedValue;
      //RTOS_HalEnableScheduler();
      return 0;
}

int16_t ReadCanSignalDiagData(uint8_t CanDataFormat,const CanParseSignal_t* signal,uint32_t* pValueOut)
{
      uint32_t tmp;
      CanSignalMsgBuffer_t *pCanBuffer;
      *pValueOut = 0x00;

      pCanBuffer = signal->msgBufferPointer;
      if(pCanBuffer[signal->canBufferIdIndex].cycleTimeOutFlag == 1)
      {  
          if(signal->useInvalidFlag == 1)
          {
              *pValueOut = signal->InvalidData;
              //*pValueOut = 0xFFFFFFFF;
              return -1; 
          }           
      }

      switch(CanDataFormat)
      {		
          case VEHICLE_CAN_UNPACK_FORMAT_INTEL:
                ReadCanSignalFdIntel(signal->startBit,signal->bitLength,pCanBuffer[signal->canBufferIdIndex].canData,&tmp);
                *pValueOut = tmp;
                break;
          case VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB:
                ReadCanSignalFdMotoMlb(signal->startBit,signal->bitLength,pCanBuffer[signal->canBufferIdIndex].canData,&tmp);
                *pValueOut = tmp;
                break;
          case VEHICLE_CAN_UNPACK_FORMAT_MOTO_MSB:
                ReadCanSignalFdMotoMsb(signal->startBit,signal->bitLength,pCanBuffer[signal->canBufferIdIndex].canData,&tmp);
                *pValueOut = tmp;
                break;
          default:
                return -2;////invalid format
      }

      return 0;
}

void U32DataToByteArray(uint32_t DataIn,uint8_t ArraySize,uint8_t *pArrayOut)
{
    *pArrayOut = 0;
    int i;
    for(i=0;i<ArraySize;i++)
    {
        pArrayOut[i] = (uint8_t)((DataIn>>(8*(ArraySize-1-i)))&0xFF);
    }
}

static int PackCanSignalToFrameMotoMsb(uint16_t startBit,uint16_t bitLength,uint8_t *dataBuffer,uint32_t valueIn) 
{
    uint16_t byteNum;
    uint16_t bitOffsetOnByte;
    uint16_t bitLenthLeft;
    uint8_t tmp;
    if(bitLength==0)
    {
            return -1;
    }
    byteNum = startBit/8;
    if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
    {
       return -1;
    }
    bitOffsetOnByte = startBit-(byteNum*8);        
    bitLenthLeft = bitLength;
    if((bitOffsetOnByte+1)<=bitLenthLeft)
    {
		tmp = dataBuffer[byteNum]&(~m_bitMaskOfByte[bitOffsetOnByte]);
		tmp |= (uint8_t)((valueIn>>(bitLength-(bitOffsetOnByte+1)))&m_bitMaskOfByte[bitOffsetOnByte]);
		dataBuffer[byteNum] = tmp;
        bitLenthLeft -= (bitOffsetOnByte+1);
        byteNum++;
        while(bitLenthLeft>=8)
        {
        	if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
        	{
        		return -1;
        	}
			bitLenthLeft -= 8;
			tmp = (uint8_t)(valueIn>>(bitLenthLeft)&0xFF);
			dataBuffer[byteNum] = tmp;
            byteNum++;
        }
        if(bitLenthLeft!=0)
        {
			tmp = dataBuffer[byteNum]&(m_bitMaskOfByte[7-bitLenthLeft]);
			tmp |= (uint8_t)((valueIn&m_bitMaskOfByte[bitLenthLeft-1])<<(8-bitLenthLeft));
			dataBuffer[byteNum] = tmp;
        }
    }
    else
    {
		tmp = dataBuffer[byteNum]&((~m_bitMaskOfByte[bitOffsetOnByte])|m_bitMaskOfByte[bitOffsetOnByte-bitLength]);
		tmp |= (uint8_t)((valueIn&m_bitMaskOfByte[bitLength-1])<<(bitOffsetOnByte+1-bitLength));
		dataBuffer[byteNum] = tmp;
    }
    return 0;
}

static int PackCanSignalToFrameMotoMlb(uint16_t startBit,uint16_t bitLength,uint8_t *dataBuffer,uint32_t valueIn) 
{
//    TBOX_PRINT("%d-%d-start = 0x%X-%d\n",startBit,bitLength,dataBuffer[0],valueIn);
	uint16_t byteNum;
	uint16_t bitOffsetOnByte;
	uint16_t bitLenthLeft;
	uint16_t bitOffet;
	uint8_t tmp;
	uint8_t outOfRangeError;
	byteNum = startBit/8;
	if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
	{
	   return -1;
	}
	bitOffsetOnByte = startBit-(byteNum*8);
	bitLenthLeft = bitLength;
	outOfRangeError = 0;
	if(bitLenthLeft>=(8-bitOffsetOnByte))
	{
		if(bitOffsetOnByte==0)
		{
			 dataBuffer[byteNum] = valueIn&0xFF;
		}
		else
		{
			tmp = dataBuffer[byteNum]&m_bitMaskOfByte[bitOffsetOnByte-1];
			dataBuffer[byteNum] = (uint8_t)(tmp|((valueIn&m_bitMaskOfByte[7-bitOffsetOnByte])<<bitOffsetOnByte));
		}
		bitLenthLeft -= (8-bitOffsetOnByte);
		bitOffet = (8-bitOffsetOnByte);
		if(byteNum>0)
		{			
			while(bitLenthLeft>=8)
			{
				if(byteNum==0)
				{
					outOfRangeError = 1;
					break;
				}
				byteNum--;
				dataBuffer[byteNum] = (valueIn>>bitOffet)&0xFF;
				bitOffet += 8;
				bitLenthLeft -= 8;
			}
			if(outOfRangeError==0)
			{	
				if(bitLenthLeft!=0)
				{
					if(byteNum>0)
					{
						byteNum--;
						tmp = dataBuffer[byteNum]&(~m_bitMaskOfByte[bitLenthLeft-1]);
						dataBuffer[byteNum] = tmp|((valueIn>>bitOffet)&m_bitMaskOfByte[bitLenthLeft-1]);
					}
					else
					{
						outOfRangeError = 1;
					}
				}
			}
		}
	}
	else
	{
		if(bitLenthLeft==0)
		{
			return -1;
		}
		if(bitOffsetOnByte==0)
		{			 
			tmp = dataBuffer[byteNum]&(~m_bitMaskOfByte[bitLenthLeft-1]);
			dataBuffer[byteNum] = tmp|(valueIn&m_bitMaskOfByte[bitLenthLeft-1]);
		}
		else
		{
			tmp = dataBuffer[byteNum]&((~m_bitMaskOfByte[7-bitOffsetOnByte-bitLenthLeft])|m_bitMaskOfByte[bitOffsetOnByte-1]);
			dataBuffer[byteNum] = (uint8_t)(tmp |((valueIn&m_bitMaskOfByte[bitLenthLeft-1])<<bitOffsetOnByte));
		}
	}
//    TBOX_PRINT("end = 0x%X\n",dataBuffer[0]);
	return 0;
}

static int PackCanSignalToFrameIntel(uint16_t startBit,uint16_t bitLength,uint8_t *dataBuffer,uint32_t valueIn) 
{
	uint16_t byteNum;
	uint16_t bitOffsetOnByte;
	uint16_t bitLenthLeft;
	uint16_t bitOffet;
	uint32_t tmp;
	//uint8_t outOfRangeError;
	byteNum = startBit/8;
	if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
	{
		return -1;
	}
	bitOffsetOnByte = startBit-(byteNum*8);
	bitLenthLeft = bitLength;

	if(bitLenthLeft>=(8-bitOffsetOnByte))
	{	
		if(bitOffsetOnByte==0)
		{
			 dataBuffer[byteNum] = valueIn&0xFF;
		}
		else
		{
			tmp = dataBuffer[byteNum]&m_bitMaskOfByte[bitOffsetOnByte-1];
			dataBuffer[byteNum] = (uint8_t)(tmp|((valueIn&m_bitMaskOfByte[7-bitOffsetOnByte])<<bitOffsetOnByte));
		}
		bitLenthLeft -= (8-bitOffsetOnByte);
		bitOffet = (8-bitOffsetOnByte);
		
		while(bitLenthLeft>=8)
		{
			byteNum++;
			if(byteNum >= CAN_V_FD_MAX_DATA_SIZE)
			{
				return -1;
			}
			dataBuffer[byteNum] = (valueIn>>bitOffet)&0xFF;
			bitOffet += 8;
			bitLenthLeft -= 8;
		}	
		if(bitLenthLeft!=0)
		{
			byteNum++;
			tmp = dataBuffer[byteNum]&(~m_bitMaskOfByte[bitLenthLeft-1]);
			dataBuffer[byteNum] = tmp|((valueIn>>bitOffet)&m_bitMaskOfByte[bitLenthLeft-1]);
		}		
	}
	else
	{
		if(bitLenthLeft==0)
		{
			return -1;
		}
		if(bitOffsetOnByte==0)
		{			 
			tmp = dataBuffer[byteNum]&(~m_bitMaskOfByte[bitLenthLeft-1]);
			dataBuffer[byteNum] = tmp|(valueIn&m_bitMaskOfByte[bitLenthLeft-1]);
		}
		else
		{
			tmp = dataBuffer[byteNum]&((~m_bitMaskOfByte[7-bitOffsetOnByte-bitLenthLeft])|m_bitMaskOfByte[bitOffsetOnByte-1]);
			dataBuffer[byteNum] = (uint8_t)(tmp |((valueIn&m_bitMaskOfByte[bitLenthLeft-1])<<bitOffsetOnByte));
		}
	}
	return 0;
}

int16_t PackSignalToFrame(uint8_t* pMsgData,uint8_t CanDataFormat,const CanParseSignal_t* signal,double signalValue)
{
    double WriteValue = 0;
    uint32_t tmp;

    WriteValue = ((signalValue - signal->offset) / signal->resulotion);
    tmp = (uint32_t)WriteValue;
    switch(CanDataFormat)
    {		
            case VEHICLE_CAN_UNPACK_FORMAT_INTEL:
                  PackCanSignalToFrameIntel(signal->startBit,signal->bitLength,pMsgData,tmp);
                  break;
            case VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB:
                  PackCanSignalToFrameMotoMlb(signal->startBit,signal->bitLength,pMsgData,tmp);
                  break;
            case VEHICLE_CAN_UNPACK_FORMAT_MOTO_MSB:
                  PackCanSignalToFrameMotoMsb(signal->startBit,signal->bitLength,pMsgData,tmp);             
                  break;
            default:
                  return 1;////invalid format
    }	
	return 0;  
}

