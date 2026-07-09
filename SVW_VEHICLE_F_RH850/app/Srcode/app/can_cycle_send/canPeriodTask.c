#include "canPeriodTask.h"
#include "Com.h"
#include "stateSyncSdk.h"
#include "logHal.h"
#include "timeSyncSdk.h"

static FormatTime_t g_vehicleTime;
static FormatTime_t g_lastVehTime = {2019, 1, 1, 0, 0, 0};  // CAN时间数据

/* 本地卫星数据缓冲区，发送期间不受 MPU 更新影响 */
static SatelliteInfoSync_t g_satInfoBuf = {0};
/* 当前发送状态 */
static SatSendState_e g_satState = SAT_STATE_IDLE;
/* 中断已确认发送完成的批次数 */
static uint8 g_txBatchCnt = 0;
/* 主循环已准备好的批次数 */
static uint8 g_readyBatch = 0;
/* 当前帧总批次数 */
static uint8 g_totalBatch = 0;


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

static void SendLocationDefaultInfo(void)
{
    // 默认
    uint16 defaultValue16 = 0;
    uint8 defaultValue8 = 0;
    uint32 defaultValue32 = 0;
    uint64 defaultValue64 = 0;
    Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IAltSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue16);                 // 高度Sigma, 默认0
    Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILatSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue16);                 // 纬度Sigma值
    Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILonSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue16);                 // 经度Sigma值
    Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IFixType_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue8);        // GNSS固定解类型
    Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTimeH_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue16);   // F9P的UTC时间
    Com_SendSignal(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSF9HCounter_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue8); // GNSS F9H发送计数
    Com_SendSignal(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHeadingRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue16);     // RTK航向角
    Com_SendSignal(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IAltitudeRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &defaultValue32);    // RTK高程, 默认0
    uint8 diffAgeInfo = 0xFF;
    Com_SendSignal(IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &diffAgeInfo);                                                                                                    // 差分龄期, 基站的差分数据到移动站接收的时间差, 输出无效值FF
    Com_SendSignal(IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue16);                                                                                                   // 主从天线间距, 预留发0
    Com_SendSignal(IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue16);                                                                                               // RTK地向速度, 默认0
    Com_SendSignal(IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue32);                                                                                               // RTK东向速度, 默认0
    Com_SendSignal(INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue32);                                                                                              // RTK北向速度
    Com_SendSignal(ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue8);                                                                                            // 从天线结算卫星数
    Com_SendSignal(IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &defaultValue16);                                                                                                  // 地向速度Sigma值
    Com_SendSignal(ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue8);                                                                                    // CAN协议内部版本号, 预留发0
    Com_SendSignal(IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue8);                                                                                            // 差分链路状态, 默认0
    Com_SendSignal(IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue8);                                                                                              // GNSS天线状态, 默认0
    Com_SendSignal(IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_ILongitudeRTK_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue64); // RTK经度值
    Com_SendSignal(IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue16);                                                                                                  // 东向速度Sigma值
    Com_SendSignal(IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx, &defaultValue16);                                                                                                 // 北向速度Sigma值
    Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IHeadingSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &defaultValue16);                     // 航向角Sigma
    Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchRTK_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &defaultValue16);                         // RTK俯仰角
    Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &defaultValue16);                       // 俯仰角Sigma
    Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_ILatitudeRTK_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &defaultValue64);        // RTK纬度
}

