#ifndef _POWER_MANAGE_SDK_H
#define _POWER_MANAGE_SDK_H

#include <stdint.h>

#define PM_SDK_STATUS_OK        0
#define PM_SDK_STATUS_ERR        (-1)

#define PM_HAL_WAKEUP_SOURCE_NONE	       0	 //����Ч����Դ	
#define PM_HAL_WAKEUP_SOURCE_CAN1	       1	 //can 1 ����
#define PM_HAL_WAKEUP_SOURCE_CAN2	       2	 //can 2 ����
#define PM_HAL_WAKEUP_SOURCE_CAN3	       3	 //can 3 ����
#define PM_HAL_WAKEUP_SOURCE_CAN4	       4 	 //can 4 ����
#define PM_HAL_WAKEUP_SOURCE_CAN5	       5	 //can 5 ����
#define PM_HAL_WAKEUP_SOURCE_CAN6	       6	 //can 6 ����
#define PM_HAL_WAKEUP_SOURCE_CAN7	       7	 //can 7 ����
#define PM_HAL_WAKEUP_SOURCE_CAN8	       8	 //can 8 ����
#define PM_HAL_WAKEUP_SOURCE_MPU	       9	 //MPU ����
#define PM_HAL_WAKEUP_SOURCE_KL15	       10	 //KL15 �ϵ绽��
#define PM_HAL_WAKEUP_SOURCE_KL30	       11    //KL30 �ϵ绽��
#define PM_HAL_WAKEUP_SOURCE_BLE	       12	 //��������
#define PM_HAL_WAKEUP_SOURCE_RTC	       13    //CPU��ʱ����
#define PM_HAL_WAKEUP_SOURCE_MCURTC	       14    //MCU timed wake-up
#define PM_HAL_WAKEUP_SOURCE_GSENSOR	       15        //MCU timed wake-up
#define PM_HAL_WAKEUP_SOURCE_CRASH	       16        //MCU timed wake-up
#define PM_HAL_WAKEUP_SOURCE_ECALL	       17        //MCU timed wake-up

#define PM_HAL_WAKEUP_SOURCE_MAX               17        //����Դ���ֵ

typedef void (* PmWakeCallFun_t)(uint8_t mcuWakecpuSource,uint8_t cpuWakeupSource,uint32_t *pWakeDelayTime);


typedef struct 
{
    uint8_t mpuDeepSleep;
    uint8_t gSensorDeepSleep;
}DeepSleepConfig_t;

typedef struct
{
    uint8_t mpuDeepSleep;
    uint8_t gSensorDeepSleep;
}CustomSleepConfig_t;

typedef struct
{
    uint8_t degInfo;
    uint8_t canNmType;
    uint8_t wakeDelayTime;
    PmWakeCallFun_t wakeupFun;
    uint32_t kl30OffWakeDelay;
    DeepSleepConfig_t deepSleepConfig;
    CustomSleepConfig_t customSleepConfig;
    
}PmSdkConfig_t;


int16_t PowerManageSdkInit(const PmSdkConfig_t* pmConfig);

void PowerManageSdkCycleProcess(uint32_t cycleTime);
void PowerManageSdkPowerOn(void);
int16_t PowerManageSdkSetWakeDelay(uint32_t time);

int16_t PowerManageSdkResetWake(uint8_t wakeMode);

int16_t PowerManageSdkOpenHandle(const char* pName);

int16_t PowerManageSdkGetSleepState(int16_t pmHandle);

int16_t PowerManageSdkSetSleepAck(int16_t pmHandle);

int16_t PowerManageSdkSetTestMode(uint8_t mode);

void PowerManageSdkDeepSleep(uint8_t deepSleepFlag);

void PowerManageSdkForceSleep(void);

void PowerManageSdkGetPowerInfo(uint8_t* pPmState,uint8_t* pWakeupSource,uint32_t* pWakeCount);
void PowerManageSdkForceWakeupMpu(uint16_t cycleTime);

/* �����ڼ��ʱ���ݼ��ӿڣ�����ʱ���жϵ��� */
void PowerManageSdkTimerDecrement(void);
uint8_t PowerManageSdkCheckDeepstopReset(void);

void PowerManageSdkSyncListenTimer(uint8_t timerValue, uint8_t timerUnit);
/* ����listen���Ѽ�ʱ�� */
void ResetListenTimer(void);

/* ��ȡ�洢���û�ģʽ */
uint8_t GetStoredUserMode(void);

uint8_t PowerManageSdkShouldStartMpuOnPowerOn(void);

uint32_t PowerManageSdkGetResetReason(void);








#endif