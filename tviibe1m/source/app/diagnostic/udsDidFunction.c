#include "udsDidFunction.h"
#include <string.h>
#include <math.h>
#include "ParameterStoreManageApp.h"
#include "canHal.h"

#include "parameterSyncSdk.h"
#include "powerManageSdk.h"
#include "vehicleSignalApp.h"

#include "batterySdk.h"
#include "timeSyncSdk.h"
//#include "mcu_cpu_sync/mcu_control_cpu_interface.h
#include "peripheralHal.h"
#include "projectConfigure.h"
#include "stateSyncSdk.h"
#include "mpuPowerSyncSdk.h"
#include "mcuMpuSyncTask.h"
#include "ecallHal.h"

typedef struct
{
    uint32_t year;
    uint8_t  month;
    uint8_t  day;
    uint8_t  hour;
    uint8_t  minute;
    uint8_t  second;
}TimeSevice_t;
#define ECU_NAME_F197       "TBOX  "//
#define ECU_NAME_F1A2       "CV01  "//

static uint8_t m_vehicleTypeConfigure[12];
//static uint8_t m_ApplicationStop = 0x00;
static uint8_t m_31ReportToDcanFlag = 0;
static uint8_t m_31ReportToDcanValue = 0;
static uint8_t m_2EReportToDcanVaule = 0;
const char m_UCUType[] = "SGMW-UCU-05";
static uint8_t m_Vin[17];
static uint8_t m_eskKeyValid = 0;
static uint8_t m_hardwareVersion[7] = {'0','0','1','0','0','1'};
static uint8_t m_softwareVersion[7] = {'0','0','2','0','0','6'};

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
  uint16_t u16Length;  
  u16Length = 0;
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
  ProjectConfigGetPartNumber(pData,&u16Length);
  *pLength = 15;
#endif  
  return 0; 
}

int16_t Service22ReadSupplierId(uint8_t *pData,uint16_t *pLength)
{	
	uint16_t length;
	
	length = 0;
	ProjectConfigGetSupplierIdentifier(pData,&length);	
	*pLength=7L;
	return 0;
}

int16_t Service22ReadHardwareVersion(uint8_t *pData,uint16_t *pLength)
{
	uint8_t arry[4] = {0};
	
	arry[0] = MCU_HARDWARE_VERSION_F191>>24;//0010
	arry[1] = MCU_HARDWARE_VERSION_F191>>16;//0010
	arry[2] = MCU_HARDWARE_VERSION_F191>>8;
	arry[3] = MCU_HARDWARE_VERSION_F191;
	memcpy(pData,arry,sizeof(arry));
	*pLength=4L;
	return 0;

}
int16_t Service22ReadEOLHardwareVersion(uint8_t *pData,uint16_t *pLength)
{
	uint32_t length;
	int16_t ret;
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_HARDWARE_VERSION,pData,&length);
	if(ret != 0)
	{
	  return -1;
	}
	*pLength = 4L;
	return 0;  

}

int16_t Service22ReadSoftwareVersion(uint8_t *pData,uint16_t *pLength)
{
	uint8_t arry[4] = {0};
	arry[0] = MCU_SOFTWARE_VERSION_F189>>24;//0010
	arry[1] = MCU_SOFTWARE_VERSION_F189>>16;//0010
	arry[2] = MCU_SOFTWARE_VERSION_F189>>8;
	arry[3] = MCU_SOFTWARE_VERSION_F189;
	memcpy(pData,arry,sizeof(arry));
	*pLength=4L;
	return 0;
	
}

int16_t Service22ReadActiveDiagnosticInformation(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length = 0;
    
    ProjectConfigGetActiveDiagnosticInformation(pData,&length);

    *pLength = length;
    return 0; 
}

int16_t Service22ReadBasicAppSoftwareNumber(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length = 0;
    
    ProjectConfigGetBasicAppSoftwareNumber(pData,&length);

    *pLength = length;
    return 0; 
}

int16_t Service22ReadCalibrationSoftwareNumber(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length = 0;
    
    ProjectConfigGetCalibrationSoftwareNumber(pData,&length);

    *pLength = length;
    return 0; 
}

int16_t Service22ReadNetworkNumber(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length = 0;
    
    ProjectConfigGetNetworkNumber(pData,&length);

    *pLength = length;
    return 0; 
}

int16_t Service22ReadOsSoftwareVersionNumber(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length = 0;
    
    ProjectConfigGetOsSoftwareVersionNumber(pData,&length);

    *pLength = length;
    return 0; 
}

