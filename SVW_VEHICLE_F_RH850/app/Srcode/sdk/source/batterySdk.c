/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: batterySdk.c
 Author: 
 Created Time: 
 Description: 
 Others: 
 *************************************************/
/****************************** include ***************************************/
//#include "rtos_api_hal.h"
#include "osHal.h"
#include "batteryHal.h"
#include "timerHal.h"
#include "powerManageSdk.h"
#include "batterySdk.h"
#include "logHal.h"
#include "BswM_EcuM.h"
#include "BswM_Ext.h"
#include "NVM.h"

/****************************** Macro Definitions ******************************/
#define VIN_LEN 17    


/****************************** Type Definitions ******************************/
/* ===== 静态配置：所有模块级常量按主题归到 g_cfg ===== */
typedef struct
{
    /* 单体电池规格 */
    struct
    {
        uint32_t count;                  //单体个数
        uint32_t maxMv;                  //最大电压，单位mv
        uint32_t minMv;                  //最小电压，单位mv
    } cell;

    /* 充电相关时长 */
    struct
    {
        uint32_t middleMs;               //中压充电总时长，单位ms
        uint32_t tempCheckIntervalMs;    //中/低压充电期间温度检查间隔，单位ms
    } charge;

    /* 涓流充电参数 */
    struct
    {
        uint32_t periodMs;               //PWM周期，单位ms
        uint32_t offMs;                  //PWM周期内关闭充电时长，单位ms
        uint32_t tempIntervalMs;         //温度检查间隔，单位ms
    } trickle;

    /* 深度亏电恢复参数 */
    struct
    {
        uint32_t thresholdMv;            //深度亏电判定阈值，单位mv
        uint32_t boostOffMs;             //恢复期boost关闭时长，单位ms
    } deepLow;

    /* 温度→NTC电阻查表 */
    struct
    {
        const uint32_t *table;
        uint32_t        size;
    } tempRMap;

    /* SOC 百分比查表（按电池型号） */
    struct
    {
        const uint32_t *fdkTable;
        uint32_t        fdkSize;
        const uint32_t *xysrTable;
        uint32_t        xysrSize;
    } soc;

    /* 老化检测内阻查表 */
    struct
    {
        const BatteryAgeMap_t *table;
        uint32_t               size;
    } ageMap;
} BatterySdkCfg_t;

    
/* 模块基础设施：句柄、互斥、配置、电池型号、运行周期 */
typedef struct
{
    int16_t                       sleepStateHandle;   //休眠状态handle
    int16_t                       timerHandle;        //timer句柄
    SemaphoreHandle_t             mutex;              //互斥锁句柄
    const BatteryConfigure_t     *config;             //错误处理回调注册
    BatteryType_E                 type;               //电池型号
    uint16_t                      cycleTime;          //process调用周期，单位ms
    uint8_t                       testMode;           //测试模式标记 0：非测试 1：测试
} BatterySdkInfra_t;

/* AD采样数据：温度/电压及采样状态 */
typedef struct
{
    uint32_t                      temperature;        //NTC电阻值（命名沿用历史）
    uint32_t                      voltage;            //备用电池电压，单位mv
    uint16_t                      reSampleDelay;      //重新采样延迟计数
    uint8_t                       tempReady;          //温度采样成功标记
    uint8_t                       voltReady;          //电压采样成功标记
    uint8_t                       sampleHold;         //采样数据保留标记，1：1s内复用现值
} BatterySdkSample_t;

/* 充电主状态机及对外暴露的告警/连接状态 */
typedef struct
{
    BatteryState_e                state;              //充电主状态机
    uint32_t                      tempCheckCount;     //中/低压充电温度检查累计时间，单位ms
    uint8_t                       sleepState;         //休眠态 0：休眠 1：唤醒
    uint8_t                       connectFlag;        //备用电池连接状态 0：连接 1：未连接
    uint8_t                       tempAlarmFlag;      //温度异常告警 0：normal 2：高温告警
} BatterySdkCharge_t;

/* 涓流充电子状态：PWM周期内计时与10min温度检查窗 */
typedef struct
{
    uint32_t                      cycleCount;         //PWM周期内累计时间，单位ms
    uint32_t                      windowCount;        //10min温度检查窗累计时间，单位ms
    uint8_t                       chargeOn;           //PWM当前相位 0：关 1：开
} BatterySdkTrickle_t;

/* 深度亏电boost恢复子状态 */
typedef struct
{
    uint32_t                      recoverCount;       //boost关闭计时，单位ms
} BatterySdkDeepLow_t;

/* 老化检测子状态机 */
typedef struct
{
    BatteryResisState_e           state;              //老化检测内部状态机
    BatteryState_e                stateBefore;        //进入老化检测前的主状态
    uint32_t                      dischargeVoltageFiltered; //放电电压平均值
    uint8_t                       reqFlag;            //检测请求标志
    uint8_t                       finishFlag;         //检测完成标志
    uint8_t                       result;             //检测结果
} BatterySdkAge_t;

typedef struct
{
    BatterySdkInfra_t             infra;       //模块基础设施：句柄、互斥锁、配置、电池型号、运行周期
    BatterySdkSample_t            sample;      //AD采样数据：温度/电压及采样状态
    BatterySdkCharge_t            charge;      //充电主状态机及对外暴露的告警/连接状态
    BatterySdkTrickle_t           trickle;     //涓流充电子状态：PWM周期内计时与10min温度检查窗
    BatterySdkDeepLow_t           deepLow;     //深度亏电boost恢复子状态
    BatterySdkAge_t               age;         //老化检测子状态机
} BatterySdkCtx_t;

/****************************** Global Variables ******************************/
static const uint32_t s_temperatureRMap[]         = {                    //温度--电压对应值，单位°C
    195650,    //-40 单位：°C
    184920,    // -39
    174850,    // -38
    165390,    // -37
    156510,    // -36
    148170,    // -35
    140330,    // -34
    132960,    // -33
    126020,    // -32
    119490,    // -31
    113350,    // -30
    107560,     // -29
    102120,     // -28
    96980,     // -27
    92130,     // -26
    87560,     // -25
    83240,     // -24
    79170,     // -23
    75320,     // -22
    71680,     // -21
    68240,     // -20
    64990,     // -19
    61920,     // -18
    59010,     // -17
    56260,     // -16
    53650,     // -15
    51180,     // -14
    48830,     // -13
    46610,     // -12
    44510,     // -11
    42510,     // -10
    40600,     // -9
    38790,     // -8
    37070,     // -7
    35440,     // -6
    33890,     // -5
    32420,     // -4
    31020,     // -3
    29690,     // -2
    28420,     // -1
    27220,     // 0
    26080,     // 1
    24990,     // 2
    23950,     // 3
    22960,     // 4
    22020,     // 5
    21120,     // 6
    20270,     // 7
    19450,     // 8
    18670,     // 9
    17930,     // 10
    17210,     // 11
    16530,     // 12
    15890,     // 13
    15270,     // 14
    14670,     // 15
    14110,     // 16
    13570,     // 17
    13050,     // 18
    12550,     // 19
    12080,     // 20
    11630,     // 21
    11190,     // 22
    10780,     // 23
    10380,     // 24
    10000,     // 25
    9630,      // 26
    9280,      // 27
    8950,      // 28
    8620,      // 29
    8310,      // 30
    8020,      // 31
    7730,      // 32
    7460,      // 33
    7200,      // 34
    6950,      // 35
    6710,      // 36
    6480,      // 37
    6250,      // 38
    6040,      // 39
    5830,      // 40
    5640,      // 41
    5450,      // 42
    5260,      // 43
    5090,      // 44
    4920,      // 45
    4750,      // 46
    4600,      // 47
    4450,      // 48
    4300,      // 49
    4160,      // 50
    4030,      // 51
    3900,      // 52
    3770,      // 53
    3650,      // 54
    3540,      // 55
    3420,      // 56
    3320,      // 57
    3210,      // 58
    3110,      // 59
    3010,      // 60
    2920,      // 61
    2830,      // 62
    2750,      // 63
    2670,      // 64
    2590,      // 65
    2510,      // 66
    2440,      // 67
    2360,      // 68
    2290,      // 69
    2230,      // 70
    2160,      // 71
    2100,      // 72
    2040,      // 73
    1980,      // 74
    1920,      // 75
    1870,      // 76
    1820,      // 77
    1770,      // 78
    1720,      // 79
    1670,      // 80
    1620,      // 81
    1580,      // 82
    1530,      // 83
    1490,      // 84
    1450,      // 85
    1410,      // 86
    1370,      // 87
    1340,      // 88
    1300,      // 89
    1270,      // 90
    1230,      // 91
    1200,      // 92
    1170,      // 93
    1140,      // 94
    1110,      // 95
    1080,      // 96
    1050,      // 97
    1030,      // 98
    1000,      // 99
    970       // 100---992.40
};

