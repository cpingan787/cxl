/**************************************************
author: xiewenming

finish date:2018.7.31



*****************************************************/


#include "taskDiagnostic.h"
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"

#include "logHal.h"
#include "flashHal.h"
#include "peripheralHal.h"
#include "mpuHal.h"
#include "timerHal.h"
#include "flashHal.h"
#include "crc8_16_32.h"

#include "canTpSdk.h"
#include "autoSarNmSdk.h"
#include "timeSyncSdk.h"

#include "taskDtcProcess.h"
#include "udsDidFunction.h"
#include "udsSecurityCalculate.h"
#include "udsEolTest.h"
#include "ParameterStoreManageApp.h"
#include "canPeriodTask.h"
#include "vehicleSignalApp.h"



//#include "cy_mw_flash.h"
#include "tvii_fota_update_hal.h"

#define UDS_SECURITY_ERROR_COUNT_IN_NONVOLATILE         1

#define TEST_CODE 0

typedef int16_t ( *pServiceFunction )( uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
typedef int16_t ( *pService22_DIDFunction )( uint8_t *pReadData,uint16_t *pDataLength);
typedef int16_t ( *pService2E_DIDFunction )( uint8_t *pWriteData,uint16_t dataLength);
typedef int16_t ( *pService31_DIDFunction )( uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut);

typedef enum
{
  SUBFUN_GET_OK,
  SUBFUN_GET_INVALID_DID,
  SUBFUN_GET_INVALID_SECURITY,
  SUBFUN_GET_INVALID_LENGTH,
}enum_SeriveGetSubFunState;

typedef enum
{
  SecurityTimer_None,
  SecurityTimer_ResetDelay,   
  SecurityTimer_AccessErrorDelay,
  SecurityTimer_KeyDelay,      
}enum_SecurityTimerDelayType;

typedef struct 
{
	uint16_t	u16DID;
	uint8_t		u8Len;
	pService22_DIDFunction	pFun;
}RDID_infor_t;


typedef struct _WDID_infor_t
{
	uint16_t	       u16DID;
	uint8_t		       u8Len;
	pService2E_DIDFunction pFun;
	UdsSecurityLevel_e       u8SecurityLevel;
}WDID_infor_t;

typedef struct
{
	uint16_t	       u16DID;
	pService31_DIDFunction pFun;
	UdsSecurityLevel_e       u8SecurityLevel;
}struc_S31_DID_infor_t;

#define  UDS_OFFSET_SID         0
#define  UDS_OFFSET_SUB_FUNC    1

//sessionSupport bit definition
#define SESSION_BIT_DEFAULT             (0x01<<0)
#define SESSION_BIT_EXTENDED            (0x01<<1)
#define SESSION_BIT_PROGRAMMING         (0x01<<2)

#define ADDRESSING_BIT_PHYSICAL         (0x01<<0)
#define ADDRESSING_BIT_FUNCTION         (0x01<<1)

typedef struct 
{
  uint8_t SID;
  uint8_t sessionSupport;
  uint8_t addressingSupport;
  pServiceFunction pFun;
}STRUCT_DIAGNOSTIC;

static int16_t Service0x10Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x11Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x14Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x19Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x28Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x85Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x31Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x3EProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x2FProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x27Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x22Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0x2EProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0xBBProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);
static int16_t Service0xBAProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag);

static int16_t Service22ReadSeesionStatus(uint8_t* buf, uint16_t *len);

static uint8_t CommunicationControl(uint8_t ContolType, uint8_t SubService);
static void ResetTboxStatusUpdate(void);

static const uint32_t m_physicalReceiveCanId = 0x703;
static const uint32_t m_functionalReceiveCanId = 0x7DF;
static const uint32_t m_physicalTransmitCanId = 0x783;
//static const uint8_t CanIdExtendedFlag = 0;
static Crc32Objec_t g_crc32Object;