// 发送GNSS数据
static LocationInfoSync_t locationInfo;
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
    uint32 gnssSeq = Com_GetFrpo3Count();
    Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSSeq_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &gnssSeq); // GNSS发送序号
    Com_SendSignal(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTime_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &locationInfo.svwTimestamp); // F9P的世界协调时
    uint8 gnssSignalStatus = 0;
    if(statusLocation == 3||locationInfo.wireState != 0||(locationInfo.svwFlags&(~0xFFCC))!=0x33)
    {
        gnssSignalStatus=1;
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &gnssSignalStatus); // 定位数据有效标志位 1- 无效
    }
    else
    {
        gnssSignalStatus=0;
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &gnssSignalStatus); // 定位数据有效标志位 0- 有效
    }
    Com_SendSignal(ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &locationInfo.useSvsnum); // 主天线解算的卫星数量
    uint8 positionAttitudeStatus = 0x17;
    if(gnssSignalStatus!=0||locationInfo.wireState!=0)
    {
        positionAttitudeStatus = 0x07;
        Com_SendSignal(IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &positionAttitudeStatus); //定位定向解状态
    }
    else
    {
        positionAttitudeStatus = 0x17;
        Com_SendSignal(IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &positionAttitudeStatus); //定位定向解状态
    }
    uint16 hdop = locationInfo.svwHdop;
    Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &hdop); // 水平分量精度因子
    uint16 pdop = locationInfo.svwPdop;
    Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IPdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &pdop); // 位置精度因子
    uint16 vdop = locationInfo.svwVdop;
    Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IVdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &vdop); // 垂直分量精度因子
}

/*************************************************
  Function:       FillSatelliteBatch
  Description:    将指定批次的 20 颗卫星数据填入 COM 发送缓冲区
  Input:          batchIdx：批次索引，从 0 开始
  Output:         无
  Return:         无
  Others:         无
*************************************************/
static void FillSatelliteBatch(uint8 batchIdx)
{
    uint8 i;
    uint8 base;
    uint8 satNumPack;
    uint8 svGroupPack;

    if (batchIdx >= g_totalBatch)
    {
        return;
    }

    base = batchIdx * 20u;

    // 卫星数按协议要求裁剪到 127
    if ((g_satInfoBuf.svsNum > 127u) && (g_satInfoBuf.svsNum <= 320u))
    {
        satNumPack = 127u;
    }
    else
    {
        satNumPack = g_satInfoBuf.svsNum;
    }

    // SvGroup：高 4 位为总批次数，低 4 位为当前批次号（从 1 开始)
    svGroupPack = (uint8)(((g_totalBatch & 0x0Fu) << 4u) | ((batchIdx + 1u) & 0x0Fu));

    (void)Com_SendSignal(ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, &satNumPack);
    (void)Com_SendSignal(ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, &svGroupPack);

    for (i = 0; i < 20u; i++)
    {
        uint8 idx = base + i;
        if (idx >= g_satInfoBuf.svsNum)
        {
            break;
        }
        if (g_satInfoBuf.svList[idx].svId > 127u)
        {
            g_satInfoBuf.svList[idx].svId = 127u;
        }
        (void)Com_SendSignal(satelliteID[i], &g_satInfoBuf.svList[idx].svId);
        (void)Com_SendSignal(satelliteAz[i], &g_satInfoBuf.svList[idx].azimuth);
        (void)Com_SendSignal(satelliteElv[i], &g_satInfoBuf.svList[idx].elevation);
        (void)Com_SendSignal(satelliteCNO[i], &g_satInfoBuf.svList[idx].cN0Dbhz);
    }
}

/*************************************************
  Function:       SendSatInfoByInterrupt
  Description:    基于发送完成中断节拍分批发送卫星信息
  Input:          无
  Output:         无
  Return:         无
  Others:         无
*************************************************/
static void SendSatInfoByInterrupt(void)
{
    uint8 satData;

    switch (g_satState)
    {
        case SAT_STATE_IDLE:
            // 只在非发送期间取新数据，发送期间 MPU 来的数据自然被丢弃
            if (StateSyncGetSatelliteInfo(&g_satInfoBuf) == 0)
            {
                g_totalBatch = (g_satInfoBuf.svsNum + 19u) / 20u;
                if (g_totalBatch == 0u)
                {
                    g_totalBatch = 1u;
                }
                g_txBatchCnt = Com_GetSatelliteData();
                g_readyBatch = 0u;
                FillSatelliteBatch(0u);
                g_readyBatch = 1u;
                g_satState = SAT_STATE_SENDING;
            }
            break;

        case SAT_STATE_SENDING:
        {
            static uint16_t satWaitMs = 0;
            satData = Com_GetSatelliteData();
            if (satData != g_txBatchCnt)
            {
                // 中断正常来了，重置超时计数
                satWaitMs = 0;
                g_txBatchCnt = satData;
                if (g_readyBatch < g_totalBatch)
                {
                    FillSatelliteBatch(g_readyBatch);
                    g_readyBatch++;
                }
                else
                {
                    // 所有批次均已准备且最后一帧发送确认已到，回 IDLE
                    Com_SetSatelliteData(0u);
                    g_satState = SAT_STATE_IDLE;
                }
            }
            else
            {
                // 中断没来，累加等待时间
                satWaitMs += 5;
                if (satWaitMs >= 1200u)
                {
                    // 1200ms 超时，强制推进
                    satWaitMs = 0;
                    g_txBatchCnt++;
                    Com_SetSatelliteData(g_txBatchCnt); // 同步到 COM，防止下次 5ms 重复触发
                    if (g_readyBatch < g_totalBatch)
                    {
                        FillSatelliteBatch(g_readyBatch);
                        g_readyBatch++;
                    }
                    else
                    {
                        Com_SetSatelliteData(0u);
                        g_satState = SAT_STATE_IDLE;
                    }
                }
            }
            break;
        }

        default:
            g_satState = SAT_STATE_IDLE;
            break;
    }
}