// const static uint32_t s_FDKPercentTable[] = {3100,3340,3539,3617,3662,3695,3716,3733,3750,3765,3774,3787,3795,3798,3813,3821,3828,3837,3845,3853,3863,3873,3882,3892,3894,3914,3958,3986,4018,4062,4117,4200};
const static uint32_t s_FDKPercentTable[] = {2133,2227,2359,2411,2441,2463,2477,2489,2500,2510,2516,2525,2530,2532,2542,2547,2552,2558,2563,2569,2575,2582,2588,2595,2596,2609,2639,2657,2679,2708,2745,2800};
const static uint32_t s_XYSRPercentTable[] = {3100,3358,3401,3494,3533,3560,3586,3606,3624,3637,3650,3660,3670,3680,3688,3698,3706,3713,3721,3730,3738,3739,3746,3760,3761,3768,3769,3775,3779,3795,3801,3815,3824,3837,3854,3876,3910,3940,3990,4030,4100,4200};
static const BatteryAgeMap_t s_batteryAgeMap[] =          //备用电池内阻核对表
{
     {0,329},
     {1,322},
     {2,315},
     {3,308},
     {4,301},
     {5,294},
     {6,285},
     {7,277},
     {8,268},
     {9,260},
     {10,251},
     {11,244},
     {12,237},
     {13,230},
     {14,223},
     {15,216},
     {16,210},
     {17,204},
     {18,198},
     {19,193},
     {20,189},
     {21,184},
     {22,179},
     {23,175},
     {24,170},
     {25,165},
     {26,160},
     {27,156},
     {28,151},
     {29,146},
     {30,141},
     {31,142},
     {32,138},
     {33,134},
     {34,130},
     {35,126},
     {36,122},
     {37,119},
     {38,115},
     {39,111},
     {40,107},
     {41,104},
     {42,102},
     {43,100},
     {44,97},
     {45,94},
     {46,91},
     {47,88},
     {48,86},
     {49,84},
     {50,83},
     {51,83},
     {52,82},
     {53,81},
     {54,80},
     {55,79},
     {56,78},
     {57,77},
     {58,76},
     {59,75},
     {60,75},
};

static BatterySdkCtx_t g_ctx =
{
    /* 基础设施：句柄初值-1表示尚未打开，cycleTime默认10ms */
    .infra   = { .sleepStateHandle = -1, .timerHandle = -1, .mutex = NULL,
                 .config = NULL, .type = E_BATTERY_XYSR, .cycleTime = 10, .testMode = 0 },
    /* 采样数据：上电默认全0，由首次采样填充 */
    .sample  = { 0 },
    /* 充电主状态机：上电默认进入Init态；connectFlag=1代表"未连接"，待首次温度采样后修正 */
    .charge  = { .state = E_BatteryState_Init, .tempCheckCount = 0,
                 .sleepState = 0,
                 .connectFlag = 1, .tempAlarmFlag = 0 },
    /* 涓流PWM子状态：上电默认全0 */
    .trickle = { 0 },
    /* 深度亏电恢复子状态：上电默认全0 */
    .deepLow = { 0 },
    /* 老化检测子状态：默认结果Invalid，进入老化前主状态视为StopCharge */
    .age     = { .state = E_BatteryResisState_Init, .stateBefore = E_BatteryState_StopCharge,
                 .dischargeVoltageFiltered = 0,
                 .reqFlag = 0, .finishFlag = 0,
                 .result = E_BatteryAgeResult_Invalid },
};

static const BatterySdkCfg_t g_cfg =
{
    .cell      = { 2, 1340, 1240 },
    .charge    = { 8*60*60*1000, 2*60*1000 },
    .trickle   = { 60*1000, 55*1000, 10*60*1000 },
    .deepLow   = { 1800, 5*1000 },
    .tempRMap  = { s_temperatureRMap,
                   sizeof(s_temperatureRMap)/sizeof(s_temperatureRMap[0]) },
    .soc       = { s_FDKPercentTable,
                   sizeof(s_FDKPercentTable)/sizeof(s_FDKPercentTable[0]),
                   s_XYSRPercentTable,
                   sizeof(s_XYSRPercentTable)/sizeof(s_XYSRPercentTable[0]) },
    .ageMap    = { s_batteryAgeMap,
                   sizeof(s_batteryAgeMap)/sizeof(s_batteryAgeMap[0]) },
};

static uint8_t g_batteryEnableFlag = 0; // 电池启用状态   0：未启用 1：已启用 (VIN未写入时不启用备电)

/****************************** Function Implementations ***************/
/*************************************************
  Function:       BatterySdkAdConversion
  Description:    模块内部接口，将AD采集的电压数据转换为温感的电阻值
  Input:          ntcValue：采集到的电压
  Output:         resisterOut： 温感电阻值
  Return:         无
  Others:         
*************************************************/
static void BatterySdkAdConversion(uint32_t ntcValue,uint32_t *resisterOut)
{
    int32_t refVoltage;
    uint32_t resisterPull;
    refVoltage = 3300;//3300mv
    resisterPull = 10000; // 20K

    if(ntcValue>=refVoltage)
    {
        ntcValue = refVoltage - 1;
    }
    *resisterOut = (resisterPull*ntcValue)/(refVoltage-ntcValue);
    
    return;
}