int16_t Service22ReadSystemName(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  //int16_t ret;
  //ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SOFTWARE_VERSION,pData,&length);
  ProjectConfigGetPartName(pData,&length);

  *pLength = 6;
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
	uint8_t arry[4] = {0,0x51,0,0};
	memcpy(pData,arry,sizeof(arry));
	*pLength=4L;
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
	*pLength = 6;
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
  *pLength = 17; 
  return 0;
}
int16_t Service22ReadOEMSKLearningStatus(uint8_t *pData,uint16_t *pLength)
{
	uint32_t length;
	
	*pData = m_eskKeyValid;// 1 = learn 
	
	*pLength = 1; 
	return 0;
}
#if(0)
int16_t Service22ReadIpAddress(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_WORK_ADDRESS,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}

int16_t Service22ReadIpPort(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_WORK_PORT,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;
}

int16_t Service22ReadPublicKey(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_PUBLIC_KEY,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;
}

int16_t Service22ReadTboxEcallNumber(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_ECALL_NUMBER,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;   
  return 0;
}
#endif
#if(0)
int16_t Service22ReadTboxBcallNumber(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_BCALL_NUMBER,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}
#endif
#if(0)
int16_t Service22ReadTboxIcallNumber(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_ICALL_NUMBER,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}
#endif
#if(0)
int16_t Service22ReadTspCallNumber1(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TSP_CALL_NUMBER1,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}
#endif
#if(0)
int16_t Service22ReadTspCallNumber2(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TSP_CALL_NUMBER2,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}


int16_t Service22ReadTspCallNumber3(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TSP_CALL_NUMBER3,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}
#endif

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
#if(0)
int16_t Service22ReadBID(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_BID,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length; 
  return 0;
}
#endif
int16_t Service22ReadSerialNumber(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  uint8_t asc[64];
  uint32_t ascLength;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_CV01_SERIAL_NUMBER,pData,&length);
  // ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,asc,&ascLength);
  if(ret != 0)
  {
    return -1;
  }

  // ret = CharArrayToHexArray(asc,ascLength,pData,&length);
  *pLength = 35;
  return 0;
}

int16_t Service22ReadICCID(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    //return -1;
  }
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ICCID,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 20; 
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
#if(0)
int16_t Service22ReadTboxPreKey(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_PRE_KEY,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;
}
#endif

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
#if(0)
int16_t Service22ReadKeyType(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_KEY_TYPE,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;
}

int16_t Service22ReadTboxMsgNumber1(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TSP_MSG_NUMBER1,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;
}

int16_t Service22ReadTboxMsgNumber2(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TSP_MSG_NUMBER2,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;
}

int16_t Service22ReadCanUploadCycle(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_CAN_LOAD_CYCLE,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;
  return 0;
}

int16_t Service22ReadTboxModel(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_MODEL,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;
}

int16_t Service22ReadCarModeType(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_CAR_MODE_TYPE,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = length;  
  return 0;  
}
#endif
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

int16_t Service22ReadPinKL15Status(uint8_t *pData,uint16_t *pLength)
{
  pData[0] = PeripheralHalGetKl15Status();

  *pLength = 1;
  return 0;  
}

int16_t Service22ReadKL30Voltage(uint8_t *pData,uint16_t *pLength)
{
  uint32_t KL30Voltage;
  //ReadPowerVoltage(&voltage);
    PeripheralHalAdGet(AD_CHANNEL_KL30, &KL30Voltage);
    KL30Voltage = KL30Voltage / 100;
	if(KL30Voltage > 50 )
	{
	  KL30Voltage = KL30Voltage + 1;
	}
	
    pData[0] = KL30Voltage>>8;
    pData[1] = KL30Voltage;
	
  *pLength = 2;
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
  //temperature += 1000;//offset  1000(100��)
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
#if(0)
  ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_GNSS,pData,pLength);
#endif  

  return ret;
  
}

