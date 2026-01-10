/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: gSensorHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include <stdio.h>
#include <stdarg.h>
#include "gSensorHal.h"
#include "logHal.h"
#include "sysctrl_drv.h" 
#include "clock_drv.h" 
#include "gpio_drv.h" 
#include "i2c_drv.h" 

/****************************** Macro Definitions ******************************/
#define USER_I2C_SCB_TYPE       SYSCTRL_I2C0
#define USER_I2C_SCB_PCLK       CLK_I2C0
#define USER_I2C_SCB_INDEX      I2C0_ID
#define USER_I2C_SCB_IRQN       I2C0_IRQn
#define I2C_SDA_PORT            PORT_B
#define I2C_SDA_PORT_PIN        GPIO_10
#define I2C_SDA_PORT_MUX        PTB10_I2C0_SDA
#define I2C_SCL_PORT            PORT_B
#define I2C_SCL_PORT_PIN        GPIO_9
#define I2C_SCL_PORT_MUX        PTB9_I2C0_SCL
#define USE_SOFTWARE_IIC

#ifdef USE_SOFTWARE_IIC
#define E_I2C_SLAVE_ADDR        0x6A
#else
#define E_I2C_SLAVE_ADDR        0x6A
#endif

#define ACC_RATIO               16384


#ifdef USE_SOFTWARE_IIC
#define iic_scl_1()         GPIO_SetPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN)
#define iic_scl_0()         GPIO_ClearPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN)

#define iic_sda_1()         GPIO_SetPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN)
#define iic_sda_0()         GPIO_ClearPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN)
#define iic_sda_read()      GPIO_ReadPinLevel(I2C_SDA_PORT, I2C_SDA_PORT_PIN)
#define iic_sda_in()        // {GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT, GPIO_INPUT);PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_DISABLED);}
#define iic_sda_out()       // {GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT, GPIO_OUTPUT);PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);}
#endif

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static uint8_t ReadBuffer[20];   // data received from EEPROM

volatile static uint8_t I2C_TxBuffer[11];    //定义发送数据使用的数组
volatile static uint16_t I2C_RxBuffer[11];//定义接收数据使用的数组
volatile static uint32_t I2C_RxBufSN;        //定义接收数组的当前序号
volatile static uint32_t I2C_CheckErrCnt;    //防止I2C模块故障的计数变量

//I2C0模块的配置数据
static const I2C_Config_t g_stcI2cMasterConfig =
{
    .masterSlaveMode = I2C_MASTER,    // I2C模块配置为主机模式
    .speedMode = I2C_SPEED_STANDARD,// I2C模块的速度模式选择为标准模式。最大波特率：STANDARD--100K，FAST--400K，FAST Plus--1M,HS--1.6M
    .addrBitMode = I2C_ADDR_BITS_7,    // 发送器用7位的地址模式。可以选择7位、10位的地址模式
    .ownSlaveAddr = 0x00000001,        // 本I2C模块的地址为0x01。I2C模块做主机时，取值范围0--7；做从机时，取值范围8--255
    .restart = ENABLE                // 做主机时，使能重启功能。4个功能需要它使能。
};

//I2C0 FIFO 的门槛值配置数据
static const I2C_FifoConfig_t g_stcI2cFifoConfig =
{
    .recvFifoThr = 0,       // RX_FIFO中的数据个数大于等于门槛值(n+1)时，触发 RX_FULL 中断
    .transmitFifoThr = 0    // TX_FIFO中的数据个数小于等于门槛值(n+1)时，触发 TX_EMPTY 中断
};

/****************************** Function Declarations *************************/
static void I2cStopDetIsr(void);    //声明I2C_INT_STOP_DET/停止位信号产生 对应的中断处理函数
static void I2cStartDetIsr(void);    //声明I2C_INT_START_DET/起始位信号产生 对应的中断处理函数
static void I2xRxFullIsr(void);    //声明I2C_INT_RX_FULL/接收FIFO满 对应的中断处理函数
static void I2cRxOverIsr(void);    //声明I2C_INT_RX_OVERL/接收FIFO溢出 对应的中断处理函数
static void I2cSclStuckAtLowIsr(void);    //声明I2C SCL持续低电平 中断函数