/*************************************************
  Function:       ResisterToTemperature
  Description:    模块内部接口，温感的电阻值转换为温度值
  Input:          resisterIn：电阻值
  Output:         tmpValue： 温度值  0.01C
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
static int16_t ResisterToTemperature(uint32_t resisterIn,int32_t *tmpValue)
{

  int32_t size;
  int32_t i;
  int32_t j;
  int32_t half;
  //uint32_t tem;
  
  if(resisterIn>=g_cfg.tempRMap.table[0])
  {
    *tmpValue = -5000;
    return 0;
  }

  size = g_cfg.tempRMap.size;
  i = 0;
  j = size;

  while(1)
  {
    if(j-i<2)
    {
      break;
    }
    half = (i+j)/2;
    if(resisterIn>g_cfg.tempRMap.table[half])
    {
      j = half;
    }
    else if(resisterIn==g_cfg.tempRMap.table[half])
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
    *tmpValue = (i-40)*100;//unit:0.01C
  }
  else
  {
    //tem = 
    *tmpValue = (i*100)+((j-i)*100)*(g_cfg.tempRMap.table[i]-resisterIn)/(g_cfg.tempRMap.table[i]-g_cfg.tempRMap.table[j]);
    *tmpValue -= 40*100;//unit:0.01C
  }

  return 0;
}

/*************************************************
  Function:       BatterySdkTmpErrorProcess
  Description:    模块内部接口，根据当前NTC电阻值判定电池连接状态、过温报警，并回调异常处理函数
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkTmpErrorProcess()
{
    uint8_t lowFlag = 0;
    uint8_t highFlag = 0;
    uint8_t prevConnect = g_ctx.charge.connectFlag;
    uint8_t prevAlarm   = g_ctx.charge.tempAlarmFlag;

    if(g_ctx.sample.temperature>=g_cfg.tempRMap.table[0])//<=-40C
    {
        lowFlag = 1; //电池未连接
        g_ctx.charge.connectFlag = 1;
    }
    else
    {
        if(g_ctx.charge.connectFlag == 1)
        {
            g_ctx.charge.connectFlag = 0;
        }
    }
    if(prevConnect != g_ctx.charge.connectFlag)
    {
        TBOX_PRINT("[BAT] connect %u -> %u (R=%u)\r\n",
                   prevConnect, g_ctx.charge.connectFlag, g_ctx.sample.temperature);
    }
    if(g_ctx.infra.config == NULL)
    {
        return;
    }
    if(g_ctx.sample.temperature<=g_cfg.tempRMap.table[g_ctx.infra.config->tempHighErrorValue+40])//>=50
    {
        highFlag = 1;
    } 

    if(g_ctx.sample.temperature < g_cfg.tempRMap.table[g_ctx.infra.config->tempHighAlarmValue+40]) //>70,温度报警
    {
        g_ctx.charge.tempAlarmFlag = 2;
    }
    else
    {
        g_ctx.charge.tempAlarmFlag = 0;
    }
    if(prevAlarm != g_ctx.charge.tempAlarmFlag)
    {
        TBOX_PRINT("[BAT] tempAlarm %u -> %u (R=%u)\r\n",
                   prevAlarm, g_ctx.charge.tempAlarmFlag, g_ctx.sample.temperature);
    }

    if(g_ctx.infra.config->batteryNoPlugInErrorFun != NULL)
    {
        g_ctx.infra.config->batteryNoPlugInErrorFun(lowFlag);
    }
    if(g_ctx.infra.config->batteryTemperatureHighErrorFun!=NULL)
    {
        g_ctx.infra.config->batteryTemperatureHighErrorFun(highFlag);
    }
    return ;
}

/*************************************************
  Function:       BatterySdkVoltageErrorProcess
  Description:    模块内部接口，判定电压过高/过低告警并回调异常处理函数，状态变化时打印一次
  Input:          volValue：当前电池电压，单位mv
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkVoltageErrorProcess(uint32_t volValue)
{
    static uint8_t s_prevHighFlag = 0xFF;
    static uint8_t s_prevLowFlag  = 0xFF;
    uint8_t lowFlag = 0;
    uint8_t highFlag = 0;

    if(g_ctx.infra.config!=NULL)
    {
        if(volValue>g_ctx.infra.config->voltageHighErrorValue)    //>5V
        {
            highFlag = 1;
        }
        if(volValue<g_ctx.infra.config->voltageLowErrorValue)     //200mv
        {
            lowFlag = 1;
        }

        if(s_prevHighFlag != highFlag)
        {
            TBOX_PRINT("[BAT] voltHighErr %u -> %u (V=%umv th=%umv)\r\n",
                       s_prevHighFlag, highFlag,
                       volValue, g_ctx.infra.config->voltageHighErrorValue);
            s_prevHighFlag = highFlag;
        }
        if(s_prevLowFlag != lowFlag)
        {
            TBOX_PRINT("[BAT] voltLowErr %u -> %u (V=%umv th=%umv)\r\n",
                       s_prevLowFlag, lowFlag,
                       volValue, g_ctx.infra.config->voltageLowErrorValue);
            s_prevLowFlag = lowFlag;
        }

        if(g_ctx.infra.config->batteryVoltageHighErrorFun != NULL)
        {
            g_ctx.infra.config->batteryVoltageHighErrorFun(highFlag);
        }
        if(g_ctx.infra.config->batteryVoltageLowErrorFun!=NULL)
        {
            g_ctx.infra.config->batteryVoltageLowErrorFun(lowFlag);
        }
    }
    return ;
}

/*************************************************
  Function:       BatterySdkChargeStateTemperatureCheck
  Description:    充电状态机：温度检查态，温度异常切到5min延时态，正常切到电压检查态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateTemperatureCheck(void)
{
    if(g_ctx.sample.tempReady == 1)
    {
        if(g_ctx.sample.temperature>=g_cfg.tempRMap.table[0+40]||g_ctx.sample.temperature<=g_cfg.tempRMap.table[50+40])
        {
            g_ctx.charge.state = E_BatteryState_Wait5MinDelay;
            //开始5min计时 
            TimerHalStartTime(g_ctx.infra.timerHandle,5*60*1000);
        }
        else
        {
            g_ctx.charge.state = E_BatteryState_BatteryVoltageCheck;
        }
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkChargeStateWait5MinDelay
  Description:    充电状态机：5min延时态，定时到后切回温度检查态；非休眠时停止充电
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateWait5MinDelay(void)
{
     if(TimerHalIsTimeout(g_ctx.infra.timerHandle)== 0)
     {
         TimerHalStopTime(g_ctx.infra.timerHandle);
         if(g_ctx.charge.sleepState == 0)
         {
             g_ctx.charge.state = E_BatteryState_StopCharge;
             BatteryHalDisableCharge();
         }
         else
         {
             g_ctx.charge.state = E_BatteryState_BatteryTemperatureCheck;
         }
     }
     else if(g_ctx.charge.sleepState == 0)
     {
         g_ctx.charge.state = E_BatteryState_StopCharge;
         BatteryHalDisableCharge();
     }
}

/*************************************************
  Function:       BatterySdkChargeStateVoltageCheck
  Description:    充电状态机：电压检查态，按电压判定深度亏电恢复/中压充电/低压充电分支
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateVoltageCheck(void)
{
    if(g_ctx.sample.voltReady == 1)
    {
        uint32_t batteryMaxVoltage;
        uint32_t batteryMinVoltage;

        batteryMaxVoltage = g_cfg.cell.maxMv * g_cfg.cell.count;
        batteryMinVoltage = g_cfg.cell.minMv * g_cfg.cell.count;
        
        // if(g_ctx.sample.voltage>batteryMaxVoltage)
        // {
        //     g_ctx.charge.state = E_BatteryState_HealthCheck;
        // }
        // else
        // {
            //深度亏电：先关闭boost释放升压负载，5秒后再恢复boost，避免充不上电
            if(g_ctx.sample.voltage <= g_cfg.deepLow.thresholdMv)
            {
                BatteryHalBoostDisable();
                BatteryHalEnableCharge();
                TimerHalStartTime(g_ctx.infra.timerHandle, g_cfg.charge.middleMs);
                g_ctx.deepLow.recoverCount = 0;
                g_ctx.charge.state = E_BatteryState_DeepLowVoltageRecover;
                return;
            }

            //电池电压已高于满电门限（双单体合并 maxMv*count），跳过8h大电流充电直接进涓流维护
            if(g_ctx.sample.voltage > batteryMaxVoltage)
            {
                BatteryHalDisableCharge();
                g_ctx.trickle.cycleCount = 0;
                g_ctx.trickle.windowCount = 0;
                g_ctx.trickle.chargeOn = 0;
                g_ctx.charge.state = E_BatteryState_TrickleCharge;
                return;
            }

            if(g_ctx.sample.voltage>batteryMinVoltage)
            {
                g_ctx.charge.state = E_BatteryState_MiddleVoltageCharge;
            }
            else
            {
                g_ctx.charge.state = E_BatteryState_LowVoltageCharge;
            }
            g_ctx.charge.tempCheckCount = 0;
            //开始8H计时
            TimerHalStartTime(g_ctx.infra.timerHandle,g_cfg.charge.middleMs);
            //开始充电
            BatteryHalEnableCharge();
        // }
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkChargeStateDeepLowVoltageRecover
  Description:    充电状态机：深度亏电恢复态，关闭boost 5s后再恢复，避免升压负载导致充不上电
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateDeepLowVoltageRecover(void)
{
    if(g_ctx.charge.sleepState == 0)
    {
        BatteryHalDisableCharge();
        BatteryHalBoostEnable();
        TimerHalStopTime(g_ctx.infra.timerHandle);
        g_ctx.deepLow.recoverCount = 0;
        g_ctx.charge.state = E_BatteryState_StopCharge;
        return;
    }

    g_ctx.deepLow.recoverCount += g_ctx.infra.cycleTime;
    if(g_ctx.deepLow.recoverCount < g_cfg.deepLow.boostOffMs)
    {
        return;
    }

    //5秒到，恢复boost，转入低压充电态继续走8h充电流程
    BatteryHalBoostEnable();
    g_ctx.deepLow.recoverCount = 0;
    g_ctx.charge.tempCheckCount = 0;
    g_ctx.charge.state = E_BatteryState_LowVoltageCharge;
}

/*************************************************
  Function:       BatterySdkChargeStateMiddleVoltageCharge
  Description:    充电状态机：中压充电态，8h超时进入涓流充电；每2min触发一次温度检查
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateMiddleVoltageCharge(void)
{
    //timer是否超时
    if(TimerHalIsTimeout(g_ctx.infra.timerHandle)== 0)
    {
        //停止计时
        TimerHalStopTime(g_ctx.infra.timerHandle);
        //停止充电
        BatteryHalDisableCharge();
        g_ctx.trickle.cycleCount = 0;
        g_ctx.trickle.windowCount = 0;
        g_ctx.trickle.chargeOn = 0;
        g_ctx.charge.tempCheckCount = 0;
        g_ctx.charge.state = E_BatteryState_TrickleCharge;
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        //停止充电
        BatteryHalDisableCharge();
    }
    else
    {
        //供应商规范：充电期间每2min检查一次温度，避免每10ms ping-pong
        g_ctx.charge.tempCheckCount += g_ctx.infra.cycleTime;
        if(g_ctx.charge.tempCheckCount >= g_cfg.charge.tempCheckIntervalMs)
        {
            g_ctx.charge.tempCheckCount = 0;
            g_ctx.charge.state = E_BatteryState_MiddleVoltageChargeCheckTem;
        }
    }
}

/*************************************************
  Function:       BatterySdkChargeStateMiddleVoltageChargeCheckTem
  Description:    充电状态机：中压充电温度检查态，超温切充电完成态，正常切回中压充电态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateMiddleVoltageChargeCheckTem(void)
{
    if(g_ctx.sample.tempReady)
    {
        if(g_ctx.sample.temperature>=g_cfg.tempRMap.table[0+40]||g_ctx.sample.temperature<=g_cfg.tempRMap.table[60+40])
        {
            g_ctx.charge.state = E_BatteryState_MiddleVoltageChargeFinish;
            //停止充电
            BatteryHalDisableCharge();
        }
        else if(g_ctx.charge.sleepState == 0)
        {
            g_ctx.charge.state = E_BatteryState_StopCharge;
            //停止充电
            BatteryHalDisableCharge();
            //停止计时
            TimerHalStopTime(g_ctx.infra.timerHandle);
        }
        else
        {
            g_ctx.charge.state = E_BatteryState_MiddleVoltageCharge;
        }
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        //停止充电
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkChargeStateLowVoltageCharge
  Description:    充电状态机：低压充电态，8h超时进入涓流充电；每2min触发一次温度检查
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateLowVoltageCharge(void)
{
    if(TimerHalIsTimeout(g_ctx.infra.timerHandle)== 0)
    {
        TimerHalStopTime(g_ctx.infra.timerHandle);
        //8h充满，进入涓流充电
        BatteryHalDisableCharge();
        g_ctx.trickle.cycleCount = 0;
        g_ctx.trickle.windowCount = 0;
        g_ctx.trickle.chargeOn = 0;
        g_ctx.charge.tempCheckCount = 0;
        g_ctx.charge.state = E_BatteryState_TrickleCharge;
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        //停止充电
        BatteryHalDisableCharge();
    }
    else
    {
        //供应商规范：充电期间每2min检查一次温度，避免每10ms ping-pong
        g_ctx.charge.tempCheckCount += g_ctx.infra.cycleTime;
        if(g_ctx.charge.tempCheckCount >= g_cfg.charge.tempCheckIntervalMs)
        {
            g_ctx.charge.tempCheckCount = 0;
            g_ctx.charge.state = E_BatteryState_LowVoltageChargeCheckTem;
        }
    }
}

/*************************************************
  Function:       BatterySdkChargeStateLowVoltageChargeCheckTem
  Description:    充电状态机：低压充电温度检查态，超温切停止充电态，正常切回低压充电态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateLowVoltageChargeCheckTem(void)
{
    if(g_ctx.sample.tempReady == 1)
    {
        if(g_ctx.sample.temperature>=g_cfg.tempRMap.table[0+40]||g_ctx.sample.temperature<=g_cfg.tempRMap.table[60+40])
        {
            g_ctx.charge.state = E_BatteryState_StopCharge;
            BatteryHalDisableCharge();
            TimerHalStopTime(g_ctx.infra.timerHandle);
        }
        else
        {
            g_ctx.charge.state = E_BatteryState_LowVoltageCharge;
        }
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        //停止充电
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkChargeStateTrickleCharge
  Description:    充电状态机：涓流充电态，按PWM周期(60s周期、关55s/开5s)切换充电；每10min触发一次温度检查
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateTrickleCharge(void)
{
    if(g_ctx.charge.sleepState == 0)
    {
        BatteryHalDisableCharge();
        g_ctx.trickle.chargeOn = 0;
        g_ctx.trickle.cycleCount = 0;
        g_ctx.trickle.windowCount = 0;
        g_ctx.charge.state = E_BatteryState_StopCharge;
        return;
    }

    //周期内 [0, 55s) 关闭充电，[55s, 60s) 打开充电
    if(g_ctx.trickle.cycleCount < g_cfg.trickle.offMs)
    {
        if(g_ctx.trickle.chargeOn != 0)
        {
            BatteryHalDisableCharge();
            g_ctx.trickle.chargeOn = 0;
            TBOX_PRINT("[BAT] trickle PWM OFF (cycle=%ums window=%ums)\r\n",
                       g_ctx.trickle.cycleCount, g_ctx.trickle.windowCount);
        }
    }
    else
    {
        if(g_ctx.trickle.chargeOn == 0)
        {
            BatteryHalEnableCharge();
            g_ctx.trickle.chargeOn = 1;
            TBOX_PRINT("[BAT] trickle PWM ON (cycle=%ums window=%ums)\r\n",
                       g_ctx.trickle.cycleCount, g_ctx.trickle.windowCount);
        }
    }

    g_ctx.trickle.cycleCount += g_ctx.infra.cycleTime;
    if(g_ctx.trickle.cycleCount >= g_cfg.trickle.periodMs)
    {
        g_ctx.trickle.cycleCount = 0;
    }

    g_ctx.trickle.windowCount += g_ctx.infra.cycleTime;
    if(g_ctx.trickle.windowCount >= g_cfg.trickle.tempIntervalMs)
    {
        //10min充电窗口结束，先关闭充电再去检查温度
        BatteryHalDisableCharge();
        g_ctx.trickle.chargeOn = 0;
        g_ctx.trickle.cycleCount = 0;
        g_ctx.trickle.windowCount = 0;
        g_ctx.charge.state = E_BatteryState_TrickleChargeCheckTem;
    }
}

/*************************************************
  Function:       BatterySdkChargeStateTrickleChargeCheckTem
  Description:    充电状态机：涓流充电温度检查态，超温切停止充电态，正常切回涓流充电态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateTrickleChargeCheckTem(void)
{
    if(g_ctx.charge.sleepState == 0)
    {
        BatteryHalDisableCharge();
        g_ctx.charge.state = E_BatteryState_StopCharge;
        return;
    }

    if(g_ctx.sample.tempReady != 1)
    {
        return;
    }

    //温度超出 0-60℃ 范围则停止充电，在范围内则继续下一轮涓流充电
    if(g_ctx.sample.temperature >= g_cfg.tempRMap.table[0+40] || g_ctx.sample.temperature <= g_cfg.tempRMap.table[60+40])
    {
        BatteryHalDisableCharge();
        g_ctx.charge.state = E_BatteryState_StopCharge;
    }
    else
    {
        g_ctx.charge.state = E_BatteryState_TrickleCharge;
    }
}

/*************************************************
  Function:       BatterySdkChargeStateChargeFinishCheckTem
  Description:    充电状态机：充电结束温度检查态，温度异常切10min延时态，正常时切回结束检查态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateChargeFinishCheckTem(void)
{
    if(g_ctx.sample.tempReady == 1)
    {
        if(g_ctx.sample.temperature>=g_cfg.tempRMap.table[0+40]||g_ctx.sample.temperature<=g_cfg.tempRMap.table[60+40])
        {
            g_ctx.charge.state = E_BatteryState_ChargeFinishDelay10Min;
            //开始10min计时 
            TimerHalStartTime(g_ctx.infra.timerHandle,10*60*1000);
        }
        else if(g_ctx.charge.sleepState == 0)
        {
            g_ctx.charge.state = E_BatteryState_StopCharge;
            //停止充电
            BatteryHalDisableCharge();
        }
        else
        {
            g_ctx.charge.state = E_BatteryState_ChargeFinishCheckTem;
        }
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        //停止充电
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkChargeStateChargeFinishDelay10Min
  Description:    充电状态机：充电结束10min延时态，定时到后切回充电结束温度检查态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateChargeFinishDelay10Min(void)
{
    if(TimerHalIsTimeout(g_ctx.infra.timerHandle)== 0)
    {
        TimerHalStopTime(g_ctx.infra.timerHandle);
        //停止充电
        BatteryHalDisableCharge();
        g_ctx.charge.state = E_BatteryState_ChargeFinishCheckTem;
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        //停止充电
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkChargeStateInit
  Description:    充电状态机：初始化态，温度采样就绪后切到温度检查态
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateInit(void)
{
    if(g_ctx.sample.tempReady == 1)
    {
        g_ctx.charge.state = E_BatteryState_BatteryTemperatureCheck;
    }
    else if(g_ctx.charge.sleepState == 0)
    {
        g_ctx.charge.state = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

/*************************************************
  Function:       BatterySdkFindAgeMapIndex
  Description:    模块内部接口，根据当前温度在老化内阻表中查找对应索引
  Input:          temperature：当前温度，单位℃
  Output:         无
  Return:         对应温度区间的索引值
  Others:
*************************************************/
static uint8_t BatterySdkFindAgeMapIndex(int32_t temperature)                 // 根据当前温度找到对应表索引
{
    uint8_t i = 0;                                                            
    uint8_t size = (uint8_t)g_cfg.ageMap.size;      

    if(temperature <= g_cfg.ageMap.table[0].temperature)                      // 如果温度小于等于最小温度点
    {
        return 0;                                                             //返回第一个
    }

    for(i = 0; i < (size - 1); i++)                                           
    {
        if((temperature >= g_cfg.ageMap.table[i].temperature) &&              // 如果温度大于等于当前点
           (temperature < g_cfg.ageMap.table[i + 1].temperature))             // 并且小于下一点
        {
            return i;                                                         // 返回当前索引
        }
    }
    return (size - 1);                                                        // 如果温度高于最大点，返回最后一个
}

