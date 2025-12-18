/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: ecallHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "ecallHal.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "gpio_drv.h"
#include "i2c_drv.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "queue.h"
#include "task.h"
#include "int_drv.h"
/****************************** Macro Definitions ******************************/
#define DEBUG_PRINT_ENABLE              (1U)
#define SOS_LED_QUEUE_SEND_WAIT_TIME    (1000U)
#define SOFTWARE_IIC_ENABLE             0

/* I2C Addresses */
#if (SOFTWARE_IIC_ENABLE == 1)
#define SA51034_ADDRESS             0xD8
#else
#define SA51034_ADDRESS             (0xD8 >> 1)
#endif

/* Register Maps */
#define FAULT_REGISTER              (0x01)
#define DIAGNOSTIC_REGISTER         (0x02)
#define CONTROL_REGISTER            (0x03)

#define USER_I2C_SCB_TYPE           SYSCTRL_I2C0
#define USER_I2C_SCB_PCLK           CLK_I2C0
#define USER_I2C_SCB_INDEX          I2C0_ID
#define USER_I2C_SCB_IRQN           I2C0_IRQn

#define I2C_SDA_PORT                PORT_A
#define I2C_SDA_PORT_PIN            GPIO_2
#define I2C_SDA_PORT_MUX            PTA2_I2C0_SDA

#define I2C_SCL_PORT                PORT_A
#define I2C_SCL_PORT_PIN            GPIO_3
#define I2C_SCL_PORT_MUX            PTA3_I2C0_SCL

#if (SOFTWARE_IIC_ENABLE == 1)
#define iic_scl_1()                 GPIO_SetPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN)
#define iic_scl_0()                 GPIO_ClearPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN)
#define iic_sda_1()                 GPIO_SetPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN)
#define iic_sda_0()                 GPIO_ClearPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN)
#define iic_sda_read()              GPIO_ReadPinLevel(I2C_SDA_PORT, I2C_SDA_PORT_PIN)
#define iic_sda_in()                {GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT, GPIO_INPUT);PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_DISABLED);}
#define iic_sda_out()               {GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT, GPIO_OUTPUT);PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);}
#endif

/****************************** Type Definitions ******************************/
typedef struct
{
    EcallLedMode_e ledMode;         /*0:关闭，1:打开，2:闪烁*/
    uint16_t ledCounter;            /*0:关闭，1:打开，2:闪烁*/
    uint16_t ledOnTime;             /*LED打开的时间，单位ms*/
    uint16_t ledOffTime;            /*LED关闭的时间，单位ms*/
}EcallLedSwitchTime_t;
/****************************** Global Variables ******************************/
static EcallLedSwitchTime_t g_SosLedSwitchTime = {E_ECALL_LED_MODE_KEEP_OFF, 0, 0, 0};
static uint32_t g_ampInitTime = 0u;
static uint8_t g_ampInitFlag = 0u;
QueueHandle_t g_SosLedMsgQueue = NULL;
SemaphoreHandle_t  g_SosLedMutex = NULL;        // 当前互斥操作信号量
volatile static uint16_t I2C_RxBuffer[11];      // 定义接收数据使用的数组
volatile static uint32_t I2C_RxBufSN;           //定义接收数组的当前序号
volatile static uint32_t I2C_CheckErrCnt;       //防止I2C模块故障的计数变量

//I2C0模块的配置数据
static const I2C_Config_t g_stcI2cMasterConfig =
{
    .masterSlaveMode = I2C_MASTER,              // I2C模块配置为主机模式
    .speedMode = I2C_SPEED_FAST,                // I2C模块的速度模式选择为标准模式。最大波特率：STANDARD--100K，FAST--400K，FAST Plus--1M,HS--1.6M
    .addrBitMode = I2C_ADDR_BITS_7,             // 发送器用7位的地址模式。可以选择7位、10位的地址模式
    .ownSlaveAddr = 0x00000001,                 // 本I2C模块的地址为0x01。I2C模块做主机时，取值范围0--7；做从机时，取值范围8--255
    .restart = ENABLE                           // 做主机时，使能重启功能。4个功能需要它使能。
};

//I2C0 FIFO 的门槛值配置数据
static const I2C_FifoConfig_t g_stcI2cFifoConfig =
{
    .recvFifoThr = 0,                           // RX_FIFO中的数据个数大于等于门槛值(n+1)时，触发 RX_FULL 中断
    .transmitFifoThr = 0                        // TX_FIFO中的数据个数小于等于门槛值(n+1)时，触发 TX_EMPTY 中断
};
/****************************** Function Declarations *************************/
#if(0)
static void I2cStopDetIsr(void);    //声明I2C_INT_STOP_DET/停止位信号产生 对应的中断处理函数
static void I2cStartDetIsr(void);    //声明I2C_INT_START_DET/起始位信号产生 对应的中断处理函数
static void I2xRxFullIsr(void);    //声明I2C_INT_RX_FULL/接收FIFO满 对应的中断处理函数
static void I2cRxOverIsr(void);    //声明I2C_INT_RX_OVERL/接收FIFO溢出 对应的中断处理函数
#endif
static void I2cSclStuckAtLowIsr(void);          //声明I2C SCL持续低电平 中断函数
void Sa51500Init(void);
void Sa51500Close(void);
/****************************** Public Function Implementations ***************/
#if (SOFTWARE_IIC_ENABLE == 1)
static void iic_sleep(void)
{
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PTB10_GPIO);    //配置  端口为GPIO功能
    PORT_OpenDrainConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, ENABLE);
    PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT_PIN, GPIO_INPUT);
    // GPIO_ClearPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN);

    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PTB9_GPIO);    //配置  端口为GPIO功能
    PORT_OpenDrainConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, ENABLE);
    PORT_PullConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    GPIO_SetPinDir(I2C_SCL_PORT, I2C_SCL_PORT_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN);
}

