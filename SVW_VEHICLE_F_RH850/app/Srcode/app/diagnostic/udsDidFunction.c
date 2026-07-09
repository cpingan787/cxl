#include "udsDidFunction.h"
#include <string.h>
#include <math.h>
#include "ParameterStoreManageApp.h"

#include "parameterSyncSdk.h"
#include "powerManageSdk.h"

#include "batterySdk.h"
#include "timeSyncSdk.h"
//#include "mcu_cpu_sync/mcu_control_cpu_interface.h
#include "peripheralHal.h"
#include "flashHal.h"
#include "projectConfigure.h"
#include "stateSyncSdk.h"
#include "mpuPowerSyncSdk.h"
#include "secocSdk.h"
#include "remoteDiagnosticSdk.h"
#include "eolTestSyncWithCpu.h"
#include "mcuMpuSyncTask.h"

//static uint8_t g_didF193[6] = {"V1.0.0"};//硬件版本
static uint8_t g_didF1A2[19] = {"P01       -V6.02.00"};//CAN矩阵
static uint8_t g_didF189[15] = {"S026A09XKM14002"};//软件版本
static uint8_t g_didF1B3[9] = {"CDONO-77E"};//节点地址
static uint8_t g_didF1B4[31] = {"RB_AUTOCDONO-77ES026A09XKM14-FW"};//CompID
static uint8_t g_didF1B6[8] = {"00000000"};//工具版本
static uint8_t g_didF1BC[10] = {"P01-230412"};//软件信息
static uint8_t g_didF1BD[10] = {"P01-230301"};//硬件信息
static uint8_t g_didF1C8[5] = {"V0001"};//SecOC版本
//static uint8_t g_didF187[13] = {"7925122XKM14A"};//零部件编号
static uint8_t g_didF18A[5] = {"CDONO"};//供应商ID
static uint8_t g_didF1C0[15] = {"FFFFFFFFFFFFFFF"};//校准软件版本
//static uint8_t g_didF1C1[15] = {"FFFFFFFFFFFFFFF"};//
static uint8_t g_didF1B5[10] = {"          "};//
static uint8_t g_didF1B9[31] = {"RB_AUTOCDONO-77ES026C09XKM14-MW"};//

static uint8_t g_vehicleTypeConfigure[12];
//static uint8_t m_ApplicationStop = 0x00;
static uint8_t g_31ReportToDcanFlag = 0;
static uint8_t g_31ReportToDcanValue = 0;
static uint8_t g_2EReportToDcanVaule = 0;
const char g_ucuType[] = "SGMW-UCU-05";
static uint8_t g_vin[17];
static uint8_t g_eskKeyValid = 0;


static void CheckVinWriteStatus(void);

static uint8_t HexToChar(uint8_t hexValue)
{
  uint8_t value;
  uint8_t result;
  value = hexValue&0x0F;
  if(value<10)
  {
    result = value+'0';
  }
  else
  {
    result = (value-10)+'a';
  }
  return result;
}

/*******************************************************************************
return
0:valid
*******************************************************************************/
static int16_t CheckEskValid(uint8_t *pEsk)
{
  uint16_t i;
  uint8_t validFlag;
  
  validFlag = 0;
  if(0xFF==pEsk[0])
  {
    for(i=0;i<16;i++)
    {
      if(0xFF!=pEsk[i])
      {
        validFlag = 1;
        break;
      }
    }    
    if(0==validFlag)
    {
      return 1;
    }    
  }

  validFlag = 0;
  if(0x00==pEsk[0])
  {
    for(i=0;i<16;i++)
    {
      if(0x00!=pEsk[i])
      {
        validFlag = 1;
        break;
      }
    }    
    if(0==validFlag)
    {
      return 1;
    }    
  }
  return 0;
}

static int16_t HexArrayToCharArray(uint8_t *pHexInput,uint16_t hexLenthIn,uint8_t *pCharOut,uint16_t *pCharLengthOut)
{
  int16_t ret;
  uint16_t i;
  
  ret = 0;
  if(pHexInput==NULL)
  {
    return -1;
  }
  if(hexLenthIn==0)
  {
    return -1;
  }
  if(pCharOut==NULL)
  {
    return -1;
  }
  if(pCharLengthOut==NULL)
  {
    return -1;
  }
  
  for(i=0;i<hexLenthIn;i++)
  {
    pCharOut[i*2] = HexToChar(pHexInput[i]>>4);//H 
    pCharOut[i*2+1] = HexToChar(pHexInput[i]);//L
  }
  *pCharLengthOut = hexLenthIn*2;
  return ret;
}

static uint8_t CharToHex(uint8_t charData)
{
  uint8_t value;
  if((charData>='0')&&(charData<='9'))
  {
    value = charData - '0';
  }
  else if((charData>='a')&&(charData<='f'))
  {
    value = charData-'a'+10;
  }
  else if((charData>='A')&&(charData<='F'))
  {
    value = charData-'A'+10;
  }
  else
  {
    value = 0;
  }
  return value;
}

static int16_t CharArrayToHexArray(uint8_t *pCharIn,uint16_t charLengthIn,uint8_t *pHexOut,uint16_t *pHexLenthOut)
{
  uint16_t hexLength,i;
  
  if(charLengthIn==0)
  {
    return -1;
  }
  hexLength = charLengthIn/2;
  for(i=0;i<hexLength;i++)
  {
    pHexOut[i] = (CharToHex(pCharIn[2*i])<<4)+CharToHex(pCharIn[2*i+1]);
  }
  *pHexLenthOut = hexLength;
  return 0;
}


int16_t Service22ReadPartNumber(uint8_t *pData,uint16_t *pLength)
{
  //int16_t ret = 0;
  uint32_t u32Length;  
  //uint32_t u16Length;  
  u32Length = 0;
  //u16Length = 0;
#if(0)  
  uint8_t asc[64];
  uint32_t ascLength;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_PART_NUMBER,asc,&ascLength);
  if(ret != 0)
  {
    return -1;
  }
  ret = CharArrayToHexArray(asc,ascLength,pData,&u32Length);
  *pLength = length;  
  if(ret != 0)
  {
    return -1;
  }  
#else
  ProjectConfigGetPartNumber(pData,&u32Length);
  *pLength = u32Length;
#endif  
  return 0; 
}

int16_t Service22ReadSupplierId(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF18A,sizeof(g_didF18A));
    *pLength = sizeof(g_didF18A);
    
    return 0; 
//   uint32_t length;
//   int16_t ret;
  
//   length = 0;
// #if(1)  
//   ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID,pData,&length);
//   length = 7;
// #else  
//   ret = GlobalGetSupplierIdentifier(pData,&length);
// #endif
//   if(ret != 0)
//   {
//     return -1;
//   }
//   *pLength = length;
//   return 0;

}

int16_t Service22ReadHardwareVersion(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_HARDWARE_VERSION,pData,&length);
  //ret = GlobalGetHardwareVersion(pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 4;
  return 0; 
}

int16_t Service22ReadSupplierSoftwareNumber(uint8_t *pData,uint16_t *pLength)
{
  uint16_t length;
  
  length = 0;
  ProjectConfigGetSoftwareNumber(pData,&length);  
  *pLength = 10;
  return 0;
}

int16_t Service22ReadSoftwareVersion(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  //int16_t ret;
  //ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SOFTWARE_VERSION,pData,&length);
  ProjectConfigGetSoftwareVersion(pData,&length);

  *pLength = length;
  return 0; 
}

int16_t Service22ReadBootSoftwareVersion(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length = 2;
  int16_t ret;
  //ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SOFTWARE_VERSION,pData,&length);
#if(1)  
  ret = ProjectConfigGetPartNameBootSoftwareVersion(pData,&length);
  if(ret != 0)
  {
    return -1;
  }
#endif
  *pLength = length;
  return 0; 
}

int16_t Service22ReadAppSoftwareVersion(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;

  ret = ProjectConfigGetCustomVersion(pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;
}

int16_t Service22ReadEcuMask(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;

  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SAP_ECU_MASK,pData,&length);
  if(ret != 0)
  {
    return -1;
  }

  *pLength = length;
  return 0;  
}

int16_t Service22ReadManufactureDate(uint8_t *pData,uint16_t *pLength)
{
  uint16_t length;
  int16_t ret;
  uint32_t ascLength;
  uint8_t asc[64];
  //ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_MANUFACTURE_DATE,pData,&length);
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_MANUFACTURE_DATE,asc,&ascLength);
  if(ret != 0)
  {
    return -1;
  }
  
  ret = CharArrayToHexArray(asc,ascLength,pData,&length);
  *pLength = 4;  
  return 0;
}

int16_t Service22ReadPartName(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_PART_NAME,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}

int16_t Service22ReadESKey(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ESK_KEY,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}


static int16_t CheckVinIsAsciiZero(uint8_t *pVin)
{
	uint8_t i;
	int16_t ret = 0;
	for(i=0;i<17;i++)
	{
		if(pVin[i]!=0x30)
		{
			ret = -1;
			break;
		}
	}
	return ret;
}

int16_t Service22ReadVIN(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  uint8_t vinTem[40];
  //uint8_t i;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VIN,vinTem,&length);
  if(ret != 0)
  {
    return -1;
  }
  if(CheckVinIsAsciiZero(vinTem)!=0)
  {
      memcpy(pData,vinTem,17);
      *pLength = 17;
      return 0;
  }
#if(0)
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VIN_hex,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
#endif
  *pLength = 17;

  return 0;
}

int16_t Service22ReadSerialNumber(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
//  uint8_t asc[64];
//  uint32_t ascLength;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,pData,&length);
  //ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,asc,&ascLength);
  if(ret != 0)
  {
    return -1;
  }
  //static int16_t CharArrayToHexArray(uint8_t *pCharIn,uint16_t charLengthIn,uint8_t *pHexOut,uint16_t *pHexLenthOut)
  //ret = CharArrayToHexArray(asc,ascLength,pData,&length);
  *pLength = length;
  return 0;
}