/*************************************************
  Function:       BatterySdkGetVoltageAverage
  Description:    模块内部接口，连续采样5次电压并去掉最大最小值后取平均，作为滤波结果
  Input:          无
  Output:         pVoltage：滤波后的电压值，单位mv
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
static int16_t BatterySdkGetVoltageAverage(uint32_t *pVoltage)   //电压滤波
{
    uint8_t i = 0;
    uint32_t voltage = 0;
    uint32_t sum = 0;
    uint32_t maxValue = 0;
    uint32_t minValue = 0xFFFFFFFF;

    if(pVoltage == NULL)
    {
        return -1;
    }
    for(i=0;i<5;i++)
    {
        if(BatteryHalGetVoltage(&voltage) != 0)                               // 如果任意一次采样失败
        {
            return -1;                                                        // 直接返回失败
        }
        sum += voltage;
        if(voltage > maxValue)
        {
            maxValue = voltage;
        }
        if(voltage < minValue)
        {
            minValue = voltage;
        }
    }
    sum = sum - maxValue - minValue;
    *pVoltage = sum / 3;
    // TBOX_PRINT("voltage_pingjunzhi = %d\n", *pVoltage);
    return 0;
}

/*************************************************
  Function:       BatterySdkCalculateCurrent
  Description:    模块内部接口，根据放电后电压计算放电电流（基于固定负载阻值）
  Input:          volAfter：放电后电压，单位mv
  Output:         无
  Return:         放电电流，单位mA
  Others:
*************************************************/
static uint32_t BatterySdkCalculateCurrent(uint32_t volAfter)   //计算放电电流
{
    return (volAfter * 100) / 1175;
}

