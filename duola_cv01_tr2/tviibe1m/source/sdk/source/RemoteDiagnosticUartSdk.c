#include "mpuHal.h"
#include "logHal.h"
#include "timerHal.h"
#include "RemoteDiagnosticSdk.h"
#include "RemoteDiagnosticUartSdk.h"
#include "udsTp.h"
#include "FreeRTOS.h"
#include "task.h"
#include "canTpSdk.h"
#include "peripheralHal.h"
#include "canPeriodTask.h"
#include "autoSarNmSdk.h"
#include "timeSyncSdk.h"
#include "projectConfigure.h"
#include "taskDtcProcess.h"
#include "udsDidFunction.h"
#include "udsSecurityCalculate.h"
#include "udsEolTest.h"
#include "ParameterStoreManageApp.h"
#include "canPeriodTask.h"

typedef enum _SEESION_TYPE
{
	NO_SESSION = 0,
	DEFAULT_SESSION, 
	PROGROM_SESSION,
	EXTEND_SESSION,
	NON_DIAGNOSTIC,
}ENUM_SESSION_STATE;
typedef enum _SECURITY_LEVEL
{
	UDS_NONE_SECURITY_LEVEL = 0,
	UDS_SECURITY_LEVEL1,
    UDS_SECURITY_LEVEL2,
	UDS_SECURITY_LEVEL3,
	UDS_SECURITY_LEVEL5,
	UDS_SECURITY_LEVEL9,
}SECURITY_LEVEL;

typedef union
{
	uint32_t u32Bit;
	uint16_t u16Bit[2];
	uint8_t  u8Bit[4];
} UNN_1WORD_4BYTE;

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
	SECURITY_LEVEL       u8SecurityLevel;
}WDID_infor_t;

typedef struct
{
	uint16_t	       u16DID;
	pService31_DIDFunction pFun;
	SECURITY_LEVEL       u8SecurityLevel;
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

static const uint32_t m_physicalTransmitCanId = 0x783;

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
    {0x31,  {SESSION_BIT_DEFAULT|SESSION_BIT_EXTENDED|SESSION_BIT_EXTENDED},{ADDRESSING_BIT_PHYSICAL|ADDRESSING_BIT_PHYSICAL}, Service0x31Process }, 
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
    {0xF190,    17,       Service2EWriteVIN,                            UDS_SECURITY_LEVEL1},
#if 0 
	{0xF1B2,     4,       Service2EWriteInstallationDate,               UDS_SECURITY_LEVEL1},  //Vehicle Manufacturing Date
    {0xF184,     9,       Service2EWriteAppSoftwareFingerprint,         UDS_SECURITY_LEVEL1},  
    {0xF1B9,     4,       Service2EWriteSubnetConfigListOnHighSpeedCan, UDS_SECURITY_LEVEL1}, 
    {0x0FC0,     16,      Service2EWriteESKey, 			        		UDS_SECURITY_LEVEL2},  //ESK  
    {0xC101,     12,      Service2EWriteEOLconfig, 						UDS_SECURITY_LEVEL1},
    {0xCF1E,     16,      Service2EWriteProlinesChannelKey,             UDS_SECURITY_LEVEL1},
    {0xCF1F,     1,       Service2EWritePhoneKeyOffLineUseTimes,        UDS_SECURITY_LEVEL1},
    {0xCF20,     12,      Service2EWriteNFCCardID,                      UDS_SECURITY_LEVEL1},
#endif
};


