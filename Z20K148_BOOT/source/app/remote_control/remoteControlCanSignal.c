#include "stdio.h"
#include "canHal.h"
#include "secocSdk.h"
#include "canParseSdk.h"
#include "vehicleSignalApp.h"
#include "remoteControlCanSignal.h"

typedef struct 
{
    RemoteSignal_e eSignalInfo;
    CanParseSignal_t signal;
    double data;
    uint32_t frequency;
}SignalConfig_t;

typedef struct
{
    SignalConfig_t T_Box_RemtWinCtrl;
    SignalConfig_t T_Box_RemtSrCtrl;
    SignalConfig_t T_Box_RemtSsCtrl;
    SignalConfig_t T_BOX_RemtDoorLockCtrl;
    SignalConfig_t T_BOX_RemtTrunkCtrl;
    SignalConfig_t T_Box_RemtCarSearch;
    SignalConfig_t T_Box_RemtEngCtrl;
    SignalConfig_t T_BOX_RemtAutoCtrl;
    SignalConfig_t T_BOX_RemtDrvTempSet;
    SignalConfig_t T_BOX_RemtPassTempSet;
    SignalConfig_t T_BOX_RemtAIUReq;
}RemoteConfigEventSignal033_t;

typedef struct
{
    SignalConfig_t T_Box_RemtSdlMod;
    SignalConfig_t T_Box_RemtRearDefrostCtrl;
    SignalConfig_t T_BOX_RemtFrntDefrostCtrl;
    SignalConfig_t T_BOX_RemtCockpitClnReq;
}RemoteConfigEventSignal1E1_t;

static RemoteConfigEventSignal1E1_t g_1E1Configure = 
{
    .T_Box_RemtSdlMod = 
    {
      .eSignalInfo = E_Box_RemtSdlMod,
      .signal = {
        .dataType = 0,
        .startBit = 54,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x03,
      },
      .frequency = 0,
    },
    .T_Box_RemtRearDefrostCtrl = 
    {
      .eSignalInfo = E_Box_RemtRearDefrostCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 38,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
        },
      .frequency = 0,
    },
    .T_BOX_RemtFrntDefrostCtrl = 
    {
      .eSignalInfo = E_Box_RemtFrntDefrostCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 18,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
        },
      .frequency = 0,
    },
    .T_BOX_RemtCockpitClnReq = 
    {
      .eSignalInfo = E_Box_RemtCockpitClnReq,
      .signal = {
        .dataType = 0,
        .startBit = 52,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
        },
      .frequency = 0,
    },
};

static RemoteConfigEventSignal033_t g_033Configure = 
{
    .T_Box_RemtWinCtrl =            //Զ�̿��Ƴ���
    {
      .eSignalInfo = E_Box_RemtWinCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 0,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,//Ĭ��ֵ�Ƿ���Ч
        .InvalidData = 0x0,   //Ĭ��ֵ
      },
      .frequency = 0,
    },
    .T_Box_RemtSrCtrl = //Զ�̿����촰
    {
      .eSignalInfo = E_Box_RemtSrCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 28,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0,  
        },
        .frequency = 0,
    },
    .T_Box_RemtSsCtrl = //T_BOX_FD1 0x033 Զ�̿���������
    {
      .eSignalInfo = E_Box_RemtSsCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 24,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0,  
        },
        .frequency = 0,
    },
    .T_BOX_RemtDoorLockCtrl = //Զ�̿�������
    {
      .eSignalInfo = E_Box_RemtDoorLockCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 5,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0, 
        },
        .frequency = 0,
    },
    .T_BOX_RemtTrunkCtrl = //Զ�̿��ƺ���
    {
      .eSignalInfo = E_Box_RemtTrunkCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 3,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0, 
        },
        .frequency = 0,
    },
    .T_Box_RemtCarSearch = //Զ�̿������ѻ�����
    {
      .eSignalInfo = E_Box_RemtCarSearch,
      .signal = {
        .dataType = 0,
        .startBit = 44,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0,
        },
        .frequency = 0,
    },
    .T_Box_RemtEngCtrl = //T_BOX_FD1 0x033 ����/�ر�����
    {
      .eSignalInfo = E_Box_RemtEngCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 46,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
        },
        .frequency = 0,
    },
    .T_BOX_RemtAutoCtrl = //T_BOX_FD1 0x033 Զ�̿���\�رտյ�
    {
      .eSignalInfo = E_Box_RemtAutoCtrl,
      .signal = {
        .dataType = 0,
        .startBit = 16,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
        },
        .frequency = 0,
    },
    .T_BOX_RemtDrvTempSet = //T_BOX_FD1 0x033 �յ������¶�
    {
      .eSignalInfo = E_Box_RemtDrvTempSet,
      .signal = {
        .dataType = 0,
        .startBit = 10,
        .bitLength = 6,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0,
        },
        .frequency = 0,
    },
    .T_BOX_RemtPassTempSet = //T_BOX_FD1 0x033 �յ������¶�
    {
      .eSignalInfo = E_Box_RemtPassTempSet,
      .signal = {
        .dataType = 0,
        .startBit = 18,
        .bitLength = 6,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0,
        },
        .frequency = 0,
    },
    .T_BOX_RemtAIUReq = //T_BOX_FD1 0x033 Զ�̿������ӷ�����
    {
      .eSignalInfo = E_Box_RemtAIUReq,
      .signal = {
        .dataType = 0,
        .startBit = 38,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0x0,
        },
        .frequency = 0,
    },
};
static uint8_t g_can033Data[16] = {0};
static uint16_t g_can033Cycle = 1000;//1s

