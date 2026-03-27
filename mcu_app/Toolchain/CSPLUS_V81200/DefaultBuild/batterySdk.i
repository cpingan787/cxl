









 



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;

typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef signed long int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef signed long int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef signed long long int_fast64_t;
typedef unsigned long long uint_fast64_t;

typedef int intptr_t;
typedef unsigned int uintptr_t;

typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;

























 













 


 










 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;





extern	void *memcpy(void *, const void *, size_t);
extern	void *memmove(void *, const void *, size_t);
extern	char *strcpy(char *, const char *);
extern	char *strncpy(char *, const char *, size_t);

extern	char *strcat(char *, const char *);
extern	char *strncat(char *, const char *, size_t);

extern	int memcmp(const void *, const void *, size_t);
extern	int strcmp(const char *, const char *);
extern	int strncmp(const char *, const char *, size_t);

extern	void *memchr(const void *, int, size_t);
extern	char *strchr(const char *, int);
extern	size_t strcspn(const char *, const char *);
extern	char *strpbrk(const char *, const char *);
extern	char *strrchr(const char *, int);
extern	size_t strspn(const char *, const char *);
extern	char *strstr(const char *, const char *);
extern	char *strtok(char *, const char *);

extern	void *memset(void *, int, size_t);
extern	char *strerror(int);
extern	size_t strlen(const char *);





typedef uint8_t QueueHandle_t;
typedef void* QueueSetHandle_t;
typedef void* QueueSetMemberHandle_t;

typedef void* SemaphoreHandle_t;










 


typedef enum {
    QUEUE_UNUSED = 0,
    QUEUE_USED
} queue_state_t;


typedef struct {
    uint8_t data[20][4];  
    uint32_t item_size;      
    uint32_t capacity;       
    uint32_t head;           
    uint32_t tail;           
    uint32_t count;          
    queue_state_t state;     
} my_queue_t;


typedef enum {
    MUTEX_FREE = 0,         
    MUTEX_TAKEN,            
    MUTEX_UNUSED            
} mutex_state_t;


typedef struct {
    mutex_state_t state;    
    uint32_t owner;         
    uint8_t recursive_count; 
} my_mutex_t;








 
QueueHandle_t xQueueCreate(uint32_t uxQueueLength, uint32_t uxItemSize);







 
uint32_t xQueueSend(QueueHandle_t xQueue, const void *pvItemToQueue, uint32_t xTicksToWait);







 
uint32_t xQueueSendFromISR(QueueHandle_t xQueue, const void *pvItemToQueue, void *pxHigherPriorityTaskWoken);







 
uint32_t xQueueReceive(QueueHandle_t xQueue, void *pvBuffer, uint32_t xTicksToWait);







 
uint32_t xQueueReceiveFromISR(QueueHandle_t xQueue, void *pvBuffer, void *pxHigherPriorityTaskWoken);





 
uint32_t uxQueueMessagesWaiting(QueueHandle_t xQueue);





 
uint32_t uxQueueSpacesAvailable(QueueHandle_t xQueue);





 
uint32_t xQueueReset(QueueHandle_t xQueue);




 
SemaphoreHandle_t xSemaphoreCreateMutex(void);




 
SemaphoreHandle_t xSemaphoreCreateRecursiveMutex(void);






 
uint32_t xSemaphoreTake(SemaphoreHandle_t xSemaphore, uint32_t xBlockTime);






 
uint32_t xSemaphoreTakeRecursive(SemaphoreHandle_t xSemaphore, uint32_t xBlockTime);





 
uint32_t xSemaphoreGive(SemaphoreHandle_t xSemaphore);





 
uint32_t xSemaphoreGiveRecursive(SemaphoreHandle_t xSemaphore);






 






 




 
void vSemaphoreDelete(SemaphoreHandle_t xSemaphore);

void delay_us(unsigned int xus);



 
void my_delay_ms(uint32_t ms);




 
uint32_t get_system_tick(void);

void vPortEnterCritical(void);
void vPortExitCritical(void);