/*************************************************
  Function:       BatterySdkCalculateResistance
  Description:    模块内部接口，根据放电前后电压差和放电电流计算电池内阻
  Input:          volBefore：放电前空载电压，单位mv
                  volAfter：放电后电压，单位mv
  Output:         无
  Return:         内阻，单位毫欧
  Others:
*************************************************/
static uint32_t BatterySdkCalculateResistance(uint32_t volBefore, uint32_t volAfter)   //计算内阻
{
    uint32_t deltaVol = 0;           //电压差mv
    uint32_t dischargeCurrent = 0;   //放电电流mA

    if(volBefore <= volAfter)
    {
        return 0;
    }
    deltaVol = volBefore - volAfter;
    dischargeCurrent = BatterySdkCalculateCurrent(volAfter);
    // TBOX_PRINT("dischargeCurrent = %d\n", dischargeCurrent);  //放电电流调试打印

    if(dischargeCurrent == 0)
    {
        return 0;
    }
    return (deltaVol * 1000) / dischargeCurrent;
}

/*************************************************
  Function:       HandleIntVoltageCheckState
  Description:    老化检测子状态：采集空载电压，OCV低于2.4V或采样失败时直接结束检测
  Input:          ElectricDischargeTime：放电计时指针
  Output:         volValueSoc：保存空载电压
  Return:         无
  Others:
*************************************************/
static void HandleIntVoltageCheckState(uint32_t *volValueSoc, uint32_t *ElectricDischargeTime)  //空载电压
{
    uint32_t voltage = 0;
    (void)ElectricDischargeTime;

    if(BatterySdkGetVoltageAverage(&voltage) != 0)                                   //空载电压采样失败
    {
        g_ctx.age.result = E_BatteryAgeResult_Invalid;                      
        g_ctx.age.finishFlag = 1;                                      
        g_ctx.age.reqFlag = 0;                                         
        g_ctx.age.state = E_BatteryResisState_Init;                       
        BatteryHalDisableOut();                                               
        return; 
    }
    *volValueSoc = voltage;                                                   // 保存空载电压
    // TBOX_PRINT("voltage_kongzai = %d\n", voltage);
     if(voltage <= BATTERY_AGE_CHECK_MIN_OCV_MV)                     // 空载电压小于2.4V，不进行老化检测
    {
        g_ctx.age.result = E_BatteryAgeResult_Invalid;
        g_ctx.age.finishFlag = 1;
        g_ctx.age.reqFlag = 0;
        g_ctx.age.state = E_BatteryResisState_Init;
        BatteryHalDisableOut();
        return;
    }
    BatteryHalDisableCharge();                                                // 放电前先关闭充电，避免影响测量
    BatteryHalEnableOut();                                                    // 打开放电开关
    *ElectricDischargeTime = 0;                                               // 放电计时清零
    g_ctx.age.state = E_BatteryResisState_Discharge;                      // 切换到放电状态
}

/*************************************************
  Function:       HandleDischargeState
  Description:    老化检测子状态：放电态，500ms~600ms期间累计采样并取均值，600ms后结束放电
  Input:          volValueSoc：空载电压（仅占位）
  Output:         ElectricDischargeTime：放电计时
  Return:         无
  Others:
*************************************************/
static void HandleDischargeState(uint32_t *volValueSoc, uint32_t *ElectricDischargeTime) //放电电压采集
{
    static uint32_t dischargeVoltageSum = 0;     //放电电压累加和
    static uint8_t dischargeSampleCount = 0;   //采样次数
    uint32_t voltage = 0;
    (void)volValueSoc;                                                        
    (*ElectricDischargeTime)++;                                               // 每次进入状态，放电计数加1，10ms一次

    if(*ElectricDischargeTime == 1)                                          // 刚进入放电状态时初始化后段采样变量
    {
        dischargeVoltageSum = 0;                                             
        dischargeSampleCount = 0;                                            
        g_ctx.age.dischargeVoltageFiltered = 0;                               
    }

    if(*ElectricDischargeTime >= (uint32_t)DISCHARGE_SAMPLE_START_500MS)
    {
        if(BatterySdkGetVoltageAverage(&voltage) == 0)
        {
            // TBOX_PRINT("voltage_fangdian = %d\n", voltage);
            dischargeVoltageSum += voltage;
            dischargeSampleCount++;
        }
    }

    if(*ElectricDischargeTime >=(uint32_t)DISCHARGE_DELAY_600MS)                // 如果放电时间达到600ms
    {
        BatteryHalDisableOut();    //关闭放电开关
        if(dischargeSampleCount == 0)
        {
            g_ctx.age.result = E_BatteryAgeResult_Invalid;
            g_ctx.age.finishFlag = 1;
            g_ctx.age.reqFlag = 0;
            g_ctx.age.state = E_BatteryResisState_Init;
        }
        else
        {
            g_ctx.age.dischargeVoltageFiltered = dischargeVoltageSum / dischargeSampleCount;
            g_ctx.age.state = E_BatteryResisState_DischargeVolCheck;             // 切换到采放电电压状态
        }
    }
}

/*************************************************
  Function:       HandleDischargeVolCheckState
  Description:    老化检测子状态：放电电压确认态，校验放电电压有效性后切到内阻计算态
  Input:          ElectricDischargeTime：放电计时（仅占位）
  Output:         DischargevolValue：放电电压
  Return:         无
  Others:
*************************************************/
static void HandleDischargeVolCheckState(uint32_t *DischargevolValue, uint32_t *ElectricDischargeTime) //放电电压确认
{
    (void)ElectricDischargeTime;

    if(g_ctx.age.dischargeVoltageFiltered == 0)                                   //放电电压采样失败
    {
        g_ctx.age.result = E_BatteryAgeResult_Invalid;                      
        g_ctx.age.finishFlag = 1;                                      
        g_ctx.age.reqFlag = 0;                                         
        g_ctx.age.state = E_BatteryResisState_Init;                                                                     
        return;                                                               
    }
    *DischargevolValue = g_ctx.age.dischargeVoltageFiltered;
    g_ctx.age.state = E_BatteryResisState_End;   // 切换到结束计算状态
}