static uint8_t g_can1E1Data[16] = {0};
static uint16_t g_can1E1Cycle = 500;//1s

static const uint8_t g_CanSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB;

void SetRemoteContorl1E1SignalValue(RemoteSignal_e signal,double Value,uint32_t frequency)
{
    uint16_t i = 0;
    SignalConfig_t *pSingalConfig  = (SignalConfig_t *)&g_1E1Configure;
    for(i = 0;i < (sizeof(g_1E1Configure)/sizeof(g_1E1Configure.T_Box_RemtSdlMod));i++)
    {
        if(pSingalConfig->eSignalInfo == signal)
        {
            pSingalConfig->data = Value;
            pSingalConfig->frequency = frequency;
            break;
        }
        pSingalConfig++;
    }
/*  
    switch(signal)
    {
    case E_Box_RemtSdlMod:
      //PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtWinCtrl.signal,Value);
      g_1E1Configure.T_Box_RemtSdlMod.data = Value;
      g_1E1Configure.T_Box_RemtSdlMod.frequency = frequency;
      break;
    case E_Box_RemtRearDefrostCtrl:
      g_1E1Configure.T_Box_RemtRearDefrostCtrl.data = Value;
      //PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtWinCtrl.signal,Value);
      g_1E1Configure.T_Box_RemtRearDefrostCtrl.frequency = frequency;
      break;
    case E_BOX_RemtFrntDefrostCtrl:
      //PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtWinCtrl.signal,Value);
      g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.data = Value;
      g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.frequency = frequency;
      break;
    case E_BOX_RemtCockpitClnReq:
      //PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtWinCtrl.signal,Value);
      g_1E1Configure.T_BOX_RemtCockpitClnReq.data = Value;
      g_1E1Configure.T_BOX_RemtCockpitClnReq.frequency = frequency;
      break;
    default:
      break;
    }
*/
}
static int16_t RemoteContorlSend1E1SignalValue(void)
{
    int16_t ret = -1;
    memset(g_can1E1Data,0,sizeof(g_can1E1Data));
    SignalConfig_t *pSignalConfig = (SignalConfig_t *)&g_1E1Configure;
    memset(g_can1E1Data,0,sizeof(g_can1E1Data));
    for(uint8_t i = 0;i < (sizeof(g_1E1Configure)/sizeof(g_1E1Configure.T_Box_RemtSdlMod));i++)
    {
        if(pSignalConfig->frequency > 0)
        {
            PackSignalToFrame(g_can1E1Data,g_CanSignalFormat,(const CanParseSignal_t*)&pSignalConfig->signal,pSignalConfig->data);
            pSignalConfig->frequency--;
            if((pSignalConfig->data != pSignalConfig->signal.InvalidData) && (pSignalConfig->frequency == 0))
            {
                pSignalConfig->data = pSignalConfig->signal.InvalidData;
                pSignalConfig->frequency = 5;
            }
            ret = 0;
          }
          pSignalConfig++;
    }
/*  
    int16_t ret = -1;
    memset(g_can1E1Data,0,sizeof(g_can1E1Data));
    if(g_1E1Configure.T_Box_RemtSdlMod.frequency > 0)
    {
      PackSignalToFrame(g_can1E1Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_1E1Configure.T_Box_RemtSdlMod.signal,g_1E1Configure.T_Box_RemtSdlMod.data);
      g_1E1Configure.T_Box_RemtSdlMod.frequency--;
      if((g_1E1Configure.T_Box_RemtSdlMod.data != 0x03) && (g_1E1Configure.T_Box_RemtSdlMod.frequency == 0))
      {
        g_1E1Configure.T_Box_RemtSdlMod.data = 0x03;
        g_1E1Configure.T_Box_RemtSdlMod.frequency = 5;
      }
      ret = 0;
    }
    if(g_1E1Configure.T_Box_RemtRearDefrostCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can1E1Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_1E1Configure.T_Box_RemtRearDefrostCtrl.signal,g_1E1Configure.T_Box_RemtRearDefrostCtrl.data);
      g_1E1Configure.T_Box_RemtRearDefrostCtrl.frequency--;
      ret = 0;
      if((g_1E1Configure.T_Box_RemtRearDefrostCtrl.data != 0) && (g_1E1Configure.T_Box_RemtRearDefrostCtrl.frequency == 0))
      {
        g_1E1Configure.T_Box_RemtRearDefrostCtrl.data = 0;
        g_1E1Configure.T_Box_RemtRearDefrostCtrl.frequency = 5;
      }
    }
    if(g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can1E1Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.signal,g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.data);
      g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.frequency--;
      ret = 0;
      if((g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.data != 0) && (g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.frequency == 0))
      {
        g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.data = 0;
        g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.frequency = 5;
      }
    }
    if(g_1E1Configure.T_BOX_RemtCockpitClnReq.frequency > 0)
    {
      PackSignalToFrame(g_can1E1Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_1E1Configure.T_BOX_RemtCockpitClnReq.signal,g_1E1Configure.T_BOX_RemtCockpitClnReq.data);
      g_1E1Configure.T_BOX_RemtCockpitClnReq.frequency--;
      ret = 0;
      if((g_1E1Configure.T_BOX_RemtCockpitClnReq.data != 0) && (g_1E1Configure.T_BOX_RemtCockpitClnReq.frequency == 0))
      {
        g_1E1Configure.T_BOX_RemtCockpitClnReq.data = 0;
        g_1E1Configure.T_BOX_RemtCockpitClnReq.frequency = 5;
      }
    }
 */   
    return ret;
}
uint32_t GetRemoteContorl1E1SignalIsSendEnd(RemoteSignal_e signal)
{
    uint16_t i = 0;
    uint32_t frequency = 0;
    SignalConfig_t *pSingalConfig  = (SignalConfig_t *)&g_1E1Configure;
    for(i = 0;i < (sizeof(g_1E1Configure)/sizeof(g_1E1Configure.T_Box_RemtSdlMod));i++)
    {
        if(pSingalConfig->eSignalInfo == signal)
        {
            frequency = pSingalConfig->frequency;
            break;
        }
        pSingalConfig++;
    }
/*  
    uint32_t frequency = 0;
    switch(signal)
    {
    case E_Box_RemtSdlMod:
      frequency = g_1E1Configure.T_Box_RemtSdlMod.frequency;
      break;
    case E_Box_RemtRearDefrostCtrl:
      frequency = g_1E1Configure.T_Box_RemtRearDefrostCtrl.frequency;
      break;
    case E_BOX_RemtFrntDefrostCtrl:
      frequency = g_1E1Configure.T_BOX_RemtFrntDefrostCtrl.frequency;
      break;
    case E_BOX_RemtCockpitClnReq:
      frequency = g_1E1Configure.T_BOX_RemtCockpitClnReq.frequency;
      break;
    default:
      break;
    }
*/    
    return frequency;
}