static void iic_delay(void)
{
#if 1
    // int n = 30;    // 高电平时间1.72us，低电平时间1.46us - 对应时钟频率 314.47K
    // int n = 39;    // 对应时钟频率 238.1K
    int n = 23;
    while(n--);
#else
    vTaskDelay(5);
#endif
}

static void iic_start(void)
{
    iic_sda_out();        //SDA线输出
    iic_sda_1();          
    iic_scl_1();
    iic_delay();
     iic_sda_0();        //START:when CLK is high,DATA change form high to low 
    iic_delay();
    iic_scl_0();        //钳住I2C总线，准备发送或接收数据 
}

static void iic_stop(void)
{
    iic_sda_out();//sda线输出
    iic_scl_0();
    iic_sda_0();//STOP:when CLK is high DATA change form low to high
     iic_delay();
    iic_scl_1(); 
    iic_sda_1();//发送I2C总线结束信号
    iic_delay();                                   
}

static uint8_t iic_wait_ack(void)
{
    uint8_t ucErrTime=0;
    
    iic_sda_in();      //SDA设置为输入  
    iic_sda_1();iic_delay();       
    iic_scl_1();iic_delay();     
    while(iic_sda_read())
    {
        ucErrTime++;
        if(ucErrTime>250)
        {
            iic_stop();
            return 1;
        }
    }
    iic_scl_0();//时钟输出0        
    return 0;  
}

static void iic_ack(void)
{
    iic_scl_0();
    iic_sda_out();
    iic_sda_0();
    iic_delay();
    iic_scl_1();
    iic_delay();
    iic_scl_0();
}

static void iic_no_ack(void)
{
    iic_scl_0();
    iic_sda_out();
    iic_sda_1();
    iic_delay();
    iic_scl_1();
    iic_delay();
    iic_scl_0();
}

static void iic_send_byte(uint8_t byte)
{                        
    uint8_t t;   
    
    iic_sda_out();        
    iic_scl_0();//拉低时钟开始数据传输
    for(t=0;t<8;t++)
    {              
        if((byte&0x80)>>7)
            iic_sda_1();
        else
            iic_sda_0();
        byte<<=1;       
        iic_delay();
        iic_scl_1();
        iic_delay(); 
        iic_scl_0();    
        iic_delay();
    }     
}

static uint8_t iic_read_byte(uint8_t ack)
{
    unsigned char i,receive=0;
    
    iic_sda_in();//SDA设置为输入
    for(i=0;i<8;i++ )
    {
        iic_scl_0();
        iic_delay();
        iic_scl_1();
        receive<<=1;
        if(iic_sda_read())receive++;   
        iic_delay();
    }    
    iic_no_ack();
    if (!ack)
        iic_ack();//发送nACK
    else
        iic_no_ack(); //发送ACK   
    return receive;
}
#endif