/****************************** Public Function Implementations ***************/
#ifdef USE_SOFTWARE_IIC
static void iic_sleep(void)
{
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PTB10_GPIO);    //配置  端口为GPIO功能
    PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    PORT_OpenDrainConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, ENABLE);
    GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT_PIN, GPIO_INPUT);
    // GPIO_ClearPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN);

    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PTB9_GPIO);    //配置  端口为GPIO功能
    PORT_PullConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    PORT_OpenDrainConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, ENABLE);
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


/*****************************************************************************
 * 函数:I2C0_Init
 * 功能:完成对I2C1模块的配置，把I2C1配置成主机模式。
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
#ifdef USE_SOFTWARE_IIC
      PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PTB10_GPIO);    //配置  端口为GPIO功能
    PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    GPIO_SetPinDir(I2C_SDA_PORT, I2C_SDA_PORT_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(I2C_SDA_PORT, I2C_SDA_PORT_PIN);

    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PTB9_GPIO);    //配置  端口为GPIO功能
    PORT_PullConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    GPIO_SetPinDir(I2C_SCL_PORT, I2C_SCL_PORT_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(I2C_SCL_PORT, I2C_SCL_PORT_PIN);
#else
    //需要在设置I2C模块之前，先把I2C使用的IO设置成GPIO功能，断开总线与模块之间的信号连接
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PTB10_GPIO);    //配置  端口为GPIO功能
    PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PTB9_GPIO);    //配置  端口为GPIO功能

    //初始化时钟源和复位I2C模块
    CLK_ModuleSrc(USER_I2C_SCB_PCLK, CLK_SRC_OSC40M);    //I2C模块的时钟源选择外部晶振
  CLK_SetClkDivider(USER_I2C_SCB_PCLK, CLK_DIV_2);        //设置I2C时钟的分频器。模块的时钟不能高于CPU的总线时钟
  SYSCTRL_ResetModule(USER_I2C_SCB_TYPE);            //在系统控制模块中，复位I2C模块
  SYSCTRL_EnableModule(USER_I2C_SCB_TYPE);            //在系统控制模块中，使能I2C模块

    //初始化I2C模块寄存器
    I2C_Disable(USER_I2C_SCB_INDEX);    // Disable I2C
    I2C_SdaRecover(USER_I2C_SCB_INDEX, ENABLE);            //Enable SDA recover feature
    I2C_MstBusRecover(USER_I2C_SCB_INDEX, ENABLE);            //Enable I2C bus recover feature
  I2C_ClearErrorStatusAll(USER_I2C_SCB_INDEX);            //Clear All Error Status
  I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_ALL, DISABLE);    // Disable I2C all interrupts
  I2C_Init(USER_I2C_SCB_INDEX,&g_stcI2cMasterConfig);        // Initialize master
  I2C_FIFOConfig(USER_I2C_SCB_INDEX, &g_stcI2cFifoConfig);    // Configurate the FIFO threshold level
  I2C_SetTargetAddr(USER_I2C_SCB_INDEX, 0x0F);            //设置从机的地址

    //设置中断信息
    I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_ALL, DISABLE);    //禁止I2C模块的所有中断
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_ALL);            //清除I2C模块所有的中断标志

    // I2C_InstallCallBackFunc(USER_I2C_SCB_INDEX, I2C_INT_STOP_DET, I2cStopDetIsr);//安装I2C停止位信号产生中断函数
    // I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_STOP_DET, ENABLE);    // 使能 I2C_INT_STOP_DET/停止位信号产生 中断

    // I2C_InstallCallBackFunc(USER_I2C_SCB_INDEX, I2C_INT_START_DET, I2cStartDetIsr);//安装I2C起始位信号产生中断函数
    // I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_START_DET, ENABLE);    // 使能 I2C_INT_START_DET/起始位信号产生 中断

    // I2C_InstallCallBackFunc(USER_I2C_SCB_INDEX, I2C_INT_RX_FULL, I2xRxFullIsr);//安装I2C接收FIFO满中断函数
    // I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_RX_FULL, ENABLE);    // 使能 I2C_INT_RX_FULL/接收FIFO满 中断

    // I2C_InstallCallBackFunc(USER_I2C_SCB_INDEX, I2C_INT_RX_OVER, I2cRxOverIsr);//安装I2C接收FIFO溢出中断函数
    // I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_RX_OVER, ENABLE);    // 使能 I2C_INT_RX_OVER/接收FIFO溢出 中断

    // I2C_InstallCallBackFunc(USER_I2C_SCB_INDEX, I2C_INT_SCL_STUCK_AT_LOW, I2cSclStuckAtLowIsr);//安装I2C SCL持续低电平 中断函数
    // I2C_IntCmd(USER_I2C_SCB_INDEX, I2C_INT_SCL_STUCK_AT_LOW, ENABLE);    // 使能 I2C_INT_SCL_STUCK_AT_LOW/SCL持续低电平 中断

    INT_SetPriority(USER_I2C_SCB_IRQN, 0x3);            //设置 I2C_IRQn 的中断优先级。(高)0--15(低)
    // INT_EnableIRQ(USER_I2C_SCB_IRQN);                    //使能I2C_IRQn 中断
  INT_DisableIRQ(USER_I2C_SCB_IRQN);                    //禁止 I2C1_IRQn 中断


    //初始化全局变量
    I2C_TxBuffer[0] = 0x00;
    I2C_TxBuffer[1] = 0x01;
    I2C_TxBuffer[2] = 0x02;
    I2C_TxBuffer[3] = 0x03;
    I2C_TxBuffer[4] = 0x04;
    I2C_TxBuffer[5] = 0x05;
    I2C_TxBuffer[6] = 0x06;
    I2C_TxBuffer[7] = 0x07;
    I2C_TxBuffer[8] = 0x08;
    I2C_TxBuffer[9] = 0x09;
    I2C_TxBuffer[10] = 0x0A;

    I2C_RxBuffer[0] = 0;
    I2C_RxBuffer[1] = 0;
    I2C_RxBuffer[2] = 0;
    I2C_RxBuffer[3] = 0;
    I2C_RxBuffer[4] = 0;
    I2C_RxBuffer[5] = 0;
    I2C_RxBuffer[6] = 0;
    I2C_RxBuffer[7] = 0;
    I2C_RxBuffer[8] = 0;
    I2C_RxBuffer[9] = 0;
    I2C_RxBuffer[10] = 0;
    I2C_RxBufSN = 0;
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量

    //使能I2C模块，开始工作
  I2C_Enable(USER_I2C_SCB_INDEX);    // Enable I2C

    //需要在设置I2C模块后，把I2C使用的IO设置成I2C功能
  PORT_PinmuxConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, I2C_SCL_PORT_MUX);    // 设置为I2C_SCL功能
    PORT_PinmuxConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, I2C_SDA_PORT_MUX);    // 设置为I2C_SDA功能
    PORT_PullConfig(I2C_SDA_PORT, I2C_SDA_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
    PORT_PullConfig(I2C_SCL_PORT, I2C_SCL_PORT_PIN, PORT_PULL_UP);        //使能内部上拉
#endif
}


/*****************************************************************************
 * 函数:I2C_MasterSendData
 * 功能:把需要发送的数据，转移到 TX_FIFO中，然后I2C模块自动把这些数据发送出去。
 * 参数:slaveAddr--目标从机的地址；txBuffer--存放需要发送的数据；len--需要发送的数据的长度
 * 返回:SUCC--成功地把数据转移到TX_FIFO中；ERR--发送失败
 * 说明:1，I2C模块中包含4个TX_FIFO和4个RX_FIFO。
 *        2，当I2C模块出现等待超时，认为发送出错，在下一次通讯之前，要清除TX_FIFO中的数据。
****************************************************************************/
static ResultStatus_t I2C_MasterSendData(uint8_t * txBuffer, uint16_t len)
{
    unsigned int i;
    unsigned int delay_cnt;

    for(i=0; i<len; i++)
    {
        delay_cnt = 0;
        while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)    // 如果 TX FIFO不为空，等待,
        {
            delay_cnt++;
            if(delay_cnt > 5500)    //设置等待的最大循环次数，根据发送4个数据(4个TX_FIFO)需要的时间进行预估，建议实测
            {
                return ERR;
            }
        }

        I2C_MasterSendByte(USER_I2C_SCB_INDEX, I2C_RESTART_AND_STOP_DISABLE,*(txBuffer+i));    //向TX_FIFO中传递一个字节的数据
    }

    return SUCC;
}


