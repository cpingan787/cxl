#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "logHal.h"
#include "stdlib.h"
#include <string.h>
#include "stateSyncSdk.h"
#include "taskDtcProcess.h"
#include "peripheralHal.h"

#define CPU_INFO_FAILURE_TIME  30      //cpu��ϢʧЧʱ�� ��λ����

static uint16_t g_processCycleTime = 0;          //����StateSyncSdkCycleProcess�ӿڵ������ڣ���λ ms
static int16_t	g_mpuHandle = 0;                  //����ͬ�������CPUͨ�ž��
static uint8_t g_packData[64] = {0};
static SemaphoreHandle_t g_mutexHandle = NULL;   //互斥锁句柄
static MpuHalDataPack_t g_stateSyncPack;         //mpu通信数据包
//static int16_t	g_powerManageHandle = -1;     //��Դ����״̬���
static CpuLocationInfo_t g_cpuLocationInfo;        //MPU ��λ��Ϣ�洢
static CpuNetInfoSync_t g_cpuNetInfo;              //MPU ������Ϣ�洢
static CpuHalStateSync_t g_cpuHalState;            //MPUӲ����Ϣ�洢
static CpuTspStateSync_t g_cpuTspState;            //MPUƽ̨������Ϣ
static CpuDevicesStatus_t g_cpuDevicesStatus;
/*************************************************
  Function:       StateSyncSdkInit
  Description:    ״̬ͬ��ģ���ʼ���ӿ�
  Input:          mpuHandle��mpuͨ�ž��
                  cycleTime�����ڵ��ýӿڵ�������
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t StateSyncSdkInit(int16_t mpuHandle,uint16_t cycleTime)
{
    if((mpuHandle<0)&&(cycleTime<=0))
    {
       return -1; 
    }
    g_processCycleTime = cycleTime;
    g_mpuHandle = mpuHandle;
    
    g_cpuLocationInfo.failureTime = CPU_INFO_FAILURE_TIME*1000;
    g_cpuLocationInfo.timeCount = 0;
    g_cpuLocationInfo.validity = 0;
    
    g_cpuNetInfo.failureTime = CPU_INFO_FAILURE_TIME*1000;
    g_cpuNetInfo.timeCount = 0;
    g_cpuNetInfo.validity = 0;
    
    g_cpuHalState.failureTime = CPU_INFO_FAILURE_TIME*1000;
    g_cpuHalState.timeCount = 0;
    g_cpuHalState.validity = 0;
    
    g_cpuTspState.failureTime = CPU_INFO_FAILURE_TIME*1000;
    g_cpuTspState.timeCount = 0;
    g_cpuTspState.validity = 0;
    
    g_mutexHandle = xSemaphoreCreateMutex();

    return 0;
}

static int16_t StateSyncSdkSendHpdState(void)
{
    if(g_mpuHandle < 0)
    {
        return -1;
    }
    g_stateSyncPack.aid = 0x01;
    g_stateSyncPack.mid = 0x18;
    g_stateSyncPack.subcommand = 0x01;

    memset(g_packData,0,sizeof(g_packData));

    g_stateSyncPack.dataBufferSize = sizeof(g_packData);
    
    xSemaphoreTake(g_mutexHandle, portMAX_DELAY);
    g_packData[0] = PeripheralHalGetHpdStatus();
    xSemaphoreGive(g_mutexHandle);

    g_stateSyncPack.pDataBuffer = g_packData;
    g_stateSyncPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle,&g_stateSyncPack);
    
    return 0;
}

/*************************************************
  Function:       StateSyncSdkCycleProcess
  Description:    ״̬ͬ��ģ�����ڵ��ýӿ�
  Input:          pRxData��������յ���CPU����
                  rxLength�����ݳ���
  Output:         ��
  Return:         ��
  Others:         
*************************************************/
void StateSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    static uint16_t cycleTimeCount = 1000;

    if(msgData != NULL && msgData->aid == 0x01)
    {
        //TBOX_PRINT("State sync : aid %d ,mid %d, subcommond %d\r\n",msgData->aid,msgData->mid,(msgData->subcommand & 0x7F));
        if(msgData->mid == E_STATE_SYNC_LOCALTION_INFO_MID)
        {
            if(msgData->dataLength == 41)
            {
#if 1
                g_cpuLocationInfo.locationInfo.moduleState = msgData->pDataBuffer[0];
                g_cpuLocationInfo.locationInfo.wireState = msgData->pDataBuffer[1];
                g_cpuLocationInfo.locationInfo.locationState = msgData->pDataBuffer[2];
                g_cpuLocationInfo.locationInfo.longitude = msgData->pDataBuffer[3]<<24 | msgData->pDataBuffer[4]<<16 | msgData->pDataBuffer[5]<<8 | msgData->pDataBuffer[6];
                g_cpuLocationInfo.locationInfo.latitude = msgData->pDataBuffer[7]<<24 | msgData->pDataBuffer[8]<<16 | msgData->pDataBuffer[9]<<8 | msgData->pDataBuffer[10];
                for(uint8_t i = 0;i<8;i++)
                {
                    g_cpuLocationInfo.locationInfo.flongitude[i] = msgData->pDataBuffer[11+i];
                    g_cpuLocationInfo.locationInfo.flatitude[i] = msgData->pDataBuffer[19+i];
                }
                g_cpuLocationInfo.locationInfo.altitude = msgData->pDataBuffer[27]<<8 | msgData->pDataBuffer[28];
                g_cpuLocationInfo.locationInfo.speed = msgData->pDataBuffer[29]<<8 | msgData->pDataBuffer[30];
                g_cpuLocationInfo.locationInfo.heading = msgData->pDataBuffer[31]<<8 | msgData->pDataBuffer[32];
                g_cpuLocationInfo.locationInfo.accuracy = msgData->pDataBuffer[33]<<8 | msgData->pDataBuffer[34];
                g_cpuLocationInfo.locationInfo.svsNum = msgData->pDataBuffer[35];
                g_cpuLocationInfo.locationInfo.useSvsnum = msgData->pDataBuffer[36];
                g_cpuLocationInfo.locationInfo.timeStamp = msgData->pDataBuffer[37]<<24 | msgData->pDataBuffer[38]<<16 | msgData->pDataBuffer[39]<<8 | msgData->pDataBuffer[40];
#else
                uint8_t *pSrc = (uint8_t *)msgData->pDataBuffer;
                uint8_t *pDes = (uint8_t *)&(g_cpuLocationInfo.locationInfo);
                uint8_t i = 0;
                for(i = 0;i<sizeof(g_cpuLocationInfo.locationInfo);i++)
                {
                    pDes[i] = pSrc[i];
                }
#endif
                // if(g_cpuLocationInfo.locationInfo.moduleState == 0)
                // {
                //     ClearDtcFaultState(E_DTC_ITEM_GPS_MODULE_FAULT);
                // }
                // else if(g_cpuLocationInfo.locationInfo.moduleState == 1)
                // {
                //     SetDtcFaultState(E_DTC_ITEM_GPS_MODULE_FAULT);
                // }
                // else
                // {
                //     // do nothing
                // }

                if(g_cpuLocationInfo.locationInfo.wireState == 0)
                {
                    ClearDtcFaultState(E_DTC_ITEM_GPS_ANTENNA_SHROT);
                    ClearDtcFaultState(E_DTC_ITEM_GPS_ANTENNA_OPEN);
                }
                else if(g_cpuLocationInfo.locationInfo.wireState == 1)
                {
                    SetDtcFaultState(E_DTC_ITEM_GPS_ANTENNA_OPEN);
                    ClearDtcFaultState(E_DTC_ITEM_GPS_ANTENNA_SHROT);
                }
                else if ((g_cpuLocationInfo.locationInfo.wireState == 2) || (g_cpuLocationInfo.locationInfo.wireState == 3))
                {
                    SetDtcFaultState(E_DTC_ITEM_GPS_ANTENNA_SHROT);
                    ClearDtcFaultState(E_DTC_ITEM_GPS_ANTENNA_OPEN);
                }
                else
                {
                    // do nothing
                }

                if((g_cpuLocationInfo.locationInfo.locationState & 0x3F) != 0)
                {
                    //ClearDtcFaultState(E_DTC_ITEM_GNSS_INVALID);
                }
                else if((g_cpuLocationInfo.locationInfo.locationState & 0x3F) == 0)
                {
                    //SetDtcFaultState(E_DTC_ITEM_GNSS_INVALID);
                }
                else
                {
                    // do nothing
                }

                   g_cpuLocationInfo.timeCount = 0;
                g_cpuLocationInfo.validity = 1;
            }
 
        }
        else if(msgData->mid == E_STATE_SYNC_NET_INFO_MID)
        {
             if(msgData->dataLength == 7)
            {
                g_cpuNetInfo.netInfo.creg = msgData->pDataBuffer[0];
                g_cpuNetInfo.netInfo.csq = msgData->pDataBuffer[1];
                g_cpuNetInfo.netInfo.netType = msgData->pDataBuffer[2];
                g_cpuNetInfo.netInfo.apnCounter = msgData->pDataBuffer[3];
                g_cpuNetInfo.netInfo.apnStatus = msgData->pDataBuffer[4];
                g_cpuNetInfo.netInfo.mainAntennaStatus = msgData->pDataBuffer[5] & 0x0F;
                g_cpuNetInfo.netInfo.slaveAntennaStatus = (msgData->pDataBuffer[5] & 0xF0) >> 4;
				g_cpuNetInfo.netInfo.simCardStatus = msgData->pDataBuffer[6];
                if((g_cpuNetInfo.netInfo.mainAntennaStatus == 1)&&(g_cpuNetInfo.netInfo.slaveAntennaStatus == 1))
                {
                    ClearDtcFaultState(E_DTC_ITEM_GSM_ANTENNA_SHROT);
                    ClearDtcFaultState(E_DTC_ITEM_GSM_ANTENNA_OPEN);
                }
                else if((g_cpuNetInfo.netInfo.mainAntennaStatus == 2)||(g_cpuNetInfo.netInfo.slaveAntennaStatus == 2))
                {
                    SetDtcFaultState(E_DTC_ITEM_GSM_ANTENNA_SHROT);
                    ClearDtcFaultState(E_DTC_ITEM_GSM_ANTENNA_OPEN);
                }
                else if((g_cpuNetInfo.netInfo.mainAntennaStatus == 3)||(g_cpuNetInfo.netInfo.slaveAntennaStatus == 3))
                {
                    SetDtcFaultState(E_DTC_ITEM_GSM_ANTENNA_OPEN);
                    ClearDtcFaultState(E_DTC_ITEM_GSM_ANTENNA_SHROT);
                }
                else
                {
                    // do nothing
                }

#if 1
                if(g_cpuNetInfo.netInfo.simCardStatus == 0)
                {
                    ClearDtcFaultState(E_DTC_ITEM_SIM_CARD_FAULT);
                }
                else if(g_cpuNetInfo.netInfo.simCardStatus == 1)
                {
                    SetDtcFaultState(E_DTC_ITEM_SIM_CARD_FAULT);
                }
                else
                {
                    // do nothing
                }
#endif
                g_cpuNetInfo.timeCount = 0;
                g_cpuNetInfo.validity = 1;
            }
        }
        else if(msgData->mid == E_STATE_SYNC_HAL_STATE_MID)
        {
            if(msgData->dataLength == 4)
            {
                g_cpuHalState.halState.MemUsageStatus = msgData->pDataBuffer[0];
                g_cpuHalState.halState.cpuUsage = msgData->pDataBuffer[1];
                g_cpuHalState.halState.tmpStatus = msgData->pDataBuffer[2]<<8 + msgData->pDataBuffer[3];

                g_cpuHalState.timeCount = 0;
                g_cpuHalState.validity = 1;
            }
        }
        else if(msgData->mid == E_STATE_SYNC_TSP_CONNECT_STATE_MID)
        {
            g_cpuTspState.tspState.tspStatus = msgData->pDataBuffer[0];
            
            g_cpuTspState.timeCount = 0;
            g_cpuTspState.validity = 1;
        }
        else
        {
        }
    }

    if(g_processCycleTime == 0)
    {
        return ;
    }
    if((g_cpuLocationInfo.validity == 1) && (g_cpuLocationInfo.timeCount++ > (g_cpuLocationInfo.failureTime*1000)/g_processCycleTime))
    {
        g_cpuLocationInfo.validity = 0;
    }
    
    if((g_cpuNetInfo.validity == 1) && (g_cpuNetInfo.timeCount++ > (g_cpuNetInfo.failureTime*1000)/g_processCycleTime))
    {
        g_cpuNetInfo.validity = 0;
    }
    
    if((g_cpuHalState.validity == 1) && (g_cpuHalState.timeCount++ > (g_cpuHalState.failureTime*1000)/g_processCycleTime))
    {
        g_cpuHalState.validity = 0;
    }
    
    if((g_cpuTspState.validity == 1) && (g_cpuTspState.timeCount++ > (g_cpuTspState.failureTime*1000)/g_processCycleTime))
    {
        g_cpuTspState.validity = 0;
    }

    if(cycleTimeCount++ >= 1000/g_processCycleTime) //1秒
    {
        cycleTimeCount = 0;
        StateSyncSdkSendHpdState();
    }

    return ;
}

void FaultSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    if(msgData != NULL && msgData->aid == 0x30 && msgData->mid == 0x01)
    {
      g_cpuDevicesStatus.EMMCStatus = msgData->pDataBuffer[0];
      g_cpuDevicesStatus.ETHStatus = msgData->pDataBuffer[1];
      g_cpuDevicesStatus.WIFIStatus = msgData->pDataBuffer[2];
        if (g_cpuDevicesStatus.EMMCStatus == 1)
        {
            //SetDtcFaultState(E_DTC_ITEM_EMMC_FAULT);
        }
        else
        {
           // ClearDtcFaultState(E_DTC_ITEM_EMMC_FAULT);
        }
        if (g_cpuDevicesStatus.ETHStatus == 1)
        {
            //SetDtcFaultState(E_DTC_ITEM_ETHERNET_FAULT);
        }
        else
        {
            //ClearDtcFaultState(E_DTC_ITEM_ETHERNET_FAULT);  
        }
        if (g_cpuDevicesStatus.WIFIStatus == 1)
        {
            SetDtcFaultState(E_DTC_ITEM_WIFI_MODULE_FAULT);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_WIFI_MODULE_FAULT);
        }
    }
    else
    {
      
    }
    return;
}

int16_t StateSyncGetDevicesStatus(CpuDevicesStatus_t *cpuDevicesStatus)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint8_t i = 0;
    
    if(cpuDevicesStatus == NULL)
    {
        return -1;
    }
        
    pSrc = (uint8_t *)&g_cpuDevicesStatus;
    pDes = (uint8_t *)cpuDevicesStatus;
    
    for(i = 0;i<sizeof(CpuDevicesStatus_t);i++)
    {
        pDes[i] = pSrc[i];
    }
    
    return 0;
}
/*************************************************
  Function:       StateSyncGetLocationInfo
  Description:    ��ȡCPU��λ��Ϣ�ӿ�
  Input:          ��
  Output:         localtioninfo����λ��Ϣ
  Return:         ��
  Others:         
*************************************************/
int16_t StateSyncGetLocationInfo(LocationInfoSync_t *localtionInfo)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint8_t i = 0;
    
    if(localtionInfo == NULL)
    {
        return -1;
    }
    
    if(g_cpuLocationInfo.validity == 0)
    {
        return -1;
    }
    
    pSrc = (uint8_t *)&(g_cpuLocationInfo.locationInfo);
    pDes = (uint8_t *)localtionInfo;
    
    for(i = 0;i<sizeof(LocationInfoSync_t);i++)
    {
        pDes[i] = pSrc[i];
    }
    
    return 0;
}