static const RDID_infor_t m_Service22FunMapList[] =
{
	{0xF187, 15,  Service22ReadPartNumber											},				 //Vehicle Manufacturer Spare Part Number
	{0xF189,  4,  Service22ReadSoftwareVersion 										},				 //Vehicle Manufacturer Spare Part Number
	{0xF18A,  7,  Service22ReadSupplierId               							},      //系统供应商标识号
	{0xF191,  4,  Service22ReadHardwareVersion		 								},				 //Vehicle Manufacturer Spare Part Number

#if 0
    {0xF180, 10,  Service22ReadBootSoftwareVersion        },      //
    {0xF184, 9,   Service22ReadAppSoftwareFingerprint     },      //applicationSoftwareFingerprint
    
    {0xF186,  1,  Service22ReadSeesionStatus            },       //??????
    //{0xF188,  4,  GlobalGetSGMWSoftwareNumer            },      //????? ECU ??????
    {0xF18A,  7,  Service22ReadSupplierId                },      //???????????
    {0xF18B,  4,  Service22ReadManufactureDate           },      //ECU????????
    {0xF18C, 16,  Service22ReadSerialNumber              },      //????????к?(ECU)
    {0xF190, 17,  Service22ReadVIN                       },      //VIN m_VIN
    {0xF191, 4,   Service22ReadHardwareNumber            },      //????? ECU ?????
    //{0xF192, 10,  Service22ReadSupplierHardwareNumber   },      //????? ECU ?????
    //{0xF194, 40,  Service22ReadSupplierSoftwareNumber   },      //????? ECU ??????
    {0xF1B9,  4,  Service22ReadSubnetConfigListOnHighSpeedCan},      //not completed
    {0xF1B2,  4,  Service22ReadInstallationDate  },      //ECU ??????????
    {0xF1C1,  18, Service22ReadAppSoftwareVersion       },
    {0xF1CB,  4,  Service22ReadPartNumber               },      //EndModelPartNumber (SGMW P/N)

    {0x6000,  1,  Service22ReadKL30Voltage              },       //B+ voltage
    {0x6001,  1,  Service22ReadKL30ConnectStatus        },       //B+ connection status
    {0x6002,  1,  Service22ReadGNSSStatus               },       //GPS module Status
    {0x6003,  1,  Service22ReadGNSSSAntenaStatus        },       //GPS module
    {0x6004,  1,  Service22ReadGNSSSLocationStatus      },       //GPS location Status
    {0x6005, 10,  Service22ReadGNSS_LatitudeLongitude   },       //GNSS Latitude and Longitude  ?
    {0x6006,  1,  Service22ReadGPRSModeStatus           },       //
    {0x6007,  1,  Service22ReadNADPrimaryAntenaStatus   },       //
    {0x6008,  1,  Service22ReadGPRSNetWorkStatus        },       //Service22ReadGPRSNetWorkStatus
    //{0x6009,  1,  Service22ReadCANBUSCommunicationStatus},       //

    {0x600A, 20,  Service22ReadICCID                    },       //ICCID
    {0x600B,  1,  Service22ReadPhoneSignal_test         },       //??????????//Service22ReadPhoneSignal_test
    {0x600C,  4,  Service22ReadUploadFrequency          },       //
    //{0x600D,  1,  Service22ReadStorageMemoryUsages      },       //
    //{0x600E,  1,  Service22ReadStorageMemoryStatus      },       //
    {0x600F,  1,  Service22ReadBackupBatterySoc         },       //
    {0x6010,  1,  Service22ReadBackupBatteryStatus      },       //
    
    {0x6015,  1,  Service22ReadTboxTemperature      	},       //
    {0x6016,  4,  Service22ReadSystemTime     		},       //
    {0x6017,  15, Service22ReadIMEI     		},       //IMSI is real
    {0x6018,  15, Service22ReadIMSI       		},       //IMEI is real
    {0x6019,  20, Service22ReadTboxCallNumber   	},       //
    {0x601A,  3,  Service22ReadNetworkMCC      		},       //
    {0x601B,  3,  Service22ReadNetworkMNC	        },       //
    {0x601C,  1,  Service22ReadConnectionType	        },       //
    {0x601D,  1,  Service22ReadModemTemperature	        },       //
    {0x601E,  4,  Service22ReadGNSSLiveTime	        },       //
    {0x601F,  4,  Service22ReadGNSSLiveHeigth		    },       //
    {0x6020,  2,  Service22ReadGNSSLiveHDOP			    },       //
    {0x6021,  2,  Service22ReadGNSSLiveSpeed		    },       //
    {0x6022,  2,  Service22ReadGNSSLiveHeading		    },       //
    {0x6023,  1,  Service22ReadGNSSCurrentNumOfSatallitesUsed },       //
    {0x6024,  1,  Service22ReadGNSSCurrentNumOfSatallitesInView },       //
    {0x6025,  1,  Service22ReadBackupBatteryTemperature  },       //
    {0x6026,  1,  Service22ReadBackupBatteryAgeCoefficient},       //
    {0x6027,  1,  Service22ReadBackupBatteryVoltage		},     
    //{0x6200,  11, Service22ReadProductModel		},
    //{0x0FC0, 16,  Service22ReadESEKey		        },       //ESK key
    {0x0FC1,  1,  Service22ReadIMMOStatus		},       //IMMO status
    //{0xB150,  1,  Service22ReadPowerIn		        },       //power input
    //{0xB166,  1,  Service22ReadEepromCheck		},       //EEPROM check
    {0xC101,  12,  Service22ReadEOLconfig		},       //
    {0xB008,  12,  Service22ReadBleMac},
    {0xCF20,  12,  Service22ReadNFCCardReaderID},
    {0xCF1F,  1,   Service22ReadPhoneKeyOffLineUseTimes},
    {0xCF23,  16,  Service22ReadSEID},
#endif
    {0xCFC0,  16,  Service22ReadProlinesChannelKey3},

};

static const struc_S31_DID_infor_t m_routineStartDidMap[] = 
{
    {0xF002, Service31StopApplication             , 	UDS_SECURITY_LEVEL1 },
    {0xF005, Service31WriteDiagnosticCanReport01  ,     UDS_SECURITY_LEVEL1 },

};

static const struc_S31_DID_infor_t m_routineStopDidMap[] = 
{
    {0xF005, Service31WriteDiagnosticCanReport01  ,     UDS_SECURITY_LEVEL1 },

};

static const struc_S31_DID_infor_t m_routineResultDidMap[] = 
{
    {0xF005, Service31WriteDiagnosticCanReport03  ,     UDS_SECURITY_LEVEL1 },


};