// 接收ZXD整车时间
static void RecvZXDTimeInfo(void)
{
    Com_ReceiveSignal(IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, &g_vehicleTime.year);
    Com_ReceiveSignal(IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, &g_vehicleTime.month);
    Com_ReceiveSignal(IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, &g_vehicleTime.day);
    Com_ReceiveSignal(IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, &g_vehicleTime.hour);
    Com_ReceiveSignal(IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, &g_vehicleTime.min);
    Com_ReceiveSignal(IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, &g_vehicleTime.second);

    if (g_vehicleTime.year != g_lastVehTime.year || g_vehicleTime.month != g_lastVehTime.month ||
        g_vehicleTime.day != g_lastVehTime.day || g_vehicleTime.hour  != g_lastVehTime.hour ||
        g_vehicleTime.min != g_lastVehTime.min || g_vehicleTime.second != g_lastVehTime.second)
    {
        g_lastVehTime.year  = g_vehicleTime.year;
        g_lastVehTime.month = g_vehicleTime.month;
        g_lastVehTime.day   = g_vehicleTime.day;
        g_lastVehTime.hour  = g_vehicleTime.hour;
        g_lastVehTime.min   = g_vehicleTime.min;
        g_lastVehTime.second = g_vehicleTime.second;

        TimeSyncSdkVehicleTimeSyncProcess(&g_lastVehTime);
    }
    // TBOX_PRINT("year: %d, month: %d, day: %d, hour: %d, min: %d, sec: %d\r\n", g_vehicleTime.year, g_vehicleTime.month, g_vehicleTime.day, g_vehicleTime.hour, g_vehicleTime.min, g_vehicleTime.second);
}

/*************************************************
  Function:       CanPeriodGetVehTime
  Description:    获取整车时间
  Input:
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int8_t CanPeriodGetVehTime(uint8_t *year, uint8_t *month, uint8_t *day, uint8_t *hour, uint8_t *min, uint8_t *sec)
{
    if (year == NULL || month == NULL || day == NULL || hour == NULL || min == NULL || sec == NULL)
    {
        return -1;
    }
    *year = g_vehicleTime.year;
    *month = g_vehicleTime.month;
    *day = g_vehicleTime.day;
    *hour = g_vehicleTime.hour;
    *min = g_vehicleTime.min;
    *sec = g_vehicleTime.second;
    return 0;
}

int16_t CanPeriodCycleProcess(void)
{
    static uint32_t timeSyncCount = 0;
    uint32_t rtcTime = 0;

    timeSyncCount++;
    SendLocationInfo();
    SendSatInfoByInterrupt();
    if ((timeSyncCount % 40U) == 0U) /* 200ms周期执行 */
    {
        RecvZXDTimeInfo();
    }

    if ((timeSyncCount % 200U) == 0U) /* 1S周期执行 */
    {
        /* RTC时间同步 */
        if( (TimeSyncSdkGetRtcTimeSyncStat() == 1) &&       /* RTC时间正确 */
            (ParameterSyncSdkGetFromCpuIsFinished() == 0) && /* MPU已启动 */
            (TimeSyncSdkGetRtcTimeSyncCnt() < 60U))     /* 未完成过60次时间同步 */
        {
            TimeSyncSdkRtcTimeSyncProcess();
        }
    }

    return 0;
