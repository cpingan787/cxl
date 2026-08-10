/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: stateSyncSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "logHal.h"
#include "stdlib.h"
#include "string.h"
#include "stateSyncSdk.h"
#include "peripheralHal.h"
#include "r_cg_macrodriver.h"
#include "r_cg_port.h"
#include "r_port.h"
#include "Dem.h"
#include "Rte_Dem_Type.h"
#include "Dem_PBcfg.h"
// #include "taskDtcProcess.h"

/****************************** Global Variables ******************************/
static uint16_t g_processCycleTime = 10; // 保存StateSyncSdkCycleProcess接口调用周期，单位 ms
// static int16_t	g_mpuHandle = 0;                  //保存同步任务的CPU通信句柄
// static int16_t	g_powerManageHandle = -1;     //电源管理状态句柄
static CpuLocationInfo_t g_cpuLocationInfo;   // MPU 定位信息存储
static CpuSatelliteInfo_t g_cpuSatelliteInfo; // MPU 卫星信息存储
static CpuNetInfoSync_t g_cpuNetInfo;         // MPU 网络信息存储
static CpuHalStateSync_t g_cpuHalState;       // MPU硬件信息存储
static CpuTspStateSync_t g_cpuTspState;       // MPU平台连接信息

/****************************** Public Function Implementations ******************************/

static uint16_t FloatToUint16Trunc(float f)
{
    union
    {
        float f;
        uint32_t u;
    } fu = {.f = f};

    uint32_t u = fu.u;
    int sign = (u >> 31) & 1;
    int exp = ((u >> 23) & 0xFF) - 127;      // 减去偏置值
    uint32_t mant = u & 0x7FFFFF | 0x800000; // 加上隐含位，共24位有效数

    if (exp < 0)
        return 0; // 绝对值小于1，整数部分为0
    if (exp >= 23)
    {
        // 浮点数绝对值很大，整数部分可以直接移位得到
        uint32_t int_part = mant << (exp - 23);
        if (sign)
            int_part = -int_part; // 符号处理
        // 检查是否超出uint16_t范围
        if (int_part > 0xFFFF)
            int_part = 0xFFFF; // 饱和处理
        return (uint16_t)int_part;
    }
    else
    {
        // 小数部分需要舍去
        uint32_t int_part = mant >> (23 - exp);
        if (sign)
            int_part = -int_part;
        return (uint16_t)int_part;
    }
}

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
int16_t StateSyncSdkInit(int16_t mpuHandle, uint16_t cycleTime)
{
    if ((mpuHandle < 0) && (cycleTime <= 0))
    {
        return -1;
    }
    g_processCycleTime = cycleTime;
    // g_mpuHandle = mpuHandle;

    g_cpuLocationInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuLocationInfo.timeCount = 0;
    g_cpuLocationInfo.validity = 0;

    g_cpuSatelliteInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuSatelliteInfo.timeCount = 0;
    g_cpuSatelliteInfo.validity = 0;

    g_cpuNetInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuNetInfo.timeCount = 0;
    g_cpuNetInfo.validity = 0;

    g_cpuHalState.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuHalState.timeCount = 0;
    g_cpuHalState.validity = 0;

    g_cpuTspState.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuTspState.timeCount = 0;
    g_cpuTspState.validity = 0;

    return 0;
}



/*************************************************
  Function:       Uint8ArrayToFloat
  Description:    将uint8_t数组转换为float类型（大端字节序）
  Input:          src:  输入的uint8_t数组地址（至少4字节）
  Output:         无
  Return:         转换后的float值
  Others:
*************************************************/
static float Uint8ArrayToFloat(const uint8_t *u8Src) {
    // 大端字节序：高字节在前
    float result;
    uint8_t *resultBytes = (uint8_t *)&result;

    resultBytes[3] = u8Src[0]; 
    resultBytes[2] = u8Src[1]; 
    resultBytes[1] = u8Src[2]; 
    resultBytes[0] = u8Src[3]; 
    return result;
}