void SetRemoteContorl033SignalValue(RemoteSignal_e signal,double Value,uint32_t frequency)
{
    uint16_t i = 0;
    SignalConfig_t *pSingalConfig  = (SignalConfig_t *)&g_033Configure;
    for(i = 0;i < (sizeof(g_033Configure)/sizeof(g_033Configure.T_Box_RemtWinCtrl));i++)
    {
        if(pSingalConfig->eSignalInfo == signal)
        {
            pSingalConfig->data = Value;
            pSingalConfig->frequency = frequency;
            break;
        }
        pSingalConfig++;
    }
/*
    switch(signal)
    {
    case E_Box_RemtWinCtrl:
      g_033Configure.T_Box_RemtWinCtrl.data = Value;
      g_033Configure.T_Box_RemtWinCtrl.frequency = frequency;
      break;
    case E_Box_RemtSrCtrl:
      g_033Configure.T_Box_RemtSrCtrl.data = Value;
      g_033Configure.T_Box_RemtSrCtrl.frequency = frequency;
      break;
    case E_Box_RemtSsCtrl:
      g_033Configure.T_Box_RemtSsCtrl.data = Value;
      g_033Configure.T_Box_RemtSsCtrl.frequency = frequency;
      break;
    case E_BOX_RemtDoorLockCtrl:
      g_033Configure.T_BOX_RemtDoorLockCtrl.data = Value;
      g_033Configure.T_BOX_RemtDoorLockCtrl.frequency = frequency;
      break;
    case E_BOX_RemtTrunkCtrl:
      g_033Configure.T_BOX_RemtTrunkCtrl.data = Value;
      g_033Configure.T_BOX_RemtTrunkCtrl.frequency = frequency;
      break;
    case E_Box_RemtCarSearch:
      g_033Configure.T_Box_RemtCarSearch.data = Value;
      g_033Configure.T_Box_RemtCarSearch.frequency = frequency;
      break;
    case E_Box_RemtEngCtrl:
      g_033Configure.T_Box_RemtEngCtrl.data = Value;
      g_033Configure.T_Box_RemtEngCtrl.frequency = frequency;
      break;
    case E_BOX_RemtAutoCtrl:
      g_033Configure.T_BOX_RemtAutoCtrl.data = Value;
      g_033Configure.T_BOX_RemtAutoCtrl.frequency = frequency;
      break;
    case E_BOX_RemtDrvTempSet:
      g_033Configure.T_BOX_RemtDrvTempSet.data = Value;
      g_033Configure.T_BOX_RemtDrvTempSet.frequency = frequency;
      break;
    case E_BOX_RemtPassTempSet:
      g_033Configure.T_BOX_RemtPassTempSet.data = Value;
      g_033Configure.T_BOX_RemtPassTempSet.frequency = frequency;
      break;
    case E_BOX_RemtAIUReq:
      g_033Configure.T_BOX_RemtAIUReq.data = Value;
      g_033Configure.T_BOX_RemtAIUReq.frequency = frequency;
      break;
    default:
      break;
    }
*/
}