/*************************************************
  Function:       HandleResistanceCalculationState
  Description:    老化检测子状态：内阻计算态，按温度查表判定老化结果并打印
  Input:          volValueSoc：放电前空载电压，单位mv
                  DischargevolValue：放电后电压，单位mv
                  ElectricDischargeTime：放电计时（仅占位）
  Output:         无
  Return:         无
  Others:
*************************************************/
static void HandleResistanceCalculationState(uint32_t volValueSoc, uint32_t DischargevolValue, uint32_t *ElectricDischargeTime)  //计算内阻
{
    int32_t batteryTemp = 2500;     //默认温度25℃
    int32_t tempC = 25;             //转换成整数值
    uint8_t index = 0;              //查表索引
    uint32_t batteryAgeResistance = 0;    //内阻

    (void)ElectricDischargeTime;
    batteryAgeResistance = BatterySdkCalculateResistance(volValueSoc, DischargevolValue);
    if(batteryAgeResistance > BATTERY_AGE_RESISTANCE_OFFSET)
    {
        batteryAgeResistance -= BATTERY_AGE_RESISTANCE_OFFSET;
    }
    else
    {
        batteryAgeResistance = 0;
    }
    // TBOX_PRINT("resistance = %d\n", batteryAgeResistance);  //内阻调试打印
    // TBOX_PRINT("volBefore = %d, volAfter = %d, resistance = %d\r\n",
    //            volValueSoc,
    //            DischargevolValue,
    //            batteryAgeResistance);
    if(batteryAgeResistance == 0)                                           
    {
        g_ctx.age.result = E_BatteryAgeResult_Invalid;                                                                     
    }
    else
    {
        if(BatterySdkGetTemperature(&batteryTemp) == 0)
        {
            tempC = batteryTemp / 100;
            // TBOX_PRINT("batteryTemp = %d, tempC = %d\n", batteryTemp, tempC);
        }
        index = BatterySdkFindAgeMapIndex(tempC);
        if(batteryAgeResistance >= g_cfg.ageMap.table[index].eolResistance)    //内阻大于限定值即为老化
        {
            g_ctx.age.result = E_BatteryAgeResult_Aging;
        }
        else
        {
            g_ctx.age.result = E_BatteryAgeResult_Normal;
        }
    }
    TBOX_PRINT("[BAT] age check done, result=%u resistance=%umohm volBefore=%umv volAfter=%umv tempC=%d\r\n",
               g_ctx.age.result, batteryAgeResistance,
               volValueSoc, DischargevolValue, (int)tempC);
    g_ctx.age.finishFlag = 1;                                         
    g_ctx.age.reqFlag = 0;                                             
    g_ctx.age.state = E_BatteryResisState_Init;                           
}


/*************************************************
  Function:       BatterySdkHealthCheck
  Description:    备用电池老化检测主流程，按子状态机依次完成空载/放电/内阻计算
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkHealthCheck(void)
{
    // TBOX_PRINT("BatterySdkHealthCheck enter, req=%d, resisState=%d\r\n",
    //        g_ctx.age.reqFlag,
    //        g_ctx.age.state);
    static uint32_t volValueSoc = 0;            //放电前电压
    static uint32_t DischargevolValue = 0;      //放电后电压
    static uint32_t ElectricDischargeTime = 0;  //内部计时

     if(g_ctx.age.reqFlag == 0)    //无检测请求
    {
       return; 
    }

    if(ElectricDischargeTime > (uint32_t)BATTERY_CHECK_TIMEOUT)
    {
       g_ctx.age.result = E_BatteryAgeResult_Invalid;
       g_ctx.age.finishFlag = 1;
       g_ctx.age.reqFlag = 0;
       g_ctx.age.state = E_BatteryResisState_Init;
       ElectricDischargeTime = 0;
       BatteryHalDisableOut();
       return; 
    }

    switch(g_ctx.age.state)    //状态机处理
    {
        case E_BatteryResisState_Init:
            volValueSoc = 0;
            DischargevolValue = 0;
            ElectricDischargeTime = 0;
            g_ctx.age.state = E_BatteryResisState_IntVoltageCheck;
            break;
            
        case E_BatteryResisState_IntVoltageCheck:
            HandleIntVoltageCheckState(&volValueSoc, &ElectricDischargeTime);
            break;
            
        case E_BatteryResisState_Discharge:
            HandleDischargeState(&volValueSoc, &ElectricDischargeTime);
            break;
            
        case E_BatteryResisState_DischargeVolCheck:
            HandleDischargeVolCheckState(&DischargevolValue, &ElectricDischargeTime);
            break;
            
        case E_BatteryResisState_End:
            HandleResistanceCalculationState(volValueSoc, DischargevolValue,&ElectricDischargeTime);
            break;
            
        default:
            g_ctx.age.state = E_BatteryResisState_Init;
            BatteryHalDisableOut();
            break;
    }
}

/*************************************************
  Function:       BatterySdkChargeStateManage
  Description:    备用电池充电主状态机调度入口，按当前状态分发到对应处理函数，并打印状态变化日志
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void BatterySdkChargeStateManage()
{
    BatteryState_e prevState = g_ctx.charge.state;

    if(g_ctx.charge.state == E_BatteryState_Init)
    {
        BatterySdkChargeStateInit();
    }
    else if(g_ctx.charge.state == E_BatteryState_BatteryTemperatureCheck)
    {
        BatterySdkChargeStateTemperatureCheck();
    }
    else if(g_ctx.charge.state == E_BatteryState_Wait5MinDelay)
    {
        BatterySdkChargeStateWait5MinDelay();
    }
    else if(g_ctx.charge.state == E_BatteryState_BatteryVoltageCheck)
    {
        BatterySdkChargeStateVoltageCheck();
    }
    else if(g_ctx.charge.state == E_BatteryState_DeepLowVoltageRecover)
    {
        BatterySdkChargeStateDeepLowVoltageRecover();
    }
    else if(g_ctx.charge.state == E_BatteryState_MiddleVoltageCharge)
    {
        BatterySdkChargeStateMiddleVoltageCharge();
    }
    else if(g_ctx.charge.state == E_BatteryState_MiddleVoltageChargeCheckTem)
    {
        BatterySdkChargeStateMiddleVoltageChargeCheckTem();
    }
    else if(g_ctx.charge.state == E_BatteryState_MiddleVoltageChargeFinish)
    {
        if(g_ctx.charge.sleepState == 0)
        {
            g_ctx.charge.state = E_BatteryState_StopCharge;
            //停止充电
            BatteryHalDisableCharge();
        }
    }
    else if(g_ctx.charge.state == E_BatteryState_LowVoltageCharge)
    {
        BatterySdkChargeStateLowVoltageCharge();
    }
    else if(g_ctx.charge.state == E_BatteryState_LowVoltageChargeCheckTem)
    {
        BatterySdkChargeStateLowVoltageChargeCheckTem();
    }
    else if(g_ctx.charge.state == E_BatteryState_LowVoltageChargeFinish)
    {
        if(g_ctx.charge.sleepState == 0)
        {
            g_ctx.charge.state = E_BatteryState_StopCharge;
            //停止充电
            BatteryHalDisableCharge();
        }
    }
    else if(g_ctx.charge.state == E_BatteryState_HealthCheck)
    {
        //TBOX_PRINT("enter E_BatteryState_HealthCheck\r\n");
        BatterySdkHealthCheck();
        if(g_ctx.age.finishFlag == 1)                                      // 如果本次老化检测已经结束
    {
        g_ctx.charge.state = g_ctx.age.stateBefore;                        
    }
    }
    else if(g_ctx.charge.state == E_BatteryState_TrickleCharge)
    {
        BatterySdkChargeStateTrickleCharge();
    }
    else if(g_ctx.charge.state == E_BatteryState_TrickleChargeCheckTem)
    {
        BatterySdkChargeStateTrickleChargeCheckTem();
    }
    else if(g_ctx.charge.state == E_BatteryState_ChargeFinishCheckTem)
    {
        BatterySdkChargeStateChargeFinishCheckTem();
    }
    else if(g_ctx.charge.state == E_BatteryState_ChargeFinishDelay10Min)
    {
        BatterySdkChargeStateChargeFinishDelay10Min();
    }
    else if(g_ctx.charge.state == E_BatteryState_StopCharge)
    {
        //唤醒
        if(g_ctx.charge.sleepState == 1)
        {
            g_ctx.charge.state = E_BatteryState_Init;
        }
    }

    if(prevState != g_ctx.charge.state)
    {
        TBOX_PRINT("[BAT] charge state %d -> %d, V=%umv R=%u sleep=%u\r\n",
                   (int)prevState, (int)g_ctx.charge.state,
                   g_ctx.sample.voltage, g_ctx.sample.temperature,
                   g_ctx.charge.sleepState);
    }
}


/*************************************************
  Function:       CheckVinIsInvalid
  Description:    模块内部接口，判断NVM中VIN码是否为全0或全FF的无效状态
  Input:          无
  Output:         无
  Return:         0：VIN有效
                  1：VIN无效
  Others:
*************************************************/
static uint8_t CheckVinIsInvalid(void)
{
    uint8_t i;
    uint8_t vinZero[VIN_LEN] = {0};
    uint8_t vinFF[VIN_LEN];

    for(i = 0; i < VIN_LEN; i++)
    {
        vinFF[i] = 0xFF;
    }

    if(NvM_ReadBlock(NvMBlock_DIDF190, NvMBlockRamBuffer7) == E_NOT_OK) // may need to change
    {
        // TBOX_PRINT("read vin error\r\n");
        return 1;
    }

    if ((memcmp(NvMBlockRamBuffer7, vinZero, VIN_LEN) == 0) ||
        (memcmp(NvMBlockRamBuffer7, vinFF, VIN_LEN) == 0))
    {
        // TBOX_PRINT("CheckVinIsInvalid\r\n");
        return 1;
    }

    return 0;
}