void EcallGpioInit(void)
{
    /******** ECALL_LED_R (reserved) **************************/
    PORT_PinmuxConfig(ECALL_LED_R_PORT, ECALL_LED_R_PIN, ECALL_LED_R_PIN_MUX);
    GPIO_SetPinDir(ECALL_LED_R_PORT, ECALL_LED_R_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(ECALL_LED_R_PORT, ECALL_LED_R_PIN);                     //default off
    /******** ECALL_LED_G ***************************/
    PORT_PinmuxConfig(ECALL_LED_G_PORT, ECALL_LED_G_PIN, ECALL_LED_G_PIN_MUX);
    GPIO_SetPinDir(ECALL_LED_G_PORT, ECALL_LED_G_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(ECALL_LED_G_PORT, ECALL_LED_G_PIN);                     //default off
     /******** ECALL_BK_LIGHT ***************************/
    // PORT_PinmuxConfig(ECALL_BK_LIGHT_PORT, ECALL_BK_LIGHT_PIN, ECALL_BK_LIGHT_PIN_MUX);
    // GPIO_SetPinDir(ECALL_BK_LIGHT_PORT, ECALL_BK_LIGHT_PIN, GPIO_OUTPUT);
    // GPIO_SetPinOutput(ECALL_BK_LIGHT_PORT, ECALL_BK_LIGHT_PIN);
     /******** ECALL_PWR_EN ***************************/
    PORT_PinmuxConfig(ECALL_PWR_EN_PORT, ECALL_PWR_EN_PIN, ECALL_PWR_EN_PIN_MUX);
    GPIO_SetPinDir(ECALL_PWR_EN_PORT, ECALL_PWR_EN_PIN, GPIO_OUTPUT);
    GPIO_SetPinOutput(ECALL_PWR_EN_PORT, ECALL_PWR_EN_PIN);
    /******** vehicle mute (reserved) ***************************/
    PORT_PinmuxConfig(VEHICLE_MUTE_PORT, VEHICLE_MUTE_PIN, VEHICLE_MUTE_PIN_MUX);
    GPIO_SetPinDir(VEHICLE_MUTE_PORT, VEHICLE_MUTE_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(VEHICLE_MUTE_PORT, VEHICLE_MUTE_PIN);
    /******** SRS_EN ***************************/
    PORT_PinmuxConfig(SRS_EN_PORT, SRS_EN_PIN, SRS_EN_PIN_MUX);
    GPIO_SetPinDir(SRS_EN_PORT, SRS_EN_PIN, GPIO_OUTPUT);
    GPIO_SetPinOutput(SRS_EN_PORT, SRS_EN_PIN);
    /******** SRS_STATE ***************************/
    PORT_PinmuxConfig(SRS_STATE_PORT, SRS_STATE_PIN, SRS_STATE_PIN_MUX);
    GPIO_SetPinDir(SRS_STATE_PORT, SRS_STATE_PIN, GPIO_INPUT);
    PORT_PinIntConfig(SRS_STATE_PORT, SRS_STATE_PIN, PORT_ISF_INT_BOTH_EDGE);
    INT_SetPriority(SRS_STATE_PIN_IRQ, 0x3);
    INT_EnableIRQ(SRS_STATE_PIN_IRQ);
    /******** AMP ***************************/
    // PeripheralHalAmpInit();
    /******** button connect ***********************/
    // IrqPinInit()
    /******** srs (reserved) ***************************/
    // IrqPinInit()
}

void EcallHalSetSrsEn(uint8_t flag)
{
    if (0 == flag)
    {
        PORT_PinIntConfig(SRS_STATE_PORT, SRS_STATE_PIN, PORT_ISF_DISABLED);
        INT_DisableIRQ(SRS_STATE_PIN_IRQ);
        GPIO_ClearPinOutput(SRS_EN_PORT, SRS_EN_PIN);
    }
    else
    {
        PORT_PinIntConfig(SRS_STATE_PORT, SRS_STATE_PIN, PORT_ISF_INT_BOTH_EDGE);
        GPIO_SetPinOutput(SRS_EN_PORT, SRS_EN_PIN);
        INT_EnableIRQ(SRS_STATE_PIN_IRQ);
    }
}

void EcallHalSetSosLedRedState(uint8_t state)
{
    if (0 == state)
    {
        GPIO_ClearPinOutput(ECALL_LED_R_PORT, ECALL_LED_R_PIN);
    }
    else
    {
        GPIO_SetPinOutput(ECALL_LED_R_PORT, ECALL_LED_R_PIN);
    }
}

void EcallHalSetSosLedGreenState(uint8_t state)
{
    if (0 == state)
    {
        GPIO_ClearPinOutput(ECALL_LED_G_PORT, ECALL_LED_G_PIN);
    }
    else
    {
        GPIO_SetPinOutput(ECALL_LED_G_PORT, ECALL_LED_G_PIN);
    }
}

void EcallHalSetAmpSdz(uint8_t flag)
{
    if (0 == flag)
    {
        GPIO_ClearPinOutput(AMP_STB_PORT, AMP_STB_PIN);
    }
    else
    {
        GPIO_SetPinOutput(AMP_STB_PORT, AMP_STB_PIN);
    }
}

void EcallHalSetAmpMute(uint8_t flag)
{
    if (0 == flag)
    {
        GPIO_ClearPinOutput(AMP_MUTE_PORT, AMP_MUTE_PIN);
    }
    else
    {
        GPIO_SetPinOutput(AMP_MUTE_PORT, AMP_MUTE_PIN);
    }
}

void EcallHalSetVehicleMute(uint8_t flag)
{
    if (0 == flag)
    {
        #if AMP_ENABLE == 1
        Sa51500Close();
        #endif
        GPIO_ClearPinOutput(VEHICLE_MUTE_PORT, VEHICLE_MUTE_PIN);
    }
    else
    {
        #if AMP_ENABLE == 1
        Sa51500Init();
        #endif
        GPIO_SetPinOutput(VEHICLE_MUTE_PORT, VEHICLE_MUTE_PIN);
    }
}

/**
 * @brief 
 * 
 * @return return 0：BCALL Button no press; 1：BCALL Button pressed; 2 - short
 */
uint8_t EcallHalGetSosButtonStatus(void)
{
    uint32_t voltage;
    
    PeripheralHalAdGet(AD_CHANNEL_SOS_KEY, &voltage);  //AD采样电压
    // TBOX_PRINT("sos button voltage is %d\r\n",voltage);    
    if((voltage > 1900) && (voltage < 2300))     // test normal 2150
    {
        return 0;
    }
    else if((voltage > 1500) && (voltage < 1900)) //test 1710
    {
        return 1;
    }
    return 2;
}

/**
 * @brief 
 * 
 * @return uint8_t 0 - 未安装
 */
uint8_t EcallHalGetSosButtonConnectStatus(void)
{
    uint8_t ret = 0;

    if(GPIO_ReadPinLevel(PORT_C, GPIO_11) == GPIO_LOW)
    {
        ret = 1;
    }
    else
    {
        ret = 0;
    }

    return ret;
}

/*****************************************************************************
 * 函数:I2C0_Init
 * 功能:完成对I2C模块的配置，把I2C配置成主机模式。
 * 参数:
 * 返回:
 * 说明:1，I2C模块中包含4个TX_FIFO和4个RX_FIFO。
 *        2，当I2C在发送时掉线、时钟信号被干扰，会造成I2C通讯故障，I2C主机、从机无法接收、发送，可以使
 *            用复位MCU解除故障，也可以使用智芯半导体提供的I2C初始化函数解除故障
 *        3，为了解决I2C在发送时掉线产生的I2C模块无法继续工作的问题，需要在设置I2C模块之前，先把I2C使用的
 *            IO设置成GPIO功能，在完成设置I2C模块之后，把I2C使用的IO设置为I2C功能。
 *        4，波特率估算，在标准速度模式下，I2C模块内部的时钟分频系数约等于400。
****************************************************************************/
static void I2C0_Init(void)
{
#if (SOFTWARE_IIC_ENABLE == 1)
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PTB10_GPIO);    //配置  端口为GPIO功能
    PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN);

    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PTB9_GPIO);    //配置  端口为GPIO功能
    PORT_PullConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    GPIO_SetPinDir(I2C_SCL_PORT, I2C_SCL_PORT_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN);
#else
    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PTA3_GPIO);           //Pinmux I2C SCL pin to GPIO;
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PTA2_GPIO);           //Pinmux I2C SDA pin to GPIO;
    GPIO_SetPinDir(I2C_SCL_PORT, I2C_SCL_PORT_PIN, GPIO_OUTPUT);
    GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT_PIN, GPIO_OUTPUT);

    SYSCTRL_DisableModule(USER_I2C_SCB_TYPE);
    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, I2C_SCL_PORT_MUX);
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, I2C_SDA_PORT_MUX);
    PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);
    PORT_PullConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PORT_PULL_UP);
    SYSCTRL_ResetModule(USER_I2C_SCB_TYPE);

    CLK_ModuleSrc(USER_I2C_SCB_PCLK, CLK_SRC_PLL);                          // I2C模块的时钟源选择外部晶振
    CLK_SetClkDivider(USER_I2C_SCB_PCLK, CLK_DIV_10);                       // 设置I2C时钟的分频器。模块的时钟不能高于CPU的总线时钟
    SYSCTRL_EnableModule(USER_I2C_SCB_TYPE);

    //初始化I2C模块寄存器
    I2C_Disable(USER_I2C_SCB_INDEX);
    I2C_SdaRecover(USER_I2C_SCB_INDEX, ENABLE);                             //Enable SDA recover feature
    I2C_MstBusRecover(USER_I2C_SCB_INDEX, ENABLE);                          //Enable I2C bus recover feature
    I2C_ClearErrorStatusAll(USER_I2C_SCB_INDEX);                            //Clear All Error Status
    I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_ALL, DISABLE);                   // Disable I2C all interrupts
    I2C_Init(USER_I2C_SCB_INDEX,&g_stcI2cMasterConfig);                     // Initialize master
    I2C_FIFOConfig(USER_I2C_SCB_INDEX, &g_stcI2cFifoConfig);                // Configurate the FIFO threshold level
    I2C_SetTargetAddr(USER_I2C_SCB_INDEX, SA51034_ADDRESS);                 //设置从机的地址

    //设置中断信息
    I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_ALL, DISABLE);                   //禁止I2C模块的所有中断
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_ALL);                          //清除I2C模块所有的中断标志
    I2C_InstallCallBackFunc(USER_I2C_SCB_INDEX, I2C_INT_SCL_STUCK_AT_LOW, I2cSclStuckAtLowIsr);//安装I2C SCL持续低电平 中断函数
    I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_SCL_STUCK_AT_LOW, ENABLE);       // 使能 I2C_INT_SCL_STUCK_AT_LOW/SCL持续低电平 中断
    INT_SetPriority(USER_I2C_SCB_IRQN, 0x3);                                //设置 I2C_IRQn 的中断优先级。(高)0--15(低)
    INT_EnableIRQ(USER_I2C_SCB_IRQN);                                       //使能I2C_IRQn 中断

    // Initialize global variables
    uint8_t i;
    for (i = 0; i < 11; i++) {
        I2C_RxBuffer[i] = 0;
    }
    I2C_RxBufSN = 0;
    I2C_CheckErrCnt = 0;                                                    // Counter variable to prevent I2C module failure

    I2C_Enable(USER_I2C_SCB_INDEX);                                         // Enable I2C