int16_t Service22ReadGNSSSLocationStatus(uint8_t *pData,uint16_t *pLength)
{
  uint8_t data[20];
  //uint16_t length;
  
  *pLength = 1;
  
  int16_t ret;
  
  ret = 0;//test
  //ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_GNSS,data,&length);
  LocationInfoSync_t localtionInfo;
  if(StateSyncGetLocationInfo(&localtionInfo) == 0)
  {
      //Bit0-bit5: GNSS定位状�?0: 未定�?1: 单点定位 2: 浮点定位 3: RTK定位
      if ((localtionInfo.locationState & 0x1F) == 0)
      {
          data[0] = 0x01;
      }
      else
      {
          data[0] = 0x00;
      }
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
#endif
  //*pData = data[0];

  return ret;
}

int16_t Service22ReadGNSSStatus(uint8_t *pData,uint16_t *pLength)
{
  uint8_t data[20];
  //uint16_t length;
  
  *pLength = 1;
  LocationInfoSync_t localtionInfo;
  int16_t ret;
  
  ret = 0;//test
  ///ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_GNSS,data,&length);
#if(0)
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
          status = 0x03;
      }
      else if(localtionInfo.wireState == 1)
      {
          status = 0x02;
      }
      else if(localtionInfo.wireState == 2)
      {
          status = 0x01;
      }
      else if(localtionInfo.wireState == 3)
      {
          status = 0x01;
      }
      else
      {
          status = 0x00;
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

int16_t Service22ReadEMMCStatus(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = 0;
    CpuDevicesStatus_t cpuDevicesStatus;

    *pLength = 1;
    StateSyncGetDevicesStatus(&cpuDevicesStatus);
    if(cpuDevicesStatus.EMMCStatus == 0)
    {
        *pData = 0x00;
    }
    else
    {
        *pData = 0x17;
    }

    return ret;
}

int16_t Service22ReadGPRSModeStatus(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = 0;
    *pLength = 1;

    *pData = MpuPowerSyncSdkGetNadModuleStatus();//0x00;//normal;01:fault

    return ret;
}
int16_t Service22ReadUsimWorkStatus(uint8_t *pData,uint16_t *pLength)
{  
	uint8_t hdop = 0;
	NetInfoSync_t NetSync;

	if(StateSyncGetNetInfo(&NetSync) == 0)
	{
	    hdop = NetSync.simCardStatus;
	}
	    
	pData[0] = hdop;
	*pLength = 1;
  	return 0;  
}
int16_t Service22ReadOtaVersion(uint8_t *pData,uint16_t *pLength)
{  
	uint8_t arry[16] = MCU_OTA_VERTION_110F;
    uint32_t length;
    int16_t ret = -1;
	

    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_OTA_VER_DATE,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
	if(pData[0] == 0x30)
	{
		memcpy(pData,arry,sizeof(arry));
	}
	else
	{
		//NULL
	}
	*pLength=15L;
	
	return 0;
}

int16_t Service22ReadOtataskVersion(uint8_t *pData,uint16_t *pLength)
{  
	uint8_t hdop = 0;
	NetInfoSync_t NetSync;
	uint8_t arry[16] = MCU_OTA_TASK_VERTION_1110;
	if(StateSyncGetNetInfo(&NetSync) == 0)
	{
		//arry[16] = MCU_OTA_TASK_VERTION_1110;
	}
	    
	*pLength = 15;
  	return 0;  
}

int16_t Service22ReadUpDataProgress(uint8_t *pData,uint16_t *pLength)
{  
    int16_t ret = 0;
    *pLength = 1;

    *pData = GetUpDataProgress();//0x00;//normal;01:fault
	    
  	return 0;  
}

int16_t Service22ReadUpDataResult(uint8_t *pData,uint16_t *pLength)
{  
    int16_t ret = 0;
    *pLength = 1;

    *pData = GetUpDataResult();//0x00;//normal;01:fault
    
  	return 0;  
}

int16_t Service22ReadBuiltantennaStatus(uint8_t *pData,uint16_t *pLength)
{  
  *pLength = 1;
  
  *pData = 0x00;//don't have
  return 0;  
}
int16_t Service22ReadUsimNetworkstandardStatus(uint8_t *pData,uint16_t *pLength)
{  
  *pLength = 1;
  *pData = 0x02;
  return 0;  
}
int16_t Service22ReadUsimOperatorStatus(uint8_t *pData,uint16_t *pLength)
{  
  *pLength = 1;
  *pData = 0x01;
  return 0;  
}
int16_t Service22ReadSOC(uint8_t *pData,uint16_t *pLength)
{
	uint32_t canData;

	const can_signal_configure_t *pCan0SignalConfigure = NULL;	  
	double dataVaule = 0;
	int16_t ret =0;
	
	*pLength = 2;
	pCan0SignalConfigure = GetCan0SignalConfigure();
	ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->BMS_RealSOC,&dataVaule);	
	canData = (uint32_t)dataVaule*1;
	pData[0] = (canData>>8);
	pData[1] = (canData>>0);
	return ret;
  
}

int16_t Service22ReadNADPrimaryAntenaStatus(uint8_t *pData,uint16_t *pLength)
{

    NetInfoSync_t netInfo;
    if(StateSyncGetNetInfo(&netInfo) == 0)
    {
        if(netInfo.mainAntennaStatus == 1)
        {
            pData[0] = 0;
        }
        else if(netInfo.mainAntennaStatus == 2)
        {
            pData[0] = 1;
        }
        else if(netInfo.mainAntennaStatus == 3)
        {
            pData[0] = 2;
        }
        else
        {
            pData[0] = 0;
        }
    }
    *pLength = 1;
    return 0;
}

int16_t Service22ReadNADMinorAntenaStatus(uint8_t *pData,uint16_t *pLength)
{

    NetInfoSync_t netInfo;
    if(StateSyncGetNetInfo(&netInfo) == 0)
    {
        if(netInfo.slaveAntennaStatus == 1)
        {
            pData[0] = 0;
        }
        else if(netInfo.slaveAntennaStatus == 2)
        {
            pData[0] = 1;
        }
        else if(netInfo.slaveAntennaStatus == 3)
        {
            pData[0] = 2;
        }
        else
        {
            pData[0] = 0;
        }
    }
    *pLength = 1;
    return 0;
}

int16_t Service22ReadMicConnectionStatus(uint8_t *pData,uint16_t *pLength)
{
    pData[0] = EcallHalGetMicConnectStatus();
    *pLength = 1;

    return 0;
}

int16_t Service22ReadFactoryMode(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret = -1;

    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_FACTORY_MODE,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = 1;

    return 0;
}

int16_t Service22ReadRechargeWakeupTime(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret = -1;

    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_RECHARGE_WAKEUP_TIME,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = 2;

    return 0;
}

int16_t Service22ReadRechargeThreshold(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret = -1;

    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_RECHARGE_THRESHOLD,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength = 1;

    return 0;
}

int16_t Service22ReadBackupBatterySleepTime(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret = -1;

    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_BACKUPBATTERY_SLEEP_TIME,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength=1;

    return 0;
}

int16_t Service22ReadEcuName(uint8_t *pData,uint16_t *pLength)
{
	uint8_t arry[6] = ECU_NAME_F197;
	memcpy(pData,arry,sizeof(arry));
	*pLength=6L;
	return 0;
  
}


int16_t Service22ReadAesKey(uint8_t *pData,uint16_t *pLength)
{
    uint32_t length;
    int16_t ret = -1;

    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_AES_KEY,pData,&length);
    if(ret != 0)
    {
        return -1;
    }
    *pLength=16;

    return 0;
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

int16_t Service22ReadAPN1(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = -1;
    uint8_t apn1[] = "ccinet1"; 
    
    memset(pData, 0, 32);
    memcpy(pData, apn1, sizeof(apn1) -  1);
    *pLength = 32;
    ret = 0;//test

    return ret;
}

int16_t Service22ReadAPN2(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = -1;
    
    memset(pData, 0, 32);
    *pLength = 32;
    ret = 0;//test

    return ret;
}

int16_t Service22ReadAPN3(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = -1;
    
    memset(pData, 0, 32);
    *pLength = 32;
    ret = 0;//test

    return ret;
}

int16_t Service22ReadAPN4(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = -1;
    
    memset(pData, 0, 32);
    *pLength = 32;
    ret = 0;//test

    return ret;
}

int16_t Service22ReadCanBusStatus(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
   
  *pLength = 1;
  
 
  
  ret = 0;//test
  
  *pData = 0x00;//normal;01:fault

  return ret;
  
}

int16_t Service22ReadCanBus2Status(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = -1;
    
    *pLength = 1;
    ret = 0;        // test
    *pData = 0x01;  // 0x00:CAN  Busy 0x01:Void

    return ret;
}

int16_t Service22ReadCanBus3Status(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = -1;
    
    *pLength = 1;
    ret = 0;        // test
    *pData = 0x01;  // 0x00:CAN  Busy 0x01:Void

    return ret;
}

int16_t Service22ReadSleepMode(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret;
    
    *pLength = 1;
    ret = 0;        // test
    *pData = 0x00;  // 0x00: no sleep mode  01:local sleep mode

    return ret;
}

int16_t Service22ReadWIFIModeStatus(uint8_t *pData,uint16_t *pLength)
{
    int16_t ret = 0;
    CpuDevicesStatus_t cpuDevicesStatus;

    *pLength = 1;
    StateSyncGetDevicesStatus(&cpuDevicesStatus);
    *pData = cpuDevicesStatus.WIFIStatus;

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
    NetInfoSync_t netInfo = {0};

    if(StateSyncGetNetInfo(&netInfo) == 0)
    {
        pData[0] = (netInfo.csq)/5;
    }
	*pLength = 1;
    return 0;
}

int16_t Service22ReadNetWorkProvider(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;  
  
  ret = 0;//test  
#if(0)
  ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_NET_PROVIDER,pData,pLength);
#endif

  return ret;
}

