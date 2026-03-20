/*******************************************************************************
**                                                                            **
**  FILENAME    : Com_Test.c                                                  **
**                                                                            **
**  Created on  :                                                             **
**  Author      :                                                  **
**  Vendor      :                                                             **
**  DESCRIPTION :                                     **
**                                                                            **
**  SPECIFICATION(S) : AUTOSAR Classic Platform 4.2.2 and R19-11              **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Com_Test.h"
#include "Com.h"
#include "CanTSyn.h"
#include "StbM.h"
#include "Can.h"
#include "stateSyncSdk.h"
#include "timeSyncSdk.h"
#include "logHal.h"

#define StbM_SlaveTimeBaseId 0 /*  StbM Slave time domain ID */

#define SlaveTimeID0 0 /*  CanTSyn Slave time domain ID */

#define SlaveTestCanID 0x666                                            /*  CanTSyn Slave Test CAN ID */
#define SlaveTestCanLength 8                                            /*  CanTSyn Slave Test Data Length */
#define SlaveTestCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  CanTSyn Slave Test Can Hth */
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
uint8 Event_Test = 0;
uint64 Event_TestSig0 = 0;
// uint16 Test_E2ESig0 = 0;

StbM_TimeStampType timestamp;
StbM_UserDataType userData;
uint8 Data[SlaveTestCanLength] = {0};
Can_PduType PduInfo = {&Data[0], SlaveTestCanID, 0, SlaveTestCanLength};
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/
// 定义卫星ID数组
static uint8 satelliteID[20] =
    {
        ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
        ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
};
// 定位卫星信噪比数组
static uint8 satelliteCNO[20] =
    {
        ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
        ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
};
// 定义卫星仰角数组
static uint8 satelliteElv[20] =
    {
        ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
        ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
};
// 定义卫星方位角数组
static uint8 satelliteAz[20] =
    {
        ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
        ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
};

uint16_t float_to_uint16_trunc(float f)
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

static void SendLocationDefaultInfo(void)
{
    // 默认
    uint8 defaultValue = 0;
    Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IAltSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                 // 高度Sigma, 默认0
    Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILatSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                 // 纬度Sigma值
    Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILonSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                 // 经度Sigma值
    Com_SendSignal(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IAltitudeRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue);    // RTK高程, 默认0
    Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IFixType_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue);        // GNSS固定解类型
    Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTimeH_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue);   // F9P的UTC时间
    Com_SendSignal(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSF9HCounter_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue); // GNSS F9H发送计数
    Com_SendSignal(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHeadingRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue);     // RTK航向角
    uint8 diffAgeInfo = 0xFF;
    Com_SendSignal(IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &diffAgeInfo);                                                                                                    // 差分龄期, 基站的差分数据到移动站接收的时间差, 输出无效值FF
    Com_SendSignal(IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                                   // 主从天线间距, 预留发0
    Com_SendSignal(IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                               // RTK地向速度, 默认0
    Com_SendSignal(IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                               // RTK东向速度, 默认0
    Com_SendSignal(INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                              // RTK北向速度
    Com_SendSignal(ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                            // 从天线结算卫星数
    Com_SendSignal(IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                                  // 地向速度Sigma值
    Com_SendSignal(ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                    // CAN协议内部版本号, 预留发0
    Com_SendSignal(IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                            // 差分链路状态, 默认0
    Com_SendSignal(IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                              // GNSS天线状态, 默认0
    Com_SendSignal(IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_ILongitudeRTK_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue); // RTK经度值
    Com_SendSignal(IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                                  // 东向速度Sigma值
    Com_SendSignal(IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue);                                                                                                 // 北向速度Sigma值                                                                                                // 北向速度Sigma值
    Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IHeadingSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &defaultValue);                     // 航向角Sigma
    Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchRTK_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &defaultValue);                         // RTK俯仰角
    Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &defaultValue);                       // 俯仰角Sigma
    Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_ILatitudeRTK_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &defaultValue);        // RTK纬度
}

// 发送GNSS数据
static LocationInfoSync_t locationInfo;
static uint32 gnssSeq = 0;
static uint8 isFirstSend = 0;
static void SendLocationInfo(void)
{
    sint16 statusLocation = StateSyncGetLocationInfo(&locationInfo);

    // 发送位置默认信息, 由于不改变, 所以只发送五次, 测试时发现发送一次的话可能发送失败
    if (isFirstSend != 5)
    {
        isFirstSend++;
        SendLocationDefaultInfo();
    }
    if (statusLocation == -1)
    {
        return;
    }
    // 下面发送需要判断的信息
    Com_SendSignal(IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &locationInfo.wireState);                                                                        // 电线状态
    Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSSeq_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &gnssSeq); // GNSS发送序号
    gnssSeq++;
    Com_SendSignal(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTime_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &locationInfo.svwTimestamp); // F9P的世界协调时
    uint8 gnssSignalStatus = 0;
    if (statusLocation == 3)
    {
        gnssSignalStatus = 3;
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &gnssSignalStatus); // GNSS数据通路状态 超时
    }
    else if (locationInfo.wireState != 0)
    {
        gnssSignalStatus = 1;
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &gnssSignalStatus); // GNSS数据通路状态 天线异常
    }
    else if (locationInfo.locationState == 0)
    {
        gnssSignalStatus = 2;
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &gnssSignalStatus); // GNSS数据通路状态 定位模组无法定位
    }
    Com_SendSignal(ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &locationInfo.useSvsnum); // 主天线解算的卫星数量
    Com_SendSignal(ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, &locationInfo.svsNum);                   // 可视的卫星数量
    uint16 hdop = locationInfo.svwHdop;
    Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &hdop); // 水平分量精度因子
    uint16 pdop = locationInfo.svwPdop;
    Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IPdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &pdop); // 位置精度因子
    uint16 vdop = locationInfo.svwVdop;
    Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IVdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &vdop); // 垂直分量精度因子
}

