#include "peripheralHal.h"
#include "timerHal.h"
#include "logHal.h"
#include "osHal.h"
#include "powerManageSdk.h"

#include "r_cg_macrodriver.h"
#include "r_cg_riic.h"

#define PERIPHERAL_TIMER_INSTANCE_NUMBER    2

/* RTC 芯片 IIC 地址定义 */
#define RTC_IIC_ADDR                        0x32

/* RTC 寄存器地址定义 */
#define RTC_REG_ADDR_SEC                    0x00    /* 秒寄存器 */
#define RTC_REG_ADDR_MIN                    0x01    /* 分寄存器 */
#define RTC_REG_ADDR_HOUR                   0x02    /* 时寄存器 */
#define RTC_REG_ADDR_WEEKDAY                0x03    /* 星期寄存器 */
#define RTC_REG_ADDR_DAY                    0x04    /* 日寄存器 */
#define RTC_REG_ADDR_MONTH                  0x05    /* 月寄存器 */
#define RTC_REG_ADDR_YEAR                   0x06    /* 年寄存器 */

#define RTC_REG_ADDR_ALARM_MIN              0x08
#define RTC_REG_ADDR_ALARM_HOUR             0x09
#define RTC_REG_ADDR_ALARM_DAY              0x0A   /* EDEW=1: day, EDEW=0: week */

#define RTC_REG_ADDR_CTR1                   0x0D
#define RTC_REG_ADDR_FLAG1                  0x0E
#define RTC_REG_ADDR_CTR2                   0x0F

#define RTC_REG_ADDR_ID                     0xB2    /* ID寄存器 */
#define RTC_REG_ADDR_WPF                    0xFC    /* WPF寄存器 */

/* FLAG1 bits */
#define RTC_FLAG1_INTAF                     0x08

/* CTR1 bits */
#define RTC_CTR1_EDEW                       0x40   /* D6 */

/* CTR2 bits */
#define RTC_CTR2_INTAE                      0x08   /* D3 */

/* RTC 寄存器数据长度定义 */
#define RTC_TIME_REG_LENGTH                 7       /* 时间寄存器长度(秒分时星期日月年) */
#define RTC_ID_REG_LENGTH                   8       /* ID寄存器读取长度 */

typedef struct
{
  uint8_t UseFlag;
  uint8_t timerOnFlag;
  uint32_t TimerCount;
}PeripheralTimer_t;

static PeripheralTimer_t g_peripheralTimer[PERIPHERAL_TIMER_INSTANCE_NUMBER];
// static uint32_t g_rtcSCount = 0;
// static uint32_t g_rtcMsCount = 0;
static uint32_t g_sleepStartUtc = 0;

static SemaphoreHandle_t g_rtcMutexHandle = NULL;

static uint8_t TimerHalRtcLockInit(void)
{
    if (g_rtcMutexHandle == NULL)
    {
        g_rtcMutexHandle = xSemaphoreCreateMutex();
        if (g_rtcMutexHandle == NULL)
        {
            return 1U;
        }
    }

    return 0U;
}

static uint8_t TimerHalRtcRead(uint8_t regAddr, uint8_t *buffer, uint16_t length)
{
    uint8_t ret;

    if (TimerHalRtcLockInit() != 0U)
    {
        return 1U;
    }

    if (xSemaphoreTake(g_rtcMutexHandle, portMAX_DELAY) != pdTRUE)
    {
        return 1U;
    }

    ret = I2cReadRegisterValue(RTC_IIC_ADDR, &regAddr, buffer, length);

    (void)xSemaphoreGive(g_rtcMutexHandle);
    return ret;
}

static uint8_t TimerHalRtcWrite(uint8_t regAddr, uint8_t *buffer, uint16_t length)
{
    uint8_t ret;

    if (TimerHalRtcLockInit() != 0U)
    {
        return 1U;
    }

    if (xSemaphoreTake(g_rtcMutexHandle, portMAX_DELAY) != pdTRUE)
    {
        return 1U;
    }

    ret = I2cWriteRegisterValue(RTC_IIC_ADDR, &regAddr, buffer, length);

    (void)xSemaphoreGive(g_rtcMutexHandle);
    return ret;
}