#endif
}

#if(0)
/*****************************************************************************
 * 函数:I2cStopDetIsr
 * 功能: I2C_INT_STOP_DET/停止位信号产生 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:1，
****************************************************************************/
static void I2cStopDetIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_STOP_DET); //清除I2C模块的I2C_INT_STOP_DET/停止位信号产生 中断标志位
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量


    //以下添加其他处理代码

}

/*****************************************************************************
 * 函数:I2cStartDetIsr
 * 功能: I2C_INT_START_DET/起始位信号产生 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:1，
****************************************************************************/
static void I2cStartDetIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_START_DET); //清除I2C模块的I2C_INT_START_DET/起始位信号产生 中断标志位
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量


    //以下添加其他处理代码

}

/*****************************************************************************
 * 函数:I2xRxFullIsr
 * 功能: I2C_INT_RX_FULL 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:1，在使用接收中断时，建议把RX_FIFO门槛值设置为0，每次收到一个数据，进一次中断，可以有效避免
 *            接收数据的顺序产生混乱。
****************************************************************************/
static void I2xRxFullIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_RX_FULL);    //清除 I2C 模块的 I2C_INT_RX_FULL 中断标志位
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量

    // 读取RX_FIFO中的数据
    I2C_RxBuffer[I2C_RxBufSN] = I2C_ReceiveByte(USER_I2C_SCB_INDEX); // 从RX_FIFO中读取一个数据
    I2C_RxBufSN++;        //指向 I2C_RxBuffer 的下一个成员

    //以下添加其他处理代码

}

