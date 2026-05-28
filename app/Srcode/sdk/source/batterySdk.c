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

static const uint32_t g_cellNumber                = 2;                   //备用电池单体个数
static const uint32_t g_cellMaxVoltage            = 1340;                //单体电池最大电压单位：mv
static const uint32_t g_cellMinVoltage            = 1240;                //单体电池最小电压单位：mv
//static const uint32_t g_lowVoltageChargeTime      = 6*60*60*1000;        //检测到电压过低后备用电池放电时长，单位ms
static const uint32_t g_middleVoltageChargeTime   = 8*60*60*1000;        //备用电池充电时长，单位ms    
static const uint32_t g_temperatureRMap[]         = {                    //温度--电压对应值，单位°C
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

// const static uint32_t g_FDKPercentTable[] = {3100,3340,3539,3617,3662,3695,3716,3733,3750,3765,3774,3787,3795,3798,3813,3821,3828,3837,3845,3853,3863,3873,3882,3892,3894,3914,3958,3986,4018,4062,4117,4200};
const static uint32_t g_FDKPercentTable[] = {2133,2227,2359,2411,2441,2463,2477,2489,2500,2510,2516,2525,2530,2532,2542,2547,2552,2558,2563,2569,2575,2582,2588,2595,2596,2609,2639,2657,2679,2708,2745,2800};
const static uint32_t g_XYSRPercentTable[] = {3100,3358,3401,3494,3533,3560,3586,3606,3624,3637,3650,3660,3670,3680,3688,3698,3706,3713,3721,3730,3738,3739,3746,3760,3761,3768,3769,3775,3779,3795,3801,3815,3824,3837,3854,3876,3910,3940,3990,4030,4100,4200};
static const BatteryAgeMap_t g_batteryAgeMap[] =          //备用电池内阻核对表
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
    
static int16_t g_sleepStateHandle = -1;                         //获取休眠状态handle
static int16_t g_batterySdkTimerHandle= -1;                      //timer句柄
static const BatteryConfigure_t *g_BatteryConfigure = NULL;    //注册异常处理回调接口
static uint32_t g_batteryTemperature = 0;                       //备用电池温度
static uint32_t g_batteryVoltage = 0;                           //备用电池电压
static uint8_t g_sleepState = 0;                                //休眠状态，0：休眠1：唤醒
static uint16_t g_cycleTime = 10;                               //>0，单位ms
static uint8_t g_getTempSuccessFlag = 0;                        //获取温度成功标记0：未成功 1：成功
static uint8_t g_getVolSuccessFlag = 0;                         //获取电压成功标记 0：未成功，1：成功
static uint16_t g_adGetDelayTimeCount = 0;                      //重新获取状态时间计数
static uint8_t g_adGetStateFlag = 0;                            //重新获取状态标记，0：需要重新获取，1：不需要获取
static BatteryState_e g_batteryState = E_BatteryState_Init;     //电池管理状态机
static uint8_t g_testModeFlag = 0;                              //测试模式标记 0：非测试模式1：测试模式
static SemaphoreHandle_t g_mutexHandle = NULL;                  //互斥锁句柄
static uint8_t g_batteryConnectFlag = 1;                        //备用电池连接状态 0：连接   1：未连接
static BatteryType_E g_batteryTpye = E_BATTERY_XYSR;            //备用电池电池型号
//static uint8_t g_batteryVoltageAlarmFlag = 0;                   //备用电池电压异常警告标记  0：normal 1:低压警告 2：高压警告
static uint8_t g_batteryTempAlarmFlag = 0;                      //备用电池温度异常警告标记  0：normal 1：低温警告 2；高温警告
static BatteryResisState_e g_batteryResisState = E_BatteryResisState_Init;     //备用电池老化检测状态机
static uint8_t g_batteryAgeCheckReqFlag = 0;                      // 老化检测请求标志，1 表示需要执行一次检测
static uint8_t g_batteryAgeCheckFinishFlag = 0;                   // 老化检测完成标志，1 表示检测流程已结束
static uint8_t g_batteryAgeResult = E_BatteryAgeResult_Invalid;   // 老化检测结果
static uint32_t g_batteryAgeResistance = 0;                       // 老化检测电阻值
static uint8_t g_batteryAgeLife = 0;                             // 最近一次老化检测寿命值
static uint32_t g_batteryDischargeVoltageFiltered = 0;           // 保存400ms~500ms期间采样得到的放电电压平均值
static BatteryState_e g_batteryStateBeforeAgeCheck = E_BatteryState_StopCharge;   // 进入老化检测前的电池状态


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
    *tmpValue = (i-40)*100;//unit:0.01C
  }
  else
  {
    //tem = 
    *tmpValue = (i*100)+((j-i)*100)*(g_temperatureRMap[i]-resisterIn)/(g_temperatureRMap[i]-g_temperatureRMap[j]);
    *tmpValue -= 40*100;//unit:0.01C
  }

  return 0;
}

