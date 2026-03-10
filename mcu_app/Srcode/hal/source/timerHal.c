#include "peripheralHal.h"
#include "timerHal.h"
#include "logHal.h"

#include "r_cg_macrodriver.h"
#include "r_cg_riic.h"

#define PERIPHERAL_TIMER_INSTANCE_NUMBER    40

typedef struct
{
  uint8_t UseFlag;
  uint8_t timerOnFlag;
  uint32_t TimerCount;
}PeripheralTimer_t;

static PeripheralTimer_t g_peripheralTimer[PERIPHERAL_TIMER_INSTANCE_NUMBER];

#if(0)
#define SRS_SIGNAL_PROCESS_ENABLE         1
#define AD_CONVERT_CYCLE_TIME 5
static uint8_t g_adChannelCount = 0;
static uint32_t g_rtcSCount = 0;
static uint32_t g_rtcMsCount = 0;
#define RLT_CYCLE               (1) // ms
#define BT_RLT_CLOCK            (33000000) //40Mhz
#define RLT_RELOAD_VALUE        ( (33000000 / 16) * RLT_CYCLE / 1000) - 1

// static uint32_t s_time = 0;

static void DelayRLTUnderFlowCallback(void)
{
  int i;
  static uint32_t adTimeCount = 0;
//   if (s_time > 0)
//     s_time -= 1;
  for(i=0;i<PERIPHERAL_TIMER_INSTANCE_NUMBER;i++)
  {
     if(g_peripheralTimer[i].TimerCount>0)
     {
       g_peripheralTimer[i].TimerCount--;
     }    
  }
  g_rtcMsCount++;
  if(g_rtcMsCount>=1000)
  {
    g_rtcMsCount = 0;
    g_rtcSCount++;
  }
  adTimeCount++;
  if(adTimeCount>=AD_CONVERT_CYCLE_TIME)
  {
    //g_adChannelCount
    PeripheralHalAdcStart(g_adChannelCount);
    g_adChannelCount++;
    if(g_adChannelCount>=1)
    {
      g_adChannelCount = 0;
    }
    adTimeCount = 0;
  }
// #if(SRS_SIGNAL_PROCESS_ENABLE)
//   if(m_srsStartFlag)
//   {

//     if(m_srsTimerCount>=m_srsParameter.startTimeOut)
//     {
//       m_srtSignalResult = SRS_RESULT_INVALID;
//     }
//     else
//     {
//       m_srsTimerCount++;      
//     }
//   }
// #endif
  //CanDriverHalTimer1msCallBack();
}

static void Timer0Handler(void)//ms��ʱ��
{
    if(Cy_Tcpwm_Counter_GetTC_IntrMasked(TIME0_TCPWM_CNT) == 1ul)
    {
        Cy_Tcpwm_Counter_ClearTC_Intr(TIME0_TCPWM_CNT);
        /*********user to do******************/
        DelayRLTUnderFlowCallback();
    }
}
#endif

void RtcInit(void)
{
    uint8_t waitTimeCount = 100;
    uint8_t rtcDataBuffer[20] = {0};
    uint8_t ret = 0;
    uint8_t regAddr = 0;
    uint8_t length = 0;

    do
    {
        regAddr = 0xB2;
        ret = I2cReadRegisterValue(0x32, &regAddr, rtcDataBuffer, 8);
        if(ret == 0)
        {
            TBOX_PRINT("rtc read ID, reg value = %02X-%02X-%02X, %02X, %02X %02X, %02X %02X\r\n", rtcDataBuffer[0], rtcDataBuffer[1], rtcDataBuffer[2], rtcDataBuffer[3], rtcDataBuffer[4], rtcDataBuffer[5], rtcDataBuffer[6], rtcDataBuffer[7]);
            // break;
        }
        rtcDataBuffer[length++] = 0x0;
        rtcDataBuffer[length++] = 0x0;
        rtcDataBuffer[length++] = 0x30;
        rtcDataBuffer[length++] = 0x17;
        rtcDataBuffer[length++] = 0x1;
        rtcDataBuffer[length++] = 0x22;
        rtcDataBuffer[length++] = 0x12;
        rtcDataBuffer[length++] = 0x25;
        regAddr = 0x0;
        ret = I2cWriteRegisterValue(0x32, &regAddr, rtcDataBuffer, length);
        if(ret == 0)
        {
            // TBOX_PRINT("rtc read ID, reg value = %02X-%02X-%02X, %02X, %02X %02X, %02X %02X\r\n", rtcDataBuffer[0], rtcDataBuffer[1], rtcDataBuffer[2], rtcDataBuffer[3], rtcDataBuffer[4], rtcDataBuffer[5], rtcDataBuffer[6], rtcDataBuffer[7]);
            break;
        }
    } while (waitTimeCount--);
    if(waitTimeCount == 0)
    {
        TBOX_PRINT("rtc init fail\r\n");
    }
}