int16_t Service22ReadNetWorkType(uint8_t *pData,uint16_t *pLength)
{
    NetInfoSync_t netInfo = {0};

    if(StateSyncGetNetInfo(&netInfo) == 0)
    {
        pData[0] = netInfo.netType;
        *pLength = 1;
    }

    return 0;
}

int16_t Service22ReadApnNumber(uint8_t *pData,uint16_t *pLength)
{
    NetInfoSync_t netInfo = {0};

    if(StateSyncGetNetInfo(&netInfo) == 0)
    {
        pData[0] = netInfo.apnCounter;
        *pLength = 1;
    }

    return 0;
}

int16_t Service22ReadCpuFlashCapacity(uint8_t *pData,uint16_t *pLength)
{
  *pLength = 4;
  
  int16_t ret;
  
  ret = 0;//test 
#if(0)
  ret = McuControlGetCpuInfo(SYNC_CPU_GET_INFO_ITEM_FLASH_CAPACITY,pData,pLength);
#endif
  return ret;
}



int16_t Service22ReadHardwareNumber(uint8_t *pData,uint16_t *pLength)
{
#if 0
  //GlobalGetSGMWSoftwareNumer(pData,pLength);
  uint32_t length;
  int16_t ret;
  uint32_t readLen = 0;
  // ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_HARDWARE_NUM,pData,&length);
    uint8_t hardVersion[30] = {0};
    /* 零部件号前5位 */
    ProjectConfigGetPartNumber(hardVersion,&length);
    length = 5;
    /* 供应商编码5位 */
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID,&hardVersion[length],&readLen);
    length += 5;
    /* 软硬件识别码1位 */
    hardVersion[length] = 'H';
    length += 1;
    /* 开发顺序号3位 */
    memcpy(&hardVersion[length],m_hardwareVersion,3);
    length += 3;
    /* 版本号3位 */
    memcpy(&hardVersion[length],&m_hardwareVersion[3],3);
    length += 3;

    memcpy(pData,hardVersion,length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 17;
#endif
  return 0;  
}