/*****************************************************************************
 * 函数:I2cRxOverIsr
 * 功能: I2C_INT_RX_OVER 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:
****************************************************************************/
static void I2cRxOverIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_RX_OVER);    //清除 I2C 模块的 I2C_INT_RX_OVER 中断标志位
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量

    // 清空RX_FIFO中的数据
    (void)I2C_ReceiveByte(USER_I2C_SCB_INDEX); // 从RX_FIFO中读取一个数据
    (void)I2C_ReceiveByte(USER_I2C_SCB_INDEX); // 从RX_FIFO中读取一个数据
    (void)I2C_ReceiveByte(USER_I2C_SCB_INDEX); // 从RX_FIFO中读取一个数据
    (void)I2C_ReceiveByte(USER_I2C_SCB_INDEX); // 从RX_FIFO中读取一个数据

    //以下添加其他处理代码

}
#endif
/*****************************************************************************
 * 函数:I2cSclStuckAtLowIsr
 * 功能: 声明I2C SCL持续低电平 中断处理函数
 * 参数:
 * 返回:
 * 说明:
****************************************************************************/
static void I2cSclStuckAtLowIsr(void)
{

    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_SCL_STUCK_AT_LOW);         //清除 I2C 模块的 I2C_SCL_STUCK_AT_LOW 中断标志位
    I2C0_Init();    //重新初始化I2C模块
}

static int16_t Sa51034WriteOneByte(uint8_t regAddr, uint8_t cValue)
{
#if (SOFTWARE_IIC_ENABLE == 1)
    iic_start();  
    iic_send_byte(SA51034_ADDRESS);                                     //发送IIC地址
    iic_wait_ack(); 
    iic_send_byte(regAddr);                                             //发送地址
    iic_wait_ack();                                                           
    iic_send_byte(cValue);                                              //发送字节                               
    iic_wait_ack();                     
    iic_stop();                                                         //产生一个停止条件  
    return 0;
#else
    unsigned int delayCnt;

    /* 第一步：等待 TX FIFO 为空，前一次发送完成 */
    delayCnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)    // 如果 TX FIFO不为空，等待,
    {
        delayCnt++;
        if(delayCnt > 5500)    //设置等待的最大循环次数，根据发送4个数据(4个TX_FIFO)需要的时间进行预估，建议实测
        {
            return ERR;
        }
    }

    /* 第二步：启动发送从机地址和从机寄存器地址 */
    I2C_Disable(USER_I2C_SCB_INDEX);                            // Disable I2C
    I2C_SetTargetAddr(USER_I2C_SCB_INDEX, SA51034_ADDRESS);     //设置从机的地址，低7位有效
    // uint32_t readBack;
    // readBack = I2C_GetTargetAddr(USER_I2C_SCB_INDEX);
    I2C_Enable(USER_I2C_SCB_INDEX);                             // Enable I2C

    I2C_MasterSendByte(USER_I2C_SCB_INDEX, I2C_RESTART_AND_STOP_DISABLE, regAddr);    //向TX_FIFO中传递一个字节的数据，启动发送

    delayCnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)    // 如果 TX FIFO不为空，等待,
    {
        delayCnt++;
        if(delayCnt > 2750)                                     //设置等待的最大循环次数，根据发送2个数据(2个TX_FIFO)需要的时间进行预估，建议实测
        {
            return ERR;
        }
    }

    /* 第三步：发送要写入的数据，发送数据完成后，产生停止信号 */
    I2C_MasterSendByte(USER_I2C_SCB_INDEX, I2C_STOP_EN, cValue);            //向TX_FIFO中传递一个字节的数据，启动发送。发送完成后，发出STOP信号。
    delayCnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)      // 如果 TX FIFO不为空，等待,
    {
        delayCnt++;
        if(delayCnt > 2750)                                                 //设置等待的最大循环次数，根据发送1个数据(1个TX_FIFO)需要的时间进行预估，建议实测
        {
            return ERR;
        }
    }
    return SUCC;    //完成一次操作
#endif
}

