/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       stateSyncSdk.h
  Author:          lei.wang
  Created Time:    2024
  Description:     Synchronize status with CPU
   Others:      // 其它说明
*************************************************/
#ifndef _STATE_SYNC_SDK_H_
#define _STATE_SYNC_SDK_H_

#include "mpuHal.h"
#include "stdint.h"
#include "Rte_Dem_Type.h"

typedef enum
{
    E_STATE_SYNC_LOCALTION_INFO_MID        = 0x10,
    E_STATE_SYNC_NET_INFO_MID              = 0x11,
    //E_STATE_SYNC_G_SENSOR_MID              = 0x14,
    E_STATE_SYNC_HAL_STATE_MID             = 0x16,
    E_STATE_SYNC_TSP_CONNECT_STATE_MID     = 0x17
}StateSyncMid_e;


typedef struct
{
	uint8_t moduleState;   // 模块状态 0：工作正常 1：工作异常
	uint8_t wireState;	   // 电线状态 0: 正常 1：电线断路 2：电线地短路 3：电线电源短路
	uint8_t locationState; // 定位状态 Bit0-bit5: GNSS定位状态 0: 未定位 1: 单点定位 2: 浮点定位 3: RTK定位
						   // Bit6: 0-东经，1-西经
						   // Bit7: 0-北纬，1-南纬
	uint32_t longitude;	   // 经度，单位：度，精度：10-7
	uint32_t latitude;	   // 纬度，单位：度，精度：10-7
	double flongitude;
	double flatitude;
	uint16_t altitude;	// 高程，单位：米，精度：0.1米
	uint16_t speed;		// 速度，单位：km/h，精度：0.1km/h
	uint16_t heading;	// 0...360	航向，单位：度，精度：0.1度
	uint16_t accuracy;	// 定位水平精度,单位：厘米，精度：1厘米
	uint8_t svsNum;		// 可见卫星数量
	uint8_t useSvsnum;	// 使用卫星数量
	uint32_t timeStamp; // 时间戳

	uint16_t svwFlags;					// 数据有效性
										// Bit0:  经纬度是否有效
										// Bit1:  高程是否有效
										// Bit2:  速度是否有效
										// Bit3:  航向是否有效
										// Bit4:  水平定位精度是否有效
										// Bit5:  垂直定位精度是否有效
										// Bit6:  速度精度是否有效
										// Bit7:  航向精度是否有效
										// Bit8:  时间戳是否有效
	float svwBearing;					// 航向, 单位：度；范围：0~360
	float svwSpeed;						// 速度, 单位：米/秒；范围：0~540
	uint16_t svwPdop;						// 位置精度因子, 范围：0~500
	uint16_t svwHdop;						// 水平精度因子, 范围：0~500
	uint16_t svwVdop;						// 垂直精度因子, 范围：0~500
	double svwAltitude;					// 海拔高度, 单位：米
	float svwEastVelocity;				// 东向速度, 单位：米/秒
	float svwNorthVelocity;				// 北向速度, 单位：米/秒
	float svwUpVelocity;				// 天向速度, 单位：米/秒
	float svwEastVelocityStdDeviation;	// 东向速度标准差
	float svwNorthVelocityStdDeviation; // 北向速度标准差
	float svwUpVelocityStdDeviation;	// 天向速度标准差
	uint64_t svwTimestamp;				// UTC时间, 即自1970年1月1日零点整至当前时间的总毫秒数
	float svwHorizontalAccuracy;		// 水平定位精度, 单位：米
	float svwMagneticDeviation;			// 磁偏角, 单位：度；范围：-90~90

} LocationInfoSync_t;

typedef struct
{
	uint16_t svId;	 // 卫星ID
					 // 1~32  GPS卫星ID
					 // 65~96  GLONASS
					 // 120~158、183~191 SBAS
					 // 193~197  QZSSL1CA
					 // 201~237  BDS
					 // 301~336  Galileo
					 // 401~414  NavIC
	uint16_t cN0Dbhz;	 // 信噪比, 范围：0~99
	uint16_t elevation; // 卫星仰角, 范围：0~90；单位：度
	uint16_t azimuth;	 // 卫星方位角, 范围：0~360；单位：度
} GnssSvInfo_t;

typedef struct
{
	uint8_t svsNum;					 // 可见卫星数量, 范围0~127
	GnssSvInfo_t svList[127]; // 本次传输的卫星数据列表

} SatelliteInfoSync_t;

typedef struct
{
	uint8_t     creg;           //驻网状态，驻网失败时，其它字段无意义：0：成功 1：失败
	uint8_t     csq;            //信号质量：0-31有效
	uint8_t     netType;        //网络类型：0：GSM1：LTE
	uint8_t     apnCounter;     //APN数量。最大6路APN
	uint8_t     apnStatus;      //0: 未连接，1：已连接 Bit0：第1路APN bit5：第6路APN
}NetInfoSync_t;