int16_t Service22ReadSoftwareNumber(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret;
#if(0)  
  uint32_t length;
  uint8_t softversion[30] = {0};
  uint32_t readLen = 0;

    /* 零部件号前5位 */
    ProjectConfigGetPartNumber(softversion,&length);
    length = 5;
    /* 供应商编码5位 */
    ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID,&softversion[length],&readLen);
    length += 5;
    /* 软硬件识别码1位 */
    softversion[length] = 'S';
    length += 1;
    /* 开发顺序号3位 */
    memcpy(&softversion[length],m_softwareVersion,3);
    length += 3;
    /* 版本号3位 */
    memcpy(&softversion[length],&m_softwareVersion[3],3);
    length += 3;

    memcpy(pData,softversion,length);
#endif
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 10;
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

int16_t Service22ReadInstallationDate(uint8_t *pData,uint16_t *pLength)
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

int16_t Service22ReadSystemConfiguration(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_SYSTEM_CONFIG,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  *pLength = 23;
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

int16_t Service22ReadRemoteconfig(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_REMOTE_CONFIG,pData,&length);
  if(ret != 0)
  {
	return -1;
  }
  *pLength = 1;
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
  *pLength = 3;
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

int16_t Service22ReadNFCCardReaderID(uint8_t *pData,uint16_t *pLength)
{
  //uint32_t length;
  //int16_t ret;
  //int16_t i;
  //int16_t flag = 1;
#if(0)
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_NFC_CARD_ID,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  for(i = 0;i< 12;i++)
  {
     if(pData[i] != 0xFF)
     {
         flag = 0;
     }
  }
  if(flag == 1)
  {
      memset(pData,0,12);
      WorkFlashVehicleInforStore(E_PARAMETER_INFO_NFC_CARD_ID, pData, 12);
  }
#endif
  *pLength = 12;
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
#if(0)
int16_t Service22ReadIpAddress_DIG(uint8_t *pData,uint16_t *pLength)
{
  uint32_t length;
  int16_t ret;
  uint32_t lentemp = 0;
  
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_WORK_ADDRESS,pData,&length);
  if(ret != 0)
  {
    return -1;
  }
  lentemp = length;
  
  ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_WORK_PORT,pData+16,&length);
  if(ret != 0)
  {
    return -1;
  }  
  lentemp += length;
  
  *pLength = lentemp; 
  return 0;
}
#endif

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