/*************************************************
  Function:       Uint8ArrayToDouble
  Description:    将uint8_t数组转换为double类型
  Input:          byteArray:   输入的uint8_t数组（至少8字节）
                  littleEndian: 是否使用小端字节序（1: 小端, 0: 大端）
  Output:         无
  Return:         转换后的double值
  Others:
*************************************************/
static double Uint8ArrayToDouble(const uint8_t *src) {
    // 大端字节序：高字节在前
    union { uint8_t b[8]; double d; } u;
    u.b[7] = src[0];
    u.b[6] = src[1];
    u.b[5] = src[2];
    u.b[4] = src[3];
    u.b[3] = src[4];
    u.b[2] = src[5];
    u.b[1] = src[6];
    u.b[0] = src[7];
    return u.d;
}

/*************************************************
  Function:       StateSyncParseGnssData
  Description:    解析gnss数据
  Input:          msgData: 接收到的gnss数据包指针
  Output:         无
  Return:         无
  Others:
*************************************************/
static void StateSyncParseGnssData(MpuHalDataPack_t *msgData)
{
    g_cpuLocationInfo.locationInfo.moduleState = msgData->pDataBuffer[0];
    /* GNSS天线状态从MCU判断 */
    // 待适配taskDtcProcess
    // DtcQueryState_e gnssAntState = DtcGetObjState(E_DTC_QUERY_GPS_ANT);
    // if (gnssAntState == E_DTC_QUERY_STATE_NORMAL)
    // {
    //     g_cpuLocationInfo.locationInfo.wireState = 0;
    // }
    // else if (gnssAntState == E_DTC_QUERY_STATE_OPEN)
    // {
    //     g_cpuLocationInfo.locationInfo.wireState = 1;
    // }
    // else if ((gnssAntState == E_DTC_QUERY_STATE_SHORT_GND) || (gnssAntState == E_DTC_QUERY_STATE_SHORT_BAT))
    // {
    //     g_cpuLocationInfo.locationInfo.wireState = 2;
    // }
    g_cpuLocationInfo.locationInfo.locationState = msgData->pDataBuffer[2];
    g_cpuLocationInfo.locationInfo.longitude = msgData->pDataBuffer[3] << 24 | msgData->pDataBuffer[4] << 16 | msgData->pDataBuffer[5] << 8 | msgData->pDataBuffer[6];
    g_cpuLocationInfo.locationInfo.latitude = msgData->pDataBuffer[7] << 24 | msgData->pDataBuffer[8] << 16 | msgData->pDataBuffer[9] << 8 | msgData->pDataBuffer[10];
    g_cpuLocationInfo.locationInfo.flongitude = Uint8ArrayToDouble(msgData->pDataBuffer + 11);
    g_cpuLocationInfo.locationInfo.flatitude = Uint8ArrayToDouble(msgData->pDataBuffer + 19);
    g_cpuLocationInfo.locationInfo.altitude = msgData->pDataBuffer[27] << 8 | msgData->pDataBuffer[28];
    g_cpuLocationInfo.locationInfo.speed = msgData->pDataBuffer[29] << 8 | msgData->pDataBuffer[30];
    g_cpuLocationInfo.locationInfo.heading = msgData->pDataBuffer[31] << 8 | msgData->pDataBuffer[32];
    g_cpuLocationInfo.locationInfo.accuracy = msgData->pDataBuffer[33] << 8 | msgData->pDataBuffer[34];
    g_cpuLocationInfo.locationInfo.svsNum = msgData->pDataBuffer[35];
    g_cpuLocationInfo.locationInfo.useSvsnum = msgData->pDataBuffer[36];
    g_cpuLocationInfo.locationInfo.timeStamp = msgData->pDataBuffer[37] << 24 | msgData->pDataBuffer[38] << 16 | msgData->pDataBuffer[39] << 8 | msgData->pDataBuffer[40];
    g_cpuLocationInfo.locationInfo.svwFlags = msgData->pDataBuffer[41] << 8 | msgData->pDataBuffer[42];
    g_cpuLocationInfo.locationInfo.svwBearing = Uint8ArrayToFloat(msgData->pDataBuffer + 43);
    g_cpuLocationInfo.locationInfo.svwSpeed = Uint8ArrayToFloat(msgData->pDataBuffer + 47);
    g_cpuLocationInfo.locationInfo.svwPdop = FloatToUint16Trunc(Uint8ArrayToFloat(msgData->pDataBuffer + 51) * 100.0);
    g_cpuLocationInfo.locationInfo.svwHdop = FloatToUint16Trunc(Uint8ArrayToFloat(msgData->pDataBuffer + 55) * 100.0);
    g_cpuLocationInfo.locationInfo.svwVdop = FloatToUint16Trunc(Uint8ArrayToFloat(msgData->pDataBuffer + 59) * 100.0);
    // TBOX_PRINT("mpuPdop: %d  mcuPdop: %d\r\nmpuHdop: %d  mcuHdop: %d\r\nmpuVdop: %d  mcuVdop: %d\r\n", mcupdop, g_cpuLocationInfo.locationInfo.svwPdop, mcuhdop, g_cpuLocationInfo.locationInfo.svwHdop, mcuvdop, g_cpuLocationInfo.locationInfo.svwVdop);
    g_cpuLocationInfo.locationInfo.svwAltitude = Uint8ArrayToDouble(msgData->pDataBuffer + 63);
    g_cpuLocationInfo.locationInfo.svwEastVelocity = Uint8ArrayToFloat(msgData->pDataBuffer + 71);
    g_cpuLocationInfo.locationInfo.svwNorthVelocity = Uint8ArrayToFloat(msgData->pDataBuffer + 75);
    g_cpuLocationInfo.locationInfo.svwUpVelocity = Uint8ArrayToFloat(msgData->pDataBuffer + 79);
    g_cpuLocationInfo.locationInfo.svwEastVelocityStdDeviation = Uint8ArrayToFloat(msgData->pDataBuffer + 83);
    g_cpuLocationInfo.locationInfo.svwNorthVelocityStdDeviation = Uint8ArrayToFloat(msgData->pDataBuffer + 87);
    g_cpuLocationInfo.locationInfo.svwUpVelocityStdDeviation = Uint8ArrayToFloat(msgData->pDataBuffer + 91);
    g_cpuLocationInfo.locationInfo.svwTimestamp = ((uint64_t)msgData->pDataBuffer[95] << 56) | ((uint64_t)msgData->pDataBuffer[96] << 48) | ((uint64_t)msgData->pDataBuffer[97] << 40) | ((uint64_t)msgData->pDataBuffer[98] << 32) | ((uint64_t)msgData->pDataBuffer[99] << 24) | ((uint64_t)msgData->pDataBuffer[100] << 16) | ((uint64_t)msgData->pDataBuffer[101] << 8) | ((uint64_t)msgData->pDataBuffer[102]);
    g_cpuLocationInfo.locationInfo.svwHorizontalAccuracy = Uint8ArrayToFloat(msgData->pDataBuffer + 103);
    g_cpuLocationInfo.locationInfo.svwMagneticDeviation = Uint8ArrayToFloat(msgData->pDataBuffer + 107);
    g_cpuLocationInfo.timeCount = 0;
    g_cpuLocationInfo.validity = 1;
}