static const STRUCT_DIAGNOSTIC  serviceECUFunGroup[] =
{
    /* SID                              SEEION support                                  addressing support                    deal_function    */
    /*********Application Software*********/
    {0x10,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION},Service0x10Process }, 
    {0x11,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x11Process }, 
    {0x14,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x14Process }, 
    {0x19,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x19Process }, 
    {0x28,  {SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x28Process }, 
    {0x85,  {SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x85Process }, 
    {0x31,  {SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_PHYSICAL}, Service0x31Process }, 
    {0x3E,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x3EProcess },
    {0xBB,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0xBBProcess },  
    {0xBA,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0xBAProcess },  
    {0x2F,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x2FProcess }, 
    {0x27,  {SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x27Process }, 
    {0x22,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION}, Service0x22Process },
    {0x2E,  {SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_FUNCTION},Service0x2EProcess },
};


static const WDID_infor_t m_Service2EFunMapList[] =
{
    /*WDID  Lenth   point_store*/
	{0xF108,  3,	Service2EWriteEOLconfig,		E_UDS_SECURITY_LEVEL1},	
	{0xF1A0, 17,	Service2EWriteESKey,			E_UDS_SECURITY_LEVEL1},			
	{0xF1A2,  6,	Service2EWritePartName,			E_UDS_SECURITY_LEVEL1},		
	{0xF190, 17,	Service2EWriteVIN,				E_UDS_SECURITY_LEVEL1},	 
	{0xF10A,  1,	Service2EWriteRemoteconfig,		E_UDS_SECURITY_LEVEL1},	 
};


static const RDID_infor_t m_Service22FunMapList[] =
{
    {0xF010,  5,  Service22ReadTraceabilityNumber     								},      //
    {0xF011,  4,  Service22ReadBatchNumber       									},      //
    {0xF108,  3,  Service22ReadEOLconfig        									},      //
    {0xF10A,  1,  Service22ReadRemoteconfig        									},      //
    {0xF180,  4,  Service22ReadBootSoftwareVersion        							},      //
	{0xF184,  9,  Service22ReadAppSoftwareFingerprint								},				 //Vehicle Manufacturer Spare Part Number
	{0xF187, 15,  Service22ReadPartNumber											},				 //Vehicle Manufacturer Spare Part Number
	{0xF189,  4,  Service22ReadSoftwareVersion 										},				 //Vehicle Manufacturer Spare Part Number
	{0xF18A,  7,  Service22ReadSupplierId               							},      //ϵͳ��Ӧ�̱�ʶ��
	{0xF18C, 30,  Service22ReadSerialNumber              							},      //��ص�Ԫ���к�(ECU)
	{0xF190, 17,  Service22ReadVIN                       							},      //VIN m_VIN
	{0xF191,  4,  Service22ReadHardwareVersion		 								},				 //Vehicle Manufacturer Spare Part Number
	{0xF193,  4,  Service22ReadEOLHardwareVersion           							},      //��Ӧ��ECUӲ���汾��
	{0xF195,  4,  Service22ReadAppSoftwareVersion           							},      //��Ӧ��ECU�����汾��    
	{0xF197,  6,  Service22ReadEcuName		 										}, 	 //��Ӧ��ECU�����汾��	  
	{0xF1A0, 17,  Service22ReadESKey											    },				
	{0xF1A1,  1,  Service22ReadOEMSKLearningStatus									},		
	{0xF1A2,  6,  Service22ReadPartName												},			
	{0xF1A3,  1,  Service22ReadOEMPowerMode											},				 
	{0xF1A4,  2,  Service22ReadKL30Voltage 											},				 
	{0xF1A5,  3,  Service22ReadTotalOdometer										},				 
	{0xF1A6,  2,  Service22ReadVehiclespeed 										},				 
	{0xF1A7,  6,  Service22ReadSystemTime											},				 
	{0xF1A8,  2,  Service22ReadSOC 													},
	{0x1101,  1,  Service22ReadNADPrimaryAntenaStatus								},				 
	{0x1102,  1,  Service22ReadNADMinorAntenaStatus									},	
	{0x1103,  1,  Service22ReadBuiltantennaStatus									},
	{0x1104,  1,  Service22ReadPhoneSignal											},
	{0x1105,  1,  Service22ReadUsimNetworkstandardStatus							},
	{0x1106,  1,  Service22ReadUsimOperatorStatus									},
	{0x1107,  20,  Service22ReadICCID												},	
	{0x1108,  1,  Service22ReadGNSSLiveHDOP											},
	{0x1109,  2,  Service22ReadGNSSLiveSpeed										},	
	{0x110A,  2,  Service22ReadGNSSLiveHeading  									},	
	{0x110B,  1,  Service22ReadGNSSCurrentNumOfSatallitesUsed						},	
	{0x110C,  4,  Service22ReadGNSSLiveHeigth										},				 
	{0x110D,  10, Service22ReadGNSS_LatitudeLongitude							    },				 
	{0x110E,  1,  Service22ReadUsimWorkStatus										},	
	{0x110F,  15,  Service22ReadOtaVersion											},	
	{0x1110,  15,  Service22ReadOtataskVersion										},	
};

static const struc_S31_DID_infor_t m_routineStartDidMap[] = 
{
	{0x0203, Service31RID0203Set  				  ,     E_UDS_SECURITY_LEVEL1 },
};

static const struc_S31_DID_infor_t m_routineStopDidMap[] = 
{
    {0xF005, Service31WriteDiagnosticCanReport01  ,     E_UDS_SECURITY_LEVEL1 },
};

static const struc_S31_DID_infor_t m_routineResultDidMap[] = 
{
    {0xF005, Service31WriteDiagnosticCanReport03  ,     E_UDS_SECURITY_LEVEL1 },
};




// Place following data in section SYS_RAM 
#pragma default_variable_attributes = @ "SYS_RAM"

static uint8_t m_udsRxData[1100];
static uint8_t m_securitySeed[20];
static uint8_t m_securityKey[20];
static uint8_t m_udsTxBuffer[512];
/* Stop placing data in section SYS_RAM */
#pragma default_variable_attributes =

static uint16_t m_udsRxDataLen = 0;
static int16_t g_mpuHandle = 0;                  //保存同步任务的CPU通信句柄

/**********session control related variable*******************/
static SessionState_t m_currentSession = E_DEFAULT_SESSION;
static uint8_t m_EcuOnlineFlag = 0;
static uint8_t m_OtaObdstatus = 2;

/**********security accessrelated variable*******************/
static UdsSecurityLevel_e m_currentSecurityLevel= E_UDS_NONE_SECURITY_LEVEL;
static UdsSecurityLevel_e m_SecuritySendSeedLevel= E_UDS_NONE_SECURITY_LEVEL;

static uint8_t m_ECUreset_flag[3];
static uint8_t m_u8ConsecutiveSeedCount[3] = {0,0,0};
static enum_SecurityTimerDelayType m_securityTimerDelayType;
static enum_SecurityTimerDelayType m_securityTimerDelayType_2;
static enum_SecurityTimerDelayType m_securityTimerDelayType_3;
static int16_t m_ecuSecurityTimerHandle = -1;
static int16_t m_ecuSecurityTimerHandle_2 = -1;
static int16_t m_ecuSecurityTimerHandle_3 = -1;


static uint8_t m_securityKeyLength = 0;
static uint8_t m_securitySeedLength = 0;

/*************************************************************/
static uint8_t m_bDtcControlFlag = 0;
static uint8_t m_bCommunicationControlFlag = 0;

static uint8_t m_sleepFlag = 0;
//static uint8_t m_UdsEnableFlag = 1;
static uint8_t m_currentServiceNum = 0;
static int16_t m_tpHandle = -1;
//static int16_t m_uartHandle = -1;

static  enum_SeriveGetSubFunState Service2EGetDidFunction(uint16_t WDID,pService2E_DIDFunction *pfun,uint16_t u16Validlen)
{
    enum_SeriveGetSubFunState ret;
    
    uint16_t i = 0;
    uint16_t listSize;
    
    listSize = sizeof(m_Service2EFunMapList) / sizeof(m_Service2EFunMapList[0]);
    ret = SUBFUN_GET_INVALID_DID;//invalid did 
    *pfun = NULL;
    
    for(i = 0; i < listSize; i++)
    {
        if(m_Service2EFunMapList[i].u16DID == WDID)
        {
            if (m_currentSecurityLevel == m_Service2EFunMapList[i].u8SecurityLevel)
            {
                if (m_Service2EFunMapList[i].u8Len  == (u16Validlen - 3))
                {
                  if(m_Service2EFunMapList[i].pFun!=NULL)
                  {
                    *pfun = m_Service2EFunMapList[i].pFun;
                    ret = SUBFUN_GET_OK;                   
                  }                  
                }
                else
                {
                    ret = SUBFUN_GET_INVALID_LENGTH;//length error                    
                }
            }
            else
            {
                return SUBFUN_GET_INVALID_SECURITY;
            }
            break;
        }
    }

    return  ret;     
}

static enum_SeriveGetSubFunState Service22GetDidFunction(uint16_t RDID,pService22_DIDFunction *pfun)
{
    uint16_t i;
    uint16_t listSize;
    enum_SeriveGetSubFunState ret;
    
    *pfun = NULL;
    ret = SUBFUN_GET_INVALID_DID;
    listSize = sizeof(m_Service22FunMapList) / sizeof(m_Service22FunMapList[0]);
    
    for(i = 0; i < listSize; i++)
    {
        if(m_Service22FunMapList[i].u16DID == RDID)
        {
          if(m_Service22FunMapList[i].pFun!=NULL)
          {
            *pfun = m_Service22FunMapList[i].pFun;
            ret = SUBFUN_GET_OK;
          }
          break;          
        }

    }

    return  ret;    
}


static  enum_SeriveGetSubFunState ServiceGetRoutineStartDidFunction(uint16_t DID,pService31_DIDFunction *pfun)
{
    enum_SeriveGetSubFunState ret;
    
    uint16_t i = 0;
    uint16_t listSize;
    
    listSize = sizeof(m_routineStartDidMap) / sizeof(m_routineStartDidMap[0]);
    ret = SUBFUN_GET_INVALID_DID;//invalid did 
    *pfun = NULL;
    
    for(i = 0; i < listSize; i++)
    {
        if(m_routineStartDidMap[i].u16DID == DID)
        {
            if(m_routineStartDidMap[i].pFun!=NULL)
            {
              *pfun = m_routineStartDidMap[i].pFun;
              ret = SUBFUN_GET_OK;                   
            }
            break;
        }
    }

    return  ret;     
}

static  enum_SeriveGetSubFunState ServiceGetRoutineStopDidFunction(uint16_t DID,pService31_DIDFunction *pfun)
{
    enum_SeriveGetSubFunState ret;
    
    uint16_t i = 0;
    uint16_t listSize;
    
    listSize = sizeof(m_routineStopDidMap) / sizeof(m_routineStopDidMap[0]);
    ret = SUBFUN_GET_INVALID_DID;//invalid did 
    *pfun = NULL;
    
    for(i = 0; i < listSize; i++)
    {
        if(m_routineStartDidMap[i].u16DID == DID)
        {
            if(m_routineStartDidMap[i].pFun!=NULL)
            {
              *pfun = m_routineStartDidMap[i].pFun;
              ret = SUBFUN_GET_OK;                   
            }
            break;
        }
    }

    return  ret;     
}

static  enum_SeriveGetSubFunState ServiceGetRoutineResultDidFunction(uint16_t DID,pService31_DIDFunction *pfun)
{
    enum_SeriveGetSubFunState ret;
    
    uint16_t i = 0;
    uint16_t listSize;
    
    listSize = sizeof(m_routineResultDidMap) / sizeof(m_routineResultDidMap[0]);
    ret = SUBFUN_GET_INVALID_DID;//invalid did 
    *pfun = NULL;
    
    for(i = 0; i < listSize; i++)
    {
        if(m_routineStartDidMap[i].u16DID == DID)
        {
            if(m_routineStartDidMap[i].pFun!=NULL)
            {
              *pfun = m_routineStartDidMap[i].pFun;
              ret = SUBFUN_GET_OK;                   
            }
            break;
        }
    }

    return  ret;     
}

/*************************************
return:
0: Vaild
**************************************/
static int16_t CheckSessionIsValid(SessionState_t currentSession,uint8_t supportedSession)
{
  int16_t ret;
  uint8_t sessionBit;  
  ret = 1;
  sessionBit = 0;
  if(E_DEFAULT_SESSION==currentSession)
  {
    sessionBit = SESSION_BIT_DEFAULT;
  }
  else if(E_PROGROM_SESSION==currentSession)
  {
    sessionBit = SESSION_BIT_PROGRAMMING;
  }
  else if(E_EXTEND_SESSION==currentSession)
  {
    sessionBit = SESSION_BIT_EXTENDED;
  }
  
  if(sessionBit&supportedSession)
  {
    ret = 0;
  }
  return ret;
}
int16_t Service22ReadSeesionStatus(uint8_t* buf, uint16_t *len)
{
    uint8_t seeion = 0;
    uint16_t ret = 0;
    seeion = m_currentSession;
    *buf  = seeion;
    *len = 1;
    
    return ret;  
}

static void SaveSeedAccessCountToNonVolatile(uint8_t *data)
{
    uint8_t *dataTem;
    dataTem = data;
    FlashDiagSecurityInfoStore(0,dataTem);

}


static uint8_t GetSeedAccessCountFromVolatile(uint8_t *data)
{
  FlashDiagSecurityInfoRead(0,data);
  return 0;
}


static void SessionChangeToDefaultProcess(void)
{
    if(m_bDtcControlFlag)
    {
      m_bDtcControlFlag = 0;
      //reset DTC control setting
      DtcProcessEnable();
    }
    if(m_bCommunicationControlFlag)
    {
      m_bCommunicationControlFlag = 0;
      /*SgmwGWNm_AllEnableCommunication(); 
      CycleSendEnableAll();*/
      CanPeriodSendEnableAll();
      AutosarNmSdkEnableCommunication(0);
      
    }
    Service31StopApplicationSetDefault();
    Service31WriteDiagnosticCanReportSetDefault();
}

static void SessionChangeToExtendedProcess(void)
{

}

/*********************************************************************
session control

********************************************************************/
static int16_t Service0x10Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint8_t responseData[32];
    uint8_t subFun;
    uint8_t suppressPosRsp;
    responseData[0] = 0x50;
    responseData[1] = udsData[1];
    responseData[2] = 0x00;//P2 Server
    responseData[3] = 0x32;//P2 Server
    responseData[4] = 0x00;//P2*Server
    responseData[5] = 0xC8;//P2*Server

    subFun = udsData[1]&0x7F;
    suppressPosRsp = udsData[1]>>7;
    if(0X02 == udsLen)
    {
      if(0x01==subFun)//default session
      {
        m_currentSession = E_DEFAULT_SESSION;
        m_currentSecurityLevel = E_UDS_NONE_SECURITY_LEVEL;//lock security
        SessionChangeToDefaultProcess();
      }
      else if(0x02==subFun)//programing session
      {
        if((m_currentSession == E_EXTEND_SESSION) || (m_currentSession == E_PROGROM_SESSION))
        {
          m_currentSession = E_PROGROM_SESSION;
          m_currentSecurityLevel = E_UDS_NONE_SECURITY_LEVEL;//lock security
          m_EcuOnlineFlag = 1;
          CanTpSdkSetBootMode(1);
        }
        else
        {
          negativeNum = 0x7E;
        }
      }
      else if(0x03==subFun)//extended session
      {
        if((m_currentSession == E_DEFAULT_SESSION)||(m_currentSession == E_EXTEND_SESSION))
        {
          m_currentSession = E_EXTEND_SESSION;
          m_currentSecurityLevel= E_UDS_NONE_SECURITY_LEVEL;//lock security
          m_EcuOnlineFlag = 1;
          SessionChangeToExtendedProcess();
        }
        else
        {
          negativeNum = 0x7E;
        }        
      }
      else
      {
          negativeNum = 0x12;//sub function not supported
      
      }
      if(negativeNum==0)
      {
        if (suppressPosRsp == 0)
        {    
            CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,6,0);
        }  
        /*if(m_currentSession==E_PROGROM_SESSION)
        {
          PeripheralDriverHal_WriteBootFlag(0x00002211);
          PeripheralHalMcuHardReset();               
        }      */  
      }

    }
    else
    {
        /*�����ĵ����ݸ�ʽ�򳤶Ȳ����ϱ�׼-13*/
        negativeNum = 0x13;
    }
    
    /*if(functionAddressFlag)
    {
      if(0x12==negativeNum)//not
      } 
      {
        negativeNum = 0;
    }*/
    return negativeNum;

}

static int16_t Service0x11Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    //uint8_t i = 0;
    uint8_t negativeNum = 0;
    uint8_t subFun;
    uint8_t suppressPosRsp;
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;
    uint8_t responseData[32];
    
    responseData[0] = 0x51;
    responseData[1] = udsData[1];
    
    subFun = udsData[1]&0x7F;
    suppressPosRsp = udsData[1]>>7;
    
    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if (0X02 == udsLen)
        {
            if(0x01==subFun)//hardware reset
            {
              ;
            }
            else if(0x02==subFun)//keyOffOnReset
            {
              ; 
            }
            else if(0x03==subFun)//software reset
            {
              ;
            }
            else
            {
              /*��֧�ֵ����������ӹ���-12*/
              //if(functionAddressFlag)
              negativeNum = 0x12; 
            }
            if(negativeNum==0)
            {
              if (suppressPosRsp == 0)
              {
                  CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2,0);
              }
            }

            if(0x01==subFun)//hardware reset
            {
              //PeripheralDriverHal_GsmModuleGsmEnable(0);
              vTaskDelay(100);             
              PeripheralHalMcuHardReset();
            }
            else if(0x02==subFun)//keyOffOnReset
            {
              ResetTboxStatusUpdate();
            }
            else if(0x03==subFun)//software reset
            {
              MpuHalPowerOff();
              vTaskDelay(100);   
              PeripheralHalMcuHardReset();
            }
        }
        else
        {
            /*�����ĵ����ݸ�ʽ�򳤶Ȳ����ϱ�׼-13*/
            negativeNum = 0x13;	
        }
    }
    else
    {
        /*�ӹ��ܲ�֧�ֵ���ϻỰ7F*/
        negativeNum = 0x7F;	
    }

    return negativeNum;

}

static int16_t Service0x14Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint32_t groupOfDTC;
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;

    uint8_t responseData[32];
    
    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    responseData[0] = 0x54;
    groupOfDTC = ((uint32_t)udsData[1]<<16)+((uint32_t)udsData[2]<<8)+(uint32_t)udsData[3];
    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if (0x04 == udsLen)
        {
            if (0x100000==groupOfDTC)//Powertrain group
            {                    
                DtcProcessClearAll();
            }
            else if(0x400000==groupOfDTC)//Chassis group
            {
              DtcProcessClearAll();
            }
            else if(0x800000==groupOfDTC)//Body group
            {
              DtcProcessClearAll();
            }
            else if(0xC00000==groupOfDTC)//Network communication group
            {
              DtcProcessClearAll();
            }
            else if(0xFFFFFF==groupOfDTC)//all dtc
            {
              DtcProcessClearAll();  
            }
            else
            {
                /*���󳬳���Χ-31*/
                negativeNum = 0x31;					
            }
            if(negativeNum==0)
            {
               CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,1,0);
            }
        }
        else
        {
            /*�����ĵ����ݸ�ʽ�򳤶Ȳ����ϱ�׼-13*/
            negativeNum = 0x13;		
        }
    }
    else
    {
        negativeNum = 0x7F;	
    }

    return negativeNum;  
}