/*****************************************************************************
 * 函数:I2C_MasterReceiveData
 * 功能:从RX_FIFO中读取已经接收的数据。
 * 参数:rxBuffer--存放读取到的数据；len--需要读取的数据的长度
 * 返回:SUCC--成功地从RX_FIFO中读取到想要的信息；ERR--读取操作失败
 * 说明:1，I2C模块中包含4个TX_FIFO和4个RX_FIFO。
 *        2，当I2C模块出现等待超时，认为接收出错，在下一次通讯之前，要清除TX_FIFO中的数据。
****************************************************************************/
static ResultStatus_t I2C_MasterReceiveData(uint8_t * rxBuffer, uint16_t len)
{
    unsigned int delay_cnt;
    unsigned int i;

    delay_cnt = 0;
    while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_TFNF) == RESET)    //如果 TX FIFO不为空，等待,
    {
        delay_cnt++;
        if(delay_cnt > 550000)    //设置等待的最大循环次数，需要给从机足够的响应时间
        {
            return ERR;
        }
    }

    for(i=0; i<len; i++)
    {
        I2C_MasterReadCmd(USER_I2C_SCB_INDEX, I2C_RESTART_AND_STOP_DISABLE);    //the master sends a command to read

        delay_cnt = 0;
        while(I2C_GetStatus(USER_I2C_SCB_INDEX, I2C_STATUS_RFNE) == RESET)    //如果 RX FIFO为空，等待, When RX FIFO is not empty, the master receives one byte
        {
            delay_cnt++;
            if(delay_cnt > 5500)    //设置等待的最大循环次数，根据发送4个数据(4个TX_FIFO)需要的时间进行预估，建议实测
            {
                return ERR;
            }
        }

        rxBuffer[i] = I2C_ReceiveByte(USER_I2C_SCB_INDEX) & 0xFF;      // 从RX_FIFO中读取一个数据
    }

    return SUCC;
}