int16_t Service22ReadPhoneSignal_test(uint8_t *pData,uint16_t *pLength)
{
  *pLength = 1;
  
  NetInfoSync_t netInfo;
  
  if(StateSyncGetNetInfo(&netInfo) == 0)
  {
    pData[0] = netInfo.csq;  
    if(pData[0] > 31)
    {
        pData[0] = 0;
    }

    pData[0] = pData[0] * 3 + 7;
    *pLength = 0x01;
  }


    
  return 0;
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
#if 0
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
#else
    TimeSevice_t Beijing_Time;
    
    if(TimeSyncSdkGetRealTime(0,&Beijing_Time.year,&Beijing_Time.month,&Beijing_Time.day,&Beijing_Time.hour,&Beijing_Time.minute,&Beijing_Time.second)==0)
    {   
        pData[0] = (Beijing_Time.year-2000);
        pData[1] = (Beijing_Time.month);
        pData[2] = (Beijing_Time.day);
        pData[3] = (Beijing_Time.hour);
        pData[4] = (Beijing_Time.minute);
        pData[5] = Beijing_Time.second; //second and GPS 
    }
    else
    {
        //invalid time
        pData[0] = 0x00; //
        pData[1] = 0x00;
        pData[2] = 0x00;
        pData[3] = 0x00;
        pData[4] = 0x00;
        pData[5] = 0x00;
    }  
    *pLength = 6;
#endif

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
        
    pData[0] = hdop/10;
    *pLength = 1;
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
int16_t Service22ReadVehiclespeed(uint8_t *pData,uint16_t *pLength)
{
  int16_t ret = 0;
  uint32_t canData;
  const can_signal_configure_t *pCan0SignalConfigure = NULL;
  double dataVaule = 0;
  
  *pLength = 2;
  
  pCan0SignalConfigure = GetCan0SignalConfigure();
  ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->VCU_VehicleSpeed,&dataVaule);
  canData =(uint32_t)dataVaule*0.05625;
  *pData = canData;
  pData[0] = (canData>>8);
  pData[1] = (canData>>0);

  return ret;
  
}

int16_t Service22ReadTotalOdometer(uint8_t *pData,uint16_t *pLength)
{
	int16_t ret = 0;
	
	uint32_t canData;
	const can_signal_configure_t *pCan0SignalConfigure = NULL;
	double dataVaule = 0;
	
	*pLength = 3;
	
	pCan0SignalConfigure = GetCan0SignalConfigure();
	ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->IPK_OdometerInfor,&dataVaule);
	canData = (uint32_t)dataVaule*1;
	pData[0] = (canData>>16);
	pData[1] = (canData>>8);
	pData[2] = (canData>>0);
	return ret;
}
int16_t Service22ReadTraceabilityNumber(uint8_t *pData,uint16_t *pLength)
{
	uint8_t arry[5] = MCU_TRACEABILITY_NUMBER;
	memcpy(pData,arry,sizeof(arry));
	*pLength=5L;
	return 0;
}
int16_t Service22ReadBatchNumber(uint8_t *pData,uint16_t *pLength)
{
	uint8_t arry[4] = MCU_BATCH_NUMBER;
	memcpy(pData,arry,sizeof(arry));
	*pLength=4L;
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

  if(m_2EReportToDcanVaule != pData[0])
  {
      m_2EReportToDcanVaule = pData[0];
  }
  *pLength = 1;
  return 0;
}

int16_t Service22ReadUCUType(uint8_t *pData,uint16_t *pLength)
{
  memcpy(pData,m_UCUType,11);
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

#if(0)
int16_t Service2EWriteIpAddress_DIG(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;

  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_WORK_ADDRESS,pData,dataLength-2);
  if(ret!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_WORK_PORT, pData+16, dataLength -16);
  if(ret!=0)
  {
    return -1;
  }  
  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteNationIpAddress_DIG(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;

  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_NATION_WORK_ADDRESS,pData,dataLength-2);
  if(ret!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_NATION_WORK_PORT, pData+16, dataLength -16);
  if(ret!=0)
  {
    return -1;
  }    

  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteGovernmentIpAddress_DIG(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS,pData,dataLength-2);
  if(ret!=0)
  {
    return -1;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_GOVERNMENT_WORK_PORT, pData+16, dataLength -16);
  if(ret!=0)
  {
    return -1;
  }     

  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}



int16_t Service2EWriteNationIpPort(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_NATION_WORK_PORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteGovernmentIpPort(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }    
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_GOVERNMENT_WORK_PORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}
#endif

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

int16_t Service2EWriteSystemConfiguration(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SYSTEM_CONFIG,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }  

    return 0;
}

int16_t Service2EWriteFactoryMode(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_FACTORY_MODE,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }  

    return 0;
}

int16_t Service2EWriteRechargeWakeupTime(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_RECHARGE_WAKEUP_TIME,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }  

    return 0;
}

int16_t Service2EWriteRechargeThreshold(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_RECHARGE_THRESHOLD,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }  

    return 0;
}

int16_t Service2EWriteBackupBatterySleepTime(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_BACKUPBATTERY_SLEEP_TIME,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }  
    PowerManageSdkSetKl30WakeDelay(pData[0]);

    return 0;
}