static int16_t RemoteContorlSend033SignalValue(void)
{
    int16_t ret = -1;
    memset(g_can033Data,0,sizeof(g_can033Data));
    SignalConfig_t *pSignalConfig = (SignalConfig_t *)&g_033Configure;
    memset(g_can033Data,0,sizeof(g_can033Data));
    for(uint8_t i = 0;i < (sizeof(g_033Configure)/sizeof(g_033Configure.T_Box_RemtWinCtrl));i++)
    {
        if(pSignalConfig->frequency > 0)
        {
            PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&pSignalConfig->signal,pSignalConfig->data);
            pSignalConfig->frequency--;
            if((pSignalConfig->data != pSignalConfig->signal.InvalidData) && (pSignalConfig->frequency == 0))
            {
                pSignalConfig->data = pSignalConfig->signal.InvalidData;
                pSignalConfig->frequency = 5;
            }
            ret = 0;
          }
          pSignalConfig++;
    }
/*
    if(g_033Configure.T_Box_RemtWinCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtWinCtrl.signal,g_033Configure.T_Box_RemtWinCtrl.data);
      g_033Configure.T_Box_RemtWinCtrl.frequency--;
      if((g_033Configure.T_Box_RemtWinCtrl.data != 0) && (g_033Configure.T_Box_RemtWinCtrl.frequency == 0))
      {
        g_033Configure.T_Box_RemtWinCtrl.data = 0;
        g_033Configure.T_Box_RemtWinCtrl.frequency = 5;
      }
      ret = 0;
    }
    if(g_033Configure.T_Box_RemtSrCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtSrCtrl.signal,g_033Configure.T_Box_RemtSrCtrl.data);
      g_033Configure.T_Box_RemtSrCtrl.frequency--;
      ret = 0;
      if((g_033Configure.T_Box_RemtSrCtrl.data != 0) && (g_033Configure.T_Box_RemtSrCtrl.frequency == 0))
      {
        g_033Configure.T_Box_RemtSrCtrl.data = 0;
        g_033Configure.T_Box_RemtSrCtrl.frequency = 5;
      }
    }
    if(g_033Configure.T_Box_RemtSsCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtSsCtrl.signal,g_033Configure.T_Box_RemtSsCtrl.data);
      g_033Configure.T_Box_RemtSsCtrl.frequency--;
      ret = 0;
      if((g_033Configure.T_Box_RemtSsCtrl.data != 0) && (g_033Configure.T_Box_RemtSsCtrl.frequency == 0))
      {
        g_033Configure.T_Box_RemtSsCtrl.data = 0;
        g_033Configure.T_Box_RemtSsCtrl.frequency = 5;
      }
    }
    if(g_033Configure.T_BOX_RemtDoorLockCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_BOX_RemtDoorLockCtrl.signal,g_033Configure.T_BOX_RemtDoorLockCtrl.data);
      g_033Configure.T_BOX_RemtDoorLockCtrl.frequency--;
      ret = 0;
      if((g_033Configure.T_BOX_RemtDoorLockCtrl.data != 0) && (g_033Configure.T_BOX_RemtDoorLockCtrl.frequency == 0))
      {
        g_033Configure.T_BOX_RemtDoorLockCtrl.data = 0;
        g_033Configure.T_BOX_RemtDoorLockCtrl.frequency = 5;
      }
    }
    if(g_033Configure.T_BOX_RemtTrunkCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_BOX_RemtTrunkCtrl.signal,g_033Configure.T_BOX_RemtTrunkCtrl.data);
      g_033Configure.T_BOX_RemtTrunkCtrl.frequency--;
      ret = 0;
      if((g_033Configure.T_BOX_RemtTrunkCtrl.data != 0) && (g_033Configure.T_BOX_RemtTrunkCtrl.frequency == 0))
      {
        g_033Configure.T_BOX_RemtTrunkCtrl.data = 0;
        g_033Configure.T_BOX_RemtTrunkCtrl.frequency = 5;
      }
    }
    if(g_033Configure.T_Box_RemtCarSearch.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtCarSearch.signal,g_033Configure.T_Box_RemtCarSearch.data);
      g_033Configure.T_Box_RemtCarSearch.frequency--;
      ret = 0;
      if((g_033Configure.T_Box_RemtCarSearch.data != 0) && (g_033Configure.T_Box_RemtCarSearch.frequency == 0))
      {
        g_033Configure.T_Box_RemtCarSearch.data = 0;
        g_033Configure.T_Box_RemtCarSearch.frequency = 5;
      }
    }
    if(g_033Configure.T_Box_RemtEngCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_Box_RemtEngCtrl.signal,g_033Configure.T_Box_RemtEngCtrl.data);
      g_033Configure.T_Box_RemtEngCtrl.frequency--;
      ret = 0;
      if((g_033Configure.T_Box_RemtEngCtrl.data != 0) && (g_033Configure.T_Box_RemtEngCtrl.frequency == 0))
      {
        g_033Configure.T_Box_RemtEngCtrl.data = 0;
        g_033Configure.T_Box_RemtEngCtrl.frequency = 5;
      }
    }
    if(g_033Configure.T_BOX_RemtAutoCtrl.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_BOX_RemtAutoCtrl.signal,g_033Configure.T_BOX_RemtAutoCtrl.data);
      g_033Configure.T_BOX_RemtAutoCtrl.frequency--;
      ret = 0;
      if((g_033Configure.T_BOX_RemtAutoCtrl.data != 0) && (g_033Configure.T_BOX_RemtAutoCtrl.frequency == 0))
      {
        g_033Configure.T_BOX_RemtAutoCtrl.data = 0;
        g_033Configure.T_BOX_RemtAutoCtrl.frequency = 5;
      }
    }
    if(g_033Configure.T_BOX_RemtDrvTempSet.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_BOX_RemtDrvTempSet.signal,g_033Configure.T_BOX_RemtDrvTempSet.data);
      g_033Configure.T_BOX_RemtDrvTempSet.frequency--;
      ret = 0;
      if((g_033Configure.T_BOX_RemtDrvTempSet.data != 0) && (g_033Configure.T_BOX_RemtDrvTempSet.frequency == 0))
      {
        g_033Configure.T_BOX_RemtDrvTempSet.data = 0;
        g_033Configure.T_BOX_RemtDrvTempSet.frequency = 5;
      }
    }
    if(g_033Configure.T_BOX_RemtPassTempSet.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_BOX_RemtPassTempSet.signal,g_033Configure.T_BOX_RemtPassTempSet.data);
      g_033Configure.T_BOX_RemtPassTempSet.frequency--;
      ret = 0;
      if((g_033Configure.T_BOX_RemtPassTempSet.data != 0) && (g_033Configure.T_BOX_RemtPassTempSet.frequency == 0))
      {
        g_033Configure.T_BOX_RemtPassTempSet.data = 0;
        g_033Configure.T_BOX_RemtPassTempSet.frequency = 5;
      }
    }
    if(g_033Configure.T_BOX_RemtAIUReq.frequency > 0)
    {
      PackSignalToFrame(g_can033Data,g_CanSignalFormat,(const CanParseSignal_t*)&g_033Configure.T_BOX_RemtAIUReq.signal,g_033Configure.T_BOX_RemtAIUReq.data);
      g_033Configure.T_BOX_RemtAIUReq.frequency--;
      ret = 0;
      if((g_033Configure.T_BOX_RemtAIUReq.data != 0) && (g_033Configure.T_BOX_RemtAIUReq.frequency == 0))
      {
        g_033Configure.T_BOX_RemtAIUReq.data = 0;
        g_033Configure.T_BOX_RemtAIUReq.frequency = 5;
      }
    }
*/
    return ret;
}