static int16_t Service0x19Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint8_t subFun;
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;
    //dtc_snapshot_record_global_t snapRecord;
    //dtc_extended_data_t extendedData;
    uint32_t dtcNum = 0;
    uint8_t MaskValue = 0;
    uint32_t length = 0;
    int16_t ret;
    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );    
    m_udsTxBuffer[0] = 0x59;
    m_udsTxBuffer[1] = udsData[1];
    
    subFun = udsData[1];
    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if (0x02 <= udsLen)
        {
            switch(subFun)
            {
                case 0x01:
                {
                  if(udsLen==0x03)
                  {
                    if (udsData [2] & 0x09)
                    {
                        //read dtc num
                        DtcProcessDtcGetCountByMask(udsData [2], &dtcNum, &MaskValue);
                        m_udsTxBuffer[2] = MaskValue;
                        m_udsTxBuffer[3] = 0x00;
                        m_udsTxBuffer[4] = (uint8_t)((dtcNum >> 8) & 0XFF);
                        m_udsTxBuffer[5] = (uint8_t)(dtcNum & 0XFF);;
                    }
                    else
                    {
                        m_udsTxBuffer[2] = 0x09;
                        m_udsTxBuffer[3] = 0x00;
                        m_udsTxBuffer[4] = 0;
                        m_udsTxBuffer[5] = 0;
                    }
                    CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,m_udsTxBuffer,6,0);                     
                  }
                  else
                  {
                    negativeNum = 0x13;//invlid length
                  }
           
                }
                break;
                case 0x02:
                {         
                  if(udsLen==0x03)
                  {
                    dtcNum = 0;
                    DtcProcessGetListByMask(udsData[2],&m_udsTxBuffer[3],&dtcNum,&(m_udsTxBuffer[2]));
                    CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,m_udsTxBuffer,3+(dtcNum*4),0);                       
                  }
                  else
                  {
                    negativeNum = 0x13;//invlid length
                  }
         
                }
                break;
                case 0x04://reportDTCSnapshotRecordByDTCNumber
                {
                  if(udsLen==6)
                  {
                      ret = DtcProcessGetReportSnapshotRecordByDtcNumber((udsData[2]<<16)+(udsData[3]<<8)+(udsData[4]<<0),udsData[5],m_udsTxBuffer+6,&length,&m_udsTxBuffer[5]);
                      if(ret==0)
                      {
                        //dtc
                        m_udsTxBuffer[2] = udsData[2];
                        m_udsTxBuffer[3] = udsData[3];
                        m_udsTxBuffer[4] = udsData[4];
                        //DTCSnapshotRecordNumber
                        //m_udsTxBuffer[6] = 0x01;
                        //
                        //m_udsTxBuffer[7] = 0x05;//dtc snapshot record number of identifiers                        
                         
                        CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,m_udsTxBuffer,length+6,0); 
                      }
                      else
                      {
                        negativeNum = 0x31;//request out of range
                      }
                  }
                  else
                  {
                    negativeNum = 0x13;//incorrect length
                  }                                                  
                }
                break;
                case 0x06://report dtc extended data record by dtc number
                {
                  if(udsLen==6)
                  {
                      ret = DtcProcessGetExtendedData((udsData[2]<<16)+(udsData[3]<<8)+(udsData[4]<<0),udsData[5],m_udsTxBuffer+6,&length,&m_udsTxBuffer[5]);
                      if(ret==0)
                      {
                        //dtc
                        m_udsTxBuffer[2] = udsData[2];
                        m_udsTxBuffer[3] = udsData[3];
                        m_udsTxBuffer[4] = udsData[4];
                        
                        CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,m_udsTxBuffer,length+6,0);     
                      }
                      else
                      {
                        negativeNum = 0x31;//request out of range
                      }    
                  }
                  else
                  {
                    negativeNum = 0x13;//incorrect length
                  }                              
                }
                break;
                case 0x0A:
                {
                	if(udsLen==2)
                	{
                		ret = DtcProcessGetSupportedDtc(m_udsTxBuffer+3,&dtcNum,&m_udsTxBuffer[2]);
                		CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,m_udsTxBuffer,3+(dtcNum*4),0);
                	}
                	else
                	{
                		negativeNum = 0x13;//incorrect length
                	}
                }
                break;
                default:
                if(functionAddressFlag) 
                {
                    return negativeNum;
                }
                negativeNum = 0x12;
                break;
            }

        }
        else
        {
            /*�����ĵ����ݸ�ʽ�򳤶Ȳ����ϱ�׼-13*/
            negativeNum = 0x13;	
        }   
    }
    else
    {
        if(functionAddressFlag) 
        {
            return negativeNum;
        }
        negativeNum = 0x7F;			
    }

    return negativeNum;
}

static int16_t Service0x28Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;
    uint8_t responseData[32];
    
    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    responseData[0] = 0x68;
    responseData[1] = udsData[1];
    if(udsLen<3)
    {
      return 0x13;
    }
    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if (0x03 == udsLen)
        {   
            switch(udsData[UDS_OFFSET_SUB_FUNC])
            {
                case 0x83:
                case 0x03:
                case 0x80:
                case 0x00:
                  {
                      if (udsData [UDS_OFFSET_SUB_FUNC + 1] >= 0x01 && udsData [UDS_OFFSET_SUB_FUNC + 1] <= 0x03 )
                      {
                          if ((udsData[UDS_OFFSET_SUB_FUNC] == 0x83 )||(udsData[UDS_OFFSET_SUB_FUNC] == 0x03 ))
                          {
                              //�������Ӧ��ͨ�ſ��ƺ���
                              negativeNum = CommunicationControl((udsData[UDS_OFFSET_SUB_FUNC] & 0x7F), udsData[UDS_OFFSET_SUB_FUNC + 1]);
                          }
                          else if((udsData[UDS_OFFSET_SUB_FUNC] == 0x80 )||(udsData[UDS_OFFSET_SUB_FUNC] == 0x00 ))
                          {
                              //�������Ӧ��ͨ�ſ��ƺ���
                              negativeNum = CommunicationControl((udsData[UDS_OFFSET_SUB_FUNC] & 0x7F), udsData[UDS_OFFSET_SUB_FUNC + 1]);
                          }
                          else
                          {
                              return negativeNum;
                          }
                          if ((udsData[UDS_OFFSET_SUB_FUNC] >> 7) == 0)
                          {
                              CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2,0);
                          }
                      }
                      else
                      {
                          if(functionAddressFlag) 
                          {
                              return negativeNum;
                          }
                          negativeNum = 0x31;
                      }
                  }
                break;
                default:
                  if(functionAddressFlag) 
                  {
                      return negativeNum;
                  }
                  negativeNum = 0x12;
                  break;
            }
        }
        else
        {
            negativeNum = 0x13;
        }
    }
    else
    {
        /*if(functionAddressFlag) 
        {
                return negativeNum;
        }*/
        negativeNum = 0x7F;	
    }
    return negativeNum;

}

/*******************************************************
ControlDTCSetting (85 hex) service




***************************************************/
static int16_t Service0x85Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint8_t responseData[32];
    
    
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;

    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    responseData[0] = udsData[0]+0x40;
    responseData[1] = udsData[1];
    
    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if (0x02 == udsLen)
        {
            switch (udsData [UDS_OFFSET_SUB_FUNC])
            {
                case 0x81:
                case 0x01:
                case 0x82:
                case 0x02:
                  {
                      if ((0x01 == udsData [UDS_OFFSET_SUB_FUNC] ) || (0x81 == udsData [UDS_OFFSET_SUB_FUNC] ) )
                      {
                          /*enable ����״̬��⹦��--�ñ�־λ*/	
                          m_bDtcControlFlag = 0;
                          DtcProcessEnable();                     
                      }
                      else
                      {
                          /*disable ����״̬��⹦��--�ñ�־λ*/
                          m_bDtcControlFlag = 1;
                          DtcProcessDisable();
                      }
                      if (0 == (udsData [UDS_OFFSET_SUB_FUNC] >> 7))
                      {
                          CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2,0);
                      }
                  }
                  break;
                default:
                  {
                      if(functionAddressFlag) 
                      {
                          return negativeNum;
                      }
                      negativeNum = 0x12;				
                  }
                  break;
            }
        }
        else
        {  
                negativeNum = 0x13;	
        }
    }
    else
    {
            /*if(functionAddressFlag) 
            {
                    return negativeNum;
            }*/
            negativeNum = 0x7F;	
    }
    return negativeNum;

}


static int16_t Service0x31Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  uint8_t negativeNum;
  uint8_t subFunction;
  uint8_t responseData[32];
  uint16_t did;
  pService31_DIDFunction pFun;
  enum_SeriveGetSubFunState ret; 
  uint16_t lengOut;
  const STRUCT_DIAGNOSTIC *psDignostic = NULL;

  psDignostic = ( serviceECUFunGroup + m_currentServiceNum );
  negativeNum = 0;
  subFunction = udsData[1];
  
  did = ((uint16_t)udsData[2]<<8)+(uint16_t)udsData[3];  
  responseData[0] = 0x71;
  responseData[1] = udsData[1];
  responseData[2] = udsData[2];
  responseData[3] = udsData[3];  
  if(udsLen<4)
  {
    return 0x13;
  }
  if(CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)!=0)
  {
    negativeNum = 0x7E;
    return negativeNum;
  }  
  if(0x01==subFunction)
  {    
    ret = ServiceGetRoutineStartDidFunction(did,&pFun);
    if(ret==SUBFUN_GET_OK)
    {
      lengOut = 0;
      negativeNum = pFun(&udsData[4],udsLen-4,&responseData[4],&lengOut);
      if(negativeNum==0)
      {
        CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,lengOut+4,0);        
      }
    }
    else
    {
      negativeNum = 0x31;//did not supported
    }
  }
  else if(0x02==subFunction)
  {    
    ret = ServiceGetRoutineStopDidFunction(did,&pFun);
    if(ret==SUBFUN_GET_OK)
    {
      lengOut = 0;
      negativeNum = pFun(&udsData[4],udsLen-4,&responseData[4],&lengOut);
      if(negativeNum==0)
      {
        CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,lengOut+4,0);        
      }
    }
    else
    {
      negativeNum = 0x31;//did not supported
    }
  }
  else if(0x03==subFunction)
  {
    ret = ServiceGetRoutineResultDidFunction(did,&pFun);
    if(ret==SUBFUN_GET_OK)
    {
      lengOut = 0;
      negativeNum = pFun(&udsData[4],udsLen-4,&responseData[4],&lengOut);
      if(negativeNum==0)
      {
        CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,lengOut+4,0);        
      }
    }
  }
  else
  {
    negativeNum = 0x12;//sub function not supported
  }
  return negativeNum;
}

static int16_t Service0x3EProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint8_t responseData[32];
    
    //const STRUCT_DIAGNOSTIC *psDignostic = NULL;
    //psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    responseData[0] = udsData[0]+0x40;
    responseData[1] = udsData[1];
    
    //if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if (0x02 == udsLen)
        {
            switch(udsData [UDS_OFFSET_SUB_FUNC])
            {
                case 0x00:
                case 0x80:
                  {
                      m_EcuOnlineFlag = 1;
					  m_OtaObdstatus = 1;
                      if ((udsData [UDS_OFFSET_SUB_FUNC] >> 7) == 0)
                      {
                          CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2,0);
                      }
                  }
                  break;
                default:
                  if(functionAddressFlag) 
                  {
                      return negativeNum;
                  }
                  negativeNum = 0x12;
                  break;
            }
        }
        else
        {  
            negativeNum = 0x13;	
        }
    }
//    else
//    {
//        /*if(functionAddressFlag) 
//        {
//                return negativeNum;
//        }*/
//        negativeNum = 0x7F;	
//    }  
  return negativeNum;
}