int16_t BatteryHalInit(void);
void BatteryHalEnableOut(void);
void BatteryHalDisableOut(void);
void BatteryHalEnableCharge(void);
void BatteryHalDisableCharge(void);
int16_t BatteryHalGetVoltage(uint32_t *pVoltage);
int16_t BatteryHalGetNtc(uint32_t *pVoltage);
void BatteryHalEnableCheck(uint8_t flag);
int16_t BatteryHalGetState(void);







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

 
void PowerManageSdkTimerDecrement(void);

 
void ResetListenTimer(void);

 
uint8_t GetStoredUserMode(void);



















 



typedef void (* ErrorRecallFun_t)(uint8_t flag);

typedef enum
{
    E_BATTERY_FDK,                                       
    E_BATTERY_XYSR,                                      
}BatteryType_E;

typedef enum
{
    E_BatteryState_Init,                                 
    E_BatteryState_BatteryTemperatureCheck,              
    E_BatteryState_Wait5MinDelay,                        
    E_BatteryState_BatteryVoltageCheck,                  
    E_BatteryState_MiddleVoltageCharge,                  
    E_BatteryState_MiddleVoltageChargeCheckTem,          
    E_BatteryState_MiddleVoltageChargeFinish,            
    E_BatteryState_LowVoltageCharge,                     
    E_BatteryState_LowVoltageChargeCheckTem,             
    E_BatteryState_LowVoltageChargeFinish,               
    E_BatteryState_HealthCheck,                          
    E_BatteryState_TrickleCharge,                        
    E_BatteryState_ChargeFinishCheckTem,                 
    E_BatteryState_ChargeFinishDelay10Min,               
    E_BatteryState_StopCharge,                           

}BatteryState_e;

typedef struct 
{
    int16_t tempHighErrorValue;                         
    int16_t tempHighAlarmValue;                         
    uint16_t voltageHighErrorValue;                     
    uint16_t voltageLowErrorValue;                      
    uint8_t batterySocAlarmValue;                       
    ErrorRecallFun_t batteryTemperatureHighErrorFun;    
    ErrorRecallFun_t batteryNoPlugInErrorFun;           
    ErrorRecallFun_t batteryVoltageHighErrorFun;        
    ErrorRecallFun_t batteryVoltageLowErrorFun;         
    ErrorRecallFun_t batteryShortErrorFun;              
}BatteryConfigure_t;











 
int16_t BatterySdkInit(const BatteryConfigure_t *pBatteryConfigure,uint16_t cycleTime,BatteryType_E batteryType);








 
void BatterySdkCycleProcess(void);









 
int16_t BatterySdkGetVoltage(uint32_t *pVoltage);









 
int16_t BatterySdkGetTemperature(int32_t *pTemperature);









 
int16_t BatterySdkSetTestMode(void);









 
int16_t BatterySdkSetNormalMode(void);









 
int16_t BatterySdkTestModeChargeStart(void);









 
int16_t BatterySdkTestModeChargeStop(void);









 
int16_t BatterySdkTestModeDischargeStart(void);









 
int16_t BatterySdkTestModeDischargeStop(void);









 
uint8_t BatterySdkGetBatteyStatus(void);








 
uint32_t BatterySdkGetBatteySoc(void);









 
uint8_t BatterySdkGetBatteyVoltageAlarm(void);









 
uint8_t BatterySdkGetBatteyTempAlarm(void);








 
uint32_t BatterySdkGetBatteyChargingDuration(void);                      



static const uint32_t g_cellNumber                = 2;                   
static const uint32_t g_cellMaxVoltage            = 1340;                
static const uint32_t g_cellMinVoltage            = 1240;                