/*****************************************************************************
 * 函数:I2cStopDetIsr
 * 功能: I2C_INT_STOP_DET/停止位信号产生 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:1，
****************************************************************************/
void I2cStopDetIsr(void)
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
void I2cStartDetIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_START_DET); //清除I2C模块的I2C_INT_START_DET/起始位信号产生 中断标志位
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量


    //以下添加其他处理代码

}


/*****************************************************************************
 * 函数:I2C1_Rx_Full_ISR
 * 功能: I2C_INT_RX_FULL 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:1，在使用接收中断时，建议把RX_FIFO门槛值设置为0，每次收到一个数据，进一次中断，可以有效避免
 *            接收数据的顺序产生混乱。
****************************************************************************/
void I2xRxFullIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_RX_FULL);    //清除 I2C 模块的 I2C_INT_RX_FULL 中断标志位
    I2C_CheckErrCnt = 0;    //防止I2C模块故障的计数变量

    // 读取RX_FIFO中的数据
    I2C_RxBuffer[I2C_RxBufSN] = I2C_ReceiveByte(USER_I2C_SCB_INDEX); // 从RX_FIFO中读取一个数据
    I2C_RxBufSN++;        //指向 I2C1_RxBuffer 的下一个成员

    //以下添加其他处理代码

}