#if (0)
    // 获取KL30电压
    uint32_t u16BAT_VOL = 0;
    int16_t sleepState = 0;
    uint16_t i = 0;

    PeripheralHalAdGet(0, &u16BAT_VOL);
    // 判断电源管理状态
    sleepState = PowerManageSdkGetSleepState(g_powerManageHandle);
    if (sleepState == 0) // 休眠
    {
        PowerManageSdkSetSleepAck(g_powerManageHandle);
        g_sleepFlag = 1;
    }
    else
    {
        if (g_sleepFlag)
        {
            // set the time  delayed after can wakeup , app can message send
            for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
            {
                CanPeriodSetCanConfigureWakeUpStartTime(g_canCycleConfigureList[i].msgStartTime, g_canCycleConfigureList[i].pCycleConfigureList, g_canCycleConfigureList[i].pMsgBuffer, g_canCycleConfigureList[i].cycleConfigureListSize);
            }
        }
        for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
        {
            // TBOX_PRINT("11\n");
            if (g_canChannelBufferList[i].enableFlag)
            {
                // TBOX_PRINT("22\n");
                // if((u16BAT_VOL <= 18000) && (u16BAT_VOL >= 7000))
                {
                    CanPeriodSendCycleProcess(g_canChannelBufferList[i].canHandle, g_canCycleConfigureList[i].pCycleConfigureList, g_canCycleConfigureList[i].pMsgBuffer, g_canCycleConfigureList[i].cycleConfigureListSize);
                }
            }
        }
        g_sleepFlag = 0x00;
    }
    return 0;
#endif
}

#if (0)
#include "FreeRTOS.h"
#include "task.h"
#include "peripheralHal.h"
#include "canHal.h"
#include "timeSyncSdk.h"
#include "powerManageSdk.h"
#include "canGateWay.h"
#include "canPeriodTask.h"
#include "secocSdk.h"

#define CYCLE_SEND_WITH_SECOC_SDK 1

// #define TASK_CYCLE_PROCESS_TIME   10      //任务轮询执行时间

#define SIZE_OF_ARRAY(arrayName) (sizeof(arrayName) / sizeof(arrayName)[0]) // 数组大小计算

#define CAN_CYCLE_SEND_CONFIGURE_BEGIN(groupNum) const CanSendMsgConfigure_t m_group##groupNum##SendMsgConfigure[] = \
                                                     {
#define CAN_CYCLE_SEND_CONFIGURE_CAN(cycleTime, canId, fdFlag, length, msgProcessCallback) {cycleTime, canId, fdFlag, length, msgProcessCallback},

#define CAN_CYCLE_SEND_CONFIGURE_END(groupNum) \
    }                                          \
    ;                                          \
    CanSendMsgBuffer_t m_group##groupNum##SendMsgBuffer[SIZE_OF_ARRAY(m_group##groupNum##SendMsgConfigure)];

#define CYCLE_SEND_CAN_CONFIGURE(groupNum) m_group##groupNum##SendMsgConfigure                     // 周期发送配置
#define CYCLE_SEND_CAN_BUFFER(groupNum) m_group##groupNum##SendMsgBuffer                           // 周期发送缓冲区
#define CYCLE_SEND_CAN_CONFIGURE_SIZE(groupNum) SIZE_OF_ARRAY(m_group##groupNum##SendMsgConfigure) // 周期发送配置大小
typedef int16_t (*pCanMsgProcessFun_t)(uint8_t *pMsgData);

// CAN发送消息配置结构体
typedef struct
{
    uint32_t cycleTime; // 循环周期
    uint32_t canId;     // can报文ID
    uint8_t fdFlag;
    uint8_t dataLength; // 报文长度
    pCanMsgProcessFun_t msgProcessFun;
} CanSendMsgConfigure_t;

// CAN发送消息缓冲区结构体
typedef struct
{
    uint32_t timeCount;  // 时间计数
    uint8_t canData[64]; // can数据
} CanSendMsgBuffer_t;