static const uint32_t g_middleVoltageChargeTime   = 8*60*60*1000;        
static const uint32_t g_temperatureRMap[]         = {                    
    173200,    
    164200,    
    155700,    
    147700,    
    140200,    
    133200,    
    126600,    
    120400,    
    114500,    
    108900,    
    103700,    
    98800,     
    94160,     
    89770,     
    85600,     
    81660,     
    77920,     
    74380,     
    71010,     
    67820,     
    64790,     
    61930,     
    59210,     
    56620,     
    54150,     
    51790,     
    49550,     
    47410,     
    45370,     
    43430,     
    41570,     
    39810,     
    38130,     
    36530,     
    34990,     
    33530,     
    32130,     
    30790,     
    29500,     
    28280,     
    27110,     
    25990,     
    24920,     
    23900,     
    22920,     
    21990,     
    21100,     
    20250,     
    19440,     
    18660,     
    17920,     
    17220,     
    16540,     
    15890,     
    15270,     
    14680,     
    14120,     
    13580,     
    13060,     
    12560,     
    12090,     
    11630,     
    11200,     
    10780,     
    10380,     
    10000,     
    9634,      
    9283,      
    8946,      
    8623,      
    8314,      
    8017,      
    7733,      
    7460,      
    7198,      
    6946,      
    6705,      
    6474,      
    6251,      
    6038,      
    5832,      
    5635,      
    5446,      
    5264,      
    5089,      
    4921,      
    4759,      
    4603,      
    4454,      
    4310,      
    4171,      
    4037,      
    3909,      
    3785,      
    3666,      
    3551,      
    3440,      
    3334,      
    3231,      
    3132,      
    3036,      
    2944,      
    2855,      
    2769,      
    2686,      
    2606,      
    2529,      
    2454,      
    2382,      
    2313,      
    2245,      
    2181,      
    2118,      
    2057,      
    1999,      
    1942,      
    1887,      
    1834,      
    1783,      
    1734,      
    1686,      
    1640,      
    1595,      
    1552,      
    1510,      
    1469,      
    1430,      
    1392,      
    1355,      
    1319,      
    1285,      
    1251,      
    1219,      
    1187,      
    1157,      
    1127,      
    1099,      
    1071,      
    1044,      
    1018,      
    992        
};


const static uint32_t g_FDKPercentTable[] = {2133,2227,2359,2411,2441,2463,2477,2489,2500,2510,2516,2525,2530,2532,2542,2547,2552,2558,2563,2569,2575,2582,2588,2595,2596,2609,2639,2657,2679,2708,2745,2800};
const static uint32_t g_XYSRPercentTable[] = {3100,3358,3401,3494,3533,3560,3586,3606,3624,3637,3650,3660,3670,3680,3688,3698,3706,3713,3721,3730,3738,3739,3746,3760,3761,3768,3769,3775,3779,3795,3801,3815,3824,3837,3854,3876,3910,3940,3990,4030,4100,4200};
    
static int16_t g_sleepStateHandle = -1;                         
static int16_t g_batterySdkTimerHandle= -1;                      
static const BatteryConfigure_t *g_BatteryConfigure = ((void *) 0);    
static uint32_t g_batteryTemperature = 0;                       
static uint32_t g_batteryVoltage = 0;                           
static uint8_t g_sleepState = 0;                                
static uint16_t g_cycleTime = 10;                               
static uint8_t g_getTempSuccessFlag = 0;                        
static uint8_t g_getVolSuccessFlag = 0;                         
static uint16_t g_adGetDelayTimeCount = 0;                      
static uint8_t g_adGetStateFlag = 0;                            
static BatteryState_e g_batteryState = E_BatteryState_Init;     
static uint8_t g_testModeFlag = 0;                              
static SemaphoreHandle_t g_mutexHandle = ((void *) 0);                  
static uint8_t g_batteryConnectFlag = 1;                        
static BatteryType_E g_batteryTpye = E_BATTERY_XYSR;            