int16_t Service22ReadICCID(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ICCID,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}

int16_t Service22ReadIMEI(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_IMEI,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}

int16_t Service22ReadIMSI(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_IMSI,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}


int16_t Service22ReadTboxCallNumber(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;

  memset(pData,0x00,20);
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_CALL_NUMBER,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 20;
  return 0;
}

int16_t Service22ReadRegisterFlag(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  uint8_t data[10];
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_REGISTER_FLAG,data,&length);
  if(ret != 0)
  {
    return -1;
  }
  if(length<1)
  {
    return -1;
  }
  pData[0] = data[length-1];
  *pLength = 1; 
  return 0;
}

int16_t Service22ReadSecurityVersion(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SECURITY_VERSION,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;  
}

int16_t Service22ReadFingerPrint(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
#if(0)
  ret = WorkFlashReadAllFingerPrint(pData,pLength);
#else
  ret = 0;
#endif
  return ret;
}

int16_t Service22ReadKL30Voltage(uint8_t *pData,uint16_t *pLength)
{
  uint32_t voltage;
  //ReadPowerVoltage(&voltage);
  PeripheralHalAdGet(AD_CHANNEL_KL30,&voltage);
  pData[0] = voltage/100;

  *pLength = 1;
  return 0;
}

int16_t Service22ReadKL30ConnectStatus(uint8_t *pData,uint16_t *pLength)
{
  uint32_t voltage;
#if(1)
  //ReadPowerVoltage(&voltage);
  PeripheralHalAdGet(AD_CHANNEL_KL30,&voltage);
  if(voltage<6000)
  {
    pData[0] = 0x01;
  }
  else
  {
    pData[0] = 0x00;
  }
#else
  pData[0] = 0x00;
#endif
  *pLength = 1;
  return 0;
}

int16_t Service22ReadBatteryStatus(uint8_t *pData,uint16_t *pLength)
{
  uint32_t voltage;
  int32_t temperature;
  BatterySdkGetVoltage(&voltage);
  BatterySdkGetTemperature(&temperature); 
  
  pData[0] = 0x00;
  pData[1] = 0x00;
  pData[2] = (voltage>>8)&0xFF;
  pData[3] = (voltage)&0xFF; 
  //temperature = -1000;
  temperature /= 10;//resolution changed from 0.01 to 0.1 
  //temperature += 1000;//offset  1000(100??)
  pData[4] = (temperature>>24)&0xFF;
  pData[5] = (temperature>>16)&0xFF;
  pData[6] = (temperature>>8)&0xFF;
  pData[7] = (temperature)&0xFF;  
  *pLength = 8;
  return 0;
}

int16_t Service22ReadGNSS(uint8_t *pData,uint16_t *pLength)
{
  *pLength = 10;
  
  int16_t ret;
  
  ret = 0;//test
#if(1)
  //ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_GNSS,pData,pLength);
  ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_GNSS,pData,pLength);
#endif  

  return ret;
  
}

int16_t Service22ReadGNSSSLocationStatus(uint8_t *pData,uint16_t *pLength)
{
  uint8_t data[20] = {0};
  //uint16_t length;
  
  *pLength = 1;
  
  int16_t ret;
  
  ret = 0;//test
  //ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_GNSS,data,&length);
  LocationInfoSync_t localtionInfo;
  if(StateSyncGetLocationInfo(&localtionInfo) == 0)
  {
      //Bit0-bit5: GNSS定位状�?0: 未定�?1: 单点定位 2: 浮点定位 3: RTK定位
      data[0] = localtionInfo.locationState & 0x1F;
  }
  else
  {
    ret = -1;
  }
  
  //00:not used,01:fix not available,02:fix in 2D mode,03:fix in 3d mode
  *pData = data[0];
  return ret;
  
}


//#include<stdio.h>
int ChangetoSexagesimal(float Num, int *a, int *b, float *c)
{

    //float e;
    int Hour,Minute;
    float Second;
        
    Hour = (int)(Num);                              //�?                       
    Minute = (int)((Num-Hour)*60);                  //�?
    Second = (float)(((Num-Hour)*60 - Minute) *60);   //�?
/*
    e = ((Num-Hour)*60 - Minute) *60 - Second;      //四舍五入
    if(5 <=(int)(e *10) )
    {
        //Second = Second + 1;
        Second = Second + e;
    }
    if(60 == Second)
    {
        Second = 0;
        Minute = Minute + 1;
    }    
    if(60 == Minute)
    {
        Minute = 0;
        Hour = Hour + 1;
    }    
*/
    *a = Hour;
    *b = Minute;
    *c = Second;

    return 1;

}

int16_t Service22ReadGNSS_LatitudeLongitude(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
  
  *pLength = 10;
  LocationInfoSync_t localtionInfo;
  float latitude = 0;
  float longitude = 0;
  
  int32_t latitudeHour = 0;
  int32_t latitudeMinute = 0;
  float latitudeSecond = 0;
  
  int32_t longitudeHour = 0;
  int32_t longitudeMinute = 0;
  float longitudeSecond = 0;
  
  ret = 0;//test
#if(1)
  //GetGnssLatitudeLongitude(pData);
  if(StateSyncGetLocationInfo(&localtionInfo) == 0)
  {
      latitude = (localtionInfo.latitude * pow(10,-7));
      longitude = (localtionInfo.longitude * pow(10,-7));
      ChangetoSexagesimal(latitude,&latitudeHour,&latitudeMinute,&latitudeSecond);
      ChangetoSexagesimal(longitude,&longitudeHour,&longitudeMinute,&longitudeSecond);
      pData[0] = latitudeHour;
      pData[1] = latitudeMinute;
      pData[2] = (((uint16_t)(latitudeSecond*100))>>8) & 0xFF;
      pData[3] = ((uint16_t)(latitudeSecond*100)) & 0xFF;
      if(localtionInfo.locationState & 0x80 == 0)
      {
        pData[4] = 'N';
      }
      else
      {
        pData[4] = 'S';
      }
      pData[5] = longitudeHour;
      pData[6] = longitudeMinute;
      pData[7] = (((uint16_t)(longitudeSecond*100))>>8) & 0xFF;
      pData[8] = ((uint16_t)(longitudeSecond*100)) & 0xFF;
      if(localtionInfo.locationState & 0x40 == 0)
      {
        pData[9] = 'E';
      }
      else
      {
        pData[9] = 'W';
      }
  }
  else
  {
    ret = -1;
  }
#endif
  //*pData = data[0];

  return ret;
}

int16_t Service22ReadGNSSStatus(uint8_t *pData,uint16_t *pLength)
{
  uint8_t data[20] = {0};
  //uint16_t length;
  
  *pLength = 1;
  LocationInfoSync_t localtionInfo;
  int16_t ret;
  
  ret = 0;//test
  ///ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_GNSS,data,&length);
#if(1)
  if(StateSyncGetLocationInfo(&localtionInfo) == 0)
  {
    data[0] = localtionInfo.moduleState;
  }
  else
  {
    ret = -1;
  }
  //GetGnssStatus();
#else
  data[0] = 0;
#endif
  //00:not used,01:fix not available,02:fix in 2D mode,03:fix in 3d mode
  if(data[0]==0)
  {
      *pData = 0x00;
  }
  else if(data[0]==1)
  {
      *pData = 0x01;
  }
  else
  {
      *pData = 0x01;
  }
  *pLength = 1;
  //*pData = 0x00;//normal;01:fault

  return ret;
  
}

int16_t Service22ReadGNSSSAntenaStatus(uint8_t *pData,uint16_t *pLength)
{
  uint8_t status;
  //uint16_t length;
  LocationInfoSync_t localtionInfo;
  *pLength = 1;

  int16_t ret =0;
  status = 0; //0x00: Connected/正常连接 0x01: Disconnected/未连�?0x02: Short to GND/对地短路 0x03: Short to KL30/对电源短�?
#if(1)
  //GetGnssAntennaStatus(&status);
  if(StateSyncGetLocationInfo(&localtionInfo) == 0)
  {
      //0: 正常 1：电线断�?2：电线地短路 3：电线电源短�?
      if(localtionInfo.wireState == 0)
      {
          status = 0x00;
      }
      else if(localtionInfo.wireState == 1)
      {
          status = 0x01;
      }
      else if(localtionInfo.wireState == 2)
      {
          status = 0x02;
      }
      else if(localtionInfo.wireState == 3)
      {
          status = 0x03;
      }
  }
  else
  {
    ret = -1;
  }
#endif
  *pData = status;//00:connect,01:disconnected,02:short to gnc,03:short to kl30
  *pLength = 1;
  return ret;

}

int16_t Service22ReadGPRSModeStatus(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = 0;
    *pLength = 1;

    *pData = MpuPowerSyncSdkGetNadModuleStatus();//0x00;//normal;01:fault

    return ret;
}

int16_t Service22ReadNADPrimaryAntenaStatus(uint8_t *pData,uint16_t *pLength)
{
   int16_t ret;
   //uint8_t status;
  *pLength = 1;

  ret = 0;//test
  //status = 0;
#if(0)
  GetModemAntennaStatus(&status);
#endif
  *pData = 0x00;//00:connnected,01:disconnected,02:short to gnd,03:short to kl30;

  return ret;

}
/*
static void registerFlagToU32(uint8_t *data,uint8_t length,uint32_t *pDataOut)
{
  if(length==0)
  {
    *pDataOut = 0;
  }
  else if(length==1)
  {
    *pDataOut = data[0];
  }
  else if(length==2)
  {
    *pDataOut = ((uint32_t)data[0]<<8)+((uint32_t)data[1]<<0);
  }
  else if(length==3)
  {
    *pDataOut = ((uint32_t)data[0]<<16)+((uint32_t)data[1]<<8)+((uint32_t)data[2]<<0);
  } 
  else if(length==4)
  {
    *pDataOut = ((uint32_t)data[0]<<24)+((uint32_t)data[1]<<16)+((uint32_t)data[2]<<8)+((uint32_t)data[3]<<0);
  }
  else
  {
    *pDataOut = 0;
  }
}*/