/*************************************************
  Function:     TimerHalInit
  Description:  Timer init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalInit(void)
{
    R_RIIC0_Create();
    R_RIIC0_Start();
    RtcInit();
}

#if(0)
/*************************************************
  Function:     TimerHalOpen
  Description:  Timer open handle
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
int16_t TimerHalOpen(void)
{
    int16_t timerHandle,i;
    //IRQ_DISABLE_LOCAL();
    timerHandle = -1;
    __enable_irq();
    for(i=0;i<PERIPHERAL_TIMER_INSTANCE_NUMBER;i++)
    {
        if(g_peripheralTimer[i].UseFlag ==0)
        {
            g_peripheralTimer[i].UseFlag = 1;
            timerHandle = i;
            break;
        }
    }
    __enable_irq();
    //IRQ_RESTORE();
    return timerHandle;  
}

/*************************************************
  Function:     TimerHalStartTime
  Description:  Timer starts the timer
  Input:        timerHandle :timer handle
                time_ms :unit ms
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalStartTime(int16_t timerHandle,uint32_t time_ms)
{
    if(timerHandle<0)
    {
        return -1;    
    }
    if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;    
    }
    __disable_irq();//disable interrupt
    g_peripheralTimer[timerHandle].TimerCount = time_ms;
    g_peripheralTimer[timerHandle].timerOnFlag = 1;
    __enable_irq();//enable interrupt
    return 0;
}

/*************************************************
  Function:     TimerHalStopTime
  Description:  Timer stop the timer
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalStopTime(int16_t timerHandle)
{
    if(timerHandle<0)
    {
        return -1;    
    }
    if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;    
    }
    __disable_irq();//disable interrupt
    g_peripheralTimer[timerHandle].timerOnFlag = 0;
    __enable_irq();//enable interrupt
    return 0;
}

/*************************************************
  Function:     TimerHalIsTimeout
  Description:  Timer timeout 
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalIsTimeout(int16_t timerHandle)
{
  uint8_t timerOnFlag;
  uint32_t timerCount;
  if(timerHandle<0)
  {
    return -1;    
  }
  if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
  {
    return -1;    
  }
  
  __disable_irq();//disable interrupt
  timerOnFlag = g_peripheralTimer[timerHandle].timerOnFlag;
  timerCount = g_peripheralTimer[timerHandle].TimerCount;
  __enable_irq();//enable interrupt

  if(timerOnFlag==0)//timer stoped
  {
    return -2;
  }
  if(timerCount)
  {
    return 1;
  }
  else
  {
    return 0;
  }    
}

/*************************************************
  Function:     TimerHalGetRemainder
  Description:  Get timer remainder
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
uint32_t TimerHalGetRemainder(int16_t timerHandle)
{
  uint8_t timerOnFlag;
  uint32_t timerCount;
  if(timerHandle<0)
  {
    return 0;    
  }
  if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
  {
    return 0;    
  }
  
  __disable_irq();//disable interrupt
  timerOnFlag = g_peripheralTimer[timerHandle].timerOnFlag;
  timerCount = g_peripheralTimer[timerHandle].TimerCount;
  __enable_irq();//enable interrupt

  if(timerOnFlag==0)//timer stoped
  {
    return 0;
  }
  if(timerCount)
  {
    return timerCount;
  }
  else
  {
    return 0;
  }    
}
#endif

/**
 * @brief 将BCD码转换为十进制数
 * @param bcd BCD码字节（例如0x25 -> 25）
 * @return 十进制数值
 */
static uint8_t bcd2dec(uint8_t bcd)
{
    return (bcd >> 4) * 10 + (bcd & 0x0F);
}

/**
 * @brief 判断公历年份是否为闰年
 * @param year 完整年份（如2025）
 * @return 1表示闰年，0表示平年
 */
static int is_leap_year(uint16_t year)
{
    return (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0);
}

/**
 * @brief 将RTC读取的BCD时间转换为Unix时间戳（秒）
 * @param year_bcd   年（BCD，如0x25表示2025年）
 * @param month_bcd  月（BCD，1~12）
 * @param day_bcd    日（BCD，1~31）
 * @param hour_bcd   时（BCD，0~23）
 * @param minute_bcd 分（BCD，0~59）
 * @param second_bcd 秒（BCD，0~59）
 * @return 从1970-01-01 00:00:00开始的秒数（uint32_t）
 * @note 年份仅支持2000~2099年，若超出范围需调整世纪处理
 */
