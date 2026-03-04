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
  __disable_irq();//disable interrupt
  g_rtcMsCount = 0;
  g_rtcSCount = utc;
  __enable_irq();//enable interrupt
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
  __disable_irq();//disable interrupt
  *pUtc = g_rtcSCount;
  __enable_irq();//enable interrupt
}

void TimerHalSetMode(uint8_t mode)
{
    if(mode!=0)
    {
        Cy_Tcpwm_Counter_Init(TIME0_TCPWM_CNT, &g_myCounterConfig);/* Initialize TCPWM0_GPR0_CNT0 as Timer/Counter & Enable */
        Cy_Tcpwm_Counter_Enable(TIME0_TCPWM_CNT);
        Cy_Tcpwm_Counter_SetTC_IntrMask(TIME0_TCPWM_CNT); /* Enable Interrupt */
        Cy_Tcpwm_TriggerStart(TIME0_TCPWM_CNT);
    }
    else
    {
        
    }        
}
#endif

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