static void BatterySdkTmpErrorProcess()
{
    uint8_t lowFlag = 0;
    uint8_t highFlag = 0;

    if(g_batteryTemperature>=g_temperatureRMap[0])//<=-40C
    {
        lowFlag = 1; //电池未连接
        g_batteryConnectFlag = 1;
    }
    else
    {
        if(g_batteryConnectFlag == 1)
        {
            g_batteryConnectFlag = 0;
        }
    }
    if(g_BatteryConfigure == NULL)
    {
        return;
    }
    if(g_batteryTemperature<=g_temperatureRMap[g_BatteryConfigure->tempHighErrorValue+40])//>=50
    {
        highFlag = 1;
    } 

    if(g_batteryTemperature < g_temperatureRMap[g_BatteryConfigure->tempHighAlarmValue+40]) //>70,温度报警
    {
        g_batteryTempAlarmFlag = 2;
    }
    else
    {
        g_batteryTempAlarmFlag = 0;
    }

    if(g_BatteryConfigure->batteryNoPlugInErrorFun != NULL)
    {
        g_BatteryConfigure->batteryNoPlugInErrorFun(lowFlag);
    }
    if(g_BatteryConfigure->batteryTemperatureHighErrorFun!=NULL)
    {
        g_BatteryConfigure->batteryTemperatureHighErrorFun(highFlag);
    }
    return ;
}