int16_t Service22ReadGPRSNetWorkStatus(uint8_t *pData,uint16_t *pLength)
{  
  *pLength = 1;
  TspStateSync_t tspState;
  if(StateSyncGetTspState(&tspState) == 0)
  {
    *pData = tspState.tspStatus;//0x00= login（已登录平台�?x01= not login（未登录平台�?
  }
  else
  {
    return -1;
  }
  return 0;  
}

int16_t Service22ReadCANBUSCommunicationStatus(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
   
  *pLength = 1;
  
 
  
  ret = 0;//test
  
  *pData = 0x00;//normal;01:fault

  return ret;
  
}

int16_t Service22ReadUploadFrequency(uint8_t *pData,uint16_t *pLength)
{
  uint32_t cycle;
  int16_t ret;
   
  cycle = 2000;
  ret = 0;//test
    
  pData[0] = (cycle>>24)&0xFF;
  pData[1] = (cycle>>16)&0xFF;
  pData[2] = (cycle>>8)&0xFF;
  pData[3] = (cycle>>0)&0xFF;
  
  *pLength = 4;  
  return ret;
  
}

int16_t Service22ReadStorageMemoryUsages(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
  static uint8_t RemainValue = 0;
   
  ret = 0;//test
    
  RemainValue = (RemainValue + 1) / 2;
  
  if(RemainValue > 9)
  {
      RemainValue = 1;
  }
  
  pData[0] = 50 - RemainValue;//test usages
  
  *pLength = 1;  
  return ret;
}

int16_t Service22ReadStorageMemoryStatus(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
   
  ret = 0;//test
    
  pData[0] = 00;//normal,01:fault
  
  *pLength = 1;  
  return ret;
  
}

int16_t Service22ReadBackupBatterySoc(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
  
  static uint8_t RandValue = 0;
   
  ret = 0;//test
    
  RandValue = (RandValue + 1) / 2;
  
  if(RandValue >= 9)
  {
      RandValue = 1;
  }
  //pData[0] = 92;//test 92%
  
  pData[0] = 90 + RandValue;
  
  *pLength = 1;  
  return ret;
  
}

int16_t Service22ReadBackupBatteryStatus(uint8_t *pData,uint16_t *pLength)
{
  pData[0] = BatterySdkGetBatteyStatus();
  *pLength = 1;
  
  return 0;
}

int16_t Service22ReadPhoneSignal(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
  
  *pLength = 1;  
  ret = 0;//test  
#if(1)
  ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_4G_SIGNAL_VALUE,pData,pLength);
#endif
  
  return ret;
}

int16_t Service22ReadNetWorkProvider(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;  
  
  ret = 0;//test  
#if(1)
  ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_NET_PROVIDER,pData,pLength);
#endif

  return ret;
}

int16_t Service22ReadNetWorkType(uint8_t *pData,uint16_t *pLength)
{

  *pLength = 1;
  
  int16_t ret;
  
  ret = 0;//test  
#if(1)
  ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_NET_TYPE,pData,pLength);
#endif

  return ret;
}

int16_t Service22ReadApnNumber(uint8_t *pData,uint16_t *pLength)
{
  *pLength = 1;
  
  int16_t ret;
  
  ret = 0;//test  
#if(1)
  ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_APN_NUMBER,pData,pLength);
#endif
  return ret;
}

int16_t Service22ReadCpuFlashCapacity(uint8_t *pData,uint16_t *pLength)
{
  *pLength = 4;
  
  int16_t ret;
  
  ret = 0;//test 
#if(1)
  ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_FLASH_CAPACITY,pData,pLength);
#endif
  return ret;
}



int16_t Service22ReadHardwareNumber(uint8_t *pData,uint16_t *pLength)
{
#if 1
  //GlobalGetSGMWSoftwareNumer(pData,pLength);
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_HARDWARE_NUM,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 4;
#else
  GlobalGetSGMWSoftwareNumer(pData,pLength);
#endif
  return 0;  
}

int16_t Service22ReadSupplierHardwareNumber(uint8_t *pData,uint16_t *pLength)
{
  uint16_t length;

  ProjectConfigGetHardNumber(pData,&length);

  *pLength = length;
  return 0;  
}

int16_t Service22ReadSoftwareNumber(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
#if(0)  
  uint32_t length;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SOFTWARE_NUM,pData,&length);
#else  
  uint16_t length;
  ret = ProjectConfigGetSoftwareNumber(pData,&length);
#endif
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;  
}
/*******************add 22 DID*************************************************/
int16_t Service22ReadSubnetConfigListOnHighSpeedCan(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SUBNET_CONFIG_LIST_SPEED_CAN,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 4;
  return 0;  
}


int16_t Service22ReadVehicleManufacturingDate(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_INSTALL_DATE,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 4;
  return 0;  
}

int16_t Service22ReadVariantcode(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_CODE,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;  
}

int16_t Service22ReadEOLconfig(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_EOL_CONFIG,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 12;
  return 0;  
}

int16_t Service22ReadWorkingMode(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    uint8_t data[2] = {0};
    ret = WorkFlashUserInfoRead(E_WORKING_MODE,data,&length);
    if(ret != 0)
    {
        return -1;
    }
    if(data[0] != 0x5A)
    {
        *pData = 0;//nomal
    }
    else
    {
       *pData =  data[1];
    }
    *pLength = 1;
    return 0;  
}

int16_t Service22ReadPhoneKeyOffLineUseTimes(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  //int16_t i;
  int16_t flag = 1;
#if(0)
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_PHONEKEY_OFFLINE_USETIMES,pData,&length);

  if(ret != 0)
  {
    return -1;
  }
#endif
  //for(i = 0;i< 12;i++)
  {
     if(pData[0] != 0xFF)
     {
         flag = 0;
     }
  }
#if(1)
  if(flag == 1)
  {
      //memset(pData,0,12);
      pData[0] = 0;
      //WorkFlashVehicleInforStore(E_PARAMETER_INFO_PHONEKEY_OFFLINE_USETIMES, pData, 1);
  }
#endif
  *pLength = 1;
  return 0;  
}


int16_t Service22ReadSEID(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  //int16_t i;
  //int16_t flag = 1;
#if(0)
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SEID,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  for(i = 0;i< 16;i++)
  {
     if(pData[i] != 0xFF)
     {
         flag = 0;
     }
  }
  if(flag == 1)
  {
      memset(pData,0,16);
      WorkFlashVehicleInforStore(E_PARAMETER_INFO_SEID, pData, 16);
  }
#endif
  *pLength = 16;
  return 0;  
}
int16_t Service22ReadProlinesChannelKey3(uint8_t *pData,uint16_t *pLength)
{
#if(0)
  uint32_t length;
  int16_t ret;
  int16_t i;
  int16_t flag = 1;

  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_PROLINES_CHANNEL_KEY3,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  for(i = 0;i< 16;i++)
  {
     if(pData[i] != 0xFF)
     {
         flag = 0;
     }
  }
  if(flag == 1)
  {
      memset(pData,0,16);
      WorkFlashVehicleInforStore(E_PARAMETER_INFO_PROLINES_CHANNEL_KEY3, pData, 16);
  }
#endif
  *pLength = 16;
  return 0;  
}

int16_t Service22ReadBleMac(uint8_t *pData,uint16_t *pLength)
{
#if(0)
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_BLE_MAC,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
#endif
  *pLength = 12;
  return 0;  
}


int16_t Service22ReadNationIpAddress_DIG(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;

  uint32_t lentemp = 0;
  
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_NATION_WORK_ADDRESS,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  lentemp = length;
  
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_NATION_WORK_PORT,pData+16,&length);
  if(ret != 0)
  {
    return -1;
  }  
  lentemp += length;
  
  *pLength = lentemp; 

  return 0;
}

int16_t Service22ReadNationIpAddress(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_NATION_WORK_ADDRESS,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}

int16_t Service22ReadNationIpPort(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_NATION_WORK_PORT,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;
}

int16_t Service22ReadGovernmentIpAddress_DIG(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  
  uint32_t lentemp = 0;
  
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  lentemp = length;
  
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_GOVERNMENT_WORK_PORT,pData+16,&length);
  if(ret != 0)
  {
    return -1;
  }  
  lentemp += length;
  *pLength = lentemp; 
  return 0;
}

int16_t Service22ReadGovernmentIpAddress(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}

int16_t Service22ReadGovernmentIpPort(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_GOVERNMENT_WORK_PORT,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;
}

int16_t Service22ReadInternalBatteryStatus(uint8_t* buf, uint16_t *len)
{
    uint16_t ret = 0;
    *buf  = 0;
    *len = 1;  
    
    return ret;
}


int16_t Service22ReadGNSS_test(uint8_t* buf, uint16_t *len)
{
    static uint8_t temp = 10;
    uint16_t ret = 0;
    
    *buf  = ((temp / 10) % 2);
    *len = 1;
    temp ++;
    return ret;  
}

int16_t Service22ReadNetWorkProvider_test(uint8_t* buf, uint16_t *len)
{

    uint16_t ret = 0;
    *buf  = 0x1;
    *len = 1;
    
    return ret;  
}

int16_t Service22ReadPhoneSignalTest(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret = 0;
  NetInfoSync_t netInfo;
  
  *pLength = 1;

  if(StateSyncGetNetInfo(&netInfo) == 0)
  {
    pData[0] = netInfo.csq;  
    if(pData[0] > 31)
    {
        pData[0] = 0;
    }
    *pLength = 0x01;
  }
  else
  {
    ret = -1;
  }
  return ret;
}

int16_t Service22ReadAppSoftwareFingerprint(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_APP_SOFT_FINGER_PRINT,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 9;
  return 0;  
}

/***********************************************
 * scaling:1
 * physical limits:-127~128
 *
 *
 * ********************************************/