int16_t Service2EWriteAesKey(uint8_t *pData,uint16_t dataLength)
{
    int16_t ret;

    ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_AES_KEY,pData,dataLength);
    if(ret!=0)
    {
      return -1;
    }  

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
int16_t Service2EWriteRemoteconfig(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_REMOTE_CONFIG,pData,dataLength);
  if(ret!=0)
  {
	return -1;
  }
  return 0;
}
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
  //m_vehicleTypeConfigure
  memcpy(m_vehicleTypeConfigure,pData,sizeof(m_vehicleTypeConfigure));

  for(i = 0; i < sizeof(m_vehicleTypeConfigure);i++)
  {
      if(m_vehicleTypeConfigure[i]&0xFF)//configured
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
  //m_vehicleTypeConfigure
  memcpy(m_vehicleTypeConfigure,pData,sizeof(m_vehicleTypeConfigure));
  for(i = 0; i < sizeof(m_vehicleTypeConfigure);i++)
  {
      if(m_vehicleTypeConfigure[i]&0xFF)//configured
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
int16_t Service22ReadOEMPowerMode(uint8_t *pData,uint16_t *pLength)
{
	int16_t ret = 0;
	const can_signal_configure_t *pCan0SignalConfigure = NULL;
	double dataVaule = 0;
	
	*pLength = 1;
	
	pCan0SignalConfigure = GetCan0SignalConfigure();
	ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->BCM_PowerMode,&dataVaule);
	*pData = (uint32_t)dataVaule;
	
	return ret;
  
}

int16_t Service2EWriteESKey(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  //int16_t i;
  //uint8_t dataValid;
  uint8_t crc;
  //uint32_t len;  
  crc = crc8_checksum(pData,16);
  //if(crc == pData[16])
  {
	  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ESK_KEY,pData,dataLength);
	  if(ret!=0)
	  {
		return -1;
	  }  
	  if(CheckEskValid(pData)==0) 
	  {
		m_eskKeyValid = 0x01;
	  }
	  else
	  {
		m_eskKeyValid = 0x00;
	  }
  }
  //else
  {
  	//return -4;//SK CRC error
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
  //ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ESK_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  if(CheckEskValid(pData)==0)
  {
    m_eskKeyValid = 1;
  }
  else
  {
    m_eskKeyValid = 0;
  }
  return 0;
}

#if(0)
int16_t Service2EWriteIpAddress(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_WORK_ADDRESS,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ADDRESS,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteIpPort(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_WORK_PORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_PORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWritePublicKey(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_PUBLIC_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_PUBLIC_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTboxEcallNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_ECALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ECALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTboxBcallNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_BCALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_BCALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTboxIcallNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_ICALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_ICALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTSPCallNumber1(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TSP_CALL_NUMBER1,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_TSP_CALL_NUMBER1,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTSPCallNumber2(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TSP_CALL_NUMBER2,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_TSP_CALL_NUMBER2,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTSPCallNumber3(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TSP_CALL_NUMBER3,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_TSP_CALL_NUMBER3,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}
#endif

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
		return -3;
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
//      return -1;
    } 
    memcpy(m_Vin,pData,17);
    //CheckVinWriteStatus();  
#endif
  return 0;
}

#if(0)
int16_t Service2EWriteBID(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_BID,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_BID,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}
#endif

int16_t Service2EWriteSerialNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  uint16_t ascLength;
  uint8_t asc[64];
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
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_CV01_SERIAL_NUMBER,pData,dataLength);
  // ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,asc,ascLength);
  if(ret!=0)
  {
    return -1;
  }  
#if(1)
  ret = ParameterSyncSdkSetToCpu(E_ParamId_SN,pData,dataLength);
  // ret = ParameterSyncSdkSetToCpu(E_ParamId_SN,asc,ascLength);
  if(ret!=0)
  {
    //return -1;
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



#if(0)
int16_t Service2EWriteTboxPreKey(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_PRE_KEY,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(,pData,dataLength);
  return 0;
}

int16_t Service2EWriteTboxCallNumber(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_CALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_TBOX_CALL_NUMBER,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}
#endif

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
#if(0)
int16_t Service2EWriteKeyType(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_KEY_TYPE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_KEY_TYPE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}
#endif

#if(0)
int16_t Service2EWriteTboxMsgNumber1(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TSP_MSG_NUMBER1,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_TSP_CALL_NUMBER1,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTboxMsgNumber2(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TSP_MSG_NUMBER2,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_TSP_CALL_NUMBER2,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;  
}

int16_t Service2EWriteCanUploadCycle(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_CAN_LOAD_CYCLE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  ret = SetParameterSyncToCpu(SYNC_PARAMETER_ITEM_CAN_LOAD_CYCLE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  } 
  return 0;
}

int16_t Service2EWriteTboxModel(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_MODEL,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteCarModeType(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_CAR_MODE_TYPE,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}

int16_t Service2EWriteSecurityVersion(uint8_t *pData,uint16_t dataLength)
{
  int16_t ret;
  if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
  {
    return -1;
  }
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_SECURITY_VERSION,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }  
  //SetParameterSyncToCpu(pData,dataLength);
  return 0;
}
#endif

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
  
  if(m_31ReportToDcanFlag)
  {
    return 0x22;
  }  
  ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_DIAG_CAN_REPORT,pData,dataLength);
  if(ret!=0)
  {
    return -1;
  }
  //GateWaySetCanReportControl(pData[0]); 
  m_2EReportToDcanVaule = pData[0];
  CheckCanReportDtc(m_2EReportToDcanVaule);
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
int16_t Service31RID0203Set(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  int16_t ret;
  uint8_t ControlData[2];
  uint16_t InLen=0;
  
  if(dataLength!=1)
  {
    return 0x13;//lenth negtive
  }  

  return 0;
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
  m_31ReportToDcanFlag = 0x01;
  return 0;
}

int16_t Service31WriteDiagnosticCanReport02(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  uint8_t tem[32];
  uint32_t len;
  if(m_31ReportToDcanFlag)
  {
    m_31ReportToDcanFlag = 0;
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_DIAG_CAN_REPORT,tem,&len);
    //GateWaySetCanReportControl(tem[0]);
  }
  return 0;
}

int16_t Service31WriteDiagnosticCanReport03(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut)
{
  pDataOut[0] = m_31ReportToDcanValue;
  *pLengthOut = 0x01;
  return 0;
}

void Service31WriteDiagnosticCanReportSetDefault(void)
{
  uint8_t tem[32];
  uint32_t len;
  if(m_31ReportToDcanFlag)
  {
    m_31ReportToDcanFlag = 0;
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_DIAG_CAN_REPORT,tem,&len);
    //GateWaySetCanReportControl(tem[0]);    
  }
  m_31ReportToDcanValue = 0x00;
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
    
    for(i = 0; i < sizeof(m_vehicleTypeConfigure);i++)
    {
        if(m_vehicleTypeConfigure[i]&0xFF)//configured
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
    CheckCanReportDtc(m_2EReportToDcanVaule);
}
void EolConfigureInit(void)
{
  //m_vehicleTypeConfigure;
  uint8_t tem[32];
  uint32_t len;
  len = 0;
  WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_EOL_CONFIG,tem,&len);
  /*
  if(len!=3)
  {
    memset(tem,0x00,sizeof(tem));
    WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_EOL_CONFIG,tem,12);
  }
  */
  memcpy(m_vehicleTypeConfigure,tem,sizeof(m_vehicleTypeConfigure));
  
}

const uint8_t *GetVehicleTypeConfigure(void)
{
  return m_vehicleTypeConfigure;
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
  m_2EReportToDcanVaule = tem[0];
  //GateWaySetCanReportControl(tem[0]);
}

void VinInit(void)
{
	int16_t ret;
	uint8_t vinTem[40];
	uint32_t length;
	memset(m_Vin,0x00,17);
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VIN,vinTem,&length);
	if(ret != 0)
	{
		return;
	}
	if(CheckVinIsAsciiZero(vinTem)!=0)
	{
	  memcpy(m_Vin,vinTem,17);
	  return ;
	}
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_VIN_hex,vinTem,&length);
	if(ret != 0)
	{
	  return;
	}
	memcpy(m_Vin,vinTem,17);
}