/************************************************
InputOutputControlByIdentifier (2F hex) service



***********************************************/
static int16_t Service0x2FProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  uint8_t negativeNum = 0;
  //uint16_t did;
  //uint8_t controlParameter;
  //uint8_t responseData[32];  
  const STRUCT_DIAGNOSTIC *psDignostic = NULL;
  
  /*psDignostic = ( serviceECUFunGroup + m_currentServiceNum );
  
  did = ((uint16_t)udsData[1]<<8)+(uint16_t)udsData[2];
  controlParameter = udsData[3];

  
  responseData[0] = 0x6F;
  responseData[1] = udsData[1];
  responseData[2] = udsData[2];
  responseData[3] = udsData[3];
  
  if(CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)!=0)
  {
    negativeNum = 0x7E;
    return negativeNum;
  }
  */
  return negativeNum;
}

/**********************************************************
description: compare two byte arrays is the same
parameter:  
  pArray1: first array
  pArray2: second array
  arrayLength:array length
return:
  0:arrays are the same
**********************************************************/
static int16_t ByteArrayCheckIsSame(uint8_t *pArray1,uint8_t *pArray2,uint16_t arrayLength)
{
  int16_t ret;
  uint16_t i;
  
  ret = 0;
  for(i=0;i<arrayLength;i++)
  {
    if(pArray1[i]!=pArray2[i])
    {
	  ret = 1; // 1 open check /0 pass 27
      break;
    }
  }
  return ret;
}
/*********************************************************
Security Access /send key




********************************************************/
static int16_t Service0x27Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    //uint8_t i = 0;
    uint8_t negativeNum = 0;
    uint8_t responseData[32];
    //uint8_t u8Busy7f78CMD[8] = {0x03,0x7f,0x27,0x78,0x00,0x00,0x00,0x00};
    
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;
    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    responseData[0] = udsData[0]+0x40;
    responseData[1] = udsData[1];
    

    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        if(udsLen<2)
        {
                return 0x13;
        }
        switch (udsData [UDS_OFFSET_SUB_FUNC])
        {
          case 0x01://get level1 seed
          {
              if(udsLen!=2)
              {
                      return 0x13;
              }
              if(m_ECUreset_flag[0])
              {
                negativeNum = 0x37;
              }
              else if (m_currentSecurityLevel == E_UDS_SECURITY_LEVEL1)
              {
                //uint8_t seedLength;
                UdsGetSeed(m_securitySeed,&m_securitySeedLength);
                memset((responseData + 2), 0 ,m_securitySeedLength);
                CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2+m_securitySeedLength,0);
                //return negativeNum;
              }
              else
              {
                if(m_u8ConsecutiveSeedCount[0]<3)
                {
					UdsGetSeed(m_securitySeed, &m_securitySeedLength);
                    UdsSeedtoKey(m_securitySeed,m_securitySeedLength,m_securityKey,&m_securityKeyLength,E_SECURITY_CALCULATE_LEVEL1);
                    memcpy((responseData + 2),m_securitySeed,m_securitySeedLength);
                    CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2+m_securitySeedLength,functionAddressFlag);
                    m_SecuritySendSeedLevel = E_UDS_SECURITY_LEVEL1;

                }
                else
                {
                    if(m_securityTimerDelayType!=SecurityTimer_AccessErrorDelay)
                    {
                      negativeNum = 0x36;
                      //start delay access timer 10S
                      TimerHalStartTime(m_ecuSecurityTimerHandle,10000);
                      m_securityTimerDelayType = SecurityTimer_AccessErrorDelay;
                    }
                    else
                    {
                      negativeNum = 0x37;
                    }
                }
              }
          }
          break;
          case 0x03:
          {
              if(udsLen!=2)
              {
                  return 0x13;
              }
              if(m_ECUreset_flag[1])
              {
                  negativeNum = 0x37;
              }
              else if (m_currentSecurityLevel == E_UDS_SECURITY_LEVEL2)
              {
                  memset((responseData + 2), 0 ,4);

                  CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,6,0);
                  return negativeNum;
              }
              else
              {
                  if(m_u8ConsecutiveSeedCount[1]<3)
                  {
						UdsGetSeed(m_securitySeed, &m_securitySeedLength);
						UdsSeedtoKey(m_securitySeed,m_securitySeedLength,m_securityKey,&m_securityKeyLength,E_SECURITY_CALCULATE_LEVEL2);
						memcpy((responseData + 2),m_securitySeed,m_securitySeedLength);
						CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2+m_securitySeedLength,functionAddressFlag);
						m_SecuritySendSeedLevel = E_UDS_SECURITY_LEVEL2;

                    }
                    else
                    {
                        if(m_securityTimerDelayType!=SecurityTimer_AccessErrorDelay)
                        {
                              negativeNum = 0x36;
                              //start delay access timer 10S
                              TimerHalStartTime(m_ecuSecurityTimerHandle_2,10000);
                              m_securityTimerDelayType_2 = SecurityTimer_AccessErrorDelay;
                        }
                        else
                        {
                              negativeNum = 0x37;
                        }
                    }
              }
          }
          break;
#if 0
          case 0x05:
          {
              if(udsLen!=2)
              {
                  return 0x13;
              }
              if(m_ECUreset_flag[2])
              {
                  negativeNum = 0x37;
              }
              if (m_currentSession != E_PROGROM_SESSION)
              {                 
                  return 0x7F;
              }              
          }
          break;
#endif
          case 0x02:
          {
              if(udsLen!=6)
              {
                      return 0x13;
              }
              //CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
              if (E_UDS_SECURITY_LEVEL1==m_SecuritySendSeedLevel)
              {
                  if (ByteArrayCheckIsSame(&udsData[2],m_securityKey,m_securityKeyLength)==0)
                  {
                      CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2,0);
                      m_currentSecurityLevel = E_UDS_SECURITY_LEVEL1;
                      //clear seed get state
					  m_u8ConsecutiveSeedCount[0] = 0;
                      SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                  }
                  else
                  {
                      if(m_u8ConsecutiveSeedCount[0] < 3)
                      {
                              m_u8ConsecutiveSeedCount[0] += 1;
                              SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                      }                        
                      if(m_u8ConsecutiveSeedCount[0]<3)
                      {
                            negativeNum = 0x35;
                      }
                      else
                      {
                            negativeNum = 0x36;
                            //start delay access timer 10S
                            TimerHalStartTime(m_ecuSecurityTimerHandle,10000);
                            m_securityTimerDelayType = SecurityTimer_AccessErrorDelay;
                      }
                      //stop key access timer
                      /*TimerHalStopTime(m_ecuSecurityTimerHandle);
                      m_securityTimerDelayType = SecurityTimer_None;*/
                      //m_currentSecurityLevel = NONE_SECURITY_LEVEL;
                  }
                  m_SecuritySendSeedLevel= E_UDS_NONE_SECURITY_LEVEL;
              }
              else
              {
                  negativeNum = 0x24;
              }

          }
          break;
          case 0x04:
          {
              if(udsLen!=6)
              {
                  return 0x13;
              }
              //CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
              if (E_UDS_SECURITY_LEVEL2==m_SecuritySendSeedLevel)
              {
                  if (ByteArrayCheckIsSame(&udsData[2],m_securityKey,m_securityKeyLength)==0)
                  {
                          CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,2,0);
                          m_currentSecurityLevel = E_UDS_SECURITY_LEVEL2;
                          //clear seed get state
						  m_u8ConsecutiveSeedCount[1] = 0;
                          SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                  }
                  else
                  {
                          if(m_u8ConsecutiveSeedCount[1] < 3)
                          {
                                  m_u8ConsecutiveSeedCount[1] += 1;
                                  SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                          }
                          if(m_u8ConsecutiveSeedCount[1]<3)
                          {
                            negativeNum = 0x35;
                          }
                          else
                          {
                            negativeNum = 0x36;
                            //start delay access timer 10S
                            TimerHalStartTime(m_ecuSecurityTimerHandle_2,10000);
                            m_securityTimerDelayType_2 = SecurityTimer_AccessErrorDelay;
                          }

                          //stop key access timer
                          /*TimerHalStopTime(m_ecuSecurityTimerHandle);
                          m_securityTimerDelayType = SecurityTimer_None;*/
                  }
                  m_SecuritySendSeedLevel = E_UDS_NONE_SECURITY_LEVEL;
              }
              else
              {
                  negativeNum = 0x24;
              }
            }
            break;
#if 0
          case 0x06:
          {
              if(udsLen!=6)
              {
                  return 0x13;
              }
              negativeNum =  0x7F;
            }
            break;
            
#endif
            default:
            negativeNum = 0x12;//sub function not supported
            break;
        }

    }
    else
    {
        negativeNum = 0x7F;//session error	
    }
    return negativeNum;  

}

/*********************************************
read data by identifier


*************************************/
static int16_t Service0x22Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint16_t Rdid_len = 0;
    uint16_t Rdid = 0;
    uint8_t negativeNum = 0;
    uint16_t didNum = 0;
    uint16_t i;
    uint16_t txLength;
    uint8_t result_Sum = SUBFUN_GET_INVALID_DID;
    //uint8_t responseData[64];
    
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;

    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    /*responseData[0] = udsData[0]+0x40;
    responseData[1] = udsData[1];
    responseData[2] = udsData[2];*/
    m_udsTxBuffer[0] = udsData[0]+0x40;
    
    
    if (CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)==0)
    {
        txLength = 1;
        if ((udsLen>=0x03)&&(udsLen<=(0x03+5*2)) &&(((udsLen - 1)%2) == 0))
        {
            enum_SeriveGetSubFunState result;
            pService22_DIDFunction pReadFun;
            
            didNum = (udsLen-1)/2;
            for(i=0;i<didNum;i++)
            {
                pReadFun = NULL;
                Rdid = ((udsData[i*2+1]<< 8) | udsData[i*2+2]);
                result = Service22GetDidFunction(Rdid,&pReadFun);

                if(result != SUBFUN_GET_OK)
                {
                    continue;
                }
                result_Sum = SUBFUN_GET_OK;
                if (result== SUBFUN_GET_OK)
                {
                    int16_t ret;
                    ret = pReadFun(&m_udsTxBuffer[txLength+2],&Rdid_len);
                    if(ret==0)
                    {
                        m_udsTxBuffer[txLength] = udsData[i*2+1];
                        m_udsTxBuffer[txLength+1] = udsData[i*2+2];
                        txLength += (Rdid_len+2);
                    }
                    else
                    {
                        negativeNum = 0x22;
                        break;
                    }
                }
                else if(result== SUBFUN_GET_INVALID_DID)
                {
                    negativeNum = 0x31;
                    break;
                } 
                else
                {
                    if(functionAddressFlag) 
                    {
                        return negativeNum;
                    }	
                    /*������-31*/
                    negativeNum = 0x31;
                    break;
                }
                                
            }
            if(result_Sum != SUBFUN_GET_OK)
            {
                negativeNum = 0x31;            
            }
                    
            if(0==negativeNum)
            {
              CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,m_udsTxBuffer,txLength,0);
            }
            
        }
        else
        {
            /*�����ĵ����ݸ�ʽ�򳤶Ȳ����ϱ�׼-13*/
            negativeNum = 0x13;	
        }
    }
    else
    {
        /*if(functionAddressFlag) 
        {
            return negativeNum;
        }*/
        /*�ӹ��ܲ�֧�ֵ���ϻỰ7F*/
        negativeNum = 0x7F;	
    }
  return negativeNum;
}

