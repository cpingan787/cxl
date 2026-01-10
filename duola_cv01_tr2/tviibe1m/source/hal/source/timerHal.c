#include "cy_project.h"
#include "cy_device_headers.h"

#include "peripheralHal.h"
#include "timerHal.h"


#define TIME0_TCPWM_CNT          TCPWM0_GRP0_CNT0
#define TIME0_PLCK_CLOCKS       PCLK_TCPWM0_CLOCKS0
#define TCPWM_PERI_CLK_DIVIDER_NO_COUNTER 2ul

#define PERIPHERAL_TIMER_INSTANCE_NUMBER    40

cy_stc_tcpwm_counter_config_t const g_myCounterConfig =
{
    .period             = 1000 - 1,                             // 1ms
    .clockPrescaler     = CY_TCPWM_COUNTER_PRESCALER_DIVBY_1,   // 1us  once
    .runMode            = CY_TCPWM_PWM_CONTINUOUS,
    .countDirection     = CY_TCPWM_COUNTER_COUNT_UP,
    .debug_pause        = 0uL,
    .CompareOrCapture   = CY_TCPWM_COUNTER_MODE_COMPARE,
    .compare0           = 0,
    .compare0_buff      = 0,
    .compare1           = 0,
    .compare1_buff      = 0,
    .enableCompare0Swap = false,
    .enableCompare1Swap = false,
    .interruptSources   = 0uL,
    .capture0InputMode  = 3uL,
    .capture0Input      = 0uL,
    .reloadInputMode    = 3uL,
    .reloadInput        = 0uL,
    .startInputMode     = 3uL,
    .startInput         = 0uL,
    .stopInputMode      = 3uL,
    .stopInput          = 0uL,
    .capture1InputMode  = 3uL,
    .capture1Input      = 0uL,
    .countInputMode     = 3uL,
    .countInput         = 1uL,
    .trigger1           = CY_TCPWM_COUNTER_OVERFLOW,
};

static const cy_stc_sysint_irq_t g_time0IrqCfg = 
{
    .sysIntSrc  = tcpwm_0_interrupts_0_IRQn,
    .intIdx     = CPUIntIdx3_IRQn,    
    .isEnabled  = true,
};

typedef struct
{
  uint8_t UseFlag;
  uint8_t timerOnFlag;
  uint32_t TimerCount;
}PeripheralTimer_t;

static PeripheralTimer_t g_peripheralTimer[PERIPHERAL_TIMER_INSTANCE_NUMBER];

#define SRS_SIGNAL_PROCESS_ENABLE         1
#define AD_CONVERT_CYCLE_TIME 5
static uint8_t g_adChannelCount = 0;
static uint32_t g_rtcSCount = 0;
static uint32_t g_rtcMsCount = 0;
#define RLT_CYCLE               (1) // ms
#define BT_RLT_CLOCK            (33000000) //40Mhz
#define RLT_RELOAD_VALUE        ( (33000000 / 16) * RLT_CYCLE / 1000) - 1

// static uint32_t s_time = 0;
uint32_t ase_time = 0;
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
//  task_1ms();
  ase_time++;
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
    uint32_t periFreq = 80000000ul;
    uint32_t targetFreq = 1000000ul;
    uint32_t divNum = (periFreq / targetFreq);
    CY_ASSERT((periFreq % targetFreq) == 0ul);
    Cy_SysClk_PeriphAssignDivider(TIME0_PLCK_CLOCKS, CY_SYSCLK_DIV_16_BIT, TCPWM_PERI_CLK_DIVIDER_NO_COUNTER);//��һ��������ָ��ʱ��Դ,
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_16_BIT, TCPWM_PERI_CLK_DIVIDER_NO_COUNTER, (divNum-1ul));  //����ʱ�ӷ�Ƶ
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_16_BIT, TCPWM_PERI_CLK_DIVIDER_NO_COUNTER);
    Cy_SysInt_InitIRQ(&g_time0IrqCfg);/* Configure Interrupt for TCPWMs */
    Cy_SysInt_SetSystemIrqVector(g_time0IrqCfg.sysIntSrc, Timer0Handler);//�жϴ�������
    NVIC_SetPriority(g_time0IrqCfg.intIdx, 6ul);/* Set the Interrupt Priority & Enable the Interrupt */
    NVIC_EnableIRQ(g_time0IrqCfg.intIdx);
    Cy_Tcpwm_Counter_Init(TIME0_TCPWM_CNT, &g_myCounterConfig);/* Initialize TCPWM0_GPR0_CNT0 as Timer/Counter & Enable */
    Cy_Tcpwm_Counter_Enable(TIME0_TCPWM_CNT);
    Cy_Tcpwm_Counter_SetTC_IntrMask(TIME0_TCPWM_CNT); /* Enable Interrupt */
    Cy_Tcpwm_TriggerStart(TIME0_TCPWM_CNT);
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