static uint8_t m_securitySeed[20];
static uint8_t m_securityKey[20];
static uint8_t m_udsTxBuffer[256];
static uint8_t m_uartTxPointer[256];
static ENUM_SESSION_STATE m_currentSession = DEFAULT_SESSION;
static uint8_t m_EcuOnlineFlag = 0;

/**********security accessrelated variable*******************/
static SECURITY_LEVEL m_currentSecurityLevel= UDS_NONE_SECURITY_LEVEL;
static SECURITY_LEVEL m_SecuritySendSeedLevel= UDS_NONE_SECURITY_LEVEL;

static uint8_t m_ECUreset_flag;
static uint8_t m_u8ConsecutiveSeedCount = 0;
static enum_SecurityTimerDelayType m_securityTimerDelayType;
static int16_t m_ecuSecurityTimerHandle = -1;
static int16_t m_ecuOnlineTimerHandle = -1;

static uint8_t m_securityKeyLength = 0;
static uint8_t m_securitySeedLength = 0;

/*************************************************************/
static uint8_t m_bDtcControlFlag = 0;
static uint8_t m_bCommunicationControlFlag = 0;

//static uint8_t m_sleepFlag = 0;
static uint8_t m_currentServiceNum = 0;
static int16_t m_uartHandle = -1;
static uint8_t m_counterIndex = 0;

static const uint32_t m_responseId = 0x76B;