/*****************************************************************************
 * 函数:I2C1_Rx_OVER_ISR
 * 功能: I2C_INT_RX_OVER 对应的中断处理函数
 * 参数:
 * 返回:
 * 说明:
****************************************************************************/
void I2cRxOverIsr(void)
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


/*****************************************************************************
 * 函数:I2C1_SCL_STUCK_AT_LOW_ISR
 * 功能: 声明I2C SCL持续低电平 中断处理函数
 * 参数:
 * 返回:
 * 说明:
****************************************************************************/
void I2cSclStuckAtLowIsr(void)
{
    I2C_ClearInt(USER_I2C_SCB_INDEX, I2C_INT_SCL_STUCK_AT_LOW);    //清除 I2C 模块的 I2C_SCL_STUCK_AT_LOW 中断标志位

    I2C0_Init();    //重新初始化I2C模块
}

#if 0
static cy_en_scb_i2c_status_t I2cStart(uint8_t address)
{ 
    cy_en_scb_i2c_status_t  result_i2c;
    result_i2c = Cy_SCB_I2C_MasterSendStart(USER_I2C_SCB_TYPE, address, CY_SCB_I2C_WRITE_XFER, 50, &g_stc_i2c_context);
    return result_i2c;
}   

static cy_en_scb_i2c_status_t I2cStop(void)
{   
    cy_en_scb_i2c_status_t  result_i2c;
    result_i2c = Cy_SCB_I2C_MasterSendStop(USER_I2C_SCB_TYPE, TIMEOUT, &g_stc_i2c_context); 
    return result_i2c;
}  
 
//static cy_en_scb_i2c_status_t I2cWriteStop(void)
//{   
//    cy_en_scb_i2c_status_t  result_i2c;
//    result_i2c = Cy_SCB_I2C_MasterSendStop(USER_I2C_SCB_TYPE, TIMEOUT, &g_stc_i2c_context); 
//    return result_i2c;
//}   

static cy_en_scb_i2c_status_t I2CWriteByte(uint8_t cValue)
{
    // Transmite One Byte Data 
    cy_en_scb_i2c_status_t result_i2c;
    result_i2c = Cy_SCB_I2C_MasterWriteByte(USER_I2C_SCB_TYPE, cValue, TIMEOUT, &g_stc_i2c_context);
    return  result_i2c;
}

static cy_en_scb_i2c_status_t I2c_Continue(uint8_t address)
{
    cy_en_scb_i2c_status_t result_i2c;
    result_i2c = Cy_SCB_I2C_MasterSendReStart(USER_I2C_SCB_TYPE,address, CY_SCB_I2C_READ_XFER, TIMEOUT, &g_stc_i2c_context);
    return  result_i2c; 
} 
#endif
static int32_t Lsm6dsmWriteoneByte(uint8_t address, uint8_t cValue)
{
#ifdef USE_SOFTWARE_IIC
    iic_start();  
    iic_send_byte(E_I2C_SLAVE_ADDR);                                  //发送IIC地址
    iic_wait_ack(); 
    iic_send_byte(address);                             //发送地址
    iic_wait_ack();                                                           
    iic_send_byte(cValue);                           //发送字节                               
    iic_wait_ack();                     
    iic_stop();                                           //产生一个停止条件  
    return 0;
#else
  I2C_SetTargetAddr(USER_I2C_SCB_INDEX, address);    //设置从机的地址
  return I2C_MasterSendData(&cValue, 1);
#endif
}
#if 0
//static int32_t Lsm6dsmWriteByte(uint8_t address, uint8_t *buffer, uint8_t Length)
//{
//  int i;
//  if(I2cStart(E_I2C_SLAVE_ADDR) != CY_SCB_I2C_SUCCESS)    return 1;
//  if(I2CWriteByte(address) != CY_SCB_I2C_SUCCESS)    return 1;
//  for(i = 0; i < Length ; i++)
//  {
//      if(I2CWriteByte(*buffer++) != CY_SCB_I2C_SUCCESS) return 1;
//      DelayUs(2000); 
//  }
//  if(I2cStop() != CY_SCB_I2C_SUCCESS)    return 1;
//  return 0; 
//}

