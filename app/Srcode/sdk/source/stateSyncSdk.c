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

#include "taskDtcProcess.h"

#define CPU_INFO_FAILURE_TIME 30 // cpu信息失效时间 单位：秒

static uint16_t g_processCycleTime = 10; // 保存StateSyncSdkCycleProcess接口调用周期，单位 ms
// static int16_t	g_mpuHandle = 0;                  //保存同步任务的CPU通信句柄
// static int16_t	g_powerManageHandle = -1;     //电源管理状态句柄
static CpuLocationInfo_t g_cpuLocationInfo;   // MPU 定位信息存储
static CpuSatelliteInfo_t g_cpuSatelliteInfo; // MPU 卫星信息存储
static CpuNetInfoSync_t g_cpuNetInfo;         // MPU 网络信息存储
static CpuHalStateSync_t g_cpuHalState;       // MPU硬件信息存储
static CpuTspStateSync_t g_cpuTspState;       // MPU平台连接信息
// static GsensorStateSync_t g_gsensorState;          //G-Sensor状态
static CpuDtcSync_t g_cpuMpuDtcInfo;                // MPU故障码信息存储
static MpuFaultExtStatusSync_t g_mpuFaultExtStatus; // 保存 MPU 故障同步扩展状态
static Be80SnapshotInfoSync_t g_be80SnapshotInfo;     // 保存 BE80 快照信息

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

    g_cpuMpuDtcInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuMpuDtcInfo.timeCount = 0;
    g_cpuMpuDtcInfo.validity = 0;

    g_mpuFaultExtStatus.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_mpuFaultExtStatus.timeCount = 0;
    g_mpuFaultExtStatus.validity = 0;

    g_be80SnapshotInfo.snapshotInfo.serviceId = 0xFFFF;
    g_be80SnapshotInfo.snapshotInfo.serviceInstanceId = 0xFFFF;
    g_be80SnapshotInfo.snapshotInfo.methodEventId = 0xFFFF;
    g_be80SnapshotInfo.snapshotInfo.serviceStatus = 0xFF;
    g_be80SnapshotInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_be80SnapshotInfo.timeCount = 0;
    g_be80SnapshotInfo.validity = 0;

    // g_gsensorState.state = 1;
    // g_gsensorState.failureTime = CPU_INFO_FAILURE_TIME*1000;
    // g_gsensorState.timeCount = 0;
    // g_gsensorState.validity = 0;

    return 0;
}