static int16_t UartUdsTpTransmit(int16_t tpHandle,uint32_t canId,uint8_t *pData,uint16_t length,uint8_t functionalAddress)
{
	int16_t ret;
	MpuHalDataPack_t txData;

	if(m_uartHandle<0)
	{
		return -1;
	}
	m_uartTxPointer[0] = 0x00;
	m_uartTxPointer[1] = 0x00;
	m_uartTxPointer[2] = m_counterIndex;
	m_uartTxPointer[3] = (m_responseId>>24)&0xFF;
	m_uartTxPointer[4] = (m_responseId>>16)&0xFF;
	m_uartTxPointer[5] = (m_responseId>>8)&0xFF;
	m_uartTxPointer[6] = (m_responseId>>0)&0xFF;
	memcpy(m_uartTxPointer+7, pData, length);

	txData.aid = 0x05;
	txData.mid = 0x01;
	txData.subcommand = 0x03;

	txData.dataBufferSize = length+7;
	txData.dataLength = length+7;
	txData.pDataBuffer = m_uartTxPointer;

	ret = MpuHalTransmit(m_uartHandle,&txData);
  	if(ret!=0)
	{
		return -1;
	}  
    return ret;  
}

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
        if(m_routineStopDidMap[i].u16DID == DID)
        {
            if(m_routineStopDidMap[i].pFun!=NULL)
            {
              *pfun = m_routineStopDidMap[i].pFun;
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
static int16_t CheckSessionIsValid(ENUM_SESSION_STATE currentSession,uint8_t supportedSession)
{
  int16_t ret;
  uint8_t sessionBit;  
  ret = 1;
  sessionBit = 0;
  if(DEFAULT_SESSION==currentSession)
  {
    sessionBit = SESSION_BIT_DEFAULT;
  }
  else if(PROGROM_SESSION==currentSession)
  {
    sessionBit = SESSION_BIT_PROGRAMMING;
  }
  else if(EXTEND_SESSION==currentSession)
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

static void SaveSeedAccessCountToNonVolatile(uint8_t data)
{
#if(UDS_SECURITY_ERROR_COUNT_IN_NONVOLATILE)
  WorkFlashVehicleInforStore(NONVOLATILE_UDS_SECURITY_ERROR_COUNT,&data,1);
#endif
}

/*static uint8_t GetSeedAccessCountFromVolatile(void)
{
  uint8_t seedAccessCount;
#if(UDS_SECURITY_ERROR_COUNT_IN_NONVOLATILE)  
  uint32_t length;
#endif 
  
  seedAccessCount = 3;  
#if(UDS_SECURITY_ERROR_COUNT_IN_NONVOLATILE)
  WorkFlashVehicleInforRead(NONVOLATILE_UDS_SECURITY_ERROR_COUNT,&seedAccessCount,&length);
#endif
  return seedAccessCount;
}*/

static void SessionChangeToDefaultProcess(void)
{
    //CheckProgramPreconditions = 0;
    //DtcProcessEnable();
    //Nm_AllEnableCommunication();
    //ApplicationMessageEnableTransmitState(); 
  if(m_bDtcControlFlag)
    {
      m_bDtcControlFlag = 0;
      //reset DTC control setting
      DtcProcessEnable();
    }
    if(m_bCommunicationControlFlag)
    {
      m_bCommunicationControlFlag = 0;
      //reset Communication control setting
      //CycleSendEnable(TBOX_CAN_CHANNEL_E);	  
      CanPeriodSendEnableAll();
      AutosarNmSdkEnableCommunication(0);
      //SgmwGWNm30_DisableCommunicationByChannel(TBOX_CAN_CHANNEL_E);
    }
    //Service31StopApplicationSetDefault();
    //Service31WriteDiagnosticCanReportSetDefault();
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
    responseData[4] = 0x01;//P2*Server
    responseData[5] = 0xF4;//P2*Server

    subFun = udsData[1]&0x7F;
    suppressPosRsp = udsData[1]>>7;
    if(0X02 == udsLen)
    {
      if(0x01==subFun)//default session
      {
        m_currentSession = DEFAULT_SESSION;
        m_currentSecurityLevel = UDS_NONE_SECURITY_LEVEL;//lock security
        SessionChangeToDefaultProcess();
      }
      else if(0x02==subFun)//programing session
      {
        if(m_currentSession == EXTEND_SESSION)
        {
          m_currentSession = PROGROM_SESSION;
          m_currentSecurityLevel = UDS_NONE_SECURITY_LEVEL;//lock security
          m_EcuOnlineFlag = 1;
        }
        else
        {
          negativeNum = 0x7E;
        }
      }
      else if(0x03==subFun)//extended session
      {
        if((m_currentSession == DEFAULT_SESSION)||(m_currentSession == EXTEND_SESSION))
        {
          m_currentSession = EXTEND_SESSION;
          m_currentSecurityLevel= UDS_NONE_SECURITY_LEVEL;//lock security
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
            if(0==functionAddressFlag)
            {
              UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,6,0);
            }            
        }  
        if(m_currentSession==PROGROM_SESSION)
        {
          //PeripheralDriverHal_WriteBootFlag(0x00002211);
          PeripheralHalMcuHardReset();               
        }        
      }

    }
    else
    {
        /*请求报文的数据格式或长度不符合标准-13*/
        negativeNum = 0x13;
    }    
    if(functionAddressFlag)
    {
      negativeNum = 0;
    }
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
              /*不支持的请求服务的子功能-12*/
              //if(functionAddressFlag)
              negativeNum = 0x12; 
            }
            if(negativeNum==0)
            {
              if (suppressPosRsp == 0)
              {
                if(0==functionAddressFlag)
                {
                  if(0==functionAddressFlag)
                  {
                    UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                  }                  
                }                  
              }
            }

            if(0x01==subFun)//hardware reset
            {
              //PeripheralDriverHal_GsmModuleGsmEnable(0);
			  vTaskDelay( pdMS_TO_TICKS(100));
              PeripheralHalMcuHardReset();
            }
            else if(0x02==subFun)//keyOffOnReset
            {
              ;
            }
            else if(0x03==subFun)//software reset
            {
              MpuHalReset();
			  vTaskDelay( pdMS_TO_TICKS(100));
              PeripheralHalMcuHardReset();
            }
        }
        else
        {
            /*请求报文的数据格式或长度不符合标准-13*/
            negativeNum = 0x13;	
        }
    }
    else
    {
        /*子功能不支持的诊断会话7F*/
        negativeNum = 0x7F;	
    }
    if(functionAddressFlag)
    {
      negativeNum = 0;
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
                /*请求超出范围-31*/
                negativeNum = 0x31;					
            }
            if(negativeNum==0)
            {
              if(0==functionAddressFlag)
              {
                UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,1,0);
              }               
            }
        }
        else
        {
            /*请求报文的数据格式或长度不符合标准-13*/
            negativeNum = 0x13;		
        }
    }
    else
    {
        negativeNum = 0x7F;	
    }
    if(functionAddressFlag)
    {
      negativeNum = 0;
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
    uint8_t MaskValue = 0;
    uint32_t dtcNum = 0;
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
                  if(udsLen>=0x03)
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
                        m_udsTxBuffer[2] = 0x00;
                        m_udsTxBuffer[3] = 0x00;
                        m_udsTxBuffer[4] = 0;
                        m_udsTxBuffer[5] = 0;
                    }
                    if(0==functionAddressFlag)
                    {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,6,0);  
                    }                                       
                  }
                  else
                  {
                    negativeNum = 0x13;//invlid length
                  }
           
                }
                break;
                case 0x02:
                {         
                  if(udsLen>=0x03)
                  {
                    dtcNum = 0;
                    DtcProcessGetListByMask(udsData[2],&m_udsTxBuffer[3],&dtcNum,&(m_udsTxBuffer[2]));
                    if(0==functionAddressFlag)
                    {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,3+(dtcNum*4),0); 
                    }                                          
                  }
                  else
                  {
                    negativeNum = 0x13;//invlid length
                  }
         
                }
                break;
                case 0x04://reportDTCSnapshotRecordByDTCNumber
                {
                  if(udsLen>=6)
                  {
                    if((udsData[5]==0x01) || (udsData[5]==0xFF))//dtc snapshot record number
                    {
                      ret = DtcProcessGetReportSnapshotRecordByDtcNumber((udsData[2]<<16)+(udsData[3]<<8)+(udsData[4]<<0),udsData[5],m_udsTxBuffer+7,&length,&m_udsTxBuffer[5]);
                      if(ret==0)
                      {
                        //dtc
                        m_udsTxBuffer[2] = udsData[2];
                        m_udsTxBuffer[3] = udsData[3];
                        m_udsTxBuffer[4] = udsData[4];
                        //DTCSnapshotRecordNumber
                        m_udsTxBuffer[6] = udsData[5];
                        //
                        //m_udsTxBuffer[7] = 0x05;//dtc snapshot record number of identifiers                        
                          if(0==functionAddressFlag)
                          {
                            UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,length+7,0); 
                          }                        
                      }
                      else
                      {
                        negativeNum = 0x31;//request out of range
                      }
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
                  if(udsLen>=6)
                  {
                      ret = DtcProcessGetExtendedData((udsData[2]<<16)+(udsData[3]<<8)+(udsData[4]<<0),udsData[5],m_udsTxBuffer+6,&length,&m_udsTxBuffer[5]);
                      if(ret==0)
                      {
                        //dtc
                        m_udsTxBuffer[2] = udsData[2];
                        m_udsTxBuffer[3] = udsData[3];
                        m_udsTxBuffer[4] = udsData[4];
                          if(0==functionAddressFlag)
                          {
                            UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,length+6,0);  
                          }                           
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
                    ret = DtcProcessGetSupportedDtc(m_udsTxBuffer+3,&dtcNum,&m_udsTxBuffer[2]);
                    if(0==functionAddressFlag)
                    {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,3+(dtcNum*4),0);    
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
            /*请求报文的数据格式或长度不符合标准-13*/
            negativeNum = 0x13;	
        }   
    }
    if(functionAddressFlag)
    {
      negativeNum = 0;
    }
    return negativeNum;
}
static uint8_t CommunicationControl(uint8_t ContolType, uint8_t SubService)
{
  uint8_t ret = 0;
  
  if(ContolType == 0x00)
  {
    switch(SubService)
    {
      
    case 03:
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
    case 03:             
      if(m_bCommunicationControlFlag == 0)
      {
		  CanPeriodSendDisableAll();//搴旂敤鎶ユ枃
		  NmMessageSendDisable(); //缃戠鎶ユ枃
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
                              //添加相对应得通信控制函数
                              negativeNum = CommunicationControl((udsData[UDS_OFFSET_SUB_FUNC] & 0x7F), udsData[UDS_OFFSET_SUB_FUNC + 1]);
                          }
                          else if((udsData[UDS_OFFSET_SUB_FUNC] == 0x80 )||(udsData[UDS_OFFSET_SUB_FUNC] == 0x00 ))
                          {
                              //添加相对应得通信控制函数
                              negativeNum = CommunicationControl((udsData[UDS_OFFSET_SUB_FUNC] & 0x7F), udsData[UDS_OFFSET_SUB_FUNC + 1]);
                          }
                          else
                          {
                              return negativeNum;
                          }
                          if ((udsData[UDS_OFFSET_SUB_FUNC] >> 7) == 0)
                          {
                            if(0==functionAddressFlag)
                            {
                              UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                            }                              
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
#if 0
static int16_t Service0x28Process(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
    uint8_t negativeNum = 0;
    const STRUCT_DIAGNOSTIC *psDignostic = NULL;
    uint8_t responseData[32];
    
    psDignostic = ( serviceECUFunGroup + m_currentServiceNum );

    responseData[0] = 0x68;
    responseData[1] = udsData[1];
    
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
                              //添加相对应得通信控制函数
                              negativeNum = CommunicationControl_uart((udsData[UDS_OFFSET_SUB_FUNC] & 0x7F), udsData[UDS_OFFSET_SUB_FUNC + 1]);
                          }
                          else if((udsData[UDS_OFFSET_SUB_FUNC] == 0x80 )||(udsData[UDS_OFFSET_SUB_FUNC] == 0x00 ))
                          {
                              //添加相对应得通信控制函数
                              negativeNum = CommunicationControl_uart((udsData[UDS_OFFSET_SUB_FUNC] & 0x7F), udsData[UDS_OFFSET_SUB_FUNC + 1]);
                          }
                          else
                          {
                              return negativeNum;
                          }
                          if ((udsData[UDS_OFFSET_SUB_FUNC] >> 7) == 0)
                          {
                            if(0==functionAddressFlag)
                            {
                              UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                            }                              
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
        negativeNum = 0x7F;	
    }
    if(functionAddressFlag)
    {
      negativeNum = 0;
    }
    return negativeNum;
}
#endif
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
                          /*enable 故障状态检测功能--置标志位*/	
                          m_bDtcControlFlag = 0;
                          DtcProcessEnable();
                      }
                      else
                      {
                          /*disable 故障状态检测功能--置标志位*/
                          m_bDtcControlFlag = 1;
                          DtcProcessDisable();
                      }
                      if (0 == (udsData [UDS_OFFSET_SUB_FUNC] >> 7))
                      {
                          if(0==functionAddressFlag)
                          {
                            UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                          }                          
                      }
                  }
                  break;
                default:
                  {
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
    if(functionAddressFlag)
    {
      negativeNum = 0;
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
        if(0==functionAddressFlag)
        {
          UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,lengOut+4,0);    
        }            
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
        if(0==functionAddressFlag)
        {
          UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,lengOut+4,0);  
        }              
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
        if(0==functionAddressFlag)
        {
          UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,lengOut+4,0);    
        }            
      }
    }
  }
  else
  {
    negativeNum = 0x12;//sub function not supported
  }
  if(functionAddressFlag)
  {
    negativeNum = 0;
  }
  return negativeNum;
}