static SatelliteInfoSync_t satelliteInfo = {0};
static void SendSatInfo(void)
{
    /*
    判断卫星的ID是否符合要求
    a) SatID 和 SatNum 均未超过 127 时, 不需要改变
    b) SatID 超过 127，SatNum 未超过 127 时，IAM：SatID 为 127
    c) SatNum 超过 127，但未超过 320 时，IAM：SatID 为 127，SatNum 为 127
    */
    // GSV语句数据发送批
    static uint8 svGroupCount = 1;
    // 已经发送的卫星的数量
    static uint8 sentCount = 0;
    sint16 statusSat = StateSyncGetSatelliteInfo(&satelliteInfo);
    // 判断发送的数量是否符合要求
    if ((satelliteInfo.svsNum > 127) && (satelliteInfo.svsNum <= 320))
    {
        satelliteInfo.svsNum = 127;
    }

    uint8 totalSatNum = satelliteInfo.svsNum;
    // 在can上每20个卫星为一批, 计算需要多少批数据才可以发送完
    uint8 svGroupNum = totalSatNum / 20;
    if (totalSatNum % 20 != 0)
    {
        svGroupNum++;
    }
    svGroupCount = (svGroupNum << 4) | (svGroupCount & 0x0F); // 将总批次移到每次发送的SVG的高四位
    while (1)
    {
        if ((svGroupCount & 0x0F) * 20 < totalSatNum)
        {
            Com_SendSignal(ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, &svGroupCount); // GSV语句数据发送批
            // 发送卫星的其他信息
            for (uint8 i = 0; i < 20; i++)
            {
                if ((satelliteInfo.svList[sentCount + i].svId > 127) && (totalSatNum <= 127))
                {
                    satelliteInfo.svList[sentCount + i].svId = 127;
                }
                Com_SendSignal(satelliteID[i], &satelliteInfo.svList[sentCount + i].svId);       // 卫星ID
                Com_SendSignal(satelliteAz[i], &satelliteInfo.svList[sentCount + i].azimuth);    // 卫星方位角
                Com_SendSignal(satelliteElv[i], &satelliteInfo.svList[sentCount + i].elevation); // 卫星仰角
                Com_SendSignal(satelliteCNO[i], &satelliteInfo.svList[sentCount + i].cN0Dbhz);   // 卫星信噪比
            }
            sentCount += 20;
            svGroupCount++;
        }
        else if ((svGroupCount & 0x0F) * 20 >= totalSatNum) // 当前批次号（低4位）*20 >= 总卫星数 → 进入最后一批处理
        {
            Com_SendSignal(ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, &svGroupCount); // GSV语句数据发送批
            for (uint8 i = 0; i < totalSatNum - sentCount; i++)
            {
                Com_SendSignal(satelliteID[i], &satelliteInfo.svList[sentCount + i].svId);       // 卫星ID
                Com_SendSignal(satelliteAz[i], &satelliteInfo.svList[sentCount + i].azimuth);    // 卫星方位角
                Com_SendSignal(satelliteElv[i], &satelliteInfo.svList[sentCount + i].elevation); // 卫星仰角
                Com_SendSignal(satelliteCNO[i], &satelliteInfo.svList[sentCount + i].cN0Dbhz);   // 卫星信噪比
            }
            sentCount = 0;
            svGroupCount = 1;
            break;
        }
    }
}