// CAN通道周期发送配置结构体
typedef struct
{
    uint8_t canChannel;                               // CAN通道
    const CanSendMsgConfigure_t *pCycleConfigureList; // 循环发送配置列表
    uint8_t cycleConfigureListSize;                   // 循环发送配置列表大小
    uint32_t msgStartTime;                            // 消息开始发送时间
    CanSendMsgBuffer_t *pMsgBuffer;                   // 消息缓冲区
} CanChannelCycleSendConfigure_t;

// CAN通道标志缓冲区结构体
typedef struct
{
    int16_t canHandle;  // CAN通道句柄
    int8_t enableFlag;  // 使能标志    0：失能 1：使能
    uint8_t resetFlag;  // 复位标志    0：失能 1：使能
    uint8_t busoffFlag; // busoff标志  0：失能 1：使能
} CanChannelBuffer_t;

typedef struct
{
    uint32_t year;
    uint8_t month;
    uint8_t day;
    uint8_t hour;
    uint8_t minute;
    uint8_t second;

} TimeSevice_t;

static uint8_t g_sleepFlag = 0;
static int16_t g_powerManageHandle = -1;
static uint32_t g_cycleTime = 10;
// static CanMsg033_t g_033Msg;

static int16_t CanPeriodMessage53D(uint8_t *pCanData)
{
    TimeSevice_t Beijing_Time;

    if (TimeSyncSdkGetRealTime(&Beijing_Time.year, &Beijing_Time.month, &Beijing_Time.day, &Beijing_Time.hour, &Beijing_Time.minute, &Beijing_Time.second) == 0)
    {
        if (Beijing_Time.year >= 2021)
        {
            pCanData[0] = Beijing_Time.second << 2; // second and GPS
            pCanData[1] = (Beijing_Time.minute << 2) & (0xFC);
            pCanData[2] = (Beijing_Time.hour << 3) & (0xF8);
            pCanData[3] = (Beijing_Time.day << 3) & (0xF8);
            pCanData[4] = (Beijing_Time.month << 4) & (0xF0);
            pCanData[5] = (Beijing_Time.year - 2010);
            pCanData[6] = 0x00;
            pCanData[7] = 0x00;

            // m_timeBuffer[0] = Beijing_Time.second;
            // m_timeBuffer[1] = Beijing_Time.minute;
            // m_timeBuffer[2] = (Beijing_Time.day<<4)+Beijing_Time.hour;
            // m_timeBuffer[3] = Beijing_Time.month;
            // m_timeBuffer[4] = Beijing_Time.year-2000;
            // m_timeBuffer[5] = m_txTimeCount;
            // m_txTimeCount++;
            // u32TimeCnt = 0;
        }
        else
        {
            pCanData[0] = (0x01 << 1); //
            pCanData[1] = 0x00;
            pCanData[2] = 0x00;
            pCanData[3] = 0x00;
            pCanData[4] = 0x00;
            pCanData[5] = 0x00;
            pCanData[6] = 0x00;
            pCanData[7] = 0x00;
        }
    }
    else
    {
        // invalid time
        pCanData[0] = (0x01 << 1); //
        pCanData[1] = 0x00;
        pCanData[2] = 0x00;
        pCanData[3] = 0x00;
        pCanData[4] = 0x00;
        pCanData[5] = 0x00;
        pCanData[6] = 0x00;
        pCanData[7] = 0x00;
    }
    // pCanData[7] = 0x00;
    return 0;
}

int16_t CanPeriodMessage3E9(uint8_t *pData)
{
    pData[0] = 0x00;
    pData[1] = 0x00;
    pData[2] = 0x00;
    pData[3] = 0x00;
    pData[4] = 0x00;
    pData[5] = 0x00;
    pData[6] = 0x00;
    pData[7] = 0x00;
    return 0;
}