typedef struct
{
	uint8_t     MemUsageStatus;  //cpu内存使用率 ，百分比
    uint8_t     cpuUsage;        //CPU使用率，百分比
    uint16_t    cpu0Temp;        //CPU温度；
    uint16_t    cpu1Temp;        //CPU温度；
    uint16_t    cpu2Temp;        //CPU温度；
    uint16_t    cpu3Temp;        //CPU温度；
}HalStateSync_t;

typedef struct
{
    uint8_t      tspStatus;      //tsp采集平台连接状态 0：未登录，1：登录
}TspStateSync_t;

typedef enum
{
    E_STATE_SYNC_DTC_BIT_SPEAKER_TO_GROUND_SHORT = 0,
    E_STATE_SYNC_DTC_BIT_SPEAKER_OPEN_OR_SHORT = 1,
    E_STATE_SYNC_DTC_BIT_SPEAKER_TO_POWER_SHORT = 2,
    E_STATE_SYNC_DTC_BIT_SIM_OFFLINE = 3,
    E_STATE_SYNC_DTC_BIT_SIM_INVALID = 4,
    E_STATE_SYNC_DTC_BIT_LOST_ETH_WITH_ICC = 5,
    E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_S32G_LINUX = 6,
    E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_RESPONSE_TIMEOUT = 7,
    E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_RESPONSE_TIMEOUT = 8,
    E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_SERVICE_LOST = 9,
    E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_SERVICE_LOST = 10,
    E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_SOC = 11,
    E_STATE_SYNC_DTC_BIT_LOST_SYNC_AND_FOLLOWUP_WITH_ICB = 12,
    E_STATE_SYNC_DTC_BIT_LOST_PDELAY_RESP_WITH_ICB = 13,
    E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_8155_QNX = 14,
    E_STATE_SYNC_DTC_BIT_8155_QNX_SOMEIP_RESPONSE_TIMEOUT = 15,
    E_STATE_SYNC_DTC_BIT_8155_QNX_SOMEIP_SERVICE_LOST = 16,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_17 = 17,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_18 = 18,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_19 = 19,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_20 = 20,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_21 = 21,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_22 = 22,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_23 = 23,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_24 = 24,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_25 = 25,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_26 = 26,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_27 = 27,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_28 = 28,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_29 = 29,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_30 = 30,
    E_STATE_SYNC_DTC_BIT_UNDEFINED_31 = 31
}StateSyncDtcBit_e;

typedef struct
{
    uint32_t dtcBitmap;          // 5G模组同步过来的故障位图，每个bit表示一种故障，1：故障 0：正常
    uint8_t mobileNetState;      // 移动网络状态，0:联网成功 1:未联网成功
    uint8_t networkType;         // 网络类型，0:2G 1:3G 2:4G 3:5G
    uint8_t signalStrength;      // 信号强度，0~31 有效，99 表示无效
    uint8_t emmcState;           // EMMC状态，0:未挂载 1:已挂载
    uint8_t phyState;            // PHY状态，0:link up 1:link down
    uint8_t hsmState;            // HSM状态，0:就绪 1:未就绪
    uint8_t nadState;            // NAD状态，1:正常 2:休眠 其它:异常
    uint8_t gpsLocationState;    // GPS 定位状态，0:未定位 1:单点定位 2:浮点定位 3:RTK定位
}DtcStateSync_t;

typedef struct
{
    LocationInfoSync_t locationInfo;    
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}CpuLocationInfo_t;

typedef struct
{
    SatelliteInfoSync_t satelliteInfo;    
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}CpuSatelliteInfo_t;

typedef struct
{
    NetInfoSync_t netInfo;
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}CpuNetInfoSync_t;

typedef struct
{
    HalStateSync_t halState;
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}CpuHalStateSync_t;

typedef struct
{
    TspStateSync_t tspState;
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间 单位ms
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}CpuTspStateSync_t;

typedef struct 
{
    uint8_t state;              //
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间 单位ms
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}GsensorStateSync_t;

typedef struct
{
    DtcStateSync_t dtcState;
    uint16_t timeCount;         //更新时长计数，用来确认
    uint16_t failureTime;        //失效时间 单位ms
    uint8_t validity;            //数据是否有效 1：有效 0：无效
}CpuDtcSync_t;

typedef struct
{
    uint8_t mobileNetState;                 // 移动网络状态，0:联网成功 1:未联网成功
    uint8_t networkType;                    // 网络类型，0:2G 1:3G 2:4G 3:5G
    uint8_t signalStrength;                 // 信号强度，0~31 有效，99 表示无效
    uint8_t emmcState;                      // EMMC状态，0:未挂载 1:已挂载
    uint8_t phyState;                       // PHY状态，0:link up 1:link down
    uint8_t hsmState;                       // HSM状态，0:就绪 1:未就绪
    uint8_t nadState;                       // NAD状态，1:正常 2:休眠 其它:异常
    uint8_t gpsLocationState;               // GPS定位状态，0:工作正常 1:工作异常
} MpuFaultExtStatus_t;  

typedef struct
{
    MpuFaultExtStatus_t extStatus;          
    uint16_t timeCount;                     
    uint16_t failureTime;                   
    uint8_t validity;                       
} MpuFaultExtStatusSync_t; 