uint32_t GetRemoteContorl033SignalIsSendEnd(RemoteSignal_e signal)
{
    uint16_t i = 0;
    uint32_t frequency = 0;
    SignalConfig_t *pSingalConfig  = (SignalConfig_t *)&g_033Configure;
    for(i = 0;i < (sizeof(g_033Configure)/sizeof(g_033Configure.T_Box_RemtWinCtrl));i++)
    {
        if(pSingalConfig->eSignalInfo == signal)
        {
            frequency = pSingalConfig->frequency;
            break;
        }
        pSingalConfig++;
    }
/*  
    uint32_t frequency = 0;
    switch(signal)
    {
    case E_Box_RemtWinCtrl:
      frequency = g_033Configure.T_Box_RemtWinCtrl.frequency;
      break;
    case E_Box_RemtSrCtrl:
      frequency = g_033Configure.T_Box_RemtSrCtrl.frequency;
      break;
    case E_Box_RemtSsCtrl:
      frequency = g_033Configure.T_Box_RemtSsCtrl.frequency;
      break;
    case E_BOX_RemtDoorLockCtrl:
      frequency = g_033Configure.T_BOX_RemtDoorLockCtrl.frequency;
      break;
    case E_BOX_RemtTrunkCtrl:
      frequency = g_033Configure.T_BOX_RemtTrunkCtrl.frequency;
      break;
    case E_Box_RemtCarSearch:
      frequency = g_033Configure.T_Box_RemtCarSearch.frequency;
      break;
    case E_Box_RemtEngCtrl:
      frequency = g_033Configure.T_Box_RemtEngCtrl.frequency;
      break;
    case E_BOX_RemtAutoCtrl:
      frequency = g_033Configure.T_BOX_RemtAutoCtrl.frequency;
      break;
    case E_BOX_RemtDrvTempSet:
      frequency = g_033Configure.T_BOX_RemtDrvTempSet.frequency;
      break;
    case E_BOX_RemtPassTempSet:
      frequency = g_033Configure.T_BOX_RemtPassTempSet.frequency;
      break;
    case E_BOX_RemtAIUReq:
      frequency = g_033Configure.T_BOX_RemtAIUReq.frequency;
      break;
    default:
      break;
    }
*/
    return frequency;
}