void TimerHalInterruptCallback(void)
{
    uint8_t i;

    for (i = 0; i < PERIPHERAL_TIMER_INSTANCE_NUMBER; i++)
    {
        if (g_peripheralTimer[i].TimerCount > 0)
        {
            g_peripheralTimer[i].TimerCount--;
        }
    }

    // g_rtcMsCount++;
    // if (g_rtcMsCount >= 1000)
    // {
    //     g_rtcMsCount = 0;
    //     g_rtcSCount++;
    // }

    /* 运行期间递减24小时重启计时器和listen唤醒计时器（每1ms调用一次） */
    PowerManageSdkTimerDecrement();
}

static void RtcInit(void)
{
    uint8_t waitTimeCount = 100;
    uint8_t rtcDataBuffer[20] = {0};
    uint8_t ret = 0;
    uint8_t regAddr = 0;
    uint8_t length = 0;

    do
    {
        regAddr = RTC_REG_ADDR_ID;
        ret = TimerHalRtcRead(regAddr, rtcDataBuffer, RTC_ID_REG_LENGTH);
        if(ret == 0)
        {
            TBOX_PRINT("rtc read ID, reg value = %02X-%02X-%02X, %02X, %02X %02X, %02X %02X\r\n", rtcDataBuffer[0], rtcDataBuffer[1], rtcDataBuffer[2], rtcDataBuffer[3], rtcDataBuffer[4], rtcDataBuffer[5], rtcDataBuffer[6], rtcDataBuffer[7]);
            // break;
        }
        // rtcDataBuffer[length++] = 0x0;
        // rtcDataBuffer[length++] = 0x0;
        // rtcDataBuffer[length++] = 0x30;
        // rtcDataBuffer[length++] = 0x17;
        // rtcDataBuffer[length++] = 0x1;
        // rtcDataBuffer[length++] = 0x22;
        // rtcDataBuffer[length++] = 0x12;
        // rtcDataBuffer[length++] = 0x25;
        // regAddr = RTC_REG_ADDR_SEC;
        // ret = I2cWriteRegisterValue(RTC_IIC_ADDR, &regAddr, rtcDataBuffer, length);
        // 1773727445 -> 2026-03-17 14:04:05
        // ret = TimerHalSetRtcTime(1773727445);
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
    TimerHalRtcLockInit();
    R_RIIC0_Create();
    R_RIIC0_Start();
    RtcInit();
}

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
static int IsLeapYear(uint16_t year)
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
uint32_t RtcToTimestamp(uint8_t year_bcd, uint8_t month_bcd, uint8_t day_bcd,
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
        total_days += IsLeapYear(y) ? 366 : 365;
    }

    // 4. 加上当前年份中前month-1个月的天数
    for (uint8_t m = 1; m < month; m++) {
        total_days += month_days[m - 1];
        if (m == 2 && IsLeapYear(year)) {
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

// static uint8_t TimerHalWeekdayToRtcMask(uint32_t days_from_1970)
// {
//     /* 1970-01-01 是星期四
//        映射到 SD8800:
//        周日=0x01, 周一=0x02, 周二=0x04, 周三=0x08,
//        周四=0x10, 周五=0x20, 周六=0x40
//     */
//     uint8_t weekday_index = (days_from_1970 + 4) % 7; /* 0=周四, 1=周五 ... 3=周日 */

//     switch (weekday_index)
//     {
//         case 0: return 0x10; /* Thu */
//         case 1: return 0x20; /* Fri */
//         case 2: return 0x40; /* Sat */
//         case 3: return 0x01; /* Sun */
//         case 4: return 0x02; /* Mon */
//         case 5: return 0x04; /* Tue */
//         case 6: return 0x08; /* Wed */
//         default: return 0x01;
//     }
// }

static uint8_t TimerHalWeekdayToRtcMask(uint32_t days_from_1970)
{
    /* 1970-01-01 是星期四
       映射到 SD8800:
       周日=0x01, 周一=0x02, 周二=0x04, 周三=0x08,
       周四=0x10, 周五=0x20, 周六=0x40
    */
    // 正确计算：0=周日,1=周一,2=周二,3=周三,4=周四,5=周五,6=周六
    uint8_t weekday_index = (days_from_1970 + 4) % 7;

    switch (weekday_index)
    {
        case 0:  return 0x01; /* 周日 */
        case 1:  return 0x02; /* 周一 */
        case 2:  return 0x04; /* 周二 */
        case 3:  return 0x08; /* 周三 */
        case 4:  return 0x10; /* 周四 */
        case 5:  return 0x20; /* 周五 */
        case 6:  return 0x40; /* 周六 */
        default: return 0x01;
    }
}

/**
 * @brief 将 Unix 时间戳转换为 RTC 寄存器值（适用于 2000~2099 年）
 * @param timestamp 从 1970-01-01 00:00:00 开始的秒数（UTC）
 * @param regs 输出数组，长度至少 7，按 RTC 寄存器顺序填充：
 *             regs[0]=秒, regs[1]=分, regs[2]=时, regs[3]=星期,
 *             regs[4]=日, regs[5]=月, regs[6]=年（BCD 格式）
 * @note 年份范围受限于 BCD 两位，仅支持 2000~2099 年；若超出则 year_low 会 >99，结果不可用
 */
void TimestampToRtcRegisters(uint32_t timestamp, uint8_t regs[7]) {
    uint32_t days = timestamp / 86400;          // 从 1970-01-01 开始的总天数
    uint32_t remSec = timestamp % 86400;       // 当天剩余的秒数

    // // ---------- 计算星期几（星期一=1，星期日=7） ----------
    // // 1970-01-01 是星期四，对应 4；公式：(days + 4) % 7 得到 0~6（0=星期日）
    // uint8_t weekday = (days + 4) % 7;
    // if (weekday == 0) weekday = 7;              // 星期日映射为 7

    // ---------- 计算年份 ----------
    uint16_t year = 1970;
    while (1) {
        uint16_t days_in_year = IsLeapYear(year) ? 366 : 365;
        if (days < days_in_year) break;
        days -= days_in_year;
        year++;
    }

    // ---------- 计算月份和日期 ----------
    uint8_t month_days[] = {31, 28, 31, 30, 31, 30,
                            31, 31, 30, 31, 30, 31};
    if (IsLeapYear(year)) month_days[1] = 29;  // 闰年 2 月 29 天

    uint8_t month = 1;
    while (days >= month_days[month - 1]) {
        days -= month_days[month - 1];
        month++;
    }
    uint8_t day = days + 1;                       // days 为当月第几天（0 起始），加 1 得日期

    // ---------- 计算时、分、秒 ----------
    uint8_t hour = remSec / 3600;
    remSec %= 3600;
    uint8_t minute = remSec / 60;
    uint8_t second = remSec % 60;

    // ---------- 转换为 BCD 并填充寄存器 ----------
    regs[0] = dec2bcd(second);       // 秒
    regs[1] = dec2bcd(minute);       // 分
    regs[2] = dec2bcd(hour);         // 时
    regs[3] = TimerHalWeekdayToRtcMask(timestamp / 86400);       // 星期
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
uint8_t TimerHalSetRtcTime(uint32_t utc)
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

    TimestampToRtcRegisters(utc, rtc_regs);

    // 年:0x25, 月:0x12, 日:0x22, 星期:0x01, 时:0x18, 分:0x19, 秒:0x15
    // TBOX_PRINT("regs = %02X %02X %02X %02X %02X %02X %02X\n",
    //     rtc_regs[6], rtc_regs[5], rtc_regs[4],
    //     rtc_regs[3], rtc_regs[2], rtc_regs[1], rtc_regs[0]);

    rtcDataBuffer[length++] = rtc_regs[0];
    rtcDataBuffer[length++] = rtc_regs[1];
    rtcDataBuffer[length++] = rtc_regs[2];
    rtcDataBuffer[length++] = rtc_regs[3];
    rtcDataBuffer[length++] = rtc_regs[4];
    rtcDataBuffer[length++] = rtc_regs[5];
    rtcDataBuffer[length++] = rtc_regs[6];
    regAddr = RTC_REG_ADDR_SEC;
    ret = TimerHalRtcWrite(regAddr, rtcDataBuffer, length);
    if(ret == 0)
    {
        // TBOX_PRINT("rtc read ID, reg value = %02X-%02X-%02X, %02X, %02X %02X, %02X %02X\r\n", rtcDataBuffer[0], rtcDataBuffer[1], rtcDataBuffer[2], rtcDataBuffer[3], rtcDataBuffer[4], rtcDataBuffer[5], rtcDataBuffer[6], rtcDataBuffer[7]);
    }
    return ret;
}

/*************************************************
  Function:     TimerHalGetRtcTime
  Description:  Get current time
  Input:        pUtc :the current time obtained
  Output:       None
  Return:       None
  Others:       None
*************************************************/
uint8_t TimerHalGetRtcTime(uint32_t *pUtc)
{
//   __disable_irq();//disable interrupt
//   *pUtc = g_rtcSCount;
//   __enable_irq();//enable interrupt
    uint8_t rtcDataBuffer[20] = {0};
    uint8_t regAddr = 0;
    uint8_t ret = 0;

    regAddr = RTC_REG_ADDR_SEC;
    ret = TimerHalRtcRead(regAddr, rtcDataBuffer, RTC_TIME_REG_LENGTH);
    if(ret != 0)
    {
        TBOX_PRINT("rtc read time fail\r\n");
        return ret;
    }
    *pUtc = RtcToTimestamp(rtcDataBuffer[6], rtcDataBuffer[5], rtcDataBuffer[4], rtcDataBuffer[2], rtcDataBuffer[1], rtcDataBuffer[0]);
    return 0;
}

static uint8_t TimerHalConfigDateAlarm(uint32_t utc)
{
    uint8_t rtc_regs[7] = {0};
    uint8_t buf[3];
    uint8_t regAddr;
    uint8_t ctr1;
    uint8_t ctr2;

    TimestampToRtcRegisters(utc, rtc_regs);

    /* 08H 分钟报警: D7=0 表示参与比较 */
    buf[0] = rtc_regs[1] & 0x7F;   /* minute */

    /* 09H 小时报警: D7=0 表示参与比较 */
    buf[1] = rtc_regs[2] & 0x7F;   /* hour */

    /* 0AH 日期报警: 先选择 EDEW=1，再写日期；D7=0 表示参与比较 */
    buf[2] = rtc_regs[4] & 0x7F;   /* day */

    /* 1. 清报警标志 */
    TimerHalClearRtcAlarmFlag();

    /* 2. 设置 EDEW=1，选择“日期报警” */
    regAddr = RTC_REG_ADDR_CTR1;
    if (TimerHalRtcRead(regAddr, &ctr1, 1) != 0)
    {
        TBOX_PRINT("read CTR1 fail\r\n");
        return 1;
    }
    ctr1 |= RTC_CTR1_EDEW;
    regAddr = RTC_REG_ADDR_CTR1;
    if (TimerHalRtcWrite(regAddr, &ctr1, 1) != 0)
    {
        TBOX_PRINT("write CTR1 fail\r\n");
        return 1;
    }

    /* 3. 写报警时间 08H~0AH */
    regAddr = RTC_REG_ADDR_ALARM_MIN;
    if (TimerHalRtcWrite(regAddr, buf, 3) != 0)
    {
        TBOX_PRINT("write alarm time fail\r\n");
        return 1;
    }

    /* 4. 使能报警输出 INTAE=1 */
    regAddr = RTC_REG_ADDR_CTR2;
    if (TimerHalRtcRead(regAddr, &ctr2, 1) != 0)
    {
        TBOX_PRINT("read CTR2 fail\r\n");
        return 1;
    }
    ctr2 |= RTC_CTR2_INTAE;
    regAddr = RTC_REG_ADDR_CTR2;
    if (TimerHalRtcWrite(regAddr, &ctr2, 1) != 0)
    {
        TBOX_PRINT("write CTR2 fail\r\n");
        return 1;
    }

    return 0;
}

uint8_t TimerHalPrepareSleep(uint32_t sleepSeconds)
{
    uint32_t now;
    uint32_t alarmUtc;

    if (sleepSeconds == 0)
    {
        TBOX_PRINT("sleepSeconds can not be 0\r\n");
        return 1;
    }

    if (TimerHalGetRtcTime(&now) != 0)
    {
        TBOX_PRINT("get rtc time fail\r\n");
        return 1;
    }

    g_sleepStartUtc = now;
    alarmUtc = now + sleepSeconds;

    if (TimerHalConfigDateAlarm(alarmUtc) != 0)
    {
        TBOX_PRINT("prepare sleep alarm fail, now=%lu sleep=%lu alarm=%lu\r\n",
                   (unsigned long)now,
                   (unsigned long)sleepSeconds,
                   (unsigned long)alarmUtc);
        return 1;
    }

    TBOX_PRINT("prepare sleep ok, now=%lu sleep=%lu alarm=%lu\r\n",
               (unsigned long)now,
               (unsigned long)sleepSeconds,
               (unsigned long)alarmUtc);

    return 0;
}

uint32_t TimerHalGetSleepDuration(void)
{
    uint32_t now;

    TimerHalGetRtcTime(&now);

    if(now < g_sleepStartUtc)
        return 0;

    return now - g_sleepStartUtc;
}

uint8_t TimerHalGetRtcStatus(void)
{
    uint8_t flag;
    uint8_t regAddr = RTC_REG_ADDR_FLAG1;

    if(TimerHalRtcRead(regAddr, &flag, 1) != 0)
    {
        return 0xFF;
    }

    return ((flag & RTC_FLAG1_INTAF) != 0U) ? 1U : 0U;
}

void TimerHalClearRtcAlarmFlag(void)
{
    uint8_t flag = 0;
    uint8_t regAddr = RTC_REG_ADDR_FLAG1;

    if (TimerHalRtcRead(regAddr, &flag, 1) != 0)
    {
        TBOX_PRINT("read FLAG1 fail\r\n");
        return;
    }

    flag &= (uint8_t)(~RTC_FLAG1_INTAF);   /* 只清 INTAF */

    regAddr = RTC_REG_ADDR_FLAG1;
    if (TimerHalRtcWrite(regAddr, &flag, 1) != 0)
    {
        TBOX_PRINT("clear INTAF fail\r\n");
    }
}

void TimerHalSetMode(uint8_t mode)
{
    if(mode != 0)
    {
        R_RIIC0_Create();
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
    static uint8_t setAlarmFlag = 0;
    uint32_t alarmTime = 0;
    // static int16_t testTimerHandle = -1;  

    // if(testTimerHandle < 0)
    // {
    //     testTimerHandle = TimerHalOpen();
    //     TimerHalStartTime(testTimerHandle, 1000);
    // }

    // if(TimerHalIsTimeout(testTimerHandle)==0)
    // {
    //     TBOX_PRINT("test 1S Timer out!!!\r\n");
    //     TimerHalStartTime(testTimerHandle, 1000);
    // }

    if(count++ < (5000 / cycleTime))
    {
        return;
    }
    count = 0;

    // R_PORT_ToggleGpioOutput(Port1, 2);

    regAddr = RTC_REG_ADDR_SEC;
    ret = TimerHalRtcRead(regAddr, rtcDataBuffer, RTC_TIME_REG_LENGTH);
    if(ret != 0)
    {
        TBOX_PRINT("rtc read time fail\r\n");
        return;
    }
    TBOX_PRINT("rtc read time: %02X-%02X-%02X %02X %02X:%02X:%02X\r\n", rtcDataBuffer[6], rtcDataBuffer[5], rtcDataBuffer[4], rtcDataBuffer[3], rtcDataBuffer[2], rtcDataBuffer[1], rtcDataBuffer[0]);

    // TBOX_PRINT("rtc read WPF, ");
    // regAddr = RTC_REG_ADDR_WPF;
    // ret = I2cReadRegisterValue(RTC_IIC_ADDR, &regAddr, rtcDataBuffer, 1);
    // if(ret != 0)
    // {
    //     TBOX_PRINT("rtc read time fail\r\n");
    // }
    // TBOX_PRINT("reg value = %02X\r\n", rtcDataBuffer[0]);

    // if(setAlarmFlag == 0)
    // {
    //     TimerHalPrepareSleep(120);
    //     setAlarmFlag = 1;
    //     TBOX_PRINT("sleep start time = 120S\r\n");
    // }
    // else
    // {
    //     alarmTime = TimerHalGetSleepDuration();
    //     TBOX_PRINT("alarmTime = %lu\r\n", (unsigned long)alarmTime);
    //     if(TimerHalGetRtcStatus() == 1)
    //     {
    //         TBOX_PRINT("rtc alarm is triggered\r\n");
    //         TimerHalClearRtcAlarmFlag();
    //         setAlarmFlag = 0;
    //     }
    // }
}