typedef struct
{
    uint16_t serviceId;                        // BE80:ServiceID
    uint16_t serviceInstanceId;                // BE80:ServiceInstanceID
    uint16_t methodEventId;                    // BE80:MethodEventID
    uint8_t serviceStatus;                     // BE80:ServiceStatus
} Be80SnapshotInfo_t;

typedef struct
{
    Be80SnapshotInfo_t snapshotInfo;           
    uint16_t timeCount;                        
    uint16_t failureTime;                      
    uint8_t validity;                          // 有效标志，1表示收到过有效报文，0表示当前无效
} Be80SnapshotInfoSync_t;

typedef struct
{
    uint8_t bitIndex;                               
    Dem_EventIdType eventId;                        
} McuSendCpuFaultMap_t; 

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
int16_t StateSyncSdkInit(int16_t mpuHandle,uint16_t cycleTime);

/*************************************************
  Function:       StateSyncSdkCycleProcess
  Description:    状态同步模块周期调用接口
  Input:          pRxData：传入接收到的CPU数据
                  rxLength：数据长度
  Output:         无
  Return:         无
  Others:         
*************************************************/
void StateSyncSdkCycleProcess(MpuHalDataPack_t *msgData);

/*************************************************
  Function:       StateSyncGetLocationInfo
  Description:    获取CPU定位信息接口
  Input:          无
  Output:         localtioninfo：定位信息
  Return:         0：成功
                  3: 超时
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetLocationInfo(LocationInfoSync_t *localtionInfo);

/*************************************************
  Function:       StateSyncGetSatelliteInfo
  Description:    获取卫星信息接口
  Input:          无
  Output:         satelliteInfo：卫星信息
  Return:         0：成功
                  3: 超时
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetSatelliteInfo(SatelliteInfoSync_t *satelliteInfo);

/*************************************************
  Function:       StateSyncGetNetInfo
  Description:    获取cpu网络信息接口
  Input:          无
  Output:         netInfo：cpu网络信息
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetNetInfo(NetInfoSync_t *netInfo);

/*************************************************
  Function:       StateSyncGetHalstate
  Description:    获取cpu硬件状态
  Input:          无
  Output:         halState：cpu硬件状态
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetHalstate(HalStateSync_t *halState);

/*************************************************
  Function:       StateSyncGetTspState
  Description:    获取远程平台连接状态
  Input:          无
  Output:         tspState：平台连接状态
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetTspState(TspStateSync_t *tspState);

/*************************************************
  Function:       StateSyncGetGsersorState
  Description:    获取G-Sensor状态
  Input:          无
  Output:         state：状态 0正常，1错误
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetGsensorState(uint8_t *state);

/*************************************************
  Function:       StateSyncGetGnssAntState
  Description:    获取GNSS天线状态( 正常 短路 断路 )
  Input:          无
  Output:         state：状态 0 初始化 1 正常 2 短路 3 断路
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
uint8_t StateSyncGetGnssAntState(uint8_t *state);

/*************************************************
  Function:       StateSyncGetSatCanState
  Description:    获取卫星CAN发送状态( 0:未发送 1:正在发送 )
  Input:          无
  Output:         无
  Return:         0：can未发送sat数据
                  1:can正在发送sat数据
  Others:
*************************************************/
uint8_t StateSyncgGetSatCanState(void);

/*************************************************
  Function:       MpuDtcSyncSdkCycleProcess
  Description:    MPU故障码同步处理函数
  Input:          msgData：MPU数据消息包
  Output:         无
  Return:         无
  Others:         处理AID=0x30, MID=0x01的MPU故障码数据
*************************************************/
void MpuDtcSyncSdkCycleProcess(MpuHalDataPack_t *msgData);

/*************************************************
  Function:       StateSyncGetDtcstate
  Description:    获取5G模组同步过来的故障信息
  Input:          无
  Output:         dtcInfo：故障信息
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t StateSyncGetDtcstate(CpuDtcSync_t *dtcInfo);

/*************************************************
  Function:       MpuDtcSyncSdkCycleProcess
  Description:    MPU故障码同步处理函数
  Input:          msgData：MPU数据消息包
  Output:         无
  Return:         无
  Others:         处理AID=0x30, MID=0x01的MPU故障码数据
*************************************************/
void MpuDtcSyncSdkCycleProcess(MpuHalDataPack_t *msgData);

int16_t StateSyncGetMpuFaultExtStatus(MpuFaultExtStatus_t *extStatus); // 获取协议中MPU故障同步新增的8个状态字段

int16_t McuSendCpuFaultSyncInit(int16_t mpuHandle, uint16_t cycleTime);   /* 初始化MCU->CPU故障同步模块 */

void McuSendCpuFaultSyncCycleProcess(void);                                /* 1Hz 周期发送MCU故障状态给CPU */

int16_t StateSyncGetBe80SnapshotInfo(Be80SnapshotInfo_t *snapshotInfo);    /* 读取BE80快照信息 */

#endif