static void BatterySdkVoltageErrorProcess(uint32_t volValue)
{
    uint8_t lowFlag = 0;
    uint8_t highFlag = 0;

    if(g_BatteryConfigure!=NULL)
    {
        if(volValue>g_BatteryConfigure->voltageHighErrorValue)    //>5V
        {
            highFlag = 1;
        }
        if(volValue<g_BatteryConfigure->voltageLowErrorValue)     //200mv
        {
            lowFlag = 1;
        }

        if(g_BatteryConfigure->batteryVoltageHighErrorFun != NULL)
        {
            g_BatteryConfigure->batteryVoltageHighErrorFun(highFlag);
        }
        if(g_BatteryConfigure->batteryVoltageLowErrorFun!=NULL)
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
            //开始5min计时 
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
        
        // if(g_batteryVoltage>batteryMaxVoltage)
        // {
        //     g_batteryState = E_BatteryState_HealthCheck;
        // }
        // else
        // {
            if(g_batteryVoltage>batteryMinVoltage)
            {
                g_batteryState = E_BatteryState_MiddleVoltageCharge;
            }
            else
            {
                g_batteryState = E_BatteryState_LowVoltageCharge;
            }
            //开始8H计时 
            TimerHalStartTime(g_batterySdkTimerHandle,g_middleVoltageChargeTime);
            //开始充电
            BatteryHalEnableCharge();
        // }
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateMiddleVoltageCharge(void)
{
    //timer是否超时
    if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
    {
        //停止计时
        TimerHalStopTime(g_batterySdkTimerHandle);
        //停止充电
        BatteryHalDisableCharge();
        g_batteryState = E_BatteryState_TrickleCharge;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        //停止充电
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
            //停止充电
            BatteryHalDisableCharge();
        }
        else if(g_sleepState == 0)
        {
            g_batteryState = E_BatteryState_StopCharge;
            //停止充电
            BatteryHalDisableCharge();
            //停止计时
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
        //停止充电
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateLowVoltageCharge(void)
{
    if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
    {
        TimerHalStopTime(g_batterySdkTimerHandle);
        //停止充电
        BatteryHalDisableCharge();
        g_batteryState = E_BatteryState_LowVoltageChargeFinish;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        //停止充电
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
        //停止充电
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
            //开始10min计时 
            TimerHalStartTime(g_batterySdkTimerHandle,10*60*1000);
        }
        else if(g_sleepState == 0)
        {
            g_batteryState = E_BatteryState_StopCharge;
            //停止充电
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
        //停止充电
        BatteryHalDisableCharge();
    }
}

static void BatterySdkChargeStateChargeFinishDelay10Min(void)
{
    if(TimerHalIsTimeout(g_batterySdkTimerHandle)== 0)
    {
        TimerHalStopTime(g_batterySdkTimerHandle);
        //停止充电
        BatteryHalDisableCharge();
        g_batteryState = E_BatteryState_ChargeFinishCheckTem;
    }
    else if(g_sleepState == 0)
    {
        g_batteryState = E_BatteryState_StopCharge;
        //停止充电
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

static uint8_t BatterySdkFindAgeMapIndex(int32_t temperature)                 // 根据当前温度找到对应表索引
{
    uint8_t i = 0;                                                            
    uint8_t size = sizeof(g_batteryAgeMap) / sizeof(g_batteryAgeMap[0]);      

    if(temperature <= g_batteryAgeMap[0].temperature)                         // 如果温度小于等于最小温度点
    {
        return 0;                                                             //返回第一个
    }

    for(i = 0; i < (size - 1); i++)                                           
    {
        if((temperature >= g_batteryAgeMap[i].temperature) &&                 // 如果温度大于等于当前点
           (temperature < g_batteryAgeMap[i + 1].temperature))                // 并且小于下一点
        {
            return i;                                                         // 返回当前索引
        }
    }
    return (size - 1);                                                        // 如果温度高于最大点，返回最后一个
}

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

static uint32_t BatterySdkCalculateCurrent(uint32_t volAfter)   //计算放电电流
{
    return (volAfter * 100) / 1175;
}

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

static void HandleIntVoltageCheckState(uint32_t *volValueSoc, uint32_t *ElectricDischargeTime)  //空载电压
{
    uint32_t voltage = 0;
    (void)ElectricDischargeTime;

    if(BatterySdkGetVoltageAverage(&voltage) != 0)                                   //空载电压采样失败
    {
        g_batteryAgeResult = E_BatteryAgeResult_Invalid;                      
        g_batteryAgeCheckFinishFlag = 1;                                      
        g_batteryAgeCheckReqFlag = 0;                                         
        g_batteryResisState = E_BatteryResisState_Init;                       
        BatteryHalDisableOut();                                               
        return; 
    }
    *volValueSoc = voltage;                                                   // 保存空载电压
    // TBOX_PRINT("voltage_kongzai = %d\n", voltage);
     if(voltage <= BATTERY_AGE_CHECK_MIN_OCV_MV)                     // 空载电压小于2.4V，不进行老化检测
    {
        g_batteryAgeResult = E_BatteryAgeResult_Invalid;
        g_batteryAgeCheckFinishFlag = 1;
        g_batteryAgeCheckReqFlag = 0;
        g_batteryResisState = E_BatteryResisState_Init;
        BatteryHalDisableOut();
        return;
    }
    BatteryHalDisableCharge();                                                // 放电前先关闭充电，避免影响测量
    BatteryHalEnableOut();                                                    // 打开放电开关
    *ElectricDischargeTime = 0;                                               // 放电计时清零
    g_batteryResisState = E_BatteryResisState_Discharge;                      // 切换到放电状态
}

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
        g_batteryDischargeVoltageFiltered = 0;                               
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
            g_batteryAgeResult = E_BatteryAgeResult_Invalid;
            g_batteryAgeCheckFinishFlag = 1;
            g_batteryAgeCheckReqFlag = 0;
            g_batteryResisState = E_BatteryResisState_Init;
        }
        else
        {
            g_batteryDischargeVoltageFiltered = dischargeVoltageSum / dischargeSampleCount;
            g_batteryResisState = E_BatteryResisState_DischargeVolCheck;             // 切换到采放电电压状态
        }
    }
}

static void HandleDischargeVolCheckState(uint32_t *DischargevolValue, uint32_t *ElectricDischargeTime) //放电电压确认
{
    (void)ElectricDischargeTime;

    if(g_batteryDischargeVoltageFiltered == 0)                                   //放电电压采样失败
    {
        g_batteryAgeResult = E_BatteryAgeResult_Invalid;                      
        g_batteryAgeCheckFinishFlag = 1;                                      
        g_batteryAgeCheckReqFlag = 0;                                         
        g_batteryResisState = E_BatteryResisState_Init;                                                                     
        return;                                                               
    }
    *DischargevolValue = g_batteryDischargeVoltageFiltered;
    g_batteryResisState = E_BatteryResisState_End;   // 切换到结束计算状态
}

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
        g_batteryAgeResult = E_BatteryAgeResult_Invalid;                                                                     
    }
    else
    {
        if(BatterySdkGetTemperature(&batteryTemp) == 0)
        {
            tempC = batteryTemp / 100;
            // TBOX_PRINT("batteryTemp = %d, tempC = %d\n", batteryTemp, tempC);
        }
        index = BatterySdkFindAgeMapIndex(tempC);
        if(batteryAgeResistance >= g_batteryAgeMap[index].eolResistance)    //内阻大于限定值即为老化
        {
            g_batteryAgeResult = E_BatteryAgeResult_Aging;
        }
        else
        {
            g_batteryAgeResult = E_BatteryAgeResult_Normal;
        }
    }
    g_batteryAgeCheckFinishFlag = 1;                                         
    g_batteryAgeCheckReqFlag = 0;                                             
    g_batteryResisState = E_BatteryResisState_Init;                           
}


static void BatterySdkHealthCheck(void)
{
    // TBOX_PRINT("BatterySdkHealthCheck enter, req=%d, resisState=%d\r\n",
    //        g_batteryAgeCheckReqFlag,
    //        g_batteryResisState);
    static uint32_t volValueSoc = 0;            //放电前电压
    static uint32_t DischargevolValue = 0;      //放电后电压
    static uint32_t ElectricDischargeTime = 0;  //内部计时

     if(g_batteryAgeCheckReqFlag == 0)    //无检测请求
    {
       return; 
    }

    if(ElectricDischargeTime > (uint32_t)BATTERY_CHECK_TIMEOUT)
    {
       g_batteryAgeResult = E_BatteryAgeResult_Invalid;
       g_batteryAgeCheckFinishFlag = 1;
       g_batteryAgeCheckReqFlag = 0;
       g_batteryResisState = E_BatteryResisState_Init;
       ElectricDischargeTime = 0;
       BatteryHalDisableOut();
       return; 
    }

    switch(g_batteryResisState)    //状态机处理
    {
        case E_BatteryResisState_Init:
            volValueSoc = 0;
            DischargevolValue = 0;
            ElectricDischargeTime = 0;
            g_batteryResisState = E_BatteryResisState_IntVoltageCheck;
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
            g_batteryResisState = E_BatteryResisState_Init;
            BatteryHalDisableOut();
            break;
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
            //停止充电
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
            //停止充电
            BatteryHalDisableCharge();
        }
    }
    else if(g_batteryState == E_BatteryState_HealthCheck)
    {
        //TBOX_PRINT("enter E_BatteryState_HealthCheck\r\n");
        BatterySdkHealthCheck();
        if(g_batteryAgeCheckFinishFlag == 1)                                      // 如果本次老化检测已经结束
    {
        g_batteryState = g_batteryStateBeforeAgeCheck;                        
    }
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
        //唤醒
        if(g_sleepState == 1)
        {
            g_batteryState = E_BatteryState_Init;
        }
    }
}