int16_t Service22ReadTboxTemperature(uint8_t *pData,uint16_t *pLength)
{
    HalStateSync_t halState;
    if(StateSyncGetHalstate(&halState) == 0)
    {
        pData[0] = halState.tmpStatus + 127;
    }
    else
    {
        return -1;
    }
    
    
    *pLength = 1;
    return 0;
}


int16_t Service22ReadSystemTime(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  uint32_t utcTime;

  utcTime = 0;
  TimeSyncSdkGetUtcTime(&utcTime);
  //utcTime += (3600*8);//beijing time
  pData[0] = (utcTime>>24)&0xFF;
  pData[1] = (utcTime>>16)&0xFF;
  pData[2] = (utcTime>>8)&0xFF;
  pData[3] = (utcTime>>0)&0xFF;
  *pLength = 4;
  return 0;
}

int16_t Service22ReadNetworkMCC(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  uint8_t buffer[64];

  	length = 0;
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_IMSI,buffer,&length);//actually IMSI
	if(ret != 0)
	{
	  return -1;
	}
	if(length!=15)
	{
	   return -1;
	}
   memcpy(pData,buffer,3);

  *pLength = 3;
  return 0;
}

int16_t Service22ReadNetworkMNC(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  uint8_t buffer[64];

  	length = 0;
  	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_IMSI,buffer,&length);//actually IMSI
  	if(ret != 0)
  	{
  	  return -1;
  	}
	if(length!=15)
	{
	return -1;
	}
	memcpy(pData,buffer+3,2);
	pData[2] = 0x00;
  *pLength = 3;
  return 0;
}

/**********************************************************
 * 0:unknown
 * 1:CDMA/����2G����
 * 2��GSM/�ƶ�����??G����
 * 3��WCDMA/��??G����
 * 4��TDSCDMA/�ƶ�3G����
 * 5��EVDO/����3G����
 * 6��LTE/4G����
**********************************************************/
int16_t Service22ReadConnectionType(uint8_t *pData,uint16_t *pLength)
{
    uint8_t type = 0;
    NetInfoSync_t netInfo;
    if(StateSyncGetNetInfo(&netInfo) == 0)
    {
        if(netInfo.netType == 0) //0：GSM 1：LTE
        {
            type = 2;
        }
        else if(netInfo.netType == 1)
        {
            type = 6;
        }
    }
    
    pData[0] = type;//for debug
    *pLength = 1;
    return 0;
}

int16_t Service22ReadModemTemperature(uint8_t *pData,uint16_t *pLength)
{
    HalStateSync_t halState;
    if(StateSyncGetHalstate(&halState) == 0)
    {
        pData[0] = halState.tmpStatus + 127;
    }
    else
    {
        return -1;
    }
    *pLength = 1;
    return 0;
}

int16_t Service22ReadGNSSLiveTime(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  uint32_t utcTime;
  utcTime = 0;
  TimeSyncSdkGetUtcTime(&utcTime);
  pData[0] = (utcTime>>24)&0xFF;
  pData[1] = (utcTime>>16)&0xFF;
  pData[2] = (utcTime>>8)&0xFF;
  pData[3] = (utcTime>>0)&0xFF;
  *pLength = 4;
  return 0;
}

int16_t Service22ReadGNSSLiveHeigth(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  uint32_t heigth = 0;
  LocationInfoSync_t localtionInfo;

  //heigth = 500;//debug 500*0.1=50.0m
  if(StateSyncGetLocationInfo(&localtionInfo) == 0)
  {
    heigth = localtionInfo.altitude;
  }
  else
  {
    return -1;
  }

  pData[0] = (heigth>>24)&0xFF;
  pData[1] = (heigth>>16)&0xFF;
  pData[2] = (heigth>>8)&0xFF;
  pData[3] = (heigth>>0)&0xFF;
  *pLength = 4;
  return 0;
}

int16_t Service22ReadGNSSLiveHDOP(uint8_t *pData,uint16_t *pLength)
{
    uint16_t hdop = 0;
    LocationInfoSync_t localtionInfo;

    if(StateSyncGetLocationInfo(&localtionInfo) == 0)
    {
        hdop = localtionInfo.accuracy;
    }
    else
    {
        return -1;
    }
        
    pData[0] = (hdop>>8)&0xFF;
    pData[1] = (hdop>>0)&0xFF;
    *pLength = 2;
    return 0;
}

int16_t Service22ReadGNSSLiveSpeed(uint8_t *pData,uint16_t *pLength)
{
    uint16_t speed = 0;
    LocationInfoSync_t localtionInfo;

    if(StateSyncGetLocationInfo(&localtionInfo) == 0)
    {
        speed = localtionInfo.speed * 10;
    }
    else
    {
        return -1;
    }
   pData[0] = (speed>>8)&0xFF;
   pData[1] = (speed>>0)&0xFF;

  *pLength = 2;
  return 0;
}

int16_t Service22ReadGNSSLiveHeading(uint8_t *pData,uint16_t *pLength)
{
    uint16_t heading = 0;
    LocationInfoSync_t localtionInfo;

    if(StateSyncGetLocationInfo(&localtionInfo) == 0)
    {
        heading = localtionInfo.heading/10;
    }
    else
    {
        return -1;
    }
    pData[0] = (heading>>8)&0xFF;
    pData[1] = (heading>>0)&0xFF;
    
    *pLength = 2;
    return 0;
}

int16_t Service22ReadGNSSCurrentNumOfSatallitesUsed(uint8_t *pData,uint16_t *pLength)
{
    uint8_t num = 0;
    LocationInfoSync_t localtionInfo;
    if(StateSyncGetLocationInfo(&localtionInfo) == 0)
    {
        num = localtionInfo.useSvsnum;
    }
    else
    {
        return -1;
    }
    pData[0] = num;//debug,0~12
    *pLength = 1;
    return 0;
}

int16_t Service22ReadGNSSCurrentNumOfSatallitesInView(uint8_t *pData,uint16_t *pLength)
{
    uint8_t num = 0;
    LocationInfoSync_t localtionInfo;
    if(StateSyncGetLocationInfo(&localtionInfo) == 0)
    {
        num = localtionInfo.svsNum;
    }
    else
    {
        return -1;
    }
    pData[0] = num;//debug,0~12
    *pLength = 1;
    return 0;
}

int16_t Service22ReadBackupBatteryTemperature(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  int32_t  tem;

  BatterySdkGetTemperature(&tem);
  tem /= 100;
  pData[0] = tem+127;//
  *pLength = 1;
  return 0;
}

int16_t Service22ReadBackupBatteryAgeCoefficient(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;

  pData[0] = 10;//debug 10*0.04=0.4
  *pLength = 1;
  return 0;
}

int16_t Service22ReadBackupBatteryVoltage(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  uint32_t voltage = 0;

  BatterySdkGetVoltage(&voltage);
  voltage /=20;
  pData[0] = voltage;//debug
  *pLength = 1;
  return 0;
}

int16_t Service22ReadIMMOStatus(uint8_t *pData,uint16_t *pLength)
{
  uint8_t key[32];
  uint32_t dataLength;
  uint8_t immoStatus;
  //uint32_t i;
  int16_t ret;
  
  immoStatus = 0;
  dataLength = 0;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ESK_KEY,key,&dataLength);
  if(ret==0)
  {
    if(dataLength==16)
    {
      if(CheckEskValid(key)==0)
      {
        immoStatus = 1;
      }    
    }      
  } 
  
  pData[0] = immoStatus;//00:UUC is virgin;0x01:UCU has ESK;
  *pLength = 1;
  return 0;
}

int16_t Service22ReadPowerIn(uint8_t *pData,uint16_t *pLength)
{
  uint32_t voltage;
  uint32_t tem;
  
  PeripheralHalAdGet(AD_CHANNEL_KL30,&voltage);
  voltage += 420;//offset:0.42
  tem = ((uint32_t)voltage)*10/276;//scaling:0.0276
  pData[0] = (tem>>8)&0xFF;
  pData[1] = tem&0xFF;
  *pLength = 2;
  return 0;
}

int16_t Service22ReadEepromCheck(uint8_t *pData,uint16_t *pLength)
{
  pData[0] = 0x01;//0x00:Software is not to match the eprom;0x01:Software is to match the eprom

  *pLength = 1;
  return 0;
}

int16_t Service22ReadDiagnosticCanReport(uint8_t *pData,uint16_t *pLength)
{
  
/**********************************************************
  0x00:not report,quite CAN Report  
  0x01:reserved;
  0x02:Report B CAN messages to Diagnostic CAN;
  0x03:Report E CAN messages to Diagnostic CAN;
  0x04:Report C CAN messages to Diagnostic CAN;
  0x05:Report I CAN messages to Diagnostic CAN;
  0x06:Report A CAN messages to Diagnostic CAN;  
**************************************************************/
  uint32_t dataLength;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_DIAG_CAN_REPORT,pData,&dataLength);
  if(ret!=0)
  {
    return -1;
  }

  if(g_2EReportToDcanVaule != pData[0])
  {
      g_2EReportToDcanVaule = pData[0];
  }
  *pLength = 1;
  return 0;
}

int16_t Service22ReadUCUType(uint8_t *pData,uint16_t *pLength)
{
  memcpy(pData,g_ucuType,11);
  *pLength = 11;
  return 0;
}


/*****************2E write by identufy******************************************************/
int16_t Service2EWriteGovernmentIpAddress(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }   

  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteNationIpAddress(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_NATION_WORK_ADDRESS,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  

  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}