/*************************************************
  Function:       StateSyncParseSatelliteData
  Description:    解析卫星数据
  Input:          msgData: 接收到的卫星数据包指针
  Output:         无
  Return:         无
  Others:
*************************************************/
static void StateSyncParseSatelliteData(MpuHalDataPack_t *msgData)
{
    g_cpuSatelliteInfo.satelliteInfo.svsNum = msgData->pDataBuffer[0];
    uint8_t len = (g_cpuSatelliteInfo.satelliteInfo.svsNum) > 127 ? 127 : g_cpuSatelliteInfo.satelliteInfo.svsNum;
    // TBOX_PRINT("svsNum: %d\r\n", len);
    for (uint8_t i = 0; i < len; i++)
    {
        g_cpuSatelliteInfo.satelliteInfo.svList[i].svId = i; //卫星ID不使用真实ID
        // g_cpuSatelliteInfo.satelliteInfo.svList[i].svId = msgData->pDataBuffer[1 + i * 14] << 8 | msgData->pDataBuffer[2 + i * 14];
        g_cpuSatelliteInfo.satelliteInfo.svList[i].cN0Dbhz = FloatToUint16Trunc(Uint8ArrayToFloat(msgData->pDataBuffer + (3 + i * 14)));
        g_cpuSatelliteInfo.satelliteInfo.svList[i].elevation = FloatToUint16Trunc(Uint8ArrayToFloat(msgData->pDataBuffer + (7 + i * 14)));
        g_cpuSatelliteInfo.satelliteInfo.svList[i].azimuth = FloatToUint16Trunc(Uint8ArrayToFloat(msgData->pDataBuffer + (11 + i * 14)));
        // TBOX_PRINT("svId: %d, cN0Dbhz: %d, elevation: %d, azimuth: %d\r\n", g_cpuSatelliteInfo.satelliteInfo.svList[i].svId, g_cpuSatelliteInfo.satelliteInfo.svList[i].cN0Dbhz, g_cpuSatelliteInfo.satelliteInfo.svList[i].elevation, g_cpuSatelliteInfo.satelliteInfo.svList[i].azimuth);
    }
    g_cpuSatelliteInfo.timeCount = 0;
    g_cpuSatelliteInfo.validity = 1;
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
    if (msgData != NULL && msgData->aid == 0x01)
    {
        if (msgData->mid == E_STATE_SYNC_LOCALTION_INFO_MID)
        {
            if ((msgData->subcommand & 0x7F) == 0x01)
            {
                StateSyncParseGnssData(msgData);
            }
            else if ((msgData->subcommand & 0x7F) == 0x02)
            {
                StateSyncParseSatelliteData(msgData);
            }
        }
        else if (msgData->mid == E_STATE_SYNC_NET_INFO_MID)
        {
            if (msgData->dataLength == 6)
            {
                g_cpuNetInfo.netInfo.creg = msgData->pDataBuffer[0];
                g_cpuNetInfo.netInfo.csq = msgData->pDataBuffer[1];
                g_cpuNetInfo.netInfo.netType = msgData->pDataBuffer[2];
                g_cpuNetInfo.netInfo.apnCounter = msgData->pDataBuffer[3];
                g_cpuNetInfo.netInfo.apnStatus = msgData->pDataBuffer[4];
                g_cpuNetInfo.netInfo.antennaStatus = msgData->pDataBuffer[5];

                g_cpuNetInfo.timeCount = 0;
                g_cpuNetInfo.validity = 1;
            }
        }
        else if (msgData->mid == E_STATE_SYNC_HAL_STATE_MID)
        {
            if (msgData->dataLength == 10)
            {
                g_cpuHalState.halState.MemUsageStatus = msgData->pDataBuffer[0];
                g_cpuHalState.halState.cpuUsage = msgData->pDataBuffer[1];
                g_cpuHalState.halState.cpu0Temp = (msgData->pDataBuffer[2] << 8) + msgData->pDataBuffer[3];
                g_cpuHalState.halState.cpu1Temp = (msgData->pDataBuffer[4] << 8) + msgData->pDataBuffer[5];
                g_cpuHalState.halState.cpu2Temp = (msgData->pDataBuffer[6] << 8) + msgData->pDataBuffer[7];
                g_cpuHalState.halState.cpu3Temp = (msgData->pDataBuffer[8] << 8) + msgData->pDataBuffer[9];

                g_cpuHalState.timeCount = 0;
                g_cpuHalState.validity = 1;
            }
        }
        else if (msgData->mid == E_STATE_SYNC_TSP_CONNECT_STATE_MID)
        {
            g_cpuTspState.tspState.tspStatus = msgData->pDataBuffer[0];

            g_cpuTspState.timeCount = 0;
            g_cpuTspState.validity = 1;
        }
        else
        {
        }
    }

    if (g_processCycleTime == 0)
    {
        return;
    }
    if ((g_cpuLocationInfo.validity == 1) && (g_cpuLocationInfo.timeCount++ > (g_cpuLocationInfo.failureTime) / g_processCycleTime))
    {
        g_cpuLocationInfo.validity = 0;
    }

    if ((g_cpuSatelliteInfo.validity == 1) && (g_cpuSatelliteInfo.timeCount++ > (g_cpuSatelliteInfo.failureTime) / g_processCycleTime))
    {
        g_cpuSatelliteInfo.validity = 0;
    }

    if ((g_cpuNetInfo.validity == 1) && (g_cpuNetInfo.timeCount++ > (g_cpuNetInfo.failureTime) / g_processCycleTime))
    {
        g_cpuNetInfo.validity = 0;
    }

    if ((g_cpuHalState.validity == 1) && (g_cpuHalState.timeCount++ > (g_cpuHalState.failureTime) / g_processCycleTime))
    {
        g_cpuHalState.validity = 0;
    }

    if ((g_cpuTspState.validity == 1) && (g_cpuTspState.timeCount++ > (g_cpuTspState.failureTime) / g_processCycleTime))
    {
        g_cpuTspState.validity = 0;
    }

    return;
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
    uint16_t i = 0;

    if (localtionInfo == NULL)
    {
        return -1;
    }

    if (g_cpuLocationInfo.validity == 0)
    {
        return 3;
    }
    pSrc = (uint8_t *)&(g_cpuLocationInfo.locationInfo);
    pDes = (uint8_t *)localtionInfo;

    for (i = 0; i < sizeof(LocationInfoSync_t); i++)
    {
        pDes[i] = pSrc[i];
    }

    return 0;
}