#define VIN_LEN 17
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
        g_BatteryConfigure = pBatteryConfigure;
    }
    if(cycleTime > 0)
    {
        g_cycleTime = cycleTime;
    }
    g_batterySdkTimerHandle = TimerHalOpen();
    g_sleepStateHandle = PowerManageSdkOpenHandle(modulName);
    g_batteryTpye = batteryType;
    
    g_mutexHandle = xSemaphoreCreateMutex();

    // if(CheckVinIsInvalid() == 1)
    // {
    //     BatteryHalBoostDisable();
    // }
    // else
    {
        BatteryHalBoostEnable();
    }
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
    if(g_testModeFlag == 1)
    {
        //休眠状态设置为唤醒
        g_sleepState = 1;
    }
    else
    {
        g_sleepState = PowerManageSdkGetSleepState(g_sleepStateHandle);
        //是否休眠状态
        if(g_sleepState == 0)
        {
            //获取休眠状态成功响应
            PowerManageSdkSetSleepAck(g_sleepStateHandle);
        }
    }
    if(g_getTempSuccessFlag==0 || g_adGetStateFlag==0)
    {
        //获取NTC电压
        ret = BatteryHalGetNtc(&tmpValue);
        if(ret == 0)
        {
            //计算真实温度值
            xSemaphoreTake(g_mutexHandle, portMAX_DELAY);
            BatterySdkAdConversion(tmpValue,&g_batteryTemperature);
            xSemaphoreGive(g_mutexHandle);
            g_getTempSuccessFlag = 1;
            g_adGetStateFlag = 1;
            //温度异常处理
            BatterySdkTmpErrorProcess();
        }
    }
    if((g_getVolSuccessFlag==0) || (g_adGetStateFlag==0))
    {
        //获取电压
        ret = BatteryHalGetVoltage(&volValue);
        if(ret == 0)
        {
            xSemaphoreTake(g_mutexHandle, portMAX_DELAY);
            g_batteryVoltage = volValue;
            g_getVolSuccessFlag = 1;
            g_adGetStateFlag = 1;
            //电压异常处理
            BatterySdkVoltageErrorProcess(g_batteryVoltage);
            xSemaphoreGive(g_mutexHandle);
        }
    }
    
    if(g_adGetStateFlag == 1)
    {
        g_adGetDelayTimeCount++;
        
        //1s获取一次
        if(g_adGetDelayTimeCount>(1000/g_cycleTime))
        {
            //重新获取状态数据
            g_adGetStateFlag = 0;
            g_getTempSuccessFlag = 0;
            g_getVolSuccessFlag = 0;
            g_adGetDelayTimeCount = 0;
        }
    }
    
    //是否正常模式
    if(g_testModeFlag == 0)
    {
        //备用电池充电状态管理
        BatterySdkChargeStateManage();
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
    if(g_getVolSuccessFlag == 0)
    {
        return -1;//value not valid
    }
    //RTOS_HalDisableScheduler();
    xSemaphoreTake(g_mutexHandle, portMAX_DELAY);
    *pVoltage = g_batteryVoltage;  
    //RTOS_HalEnableScheduler();
    xSemaphoreGive(g_mutexHandle);
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
    if(g_getTempSuccessFlag == 0)
    {
        return -1;//value not valid
    }
    //RTOS_HalDisableScheduler();
    xSemaphoreTake(g_mutexHandle, portMAX_DELAY);
    resister = g_batteryTemperature;
    //RTOS_HalEnableScheduler();
    xSemaphoreGive(g_mutexHandle);
    //TBOX_PRINT("resister = %d\r\n", resister);     //NTC热敏电阻阻值打印
    ResisterToTemperature(resister,pTemperature);
    return 0; 
}