/*************************************************
  Function:       BatterySdkInit
  Description:    SDK备用电池管理模块初始化接口
  Input:          pBatteryConfigure：错误处理回调注册
                  cycleTime：设置process周期调用接口调用周期
                  batteryType：电池型号
  Output:         函数执行结果
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkInit(const BatteryConfigure_t *pBatteryConfigure,uint16_t cycleTime,BatteryType_E batteryType)
{
    const char modulName[] = {'B','a','t','t','e','r','y','S','d','k'};
    if(pBatteryConfigure != NULL)
    {
        g_ctx.infra.config = pBatteryConfigure;
    }
    if(cycleTime > 0)
    {
        g_ctx.infra.cycleTime = cycleTime;
    }
    g_ctx.infra.timerHandle = TimerHalOpen();
    g_ctx.infra.sleepStateHandle = PowerManageSdkOpenHandle(modulName);
    g_ctx.infra.type = batteryType;
    
    g_ctx.infra.mutex = xSemaphoreCreateMutex();

    if(CheckVinIsInvalid() == 1)
    {
        BatteryHalBoostDisable();
        g_batteryEnableFlag = 0;
    }
    else
    {
        BatteryHalBoostEnable();
        g_batteryEnableFlag = 1;
    }
    TBOX_PRINT("[BAT] init: cycleTime=%ums type=%d cfg=%p\r\n",
               g_ctx.infra.cycleTime, (int)g_ctx.infra.type,
               (const void *)g_ctx.infra.config);
    return 0;
}

/*************************************************
  Function:       BatterySdkCycleProcess
  Description:    备用电池管理周期调用接口，该接口需要以一定周期进行循环调用
  Input:          无
  Output:         无
  Return:         
  Others:         
*************************************************/
void BatterySdkCycleProcess(void)
{
    int16_t ret = -1;
    uint32_t tmpValue = 0;
    uint32_t volValue = 0;

    //是否测试模式
    if(g_ctx.infra.testMode == 1)
    {
        //休眠状态设置为唤醒
        g_ctx.charge.sleepState = 1;
    }
    else
    {
        uint8_t prevSleep = g_ctx.charge.sleepState;
        g_ctx.charge.sleepState = PowerManageSdkGetSleepState(g_ctx.infra.sleepStateHandle);
        if(prevSleep != g_ctx.charge.sleepState)
        {
            TBOX_PRINT("[BAT] sleepState %u -> %u, chargeState=%d handle=%d\r\n",
                       prevSleep, g_ctx.charge.sleepState,
                       (int)g_ctx.charge.state, (int)g_ctx.infra.sleepStateHandle);
        }
        //是否休眠状态
        if(g_ctx.charge.sleepState == 0)
        {
            //获取休眠状态成功响应
            PowerManageSdkSetSleepAck(g_ctx.infra.sleepStateHandle);
        }
    }
    if(g_ctx.sample.tempReady==0 || g_ctx.sample.sampleHold==0)
    {
        //获取NTC电压
        ret = BatteryHalGetNtc(&tmpValue);
        if(ret == 0)
        {
            //计算真实温度值
            xSemaphoreTake(g_ctx.infra.mutex, portMAX_DELAY);
            BatterySdkAdConversion(tmpValue,&g_ctx.sample.temperature);
            xSemaphoreGive(g_ctx.infra.mutex);
            g_ctx.sample.tempReady = 1;
            g_ctx.sample.sampleHold = 1;
            //温度异常处理
            BatterySdkTmpErrorProcess();
        }
    }
    if((g_ctx.sample.voltReady==0) || (g_ctx.sample.sampleHold==0))
    {
        //获取电压
        ret = BatteryHalGetVoltage(&volValue);
        if(ret == 0)
        {
            xSemaphoreTake(g_ctx.infra.mutex, portMAX_DELAY);
            g_ctx.sample.voltage = volValue;
            g_ctx.sample.voltReady = 1;
            g_ctx.sample.sampleHold = 1;
            xSemaphoreGive(g_ctx.infra.mutex);
            //电压异常处理（持锁外，避免TBOX_PRINT阻塞其他读电压/温度调用者）
            BatterySdkVoltageErrorProcess(volValue);
        }
    }
    
    if(g_ctx.sample.sampleHold == 1)
    {
        g_ctx.sample.reSampleDelay++;
        
        //1s获取一次
        if(g_ctx.sample.reSampleDelay>(1000/g_ctx.infra.cycleTime))
        {
            //重新获取状态数据
            g_ctx.sample.sampleHold = 0;
            g_ctx.sample.tempReady = 0;
            g_ctx.sample.voltReady = 0;
            g_ctx.sample.reSampleDelay = 0;
        }
    }
    
    //是否正常模式
    if(g_ctx.infra.testMode == 0)
    {
        //备用电池充电状态管理
        BatterySdkChargeStateManage();
    }

    //60秒心跳：长时间观察状态用，避免周期任务里刷屏
    {
        static uint32_t s_heartbeatCount = 0;
        s_heartbeatCount += g_ctx.infra.cycleTime;
        if(s_heartbeatCount >= 60u*1000u)
        {
            s_heartbeatCount = 0;
            TBOX_PRINT("[BAT] heartbeat: state=%d V=%umv R=%u sleep=%u connect=%u tempAlarm=%u\r\n",
                       (int)g_ctx.charge.state, g_ctx.sample.voltage, g_ctx.sample.temperature,
                       g_ctx.charge.sleepState, g_ctx.charge.connectFlag, g_ctx.charge.tempAlarmFlag);
        }
    }
}