static int16_t Service0x3EProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
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
            switch(udsData [UDS_OFFSET_SUB_FUNC])
            {
                case 0x00:
                case 0x80:
                  {
                      m_EcuOnlineFlag = 1;

                      if ((udsData [UDS_OFFSET_SUB_FUNC] >> 7) == 0)
                      {
                          if(0==functionAddressFlag)
                          {
                            UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                          }                          
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
        negativeNum = 0x7F;	
    }  
    if(functionAddressFlag)
    {
      negativeNum = 0;
    }
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
  responseData[3] = udsData[3];*/
  
  if(CheckSessionIsValid(m_currentSession,psDignostic->sessionSupport)!=0)
  {
    negativeNum = 0x7E;
    return negativeNum;
  }
  
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
      ret = 1;
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
              if(m_ECUreset_flag)
              {
                negativeNum = 0x37;
              }
              else if (m_currentSecurityLevel == UDS_SECURITY_LEVEL1)
              {
                //uint8_t seedLength;
                UdsGetSeed(m_securitySeed,&m_securitySeedLength);
                memset((responseData + 2), 0 ,m_securitySeedLength);
                if(0==functionAddressFlag)
                {
                  UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2+m_securitySeedLength,0);
                  //UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,txLength,0);
                }                
                //return negativeNum;
              }
              else
              {
                if(m_u8ConsecutiveSeedCount<3)
                {
                    //if(m_u8ConsecutiveSeedCount==0)
                    {
                      UdsGetSeed(m_securitySeed,&m_securitySeedLength);
                    }
                    UdsSeedtoKey(m_securitySeed,m_securitySeedLength,m_securityKey,&m_securityKeyLength,E_SECURITY_CALCULATE_LEVEL1);
                    memcpy((responseData + 2),m_securitySeed,m_securitySeedLength);
                    if(0==functionAddressFlag)
                    {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2+m_securitySeedLength,functionAddressFlag);
                    }                    
                    m_SecuritySendSeedLevel = UDS_SECURITY_LEVEL1;

                }
                else
                {
                    if(m_securityTimerDelayType!=SecurityTimer_AccessErrorDelay)
                    {
                      negativeNum = 0x36;
                      //start delay access timer 180S
                      TimerHalStartTime(m_ecuSecurityTimerHandle,180000);
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
              if(m_ECUreset_flag)
              {
                  negativeNum = 0x37;
              }
              else if (m_currentSecurityLevel == UDS_SECURITY_LEVEL2)
              {
                  memset((responseData + 2), 0 ,4);
                  if(0==functionAddressFlag)
                  {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,6,0);
                      return negativeNum;                    
                  }
              }
              else
              {
                  if(m_u8ConsecutiveSeedCount<3)
                  {
                        //if(m_u8ConsecutiveSeedCount[1]==0)
                        {
                          UdsGetSeed(m_securitySeed,&m_securitySeedLength);
                        }
                        UdsSeedtoKey(m_securitySeed,m_securitySeedLength,m_securityKey,&m_securityKeyLength,E_SECURITY_CALCULATE_LEVEL2);
                        memcpy((responseData + 2),m_securitySeed,m_securitySeedLength);
                        if(0==functionAddressFlag)
                        {
                           UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2+m_securitySeedLength,functionAddressFlag);
                        }                       
                        m_SecuritySendSeedLevel = UDS_SECURITY_LEVEL2;

                    }
                    else
                    {
                        if(m_securityTimerDelayType!=SecurityTimer_AccessErrorDelay)
                        {
                              negativeNum = 0x36;
                              //start delay access timer 180S
                              TimerHalStartTime(m_ecuSecurityTimerHandle,180000);
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
          case 0x05:
          {
              if(udsLen!=2)
              {
                  return 0x13;
              }
              if(m_ECUreset_flag)
              {
                  negativeNum = 0x37;
              }
              if (m_currentSession != PROGROM_SESSION)
              {                 
                  return 0x7F;
              }              
          }
          break;
          case 0x02:
          {
              if(udsLen!=6)
              {
                      return 0x13;
              }
              //UartUdsTpTransmit(m_tpHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
              if (UDS_SECURITY_LEVEL1==m_SecuritySendSeedLevel)
              {
                  if (ByteArrayCheckIsSame(&udsData[2],m_securityKey,m_securityKeyLength)==0)
                  {
                    if(0==functionAddressFlag)
                    {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                    }                      
                      m_currentSecurityLevel = UDS_SECURITY_LEVEL1;
                      //clear seed get state
                      m_u8ConsecutiveSeedCount = 0;
                      SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                  }
                  else
                  {
                      if(m_u8ConsecutiveSeedCount < 3)
                      {
                              m_u8ConsecutiveSeedCount += 1;
                              SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                      }                        
                      if(m_u8ConsecutiveSeedCount<3)
                      {
                            negativeNum = 0x35;
                      }
                      else
                      {
                            negativeNum = 0x36;
                            //start delay access timer 180S
                            TimerHalStartTime(m_ecuSecurityTimerHandle,180000);
                            m_securityTimerDelayType = SecurityTimer_AccessErrorDelay;
                      }
                      //stop key access timer
                      /*PeripheralDriverHal_TimerStop(m_ecuSecurityTimerHandle);
                      m_securityTimerDelayType = SecurityTimer_None;*/
                      //m_currentSecurityLevel = NONE_SECURITY_LEVEL;
                  }
                  m_SecuritySendSeedLevel= UDS_NONE_SECURITY_LEVEL;
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
              //UartUdsTpTransmit(m_tpHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
              if (UDS_SECURITY_LEVEL2==m_SecuritySendSeedLevel)
              {
                  if (ByteArrayCheckIsSame(&udsData[2],m_securityKey,m_securityKeyLength)==0)
                  {
                    if(0==functionAddressFlag)
                    {
                      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,2,0);
                    }                          
                          m_currentSecurityLevel = UDS_SECURITY_LEVEL2;
                          //clear seed get state
                          m_u8ConsecutiveSeedCount = 0;
                          SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                  }
                  else
                  {
                          if(m_u8ConsecutiveSeedCount < 3)
                          {
                                  m_u8ConsecutiveSeedCount += 1;
                                  SaveSeedAccessCountToNonVolatile(m_u8ConsecutiveSeedCount);
                          }
                          if(m_u8ConsecutiveSeedCount<3)
                          {
                            negativeNum = 0x35;
                          }
                          else
                          {
                            negativeNum = 0x36;
                            //start delay access timer 180S
                            TimerHalStartTime(m_ecuSecurityTimerHandle,180000);
                            m_securityTimerDelayType = SecurityTimer_AccessErrorDelay;
                          }

                          //stop key access timer
                          /*PeripheralDriverHal_TimerStop(m_ecuSecurityTimerHandle);
                          m_securityTimerDelayType = SecurityTimer_None;*/
                  }
                  m_SecuritySendSeedLevel = UDS_NONE_SECURITY_LEVEL;
              }
              else
              {
                  negativeNum = 0x24;
              }
            }
            break;
          case 0x06:
          {
              if(udsLen!=6)
              {
                  return 0x13;
              }
              negativeNum =  0x7F;
            }
            break;
            
            default:
            negativeNum = 0x12;//sub function not supported
            break;
        }

    }
    else
    {
        negativeNum = 0x7F;//session error	
    }
    
    if(functionAddressFlag)
    {
      negativeNum = 0;
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
    //uint8_t responseData[64];
    enum_SeriveGetSubFunState result_Sum = SUBFUN_GET_OK;
    
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
                result_Sum &= result;
                if(result != SUBFUN_GET_OK)
                {
                    continue;
                }
                
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
                    /*请求超限-31*/
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
              if(0==functionAddressFlag)
              {
                UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,m_udsTxBuffer,txLength,0);
              }              
            }
            
        }
        else
        {
            /*请求报文的数据格式或长度不符合标准-13*/
            negativeNum = 0x13;	
        }
    }
    else
    {
        /*子功能不支持的诊断会话7F*/
        negativeNum = 0x7F;	
    }
    if(functionAddressFlag)
    {
      negativeNum = 0;
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
  
  did = (udsData[UDS_OFFSET_SUB_FUNC]<<8) |udsData[UDS_OFFSET_SUB_FUNC+1];
  if((CheckSessionIsValid(m_currentSession,pDiagnostic->sessionSupport)==0)
     &&(m_currentSecurityLevel!=UDS_NONE_SECURITY_LEVEL))
  {
    pService2E_DIDFunction pWriteFun;
    switch(Service2EGetDidFunction(did,&pWriteFun,udsLen))//
    {
       case SUBFUN_GET_OK:
        {
          int16_t ret;
          if(0==functionAddressFlag)
          {
            UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,&u8Busy7f78CMD[1],3,0);
          }          
          /*add flash write-in funtion*/
          ret = pWriteFun(&udsData[3],udsLen-3);
          if(ret==0)
          {
            if(0==functionAddressFlag)
            {
              UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,3,0);  
            }                      
          }
          else
          {
            negativeNum = 0x72;//general programing error
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

  if(functionAddressFlag)
  {
    negativeNum = 0;
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
      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,responseDataLength,0);
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
      UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,responseDataLength,0);
    }
    return negativeNum;
}