int16_t Service2EWriteRepairShopCodeOrTestSN(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_DIAG_SN,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteInstallationDate(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  /*if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  } */
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_INSTALL_DATE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}


/*static int16_t CheckByteArrayIsSame(const uint8_t *pData1,const uint8_t *pData2,uint32_t len)
{
  uint32_t i;
  int16_t valid;
  
  valid = 0;
  for(i=0;i<len;i++)
  {
    if(pData1[i]!=pData2[i])
    {
      valid = 1;
      break;
    }
  }
  return valid;
}*/

/*static int16_t CheckVehicleTypeVaild(uint8_t *pConfig,uint8_t length)
{
  uint8_t i;
  uint8_t arraySize;
  int16_t valid;
  
  valid = 1;
  arraySize = sizeof(m_EolConfig)/12;
  
  for(i=0;i<arraySize;i++)
  {
    if(CheckByteArrayIsSame(m_EolConfig[i],pConfig,12)==0)
    {
      valid = 0;//valid ok
      break;
    }
  }
  return valid;
}*/

int16_t Service2EWriteEOLconfig(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  //uint8_t i = 0;

  /*if(CheckVehicleTypeVaild(pData,dataLength)!=0)
  {
    return -1;
  }*/
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_EOL_CONFIG,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
#if(0)
  //g_vehicleTypeConfigure
  memcpy(g_vehicleTypeConfigure,pData,sizeof(g_vehicleTypeConfigure));

  for(i = 0; i < sizeof(g_vehicleTypeConfigure);i++)
  {
      if(g_vehicleTypeConfigure[i]&0xFF)//configured
      {
          ClearDtcFaultState(DTC_ITEM_CONFIGURE_BYTE_NOT_COMPLETE);
          return 0;
      }
      else
      {
          if(i == 11)
          {
              SetDtcFaultState(DTC_ITEM_CONFIGURE_BYTE_NOT_COMPLETE);
          }
      }
  }
#endif
  //ReCheckConfigRelatedDtc();
  return 0;
}

int16_t Service2EWriteEOLconfigByEol(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  uint8_t i = 0;

  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_EOL_CONFIG,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
  //g_vehicleTypeConfigure
  memcpy(g_vehicleTypeConfigure,pData,sizeof(g_vehicleTypeConfigure));
  for(i = 0; i < sizeof(g_vehicleTypeConfigure);i++)
  {
      if(g_vehicleTypeConfigure[i]&0xFF)//configured
      {
          //ClearDtcFaultState(DTC_ITEM_CONFIGURE_BYTE_NOT_COMPLETE);
          return 0;
      }
      else
      {
          if(i == 11)
          {
              //SetDtcFaultState(DTC_ITEM_CONFIGURE_BYTE_NOT_COMPLETE);
          }
      }
  }
  return 0;
}

int16_t Service2EWriteVariantcode(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_CODE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteHardwareNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_HARDWARE_NUM,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteSoftwareNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_SOFTWARE_NUM,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

/************************** ADD 2E DID *****************************************************/
int16_t Service2EWritePartNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  uint16_t ascLength;
  uint8_t asc[64];
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
#if 1  
  if(dataLength>(sizeof(asc)/2))//size too large
  {
    return -1;
  }
  ret = HexArrayToCharArray(pData,dataLength,asc,&ascLength);
  if(ret!=0)//convert failed
  {
    return -1;
  }
  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_PART_NUMBER,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  }  
  /*ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ECU_PART_NUMBER,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  } */
  
#else
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_PART_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ECU_PART_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
#endif  
  

  return 0;  
}

int16_t Service2EWriteSupplierId(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  /*ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_SUPPLIER_IDENTIFIER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } */
  return 0;  
}

int16_t Service2EWriteHardwareVersion(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_HARDWARE_VERSION,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  /*ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ECU_HARDWARE_VERSION,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } */
  return 0;  
}

int16_t Service2EWriteSoftwareVersion(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_SOFTWARE_VERSION,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  /*ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ECU_SOFTWARE_VERSION,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } */
  return 0;  
}

int16_t Service2EWriteEcuMask(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SAP_ECU_MASK,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;
}

int16_t Service2EWriteManufactureDate(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  uint16_t ascLength;
  uint8_t asc[64];  
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = HexArrayToCharArray(pData,dataLength,asc,&ascLength);
  if(ret!=0)//convert failed
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_MANUFACTURE_DATE,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  }  
  
  /*ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_MANUFACTURE_DATE,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  } */
  return 0;
}

int16_t Service2EWritePartName(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_PART_NAME,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  

  return 0;
}

int16_t Service2EWriteESKey(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  //int16_t i;
  //uint8_t dataValid;
  //uint8_t tem[32];
  //uint32_t len;  
  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ESK_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  if(CheckEskValid(pData)==0) 
  {
    g_eskKeyValid = 0x01;
  }
  else
  {
    g_eskKeyValid = 0x00;
  }
  return 0;
}

int16_t Service2EWriteESKeyByEol(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(dataLength!=16)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ESK_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  if(CheckEskValid(pData)==0)
  {
    g_eskKeyValid = 1;
  }
  else
  {
    g_eskKeyValid = 0;
  }
  return 0;
}


static int16_t SetWorkingMode(uint8_t oldMode,uint8_t newMode)
{
    if(oldMode == 0)//nomal
    {
        if(newMode == 1) //factory mode
        {
            //关闭远程诊断功能
            RemoteDiagnosticSdkDisable();
        }
        else if(newMode == 2) //运输模式
        {
            //进入深度休眠，关闭MPU
            PowerManageSdkDeepSleep(1);
        }
    }
    else if(oldMode == 1)//factory mode
    {
        if(newMode == 0)
        {
            //恢复远程诊断功能
            RemoteDiagnosticSdkRecover();
        }
        else if(newMode == 2)
        {
            RemoteDiagnosticSdkRecover();
            //进入深度休眠，关闭MPU
            PowerManageSdkDeepSleep(1);
        }
    }
    else if(oldMode == 2)//transport mode
    {
        if(newMode == 0)
        {
            //退出深度休眠
            PowerManageSdkDeepSleep(0);
        }
        else if(newMode == 1)
        {
            //退出深度休眠
            PowerManageSdkDeepSleep(0);
            //关闭远程诊断功能
            RemoteDiagnosticSdkDisable();
        }
    }
    else 
    {
        return -1;
    }
    return 0;
}
int16_t Service2EWriteWorkingMode(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret = 0;
    uint8_t data[2] = {0};//nomal mode
    uint32_t lenth = 0;
    if(dataLength != 1)
    {
        return -1;
    }
    ret = WorkFlashUserInfoRead(E_WORKING_MODE,data,&lenth);
    if(ret != 0)
    {
        return -1;
    }
    if((data[0] == 0x5A) && (data[1] == pData[0]))
    {
        if(pData[0] == 0)
        {
            MpuPowerSyncSdkSetRkMode(1);
        }
        else if(pData[0] == 1)
        {
            MpuPowerSyncSdkSetRkMode(3);
        }
        else if(pData[0] == 2)
        {
            MpuPowerSyncSdkSetRkMode(2);
        }
        return 0;
    }
    else
    {
        if(data[0] == 0x5A)
        {
            SetWorkingMode(data[1],pData[0]);
        }
        else
        {
            SetWorkingMode(0,pData[0]);
        }
        data[0] = 0x5A;
        data[1] = pData[0];
        ret = WorkFlashUserInfoStore(E_WORKING_MODE,data,2);
        if(ret == 0)
        {
            if(pData[0] == 0)
            {
                MpuPowerSyncSdkSetRkMode(1);
            }
            else if(pData[0] == 1)
            {
                MpuPowerSyncSdkSetRkMode(3);
            }
            else if(pData[0] == 2)
            {
                MpuPowerSyncSdkSetRkMode(2);
            }
        }
    }
    
    return ret;
}

static int16_t CheckVINIsValid(uint8_t *vinData,uint16_t vinLength)
{
	int16_t ret = 0;
	uint16_t i;
	for(i=0;i<vinLength;i++)
	{
		if((vinData[i]<0x20)||(vinData[i]>0x7E))
		{
			ret = -1;
			break;
		}
	}
	return ret;
}

int16_t Service2EWriteVIN(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  uint8_t vin[17];
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_VIN_hex,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }
    if(CheckVINIsValid(pData,dataLength)!=0)
    {
        memset(vin,0x30,17);
    }
    else
    {
        memcpy(vin,pData,17);
    }
    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_VIN,vin,17);
    if(ret!=0)
    {
      return -1;
    }  
#if(1)
    ret = ParameterSyncSdkSetToCpu(E_ParamId_VIN,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    } 
    memcpy(g_vin,pData,17);
    CheckVinWriteStatus();  
#endif
  SecocSdkReInit();
  return 0;
}

int16_t Service2EWriteSerialNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
//  uint16_t ascLength;
//  uint8_t asc[64];
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
#if 0  
  if(dataLength>(sizeof(asc)/2))//size too large
  {
    return -1;
  }
  ret = HexArrayToCharArray(pData,dataLength,asc,&ascLength);
  if(ret!=0)//convert failed
  {
    return -1;
  }
#endif  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,pData,dataLength);
  //ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  }  
#if(0)
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_SN,pData,dataLength);
  //ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_SN,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  } 
#endif
  return 0;
}