static int16_t Sa51034ReadOneByte(uint8_t regAddr,uint8_t *buffer)
{
#if (SOFTWARE_IIC_ENABLE == 1)                                                                               
    iic_start();  
    iic_send_byte(SA51034_ADDRESS);                                 //发送IIC地址
    iic_wait_ack();
    iic_send_byte(regAddr);                             //发送地址
    iic_wait_ack();        
    iic_start();              
    iic_send_byte(SA51034_ADDRESS+1);                           //进入接收模式               
    iic_wait_ack();     
    *buffer = iic_read_byte(0);           
    iic_stop();                                           //产生一个停止条件        
    return 0;
#else
    unsigned int delayCnt;

    /* 第一步：等待 TX FIFO 为空，前一次发送完成 */
    delayCnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)    // 如果 TX FIFO不为空，等待,
    {
        delayCnt++;
        if(delayCnt > 5500)    //设置等待的最大循环次数，根据发送4个数据(4个TX_FIFO)需要的时间进行预估，建议实测
        {
            return ERR;
        }
    }

    /* 第二步：启动发送从机地址和从机寄存器地址 */
    I2C_Disable(USER_I2C_SCB_INDEX);    // Disable I2C
    I2C_SetTargetAddr(USER_I2C_SCB_INDEX, SA51034_ADDRESS);                 //设置从机的地址，低7位有效
    // uint32_t readBack;
    // readBack = I2C_GetTargetAddr(USER_I2C_SCB_INDEX);
    I2C_Enable(USER_I2C_SCB_INDEX);    // Enable I2C

    I2C_MasterSendByte(USER_I2C_SCB_INDEX, I2C_STOP_EN, regAddr);
    //向TX_FIFO中传递一个字节的数据，启动发送从机寄存器地址。发送完成后，发出STOP信号。
    delayCnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)      // 如果 TX FIFO不为空，等待,
    {
        delayCnt++;
        if(delayCnt > 2750)                                                 //设置等待的最大循环次数，根据发送2个数据(2个TX_FIFO)需要的时间进行预估，建议实测
        {
            return ERR;
        }
    }

    /* 第三步：接收数据 */
    I2C_MasterReadCmd(USER_I2C_SCB_INDEX, I2C_RESTART_EN);                  //重启发送从机地址和读命令。
    delayCnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_RFNE) == RESET)      //如果 RX FIFO为空，等待。等待接收到一个字节的数据
    {
        delayCnt++;
        if(delayCnt > 5500)                                                 //设置等待的最大循环次数，给从机留出响应时间。建议实测
        {
            return ERR;
        }
    }
    *buffer = (unsigned char)I2C_ReceiveByte(USER_I2C_SCB_INDEX);           // 从RX_FIFO中读取一个数据

    /* 第四步：发送停止信号 */
    I2C_MasterSendByte(USER_I2C_SCB_INDEX, I2C_STOP_EN, 0x00);              //发送一个空数据，发送完成后，产生 STOP 信号

    return SUCC;    //完成一次操作
#endif
}

void Sa51500Init(void)                                                    
{
    uint16_t timerCounter = 100;
    uint8_t controlRegValue = 0;

    if(g_ampInitFlag)
    {
        return;
    }

    EcallHalSetAmpSdz(1);
    EcallHalSetAmpMute(1);
    I2C0_Init();                                             

    do
    {
        Sa51034ReadOneByte(CONTROL_REGISTER, &controlRegValue);
        timerCounter--;
    } while ((controlRegValue != 0x78) && (timerCounter));

    if(timerCounter == 0)
    {
        //TBOX_PRINT("SA51034 init error, CONTROL_REGISTER = 0x%02x\n", controlRegValue);
    }
    else
    {
        //TBOX_PRINT("SA51034 init success\n");
        g_ampInitFlag = 1;
        g_ampInitTime = xTaskGetTickCount();
    }

}

void Sa51500Close(void)
{
#if (SOFTWARE_IIC_ENABLE == 1)
    iic_sleep();
#endif
    EcallHalSetAmpSdz(0);
    EcallHalSetAmpMute(0);
    GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT_PIN, GPIO_INPUT);
    GPIO_SetPinDir(I2C_SCL_PORT, I2C_SCL_PORT_PIN, GPIO_INPUT);
    g_ampInitFlag = 0;
}

uint8_t EcallHalGetAmpFaultStatus(void)
{
    uint16_t timerCounter = 3;
    uint8_t faultRegValue = 0;
    uint8_t ret = 0;
    uint32_t readTime = 0;

    if(g_ampInitFlag == 0)
    {
        Sa51500Init();
    }

    readTime = xTaskGetTickCount();
    if( (osElapsedTimeGet( readTime, g_ampInitTime )) < 600 )
    {
        return 0xFF;
    }

    do
    {
        timerCounter--;
        ret = Sa51034ReadOneByte(FAULT_REGISTER, &faultRegValue);
        if(ret == SUCC)
        {
#if(DEBUG_PRINT_ENABLE)
            //TBOX_PRINT("faultRegValue = %02x\r\n", faultRegValue);
#endif
            return faultRegValue;
        }
    } while (timerCounter);

    return 0xFF;
}