static void SendTimeInfo(void)
{
    uint32 year32 = 0;
    uint8 src = 0, month = 0, day = 0, hour = 0, min = 0, sec = 0;
    uint8 status;
    status = TimeSyncSdkGetRealTime(&src, &year32, &month, &day, &hour, &min, &sec) == -1 ? 0 : 1;
    uint8 year8 = year32-2000;
    if (src == 2)
    {
        Com_SendSignal(IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &year8);
        Com_SendSignal(IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &month);
        Com_SendSignal(IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &day);
        Com_SendSignal(IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &hour);
        Com_SendSignal(IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &min);
        Com_SendSignal(IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sec);
        Com_SendSignal(IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &status);
    }
    else if (src == 1)
    {
        Com_SendSignal(INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &year8);
        Com_SendSignal(INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &month);
        Com_SendSignal(INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &day);
        Com_SendSignal(INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &hour);
        Com_SendSignal(INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &min);
        Com_SendSignal(INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sec);
    }
    else
    {
        Com_SendSignal(INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &status);
    }
}

void Com_Test(void)
{
    SendLocationInfo();
    SendSatInfo();
    SendTimeInfo();
}

void Com_SecOC_Test(void)
{

    /*Event Test*/
    if (Event_Test == 1)
    {
        Com_SendSignal(IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx, &Event_TestSig0);              // 0x98
        Com_SendSignal(IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx, &Event_TestSig0);  // 0xB3
        Com_SendSignal(IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx, &Event_TestSig0);  // 0x9F
        Com_SendSignal(IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx, &Event_TestSig0); // 0x7D
        Event_Test = 0;
    }
}

void CanTSyn_SlaveTest(void)
{
    StbM_GetCurrentTime(StbM_SlaveTimeBaseId, &timestamp, &userData);

    PduInfo.sdu[0] = (uint8)((timestamp.seconds & 0xff000000) >> 24);
    PduInfo.sdu[1] = (uint8)((timestamp.seconds & 0x00ff0000) >> 16);
    PduInfo.sdu[2] = (uint8)((timestamp.seconds & 0x0000ff00) >> 8);
    PduInfo.sdu[3] = (uint8)((timestamp.seconds & 0x000000ff));
    PduInfo.sdu[4] = (uint8)((timestamp.nanoseconds & 0xff000000) >> 24);
    PduInfo.sdu[5] = (uint8)((timestamp.nanoseconds & 0x00ff0000) >> 16);
    PduInfo.sdu[6] = (uint8)((timestamp.nanoseconds & 0x0000ff00) >> 8);
    PduInfo.sdu[7] = (uint8)((timestamp.nanoseconds & 0x000000ff));

    Can_Write(SlaveTestCanHth, &PduInfo);
}