int16_t Service2EWriteICCID(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ICCID,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteTboxRegisterFlag(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_REGISTER_FLAG,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
#if(0)
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_REGISTER_FLAG,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
#endif
  return 0;
}

int16_t Service2EWriteFingerPrint(uint8_t *pData,uint16_t dataLength)
{
#if(0)
  int16_t ret;
  ret = WorkFlashWriteFingerPrint(0,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
#endif
  return 0;
}

int16_t Service2EWriteAppSoftwareFingerprint(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;

  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_APP_SOFT_FINGER_PRINT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;
}

int16_t Service2EWriteSubnetConfigListOnHighSpeedCan(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;

  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SUBNET_CONFIG_LIST_SPEED_CAN,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
  return 0;
}

static void CheckCanReportDtc(uint8_t reportValue)
{
  if(reportValue)
  {
    //SetDtcFaultState(DTC_ITEM_GATEWAY_MAPING);
  }
  else
  {
    //ClearDtcFaultState(DTC_ITEM_GATEWAY_MAPING);
  }
}

int16_t Service2EWriteDiagnosticCanReport(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(g_31ReportToDcanFlag)
  {
    return 0x22;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_DIAG_CAN_REPORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
  //GateWaySetCanReportControl(pData[0]); 
  g_2EReportToDcanVaule = pData[0];
  CheckCanReportDtc(g_2EReportToDcanVaule);
  return 0;
}

int16_t Service2EWriteProlinesChannelKey(uint8_t *pData,uint16_t dataLength)
{
  //int16_t ret;
  if(dataLength != 16)
  {
     return -1;
  }
#if(0)
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_PROLINES_CHANNEL_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
#endif
   return 0;
}
int16_t Service2EWritePhoneKeyOffLineUseTimes(uint8_t *pData,uint16_t dataLength)
{
#if(0)
  int16_t ret;

  if(dataLength != 1)
  {
     return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_PHONEKEY_OFFLINE_USETIMES,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
#endif
   return 0;
}
int16_t Service2EWriteNFCCardID(uint8_t *pData,uint16_t dataLength)
{
#if(0)
  int16_t ret;
  if(dataLength != 12)
  {
     return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_NFC_CARD_ID,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
#endif
   return 0;
}



/********************31 start routine ****************************************/
int16_t Service31CheckPreFlashConditon(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{  
  pDataOut[0] = 0;
  *pLengthOut = 1;
  return 0;
}

//int16_t CanDriverHalAppMsgDisable(typeCanHandLe canHandle);
//int16_t CanDriverHalAppMsgEnable(typeCanHandLe canHandle);



int16_t Service31StopApplication(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{  
#if(0)
  if((GetVehicleSpeed() > 10) && (GetVehicleSpeed() != 0xFFFF))
  {
      //negativeNum = 0x22;
      return 0x22;
  }
  if(lengthIn!=1)
  {
    return 0x13;//lenth negtive
  }
  //BCAN
  if(pDataIn[0]&(0x01<<6)) 
  {
    if(!(m_ApplicationStop&(0x01<<6)))
    {      
      CanDriverHalAppMsgDisable(TBOX_CAN_CHANNEL_B<<8);
    }    
  }
  else
  {
    if((m_ApplicationStop&(0x01<<6)))
    {
      CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_B<<8);
    }     
  }
  //ECAN
  if(pDataIn[0]&(0x01<<5)) 
  {
    if(!(m_ApplicationStop&(0x01<<5)))
    {
      CanDriverHalAppMsgDisable(TBOX_CAN_CHANNEL_E<<8);
    }    
  }
  else
  {
    if((m_ApplicationStop&(0x01<<5)))
    {
      CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_E<<8);     
    }    
  }
  //CCAN
  if(pDataIn[0]&(0x01<<4)) 
  {
    if(!(m_ApplicationStop&(0x01<<4)))
    {
       CanDriverHalAppMsgDisable(TBOX_CAN_CHANNEL_C<<8);
    }    
  }
  else
  {
    if((m_ApplicationStop&(0x01<<4)))
    {
      CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_C<<8);
    }    
  }
  //ICAN
  if(pDataIn[0]&(0x01<<3)) 
  {
    if(!(m_ApplicationStop&(0x01<<3)))
    {
      CanDriverHalAppMsgDisable(TBOX_CAN_CHANNEL_I<<8);
    }    
  }
  else
  {
    if((m_ApplicationStop&(0x01<<3)))
    {
      CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_I<<8);      
    }   
  }
  //ACAN
  if(pDataIn[0]&(0x01<<1)) 
  {
    if(!(m_ApplicationStop&(0x01<<1)))
    {
      CanDriverHalAppMsgDisable(TBOX_CAN_CHANNEL_A<<8);
    }    
  }
  else
  {
    if((m_ApplicationStop&(0x01<<1)))
    {
      CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_A<<8);      
    }   
  }
#endif
  //m_ApplicationStop = pDataIn[0];
  *pLengthOut = 0;
  return 0;
}

void Service31StopApplicationSetDefault(void)
{
#if(0)
  //BCAN
  if((m_ApplicationStop&(0x01<<6)))
  {
    //CanDriverHalAllTxMsgEnable(TBOX_CAN_CHANNEL_B);
    CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_B<<8);
  }   
  //ECAN
  if((m_ApplicationStop&(0x01<<5)))
  {
    //CanDriverHalAllTxMsgEnable(TBOX_CAN_CHANNEL_E);
    CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_E<<8);
  }   
  //CCAN
  if((m_ApplicationStop&(0x01<<4)))
  {
    //CanDriverHalAllTxMsgEnable(TBOX_CAN_CHANNEL_C);
     CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_C<<8);
  }   
  //ICAN
  if((m_ApplicationStop&(0x01<<3)))
  {
    //CanDriverHalAllTxMsgEnable(TBOX_CAN_CHANNEL_C);
     CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_I<<8);
  } 
  //ACAN
  if((m_ApplicationStop&(0x01<<1)))
  {
    //CanDriverHalAllTxMsgEnable(TBOX_CAN_CHANNEL_A);
    CanDriverHalAppMsgEnable(TBOX_CAN_CHANNEL_A<<8);
  }  
#endif
  //m_ApplicationStop = 0x00;
}

int16_t Service31WriteDiagnosticCanReport01(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  //int16_t ret;
  
  if(dataLength!=1)
  {
    return 0x13;//lenth negtive
  }  
  /*ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_DIAG_CAN_REPORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }*/

  //GateWaySetCanReportControl(pData[0]);
  g_31ReportToDcanFlag = 0x01;
  return 0;
}

int16_t Service31WriteDiagnosticCanReport02(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  uint8_t tem[32];
  uint32_t len;
  if(g_31ReportToDcanFlag)
  {
    g_31ReportToDcanFlag = 0;
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_DIAG_CAN_REPORT,tem,&len);
    //GateWaySetCanReportControl(tem[0]);
  }
  return 0;
}

int16_t Service31WriteDiagnosticCanReport03(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  pDataOut[0] = g_31ReportToDcanValue;
  *pLengthOut = 0x01;
  return 0;
}

void Service31WriteDiagnosticCanReportSetDefault(void)
{
  uint8_t tem[32];
  uint32_t len;
  if(g_31ReportToDcanFlag)
  {
    g_31ReportToDcanFlag = 0;
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_DIAG_CAN_REPORT,tem,&len);
    //GateWaySetCanReportControl(tem[0]);    
  }
  g_31ReportToDcanValue = 0x00;
}

/*******************************************************************************/





/*******************************************************************************/
void CheckEolConfigureState(void)
{
    //uint8_t tem[20];
    //uint32_t length;
    static uint32_t count = 150;
    uint8_t i = 0;
    count++;
    if(count<200)
    {
        return;
    }
    count = 0;
    //WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_EOL_CONFIG,tem,&length);
    
    for(i = 0; i < sizeof(g_vehicleTypeConfigure);i++)
    {
        if(g_vehicleTypeConfigure[i]&0xFF)//configured
        {
            //ClearDtcFaultState(DTC_ITEM_CONFIGURE_BYTE_NOT_COMPLETE);
            return;
        }
        else
        {
            if(i == 11)
            {
                //SetDtcFaultState(DTC_ITEM_CONFIGURE_BYTE_NOT_COMPLETE);
            }
        }
    }
}

void CheckCanReportState(void)
{
    static uint32_t count = 150;
    count++;
    if(count<200)
    {
       return;
    }
    count = 0;
    CheckCanReportDtc(g_2EReportToDcanVaule);
}
void EolConfigureInit(void)
{
  //g_vehicleTypeConfigure;
  uint8_t tem[32];
  uint32_t len;
  len = 0;
  WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_EOL_CONFIG,tem,&len);
  
  if(len!=12)
  {
    memset(tem,0x00,sizeof(tem));
    WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_EOL_CONFIG,tem,12);
  }
  memcpy(g_vehicleTypeConfigure,tem,sizeof(g_vehicleTypeConfigure));
  
}

const uint8_t *GetVehicleTypeConfigure(void)
{
  return g_vehicleTypeConfigure;
}

void DiagCanReportValueInit(void)
{
  uint8_t tem[32];
  uint32_t len;
  
  WorkFlashVehicleInforRead(E_PARAMETER_INFO_DIAG_CAN_REPORT,tem,&len);
  if(tem[0]>=0x07)
  {
    tem[0] = 0x00;
    WorkFlashVehicleInforStore(E_PARAMETER_INFO_DIAG_CAN_REPORT,tem,1);
  }
  g_2EReportToDcanVaule = tem[0];
  //GateWaySetCanReportControl(tem[0]);
}

void VinInit(void)
{
	int16_t ret;
	uint8_t vinTem[40];
	uint32_t length;
	memset(g_vin,0x00,17);
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VIN,vinTem,&length);
	if(ret != 0)
	{
		return;
	}
	if(CheckVinIsAsciiZero(vinTem)!=0)
	{
	  memcpy(g_vin,vinTem,17);
	  return ;
	}
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VIN_hex,vinTem,&length);
	if(ret != 0)
	{
	  return;
	}
	memcpy(g_vin,vinTem,17);
}

static void CheckVinWriteStatus(void)
{
#if(0)
	uint8_t i;
	uint8_t vinValidFlag;
	vinValidFlag = 0;
	for(i=0;i<17;i++)
	{
		if(g_vin[i]!=0x00)
		{
			vinValidFlag = 1;
			break;
		}
	}
#endif
	//TBOX_PRINT("CheckVinWriteStatus--%d\r\n",vinValidFlag);
	//TBOX_PRINT("vin %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\r\n",g_vin[0],g_vin[1],g_vin[2],g_vin[3],g_vin[4],g_vin[5],g_vin[6],g_vin[7],g_vin[8],g_vin[9],g_vin[10],g_vin[11],g_vin[12],g_vin[13],g_vin[14],g_vin[15],g_vin[16]);
	/*if(vinValidFlag)
	{
		ClearDtcFaultState(DTC_ITEM_VIN_NOT_WRITEN);
	}
	else
	{
		SetDtcFaultState(DTC_ITEM_VIN_NOT_WRITEN);
	}*/
}

void CheckVinCyleProcess(void)
{
	static uint32_t count = 150;
	count++;
	if(count<200)
	{
	   return;
	}
	count = 0;
    CheckVinWriteStatus();
}