//static cy_en_scb_i2c_status_t I2c_Read( uint8_t *Rxbyte)
//{
//    cy_en_scb_i2c_status_t result_i2c;
//
//    result_i2c = Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_ACK, Rxbyte, TIMEOUT, &g_stc_i2c_context);
//    return result_i2c; 
//} 
static cy_en_scb_i2c_status_t I2c_ReadLast(uint8_t *Rxbyte)  
{
    cy_en_scb_i2c_status_t result_i2c;
    result_i2c = Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_NAK, Rxbyte, TIMEOUT, &g_stc_i2c_context);
    return result_i2c;                       
}
#endif

static int16_t Lsm6dsmReadOneByte(uint8_t address,uint8_t *buffer)
{
#ifdef USE_SOFTWARE_IIC                                                                               
    iic_start();  
    iic_send_byte(E_I2C_SLAVE_ADDR);                                 //发送IIC地址
    iic_wait_ack();
    iic_send_byte(address);                             //发送地址
    iic_wait_ack();        
    iic_start();              
    iic_send_byte(E_I2C_SLAVE_ADDR+1);                           //进入接收模式               
    iic_wait_ack();     
    *buffer = iic_read_byte(0);           
    iic_stop();                                           //产生一个停止条件        
    return 0;
#else
  I2C_SetTargetAddr(USER_I2C_SCB_INDEX, address);    //设置从机的地址
  return I2C_MasterReceiveData(buffer, 1);
#endif
}

static uint8_t Lsm6dsmWakeupFlag = 0;
static void Lsm6dsmInit(uint8_t flag)
{
  uint16_t timerCounter = 10000;
  Lsm6dsmReadOneByte(LSM6DSM_WHO_AM_I,ReadBuffer);
  while((ReadBuffer[0]!=0x6B) && (timerCounter))
  {
      timerCounter--;
      if(timerCounter < 5000)
      {
          Lsm6dsmReadOneByte(LSM6DSM_WHO_AM_I,ReadBuffer);
      }
      //RTOS_HalApiWait(50);
  }

  if(timerCounter == 0)
  {
    INFO_PRINT("Lsm6dsm init error,reg = %02x\r\n", Lsm6dsmReadOneByte(LSM6DSM_WHO_AM_I,ReadBuffer));
    return;
  }

  /*set ODR 416 Hz   full-scale ±2g*/
  Lsm6dsmWriteoneByte(LSM6DSM_CTRL1_XL,0x60);
  //Lsm6dsmReadOneByte(LSM6DSM_CTRL1_XL,ReadBuffer);
  Lsm6dsmWriteoneByte(LSM6DSM_TAP_CFG,0x00);
  if(flag == 1)
  {
    Lsm6dsmWakeupFlag = 1;
  }
  else
  {
    Lsm6dsmWakeupFlag = 0;
  }
}
/*************************************************
  Function:       GSensorHalGetWakeupFlag
  Description:    Get wake-up flag
  Input:          none
  Output:         none
  Return:         Lsm6dsmWakeupFlag : set the wake-up flag
                  0 : no wake-up
                  1 : set wake-up
  Others:         none
*************************************************/
int16_t GSensorHalGetWakeupFlag(void)
{
  return Lsm6dsmWakeupFlag;
}
/*************************************************
  Function:       GSensorHalInit
  Description:    Gsensor module init 
  Input:          flag : Whether to set interrupt wake up
  Output:         none
  Return:         none
  Others:         none
*************************************************/
void GSensorHalInit(uint8_t flag)
{
    // I2C0_Init();

    Lsm6dsmInit(flag);
}

