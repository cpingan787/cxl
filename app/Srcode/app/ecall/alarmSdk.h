#ifndef _ALARM_SDK_H
#define _ALARM_SDK_H

#include <stdint.h>
#include "mpuHal.h"

#define SELFCHECK_RESULT_SEND   1
typedef enum
{
    E_ECALL_TRIGGER_BTN_MANN = 0,
    E_ECALL_TRIGGER_SRS_AUTO,
    E_ECALL_TRIGGER_CAN_AUTO,
    E_ECALL_TRIGGER_GSENSOR_AOTU,
    E_ECALL_TRIGGER_TEST_MODE,		
}EcallTriggerType_e;

typedef enum
{
    ECALL_TRIGGER_RESULT_FAIL = 0,
    ECALL_TRIGGER_RESULT_SUCC,		
}EcallTriggerResult_e;
// MPU触发源标识（在ACK数据第3字节）
typedef enum
{
    ECALL_TRIGGER_SOURCE_MCU = 0,       // MCU触发
    ECALL_TRIGGER_SOURCE_MPU = 0x03,    // MPU主动触发
}EcallTriggerSource_e;
typedef enum
{
    E_ECALL_STATE_NO_ECALL = 0,
    E_ECALL_STATE_INCOMING_CALL,
    E_ECALL_STATE_IN_CALL,
    E_ECALL_STATE_DURING_CALL,
    E_ECALL_STATE_END_CALL,
    E_ECALL_STATE_END_CALL_ABNORM,
    E_ECALL_STATE_WAIT_PSPA_CALLBACK,
    E_ECALL_STATE_SEND_MSD,
    E_ECALL_STATE_PUSH_MSD,
    E_ECALL_STATE_UPDATE_MSD,
    E_ECALL_STATE_SEND_MSD_SUCC,
    E_ECALL_STATE_SEND_MSD_FAIL,
    E_ECALL_STATE_INTERVAL_TIMEOUT = 12,//重播
    E_ECALL_STATE_DIAL_DURATION =13,//重播开始
}EcallStatusType_e;

typedef enum
{
    E_NAD_FAULT = 0,
    E_BATTERY_FAULT,//1
    E_SPEAKER_FAULT,//2
    E_ANT_MAIN_FAULT,//3
    E_ANT_DIV_FAULT,//4
    E_MIMO3_FAULT,//5
    E_MIMO4_FAULT,//6
    E_SOS_FAULT,//7
    E_MIC_FAULT,//8
    E_ANT_GNSS_FAULT,//9
    E_SIM_CARD_FAULT,//10
    E_CAN_FAULT,
    E_ABM_FAULT,
    E_KL30_FAULT,
    E_SELF_TEST_STATE,
    E_MCU_FAULT_STATUS
}McuSelfcheckItem_e;

// typedef enum
// {
//     E_GSM_MAIN_ANT_FAULT = 0,
//     E_GSM_SEC_ANT_FAULT,
//     E_GPS_ANT_FAULT,
//     E_SIM_CARD_FAULT,
//     E_MPU_FAULT_STATUS
// }MpuSelfcheckItem_e;

typedef struct
{
    uint8_t selfCheck;          /* 设备自检 0:自检成功 1:一级错误 2:二级错误 */
    uint8_t nadFault;          /* NAD模组运行异常 */
    uint8_t batteryFault;      /* 备用电池连接异常 */
    uint8_t speakerFault;      /* 扬声器连接异常 */
    uint8_t antMainFault;     /* 主天线连接异常 */
    uint8_t antDivFault;      /* 分集天线连接异常 */
    uint8_t mimo3Fault;        /* MIMO3天线异常 */
    uint8_t mimo4Fault;        /* MIMO4天线异常 */
    uint8_t sosFault;          /* SOS按键连接异常 */
    uint8_t micFault;          /* MIC连接异常 */
    uint8_t antGnssFault;     /* GNSS天线异常 */
    uint8_t canFault;          /* CAN硬线连接异常 */
    uint8_t abmFault;          /* ABM连接异常 */
    uint8_t kl30Fault;         /* 外部电源阈值检测异常 */
    uint8_t simcardFault;      /* SIM卡异常 */
} McuSelfcheckMsg_t;
#if 0
/** ****************************************************************************
 * @brief 触发ECALL报警的状态
 *******************************************************************************/