int16_t CanPeriodMessage2F0(uint8_t *pData)
{
    pData[0] = 0x00;
    pData[1] = 0x00;
    pData[2] = 0x00;
    pData[3] = 0x00;
    pData[4] = 0x00;
    pData[5] = 0x00;
    pData[6] = 0x00;
    pData[7] = 0x00;

    pData[8] = 0x00;
    pData[9] = 0x00;
    pData[10] = 0x00;
    pData[11] = 0x00;
    pData[12] = 0x00;
    pData[13] = 0x00;
    pData[14] = 0x00;
    pData[15] = 0x00;

    pData[16] = 0x00;
    pData[17] = 0x00;
    pData[18] = 0x00;
    pData[19] = 0x00;
    pData[20] = 0x00;
    pData[21] = 0x00;
    pData[22] = 0x00;
    pData[23] = 0x00;

    pData[24] = 0x00;
    pData[25] = 0x00;
    pData[26] = 0x00;
    pData[27] = 0x00;
    pData[28] = 0x00;
    pData[29] = 0x00;
    pData[30] = 0x00;
    pData[31] = 0x00;

    pData[32] = 0x00;
    pData[33] = 0x00;
    pData[34] = 0x00;
    pData[35] = 0x00;
    pData[36] = 0x00;
    pData[37] = 0x00;
    pData[38] = 0x00;
    pData[39] = 0x00;

    pData[40] = 0x00;
    pData[41] = 0x00;
    pData[42] = 0x00;
    pData[43] = 0x00;
    pData[44] = 0x00;
    pData[45] = 0x00;
    pData[46] = 0x00;
    pData[47] = 0x00;

    pData[48] = 0x00;
    pData[49] = 0x00;
    pData[50] = 0x00;
    pData[51] = 0x00;
    pData[52] = 0x00;
    pData[53] = 0x00;
    pData[54] = 0x00;
    pData[55] = 0x00;
    return 0;
}

CAN_CYCLE_SEND_CONFIGURE_BEGIN(1)
/****************************time, id ,fdFlag   length  canfunction canll back******/
CAN_CYCLE_SEND_CONFIGURE_CAN(1000, 0x53D, 1, 8, CanPeriodMessage53D)
CAN_CYCLE_SEND_CONFIGURE_CAN(1000, 0x3E9, 1, 16, CanPeriodMessage3E9)
CAN_CYCLE_SEND_CONFIGURE_CAN(100, 0x2F0, 1, 8, CanPeriodMessage2F0)
CAN_CYCLE_SEND_CONFIGURE_END(1)

const CanChannelCycleSendConfigure_t g_canCycleConfigureList[] = {
    {.canChannel = TBOX_CAN_CHANNEL_D,
     .msgStartTime = 5,
     .pCycleConfigureList = CYCLE_SEND_CAN_CONFIGURE(1),
     .cycleConfigureListSize = CYCLE_SEND_CAN_CONFIGURE_SIZE(1),
     .pMsgBuffer = CYCLE_SEND_CAN_BUFFER(1)},
};
#pragma default_variable_attributes = @ "SYS_RAM"

static CanChannelBuffer_t g_canChannelBufferList[SIZE_OF_ARRAY(g_canCycleConfigureList)];

#pragma default_variable_attributes =

static void CanPeriodSetCanConfigureWakeUpStartTime(uint32_t startTime_ms, const CanSendMsgConfigure_t *pMsgConfigure, CanSendMsgBuffer_t *pMsgBuffer, uint32_t elementSize)
{
    uint32_t i;
    startTime_ms += 10; // compensate time for network process delay to enable can tx
    for (i = 0; i < elementSize; i++)
    {
        if (pMsgConfigure[i].cycleTime <= 0)
        {
            continue;
        }
        pMsgBuffer[i].timeCount = pMsgConfigure[i].cycleTime - startTime_ms;
    }
}

static void CanPeriodSetCanConfigureInitializeStartTime(uint32_t startTime_ms, const CanSendMsgConfigure_t *pMsgConfigure, CanSendMsgBuffer_t *pMsgBuffer, uint32_t elementSize)
{
    uint32_t i;
    startTime_ms += 10; // compensate time for network process delay to enable can tx
    for (i = 0; i < elementSize; i++)
    {
        if (pMsgConfigure[i].cycleTime <= 0)
        {
            continue;
        }
        pMsgBuffer[i].timeCount = pMsgConfigure[i].cycleTime - startTime_ms;
    }
}