/**********************************
write data by identifier


********************************/
static int16_t Service0x2EProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  const STRUCT_DIAGNOSTIC *pDiagnostic;
  uint16_t did;
  uint8_t negativeNum;
  uint8_t u8Busy7f78CMD[8] = {0x03,0x7f,0x2e,0x78,0x00,0x00,0x00,0x00};
  uint8_t responseData[32];
  negativeNum = 0;  
  //pDiagnostic = NULL;
  pDiagnostic = serviceECUFunGroup+m_currentServiceNum;

  responseData[0] = udsData[0]+0x40;
  responseData[1] = udsData[1];
  responseData[2] = udsData[2];  
  
  if(udsLen<3)
  {
	  return 0x13;
  }
  did = (udsData[UDS_OFFSET_SUB_FUNC]<<8) |udsData[UDS_OFFSET_SUB_FUNC+1];
  if(CheckSessionIsValid(m_currentSession,pDiagnostic->sessionSupport)!=0)
  {
	  return 0x7F;
  }
  /*if(m_currentSecurityLevel==E_UDS_NONE_SECURITY_LEVEL)
  {
	return 0x33;
  }*/

  {
    pService2E_DIDFunction pWriteFun;
    switch(Service2EGetDidFunction(did,&pWriteFun,udsLen))//
    {
       case SUBFUN_GET_OK:
        {
          int16_t ret;
          CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
          /*add flash write-in funtion*/
          ret = pWriteFun(&udsData[3],udsLen-3);
          if(ret==0)
          {
            CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,3,0);            
          }
          else if(ret==-3)
          {
              negativeNum = 0x31;//used by vin char invalid
          }
          else if(ret==-4)
          {
              negativeNum = 0x22;//used by SK CRC Error
          }
          else
          {
              negativeNum = 0x72;//general programing error
          }
          if(ret>0)
          {
            negativeNum = ret;
          }
        }
        break;
      case SUBFUN_GET_INVALID_LENGTH:
        {
          negativeNum = 0x13;
        }
        break;
      case SUBFUN_GET_INVALID_DID:
        {
          negativeNum = 0x31;
        }
        break;
      case SUBFUN_GET_INVALID_SECURITY:
        {
          negativeNum = 0x33;
        }
        break;
      default:
        {
          negativeNum = 0x11;
        }
    }
  }

  return negativeNum;
}

/**************************************************
self defined uds service used for EOL test


******************************************************/
static int16_t Service0xBAProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint8_t responseData[32];
    uint16_t responseDataLength;

    negativeNum = ServiceTestSecurityProcess(udsData,udsLen,responseData,&responseDataLength);
    if(negativeNum==0)
    {
      CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,responseDataLength,0);
    }
    return negativeNum;
}

/**************************************************
self defined uds service used for EOL test


******************************************************/
int16_t Service0xBBProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    uint8_t responseData[128];
    uint16_t responseDataLength;

    negativeNum = ServiceTestProcess(udsData,udsLen,responseData,&responseDataLength);
    if(negativeNum==0)
    {
      CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,responseDataLength,0);
    }
    return negativeNum;
}

static int16_t ServiceNoDefinitionProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  int16_t negativeNum;
  negativeNum = 1;

  if(!functionAddressFlag)
  {
    negativeNum = 0x11;    
  }
  return negativeNum;
}

static int16_t NegativeResponseProcess(uint8_t negativeNum,uint8_t ServiceId, uint8_t functionAddressFlag)
{
  uint8_t responseData[8];
  responseData[0] = 0x7F;
  responseData[1] = ServiceId;
  responseData[2] = negativeNum;

  if(functionAddressFlag && ((negativeNum == 0x11) || (negativeNum == 0x7F) || \
                             (negativeNum == 0x12) ||  (negativeNum == 0x7E)   \
                             || (negativeNum == 0x31)))
  {
      return 0;
  }
  
  CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,responseData,3,0);
  
  return 0;
}

static pServiceFunction GetEcuServiceFunction(uint8_t ServiceId)
{
  uint16_t i;

  for(i=0;i<(sizeof(serviceECUFunGroup)/sizeof(serviceECUFunGroup[0]));i++)
  {
    if(ServiceId==serviceECUFunGroup[i].SID)
    {
      m_currentServiceNum = i;
      return serviceECUFunGroup[i].pFun;
    }
  }
  return ServiceNoDefinitionProcess;
}
static uint16_t GetVehicleSpeed(void)
{
	
	uint16_t motolSpeed = 0;
    double dataVaule = 0;
    DtcSnapshotRecordGlobal_t *SnapshotRecordDataTemp = NULL;   
    const can_signal_configure_t *pCan0SignalConfigure = NULL;    
    
	pCan0SignalConfigure = GetCan0SignalConfigure();
	
    ReadCanSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&pCan0SignalConfigure->VCU_VehicleSpeed,&dataVaule);
    motolSpeed = (uint32_t)dataVaule*0.05625;
}

static int16_t DiagnosticResponseProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  uint8_t funNum = 0;
  uint8_t negativeNum = 0;
  pServiceFunction pFun;
  
  funNum = udsData[UDS_OFFSET_SID];
  if((funNum == 0x11) || (funNum == 0x28) || (funNum == 0x2f) || (funNum == 0x85) ||
                         ((funNum == 0x10) && (0x02 == udsData[UDS_OFFSET_SID + 1])) )
  {     
#if TEST_CODE
      if(0)
#else
      if((GetVehicleSpeed() > 3)||(PeripheralHalGetKl15Status() !=  1))
#endif
      {
          negativeNum = 0x22;
          NegativeResponseProcess(negativeNum,funNum, functionAddressFlag);
          return 0;
      }
  }
  
  pFun = GetEcuServiceFunction(funNum);
  negativeNum = pFun(udsData,udsLen,functionAddressFlag); 
    
  if(0!=negativeNum)
  {
    if(negativeNum == 1)
    {
        return 0;
    }
    NegativeResponseProcess(negativeNum,funNum, functionAddressFlag);
  }
#if 0  
  else
  {    
    if(m_currentSession != E_DEFAULT_SESSION)
    {
      m_EcuOnlineFlag = 1;      
    }      
  }
#endif  
  
  if(m_currentSession != E_DEFAULT_SESSION)
  {
    m_EcuOnlineFlag = 1;      
  }    
  
  return 0;
}

int16_t TaskEcuDiagnosticInit(void)
{
  return 0;
}

// Place following data in section SYS_RAM 

static CanTpSdkBuffer_t m_tpBuffer;




const CanTpSdkParameter_t m_tpParameter = 
{
    .blockSize_APP = 0,//application mode
    .STmin_APP = 14,//application mode
    .blockSize_boot = 0,//boot mode
    .STmin_boot = 10,//boot mode
    .fillByte = 0xCC,
    .N_As_enforced = 25,//25ms
    .N_Ar_enforced = 25,//25ms
    .N_Bs_enforced = 75,//75ms
    .N_Br_enforced = 0,//(N_Br+N_Ar)low 25ms
    .N_Cs_enforced = 0,//(N_Cs+N_As)low 50ms
    .N_Cr_enforced = 150,//150ms
    .N_As_obd = 25,//25ms
    .N_Ar_obd = 25,//25ms
    .N_Bs_obd = 75,//70m
    .N_Br_obd = 0,//(N_Br+N_Ar)��25ms
    .N_Cs_obd = 0,
    .N_Cr_obd = 250,//(N_Br+N_Ar)��25ms
};

/*static void PrintTaskInfo(void)
{
    static uint32_t cycleCount = 0;
    cycleCount++;
    if(cycleCount<100)
    {
      return;
    }
    cycleCount = 0;
    unsigned long uxHighWaterMark_DataToCPU;
    uxHighWaterMark_DataToCPU = uxTaskGetStackHighWaterMark(NULL);        
    TBOX_PRINT("diagnostic thread remain stack space:%d.\r\n",uxHighWaterMark_DataToCPU);
}*/
static void ResetTboxStatusUpdate(void)
{
    m_currentSession = E_DEFAULT_SESSION;
    m_currentSecurityLevel= E_UDS_NONE_SECURITY_LEVEL;
    m_SecuritySendSeedLevel = E_UDS_NONE_SECURITY_LEVEL;
    CanTpSdkSetBootMode(0);
    /*if(m_bDtcControlFlag)
    {
      m_bDtcControlFlag = 0;
      //reset DTC control setting
      DtcProcessEnable();
    }
    if(m_bCommunicationControlFlag)
    {
      m_bCommunicationControlFlag = 0;
      //reset Communication control setting
    }*/
    SessionChangeToDefaultProcess();
}

static void DiagnosticSeedAccessInit(void)
{
    GetSeedAccessCountFromVolatile(m_u8ConsecutiveSeedCount);
    if((m_u8ConsecutiveSeedCount[0]==3))
    {    
	  TimerHalStartTime(m_ecuSecurityTimerHandle,10000); //ecu reset security access delay 10s->3s
      m_securityTimerDelayType = SecurityTimer_ResetDelay; 
      m_ECUreset_flag[0] = 1;   
      TBOX_PRINT("reset TimerStart\r\n");   
    }
    else if(m_u8ConsecutiveSeedCount[0] > 4)
    {
        m_u8ConsecutiveSeedCount[0] = 0;
        m_ECUreset_flag[0] = 0;
    } 
    else
    {
      m_ECUreset_flag[0] = 0;
    }
    if((m_u8ConsecutiveSeedCount[1]==3))
    {    
      TimerHalStartTime(m_ecuSecurityTimerHandle_2,10000); //ecu reset security access delay
      m_securityTimerDelayType_2 = SecurityTimer_ResetDelay; 
      m_ECUreset_flag[1] = 1;   
      TBOX_PRINT("reset TimerStart\r\n");   
    }
    else if(m_u8ConsecutiveSeedCount[1] > 4)
    {
        m_u8ConsecutiveSeedCount[1] = 0;
        m_ECUreset_flag[1] = 0;
    } 
    else
    {
      m_ECUreset_flag[1] = 0;
    }
    if((m_u8ConsecutiveSeedCount[2]==3))
    {    
      TimerHalStartTime(m_ecuSecurityTimerHandle_3,10000); //ecu reset security access delay
      m_securityTimerDelayType_3 = SecurityTimer_ResetDelay; 
      m_ECUreset_flag[2] = 1;   
      TBOX_PRINT("reset TimerStart\r\n");   
    }
    else if(m_u8ConsecutiveSeedCount[2] > 4)
    {
        m_u8ConsecutiveSeedCount[2] = 0;
        m_ECUreset_flag[2] = 0;
    } 
    else
    {
      m_ECUreset_flag[2] = 0;
    }
}


static void UdsServiceProcess(uint8_t *pTpData, uint32_t tpDataLength, uint8_t FunctionalAddress);