static int16_t ServiceNoDefinitionProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  int16_t negativeNum;
  negativeNum = 0;

  if(!functionAddressFlag)
  {
    negativeNum = 0x11;    
  }
  return negativeNum;
}

static int16_t NegativeResponseProcess(uint8_t negativeNum,uint8_t ServiceId)
{
  uint8_t responseData[8];
  responseData[0] = 0x7F;
  responseData[1] = ServiceId;
  responseData[2] = negativeNum;

  UartUdsTpTransmit(m_uartHandle,m_physicalTransmitCanId,responseData,3,0);
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

static int16_t DiagnosticResponseProcess(uint8_t *udsData,uint16_t udsLen,uint8_t functionAddressFlag)
{
  uint8_t funNum = 0;
  uint8_t negativeNum = 0;
  pServiceFunction pFun;
  
  funNum = udsData[UDS_OFFSET_SID];
  
  pFun = GetEcuServiceFunction(funNum);
  negativeNum = pFun(udsData,udsLen,functionAddressFlag);    

  if(0!=negativeNum)
  {
    NegativeResponseProcess(negativeNum,funNum);
  }
  else
  {    
    if(m_currentSession != DEFAULT_SESSION)
    {
      m_EcuOnlineFlag = 1;      
    }      
  }
  return 0;
}

void RemoteUartDiagnosticCycleProcess(int16_t uartHandle,uint8_t recv_flag,uint8_t counterIndex,uint8_t *pRxData,uint16_t rxLength,uint8_t functionAddressFlag)
{
  //int16_t ret;

  if(m_EcuOnlineFlag)
  {
    m_EcuOnlineFlag = 0;
    TimerHalStartTime(m_ecuOnlineTimerHandle,5000);        
  }
  if(TimerHalIsTimeout(m_ecuOnlineTimerHandle)==0)
  {
    TimerHalStopTime(m_ecuOnlineTimerHandle);
    m_currentSession = DEFAULT_SESSION;
    m_currentSecurityLevel= UDS_NONE_SECURITY_LEVEL;
    m_SecuritySendSeedLevel = UDS_NONE_SECURITY_LEVEL;
    if(m_bDtcControlFlag)
    {
      m_bDtcControlFlag = 0;
      //reset DTC control setting
      DtcProcessEnable();
    }
    if(m_bCommunicationControlFlag)
    {
      m_bCommunicationControlFlag = 0;
      //reset Communication control setting
      //CycleSendEnable(TBOX_CAN_CHANNEL_E);
      AutosarNmSdkEnableCommunication(0);
      CanPeriodSendEnableAll();
      //SgmwGWNm30_DisableCommunicationByChannel(TBOX_CAN_CHANNEL_E);
    }
  }
  
  if(TimerHalIsTimeout(m_ecuSecurityTimerHandle)==0)
  {
    TimerHalStopTime(m_ecuSecurityTimerHandle);
    if(SecurityTimer_ResetDelay==m_securityTimerDelayType)
    {
      m_ECUreset_flag = 0;
    }
    if(SecurityTimer_AccessErrorDelay==m_securityTimerDelayType)
    {
      if(m_u8ConsecutiveSeedCount>0)
      {
          m_u8ConsecutiveSeedCount--;
      }      
    }
    m_securityTimerDelayType = SecurityTimer_None;
  }
  //
  if(recv_flag == 0)
  {
      return ;
  }
  if(2==recv_flag)
  {
    functionAddressFlag = 1;
  }
  m_uartHandle = uartHandle;
  m_counterIndex = counterIndex;
  DiagnosticResponseProcess(pRxData,rxLength,functionAddressFlag);
}


/**************************************************************
Description:	Communication Control process(0x28)
Input:
bCanRxMsg	receive can data
Output:	        service ID
Return:	        NRC
Others:
***************************************************************/
/*static uint8_t CommunicationControl_uart(uint8_t ContolType, uint8_t SubService)
{
    uint8_t ret = 0;
    
    if(ContolType == 0x00)
    {
        switch(SubService)
        {
#if 0          
            case 01:  
                    //g_CommEnableFlag = true;
                    //EnableCommunicationMessage(); 
                    CycleSendEnable(TBOX_CAN_CHANNEL_1);
                    SgmwE50Nm_AllDisableCommunication();
                    break;          
            case 02:
                    //g_NM_CommEnableFlag = true;
                    SgmwE50Nm_AllEnableCommunication();
                    //DisableCommunicationMessage();
                    CycleSendDisable(TBOX_CAN_CHANNEL_1);
                    break;     
#endif                    
            case 03:
                    CanPeriodSendEnable(TBOX_CAN_CHANNEL_1);
                    AutosarNm_AllEnableCommunication();
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
#if 0          
            case 01:  
                    //DisableCommunicationMessage();
                    CycleSendDisable(TBOX_CAN_CHANNEL_1);
                    SgmwE50Nm_AllEnableCommunication();
                    break;          
            case 02:
                    //EnableCommunicationMessage(); 
                    CycleSendEnable(TBOX_CAN_CHANNEL_1);
                    SgmwE50Nm_AllDisableCommunication();
                    break;          
#endif                    
            case 03:             
                    //Nm_AllDisableCommunication();
                    CanPeriodSendDisable(TBOX_CAN_CHANNEL_1);
                    AutosarNm_AllDisableCommunication();
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
*/

void RemoteUartDiagnosticInit(void)
{
  m_ecuSecurityTimerHandle = TimerHalOpen();
  m_ecuOnlineTimerHandle = TimerHalOpen();
}