static void CanPeriodSendCan(void)
{
    static uint8_t i = 0;
    i++;
    return;
}

static void CanPeriodSendCycleProcess(int16_t canHandle, const CanSendMsgConfigure_t *pMsgConfigure, CanSendMsgBuffer_t *pMsgBuffer, uint32_t elementSize)
{
    uint32_t i;
    int16_t ret;
    for (i = 0; i < elementSize; i++)
    {
        if (pMsgConfigure[i].cycleTime <= 0)
        {
            continue;
        }
        pMsgBuffer[i].timeCount += g_cycleTime;
        if (pMsgBuffer[i].timeCount >= pMsgConfigure[i].cycleTime)
        {
            // transmit data
            ret = 0;
            pMsgBuffer[i].timeCount = 0x00;
            if (pMsgConfigure[i].msgProcessFun != NULL)
            {
                ret = pMsgConfigure[i].msgProcessFun(pMsgBuffer[i].canData);
            }
            if (ret == 0)
            {
                // TBOX_PRINT("33\n");
                if (pMsgConfigure[i].fdFlag)
                {
#if (CYCLE_SEND_WITH_SECOC_SDK)
                    SecocSdkTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData, pMsgConfigure[i].dataLength, 3);
#else
                    CanHalTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData, pMsgConfigure[i].dataLength, 3);
#endif
                }
                else
                {
#if (CYCLE_SEND_WITH_SECOC_SDK)
                    SecocSdkTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData, pMsgConfigure[i].dataLength, 0);
#else
                    CanHalTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData, pMsgConfigure[i].dataLength, 0);
#endif
                }

                // SecOCTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength);
                // CanHalTransmit(canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
                CanPeriodSendCan();
            }
        }
    }
}

/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can报文周期发送初始化接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:
*************************************************/
static int16_t CanPeriodCycleInit(uint32_t cycleTime)
{
    const char moduleName[] = {'C', 'a', 'n', 'C', 'y', 'c', 'l', 'e', 'S', 'e', 'n', 'd', 'T', 'a', 's', 'k'};
    uint8_t i = 0;
    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        // CAN通道标志缓冲区初始化
        g_canChannelBufferList[i].canHandle = CanHalOpen(g_canCycleConfigureList[i].canChannel);
        g_canChannelBufferList[i].enableFlag = 0x00;

        // 设置初始时间的初始化
        CanPeriodSetCanConfigureInitializeStartTime(g_canCycleConfigureList[i].msgStartTime, g_canCycleConfigureList[i].pCycleConfigureList, g_canCycleConfigureList[i].pMsgBuffer, g_canCycleConfigureList[i].cycleConfigureListSize);
    }
    // 电源管理句柄初始化
    g_powerManageHandle = PowerManageSdkOpenHandle(moduleName);
    if (cycleTime != 0)
    {
        g_cycleTime = cycleTime;
    }

    return 0;
}

/*************************************************
  Function:       CanPeriodCycleStart
  Description:    can报文周期发送开始接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:
*************************************************/
int16_t CanPeriodCycleStart(void)
{
    uint8_t i = 0;
    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        g_canChannelBufferList[i].enableFlag = 0x01;
    }
    return 0;
}

/*************************************************
  Function:       CanPeriodSetControlSignal
  Description:    设置can信号
  Input:          signalID：要设置的can信号
                  comman：设置的数据
                  num：发送次数
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodSetControlSignal(CanPeriodSignal_e signalID, uint32_t command, uint16_t num)
{
    /*
    if(signalID == E_REMTWINCTRL)
    {
        //失能RTOS调度
        RTOS_HalDisableScheduler();
        //设置信号值和次数
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtWinCtrl= command;

        //使能RTOS调度
        RTOS_HalEnableScheduler();
    }
    else if(signalID == E_REMTTRUNKCTRL)
    {
        //失能RTOS调度
        RTOS_HalDisableScheduler();
        //设置信号值和次数
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtTrunkCtrl= command;

        //使能RTOS调度
        RTOS_HalEnableScheduler();
    }
    else if(signalID == E_REMTDOORLOCKCTRL)
    {
        //失能RTOS调度
        RTOS_HalDisableScheduler();
        //设置信号值和次数
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtDoorLockCtrl = command;

        //使能RTOS调度
        RTOS_HalEnableScheduler();
    }
    */
    return 0;
}