/*************************************************
  Function:       GSensorHalGetValue
  Description:    Get Gsensor data
  Input:          none
  Output:         GSensordata : The obtained data address,uint g/1000
  Return:         0 : get success
                  1 : get failed
  Others:         none
*************************************************/
int16_t GSensorHalGetValue(GSensorHalData_t *GSensordata)
{
#if(1)
    uint8_t buf[6];
    short tem;
    double temp;
    Lsm6dsmReadOneByte(LSM6DSM_STATUS_REG,ReadBuffer);
    if((ReadBuffer[0]&0x01) != 0)
    {
        Lsm6dsmReadOneByte(LSM6DSM_OUTX_H_XL,ReadBuffer);
        buf[0] = ReadBuffer[0];
        Lsm6dsmReadOneByte(LSM6DSM_OUTX_L_XL,ReadBuffer);
        buf[1] = ReadBuffer[0];

        Lsm6dsmReadOneByte(LSM6DSM_OUTY_H_XL,ReadBuffer);
        buf[2] = ReadBuffer[0];
        Lsm6dsmReadOneByte(LSM6DSM_OUTY_L_XL,ReadBuffer);
        buf[3] = ReadBuffer[0];

        Lsm6dsmReadOneByte(LSM6DSM_OUTZ_H_XL,ReadBuffer);
        buf[4] = ReadBuffer[0];
        Lsm6dsmReadOneByte(LSM6DSM_OUTZ_L_XL,ReadBuffer);
        buf[5] = ReadBuffer[0];

        tem = (buf[0]<<8)|buf[1];
        temp = ((double)tem) / ACC_RATIO;
        GSensordata->xAcceleratedData = ((short)(temp*1000));
        tem = (buf[2]<<8)|buf[3];
        temp = ((double)tem) / ACC_RATIO;
        GSensordata->yAcceleratedData = ((short)(temp*1000));
        tem = (buf[4]<<8)|buf[5];
        temp = ((double)tem) / ACC_RATIO;
        GSensordata->zAcceleratedData = ((short)(temp*1000));
        
//        GSensordata->xAcceleratedData = (buf[0]<<8)|buf[1];
//        GSensordata->yAcceleratedData = (buf[2]<<8)|buf[3];
//        GSensordata->zAcceleratedData = (buf[4]<<8)|buf[5];
        return 0;
    }
#endif
    return 1;
}

/*************************************************
  Function:       GSensorHalSetThreshold
  Description:    Set Gsensor interrupt threshold
  Input:          Threshold : interrupt threshold,The unit is determined by the set Accelerometer full-scale selection,
                              The default setting is 2g.
  Output:         none
  Return:         0 : set success
                  1 : set failed
  Others:         The wake function is implemented using a high-pass digital filter
*************************************************/
int16_t GSensorHalSetThreshold(uint32_t Threshold)
{
  //enable basic interrupts
  if(Lsm6dsmWriteoneByte(LSM6DSM_TAP_CFG,0x90))       return 1;
  /*Set interrupt pin low active*/
  //if(Lsm6dsmWriteoneByte(LSM6DSM_CTRL3_C,0x60))         return 1;
  /*Set the minimum duration of the wake event to 0x00/ODR_XL*/
  if(Lsm6dsmWriteoneByte(LSM6DSM_WAKE_UP_DUR,0x00))     return 1;
  /*Set Interrupt wake up threshold is 2g/2^6*Threshold*/
  if(Lsm6dsmWriteoneByte(LSM6DSM_WAKE_UP_THS,Threshold))        return 1;
  /*Wake interrupt drive to INT1 pin*/
  if(Lsm6dsmWriteoneByte(LSM6DSM_MD1_CFG,0x20))         return 1;
  return 0;
}

void GSensorHalSetWakeup(void)
{
  Lsm6dsmWriteoneByte(LSM6DSM_TAP_CFG,0x00);
}