/*************************************************
  Function:       StateSyncGetNetInfo
  Description:    ��ȡcpu������Ϣ�ӿ�
  Input:          ��
  Output:         netInfo��cpu������Ϣ
  Return:         ��
  Others:         
*************************************************/
int16_t StateSyncGetNetInfo(NetInfoSync_t *netInfo)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint8_t i = 0;
    
    if(netInfo == NULL)
    {
        return -1;
    }
    
    if(g_cpuNetInfo.validity == 0)
    {
        return -1;
    }
    
    pSrc = (uint8_t *)&g_cpuNetInfo.netInfo;
    pDes = (uint8_t *)netInfo;
    
    for(i = 0;i<sizeof(NetInfoSync_t);i++)
    {
        pDes[i] = pSrc[i];
    }
    
    return 0;
}

/*************************************************
  Function:       StateSyncGetHalstate
  Description:    ��ȡcpuӲ��״̬
  Input:          ��
  Output:         halState��cpuӲ��״̬
  Return:         ��
  Others:         
*************************************************/
int16_t StateSyncGetHalstate(HalStateSync_t *halState)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint8_t i = 0;
    
    if(halState == NULL)
    {
        return -1;
    }
    
    if(g_cpuHalState.validity == 0)
    {
        return -1;
    }
    
    pSrc = (uint8_t *)&g_cpuHalState.halState;
    pDes = (uint8_t *)halState;
    
    for(i = 0;i<sizeof(HalStateSync_t);i++)
    {
        pDes[i] = pSrc[i];
    }
    
    return 0;
}

/*************************************************
  Function:       StateSyncGetTspState
  Description:    ��ȡԶ��ƽ̨����״̬
  Input:          ��
  Output:         tspState��ƽ̨����״̬
  Return:         ��
  Others:         
*************************************************/
int16_t StateSyncGetTspState(TspStateSync_t *tspState)
{
    if(tspState == NULL)
    {
        return -1;
    }
    
    if(g_cpuTspState.validity == 0)
    {
        return -1;
    }
    
    tspState->tspStatus = g_cpuTspState.tspState.tspStatus;

    return 0;
}