/*************************************************
  Function:       CanPeriodSendEnable
  Description:    周期发送使能接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodSendEnable(uint8_t canChannel)
{
    // 临时变量赋值
    uint8_t i = 0, j = 0;

    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        if (g_canCycleConfigureList[i].canChannel == canChannel)
        {
            // 置位使能标志
            g_canChannelBufferList[i].enableFlag = 0x01;
            for (j = 0; j < g_canCycleConfigureList[i].cycleConfigureListSize; j++)
            {
                g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 7);
            }
            return 0;
        }
    }

    return -1;
}

/*************************************************
  Function:       CanPeriodSendDisable
  Description:    周期发送禁止接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodSendDisable(uint8_t canChannel)
{
    uint8_t i, j;
    uint32_t u16BAT_VOL;
    PeripheralHalAdGet(0, &u16BAT_VOL);
    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        if (g_canCycleConfigureList[i].canChannel == canChannel)
        {
            for (j = 0; j < g_canCycleConfigureList[i].cycleConfigureListSize; j++)
            {
                g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 3);
            }
            // if((u16BAT_VOL <= 18000) && (u16BAT_VOL >= 7000))
            //{
            //     CycleSendCycleProcess(g_canChannelBufferList[i].canHandle,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
            // }
            g_canChannelBufferList[i].enableFlag = 0x00;
            return 0;
        }
    }
    return -1;
}

/*************************************************
  Function:       CanPeriodSendEnableAll
  Description:    周期发送使能所有can接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodSendEnableAll(void)
{
    // 临时变量赋值
    uint8_t i = 0, j = 0;

    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        // 置位使能标志
        g_canChannelBufferList[i].enableFlag = 0x01;
        for (j = 0; j < g_canCycleConfigureList[i].cycleConfigureListSize; j++)
        {
            g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 7);
        }
    }
    return 0;

    //    uint8_t i;
    //    for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    //    {
    //        g_canCycleConfigureList[i].enableFlag++;
    //        if(1==g_canCycleConfigureList[i].enableFlag)
    //        {
    //            g_canCycleConfigureList[i].busoffFlag = 0;
    //            g_canCycleConfigureList[i].resetFlag = 0;
    //        }
    //    }
    //    return -1;
}

/*************************************************
  Function:       CanPeriodSendDisableAll
  Description:    周期发送禁止所有can接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodSendDisableAll(void)
{
    uint8_t i, j;
    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        for (j = 0; j < g_canCycleConfigureList[i].cycleConfigureListSize; j++)
        {
            g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 3);
        }
        g_canChannelBufferList[i].enableFlag = 0x00;
    }
    return 0;
}

/*************************************************
  Function:       CanPeriodSendReset
  Description:    周期发送复位接口
  Input:          pcanChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodSendReset(uint8_t canChannel)
{
    uint8_t i = 0;
    for (i = 0; i < SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        if (g_canCycleConfigureList[i].canChannel == canChannel)
        {
            if (g_canChannelBufferList[i].enableFlag == 1)
            {
                // 置位使能标志
                g_canChannelBufferList[i].resetFlag = 0x01;
                return 0;
            }
        }
    }
    return -1;
}

void canPeriodTaskMain(void *pvParameters)
{
    TickType_t xLastWakeTime;
    CanPeriodCycleInit(5);

    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_1, CanGateWayCan1Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_2, CanGateWayCan2Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_3, CanGateWayCan3Rx);
    // CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_4,CanGateWayCan4Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_5, CanGateWayCan5Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_6, CanGateWayCan6Rx);

    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_1, CanGateWayCan1Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_2, CanGateWayCan2Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_3, CanGateWayCan3Tx);
    // CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_4,CanGateWayCan4Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_5, CanGateWayCan5Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_6, CanGateWayCan6Tx);

    xLastWakeTime = xTaskGetTickCount();
    while (1)
    {
        CanPeriodCycleProcess();
        CanGateWayCycleProcess(5);
        vTaskDelayUntil(&xLastWakeTime, 5);
    }
}
#endif