void TaskEcuDiagnostic(void *pvParameters)
{

    int16_t ecuOnlineTimerHandle;  
    int16_t ret;    
    uint8_t functionalFlag = 0;  
    //int16_t tpHandle;
    
    m_tpHandle = CanTpSdkInitialize(TBOX_CAN_CHANNEL_A,&m_tpParameter,&m_tpBuffer);  
    g_mpuHandle = MpuHalOpen();
	if(g_mpuHandle<0)//invalid handle
	{
		for(;;)
		{
			TBOX_PRINT("RemoteDiagnosticSdk : MpuHalOpen open error\r\n");
			vTaskDelay(1000);
		}
	}  
    
    if(m_tpHandle<0)
    {
      return ;
    }
    ServiceTestSetDiagnosticCan(TBOX_CAN_CHANNEL_A);
    
    CanTpSdkSetCanId(m_tpHandle,m_physicalReceiveCanId,m_functionalReceiveCanId,m_physicalTransmitCanId);
    
    m_ecuSecurityTimerHandle = TimerHalOpen();
    m_ecuSecurityTimerHandle_2 = TimerHalOpen();
    m_ecuSecurityTimerHandle_3 = TimerHalOpen();
    ecuOnlineTimerHandle = TimerHalOpen();  

    EolConfigureInit();
    DiagCanReportValueInit();
    VinInit();
    EskkeyCheckInit();
    RemoteContrlCheckInit();
    //CopyMcuAppSoftWareVersionToFlash();// save app software version
    //CopyMcuAppSoftWareNumberToFlash(); // save app software Number
    //CopyMcuAppPartNumberToFlash(); // save app PartNumber
    
#if 1
    DiagnosticSeedAccessInit();
#else
      TimerHalStartTime(m_ecuSecurityTimerHandle,3000); //ecu reset security access delay 10s->3s
      m_securityTimerDelayType = SecurityTimer_ResetDelay; 
      m_ECUreset_flag[0] = 1;   
      TimerHalStartTime(m_ecuSecurityTimerHandle_2,3000); //ecu reset security access delay
      m_securityTimerDelayType_2 = SecurityTimer_ResetDelay; 
      m_ECUreset_flag[1] = 1;   
      TimerHalStartTime(m_ecuSecurityTimerHandle_3,3000); //ecu reset security access delay
      m_securityTimerDelayType_3 = SecurityTimer_ResetDelay; 
      m_ECUreset_flag[2] = 1;   
#endif
    //
    while(1)
    {
      ret = CanTpSdkDataReceive(m_tpHandle,m_udsRxData,&m_udsRxDataLen,&functionalFlag);
      if(0==ret)
      {
      	
		uint32_t wakeCount;
		uint8_t pmState,wakeupSource;
		
		PowerManageSdkGetPowerInfo(&pmState,&wakeupSource,&wakeCount);
		if((pmState != 12)&&(pmState != 13))//E_PM_STATE_MCU_SLEEP  or E_PM_STATE_PRE_CHECK_CAN
		{
			m_sleepFlag = 0;
		}
		else
		{
			m_sleepFlag = 1;
		}
        if(m_sleepFlag==0)
        {
          if (m_currentSession == E_PROGROM_SESSION)
          {
              UdsServiceProcess(m_udsRxData, m_udsRxDataLen, functionalFlag);
          }
          else
          {
              DiagnosticResponseProcess(m_udsRxData, m_udsRxDataLen, functionalFlag);
          }
        }
      }
      if(m_EcuOnlineFlag)
      {
        m_EcuOnlineFlag = 0;
        TimerHalStartTime(ecuOnlineTimerHandle,5000);        
      }
      if(TimerHalIsTimeout(ecuOnlineTimerHandle)==0)
      {
        TimerHalStopTime(ecuOnlineTimerHandle);
        ResetTboxStatusUpdate();  
		m_OtaObdstatus = 2;
      }
      if(TimerHalIsTimeout(m_ecuSecurityTimerHandle)==0)
      {
        TBOX_PRINT("Timer out!!!\r\n");   
        TimerHalStopTime(m_ecuSecurityTimerHandle);
        if(SecurityTimer_ResetDelay==m_securityTimerDelayType)
        {
			m_ECUreset_flag[0] = 0;
			m_u8ConsecutiveSeedCount[0] = 0;
			SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
        }
        if(SecurityTimer_AccessErrorDelay==m_securityTimerDelayType)
        {
			m_u8ConsecutiveSeedCount[0] = 0;
			SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
        }
        m_securityTimerDelayType = SecurityTimer_None;
      }
      if(TimerHalIsTimeout(m_ecuSecurityTimerHandle_2)==0)
      {
        TBOX_PRINT("Timer out!!!\r\n");   
        TimerHalStopTime(m_ecuSecurityTimerHandle_2);
        if(SecurityTimer_ResetDelay==m_securityTimerDelayType_2)
        {
			m_ECUreset_flag[1] = 0;
			m_u8ConsecutiveSeedCount[1] = 0;
			SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
        }
        if(SecurityTimer_AccessErrorDelay==m_securityTimerDelayType_2)
        {
           m_u8ConsecutiveSeedCount[1] = 0;
           SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
        }
        m_securityTimerDelayType_2 = SecurityTimer_None;
      }
      if(TimerHalIsTimeout(m_ecuSecurityTimerHandle_3)==0)
      {
        TBOX_PRINT("Timer out!!!\r\n");   
        TimerHalStopTime(m_ecuSecurityTimerHandle_3);
        if(SecurityTimer_ResetDelay==m_securityTimerDelayType_3)
        {
           m_ECUreset_flag[2] = 0;
           m_u8ConsecutiveSeedCount[2] = 0;
           SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
        }
        if(SecurityTimer_AccessErrorDelay==m_securityTimerDelayType_3)
        {
           m_u8ConsecutiveSeedCount[2] = 0;
           SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
        }
        m_securityTimerDelayType_3 = SecurityTimer_None;
      }
      //
      vTaskDelay(5);
      ServiceTestCycleProcess(5);//5ms
      //PrintTaskInfo();
      CheckEolConfigureState();
      CheckCanReportState();
      CheckVinCyleProcess();
      CheckEskValidtateDtc();
    }
}


/**************************************************************
Description:	Communication Control process(0x28)
Input:
bCanRxMsg	receive can data
Output:	        service ID
Return:	        NRC
Others:
***************************************************************/
static uint8_t CommunicationControl(uint8_t ContolType, uint8_t SubService)
{
  uint8_t ret = 0;
  
  if(ContolType == 0x00)
  {
    switch(SubService)
    {

    case 01:
          CanPeriodSendEnableAll();
      break;
	  
    case 03:
      //CycleSendEnable(TBOX_CAN_CHANNEL_E);
      if(m_bCommunicationControlFlag == 1)
      {
          CanPeriodSendEnableAll();
          NmMessageSendEnable();
          m_bCommunicationControlFlag = 0;
      }
      break;
      
    default:
      ret = 0x31;
      break;
    }
  }
  else if(ContolType == 0x03)
  {  
    switch(SubService)
    {
    
    case 01:             
        CanPeriodSendDisableAll();//应用报文
      break;
    case 03:             
      //CycleSendDisable(TBOX_CAN_CHANNEL_E);
      if(m_bCommunicationControlFlag == 0)
      {
        /*CycleSendDisableAll();
        SgmwGWNm_AllDisableCommunication();*/
        CanPeriodSendDisableAll();//应用报文
        NmMessageSendDisable(); //网管报文
        m_bCommunicationControlFlag = 1;
      }
      break;
      
    default:
      ret = 0x31;
      break;
    }
  }
  else
  {
    ret = 0x12;
  }
  
  return ret;
}



/************************************************************** 
  *
  *
  *                   Boot Funcation
  *
  *
***************************************************************/
//#define _FLASH_DRIVER_RAM  1
static uint32_t m_flashAddress = 0;
static uint32_t m_flashSize = 0;
static uint32_t m_flashCrc32Value;
static uint32_t m_flashDriverDownLoadFlag = 0;
static uint8_t m_requestCpu_Flag = 0;
static uint8_t m_blockSequenceCounter = 0;

void SetCpuFlagupdataFlag(uint8_t flag)
{
	m_requestCpu_Flag = flag;
}
uint8_t GetCpuFlagupdataFlag()
{
	return m_requestCpu_Flag;
}
uint8_t GetOBDFlag()
{
	return m_OtaObdstatus;
}
uint8_t GetDtcControlFlag()
{
	return m_bDtcControlFlag;
}
/******************************************************
return 
   0: success
*******************************************************/
int16_t writeToRam(uint32_t address, uint8_t *pData, uint32_t dataLength)
{
//uint8_t *pRam;
//uint32_t i;
//pRam = (uint8_t *)address;
//for(i=0;i<dataLength;i++)
//{
//  pRam[i] = pData[i];
//}
    return 0;
}

static int8_t FlashErase(uint32_t address, uint32_t size)
{
    int8_t ret;
#ifdef _FLASH_DRIVER_RAM
    if (m_flashDriverDownLoadFlag == 0)
    {
        return -2;
    }
#endif
//  //עҢ,Ҫ??dress?ĵؖ???Χ׶??-
//  if (address >= 0x10018000 && address < 0x10078000)
//  {
//      FOTA_EraseSectors(1);
//  }
//  else if(address >= 0x12018000 && address < 0x12078000)
//  {
//      FOTA_EraseSectors(2);
//  }

    if (Cy_Flashc_GetMainMap() == CY_FLASH_MAPPING_A)
    {
        TBOX_PRINT("Erase APP2!----------------------------------->\r\n");
//      FOTA_EraseSectors(2);
        FlashHalOtaFlashErase(1);
    }
    else
    {
        TBOX_PRINT("Erase APP1!----------------------------------->\r\n");
//      FOTA_EraseSectors(1);
        FlashHalOtaFlashErase(0);
    }

    ///FOTA_EraseSectors(2);
    /*
    uint32_t* p_TestFlsTop = (uint32_t*)0x10010000;
  
    for (uint8_t i = 0; i < 30; i++) // 30 * 32k byte =960k byte
    {
       for(uint32_t i_wordId = 0; i_wordId < 0x08000; i_wordId++)
       {
           CY_ASSERT(p_TestFlsTop[i_wordId] == 0xFFFFFFFF);
       }
    }
    */
    //Term_Printf("Erase completed\r\n");
    ret = 0;

    return ret;
}

static uint8_t CharToHex(uint8_t charData)
{
    uint8_t value;
    if ((charData >= '0') && (charData <= '9'))
    {
        value = charData - '0';
    }
    else if ((charData >= 'a') && (charData <= 'f'))
    {
        value = charData - 'a' + 10;
    }
    else if ((charData >= 'A') && (charData <= 'F'))
    {
        value = charData - 'A' + 10;
    }
    else
    {
        value = 0;
    }
    return value;
}

int16_t CharArrayToHexArray(uint8_t *pCharIn, uint16_t charLengthIn, uint8_t *pHexOut, uint32_t *pHexLenthOut)
{
    uint16_t hexLength, i;

    if (charLengthIn == 0)
    {
        return -1;
    }
    hexLength = charLengthIn / 2;
    for (i = 0; i < hexLength; i++)
    {
        pHexOut[i] = (CharToHex(pCharIn[2 * i]) << 4) + CharToHex(pCharIn[2 * i + 1]);
    }
    *pHexLenthOut = hexLength;
    return 0;
}

/***************************************
return :
  0: checksum is ok,ϖԚֱ?ӷ??؏K
*****************************************/
static int8_t FlashCheckSumIsOk(uint32_t checkSum) //0x31??ˍ?ģhecksum
{
    int8_t ret;
    ret = 0;
    m_flashCrc32Value = 0xFFFFFFFF;
    m_flashCrc32Value = Crc32(&g_crc32Object,m_flashCrc32Value,(uint8_t *)CFLASH_BANKB_CM4_START_ADDRESS,m_flashSize);
    m_flashCrc32Value ^= 0xFFFFFFFF;

    //alter,2023-1-3,
    //m_flashCrc32Value = GetFlashCrcCheckSum();
//  m_flashCrc32Value = checkSum;
    if (m_flashCrc32Value != checkSum)
    {
        ret = 1;
    }
    return ret;
}

static void TransmitNegative78ResponseData(uint8_t serviceId)
{
    uint8_t responseData[8];
    responseData[0] = 0x7F;
    responseData[1] = serviceId;
    responseData[2] = 0x78;
    CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 3, 0);
}

int16_t UdsUpDtaMcuDiagnosticSdkSendReq(uint8_t Subcmd,uint8_t status,uint8_t *data,uint16_t lenth)
{
    uint16_t i = 0;
	static uint8_t SendCnt;
	MpuHalDataPack_t l_txPack;
	uint8_t luctxData[300] = {0};
	    
    l_txPack.aid = 0x05;
    l_txPack.mid = 0x02;
    l_txPack.subcommand = Subcmd;
	
	luctxData[0] = 0; 
	if(Subcmd == COMMAND_UPDATA_DATA_REQ)
	{
	    luctxData[1] = status; 
	    luctxData[2] = m_blockSequenceCounter; 
	    luctxData[3] = 0; 
	    luctxData[4] = 0; 
	    luctxData[5] = lenth>>8; 
	    luctxData[6] = lenth; 
	    for(i = 0;i < lenth;i++)
	    {
	        luctxData[7+i] = data[i];
	    }
	    l_txPack.dataLength = 7 + lenth;
	}
	else
	{
	    for(i = 0;i < lenth;i++)
	    {
	        luctxData[1+i] = data[i];
	    }
	    l_txPack.dataLength = 1 + lenth;
	}
	l_txPack.pDataBuffer = luctxData;
    l_txPack.dataBufferSize = sizeof(luctxData);
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}