uint8_t EcallHalGetAmpDiagnosticStatus(void)
{
    uint16_t timerCounter = 3;
    uint8_t diagnosticRegValue = 0;
    uint8_t ret = 0;
    uint32_t readTime = 0;

    if(g_ampInitFlag == 0)
    {
        Sa51500Init();
    }

    readTime = xTaskGetTickCount();
    if( (osElapsedTimeGet( readTime, g_ampInitTime )) < 600 )
    {
        return 0xFF;
    }

    do
    {
        timerCounter--;
        ret = Sa51034ReadOneByte(DIAGNOSTIC_REGISTER, &diagnosticRegValue);
        if(ret == SUCC)
        {
#if(DEBUG_PRINT_ENABLE)
            //TBOX_PRINT("diagnosticRegValue = %02x\r\n", diagnosticRegValue);
#endif
            return diagnosticRegValue;
        }
    } while (timerCounter);

    return 0xFF;
}

uint8_t EcallHalGetAmpControlStatus(void)
{
    uint16_t timerCounter = 3;
    uint8_t contralRegValue = 0;
    uint8_t ret = 0;
    uint32_t readTime = 0;

    if(g_ampInitFlag == 0)
    {
        Sa51500Init();
    }

    readTime = xTaskGetTickCount();
    if( (osElapsedTimeGet( readTime, g_ampInitTime )) < 600 )
    {
        return 0xFF;
    }

    do
    {
        timerCounter--;
        ret = Sa51034ReadOneByte(CONTROL_REGISTER, &contralRegValue);
        if(ret == SUCC)
        {
#if(DEBUG_PRINT_ENABLE)
            TBOX_PRINT("contralRegValue = %02x\r\n", contralRegValue);
#endif
            return contralRegValue;
        }
    } while (timerCounter);

    return 0xFF;
}

uint8_t EcallHalSetAmpControlStatus(uint8_t value)
{
    uint16_t timerCounter = 3;
    uint8_t contralRegValue = 0;
    uint8_t ret = 0;

    if(value > 4)
    {
        return 0xFF;
    }

    if(g_ampInitFlag == 0)
    {
        Sa51500Init();
    }

    do
    {
        timerCounter--;

        if(value == 0)
        {
            contralRegValue = 0x78;
        }
        else
        {
            ret = Sa51034ReadOneByte(CONTROL_REGISTER, &contralRegValue);
            if(ret != SUCC)
            {
                continue;
            }
            contralRegValue &= 0x3F;
            contralRegValue |= value << 6;
        }
        
        ret = Sa51034WriteOneByte(CONTROL_REGISTER, contralRegValue);
        if(ret != SUCC)
        {
            continue;
        }
        ret = Sa51034ReadOneByte(CONTROL_REGISTER, &contralRegValue);
        if(ret == SUCC)
        {
#if(DEBUG_PRINT_ENABLE)
        TBOX_PRINT("info:set contralRegValue = %02x\r\n", contralRegValue);
#endif
           return 0;
        }
        
    } while (timerCounter);

    return 0xFF;
}

uint8_t EcallHalRestartAmpClose(void)
{
    if(g_ampInitFlag == 0)
    {
        Sa51500Init();
    }
    else
    {
        // EcallHalSetAmpMute(1);
        EcallHalSetAmpSdz(0);

        //DEBUG_PRINT("close sdz\r\n");
    }
    
    return 0x00;
}

uint8_t EcallHalRestartAmpDiagnostic(void)
{
    if(g_ampInitFlag == 0)
    {
        Sa51500Init();
        //DEBUG_PRINT("init sa51034\r\n");
    }
    else
    {
        // EcallHalSetAmpMute(1);
        EcallHalSetAmpSdz(0);
        vTaskDelay(10);
        EcallHalSetAmpSdz(1);
        // EcallHalSetAmpMute(0);
        g_ampInitTime = xTaskGetTickCount();
    }
    
    return 0x00;
}

/**
 * @brief 
 * 
 * @return return 0：Mic connect normal; 1：Mic connect error; 2 - short
 */
uint8_t EcallHalGetMicConnectStatus(void)
{
    // 未连接2950，连接2582。对地短路20，3V3短路3299
    // 未连接3002，连接1580。
    #define MIC_CHECK_RANGE     ( 150 )
    #define MIC_NORMAL_VOL      ( 1580 )
    #define MIC_VCC_SHORT_VOL   ( 3299 )
    #define MIC_GND_SHORT_VOL   ( 30 )
    #define MIC_OPEN_VOL        ( 3000 )

    uint32_t voltage;

    PeripheralHalAdGet(AD_CHANNEL_MICP, &voltage);
#if(DEBUG_PRINT_ENABLE)
    // TBOX_PRINT("mic voltage is %d\r\n",voltage);
#endif
    if((voltage > (MIC_NORMAL_VOL - MIC_CHECK_RANGE)) && (voltage < (MIC_NORMAL_VOL + MIC_CHECK_RANGE)))
    {
        return 0;
    }
    else if((voltage > (MIC_GND_SHORT_VOL + MIC_CHECK_RANGE)) && (voltage < (MIC_VCC_SHORT_VOL - MIC_CHECK_RANGE)))
    {
        return 1;
    }
    return 2;
}

void EcallHalInit(void)
{
    EcallGpioInit();
    g_SosLedMsgQueue = xQueueCreate(5, sizeof(SosLledState_e));
    g_SosLedMutex = xSemaphoreCreateMutex();  
    #if AMP_ENABLE == 1
    Sa51500Init();
    #endif
}