void EskkeyCheckInit(void)
{
  uint32_t dataLength;
  uint8_t key[64];
  uint8_t keyValid;
  int16_t ret;
  //uint16_t i;
  
  dataLength = 0;
  keyValid = 0;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ESK_KEY,key,&dataLength);
  if(ret==0)
  {
    if(dataLength==16)
    {
      if(CheckEskValid(key)==0)
      {
        keyValid = 1;
      }
    }    
  } 
  g_eskKeyValid = keyValid;  
}

void CheckEskValidtateDtc(void)
{
    //uint8_t tem[20];
    //uint32_t length;
    static uint32_t count = 150;
    count++;
    if(count<200)
    {
       return;
    }
    count = 0;

    if(g_eskKeyValid)//configured
    {
        //ClearDtcFaultState(DTC_ITEM_ESK_NOT_WRITEN);
    }//
    else
    {
        //SetDtcFaultState(DTC_ITEM_ESK_NOT_WRITEN);
    }
}

int16_t Service2EWriteVehicleNetworkConfigurationF1A1(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1A1,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
} 

int16_t Service2EWriteVehicleNetworkConfigurationF1B0(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1B0,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteECUlevelNetworkConfigurationDataIdentifierF1B1(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_LEVEL_NETWORK_CONFIGURATION_DATA_IDENTIFIER_F1B1,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteVehicleModelF112(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // } 
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_VEHICLE_MODEL_F112,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteFingerprintF1F0(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_FINGERPRINT_F1F0,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteFingerprintEthernetF0FF(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // } 
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_FINGERPRINT_ETHERNET_F0FF,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteVehicleSoftwareVersionF1AB(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_VEHICLE_SOFEWARE_VERSION_F1AB,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}
#if 0
//生产模式
int16_t Service2EWriteWorkingModeF1C2(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    /*  if(GetSyncParameterFromCpuIsFinished()!=0)
    {
    return -1;
    }*/ 
    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_WORKING_MODE_F1C2,pData,dataLength);
    if(ret!=0)
    {
        return -1;
    }  
   if(pData[0] == 1)//生产模式，禁止DTC
   {
       DtcProcessDisable();
   }
   else
   {
       DtcProcessEnable();
   }
    return 0;  
}
#endif
//维修模式
int16_t Service2EWriteMaintenanceModeFD00(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
/*  if(GetSyncParameterFromCpuIsFinished()!=0)
  {
    return -1;
  } */
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_MAINTENANCE_MODE_FD00,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetWorkingMode(pData[0]);
  return 0;  
}

int16_t Service2EWriteSecOCKeyF1C7(uint8_t *pData,uint16_t dataLength)//SecOC密钥 HEX
{
    int16_t ret;
    int16_t i;
    uint8_t keyValid;
    keyValid = 0;
    for(i=0;i<16;i++)
    {
        if(pData[i]!=0)
        {
            keyValid = 1;
            break;
        }
    }
    if(0==keyValid)
    {
        return -1;
    }
    SecocSdkSetTripCount(0);
    SecocSdkSetRestCount(0);
    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SECOC_KEY_F1C7,pData,dataLength);
    if(ret!=0)
    {
        return -1;
    } 
    SecocSdkReInit();
    SecocSdkStartSyncMsgRequest();
    return 0;  
}

int16_t Service22ReadPkiStateF1CA(uint8_t *pData,uint16_t *pLength)
{
	uint8_t ret = 0;
	*pLength = 1;
    //ret = GetPKIState();
  pData[0] = ret;
	return 0;
}

int16_t Service22ReadCsrHashF1CD(uint8_t *pData,uint16_t *pLength)//CSR_HASH 	ASCII	20
{
    //int16_t ret;
    uint32_t dataLength;
    
    uint8_t i,value;
    
//    if(GetSyncParameterFromCpuIsFinished()!=0)//判断是否
//    {
//        return -1;
//    }
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_CSR_HASH_F1CD,pData,&dataLength);
//    GetCsrHash(pData,&length);
    if(dataLength > 20)
    {
        return -1;
    }
    value = 0;
    for(i = 0;i < dataLength;i++)
    {
        if((pData[i] != 0) && (pData[i] != 0xFF))
        {
            value = 1;
            break;
        }
    }
    if(0 == value)
    {
        return -1;
    }
    *pLength = dataLength; 
    return 0;
}

int16_t Service2EWriteCertificateF1CB(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret = 0;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }  
  //ret = McuSendCertificateDataToCpu(pData,&dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  return 0;  
}

int16_t Service2EWriteSK(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  /*if(GetSyncParameterFromCpuIsFinished()!=0)
  {
    return -1;
  }  */
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SK,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
  return 0;  
}

int16_t Service2EWriteManufactureDateF18B(uint8_t *pData, uint16_t dataLength)
{
    int16_t ret;
    //uint16_t ascLength;
    //uint8_t asc[64];

    /*if (GetSyncParameterFromCpuIsFinished() != 0)
    {
        return -1;
    }*/
//    ret = HexArrayToCharArray(pData, dataLength, asc, &ascLength);
//    if (ret != 0) //convert failed
//    {
//        return -1;
//    }
//    ret = WorkFlashVehicleInforStore(NONVOLATILE_ECU_MANUFACTURE_DATE_F18B, asc, ascLength);
    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_MANUFACTURE_DATE, pData, dataLength);
    if (ret != 0)
    {
        return -1;
    }

    /*ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_MANUFACTURE_DATE,asc,ascLength);
    if(ret!=0)
    {
      return -1;
    } */
    return 0;
}

int16_t Service2EWriteTripRestAA11(uint8_t *pData, uint16_t dataLength)
{
    // SetTripCount(pData[0]);
    // SetRestCount(pData[1]);
    return 0;
}

int16_t Service2EWritePIN(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  /*if(GetSyncParameterFromCpuIsFinished()!=0)
  {
    return -1;
  }  */
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_PIN,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
  return 0;  
}

int16_t Service22ReadFingerprintEthernetF0FF(uint8_t *pData,uint16_t *pLength)//指纹	ASCII	48
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_FINGERPRINT_ETHERNET_F0FF,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadVehicleModelF112(uint8_t *pData,uint16_t *pLength)//车辆 	ASCII	20
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VEHICLE_MODEL_F112,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadVehicleManufacturerECUSoftwareVersionNumberDataIdentifierF189(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF189,sizeof(g_didF189));
    *pLength = sizeof(g_didF189);
    
    return 0; 
}

int16_t Service22ReadVehicleNetworkConfigurationF1A1(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1A1,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadCANmatrixVersionF1A2(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1A2,sizeof(g_didF1A2));
    *pLength = sizeof(g_didF1A2);
    
    return 0; 
}

int16_t Service22ReadVehicleSoftwareVersionF1AB(uint8_t *pData,uint16_t *pLength)//整车软件版本 10
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VEHICLE_SOFEWARE_VERSION_F1AB,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadVehicleNetworkConfigurationF1B0(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1B0,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadECUlevelNetworkConfigurationDataIdentifierF1B1(uint8_t *pData,uint16_t *pLength)	//整车网络配置	HEX	31
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_LEVEL_NETWORK_CONFIGURATION_DATA_IDENTIFIER_F1B1,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadIdentifierF1B2(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1B3,sizeof(g_didF1B3));
    *pLength = sizeof(g_didF1B3);
    
    return 0; 
}

int16_t Service22ReadNodeAddressF1B3(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1B3,sizeof(g_didF1B3));
    *pLength = sizeof(g_didF1B3);
    
    return 0; 
}

int16_t Service22ReadCompID1F1B4(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1B4,sizeof(g_didF1B4));
    *pLength = sizeof(g_didF1B4);
    
    return 0; 
}

int16_t Service22ReadNameF1B5(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1B5,sizeof(g_didF1B5));
    *pLength = sizeof(g_didF1B5);
    
    return 0; 
}

int16_t Service22ReadToolVersionF1B6(uint8_t *pData,uint16_t *pLength)//工具版本	ASCII	8
{
    memcpy(pData,g_didF1B6,sizeof(g_didF1B6));
    *pLength = sizeof(g_didF1B6);
    return 0;
}

int16_t Service22ReadCompID2F1B9(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1B9,sizeof(g_didF1B9));
    *pLength = sizeof(g_didF1B9);
    
    return 0; 
}

int16_t Service22ReadSoftwareInformationF1BC(uint8_t *pData,uint16_t *pLength)//软件信息 10
{
    memcpy(pData,g_didF1BC,sizeof(g_didF1BC));
    *pLength = sizeof(g_didF1BC);
    return 0;
}

int16_t Service22ReadHardwareInformationF1BD(uint8_t *pData,uint16_t *pLength)//Hardware Information 10
{
    memcpy(pData,g_didF1BD,sizeof(g_didF1BD));
    *pLength = sizeof(g_didF1BD);
    return 0;
}

int16_t Service22ReadWorkingModeF1C2(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_WORKING_MODE_F1C2,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadUINF1C5(uint8_t *pData,uint16_t *pLength)//终端安全序列号	ASCII	20
{
    //int16_t ret;
    uint32_t dataLength;
    
    uint8_t i,value;
//    if(GetSyncParameterFromCpuIsFinished()!=0)//判断是否
//    {
//        return -1;
//    }
    
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_UIN,pData,&dataLength);
    //GetUIN(pData,&length);
    if(dataLength > 20)
    {
        return -1;
    }
    value = 0;
    //TBOX_PRINT("%x\n",pData[0]);
    for(i = 0;i < dataLength;i++)
    {
        if((pData[i] != 0) && (pData[i] != 0xFF))
        {
            value = 1;
            break;
        }
    }
    if(0 == value)
    {
        return -1;
    }
    *pLength = dataLength; 
    return 0;
}

int16_t Service22ReadSecocVersion(uint8_t *pData,uint16_t *pLength)
{
	//uint8_t len;
	//SecOcGetVersion(pData,&len);
	*pLength = 20;//len;
	return 0;
}

