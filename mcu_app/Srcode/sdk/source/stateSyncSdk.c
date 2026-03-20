#include "logHal.h"
#include "stdlib.h"
#include "stateSyncSdk.h"
#include "peripheralHal.h"

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

static StateSyncGnssAntState_e g_gnssAntState = E_STATE_SYNC_GNSS_ANT_STATE_INIT;

static uint16_t float_to_uint16_trunc(float f)
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
  天线检测使能判断
*************************************************/
static uint8_t check_monitor_enable(void)
{
    // 1. 燃油车非发动机启动状态
    // 2. KL30电压在9V~16V之间
    // 3. usgmd满足条件且持续1s以上
    // 4. EPTStCmdOn=false且上电完成超1s
    uint32_t kl30Voltage = 0;
    int16_t ret = PeripheralHalAdGet(AD0_CHANNEL_KL30, &kl30Voltage);
    if (ret != 0 || kl30Voltage < 9000 || kl30Voltage > 16000)
    {
        return 0;
    }
    return 1;
}

static uint16_t antCountShort = 0;
static uint16_t antCountOpen = 0;
static uint16_t antCountNormal = 0;
static void StateSyncSetGnssAntState()
{
    uint8_t monitor_enable = check_monitor_enable();
    uint32_t gnssAntADC0 = 0;
    uint32_t gnssAntADC1 = 0;
    int16_t ret = PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC0, &gnssAntADC0);
    if (ret != 0)
    {
        return;
    }
    ret = PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC1, &gnssAntADC1);
    if (ret != 0)
    {
        return;
    }
    if (!monitor_enable)
    {
        antCountShort = 0;
        antCountOpen = 0;
        antCountNormal = 0;
        g_gnssAntState = E_STATE_SYNC_GNSS_ANT_STATE_INIT;
        return;
    }
    else if (monitor_enable)
    {
        if ((gnssAntADC0 >= 2150 && gnssAntADC0 <= 2350) && (gnssAntADC1 >= 100 && gnssAntADC1 <= 300))
        {
            antCountShort = 0;
            antCountOpen = 0;
            antCountNormal++;
            if (antCountNormal * g_processCycleTime >= 5000)
            {
                g_gnssAntState = E_STATE_SYNC_GNSS_ANT_STATE_NORMAL;
                antCountNormal = 0;
            }
        }
        else if ((gnssAntADC0 < 100) && (gnssAntADC1 < 100))
        {
            antCountShort++;
            antCountOpen = 0;
            antCountNormal = 0;
            if (antCountShort * g_processCycleTime >= 5000)
            {
                g_gnssAntState = E_STATE_SYNC_GNSS_ANT_STATE_SHORT_CIRCUIT;
                antCountShort = 0;
            }
        }
        else if ((gnssAntADC0 >= 2150 && gnssAntADC0 <= 2350) && (gnssAntADC1 >= 2150 && gnssAntADC1 <= 2350))
        {
            antCountOpen++;
            antCountNormal = 0;
            antCountShort = 0;
            if (antCountOpen * g_processCycleTime >= 5000)
            {
                g_gnssAntState = E_STATE_SYNC_GNSS_ANT_STATE_OPEN_CIRCUIT;
                antCountOpen = 0;
            }
        }
        else
        {
        }
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
    StateSyncSetGnssAntState();
    if (msgData != NULL && msgData->aid == 0x01)
    {
        if (msgData->mid == E_STATE_SYNC_LOCALTION_INFO_MID)
        {
            uint8_t temp[4];
            if ((msgData->subcommand & 0x7F) == 0x01)
            {
                g_cpuLocationInfo.locationInfo.moduleState = msgData->pDataBuffer[0];
                if(g_gnssAntState == E_STATE_SYNC_GNSS_ANT_STATE_NORMAL)
                {
                    g_cpuLocationInfo.locationInfo.wireState = 0;
                }
                else if (g_gnssAntState==E_STATE_SYNC_GNSS_ANT_STATE_OPEN_CIRCUIT)
                {
                    g_cpuLocationInfo.locationInfo.wireState = 1;
                }
                else if (g_gnssAntState==E_STATE_SYNC_GNSS_ANT_STATE_SHORT_CIRCUIT)
                {
                    g_cpuLocationInfo.locationInfo.wireState = 2;
                }
                g_cpuLocationInfo.locationInfo.locationState = msgData->pDataBuffer[2];
                g_cpuLocationInfo.locationInfo.longitude = msgData->pDataBuffer[3] << 24 | msgData->pDataBuffer[4] << 16 | msgData->pDataBuffer[5] << 8 | msgData->pDataBuffer[6];
                g_cpuLocationInfo.locationInfo.latitude = msgData->pDataBuffer[7] << 24 | msgData->pDataBuffer[8] << 16 | msgData->pDataBuffer[9] << 8 | msgData->pDataBuffer[10];
                // TBOX_PRINT("moduleState: %d, wireState: %d, locationState: %d, longitude: %d, latitude: %d\r\n", g_cpuLocationInfo.locationInfo.moduleState, g_cpuLocationInfo.locationInfo.wireState, g_cpuLocationInfo.locationInfo.locationState, g_cpuLocationInfo.locationInfo.longitude, g_cpuLocationInfo.locationInfo.latitude);
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
                g_cpuLocationInfo.locationInfo.altitude = msgData->pDataBuffer[27] << 8 | msgData->pDataBuffer[28];
                g_cpuLocationInfo.locationInfo.speed = msgData->pDataBuffer[29] << 8 | msgData->pDataBuffer[30];
                g_cpuLocationInfo.locationInfo.heading = msgData->pDataBuffer[31] << 8 | msgData->pDataBuffer[32];
                // TBOX_PRINT("altitude: %d, speed: %d, heading: %d\r\n", g_cpuLocationInfo.locationInfo.altitude, g_cpuLocationInfo.locationInfo.speed, g_cpuLocationInfo.locationInfo.heading);
                g_cpuLocationInfo.locationInfo.accuracy = msgData->pDataBuffer[33] << 8 | msgData->pDataBuffer[34];
                g_cpuLocationInfo.locationInfo.svsNum = msgData->pDataBuffer[35];
                g_cpuLocationInfo.locationInfo.useSvsnum = msgData->pDataBuffer[36];
                g_cpuLocationInfo.locationInfo.timeStamp = msgData->pDataBuffer[37] << 24 | msgData->pDataBuffer[38] << 16 | msgData->pDataBuffer[39] << 8 | msgData->pDataBuffer[40];
                g_cpuLocationInfo.locationInfo.svwFlags = msgData->pDataBuffer[41] << 8 | msgData->pDataBuffer[42];
                // TBOX_PRINT("accuracy: %d, svsNum: %d, useSvsnum: %d, timeStamp: %d, svwFlags: %d\r\n", g_cpuLocationInfo.locationInfo.accuracy, g_cpuLocationInfo.locationInfo.svsNum, g_cpuLocationInfo.locationInfo.useSvsnum, g_cpuLocationInfo.locationInfo.timeStamp, g_cpuLocationInfo.locationInfo.svwFlags);
                memcpy(temp, msgData->pDataBuffer + 43, 4);
                g_cpuLocationInfo.locationInfo.svwBearing = Uint8ArrayToFloat(temp, 0);
                memcpy(temp, msgData->pDataBuffer + 47, 4);
                g_cpuLocationInfo.locationInfo.svwSpeed = Uint8ArrayToFloat(temp, 0);
                // TBOX_PRINT("svwBearing: %f, svwSpeed: %f\r\n", g_cpuLocationInfo.locationInfo.svwBearing, g_cpuLocationInfo.locationInfo.svwSpeed);
                memcpy(temp, msgData->pDataBuffer + 51, 4);
                float fpdop = Uint8ArrayToFloat(temp, 0);
                uint16_t pdop = float_to_uint16_trunc(fpdop);
                g_cpuLocationInfo.locationInfo.svwPdop = pdop;
                memcpy(temp, msgData->pDataBuffer + 55, 4);
                float fhdop = Uint8ArrayToFloat(temp, 0);
                uint16_t hdop = float_to_uint16_trunc(fhdop);
                g_cpuLocationInfo.locationInfo.svwHdop = hdop;
                memcpy(temp, msgData->pDataBuffer + 59, 4);
                float fvdop = Uint8ArrayToFloat(temp, 0);
                uint16_t vdop = float_to_uint16_trunc(fvdop);
                g_cpuLocationInfo.locationInfo.svwVdop = vdop;
                // TBOX_PRINT("svwPdop: %d, svwHdop: %d, svwVdop: %d\r\n", g_cpuLocationInfo.locationInfo.svwPdop, g_cpuLocationInfo.locationInfo.svwHdop, g_cpuLocationInfo.locationInfo.svwVdop);
                uint8_t dAlt[8];
                memcpy(dAlt, msgData->pDataBuffer + 63, 8);
                g_cpuLocationInfo.locationInfo.svwAltitude = Uint8ArrayToDouble(dAlt, 0);
                // TBOX_PRINT("svwAltitude: %f\r\n", g_cpuLocationInfo.locationInfo.svwAltitude);
                memcpy(temp, msgData->pDataBuffer + 71, 4);
                g_cpuLocationInfo.locationInfo.svwEastVelocity = Uint8ArrayToFloat(temp, 0);
                memcpy(temp, msgData->pDataBuffer + 75, 4);
                g_cpuLocationInfo.locationInfo.svwNorthVelocity = Uint8ArrayToFloat(temp, 0);
                memcpy(temp, msgData->pDataBuffer + 79, 4);
                g_cpuLocationInfo.locationInfo.svwUpVelocity = Uint8ArrayToFloat(temp, 0);
                // TBOX_PRINT("svwEastVelocity: %f, svwNorthVelocity: %f, svwUpVelocity: %f\r\n", g_cpuLocationInfo.locationInfo.svwEastVelocity, g_cpuLocationInfo.locationInfo.svwNorthVelocity, g_cpuLocationInfo.locationInfo.svwUpVelocity);
                memcpy(temp, msgData->pDataBuffer + 83, 4);
                g_cpuLocationInfo.locationInfo.svwEastVelocityStdDeviation = Uint8ArrayToFloat(temp, 0);
                memcpy(temp, msgData->pDataBuffer + 87, 4);
                g_cpuLocationInfo.locationInfo.svwNorthVelocityStdDeviation = Uint8ArrayToFloat(temp, 0);
                memcpy(temp, msgData->pDataBuffer + 91, 4);
                g_cpuLocationInfo.locationInfo.svwUpVelocityStdDeviation = Uint8ArrayToFloat(temp, 0);
                // TBOX_PRINT("svwEastVelocityStdDeviation: %f, svwNorthVelocityStdDeviation: %f, svwUpVelocityStdDeviation: %f\r\n", g_cpuLocationInfo.locationInfo.svwEastVelocityStdDeviation, g_cpuLocationInfo.locationInfo.svwNorthVelocityStdDeviation, g_cpuLocationInfo.locationInfo.svwUpVelocityStdDeviation);
                g_cpuLocationInfo.locationInfo.svwTimestamp = msgData->pDataBuffer[95] << 56 | msgData->pDataBuffer[96] << 48 | msgData->pDataBuffer[97] << 40 | msgData->pDataBuffer[98] << 32 | msgData->pDataBuffer[99] << 24 | msgData->pDataBuffer[100] << 16 | msgData->pDataBuffer[101] << 8 | msgData->pDataBuffer[102];
                memcpy(temp, msgData->pDataBuffer + 103, 4);
                g_cpuLocationInfo.locationInfo.svwHorizontalAccuracy = Uint8ArrayToFloat(temp, 0);
                memcpy(temp, msgData->pDataBuffer + 107, 4);
                g_cpuLocationInfo.locationInfo.svwMagneticDeviation = Uint8ArrayToFloat(temp, 0);
                // TBOX_PRINT("svwTimestamp: %lld, svwHorizontalAccuracy: %f, svwMagneticDeviation: %f\r\n", g_cpuLocationInfo.locationInfo.svwTimestamp, g_cpuLocationInfo.locationInfo.svwHorizontalAccuracy, g_cpuLocationInfo.locationInfo.svwMagneticDeviation);
                g_cpuLocationInfo.timeCount = 0;
                g_cpuLocationInfo.validity = 1;
            }
            else if ((msgData->subcommand & 0x7F) == 0x02)
            {
                g_cpuSatelliteInfo.satelliteInfo.svsNum = msgData->pDataBuffer[0];
                uint8_t len = (g_cpuSatelliteInfo.satelliteInfo.svsNum) > 127 ? 127 : g_cpuSatelliteInfo.satelliteInfo.svsNum;
                for (uint8_t i = 0; i < len; i++)
                {
                    g_cpuSatelliteInfo.satelliteInfo.svList[i].svId = msgData->pDataBuffer[1 + i * 14] << 8 | msgData->pDataBuffer[2 + i * 14];
                    memcpy(temp, msgData->pDataBuffer + (3 + i * 14), 4);
                    float fcn = Uint8ArrayToFloat(temp, 0);
                    uint16_t cn = float_to_uint16_trunc(fcn);
                    g_cpuSatelliteInfo.satelliteInfo.svList[i].cN0Dbhz = cn;
                    memcpy(temp, msgData->pDataBuffer + (7 + i * 14), 4);
                    float fele = Uint8ArrayToFloat(temp, 0);
                    uint16_t ele = float_to_uint16_trunc(fele);
                    g_cpuSatelliteInfo.satelliteInfo.svList[i].elevation = ele;
                    memcpy(temp, msgData->pDataBuffer + (11 + i * 14), 4);
                    float fazim = Uint8ArrayToFloat(temp, 0);
                    uint16_t azim = float_to_uint16_trunc(fazim);
                    g_cpuSatelliteInfo.satelliteInfo.svList[i].azimuth = azim;
                    // TBOX_PRINT("svId: %d, cN0Dbhz: %d, elevation: %d, azimuth: %d\r\n", g_cpuSatelliteInfo.satelliteInfo.svList[i].svId, g_cpuSatelliteInfo.satelliteInfo.svList[i].cN0Dbhz, g_cpuSatelliteInfo.satelliteInfo.svList[i].elevation, g_cpuSatelliteInfo.satelliteInfo.svList[i].azimuth);
                }
                g_cpuSatelliteInfo.timeCount = 0;
                g_cpuSatelliteInfo.validity = 1;
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
            if (msgData->dataLength == 4)
            {
                g_cpuHalState.halState.MemUsageStatus = msgData->pDataBuffer[0];
                g_cpuHalState.halState.cpuUsage = msgData->pDataBuffer[1];
                g_cpuHalState.halState.tmpStatus = msgData->pDataBuffer[2] << 8 + msgData->pDataBuffer[3];

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

/*************************************************
  Function:       StateSyncGetGnssAntState
  Description:    获取GNSS天线状态( 正常 短路 断路 )
  Input:          无
  Output:         state：状态 0 初始化 1 正常 2 短路 3 断路
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
uint8_t StateSyncGetGnssAntState(uint8_t *state)
{
    if (state == NULL || (g_gnssAntState < 0 && g_gnssAntState > 3))
    {
        return -1;
    }
    *state = g_gnssAntState;
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