/*************************************************
  Function:       Uint8ArrayToFloat
  Description:    将uint8_t数组转换为float类型
  Input:          byteArray:  输入的uint8_t数组（至少4字节）
                  littleEndian: 是否使用小端字节序（1: 小端, 0: 大端）
  Output:         无
  Return:         转换后的float值
  Others:
*************************************************/
static float Uint8ArrayToFloat(const uint8_t byteArray[4], uint8_t littleEndian)
{
    float result;
    uint8_t *resultBytes = (uint8_t *)&result;

    if (littleEndian)
    {
        // 小端字节序：低字节在前
        resultBytes[0] = byteArray[0];
        resultBytes[1] = byteArray[1];
        resultBytes[2] = byteArray[2];
        resultBytes[3] = byteArray[3];
    }
    else
    {
        // 大端字节序：高字节在前
        resultBytes[0] = byteArray[3];
        resultBytes[1] = byteArray[2];
        resultBytes[2] = byteArray[1];
        resultBytes[3] = byteArray[0];
    }
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
static double Uint8ArrayToDouble(const uint8_t byteArray[8], uint8_t littleEndian)
{
    double result;
    uint8_t *resultBytes = (uint8_t *)&result;

    if (littleEndian)
    {
        // 小端字节序：低字节在前
        for (int i = 0; i < 8; i++)
        {
            resultBytes[i] = byteArray[i];
        }
    }
    else
    {
        // 大端字节序：高字节在前
        for (int i = 0; i < 8; i++)
        {
            resultBytes[i] = byteArray[7 - i];
        }
    }

    return result;
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
    uint8_t temp[4];
    g_cpuLocationInfo.locationInfo.moduleState = msgData->pDataBuffer[0];
    DtcQueryState_e gnssAntState = DtcGetObjState(E_DTC_QUERY_GPS_ANT);
    if (gnssAntState == E_DTC_QUERY_STATE_NORMAL)
    {
        g_cpuLocationInfo.locationInfo.wireState = 0;
    }
    else if (gnssAntState == E_DTC_QUERY_STATE_OPEN)
    {
        g_cpuLocationInfo.locationInfo.wireState = 1;
    }
    else if ((gnssAntState == E_DTC_QUERY_STATE_SHORT_GND) || (gnssAntState == E_DTC_QUERY_STATE_SHORT_BAT))
    {
        g_cpuLocationInfo.locationInfo.wireState = 2;
    }
    g_cpuLocationInfo.locationInfo.locationState = msgData->pDataBuffer[2];
    g_cpuLocationInfo.locationInfo.longitude = msgData->pDataBuffer[3] << 24 | msgData->pDataBuffer[4] << 16 | msgData->pDataBuffer[5] << 8 | msgData->pDataBuffer[6];
    g_cpuLocationInfo.locationInfo.latitude = msgData->pDataBuffer[7] << 24 | msgData->pDataBuffer[8] << 16 | msgData->pDataBuffer[9] << 8 | msgData->pDataBuffer[10];
    // TBOX_PRINT("moduleState: %d, wireState: %d, locationState: %d, longitude: %d, latitude: %d\r\n", g_cpuLocationInfo.locationInfo.moduleState, g_cpuLocationInfo.locationInfo.wireState, g_cpuLocationInfo.locationInfo.locationState, g_cpuLocationInfo.locationInfo.longitude, g_cpuLocationInfo.locationInfo.latitude);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "moduleState: %d, wireState: %d, locationState: %d, longitude: %d, latitude: %d\r\n", g_cpuLocationInfo.locationInfo.moduleState, g_cpuLocationInfo.locationInfo.wireState, g_cpuLocationInfo.locationInfo.locationState, g_cpuLocationInfo.locationInfo.longitude, g_cpuLocationInfo.locationInfo.latitude);
    uint8_t dlob[8];
    uint8_t dlat[8];
    for (uint8_t i = 0; i < 8; i++)
    {
        dlob[i] = msgData->pDataBuffer[11 + i];
        dlat[i] = msgData->pDataBuffer[19 + i];
    }
    g_cpuLocationInfo.locationInfo.flongitude = Uint8ArrayToDouble(dlob, 0);
    g_cpuLocationInfo.locationInfo.flatitude = Uint8ArrayToDouble(dlat, 0);
    // TBOX_PRINT("flongitude: %f, flatitude: %f\r\n", g_cpuLocationInfo.locationInfo.flongitude, g_cpuLocationInfo.locationInfo.flatitude);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "flongitude: %f, flatitude: %f\r\n", g_cpuLocationInfo.locationInfo.flongitude, g_cpuLocationInfo.locationInfo.flatitude);
    g_cpuLocationInfo.locationInfo.altitude = msgData->pDataBuffer[27] << 8 | msgData->pDataBuffer[28];
    g_cpuLocationInfo.locationInfo.speed = msgData->pDataBuffer[29] << 8 | msgData->pDataBuffer[30];
    g_cpuLocationInfo.locationInfo.heading = msgData->pDataBuffer[31] << 8 | msgData->pDataBuffer[32];
    // TBOX_PRINT("altitude: %d, speed: %d, heading: %d\r\n", g_cpuLocationInfo.locationInfo.altitude, g_cpuLocationInfo.locationInfo.speed, g_cpuLocationInfo.locationInfo.heading);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "altitude: %d, speed: %d, heading: %d\r\n", g_cpuLocationInfo.locationInfo.altitude, g_cpuLocationInfo.locationInfo.speed, g_cpuLocationInfo.locationInfo.heading);
    g_cpuLocationInfo.locationInfo.accuracy = msgData->pDataBuffer[33] << 8 | msgData->pDataBuffer[34];
    g_cpuLocationInfo.locationInfo.svsNum = msgData->pDataBuffer[35];
    g_cpuLocationInfo.locationInfo.useSvsnum = msgData->pDataBuffer[36];
    g_cpuLocationInfo.locationInfo.timeStamp = msgData->pDataBuffer[37] << 24 | msgData->pDataBuffer[38] << 16 | msgData->pDataBuffer[39] << 8 | msgData->pDataBuffer[40];
    g_cpuLocationInfo.locationInfo.svwFlags = msgData->pDataBuffer[41] << 8 | msgData->pDataBuffer[42];
    // TBOX_PRINT("accuracy: %d, svsNum: %d, useSvsnum: %d, timeStamp: %d, svwFlags: %d\r\n", g_cpuLocationInfo.locationInfo.accuracy, g_cpuLocationInfo.locationInfo.svsNum, g_cpuLocationInfo.locationInfo.useSvsnum, g_cpuLocationInfo.locationInfo.timeStamp, g_cpuLocationInfo.locationInfo.svwFlags);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "accuracy: %d, svsNum: %d, useSvsnum: %d, timeStamp: %d, svwFlags: %d\r\n", g_cpuLocationInfo.locationInfo.accuracy, g_cpuLocationInfo.locationInfo.svsNum, g_cpuLocationInfo.locationInfo.useSvsnum, g_cpuLocationInfo.locationInfo.timeStamp, g_cpuLocationInfo.locationInfo.svwFlags);
    memcpy(temp, msgData->pDataBuffer + 43, 4);
    g_cpuLocationInfo.locationInfo.svwBearing = Uint8ArrayToFloat(temp, 0);
    memcpy(temp, msgData->pDataBuffer + 47, 4);
    g_cpuLocationInfo.locationInfo.svwSpeed = Uint8ArrayToFloat(temp, 0);
    // TBOX_PRINT("svwBearing: %f, svwSpeed: %f\r\n", g_cpuLocationInfo.locationInfo.svwBearing, g_cpuLocationInfo.locationInfo.svwSpeed);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "svwBearing: %f, svwSpeed: %f\r\n", g_cpuLocationInfo.locationInfo.svwBearing, g_cpuLocationInfo.locationInfo.svwSpeed);
    memcpy(temp, msgData->pDataBuffer + 51, 4);
    float fpdop = Uint8ArrayToFloat(temp, 0) * 100.0;
    uint16_t pdop = FloatToUint16Trunc(fpdop);
    g_cpuLocationInfo.locationInfo.svwPdop = pdop;
    memcpy(temp, msgData->pDataBuffer + 55, 4);
    float fhdop = Uint8ArrayToFloat(temp, 0) * 100.0;
    uint16_t hdop = FloatToUint16Trunc(fhdop);
    g_cpuLocationInfo.locationInfo.svwHdop = hdop;
    memcpy(temp, msgData->pDataBuffer + 59, 4);
    float fvdop = Uint8ArrayToFloat(temp, 0) * 100.0;
    uint16_t vdop = FloatToUint16Trunc(fvdop);
    g_cpuLocationInfo.locationInfo.svwVdop = vdop;
    // TBOX_PRINT("fpdop: %f, fhdop: %f, fvdop: %f\r\n", fpdop, fhdop, fvdop);
    // TBOX_PRINT("svwPdop: %d, svwHdop: %d, svwVdop: %d\r\n", g_cpuLocationInfo.locationInfo.svwPdop, g_cpuLocationInfo.locationInfo.svwHdop, g_cpuLocationInfo.locationInfo.svwVdop);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "svwPdop: %d, svwHdop: %d, svwVdop: %d\r\n", g_cpuLocationInfo.locationInfo.svwPdop, g_cpuLocationInfo.locationInfo.svwHdop, g_cpuLocationInfo.locationInfo.svwVdop);
    uint8_t dAlt[8];
    memcpy(dAlt, msgData->pDataBuffer + 63, 8);
    g_cpuLocationInfo.locationInfo.svwAltitude = Uint8ArrayToDouble(dAlt, 0);
    // TBOX_PRINT("svwAltitude: %f\r\n", g_cpuLocationInfo.locationInfo.svwAltitude);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "svwAltitude: %f\r\n", g_cpuLocationInfo.locationInfo.svwAltitude);
    memcpy(temp, msgData->pDataBuffer + 71, 4);
    g_cpuLocationInfo.locationInfo.svwEastVelocity = Uint8ArrayToFloat(temp, 0);
    memcpy(temp, msgData->pDataBuffer + 75, 4);
    g_cpuLocationInfo.locationInfo.svwNorthVelocity = Uint8ArrayToFloat(temp, 0);
    memcpy(temp, msgData->pDataBuffer + 79, 4);
    g_cpuLocationInfo.locationInfo.svwUpVelocity = Uint8ArrayToFloat(temp, 0);
    // TBOX_PRINT("svwEastVelocity: %f, svwNorthVelocity: %f, svwUpVelocity: %f\r\n", g_cpuLocationInfo.locationInfo.svwEastVelocity, g_cpuLocationInfo.locationInfo.svwNorthVelocity, g_cpuLocationInfo.locationInfo.svwUpVelocity);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "svwEastVelocity: %f, svwNorthVelocity: %f, svwUpVelocity: %f\r\n", g_cpuLocationInfo.locationInfo.svwEastVelocity, g_cpuLocationInfo.locationInfo.svwNorthVelocity, g_cpuLocationInfo.locationInfo.svwUpVelocity);
    memcpy(temp, msgData->pDataBuffer + 83, 4);
    g_cpuLocationInfo.locationInfo.svwEastVelocityStdDeviation = Uint8ArrayToFloat(temp, 0);
    memcpy(temp, msgData->pDataBuffer + 87, 4);
    g_cpuLocationInfo.locationInfo.svwNorthVelocityStdDeviation = Uint8ArrayToFloat(temp, 0);
    memcpy(temp, msgData->pDataBuffer + 91, 4);
    g_cpuLocationInfo.locationInfo.svwUpVelocityStdDeviation = Uint8ArrayToFloat(temp, 0);
    // TBOX_PRINT("svwEastVelocityStdDeviation: %f, svwNorthVelocityStdDeviation: %f, svwUpVelocityStdDeviation: %f\r\n", g_cpuLocationInfo.locationInfo.svwEastVelocityStdDeviation, g_cpuLocationInfo.locationInfo.svwNorthVelocityStdDeviation, g_cpuLocationInfo.locationInfo.svwUpVelocityStdDeviation);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "svwEastVelocityStdDeviation: %f, svwNorthVelocityStdDeviation: %f, svwUpVelocityStdDeviation: %f\r\n", g_cpuLocationInfo.locationInfo.svwEastVelocityStdDeviation, g_cpuLocationInfo.locationInfo.svwNorthVelocityStdDeviation, g_cpuLocationInfo.locationInfo.svwUpVelocityStdDeviation);
    g_cpuLocationInfo.locationInfo.svwTimestamp = ((uint64_t)msgData->pDataBuffer[95] << 56) | ((uint64_t)msgData->pDataBuffer[96] << 48) | ((uint64_t)msgData->pDataBuffer[97] << 40) | ((uint64_t)msgData->pDataBuffer[98] << 32) | ((uint64_t)msgData->pDataBuffer[99] << 24) | ((uint64_t)msgData->pDataBuffer[100] << 16) | ((uint64_t)msgData->pDataBuffer[101] << 8) | ((uint64_t)msgData->pDataBuffer[102]);
    memcpy(temp, msgData->pDataBuffer + 103, 4);
    g_cpuLocationInfo.locationInfo.svwHorizontalAccuracy = Uint8ArrayToFloat(temp, 0);
    memcpy(temp, msgData->pDataBuffer + 107, 4);
    g_cpuLocationInfo.locationInfo.svwMagneticDeviation = Uint8ArrayToFloat(temp, 0);
    // TBOX_PRINT("svwTimestamp: %lld, svwHorizontalAccuracy: %f, svwMagneticDeviation: %f\r\n", g_cpuLocationInfo.locationInfo.svwTimestamp, g_cpuLocationInfo.locationInfo.svwHorizontalAccuracy, g_cpuLocationInfo.locationInfo.svwMagneticDeviation);
    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "svwTimestamp: %lld, svwHorizontalAccuracy: %f, svwMagneticDeviation: %f\r\n", g_cpuLocationInfo.locationInfo.svwTimestamp, g_cpuLocationInfo.locationInfo.svwHorizontalAccuracy, g_cpuLocationInfo.locationInfo.svwMagneticDeviation);
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
    //如果在can传输过程中有卫星信息更新，丢弃，不在 CAN 上传输
    if(StateSyncgGetSatCanState()==1)
    {
        return;
    }
    uint8_t temp[4];
    g_cpuSatelliteInfo.satelliteInfo.svsNum = msgData->pDataBuffer[0];
    uint8_t len = (g_cpuSatelliteInfo.satelliteInfo.svsNum) > 127 ? 127 : g_cpuSatelliteInfo.satelliteInfo.svsNum;
    // TBOX_PRINT("svsNum: %d\r\n", len);
    for (uint8_t i = 0; i < len; i++)
    {
        g_cpuSatelliteInfo.satelliteInfo.svList[i].svId = i; //卫星ID自定义
        // g_cpuSatelliteInfo.satelliteInfo.svList[i].svId = msgData->pDataBuffer[1 + i * 14] << 8 | msgData->pDataBuffer[2 + i * 14];
        memcpy(temp, msgData->pDataBuffer + (3 + i * 14), 4);
        float fcn = Uint8ArrayToFloat(temp, 0);
        uint16_t cn = FloatToUint16Trunc(fcn);
        g_cpuSatelliteInfo.satelliteInfo.svList[i].cN0Dbhz = cn;
        memcpy(temp, msgData->pDataBuffer + (7 + i * 14), 4);
        float fele = Uint8ArrayToFloat(temp, 0);
        uint16_t ele = FloatToUint16Trunc(fele);
        g_cpuSatelliteInfo.satelliteInfo.svList[i].elevation = ele;
        memcpy(temp, msgData->pDataBuffer + (11 + i * 14), 4);
        float fazim = Uint8ArrayToFloat(temp, 0);
        uint16_t azim = FloatToUint16Trunc(fazim);
        g_cpuSatelliteInfo.satelliteInfo.svList[i].azimuth = azim;
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
            if (msgData->dataLength == 5)
            {
                g_cpuNetInfo.netInfo.creg = msgData->pDataBuffer[0];
                g_cpuNetInfo.netInfo.csq = msgData->pDataBuffer[1];
                g_cpuNetInfo.netInfo.netType = msgData->pDataBuffer[2];
                g_cpuNetInfo.netInfo.apnCounter = msgData->pDataBuffer[3];
                g_cpuNetInfo.netInfo.apnStatus = msgData->pDataBuffer[4];

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

    if ((g_cpuMpuDtcInfo.validity == 1) && (g_cpuMpuDtcInfo.timeCount++ > (g_cpuMpuDtcInfo.failureTime) / g_processCycleTime))
    {
        g_cpuMpuDtcInfo.validity = 0;
    }

    if ((g_mpuFaultExtStatus.validity == 1) &&
        (g_mpuFaultExtStatus.timeCount++ >
         (g_mpuFaultExtStatus.failureTime / g_processCycleTime)))
    {
        g_mpuFaultExtStatus.validity = 0;
    }

    if ((g_be80SnapshotInfo.validity == 1) &&
        (g_be80SnapshotInfo.timeCount++ > (g_be80SnapshotInfo.failureTime / g_processCycleTime)))
    {
        g_be80SnapshotInfo.validity = 0; 
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

int16_t StateSyncGetMpuFaultExtStatus(MpuFaultExtStatus_t *extStatus) // 获取 MPU 故障同步扩展状态
{
    uint8_t *pSrc = NULL;
    uint8_t *pDst = NULL;
    uint16_t i = 0;
    if (extStatus == NULL)
    {
        return -1;
    }
    if (g_mpuFaultExtStatus.validity == 0)
    {
        return -1;
    }
    pSrc = (uint8_t *)&g_mpuFaultExtStatus.extStatus;
    pDst = (uint8_t *)extStatus;
    for (i = 0; i < sizeof(MpuFaultExtStatus_t); i++)
    {
        pDst[i] = pSrc[i];
    }
    return 0;
}

#define MCU_SEND_CPU_FAULT_SUBCOMMAND 0x02 /* 协议子命令0x02，表示McuFault，即MCU发送故障状态给CPU */
#define MCU_SEND_CPU_FAULT_PERIOD_MS 1000  /* 1Hz发送一次 */
#define MCU_SEND_CPU_FAULT_BITMAP_LEN 4    /* 长度为4字节 */
#define MCU_SEND_CPU_FAULT_BIT_COUNT 14    /*共14个bit */

static int16_t g_mcuDtcSyncMpuHandle = -1; /* MPU通信句柄 */
static uint16_t g_mcuDtcSyncCycleTime = 0; /* 当前模块的周期调用时间，5ms */
static uint16_t g_mcuDtcSyncTimeCount = 0; /* 累计到1000ms后触发一次发送 */
static uint8_t g_mcuDtcSyncData[MCU_SEND_CPU_FAULT_BITMAP_LEN] = {0};
static MpuHalDataPack_t g_mcuDtcSyncPack;

static const McuSendCpuFaultMap_t g_mcuSendCpuFaultMap[MCU_SEND_CPU_FAULT_BIT_COUNT] =
    {
        {0, (Dem_EventIdType)EventParameter_0x95A011},
        {1, (Dem_EventIdType)EventParameter_0x95A013},
        {2, (Dem_EventIdType)EventParameter_0x95A111},
        {3, (Dem_EventIdType)EventParameter_0x95A113},
        {4, (Dem_EventIdType)EventParameter_0x95A311},
        {5, (Dem_EventIdType)EventParameter_0x95A313},
        {6, (Dem_EventIdType)EventParameter_0x95A411},
        {7, (Dem_EventIdType)EventParameter_0x95A413},
        {8, (Dem_EventIdType)EventParameter_0x95A711},
        {9, (Dem_EventIdType)EventParameter_0x95A713},
        {10, (Dem_EventIdType)EventParameter_0x953311},
        {11, (Dem_EventIdType)EventParameter_0x953313},
        {12, (Dem_EventIdType)EventParameter_0x953312},
        {13, (Dem_EventIdType)EventParameter_0x951171}
    };

static uint8_t McuSendCpuFaultIsFailed(Dem_EventIdType eventId) // 判断某个Dem事件当前是否处于故障状态
{
    Dem_UdsStatusByteType eventStatus = 0;
    if (eventId == 0)
    {
        return 0;
    }
    if (Dem_GetEventStatus(eventId, &eventStatus) != E_OK) // 读取当前事件状态，如果失败
    {
        return 0;
    }
    return ((eventStatus & DEM_UDS_STATUS_TF) != 0) ? 1 : 0;
}

static void McuSendCpuFaultSetBit(uint8_t *pData, uint8_t bitIndex)
{
    uint8_t byteIndex;
    uint8_t bitOffset;
    if ((pData == NULL) || (bitIndex >= 32))
    {
        return;
    }
    byteIndex = (uint8_t)(3 - (bitIndex / 8));
    bitOffset = (uint8_t)(bitIndex % 8);
    pData[byteIndex] |= (uint8_t)(1 << bitOffset);
}

static uint32_t McuSendCpuFaultBuildBitmap(uint8_t *pData)
{
    uint32_t i;
    uint32_t bitmap = 0;
    if (pData == NULL)
    {
        return 0;
    }
    memset(pData, 0, MCU_SEND_CPU_FAULT_BITMAP_LEN);

    for (i = 0u; i < MCU_SEND_CPU_FAULT_BIT_COUNT; i++)
    {
        if (McuSendCpuFaultIsFailed(g_mcuSendCpuFaultMap[i].eventId) != 0) // 如果对应Dem事件当前有故障
        {
            McuSendCpuFaultSetBit(pData, g_mcuSendCpuFaultMap[i].bitIndex); // 对应协议bit位置1
        }
    }
    bitmap |= ((uint32_t)pData[0] << 24); // 把第1字节放到uint32最高8位 */
    bitmap |= ((uint32_t)pData[1] << 16);
    bitmap |= ((uint32_t)pData[2] << 8);
    bitmap |= ((uint32_t)pData[3] << 0);
    return bitmap;
}

int16_t McuSendCpuFaultSyncInit(int16_t mpuHandle, uint16_t cycleTime)
{
    if ((mpuHandle < 0) || (cycleTime == 0))
    {
        return -1;
    }
    g_mcuDtcSyncMpuHandle = mpuHandle;
    g_mcuDtcSyncCycleTime = cycleTime;
    g_mcuDtcSyncTimeCount = 0;
    memset(g_mcuDtcSyncData, 0, sizeof(g_mcuDtcSyncData));
    memset(&g_mcuDtcSyncPack, 0, sizeof(g_mcuDtcSyncPack));
    return 0;
}

void McuSendCpuFaultSyncCycleProcess(void)
{
    uint32_t bitmap;

    if ((g_mcuDtcSyncMpuHandle < 0) || (g_mcuDtcSyncCycleTime == 0))
    {
        return;
    }
    if (g_mcuDtcSyncTimeCount < MCU_SEND_CPU_FAULT_PERIOD_MS)
    {
        g_mcuDtcSyncTimeCount = (uint16_t)(g_mcuDtcSyncTimeCount + g_mcuDtcSyncCycleTime);
    }
    if (g_mcuDtcSyncTimeCount < MCU_SEND_CPU_FAULT_PERIOD_MS)
    {
        return;
    }
    g_mcuDtcSyncTimeCount = 0;
    bitmap = McuSendCpuFaultBuildBitmap(g_mcuDtcSyncData);
    g_mcuDtcSyncPack.aid = 0x30;
    g_mcuDtcSyncPack.mid = 0x01;
    g_mcuDtcSyncPack.subcommand = MCU_SEND_CPU_FAULT_SUBCOMMAND;
    g_mcuDtcSyncPack.pDataBuffer = g_mcuDtcSyncData;
    g_mcuDtcSyncPack.dataBufferSize = sizeof(g_mcuDtcSyncData);
    g_mcuDtcSyncPack.dataLength = MCU_SEND_CPU_FAULT_BITMAP_LEN;

    // TBOX_PRINT("TX MCU FAULT HEAD: aid=0x%02X mid=0x%02X sub=0x%02X len=%d bitmap=0x%08X\r\n",   //mcu->mpu发送调试打印
    //            g_mcuDtcSyncPack.aid,
    //            g_mcuDtcSyncPack.mid,
    //            g_mcuDtcSyncPack.subcommand,
    //            g_mcuDtcSyncPack.dataLength,
    //            (unsigned int)bitmap);

    // TBOX_PRINT("TX MCU FAULT RAW: %02X %02X %02X %02X\r\n",    //mcu->mpu发送调试打印
    //            g_mcuDtcSyncData[0],
    //            g_mcuDtcSyncData[1],
    //            g_mcuDtcSyncData[2],
    //            g_mcuDtcSyncData[3]);

    MpuHalTransmit(g_mcuDtcSyncMpuHandle, &g_mcuDtcSyncPack);
}

/*************************************************
  Function:       MpuDtcSyncSdkCycleProcess
  Description:    MPU故障码同步处理函数
  Input:          msgData：MPU数据消息包
  Output:         无
  Return:         无
  Others:         处理AID=0x30, MID=0x01的MPU故障码数据
*************************************************/

#define MCU_RECV_MPU_FAULT_BITMAP_LEN           4   //DTC诊断固定长度为4字节
#define MCU_RECV_MPU_FAULT_EXT_STATUS_LEN       8   //扩展状态固定长度为8字节
#define MCU_RECV_MPU_FAULT_BE80_SNAPSHOT_LEN    7   //BE80快照固定长度为7字节
#define MCU_RECV_MPU_FAULT_TOTAL_LEN            19  //总长度为19字节
#define MCU_RECV_MPU_FAULT_BIT_COUNT            32  //dtc位数32位  

typedef struct                // 协议位号->Dem事件ID的映射结构体
{
    uint8_t bitIndex;        // bitIndex 表示故障在协议中的位号
    Dem_EventIdType eventId; // eventId 表示该位故障对应的 Dem 事件 ID
} McuRecvMpuFaultMap_t;

// 移除 static const，改为运行时初始化，避免编译器链接时的静态初始化问题
static McuRecvMpuFaultMap_t g_mcuRecvMpuFaultMap[MCU_RECV_MPU_FAULT_BIT_COUNT];

static void InitMcuRecvMpuFaultMap(void)
{
    uint8_t i = 0;
    for (i = 0; i < MCU_RECV_MPU_FAULT_BIT_COUNT; i++)
    {
        g_mcuRecvMpuFaultMap[i].bitIndex = i;
        g_mcuRecvMpuFaultMap[i].eventId = 0;    // 初始化为0
    }

    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_GROUND_SHORT].eventId = EventParameter_0x953111;          /* bit0 对应 speaker 对地短路 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SPEAKER_OPEN_OR_SHORT].eventId = EventParameter_0x953113;            /* bit1 对应 speaker 开路或两线短接 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_POWER_SHORT].eventId = EventParameter_0x953512;           /* bit2 对应 speaker 对电源短路 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SIM_OFFLINE].eventId = EventParameter_0x954100;                      /* bit3 对应 SIM 不在线 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SIM_INVALID].eventId = EventParameter_0x954200;                      /* bit4 对应 SIM 无效 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_ETH_WITH_ICC].eventId = EventParameter_0xE26200;               /* bit5 对应同 ICC 丢失以太网通信 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_S32G_LINUX].eventId = EventParameter_0xE2A287;     /* bit6 对应与 S32G_Linux 丢失 SomeIP 通信 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_RESPONSE_TIMEOUT].eventId = EventParameter_0xE2A2F0; /* bit7 对应 S32G_Linux SomeIP 应答超时 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_RESPONSE_TIMEOUT].eventId = EventParameter_0xE298F0;     /* bit8 对应 8295/8155 SomeIP 应答超时 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_SERVICE_LOST].eventId = EventParameter_0xE2A2F1;  /* bit9 对应 S32G_Linux SomeIP 服务无法发现 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_SERVICE_LOST].eventId = EventParameter_0xE298F1;         /* bit10 对应 8295/8155 SomeIP 服务无法发现 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_SOC].eventId = EventParameter_0xE29887;            /* bit11 对应与 8295/8155 丢失 SomeIP 通信 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_SYNC_AND_FOLLOWUP_WITH_ICB].eventId = EventParameter_0xE28000; /* bit12 对应与 ICB/ZXD 丢失 Sync 和 Follow_up */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_PDELAY_RESP_WITH_ICB].eventId = EventParameter_0xE28200;       /* bit13 对应与 ICB/ZXD 丢失 Pdelay_Response 和 Follow_up */
}

static uint32_t McuRecvMpuFaultBitmapToU32(const uint8_t *pData) // 把mcu接收到的4字节MPU故障位转换成uint32_t
{
    uint32_t value = 0;

    if (pData == NULL)                                                          
    {
        return 0;                                                             
    }

    value |= ((uint32_t)pData[0] << 24); // 第 1 个字节放到最高 8 位，按大端格式拼接
    value |= ((uint32_t)pData[1] << 16); // 第 2 个字节放到次高 8 位
    value |= ((uint32_t)pData[2] << 8);  // 第 3 个字节放到次低 8 位
    value |= ((uint32_t)pData[3] << 0);  // 第 4 个字节放到最低 8 位
    return value;
}

static uint16_t StateSyncReadBeUint16(const uint8_t *pData) // 把协议里的2字节大端数据转成uint16
{
    if (pData == NULL)                                      
    {
        return 0xFFFF;                                     
    }

    return (uint16_t)(((uint16_t)pData[0] << 8) | pData[1]); // 按大端格式拼成16位整数，高字节在前低字节在后
}

static void StateSyncUpdateBe80SnapshotInfo(const uint8_t *pData) // 从AID0x30报文中提取BE80快照7字节信息
{
    if (pData == NULL)                                        
    {
        return;                                               
    }

    g_be80SnapshotInfo.snapshotInfo.serviceId = StateSyncReadBeUint16(&pData[12]);         // 读取Byte12~13，保存ServiceID
    g_be80SnapshotInfo.snapshotInfo.serviceInstanceId = StateSyncReadBeUint16(&pData[14]); // 读取Byte14~15，保存ServiceInstanceID
    g_be80SnapshotInfo.snapshotInfo.methodEventId = StateSyncReadBeUint16(&pData[16]);     // 读取Byte16~17，保存MethodEventID
    g_be80SnapshotInfo.snapshotInfo.serviceStatus = pData[18];                              // 读取Byte18，保存ServiceStatus
    g_be80SnapshotInfo.timeCount = 0;                                                       // 收到新数据后清零超时计数
    g_be80SnapshotInfo.validity = 1;                                                        // 标记当前BE80快照缓存有效
}

int16_t StateSyncGetBe80SnapshotInfo(Be80SnapshotInfo_t *snapshotInfo) // Rte_ReadData_BE80调用的读取接口
{
    uint8_t *pSrc = NULL;                                              
    uint8_t *pDst = NULL;                                              
    uint16_t i = 0;                                                    

    if (snapshotInfo == NULL)                                          
    {
        return -1;                                                     
    }

    if (g_be80SnapshotInfo.validity == 0)                              
    {
        return -1;                                                     
    }

    pSrc = (uint8_t *)&g_be80SnapshotInfo.snapshotInfo;                
    pDst = (uint8_t *)snapshotInfo;                                    

    for (i = 0; i < sizeof(Be80SnapshotInfo_t); i++)                   // 按字节拷贝整个7字节结构
    {
        pDst[i] = pSrc[i];                                             
    }

    return 0;                                                         
}

static void StateSyncUpdateDtcInfo(const uint8_t *pData)
{
    if (pData == NULL)                                                          
    {
        return;                                                                
    }

    g_cpuMpuDtcInfo.dtcState.dtcBitmap = McuRecvMpuFaultBitmapToU32(pData);       //把前4个字节DTC故障位保存
    g_cpuMpuDtcInfo.dtcState.mobileNetState = pData[4];
    g_cpuMpuDtcInfo.dtcState.networkType = pData[5];
    g_cpuMpuDtcInfo.dtcState.signalStrength = pData[6];
    g_cpuMpuDtcInfo.dtcState.emmcState = pData[7];
    g_cpuMpuDtcInfo.dtcState.phyState = pData[8];
    g_cpuMpuDtcInfo.dtcState.hsmState = pData[9];
    g_cpuMpuDtcInfo.dtcState.nadState = pData[10];
    g_cpuMpuDtcInfo.dtcState.gpsLocationState = pData[11];              
}

static void StateSyncHandleOneMpuFaultBit(uint32_t faultBitmap, uint8_t bitIndex) // 处理单个故障 bit，对应置故障或清故障
{
    uint32_t mask = 0;                                                        // 当前 bit 的掩码
    uint8_t bitValue = 0;                                                     // 当前 bit 的值，1 表示故障，0 表示正常
    Dem_EventIdType eventId = 0;                                              // 当前 bit 对应的 Dem 事件 ID

    if (bitIndex >= MCU_RECV_MPU_FAULT_BIT_COUNT)                              
    {
        return;                                                                
    }

    eventId = g_mcuRecvMpuFaultMap[bitIndex].eventId;                          //获取当前bit对应的Dem EventId

    if (eventId == 0)                                                         
    {
        return;                                                                
    }

    mask = ((uint32_t)1 << bitIndex);                                         
    bitValue = ((faultBitmap & mask) != 0) ? 1 : 0; 

    if (bitValue == 1)                                                        
    {
        (void)Dem_SetEventStatus(eventId, DEM_EVENT_STATUS_FAILED);            
    }
    else                                                                      
    {
        (void)Dem_SetEventStatus(eventId, DEM_EVENT_STATUS_PASSED);            
    }
}             

void MpuDtcSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    uint32_t faultBitmap = 0;       // 保存解析后的32位故障位图
    uint8_t i = 0;
    static uint8_t s_faultMapInitialized = 0;   // 标志位：映射表是否已初始化

    // 首次调用时初始化故障映射表
    if (s_faultMapInitialized == 0)
    {
        InitMcuRecvMpuFaultMap();
        s_faultMapInitialized = 1;
    }

    if (msgData == NULL)
    {
        return;
    }
    if ((msgData->aid != 0x30) || (msgData->mid != 0x01))
    {
        return;
    }
    if ((msgData->subcommand & 0x7F) != 0x01)                                //只处理子命令0x01，
    {
        return;                                                                
    }
    if (msgData->dataLength < MCU_RECV_MPU_FAULT_TOTAL_LEN)      // 判断消息长度是否至少有12字节
    {
        return;
    }

    faultBitmap = McuRecvMpuFaultBitmapToU32(msgData->pDataBuffer);   //DTC故障4字节
    StateSyncUpdateDtcInfo(msgData->pDataBuffer);      //其他8字节状态缓存到g_cpuMpuDtcInfo中
    StateSyncUpdateBe80SnapshotInfo(msgData->pDataBuffer);   //解析BE80快照信息

    // TBOX_PRINT("RX MPU FAULT PARSE: bitmap=0x%08X mobileNet=%d netType=%d csq=%d emmc=%d phy=%d hsm=%d nad=%d gps=%d\r\n",
    //            (unsigned int)faultBitmap,
    //            g_cpuMpuDtcInfo.dtcState.mobileNetState,
    //            g_cpuMpuDtcInfo.dtcState.networkType,
    //            g_cpuMpuDtcInfo.dtcState.signalStrength,
    //            g_cpuMpuDtcInfo.dtcState.emmcState,
    //            g_cpuMpuDtcInfo.dtcState.phyState,
    //            g_cpuMpuDtcInfo.dtcState.hsmState,
    //            g_cpuMpuDtcInfo.dtcState.nadState,
    //            g_cpuMpuDtcInfo.dtcState.gpsLocationState);      //解析后各状态位状态调试打印

    for (i = 0; i < MCU_RECV_MPU_FAULT_BIT_COUNT; i++) 
    {
        StateSyncHandleOneMpuFaultBit(faultBitmap, i);
    }

    g_cpuMpuDtcInfo.timeCount = 0; // 收到新的故障同步报文后，把超时计数清零
    g_cpuMpuDtcInfo.validity = 1;  // 标记当前故障同步数据有效
}

int16_t StateSyncGetDtcstate(CpuDtcSync_t *dtcInfo)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint16_t i = 0;

    if (dtcInfo == NULL)
    {
        return -1;
    }

    if (g_cpuMpuDtcInfo.validity == 0)
    {
        return -1;
    }

    pSrc = (uint8_t *)&g_cpuMpuDtcInfo;
    pDes = (uint8_t *)dtcInfo;

    for (i = 0; i < sizeof(CpuDtcSync_t); i++)
    {
        pDes[i] = pSrc[i];
    }

    return 0;
}  