uint32_t rtc_to_timestamp(uint8_t year_bcd, uint8_t month_bcd, uint8_t day_bcd,
                          uint8_t hour_bcd, uint8_t minute_bcd, uint8_t second_bcd)
{
    // 1. 将BCD转换为十进制数值
    uint16_t year = 2000 + bcd2dec(year_bcd);      // 完整年份
    uint8_t month = bcd2dec(month_bcd);
    uint8_t day   = bcd2dec(day_bcd);
    uint8_t hour  = bcd2dec(hour_bcd);
    uint8_t minute = bcd2dec(minute_bcd);
    uint8_t second = bcd2dec(second_bcd);

    // 2. 月份天数表（平年）
    const uint8_t month_days[] = {31, 28, 31, 30, 31, 30,
                                  31, 31, 30, 31, 30, 31};

    // 3. 计算从1970年到year-1年的总天数
    uint32_t total_days = 0;
    for (uint16_t y = 1970; y < year; y++) {
        total_days += is_leap_year(y) ? 366 : 365;
    }

    // 4. 加上当前年份中前month-1个月的天数
    for (uint8_t m = 1; m < month; m++) {
        total_days += month_days[m - 1];
        if (m == 2 && is_leap_year(year)) {
            total_days += 1;   // 闰年2月多一天
        }
    }

    // 5. 加上当前月份内已经过去的天数（日减1）
    total_days += (day - 1);

    // 6. 转换为秒
    uint32_t timestamp = total_days * 86400 +
                         hour * 3600 +
                         minute * 60 +
                         second;

    return timestamp;
}

/**
 * @brief 将十进制数 0~99 转换为 BCD 码
 * @param dec 十进制数
 * @return BCD 码（例如 25 -> 0x25）
 */
static uint8_t dec2bcd(uint8_t dec) {
    return ((dec / 10) << 4) | (dec % 10);
}

/**
 * @brief 将 Unix 时间戳转换为 RTC 寄存器值（适用于 2000~2099 年）
 * @param timestamp 从 1970-01-01 00:00:00 开始的秒数（UTC）
 * @param regs 输出数组，长度至少 7，按 RTC 寄存器顺序填充：
 *             regs[0]=秒, regs[1]=分, regs[2]=时, regs[3]=星期,
 *             regs[4]=日, regs[5]=月, regs[6]=年（BCD 格式）
 * @note 年份范围受限于 BCD 两位，仅支持 2000~2099 年；若超出则 year_low 会 >99，结果不可用
 */
void timestamp_to_rtc_registers(uint32_t timestamp, uint8_t regs[7]) {
    uint32_t days = timestamp / 86400;          // 从 1970-01-01 开始的总天数
    uint32_t rem_sec = timestamp % 86400;       // 当天剩余的秒数

    // ---------- 计算星期几（星期一=1，星期日=7） ----------
    // 1970-01-01 是星期四，对应 4；公式：(days + 4) % 7 得到 0~6（0=星期日）
    uint8_t weekday = (days + 4) % 7;
    if (weekday == 0) weekday = 7;              // 星期日映射为 7

    // ---------- 计算年份 ----------
    uint16_t year = 1970;
    while (1) {
        uint16_t days_in_year = is_leap_year(year) ? 366 : 365;
        if (days < days_in_year) break;
        days -= days_in_year;
        year++;
    }

    // ---------- 计算月份和日期 ----------
    uint8_t month_days[] = {31, 28, 31, 30, 31, 30,
                            31, 31, 30, 31, 30, 31};
    if (is_leap_year(year)) month_days[1] = 29;  // 闰年 2 月 29 天

    uint8_t month = 1;
    while (days >= month_days[month - 1]) {
        days -= month_days[month - 1];
        month++;
    }
    uint8_t day = days + 1;                       // days 为当月第几天（0 起始），加 1 得日期

    // ---------- 计算时、分、秒 ----------
    uint8_t hour = rem_sec / 3600;
    rem_sec %= 3600;
    uint8_t minute = rem_sec / 60;
    uint8_t second = rem_sec % 60;

    // ---------- 转换为 BCD 并填充寄存器 ----------
    regs[0] = dec2bcd(second);       // 秒
    regs[1] = dec2bcd(minute);       // 分
    regs[2] = dec2bcd(hour);         // 时
    regs[3] = weekday;               // 星期（通常为二进制，不需 BCD 转换）
    regs[4] = dec2bcd(day);           // 日
    regs[5] = dec2bcd(month);         // 月
    uint8_t year_low = year - 2000;   // 取后两位
    regs[6] = dec2bcd(year_low);       // 年
}