/** ****************************************************************************
* @remarks       uint32_t osElapsedTimeGet( uint32_t new_time, uint32_t old_time )
* @brief         获取运行时间
* @param[in]     new_time 当前时间， old_time 历史时间
* @param[out]    无
* @return        时间差
* @attention     无
*******************************************************************************/
uint32_t osElapsedTimeGet( uint32_t new_time, uint32_t old_time )
{
    uint32_t tempDa;

    if ( new_time >= old_time )
    {
        tempDa = new_time - old_time;
    }
    else
    {
        tempDa = 0xFFFFFFFF - new_time + new_time + 1;
    }

    return tempDa;
}

/** ****************************************************************************
* @remarks       void EcallHalSosLedTimerCallback( void )
* @brief         SOS led闪烁控制回调函数
* @param[in]     timer_id time id
* @param[out]    无
* @return        无
* @attention     无
*******************************************************************************/
void EcallHalSosLedTimerCallback( void )
{
    static uint8_t st = 1;
    
    if( g_SosLedSwitchTime.ledMode == E_ECALL_LED_MODE_FLASH )
    {
        if( st == 0 )
        {
            EcallHalSetSosLedRedState( 0 );
            EcallHalSetSosLedGreenState( 0 );
            g_SosLedSwitchTime.ledCounter++;
            if( g_SosLedSwitchTime.ledCounter >= g_SosLedSwitchTime.ledOffTime )
            {
                st = 1;
                g_SosLedSwitchTime.ledCounter = 0;
            }
        }
        else if( st == 1 )
        {
            EcallHalSetSosLedRedState( 1 );
            EcallHalSetSosLedGreenState( 1 );
            g_SosLedSwitchTime.ledCounter++;
            if( g_SosLedSwitchTime.ledCounter >= g_SosLedSwitchTime.ledOnTime )
            {
                st = 0;
                g_SosLedSwitchTime.ledCounter = 0;
            }
        }
    }
}

/** ****************************************************************************
* @remarks       void EcallHalSetSosLedMode(EcallLedMode_e mode , uint16_t on_time , uint16_t off_time )
* @brief         设置SOS led灯显示的状态
* @param[in]     无
* @param[out]    无
* @return        LED显示的状态
* @attention     无
*******************************************************************************/
void EcallHalSetSosLedMode(EcallLedMode_e mode , uint16_t on_time , uint16_t off_time )
{
    g_SosLedSwitchTime.ledMode =  mode;
    g_SosLedSwitchTime.ledCounter = 0;
    g_SosLedSwitchTime.ledOnTime = on_time;
    g_SosLedSwitchTime.ledOffTime = off_time;

    if (mode == E_ECALL_LED_MODE_KEEP_OFF)
    {
        EcallHalSetSosLedRedState( 0 );
        EcallHalSetSosLedGreenState( 0 );
    }
    else if (mode == E_ECALL_LED_MODE_KEEP_ON)
    {
        EcallHalSetSosLedRedState( 1 );
        EcallHalSetSosLedGreenState( 1 );
    }
    else
    {
        // do nothing
    }
}

void EcallHalSetMode(uint8_t wakeMode)
{   
    if(0 == wakeMode)
    {
        EcallHalSetSosLedRedState(0);
        EcallHalSetSosLedGreenState(0);
        EcallHalSetVehicleMute(0);
        GPIO_ClearPinOutput(ECALL_PWR_EN_PORT, ECALL_PWR_EN_PIN);
    }
    else if(1 == wakeMode)
    {
        EcallHalSetSosLedRedState(0);   //change power on led off
        EcallHalSetSosLedGreenState(0); //change power on led off
        EcallHalSetVehicleMute(1);
        GPIO_SetPinOutput(ECALL_PWR_EN_PORT, ECALL_PWR_EN_PIN);
    }  
}

/** ****************************************************************************
* @remarks       uint32_t EcallHalSosLedControlReceive( sos_led_trig_msg_s *msg, uint32_t time_out )
* @brief         SOS 获取LED灯闪烁状态
* @param[in]     time_out 延迟时间
* @param[out]    *msg数据目标地址
* @return        pdPASS 成功，pdFAIL 失败 
* @attention     无
*******************************************************************************/
uint32_t EcallHalSosLedControlReceive( SosLledState_e *msg, uint32_t time_out )
{
    if(g_SosLedMsgQueue == NULL)
    {
        return pdFAIL;
    }
    if(xQueueReceive( g_SosLedMsgQueue, msg, time_out ) == pdPASS)
    {
        return pdPASS;
    }
    else
    {
        return pdFAIL;
    }
}

/** ****************************************************************************
* @remarks       uint32_t EcallHalSosLedControlSend( SosLledState_e flash )
* @brief         发送SOS LED灯显示状态
* @param[in]     event 事件，flash 显示状态
* @param[out]    无
* @return        pdPASS 成功，pdFAIL 失败 
* @attention     无
*******************************************************************************/
uint32_t EcallHalSosLedControlSend( SosLledState_e flash )
{
    SosLledState_e trig_msg;
    uint32_t  ret = pdFAIL;
    xSemaphoreTake(g_SosLedMutex,portMAX_DELAY);
    trig_msg = flash;
    ret = xQueueSend( g_SosLedMsgQueue , &trig_msg , SOS_LED_QUEUE_SEND_WAIT_TIME );
    xSemaphoreGive(g_SosLedMutex);
    return ret;
}