#pragma pack(1)
typedef struct
{
	volatile uint8_t self_test;   	        /*设备自检 0:自检中 1:自检成功 2:自检异常 3:未知错误*/
	union   ///< 消息属性
	{
		volatile uint32_t fault_st; 		/*故障状态*/
		struct
		{
			uint32_t nad_fault : 4;		    /*NAD模组运行异常*/	  
			uint32_t battery_fault : 4; 	/*备用电池连接异常*/
			uint32_t speaker_fault : 4; 	/*扬声器连接异常*/
			uint32_t abm_fault : 4; 	    /*ABM连接异常*/
			uint32_t can_fault : 4; 	    /*CAN硬线连接异常*/
			uint32_t sos_fault : 4;	        /*SOS(按键)连接异常*/
			uint32_t mic_fault : 4;	        /*MIC连接异常*/
            uint32_t kl30_fault : 4;        /*外部电源阀值检测异常*/
		};
	};
}McuSelfcheckMsg_t;

typedef struct
{
	union   ///< 消息属性
	{
		volatile uint32_t fault_st; 		/*故障状态*/
		struct
		{
			uint32_t gsmMainAnt_fault : 4;  /* 4G 主天线异常*/	  
			uint32_t gsmSecAnt_fault : 4; 	/* 4G 副天线异常*/
			uint32_t gpsAnt_fault : 4; 	    /* GPS 天线异常*/
			uint32_t simCard_fault : 4;     /* SIM 卡异常*/
			uint32_t reserve : 4; 	    /* */
			uint32_t reserve1 : 4;	    /* */
			uint32_t reserve2 : 4;	    /* */
            uint32_t reserve3 : 4;       /* */
		};
	};
}MpuSelfcheckMsg_t;
#endif
typedef enum
{
	E_SELFCHECK_RUN_INIT = 0,	
	E_SELFCHECK_RUN_START,
	E_SELFCHECK_RUN_STOP,		
    E_SELFCHECK_RUN_END,			
}SelfcheckRunState_e;

// ECALL 核心状态机状态
typedef enum {
    ECALL_CORE_IDLE = 0,
    ECALL_CORE_TRIGGERING,      // 已发送触发，等待ACK
    ECALL_CORE_AWAIT_STATE,     // 已收到ACK，等待状态
    ECALL_CORE_IN_CALL,         // 通话进行中（MCU触发）
    ECALL_CORE_MPU_ACTIVE,      // MPU主动触发，进行超时监控
    ECALL_CORE_FAILED           // 触发失败（短暂停留）
} EcallCoreState_e;

// 状态机事件类型
typedef enum {
    ECALL_EVT_TRIGGER_REQ = 0,
    ECALL_EVT_MPU_ACK_SUCCESS,
    ECALL_EVT_MPU_ACK_FAIL,
    ECALL_EVT_MPU_STATE_UPDATE,  // 数据为ECALL状态码
    ECALL_EVT_TIMEOUT
} EcallEventType_e;

// 事件消息
typedef struct {
    EcallEventType_e event;
    uint8_t param;               // 用于 STATE_UPDATE 时传递 ECALL 状态码
} EcallEvent_t;

// 配置结构（可在初始化时传入）
typedef struct {
    uint32_t timeoutTriggerMs;    // 触发阶段超时 (ms)
    uint32_t timeoutAwaitStateMs;// ACK后等待状态超时 (ms)
    uint32_t timeoutGlobalMs;    // 整个ECALL最大时长 (ms)
    uint32_t retryIntervalMs;    // 重发间隔 (ms)
    uint32_t cooldownMs;         // 两次触发最小间隔 (ms)
    uint16_t cycleTimeMs;        // 周期调用间隔 (ms)
} EcallCoreConfig_t;

extern SelfcheckRunState_e g_selfcheckRunState;

int16_t AlarmSdkEcallTriger(uint8_t type);
int16_t AlarmSdkEcallStop(void);
int16_t AlarmSdkInit(uint16_t cycleTime);
void AlarmSdkCycleProcess(void);

uint8_t AlarmSdkGetEcallState(void);
void AlarmSdkSetSelfcheckState(SelfcheckRunState_e state);
SelfcheckRunState_e AlarmSdkGetSelfcheckState(void);
void AlarmSdkSetMcuSelfcheckResult(McuSelfcheckItem_e item, uint8_t result);
uint8_t AlarmSdkGetMcuSelfcheckLevel(void);
McuSelfcheckMsg_t* AlarmSdkGetMcuSelfcheckResult(void);
// void AlarmSdkSetMpuSelfcheckResult(uint8_t item, uint8_t result);
// MpuSelfcheckMsg_t* AlarmSdkGetMpuSelfcheckResult(void);
int16_t AlarmSdkSelfchackPeriSend(void);
// uint8_t AlarmSdkGetEcallTriggerType(void);
// int16_t AlarmSdkLogReport(uint8_t *data,uint16_t lenth);

int16_t AlarmSdkLogReport(uint8_t *data,uint16_t lenth);
uint8_t GetEcallState();
// uint8_t GetSendECALLLog6();
int16_t EcallSatausRequest();

#endif  // _ALARM_SDK_H