int16_t BatterySdkRequestAgeCheck(void)                                       // 请求执行一次备用电池老化检测
{
    // TBOX_PRINT("BatterySdkRequestAgeCheck enter\r\n");
    // TBOX_PRINT("g_batteryState before request = %d\r\n", g_batteryState);
    if(g_batteryState != E_BatteryState_HealthCheck)
    {
        g_batteryStateBeforeAgeCheck = g_batteryState;                         // 记录进入老化检测前的主状态
    }

    g_batteryAgeCheckReqFlag = 1;                                             // 置位检测请求标志
    g_batteryAgeCheckFinishFlag = 0;                                          // 清完成标志
    g_batteryAgeResult = E_BatteryAgeResult_Invalid;                          // 结果先置为无效
    g_batteryResisState = E_BatteryResisState_Init;                           // 状态机从初始状态开始
    BatteryHalDisableOut();                                                   // 先确保放电关闭
    g_batteryState = E_BatteryState_HealthCheck; 
    return 0;                                                                 // 返回成功
}

int16_t BatterySdkGetAgeCheckResult(uint8_t *pResult)                         // 获取最近一次老化检测结果
{
    if(pResult == NULL)                                                       // 如果输出指针为空
    {
        return -1;                                                            // 返回失败
    }

    if(g_batteryAgeCheckFinishFlag == 0)                                      // 如果本次检测尚未完成
    {
        return -1;                                                            // 返回失败
    }

    *pResult = g_batteryAgeResult;                                            // 输出当前检测结果
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
    g_testModeFlag = 1;
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
    g_testModeFlag = 0;
    
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
    if(g_testModeFlag == 1)
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
    if(g_testModeFlag == 1)
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
    if(g_testModeFlag == 1)
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
    if(g_testModeFlag == 1)
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
    return g_batteryConnectFlag;
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
    if(g_BatteryConfigure != NULL)
    {
        if(BatterySdkGetBatteySoc() < g_BatteryConfigure->batterySocAlarmValue)
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
    return g_batteryTempAlarmFlag;
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
