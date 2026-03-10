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
	uint8_t     moduleState;     //模块状态 0：工作正常 1：工作异常
	uint8_t     wireState;		 //电线状态 0: 正常 1：电线断路 2：电线地短路 3：电线电源短路
	uint8_t	    locationState;	 //定位状态 Bit0-bit5: GNSS定位状态 0: 未定位 1: 单点定位 2: 浮点定位 3: RTK定位
                                    //Bit6: 0-东经，1-西经
                                    //Bit7: 0-北纬，1-南纬
	uint32_t	longitude;       //经度，单位：度，精度：10-7
	uint32_t	latitude;	     //纬度，单位：度，精度：10-7
    uint8_t     flongitude[8];
    uint8_t     flatitude[8];
	uint16_t    altitude;	     //高程，单位：米，精度：0.1米
	uint16_t	speed;	         //速度，单位：km/h，精度：0.1km/h
	uint16_t	heading;	     //0...360	航向，单位：度，精度：0.1度
	uint16_t	accuracy;	     //定位水平精度,单位：厘米，精度：1厘米
	uint8_t	    svsNum;	         //可见卫星数量
	uint8_t     useSvsnum;	     //使用卫星数量
	uint32_t	timeStamp;	     //时间戳
}LocationInfoSync_t;

typedef struct 
{
    uint32_t	timeStamp;


}SatelliteInfoSync_t;

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
    uint16_t    tmpStatus;       //CPU温度；
}HalStateSync_t;

typedef struct
{
    uint8_t      tspStatus;      //tsp采集平台连接状态 0：未登录，1：登录
}TspStateSync_t;

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
                  -1：失败
  Others:         
*************************************************/
int16_t StateSyncGetLocationInfo(LocationInfoSync_t *localtionInfo);

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

#endif