static uint8_t g_batteryTempAlarmFlag = 0;                      








 
static void BatterySdkAdConversion(uint32_t ntcValue,uint32_t *resisterOut)
{
    int32_t refVoltage;
    uint32_t resisterPull;
    refVoltage = 3300;
    resisterPull = 10000; 

    if(ntcValue>=refVoltage)
    {
        ntcValue = refVoltage - 1;
    }
    *resisterOut = (resisterPull*ntcValue)/(refVoltage-ntcValue);
    
    return;
}









 
static int16_t ResisterToTemperature(uint32_t resisterIn,int32_t *tmpValue)
{

  int32_t size;
  int32_t i;
  int32_t j;
  int32_t half;
  
  
  if(resisterIn>=g_temperatureRMap[0])
  {
    *tmpValue = -5000;
    return 0;
  }
  
  size = sizeof(g_temperatureRMap)/sizeof(g_temperatureRMap[0]);
  i = 0;
  j = size;

  while(1)
  {
    if(j-i<2)
    {
      break;
    }
    half = (i+j)/2;
    if(resisterIn>g_temperatureRMap[half])
    {
      j = half;
    }
    else if(resisterIn==g_temperatureRMap[half])
    {
    	j = half;
    	i = half;
    }
    else
    {
      i = half;
    }
  }
  if(i==j)
  {
    *tmpValue = (i-40)*100;
  }
  else
  {
    
    *tmpValue = (i*100)+((j-i)*100)*(g_temperatureRMap[i]-resisterIn)/(g_temperatureRMap[i]-g_temperatureRMap[j]);
    *tmpValue -= 40*100;
  }

  return 0;
}

static void BatterySdkTmpErrorProcess()
{
    uint8_t lowFlag = 0;
    uint8_t highFlag = 0;

    if(g_batteryTemperature>=g_temperatureRMap[0])
    {
        lowFlag = 1; 
        g_batteryConnectFlag = 1;
    }
    else
    {
        if(g_batteryConnectFlag == 1)
        {
            g_batteryConnectFlag = 0;
        }
    }
    if(g_BatteryConfigure == ((void *) 0))
    {
        return;
    }
    if(g_batteryTemperature<=g_temperatureRMap[g_BatteryConfigure->tempHighErrorValue+40])
    {
        highFlag = 1;
    } 

    if(g_batteryTemperature < g_temperatureRMap[g_BatteryConfigure->tempHighAlarmValue+40]) 
    {
        g_batteryTempAlarmFlag = 2;
    }
    else
    {
        g_batteryTempAlarmFlag = 0;
    }

    if(g_BatteryConfigure->batteryNoPlugInErrorFun != ((void *) 0))
    {
        g_BatteryConfigure->batteryNoPlugInErrorFun(lowFlag);
    }
    if(g_BatteryConfigure->batteryTemperatureHighErrorFun!=((void *) 0))
    {
        g_BatteryConfigure->batteryTemperatureHighErrorFun(highFlag);
    }
    return ;
}

static void BatterySdkVoltageErrorProcess(uint32_t volValue)
{
    uint8_t lowFlag = 0;
    uint8_t highFlag = 0;

    if(g_BatteryConfigure!=((void *) 0))
    {
        if(volValue>g_BatteryConfigure->voltageHighErrorValue)    
        {
            highFlag = 1;
        }
        if(volValue<g_BatteryConfigure->voltageLowErrorValue)     
        {
            lowFlag = 1;
        }

        if(g_BatteryConfigure->batteryVoltageHighErrorFun != ((void *) 0))
        {
            g_BatteryConfigure->batteryVoltageHighErrorFun(highFlag);
        }
        if(g_BatteryConfigure->batteryVoltageLowErrorFun!=((void *) 0))
        {
            g_BatteryConfigure->batteryVoltageLowErrorFun(lowFlag);
        }
    }
    return ;
}