static uint8_t BootSerivice0x10Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t subFunction;
    uint8_t posRspMsgIndication;
    uint8_t responseData[20];

    negativeNum = 0;
    subFunction = pTpData[1] & 0x7F;
    posRspMsgIndication = (pTpData[1] >> 7) & 0x01;

    if (0x01 == subFunction) //default
    {
        if (posRspMsgIndication == 0)
        {
            responseData[0] = 0x50;
            responseData[1] = 0x01;
            responseData[2] = 0x00;
            responseData[3] = 0x32;
            responseData[4] = 0x01;
            responseData[5] = 0xf4;
            //alter,עҢ,bootloaderʹӃ?ĊǅCAN
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 6, functionalAddress);
            vTaskDelay(50);
            //alter,Եô?ԓ?CYT2B7
            PeripheralHalMcuHardReset();
            CanTpSdkSetBootMode(0);
        }
    }
    else if (0x02 == subFunction) //programing
    {
        if ((m_currentSession == E_EXTEND_SESSION) || (m_currentSession == E_PROGROM_SESSION))
        {
            m_EcuOnlineFlag = 1;
            m_currentSession = E_PROGROM_SESSION;
            if (posRspMsgIndication == 0)
            {
                responseData[0] = 0x50;
                responseData[1] = 0x02;
                responseData[2] = 0x00;
                responseData[3] = 0x32;
                responseData[4] = 0x01;
                responseData[5] = 0xf4;
                CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 6, functionalAddress);
            }
            CanTpSdkSetBootMode(1);
        }
        else
        {
            negativeNum = 0x22;
        }
    }
    else if (0x03 == subFunction) //extended
    {
		if((m_currentSession == E_DEFAULT_SESSION)||(m_currentSession == E_EXTEND_SESSION))
		{
			m_EcuOnlineFlag = 1;
			m_currentSession = E_EXTEND_SESSION;
			if(posRspMsgIndication==0)
			{
				responseData[0] = 0x50;
				responseData[1] = 0x03;
				responseData[2] = 0x00;
				responseData[3] = 0x32;
				responseData[4] = 0x01;
				responseData[5] = 0xf4;
				CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 6, functionalAddress);
			}
		}
		else
		{
		  negativeNum = 0x7E;
		}		 
    }
    else
    {
        negativeNum = 0x12; //sub function not supported
    }
    //ResetSessionTimer();
    return negativeNum;
}

static uint8_t BootService0x11Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t subFunction;
    uint8_t posRspMsgIndication;
    uint8_t responseData[20];

    negativeNum = 0;
    subFunction = pTpData[1] & 0x7F;
    posRspMsgIndication = (pTpData[1] >> 7) & 0x01;

    if (0x01 == subFunction)
    {
        if (posRspMsgIndication == 0)
        {
            responseData[0] = 0x51;
            responseData[1] = 0x01;
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2, functionalAddress);
            //alter,2023-1-3
            vTaskDelay(100);
            PeripheralHalMcuHardReset();
        }
    }
    else if (0x02 == subFunction)
    {
        if (posRspMsgIndication == 0)
        {
            responseData[0] = 0x51;
            responseData[1] = 0x02;
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2, functionalAddress);
        }
    }
    else if (0x03 == subFunction)
    {
        if (posRspMsgIndication == 0)
        {
            responseData[0] = 0x51;
            responseData[1] = 0x03;
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2, functionalAddress);
            vTaskDelay(100);
            PeripheralHalMcuHardReset();
        }
    }
    else
    {
        negativeNum = 0x12; //sub function not supported
    }

    return negativeNum;
}

static uint8_t BootService0x27Process(uint8_t *udsData, uint32_t udsLen, uint8_t functionAddressFlag)
{
    uint8_t negativeNum;
    uint8_t subFunction;
    uint8_t responseData[20];
    negativeNum = 0;
    subFunction = udsData[1];
    responseData[0] = udsData[0] + 0x40;
    responseData[1] = udsData[1];
	if (0x05 == subFunction) //FBL seed
    {
        if (udsLen != 2)
        {
            return 0x13;
        }
        if (m_ECUreset_flag[2])
        {
            negativeNum = 0x37;
        }
        else if (m_currentSecurityLevel == E_UDS_SECURITY_LEVEL3)
        {
            memset((responseData + 2), 0, 4);
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 6, 0);
            return negativeNum;
        }
        else
        {
            if (m_u8ConsecutiveSeedCount[2] < 3)
            {
                UdsGetSeed(m_securitySeed, &m_securitySeedLength);
                UdsSeedtoKey(m_securitySeed, m_securitySeedLength, m_securityKey, &m_securityKeyLength, E_SECURITY_CALCULATE_LEVEL3);
                memcpy((responseData + 2), m_securitySeed, m_securitySeedLength);
                CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2 + m_securitySeedLength, functionAddressFlag);
                m_SecuritySendSeedLevel = E_UDS_SECURITY_LEVEL3;

            }
            else
            {
                if (m_securityTimerDelayType != SecurityTimer_AccessErrorDelay)
                {
                    negativeNum = 0x36;
                    //start delay access timer 10S
                    TimerHalStartTime(m_ecuSecurityTimerHandle_3, 10000);
                    m_securityTimerDelayType_3 = SecurityTimer_AccessErrorDelay;
                }
                else
                {
                    negativeNum = 0x37;
                }
            }
        }
    }
    else if (0x06 == subFunction) //FBL key
    {
        if (udsLen != 6)
        {
            return 0x13;
        }
        //CanTpSdkDataTransmit(m_tpHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
        if (E_UDS_SECURITY_LEVEL3 == m_SecuritySendSeedLevel)
        {
            if (ByteArrayCheckIsSame(&udsData[2], m_securityKey, m_securityKeyLength) == 0)
            {
                CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2, 0);
                m_currentSecurityLevel = E_UDS_SECURITY_LEVEL3;
                //clear seed get state
                m_u8ConsecutiveSeedCount[2] = 0;
                SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
            }
            else
            {
                if (m_u8ConsecutiveSeedCount[2] < 3)
                {
                    m_u8ConsecutiveSeedCount[2] += 1;
                    SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                }
                if (m_u8ConsecutiveSeedCount[2] < 3)
                {
                    negativeNum = 0x35;
                }
                else
                {
                    negativeNum = 0x36;
                    //start delay access timer 10S
                    TimerHalStartTime(m_ecuSecurityTimerHandle_3, 10000);
                    m_securityTimerDelayType_3 = SecurityTimer_AccessErrorDelay;
                }

                //stop key access timer
                /*TimerHalStopTime(m_ecuSecurityTimerHandle);
                m_securityTimerDelayType = SecurityTimer_None;*/
            }
            m_SecuritySendSeedLevel = E_UDS_NONE_SECURITY_LEVEL;
        }
        else
        {
            negativeNum = 0x24;
        }
    }
    else
    {
        negativeNum = 0x12; //sub function not supported
    }

    m_EcuOnlineFlag = 1;
    return negativeNum;
}

/**************************************************************************
routine control

**************************************************************************/
//alter
static uint8_t BootSerivice0x31Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t subFunction;
    uint8_t responseData[20];
    uint16_t did;
	uint8_t status = 0x00;
	uint8_t Sendstatus = 0x00;
    negativeNum = 0;
    subFunction = pTpData[1];

    did = ((uint16_t)pTpData[2] << 8) + (uint16_t)pTpData[3];
    responseData[0] = 0x71;
    responseData[1] = pTpData[1];
    responseData[2] = pTpData[2];
    responseData[3] = pTpData[3];



    if (0x01 == subFunction) //startRoutine
    {
        if (0x0202==did)  //check programing Interity(?�?̐򍪕???Ɍה??ҥ
        {
            uint32_t checkSum;

            if (m_currentSession == E_DEFAULT_SESSION) //Ĭȏ?�????
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            if (m_currentSecurityLevel == E_UDS_NONE_SECURITY_LEVEL) //0x27ɨփm_currentSecurityLevel
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            //alter,2023-1-3??עҢ:ϖԚ?ĳrecʇ?Ķ??󵄬˹Ҕ΄??֐?ģhecksum«ӫ?Ƌ�???ģhecksum«Ξ??ƥŤ
            checkSum = ((uint32_t)pTpData[4] << 24) + ((uint32_t)pTpData[5] << 16) + ((uint32_t)pTpData[6] << 8) + ((uint32_t)pTpData[7] << 0);
            TransmitNegative78ResponseData(pTpData[0]); //pTpData[0]?͊ǳervice id:0x31,????62 7f 31 78,?ȴ?

            if (FlashCheckSumIsOk(checkSum) == 0) //-:CRCУѩOK,??CAN??ˍ?Đ?ѩ«ӫMCU?Ƌ㵄�?Ƚύ
            {
                if ((m_flashAddress >= CFLASH_FLASH_DRIVER_START_ADDRESS) && (m_flashAddress <= CFLASH_FLASH_DRIVER_END_ADDRESS)) //???բ????�?ĵĊǿ??
                {
                    m_flashDriverDownLoadFlag = 1;
                }
                else if ((m_flashAddress >= CFLASH_BANKB_CM4_START_ADDRESS) && (m_flashAddress < CFLASH_BANKB_CM4_END_ADDRESS))
                {
                    //FOTA_BankAPPIntegrityFlagUpdate(1);
                    FlashHalOtaIntegrityFlagUpdate(1);
                    //����������һ����
                    if(FlashHalOtaGetActiveBank() == 1)//��ǰB
                    {
                        FlashHalOtaSetActiveBank(0);//����A
                    }
                    else//��ǰA
                    {
                        FlashHalOtaSetActiveBank(1);//����B
                    }         
                }
                responseData[4] = 0x00; //correct result
            }
            else
            {
                responseData[4] = 0x01; //incorrect result
            }
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 5, functionalAddress);
        }
        else if (0x0203 == did) //check programing preconditions(?�?ೌǰ̡�??)
        {
            if (m_currentSession != E_EXTEND_SESSION)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            //m_flashCrc32Value = m_Crc32InitValue;
            //responseData[4] = 0x00;//correct result
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 4, functionalAddress);
        }
        else if (0xFF00 == did) //erase memory()
        {
            int8_t lengthFormat;
            int8_t addressFormat;
            int8_t i, index;
            uint32_t eraseAddress;
            uint32_t eraseSize;
            lengthFormat = (pTpData[4] >> 4) & 0x0F;
            addressFormat = pTpData[4] & 0x0F;
            eraseAddress = 0;
            eraseSize = 0;

            if ((lengthFormat == 4) && (addressFormat == 4))
            {
                index = 5;
            }
            else
            {
                lengthFormat = 4;
                addressFormat = 4;
                index = 4;
            }

            if (m_currentSession == E_DEFAULT_SESSION)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            if (m_currentSecurityLevel == E_UDS_NONE_SECURITY_LEVEL)
            {
                negativeNum = 0x33;
                return negativeNum;
            }

            if ((addressFormat > 0) && (addressFormat <= 4))
            {
                if ((lengthFormat > 0) && (lengthFormat <= 4))
                {
                    for (i = addressFormat - 1; i >= 0; i--)
                    {
                        eraseAddress |= (uint32_t)pTpData[index] << (i * 8);
                        index++;
                    }
                    for (i = lengthFormat - 1; i >= 0; i--)
                    {
                        eraseSize |= (uint32_t)pTpData[index] << (i * 8);
                        index++;
                    }
                    TransmitNegative78ResponseData(pTpData[0]);
                    //erase flash function
                    if (eraseAddress == CFLASH_BANKA_CM4_START_ADDRESS)
                    {
                        //FOTA_BankAPPIntegrityFlagUpdate(0);
                        FlashHalOtaIntegrityFlagUpdate(0);
                    }

                    if (m_flashDriverDownLoadFlag == 0)
                    {
                        //alter
                        //MemMpu_Init();
                    }
                    //alter,2023-1-2

                    if (FlashErase(eraseAddress, eraseSize) == 0)
                    {
                        //responseData[4] = 0x00;//correct result
                        CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 4, functionalAddress);
                        //OtaCrc32Init(&m_flashCrc32Value);
                        Crc32Init(&g_crc32Object,0x04C11DB7);
                        m_flashCrc32Value = 0xFFFFFFFF;
                    }
                    else
                    {
                        //responseData[4] = 0x01;//incorrect result
                        negativeNum = 0x72; //
                    }

                }
                else
                {
                    negativeNum = 0x13; //frame length error
                }
            }
            else
            {
                negativeNum = 0x13; //frame length error
            }
        }
        else if (0xFF01 == did) //check programing dependencies(?�?ೌҀ5?؏?)
        {
            if (m_currentSession == E_DEFAULT_SESSION)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            if (m_currentSecurityLevel == E_UDS_NONE_SECURITY_LEVEL)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            responseData[4] = 0x00; //correct result
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 5, functionalAddress);
        }
        else if (0xDA04 == did) 
        {
            if (m_currentSession == E_DEFAULT_SESSION)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            if (m_currentSecurityLevel == E_UDS_NONE_SECURITY_LEVEL)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            responseData[4] = 0x01; //result
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 5, functionalAddress);
			UdsUpDtaMcuDiagnosticSdkSendReq(COMMAND_UPDATA_CRC_REQ,status,&pTpData[4],2);
        }
        else
        {
            negativeNum = 0x31; //did not supported
        }
    }
	else if(0x02 == subFunction)
	{
		if (0xDA04 == did) 
		{
            if (m_currentSession == E_DEFAULT_SESSION)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            if (m_currentSecurityLevel == E_UDS_NONE_SECURITY_LEVEL)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            responseData[4] = GetCpuCRCResult(); //correct result
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 5, functionalAddress);
		}
        else
        {
            negativeNum = 0x31; //did not supported
        }
	}
	else if(0x03 == subFunction)
	{
		if (0xDA04 == did) 
		{
            if (m_currentSession == E_DEFAULT_SESSION)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            if (m_currentSecurityLevel == E_UDS_NONE_SECURITY_LEVEL)
            {
                negativeNum = 0x33;
                return negativeNum;
            }
            responseData[4] = 0x04; //correct result
            responseData[5] = 0x01; //correct result
            CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 6, functionalAddress);
		}
        else
        {
            negativeNum = 0x31; //did not supported
        }
	}
    else
    {
        negativeNum = 0x12; //sub function not supported
    }
    m_EcuOnlineFlag = 1;
    return negativeNum;
}