/*************************************************
  Function:     TimerHalSetRtcTime
  Description:  set rtc time
  Input:        utc :enter the time point
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalSetRtcTime(uint32_t utc)
{
//   __disable_irq();//disable interrupt
//   g_rtcMsCount = 0;
//   g_rtcSCount = utc;
//   __enable_irq();//enable interrupt
    uint8_t rtc_regs[7] = {0};
    uint8_t rtcDataBuffer[20] = {0};
    uint8_t ret = 0;
    uint8_t regAddr = 0;
    uint8_t length = 0;

    timestamp_to_rtc_registers(utc, rtc_regs);

    // 年:0x25, 月:0x12, 日:0x22, 星期:0x01, 时:0x18, 分:0x19, 秒:0x15
    TBOX_PRINT("regs = %02X %02X %02X %02X %02X %02X %02X\n",
        rtc_regs[6], rtc_regs[5], rtc_regs[4],
        rtc_regs[3], rtc_regs[2], rtc_regs[1], rtc_regs[0]);

    rtcDataBuffer[length++] = 0x0;
    rtcDataBuffer[length++] = 0x0;
    rtcDataBuffer[length++] = 0x30;
    rtcDataBuffer[length++] = 0x17;
    rtcDataBuffer[length++] = 0x1;
    rtcDataBuffer[length++] = 0x22;
    rtcDataBuffer[length++] = 0x12;
    rtcDataBuffer[length++] = rtc_regs[6];
    regAddr = 0x0;
    ret = I2cWriteRegisterValue(0x32, &regAddr, rtcDataBuffer, length);
    if(ret == 0)
    {
        // TBOX_PRINT("rtc read ID, reg value = %02X-%02X-%02X, %02X, %02X %02X, %02X %02X\r\n", rtcDataBuffer[0], rtcDataBuffer[1], rtcDataBuffer[2], rtcDataBuffer[3], rtcDataBuffer[4], rtcDataBuffer[5], rtcDataBuffer[6], rtcDataBuffer[7]);
        // break;
    }
}

/*************************************************
  Function:     TimerHalGetRtcTime
  Description:  Get current time
  Input:        pUtc :the current time obtained
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalGetRtcTime(uint32_t *pUtc)
{
//   __disable_irq();//disable interrupt
//   *pUtc = g_rtcSCount;
//   __enable_irq();//enable interrupt
    uint8_t rtcDataBuffer[20] = {0};
    uint8_t regAddr = 0;
    uint8_t ret = 0;

    regAddr = 0x0;
    ret = I2cReadRegisterValue(0x32, &regAddr, rtcDataBuffer, 7);
    if(ret != 0)
    {
        TBOX_PRINT("rtc read time fail\r\n");
    }
    *pUtc = rtc_to_timestamp(rtcDataBuffer[6], rtcDataBuffer[5], rtcDataBuffer[4], rtcDataBuffer[2], rtcDataBuffer[1], rtcDataBuffer[0]);
}

void TimerHalSetMode(uint8_t mode)
{
    if(mode != 0)
    {
        R_RIIC0_Start();
    }
    else
    {
        R_RIIC0_Stop();
    }        
}


void TimerHalTestMain(uint16_t cycleTime)
{
    static uint16_t count = 0;
    uint8_t rtcDataBuffer[20] = {0};
    uint8_t regAddr = 0;
    uint8_t ret = 0;

    if(count++ < (5000 / cycleTime))
    {
        return;
    }
    count = 0;

    // R_PORT_ToggleGpioOutput(Port1, 2);

    TBOX_PRINT("rtc read time, ");
    regAddr = 0x0;
    ret = I2cReadRegisterValue(0x32, &regAddr, rtcDataBuffer, 7);
    if(ret != 0)
    {
        TBOX_PRINT("rtc read time fail\r\n");
    }
    TBOX_PRINT("reg value = %02X-%02X-%02X %02X %02X:%02X:%02X\r\n", rtcDataBuffer[6], rtcDataBuffer[5], rtcDataBuffer[4], rtcDataBuffer[3], rtcDataBuffer[2], rtcDataBuffer[1], rtcDataBuffer[0]);

    // TBOX_PRINT("rtc read WPF, ");
    // regAddr = 0xFC;
    // ret = I2cReadRegisterValue(0x32, &regAddr, rtcDataBuffer, 1);
    // if(ret != 0)
    // {
    //     TBOX_PRINT("rtc read time fail\r\n");
    // }
    // TBOX_PRINT("reg value = %02X\r\n", rtcDataBuffer[0]);
}
