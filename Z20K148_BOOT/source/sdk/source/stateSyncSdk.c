#include "logHal.h"
#include "stdlib.h"
#include "stateSyncSdk.h"

#define CPU_INFO_FAILURE_TIME  30      //cpu信息失效时间 单位：秒

static uint16_t g_processCycleTime = 10;          //保存StateSyncSdkCycleProcess接口调用周期，单位 ms
//static int16_t	g_mpuHandle = 0;                  //保存同步任务的CPU通信句柄
//static int16_t	g_powerManageHandle = -1;     //电源管理状态句柄
static CpuLocationInfo_t g_cpuLocationInfo;        //MPU 定位信息存储
static CpuNetInfoSync_t g_cpuNetInfo;              //MPU 网络信息存储
static CpuHalStateSync_t g_cpuHalState;            //MPU硬件信息存储
static CpuTspStateSync_t g_cpuTspState;            //MPU平台连接信息
//static GsensorStateSync_t g_gsensorState;          //G-Sensor状态

/*************************************************
  Function:       StateSyncSdkInit
  Description:    状态同步模块初始化接口
  Input:          mpuHandle：mpu通信句柄
                  cycleTime：周期调用接口调用周期
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncSdkInit(int16_t mpuHandle,uint16_t cycleTime)
{
    if((mpuHandle<0)&&(cycleTime<=0))
    {
       return -1; 
    }
    g_processCycleTime = cycleTime;
    //g_mpuHandle = mpuHandle;           
    
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
    
    //g_gsensorState.state = 1;
    //g_gsensorState.failureTime = CPU_INFO_FAILURE_TIME*1000;
    //g_gsensorState.timeCount = 0;
    //g_gsensorState.validity = 0;
    
    return 0;
}

/*************************************************
  Function:       StateSyncSdkCycleProcess
  Description:    状态同步模块周期调用接口
  Input:          pRxData：传入接收到的CPU数据
                  rxLength：数据长度
  Output:         无
  Return:         无
  Others:         
*************************************************/
void StateSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    if(msgData != NULL && msgData->aid == 0x01)
    {
        //TBOX_PRINT("State sync : aid %d ,mid %d, subcommond %d\r\n",msgData->aid,msgData->mid,(msgData->subcommand & 0x7F));
        if(msgData->mid == E_STATE_SYNC_LOCALTION_INFO_MID)
        {
            if(msgData->dataLength == 41)
            {
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

                g_cpuLocationInfo.timeCount = 0;
                g_cpuLocationInfo.validity = 1;
            }
 
        }
        else if(msgData->mid == E_STATE_SYNC_NET_INFO_MID)
        {
            if(msgData->dataLength == 5)
            {
                g_cpuNetInfo.netInfo.creg = msgData->pDataBuffer[0];
                g_cpuNetInfo.netInfo.csq = msgData->pDataBuffer[1];
                g_cpuNetInfo.netInfo.netType = msgData->pDataBuffer[2];
                g_cpuNetInfo.netInfo.apnCounter = msgData->pDataBuffer[3];
                g_cpuNetInfo.netInfo.apnStatus = msgData->pDataBuffer[4];
                g_cpuNetInfo.netInfo.mainAntennaStatus = msgData->pDataBuffer[5] & 0x0F;
                g_cpuNetInfo.netInfo.slaveAntennaStatus = (msgData->pDataBuffer[5] & 0xF0) >> 4;

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
    if((g_cpuLocationInfo.validity == 1) && (g_cpuLocationInfo.timeCount++ > (g_cpuLocationInfo.failureTime)/g_processCycleTime))
    {
        g_cpuLocationInfo.validity = 0;
    }
    
    if((g_cpuNetInfo.validity == 1) && (g_cpuNetInfo.timeCount++ > (g_cpuNetInfo.failureTime)/g_processCycleTime))
    {
        g_cpuNetInfo.validity = 0;
    }
    
    if((g_cpuHalState.validity == 1) && (g_cpuHalState.timeCount++ > (g_cpuHalState.failureTime)/g_processCycleTime))
    {
        g_cpuHalState.validity = 0;
    }
    
    if((g_cpuTspState.validity == 1) && (g_cpuTspState.timeCount++ > (g_cpuTspState.failureTime)/g_processCycleTime))
    {
        g_cpuTspState.validity = 0;
    }
    return ;
}

/*************************************************
  Function:       StateSyncGetLocationInfo
  Description:    获取CPU定位信息接口
  Input:          无
  Output:         localtioninfo：定位信息
  Return:         无
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
  Description:    获取cpu网络信息接口
  Input:          无
  Output:         netInfo：cpu网络信息
  Return:         无
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
  Description:    获取cpu硬件状态
  Input:          无
  Output:         halState：cpu硬件状态
  Return:         无
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
  Description:    获取远程平台连接状态
  Input:          无
  Output:         tspState：平台连接状态
  Return:         无
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
#if 0
/*************************************************
  Function:       StateSyncGetGsersorState
  Description:    获取G-Sensor状态
  Input:          无
  Output:         state：状态 0正常，1错误
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetGsensorState(uint8_t *state)
{
    if(state == NULL)
    {
        return -1;
    }
    if(g_gsensorState.validity == 0)
    {
        *state = 1;
        return -1;
    }
    *state = g_gsensorState.state;
    return 0;
    
}
#endif