/*************************************************
  Function:       BatterySdkGetVoltage
  Description:    获取备用电池电压接口
  Input:          无
  Output:         pVoltage：电压值，单位mv
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkGetVoltage(uint32_t *pVoltage)
{
    if(g_ctx.sample.voltReady == 0)
    {
        return -1;//value not valid
    }
    //RTOS_HalDisableScheduler();
    xSemaphoreTake(g_ctx.infra.mutex, portMAX_DELAY);
    *pVoltage = g_ctx.sample.voltage;  
    //RTOS_HalEnableScheduler();
    xSemaphoreGive(g_ctx.infra.mutex);
    return 0;
}

/*************************************************
  Function:       BatterySdkGetTemperature
  Description:    获取备用电池温度接口
  Input:          无
  Output:         pTemperature：备用电池温度值，单位：0.001摄氏度
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkGetTemperature(int32_t *pTemperature)
{
    uint32_t resister;
    if(g_ctx.sample.tempReady == 0)
    {
        return -1;//value not valid
    }
    //RTOS_HalDisableScheduler();
    xSemaphoreTake(g_ctx.infra.mutex, portMAX_DELAY);
    resister = g_ctx.sample.temperature;
    //RTOS_HalEnableScheduler();
    xSemaphoreGive(g_ctx.infra.mutex);
    //TBOX_PRINT("resister = %d\r\n", resister);     //NTC热敏电阻阻值打印
    ResisterToTemperature(resister,pTemperature);
    return 0; 
}

/*************************************************
  Function:       BatterySdkRequestAgeCheck
  Description:    请求执行一次备用电池老化检测，记录进入前的主状态并切到健康检查态
  Input:          无
  Output:         无
  Return:         0：成功
  Others:
*************************************************/
int16_t BatterySdkRequestAgeCheck(void)                                       // 请求执行一次备用电池老化检测
{
    // TBOX_PRINT("BatterySdkRequestAgeCheck enter\r\n");
    // TBOX_PRINT("g_ctx.charge.state before request = %d\r\n", g_ctx.charge.state);
    TBOX_PRINT("[BAT] age check requested, prevState=%d V=%umv R=%u\r\n",
               (int)g_ctx.charge.state, g_ctx.sample.voltage, g_ctx.sample.temperature);
    if(g_ctx.charge.state != E_BatteryState_HealthCheck)
    {
        g_ctx.age.stateBefore = g_ctx.charge.state;                         // 记录进入老化检测前的主状态
    }

    g_ctx.age.reqFlag = 1;                                             // 置位检测请求标志
    g_ctx.age.finishFlag = 0;                                          // 清完成标志
    g_ctx.age.result = E_BatteryAgeResult_Invalid;                          // 结果先置为无效
    g_ctx.age.state = E_BatteryResisState_Init;                           // 状态机从初始状态开始
    BatteryHalDisableOut();                                                   // 先确保放电关闭
    g_ctx.charge.state = E_BatteryState_HealthCheck; 
    return 0;                                                                 // 返回成功
}

/*************************************************
  Function:       BatterySdkGetAgeCheckResult
  Description:    获取最近一次备用电池老化检测结果
  Input:          无
  Output:         pResult：检测结果，参考 BatteryAgeResult_e
  Return:         0：成功
                  -1：失败（指针为空或检测尚未完成）
  Others:
*************************************************/
int16_t BatterySdkGetAgeCheckResult(uint8_t *pResult)                         // 获取最近一次老化检测结果
{
    if(pResult == NULL)                                                       // 如果输出指针为空
    {
        return -1;                                                            // 返回失败
    }

    if(g_ctx.age.finishFlag == 0)                                      // 如果本次检测尚未完成
    {
        return -1;                                                            // 返回失败
    }

    *pResult = g_ctx.age.result;                                            // 输出当前检测结果
    return 0;                                                                 // 返回成功
}

#if(0)
/*************************************************
  Function:       BatterySdkSetTestMode
  Description:    设置备用电池进入测试模式接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkSetTestMode(void)
{
    g_ctx.infra.testMode = 1;
    return 0;
}

/*************************************************
  Function:       BatterySdkSetNormalMode
  Description:    设置备用电池从测试模式进入正常模式接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkSetNormalMode(void)
{
    //退出测试模式
    g_ctx.infra.testMode = 0;
    
    //放电失能
    BatteryHalDisableOut();
    
    return 0;
}

/*************************************************
  Function:       BatterySdkTestModeChargeStart
  Description:    设置测试模式下备用电池充电接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkTestModeChargeStart(void)
{
    //是否测试模式
    if(g_ctx.infra.testMode == 1)
    {
        //充电使能
        BatteryHalEnableCharge();
        return 0;
    }
    
    return -1;
}

/*************************************************
  Function:       BatterySdkTestModeChargeStop
  Description:    设置测试模式下备用电池停止充电接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkTestModeChargeStop(void)
{
    //是否测试模式
    if(g_ctx.infra.testMode == 1)
    {
        //充电失能
        BatteryHalDisableCharge();
        return 0;
    }
    
    return -1;
}

/*************************************************
  Function:       BatterySdkTestModeDischargeStart
  Description:    设置测试模式下备用电池放电接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkTestModeDischargeStart(void)
{
    //是否测试模式
    if(g_ctx.infra.testMode == 1)
    {
        //放电使能
        BatteryHalEnableOut();
        return 0;
    }
    
    return -1;
}

/*************************************************
  Function:       BatterySdkTestModeDischargeStop
  Description:    设置测试模式下备用电池停止放电接口
  Input:          无
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t BatterySdkTestModeDischargeStop(void)
{
    //是否测试模式
    if(g_ctx.infra.testMode == 1)
    {
        //放电失能
        BatteryHalDisableOut();
        return 0;
    }
    
    return -1;
}
#endif
/*************************************************
  Function:       BatterySdkGetBatteyStatus
  Description:    获取备用电池的连接状态
  Input:          无
  Output:         无
  Return:         0：连接
                  1：未连接
  Others:         
*************************************************/
uint8_t BatterySdkGetBatteyStatus(void)
{
    return g_ctx.charge.connectFlag;
}

/*************************************************
  Function:       BatterySdkGetBatteySoc
  Description:    获取备用电池的电池电量接口
  Input:          无
  Output:         无
  Return:         电池电量百分比
  Others:         
*************************************************/
uint32_t BatterySdkGetBatteySoc(void)
{

    uint32_t i = 0;
    uint32_t percentTableSize;
    const uint32_t *pTable = NULL; 
    uint32_t section = 0;
    uint32_t voltage = 0;
    
    if(g_ctx.infra.type == E_BATTERY_FDK)
    {
        percentTableSize = g_cfg.soc.fdkSize;
        pTable = g_cfg.soc.fdkTable;
    }
    else if(g_ctx.infra.type == E_BATTERY_XYSR)
    {
        percentTableSize = g_cfg.soc.xysrSize;
        pTable = g_cfg.soc.xysrTable;
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

/*************************************************
  Function:       BatterySdkGetBatteyVoltageAlarm
  Description:    获取备用电池的电量过低报警状态
  Input:          无
  Output:         0：nomal
                  1：电量过低警告
  Others:         
*************************************************/
uint8_t BatterySdkGetBatteyVoltageAlarm(void)
{
    if(g_ctx.infra.config != NULL)
    {
        if(BatterySdkGetBatteySoc() < g_ctx.infra.config->batterySocAlarmValue)
        {
            return 1;
        }
    }
    return 0;
}

/*************************************************
  Function:       BatterySdkGetBatteyTempAlarm
  Description:    获取备用电池的温度报警状态
  Input:          无
  Output:         0：nomal
                  1：预留
                  2：高温警告
  Others:         
*************************************************/
uint8_t BatterySdkGetBatteyTempAlarm(void)
{
    return g_ctx.charge.tempAlarmFlag;
}

/*************************************************
  Function:       BatterySdkGetBatteyChargingDuration
  Description:    获取备用电池的充电时长,单位s
  Input:          无
  Output:         0：未充电
                  >0:充电时长
  Others:         
*************************************************/
uint32_t BatterySdkGetBatteyChargingDuration(void)
{
    uint32_t time = 0;
    if(BatteryHalGetState() == 1) // 充电
    {
        if(g_ctx.infra.timerHandle < 0)
        {
            return 0;
        }
        time = TimerHalGetRemainder(g_ctx.infra.timerHandle);
        if(time == 0)
        {
            return 0;
        }
        return (g_cfg.charge.middleMs - time)/1000;
    }
    return 0;
}

uint8_t BatterySdkGetBatteryEnableFlag(void)
{
    return g_batteryEnableFlag;
}

/*************************************************
  Function:       BatterySdkIsChargeActiveForDtc
  Description:    提供给备用电池DTC模块的充电状态判断接口
                  优先根据充电状态机判断当前是否处于充电管理有效阶段，
                  同时兼容HAL层充电命令状态
  Input:          无
  Output:         无
  Return:         0：当前不满足DTC定义下的充电状态
                  1：当前满足DTC定义下的充电状态
  Others:
*************************************************/
uint8_t BatterySdkIsChargeActiveForDtc(void)
{
    switch(g_ctx.charge.state)                                               
    {
        case E_BatteryState_DeepLowVoltageRecover:                           
        case E_BatteryState_MiddleVoltageCharge:                             
        case E_BatteryState_MiddleVoltageChargeCheckTem:                     
        case E_BatteryState_LowVoltageCharge:                                
        case E_BatteryState_LowVoltageChargeCheckTem:                        
        case E_BatteryState_TrickleCharge:                                   
        case E_BatteryState_TrickleChargeCheckTem:                           
        {
            return 1;                                                       
        }

        default:                                                             
        {
            return 0;                                                       
        }
    }
}