/*************************************************
  Function:       StateSyncGetLocationInfo
  Description:    获取CPU卫星信息接口
  Input:          无
  Output:         satelliteInfo：卫星信息
  Return:         无
  Others:
*************************************************/
int16_t StateSyncGetSatelliteInfo(SatelliteInfoSync_t *satelliteInfo)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint16_t i = 0;

    if (satelliteInfo == NULL)
    {
        return -1;
    }

    if (g_cpuSatelliteInfo.validity == 0)
    {
        return 3;
    }

    pSrc = (uint8_t *)&(g_cpuSatelliteInfo.satelliteInfo);
    pDes = (uint8_t *)satelliteInfo;

    for (i = 0; i < sizeof(SatelliteInfoSync_t); i++)
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

    if (netInfo == NULL)
    {
        return -1;
    }

    if (g_cpuNetInfo.validity == 0)
    {
        return -1;
    }

    pSrc = (uint8_t *)&g_cpuNetInfo.netInfo;
    pDes = (uint8_t *)netInfo;

    for (i = 0; i < sizeof(NetInfoSync_t); i++)
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

    if (halState == NULL)
    {
        return -1;
    }

    if (g_cpuHalState.validity == 0)
    {
        return -1;
    }

    pSrc = (uint8_t *)&g_cpuHalState.halState;
    pDes = (uint8_t *)halState;

    for (i = 0; i < sizeof(HalStateSync_t); i++)
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
    if (tspState == NULL)
    {
        return -1;
    }

    if (g_cpuTspState.validity == 0)
    {
        return -1;
    }

    tspState->tspStatus = g_cpuTspState.tspState.tspStatus;

    return 0;
}