void RemoteContorlCanDataSendProcess(int16_t canHandle,uint16_t cycleTime)
{
    static uint32_t timeCount033 = 0;
    static uint32_t timeCount1E1 = 0;
    if(timeCount033 == 0)
    {
        if(RemoteContorlSend033SignalValue() == 0)//有数据
        {
#if(CYCLE_SEND_WITH_SECOC_SDK)
              SecocSdkTransmit(canHandle, 0x033, g_can033Data,sizeof(g_can033Data),0);
#else
              CanHalTransmit(canHandle, 0x033, g_can033Data,sizeof(g_can033Data),0);
#endif
              timeCount033 = (g_can033Cycle/cycleTime);
              timeCount033--;
        }
        else
        {
            timeCount033 = 0;
        }
    }
    else
    {
        timeCount033--;
    }
    if(timeCount1E1 == 0)
    {
        if(RemoteContorlSend1E1SignalValue() == 0)//有数据
        {
#if(CYCLE_SEND_WITH_SECOC_SDK)
              SecocSdkTransmit(canHandle, 0x1E1, g_can1E1Data,sizeof(g_can1E1Data),0);
#else
              CanHalTransmit(canHandle, 0x1E1, g_can1E1Data,sizeof(g_can1E1Data),0);
#endif
              timeCount1E1 = (g_can1E1Cycle/cycleTime);
              timeCount1E1--;
        }
        else
        {
            timeCount1E1 = 0;
        }
    }
    else
    {
        timeCount1E1--;
    }
}