void CanGETVin(uint8_t *vin)
{
	memcpy(vin,m_Vin,17);
}

static void CheckVinWriteStatus(void)
{
#if(0)
	uint8_t i;
	uint8_t vinValidFlag;
	vinValidFlag = 0;
	for(i=0;i<17;i++)
	{
		if(m_Vin[i]!=0x00)
		{
			vinValidFlag = 1;
			break;
		}
	}
#endif
	//TBOX_PRINT("CheckVinWriteStatus--%d\r\n",vinValidFlag);
	//TBOX_PRINT("vin %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\r\n",m_Vin[0],m_Vin[1],m_Vin[2],m_Vin[3],m_Vin[4],m_Vin[5],m_Vin[6],m_Vin[7],m_Vin[8],m_Vin[9],m_Vin[10],m_Vin[11],m_Vin[12],m_Vin[13],m_Vin[14],m_Vin[15],m_Vin[16]);
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

void RemoteContrlCheckInit(void)
{
	uint32_t length;
	uint8_t pData[8];
	int16_t ret;
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_REMOTE_CONFIG,pData,&length);
	if(ret == 0)
	{
		SetRemoteFinancialFlag(pData[0]);
	}
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
      if(CheckEskValid(key)==0)
      {
        keyValid = 1;
		SetRemoteSkNum(key);
      }
  } 
  m_eskKeyValid = keyValid;  
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

    if(m_eskKeyValid)//configured
    {
        //ClearDtcFaultState(DTC_ITEM_ESK_NOT_WRITEN);
    }//
    else
    {
        //SetDtcFaultState(DTC_ITEM_ESK_NOT_WRITEN);
    }
}