int16_t Service22ReadCalibrationSoftwareVersionF1C0(uint8_t *pData,uint16_t *pLength)
{
    memcpy(pData,g_didF1C0,sizeof(g_didF1C0));
    *pLength = sizeof(g_didF1C0);
    
    return 0; 
}

int16_t Service22ReadSecOCVersionNumberF1C8(uint8_t *pData,uint16_t *pLength)//SecOC版本号 1
{
    memcpy(pData,g_didF1C8,sizeof(g_didF1C8));
    *pLength = sizeof(g_didF1C8);
    return 0;
}

int16_t Service22ReadCsrF1C9(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length = 840;
    int16_t ret;
    //ret = WorkFlashVehicleInforRead(WORKFLASH_ADDRESS_RESERVED4,pData,&length);
    ret = FlashHalDataBlockRead(WORKFLASH_ADDRESS_RESERVED4,0,pData,length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadCertificateSerialNumberF1CC(uint8_t *pData,uint16_t *pLength)
{
  //int16_t ret;
  
  // if(GetSyncParameterFromCpuIsFinished()!=0)
  // {
  //   return -1;
  // }  
  // ret = McuGetDataFromCpu(1,pData,pLength);
  // if(ret!=0)
  // {
  //   return -1;
  // }  
  return 0; 
}

int16_t Service22ReadECUTypeF1D9(uint8_t *pData,uint16_t *pLength)//ECUType 1
{
    uint8_t arry[1] = {0};
    arry[0] = 0x01;
    memcpy(pData,arry,sizeof(arry));
    *pLength = sizeof(arry);
    return 0;
}

int16_t Service22ReadFingerprintF1F0(uint8_t *pData,uint16_t *pLength)//指纹	ASCII	26
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_FINGERPRINT_F1F0,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}



int16_t Service22ReadMaintenanceModeFD00(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_MAINTENANCE_MODE_FD00,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadGPSRNetworkStatus600D(uint8_t *pData,uint16_t *pLength)//4G网络联网状态
{
    NetInfoSync_t netInfo;
    if(StateSyncGetNetInfo(&netInfo)!=0)//判断是否
    {
        return -1;
    }
    *pLength = 1;
    pData[0] = netInfo.creg;
    return 0;
}

int16_t Service22ReadGPSRNetworkSignalStrength600E(uint8_t *pData,uint16_t *pLength)//4G网络信号强度
{
    NetInfoSync_t netInfo;
    if(StateSyncGetNetInfo(&netInfo)!=0)//判断是否
    {
        return -1;
    }
    *pLength = 1;
    pData[0] = netInfo.csq;
    return 0;
}

int16_t Service22ReadSK(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SK,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadSecocKeyCC77(uint8_t *pData,uint16_t *pLength)
{
	uint8_t tem[32];
	uint32_t len;
	uint8_t i;
	WorkFlashVehicleInforRead(E_PARAMETER_INFO_SECOC_KEY_F1C7,tem,&len);
	i = 0;
	for(;i<7;i++)
	{
		pData[i] = tem[5+i];
	}
	for(;i<16;i++)
	{
		 pData[i]=tem[15+i];
	}
	*pLength = 16;
	return 0;
}

int16_t Service22ReadPIN(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret;
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_PIN,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = length; 
    return 0;
}

int16_t Service22ReadTripRestAA11(uint8_t *pData,uint16_t *pLength)
{
    // uint32_t TripCount,RestCount;
    // *pLength = 8;
    // TripCount = GetTripCount();
    // RestCount = GetRestCount();
    // memcpy(&pData[0],(uint8_t *)&TripCount,4);
    // memcpy(&pData[4],(uint8_t *)&RestCount,4);
    return 0;
}

int16_t Service22ReadEmmcStateAA01(uint8_t *pData,uint16_t *pLength)//获取EMMC状态
{
    //int16_t ret = 0;
    //ret = GetEmmcState();
    // if(ret == 0)
    // {
    //     return -1;
    // }
    //pData[0] = ret;
    pData[0] = 1;
    *pLength = 1;
    return 0;
}

/*31 01 service*/
int16_t Service31StartRoutineWritePIN(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;

    pDataOut[0] = 0;
    *pLengthOut = 0;

    ret = Service2EWritePIN(pDataIn,lengthIn);
    if(ret!=0)
    {
        return 0x72;//写入Flash出现错误
    }
    return 0; 
}

int16_t Service31StartRoutineWriteSK(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;

    pDataOut[0] = 0;
    *pLengthOut = 0;

    ret = Service2EWriteSK(pDataIn,lengthIn);
    if(ret!=0)
    {
        return 0x72;//写入Flash出现错误
    }
    return 0; 
}

typedef struct
{
    int8_t tbox_verify_pin_start;//TBOX验证PIN开始标志，0结束；1开始
    int8_t tbox_verify_pin_results;//TBOX验证PIN的结果，0失败；1成功
    int8_t tbox_verify_sk_start;//TBOX验证SK开始标志，0结束；1开始
    int8_t tbox_verify_sk_results;//TBOX验证SK的结果，0失败；1成功
}str_tboxLearnFlagTypeDef;

static str_tboxLearnFlagTypeDef str_tboxLearnFlag = {0,0,0,0};

int8_t getTboxVerifyPINstart(void)
{
    return str_tboxLearnFlag.tbox_verify_pin_start;
}

void setTboxVerifyPINstart(int8_t flag)
{
    str_tboxLearnFlag.tbox_verify_pin_start = flag;
}

void setTboxVerifyPINresults(int8_t flag)
{
    str_tboxLearnFlag.tbox_verify_pin_results = flag;
}

int8_t getTboxVerifySKstart(void)
{
    return str_tboxLearnFlag.tbox_verify_sk_start;
}

void setTboxVerifySKstart(int8_t flag)
{
    str_tboxLearnFlag.tbox_verify_sk_start = flag;
}

void setTboxVerifySKresults(int8_t flag)
{
    str_tboxLearnFlag.tbox_verify_sk_results = flag;
}

int16_t Service31StartRoutineVerifyPIN(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = 0;
    *pLengthOut = 0;
    str_tboxLearnFlag.tbox_verify_pin_start = 1;
    return 0;
}

int16_t Service31StartRoutineVerifySK(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = 0;
    *pLengthOut = 0;
    str_tboxLearnFlag.tbox_verify_sk_start = 1;
    return 0;
}

int16_t Service31StartRoutineGetLearn(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = 0;
    *pLengthOut = 0;
    return 0;
}

//触发PKI
int16_t Service31StartRoutinePKI(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = 0;
    *pLengthOut = 0;
    //triggerPKIToCpu();
    return 0;
}

//验证诊断仪PIN
uint8_t VerifyEolPINResults =0;
int16_t Service31StartRoutineVerifyEolPIN(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    uint8_t pin[4] = {0};
    uint16_t pin_len = 0;
    Service22ReadPIN(pin,&pin_len);
    
    if(0 == memcmp(pDataIn,pin,4))
    {
        VerifyEolPINResults = 1;
    }
    pDataOut[0] = 0;
    *pLengthOut = 0;
    return 0;
}

int16_t Service31StartRoutineClearPINSK(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    uint8_t pin[4] = {0xFF,0xFF,0xFF,0xFF};
    uint8_t sk[16] = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};
    Service2EWritePIN(pin,4);
    Service2EWriteSK(sk,16);
    
    pDataOut[0] = 0;
    *pLengthOut = 0;
    return 0;
}

/*31 03 service*/
int16_t Service31RequestRoutineResultsVerifyEolPIN(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = VerifyEolPINResults;
    *pLengthOut = 1;
    VerifyEolPINResults = 0;
    return 0;
}

int16_t Service31RequestRoutineResultsReadPIN(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;

    ret = Service22ReadPIN(pDataOut,pLengthOut);
    if(ret!=0)
    {
        return 0x72;//写入Flash出现错误
    }
    return 0; 
}

int16_t Service31RequestRoutineResultsReadSK(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;

    ret = Service22ReadSK(pDataOut,pLengthOut);
    if(ret!=0)
    {
        return 0x72;//写入Flash出现错误
    }
    return 0; 
}

//获取验证结果
int16_t Service31RequestRoutineResultsVerifyPIN(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;
    //1、从FLASH中读取PIN码
    ret = Service22ReadPIN(pDataOut,pLengthOut);
    if(ret!=0)
    {
        return 0x72;
    }
    //TBOX_PRINT("len = %d\n",*pLengthOut);
    //2、读取验证结果
    if(1 == str_tboxLearnFlag.tbox_verify_pin_results)
    {
        pDataOut[*pLengthOut] = 1;
    }
    else
    {
        pDataOut[*pLengthOut] = 0;
    }
    (*pLengthOut )+= 1;
    //3、验证结果清除
    str_tboxLearnFlag.tbox_verify_pin_results = -1;
    return 0;
}

int16_t Service31RequestRoutineResultsVerifySK(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;
    //1、从FLASH中读取SK码
    ret = Service22ReadSK(pDataOut,pLengthOut);
    if(ret!=0)
    {
        return 0x72;
    }
    //2、读取验证结果
    if(1 == str_tboxLearnFlag.tbox_verify_sk_results)
    {
        pDataOut[*pLengthOut] = 1;
    }
    else
    {
        pDataOut[*pLengthOut] = 0;
    }
    (*pLengthOut )+= 1;
    //3、验证结果清除
    str_tboxLearnFlag.tbox_verify_sk_results = -1;
    return 0;
}

int16_t Service31RequestRoutineResultsGetLearn(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = 1;
    *pLengthOut = 1;
    return 0;
}

int16_t Service31RequestRoutineResultsClearPINSK(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    pDataOut[0] = 1;
    *pLengthOut = 1;
    return 0;
}

int16_t Service31RequestRoutineResultsPKI(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut)
{
    int16_t ret = 0;

    *pLengthOut = 1;
    //ret = GetPKIState();
    pDataOut[0] = ret;
    
    return 0; 
}