void GetRemoteControlSignalValue(RemoteControlSignalInfo_t *stRemoteCtrlSignalVal)
{
        double dataVaule = 0;    
    const can0_signal_configure_t *pCan0SignalConfigure = NULL;    
    RemoteControlSignalInfo_t *stRemoteCtrlSignalValTemp = NULL;
	pCan0SignalConfigure = GetCan0SignalConfigure();
    stRemoteCtrlSignalValTemp = stRemoteCtrlSignalVal;
    //��Դ��Ч��־0x0:Invalid 0x1:Valid
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SysPowerModVld,&dataVaule);   
    stRemoteCtrlSignalValTemp->SysPowerModVld = (uint8_t)dataVaule;
    //��Դ״̬0x0:OFF 0x1:ACC (reserved) 0x2:ON 0x3:Crank
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SysPowerMod,&dataVaule);   
    stRemoteCtrlSignalValTemp->SysPowerMod = (uint8_t)dataVaule;
    //Զ��ģʽ0x0:Normal mode 0x1:Remote mode
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RemoteModSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RemoteModSts = (uint8_t)dataVaule;
    //������Ч��־ 0x0:Invalid 0x1:Valid
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->VehSpdVld,&dataVaule);   
    stRemoteCtrlSignalValTemp->VehSpdVld = (uint8_t)dataVaule;
    //���� 0x0000-0x14D5:Valid values
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->VehSpd,&dataVaule);   
    stRemoteCtrlSignalValTemp->VehSpd = dataVaule;
    //�������д���״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DrvAntiPinchSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DrvAntiPinchSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->PassAntiPinchSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->PassAntiPinchSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RLAntiPinchSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RLAntiPinchSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RRAntiPinchSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RRAntiPinchSts = (uint8_t)dataVaule;
    //����ѧϰ
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DrvWinLrnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DrvWinLrnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->PassWinLrnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->PassWinLrnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RLWinLrnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RLWinLrnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RRWinLrnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RRWinLrnSts = (uint8_t)dataVaule;
    //�촰���д���״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SrAntiPinch,&dataVaule);   
    stRemoteCtrlSignalValTemp->SrAntiPinch = (uint8_t)dataVaule;
    //���������д���״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SsAntiPinch,&dataVaule);   
    stRemoteCtrlSignalValTemp->SsAntiPinch = (uint8_t)dataVaule;
    //����״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DrvWinPosnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DrvWinPosnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RLWinPosnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RLWinPosnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->PassWinPosnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->PassWinPosnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RRWinPosnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RRWinPosnSts = (uint8_t)dataVaule;
    //�촰״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SrPosn_VR_APP,&dataVaule);   
    stRemoteCtrlSignalValTemp->SrPosn_VR_APP = (uint8_t)dataVaule;
    //������״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SsPosn_VR_APP,&dataVaule);   
    stRemoteCtrlSignalValTemp->SsPosn_VR_APP = (uint8_t)dataVaule;
    //P/N ��λ״̬0x1:P 0x2:R 0x3:N 0x4:D 0X5:S 0X6:E
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->CURRENT_GEAR,&dataVaule);   
    stRemoteCtrlSignalValTemp->CURRENT_GEAR = (uint8_t)dataVaule;   
    //����״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DrvDoorSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DrvDoorSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->LRDoorSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->LRDoorSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->PassengerDoorSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->PassengerDoorSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RRDoorSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RRDoorSts = (uint8_t)dataVaule;
    //���ص�ѹ
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->U_BATT,&dataVaule);   
    stRemoteCtrlSignalValTemp->U_BATT = dataVaule;
    //���״̬ 0x0:Disarmed 0x1:Armed 0x2:Prearmed 0x3:Alarmed 
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->AntitheftSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->AntitheftSts = (uint8_t)dataVaule;
    //����������0x0:OFF 0x1:ON 0x2:Internal Error 0x3:Reserved
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->IP_FuelLvlLowLmpSts,&dataVaule);   
//    stRemoteCtrlSignalValTemp->IP_FuelLvlLowLmpSts = (uint8_t)dataVaule;
    //������״̬0x0:Stopped 0x1:Cranking 0x2:Running 0x3:Stalling
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->EngState,&dataVaule);   
//    stRemoteCtrlSignalValTemp->EngState = (uint8_t)dataVaule;
    //Զ�̿յ�״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->ACOpenSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACOpenSts = (uint8_t)dataVaule;
    //���ӷ�����״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->ACAIUEnaSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACAIUEnaSts = (uint8_t)dataVaule;
    //Զ�̺��˪״̬���յ�ִ�У�
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->ACRearWinHeatSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACRearWinHeatSts = (uint8_t)dataVaule;
    //ǰ��˪״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->ACFrntDefrstSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACFrntDefrstSts = (uint8_t)dataVaule;
    //���μ���״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DrvSeatHeatSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DrvSeatHeatSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->PassSeatHeatSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->PassSeatHeatStse = (uint8_t)dataVaule;
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SecRowLeSeatHeatSts,&dataVaule);   
//    stRemoteCtrlSignalValTemp->SecRowLeSeatHeatSts = (uint8_t)dataVaule;
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SecRowRiSeatHeatSts,&dataVaule);   
//    stRemoteCtrlSignalValTemp->SecRowRiSeatHeatSts = (uint8_t)dataVaule;
    //����ͨ��״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DrvSeatVentnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DrvSeatVentnSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->PassSeatVentnSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->PassSeatVentnSts = (uint8_t)dataVaule;
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SecRowLeSeatVentnSts,&dataVaule);   
//    stRemoteCtrlSignalValTemp->SecRowLeSeatVentnSts_ = (uint8_t)dataVaule;
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SecRowRiSeatVentnSts,&dataVaule);   
//    stRemoteCtrlSignalValTemp->SecRowRiSeatVentnSts = (uint8_t)dataVaule;
    //ǰ�絲ȫ������״̬�ź�
//    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->AC_FrntWinHeatEnaSts,&dataVaule);   
//    stRemoteCtrlSignalValTemp->AC_FrntWinHeatEnaSts = (uint8_t)dataVaule;
    //�����̼���״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->SteerWheelHeatdSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->SteerWheelHeatdSts = (uint8_t)dataVaule;
    //�����任����λ��
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->VCU_GearSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->VCU_GearSts = (uint8_t)dataVaule;
    //�յ�״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->NeutralSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->NeutralSts = (uint8_t)dataVaule;
    //��������ź�
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->ACCbnClnEnasts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACCbnClnEnasts = (uint8_t)dataVaule;
    //�������״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->ACCbnClnOffCode,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACCbnClnOffCode = (uint8_t)dataVaule;
    //����
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->WhistleSts_F_PBOX,&dataVaule);   
    stRemoteCtrlSignalValTemp->WhistleSts_F_PBOX = (uint8_t)dataVaule;
    //����
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->LTurnLmpSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->LTurnLmpSts = (uint8_t)dataVaule;
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RTurnLmpSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->RTurnLmpSts = (uint8_t)dataVaule;
    //�����ŵ�״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->TrunkSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->TrunkSts = (uint8_t)dataVaule;
    //����״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->DoorLockSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->DoorLockSts = (uint8_t)dataVaule;
    //���˪
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->RWinHeatgIconRlyCmd,&dataVaule);   
    stRemoteCtrlSignalValTemp->RWinHeatgIconRlyCmd = (uint8_t)dataVaule;
    //���ǹCP״̬
     CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->EVCC_CPLineSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->EVCC_CPLineSts = (uint8_t)dataVaule;
    //����ϵͳ��ѹ״̬
     CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->VCU_VCUSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->VCU_VCUSts = (uint8_t)dataVaule;
    //P03ǰ�絲ȫ������״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->CEM_FrntWinHeatEnaSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->CEM_FrntWinHeatEnaSts = (uint8_t)dataVaule;
		//���ģʽ
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->Phone_ChrgnMode,&dataVaule);   
    stRemoteCtrlSignalValTemp->Phone_ChrgnMode = (uint8_t)dataVaule;
		//Զ������ģʽ
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->T_BOX_RemtSdlMod,&dataVaule);   
    stRemoteCtrlSignalValTemp->T_BOX_RemtSdlMod = (uint8_t)dataVaule;
		//���ǹ����״̬
    CanParseSdkReadSignal(g_CanSignalFormat,&pCan0SignalConfigure->EVCC_PPLineSts,&dataVaule);   
    stRemoteCtrlSignalValTemp->EVCC_PPLineSts = (uint8_t)dataVaule;
}