/***************************************************************************
request download,կ?ϒǍ???ط?α4????ӕﶏ҇ϲECUςԘ?Ċ?�?*************************************************************************/
static uint8_t BootSerivice0x34Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t responseData[20];
    uint32_t address;
    uint32_t size;
	uint8_t status = 0x00;
	
    negativeNum = 0;

    responseData[0] = 0x74;
    responseData[1] = 0x20;
    responseData[2] = 0x0F;
    responseData[3] = 0X02;

    if (m_currentSession != E_PROGROM_SESSION)
    {
        negativeNum = 0x33;
        return negativeNum;
    }

    if (m_currentSecurityLevel != E_UDS_SECURITY_LEVEL3)
    {
        negativeNum = 0x33;
        return negativeNum;
    }
	
    if (dataLength >= 0x0C)
    {
        negativeNum = 0x13;
        return negativeNum;
    }

    if ((pTpData[1] != 0)||(pTpData[2] != 0x44))
    {
        negativeNum = 0x31;
        return negativeNum;
    }
	
    address = ((pTpData[3]<<24) | (pTpData[4] << 16) | (pTpData[5] << 8) | pTpData[6]) ;

    size = ((pTpData[7]<<24) | (pTpData[8] << 16) | (pTpData[9] << 8) | pTpData[10]) ;
	
	UdsUpDtaMcuDiagnosticSdkSendReq(COMMAND_UPDATA_SIZE_REQ,status,&pTpData[7],4);
    CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 4, functionalAddress); //ϲկ?ϒǻظ?ЅϢ
    
    return negativeNum;
}

/*****************************************************************************
transfer data
****************************************************************************/
static uint8_t BootSerivice0x36Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress) //?ъ?ﶏ�??ʤ??ECU
{
    uint8_t negativeNum;
    uint8_t responseData[20];
	uint8_t status = 0x00;
    uint8_t blockSequenceCounter;
    negativeNum = 0;
    blockSequenceCounter = pTpData[1]; //ʽ?ݿ鼆�?

    if (m_currentSession != E_PROGROM_SESSION)
    {
        negativeNum = 0x33;
        return negativeNum;
    }

    if (m_currentSecurityLevel != E_UDS_SECURITY_LEVEL3)
    {
        negativeNum = 0x33;
        return negativeNum;
    }

    if ((0x00 == GetUpDataBagcnt()) 
		||(0xFF == GetUpDataBagcnt())
		||(GetUpDataBagcnt() == (blockSequenceCounter - 1)))
    {
		if(m_blockSequenceCounter==blockSequenceCounter)
		{
			responseData[0] = 0x76;
			responseData[1] = m_blockSequenceCounter;
	        TransmitNegative78ResponseData(pTpData[0]);
			UdsUpDtaMcuDiagnosticSdkSendReq(COMMAND_UPDATA_DATA_REQ,status,&pTpData[3],dataLength);
			m_blockSequenceCounter++;
			CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2, functionalAddress);
		}
		else if(blockSequenceCounter==(m_blockSequenceCounter-1))
		{
			m_blockSequenceCounter = blockSequenceCounter;
			responseData[0] = 0x76;
			responseData[1] = m_blockSequenceCounter;
			status = 0x80;
	        TransmitNegative78ResponseData(pTpData[0]);
			UdsUpDtaMcuDiagnosticSdkSendReq(COMMAND_UPDATA_DATA_REQ,status,&pTpData[3],dataLength);
			m_blockSequenceCounter++;
			CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 2, functionalAddress);
		}
		else
		{
			negativeNum = 0x73; //wrong Block Sequence Counter
		}
    }
    else
    {
        negativeNum = 0x71; //wrong Block Sequence Counter
    }
    m_EcuOnlineFlag = 1;
    return negativeNum;
}

/****************************************************************************
request transfer exit
*****************************************************************************/
static uint8_t BootSerivice0x37Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t responseData[20];
	uint8_t status = 0x00;
		
    negativeNum = 0;

    if (m_currentSession != E_PROGROM_SESSION)
    {
        negativeNum = 0x33;
        return negativeNum;
    }

    if (m_currentSecurityLevel != E_UDS_SECURITY_LEVEL3)
    {
        negativeNum = 0x33;
        return negativeNum;
    }

    responseData[0] = 0x77;
    CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, 1, functionalAddress);
	
	UdsUpDtaMcuDiagnosticSdkSendReq(COMMAND_UPDATA_END_REQ,status,&pTpData[3],0);
	
    m_EcuOnlineFlag = 1;
    return negativeNum;
}

static uint8_t BootSerivice0x2EProcess(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t responseData[50];
    uint16_t did;
    //uint8_t posRspMsgIndication;

    negativeNum = 0;

    if (m_currentSession != E_PROGROM_SESSION)
    {
        negativeNum = 0x33;
        return negativeNum;
    }

    if (m_currentSecurityLevel != E_UDS_SECURITY_LEVEL3)
    {
        negativeNum = 0x33;
        return negativeNum;
    }
    did = ((uint16_t)pTpData[1] << 8) + (uint16_t)pTpData[2];
    if (did == 0xF184)
    {
		Service2EWriteAppSoftwareFingerprint(&pTpData[3], (uint16_t)&dataLength);
    }
    else
    {
        negativeNum = 0x31; //not supported did
    }


    m_EcuOnlineFlag = 1;
    return negativeNum;
}

static uint8_t BootSerivice0x22Process(uint8_t *pTpData, uint32_t dataLength, uint8_t functionalAddress)
{
    uint8_t negativeNum;
    uint8_t responseData[64];
    uint16_t did;
    uint32_t length = 0;

    did = (pTpData[1] << 8) + pTpData[2];
    negativeNum = 0;
    if (0xF1A0 == did) 
    {
		WorkFlashVehicleInforRead(E_PARAMETER_INFO_ESK_KEY,&responseData[3],&length);
    }
    else if (0xF184 == did) //SupplierIdentifier Information
    {
		WorkFlashVehicleInforRead(E_PARAMETER_INFO_APP_SOFT_FINGER_PRINT, &responseData[3],&length);
    }
    else if (0xF180 == did)
    {
        uint16_t u16Len;
        Service22ReadBootSoftwareVersion(&responseData[3], &u16Len);
        length = u16Len;
    }
    else if (0x1120 == did)
    {
        uint16_t u16Len;
        Service22ReadUpDataProgress(&responseData[3], &u16Len);
        length = u16Len;
    }
    else if (0x1121 == did)
    {
        uint16_t u16Len;
        Service22ReadUpDataResult(&responseData[3], &u16Len);
        length = u16Len;
    }
    else
    {
        negativeNum = 0x31;
    }
    if (0 == negativeNum)
    {
        responseData[0] = 0x62;
        responseData[1] = pTpData[1];
        responseData[2] = pTpData[2];
        CanTpSdkDataTransmit(m_tpHandle, m_physicalTransmitCanId, responseData, length + 3, functionalAddress);
    }

    m_EcuOnlineFlag = 1;
    return negativeNum;
}

static void UdsServiceProcess(uint8_t *pTpData, uint32_t tpDataLength, uint8_t FunctionalAddress)
{
    uint8_t serviceId;
    uint8_t negativeNum;
    serviceId = pTpData[0];
    negativeNum = 0;
    if (0x10 == serviceId) //0x10,ӃӚ???״̬(????˙?󓚱0kmʇ10 02,???�?�??ĜִА)
    {
        negativeNum = BootSerivice0x10Process(pTpData, tpDataLength, FunctionalAddress);//BootSerivice0x10Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x11 == serviceId) //ECU RESET;11 01??hardReset: Ϡ??Ӛ?Ͽ??�??ԙɏ?�?1 02??keyOffOnReset?? ˆӚ˾???͖ؐ?㻰�?׻ 11 03??softReset
    {
        negativeNum = BootService0x11Process(pTpData, tpDataLength, FunctionalAddress); //
    }
    else if (0x27 == serviceId) //??ȫ?Îʍ
    {
        negativeNum = BootService0x27Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x31 == serviceId) //31??αʇ??CUĚփ?Ē?Щ?ٗ?еĽӿڮ?Ԧlash???�?
    {
        negativeNum = BootSerivice0x31Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x34 == serviceId) //RequestDownload,ɨփm_flashAddress?ȲΊ?31֐ִА
    {
        negativeNum = BootSerivice0x34Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x36 == serviceId) //TransferData
    {
        negativeNum = BootSerivice0x36Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x37 == serviceId) //RequestTransferExit
    {
        negativeNum = BootSerivice0x37Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x3E == serviceId) //??ַ?α
    {
        negativeNum = Service0x3EProcess(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x2E == serviceId) //ͨ???
    {
        negativeNum = BootSerivice0x2EProcess(pTpData, tpDataLength, FunctionalAddress);
    }
    else if (0x22 == serviceId) //ͨ???
    {
        negativeNum = BootSerivice0x22Process(pTpData, tpDataLength, FunctionalAddress);
    }
    else //unsupported service
    {
        negativeNum = ServiceNoDefinitionProcess(pTpData, tpDataLength, FunctionalAddress);
    }
    if (negativeNum != 0)
    {
        //transmit negative response
        NegativeResponseProcess(negativeNum, serviceId, FunctionalAddress);
    }
}