static void BatterySdkChargeStateTemperatureCheck(void)
{
    if(g_getTempSuccessFlag == 1)
    {
        if(g_batteryTemperature>=g_temperatureRMap[0+40]||g_batteryTemperature<=g_temperatureRMap[50+40])
        {
            g_batteryState = E_BatteryState_Wait5MinDelay;
            
            TimerHalStartTime(g_batterySdkTimerHandle,5*60*1000);
        }
        else
        {
            g_batteryState = E_BatteryState_BatteryVoltageCheck;
        }
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateWait5MinDelay(void)
{
     if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
     {
         TimerHalStopTime(g_batterySdkTimerHandle);
         if(g_sleepState == 0)
         {
             g_batteryState = E_BatteryState_StopCharge;
             BatteryHalDisableCharge();
         }
         else
         {
             g_batteryState = E_BatteryState_BatteryTemperatureCheck;
         }
     }
     else if(g_sleepState == 0)
     {
         g_batteryState = E_BatteryState_StopCharge;
         BatteryHalDisableCharge();
     }
}

static void BatterySdkChargeStateVoltageCheck(void)
{
    if(g_getVolSuccessFlag == 1)
    {
        uint32_t batteryMaxVoltage;
        uint32_t batteryMinVoltage;

        batteryMaxVoltage = g_cellMaxVoltage * g_cellNumber;
        batteryMinVoltage = g_cellMinVoltage * g_cellNumber;
        
        if(g_batteryVoltage>batteryMaxVoltage)
        {
            g_batteryState = E_BatteryState_HealthCheck;
        }
        else
        {
            if(g_batteryVoltage>batteryMinVoltage)
            {
                g_batteryState = E_BatteryState_MiddleVoltageCharge;
            }
            else
            {
                g_batteryState = E_BatteryState_LowVoltageCharge;
            }
            
            TimerHalStartTime(g_batterySdkTimerHandle,g_middleVoltageChargeTime);
            
            BatteryHalEnableCharge();
        }
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateMiddleVoltageCharge(void)
{
    
    if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
    {
        
        TimerHalStopTime(g_batterySdkTimerHandle);
        
        BatteryHalDisableCharge();
        g_batteryState = E_BatteryState_TrickleCharge;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        
        BatteryHalDisableCharge();
    }
    else
    {
        g_batteryState = E_BatteryState_MiddleVoltageChargeCheckTem;
    }
}

static void BatterySdkChargeStateMiddleVoltageChargeCheckTem(void)
{
    if(g_getTempSuccessFlag)
    {
        if(g_batteryTemperature>=g_temperatureRMap[0+40]||g_batteryTemperature<=g_temperatureRMap[60+40])
        {
            g_batteryState = E_BatteryState_MiddleVoltageChargeFinish;
            
            BatteryHalDisableCharge();
        }
        else if(g_sleepState == 0)
        {
            g_batteryState = E_BatteryState_StopCharge;
            
            BatteryHalDisableCharge();
            
            TimerHalStopTime(g_batterySdkTimerHandle);
        }
        else
        {
            g_batteryState = E_BatteryState_MiddleVoltageCharge;
        }
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateLowVoltageCharge(void)
{
    if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
    {
        TimerHalStopTime(g_batterySdkTimerHandle);
        
        BatteryHalDisableCharge();
        g_batteryState = E_BatteryState_LowVoltageChargeFinish;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        
        BatteryHalDisableCharge();
    }
    else
    {
        g_batteryState = E_BatteryState_LowVoltageChargeCheckTem;
    }
}

static void BatterySdkChargeStateLowVoltageChargeCheckTem(void)
{
    if(g_getTempSuccessFlag == 1)
    {
        if(g_batteryTemperature>=g_temperatureRMap[0+40]||g_batteryTemperature<=g_temperatureRMap[60+40])
        {
            g_batteryState = E_BatteryState_StopCharge;
            BatteryHalDisableCharge();
            TimerHalStopTime(g_batterySdkTimerHandle);
        }
        else
        {
            g_batteryState = E_BatteryState_LowVoltageCharge;
        }
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateChargeFinishCheckTem(void)
{
    if(g_getTempSuccessFlag == 1)
    {
        if(g_batteryTemperature>=g_temperatureRMap[0+40]||g_batteryTemperature<=g_temperatureRMap[60+40])
        {
            g_batteryState = E_BatteryState_ChargeFinishDelay10Min;
            
            TimerHalStartTime(g_batterySdkTimerHandle,10*60*1000);
        }
        else if(g_sleepState == 0)
        {
            g_batteryState = E_BatteryState_StopCharge;
            
            BatteryHalDisableCharge();
        }
        else
        {
            g_batteryState = E_BatteryState_ChargeFinishCheckTem;
        }
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateChargeFinishDelay10Min(void)
{
    if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
    {
        TimerHalStopTime(g_batterySdkTimerHandle);
        
        BatteryHalDisableCharge();
        g_batteryState = E_BatteryState_ChargeFinishCheckTem;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateInit(void)
{
    if(g_getTempSuccessFlag == 1)
    {
        g_batteryState = E_BatteryState_BatteryTemperatureCheck;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateManage()
{
    if(g_batteryState == E_BatteryState_Init)
    {
        BatterySdkChargeStateInit();
    }
    else if(g_batteryState == E_BatteryState_BatteryTemperatureCheck)
    {
        BatterySdkChargeStateTemperatureCheck();
    }
    else if(g_batteryState == E_BatteryState_Wait5MinDelay)
    {
        BatterySdkChargeStateWait5MinDelay();
    }
    else if(g_batteryState == E_BatteryState_BatteryVoltageCheck)
    {
        BatterySdkChargeStateVoltageCheck();
    }
    else if(g_batteryState == E_BatteryState_MiddleVoltageCharge)
    {
        BatterySdkChargeStateMiddleVoltageCharge();
    }
    else if(g_batteryState == E_BatteryState_MiddleVoltageChargeCheckTem)
    {
        BatterySdkChargeStateMiddleVoltageChargeCheckTem();
    }
    else if(g_batteryState == E_BatteryState_MiddleVoltageChargeFinish)
    {
        if(g_sleepState == 0)
        {
            g_batteryState = E_BatteryState_StopCharge;
            
            BatteryHalDisableCharge();
        }
    }
    else if(g_batteryState == E_BatteryState_LowVoltageCharge)
    {
        BatterySdkChargeStateLowVoltageCharge();
    }
    else if(g_batteryState == E_BatteryState_LowVoltageChargeCheckTem)
    {
        BatterySdkChargeStateLowVoltageChargeCheckTem();
    }
    else if(g_batteryState == E_BatteryState_LowVoltageChargeFinish)
    {
        if(g_sleepState == 0)
        {
            g_batteryState = E_BatteryState_StopCharge;
            
            BatteryHalDisableCharge();
        }
    }
    else if(g_batteryState == E_BatteryState_HealthCheck)
    {
        g_batteryState = E_BatteryState_TrickleCharge;
    }
    else if(g_batteryState == E_BatteryState_TrickleCharge)
    {
        g_batteryState = E_BatteryState_ChargeFinishCheckTem;
    }
    else if(g_batteryState == E_BatteryState_ChargeFinishCheckTem)
    {
        BatterySdkChargeStateChargeFinishCheckTem();
    }
    else if(g_batteryState == E_BatteryState_ChargeFinishDelay10Min)
    {
        BatterySdkChargeStateChargeFinishDelay10Min();
    }
    else if(g_batteryState == E_BatteryState_StopCharge)
    {
        
        if(g_sleepState == 1)
        {
            g_batteryState = E_BatteryState_Init;
        }
    }
}











 
int16_t BatterySdkInit(const BatteryConfigure_t *pBatteryConfigure,uint16_t cycleTime,BatteryType_E batteryType)
{
    
    if(pBatteryConfigure != ((void *) 0))
    {
        g_BatteryConfigure = pBatteryConfigure;
    }
    if(cycleTime > 0)
    {
        g_cycleTime = cycleTime;
    }
    g_batterySdkTimerHandle = TimerHalOpen();
    
    g_batteryTpye = batteryType;
    
    g_mutexHandle = xSemaphoreCreateMutex();
    return 0;
}








 
void BatterySdkCycleProcess(void)
{
    int16_t ret = -1;
    uint32_t tmpValue = 0;
    uint32_t volValue = 0;

    
    if(g_testModeFlag == 1)
    {
        
        g_sleepState = 1;
    }
    
    
    
    
    
    
    
    
    
    
    if(g_getTempSuccessFlag==0 || g_adGetStateFlag==0)
    {
        
        ret = BatteryHalGetNtc(&tmpValue);
        if(ret == 0)
        {
            
            xSemaphoreTake(g_mutexHandle, 0xFFFFFFFFUL);
            BatterySdkAdConversion(tmpValue,&g_batteryTemperature);
            xSemaphoreGive(g_mutexHandle);
            g_getTempSuccessFlag = 1;
            g_adGetStateFlag = 1;
            
            BatterySdkTmpErrorProcess();
        }
    }
    if((g_getVolSuccessFlag==0) || (g_adGetStateFlag==0))
    {
        
        ret = BatteryHalGetVoltage(&volValue);
        if(ret == 0)
        {
            xSemaphoreTake(g_mutexHandle, 0xFFFFFFFFUL);
            g_batteryVoltage = volValue;
            g_getVolSuccessFlag = 1;
            g_adGetStateFlag = 1;
            
            BatterySdkVoltageErrorProcess(g_batteryVoltage);
            xSemaphoreGive(g_mutexHandle);
        }
    }
    
    if(g_adGetStateFlag == 1)
    {
        g_adGetDelayTimeCount++;
        
        
        if(g_adGetDelayTimeCount>(1000/g_cycleTime))
        {
            
            g_adGetStateFlag = 0;
            g_getTempSuccessFlag = 0;
            g_getVolSuccessFlag = 0;
            g_adGetDelayTimeCount = 0;
        }
    }
    
    
    if(g_testModeFlag == 0)
    {
        
        BatterySdkChargeStateManage();
    }
}









 
int16_t BatterySdkGetVoltage(uint32_t *pVoltage)
{
    if(g_getVolSuccessFlag == 0)
    {
        return -1;
    }
    
    xSemaphoreTake(g_mutexHandle, 0xFFFFFFFFUL);
    *pVoltage = g_batteryVoltage;  
    
    xSemaphoreGive(g_mutexHandle);
    return 0;
}









 
int16_t BatterySdkGetTemperature(int32_t *pTemperature)
{
    uint32_t resister;
    if(g_getTempSuccessFlag == 0)
    {
        return -1;
    }
    
    xSemaphoreTake(g_mutexHandle, 0xFFFFFFFFUL);
    resister = g_batteryTemperature;
    
    xSemaphoreGive(g_mutexHandle);
    ResisterToTemperature(resister,pTemperature);
    return 0; 
}








 
uint8_t BatterySdkGetBatteyStatus(void)
{
    return g_batteryConnectFlag;
}








 
uint32_t BatterySdkGetBatteySoc(void)
{

    uint32_t i = 0;
    uint32_t percentTableSize;
    const uint32_t *pTable = ((void *) 0); 
    uint32_t section = 0;
    uint32_t voltage = 0;
    
    if(g_batteryTpye == E_BATTERY_FDK)
    {
        percentTableSize = sizeof(g_FDKPercentTable) / sizeof(g_FDKPercentTable[0]);
        pTable = g_FDKPercentTable;
    }
    else if(g_batteryTpye == E_BATTERY_XYSR)
    {
        percentTableSize = sizeof(g_XYSRPercentTable) / sizeof(g_XYSRPercentTable[0]);
        pTable = g_XYSRPercentTable;
    }
    else
    {
        return 0;
    }
    section = (100 * 1000) / (percentTableSize - 1);
    
    if(BatterySdkGetVoltage(&voltage) != 0)
    {
        return 0;
    }
	if(voltage < pTable[0])
    {
		return 0;
    }
    
	for(i=0; i< percentTableSize; i++){
		if(voltage < pTable[i])
			return (i*section - (section * (uint32_t)(pTable[i] - voltage)) / 
			(uint32_t)(pTable[i] - pTable[i-1]))/1000;
	}

	return 100;    
}








 
uint8_t BatterySdkGetBatteyVoltageAlarm(void)
{
    if(g_BatteryConfigure != ((void *) 0))
    {
        if(BatterySdkGetBatteySoc() < g_BatteryConfigure->batterySocAlarmValue)
        {
            return 1;
        }
    }
    return 0;
}









 
uint8_t BatterySdkGetBatteyTempAlarm(void)
{
    return g_batteryTempAlarmFlag;
}








 
uint32_t BatterySdkGetBatteyChargingDuration(void)
{
    uint32_t time = 0;
    if(BatteryHalGetState() == 1) 
    {
        if(g_batterySdkTimerHandle < 0)
        {
            return 0;
        }
        time = TimerHalGetRemainder(g_batterySdkTimerHandle);
        if(time == 0)
        {
            return 0;
        }
        return (g_middleVoltageChargeTime - time)/1000;
    }
    return 0;
}
