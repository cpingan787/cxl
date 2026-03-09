/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: securityHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "securityHal.h"
#include "platform_cfg.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "gpio_drv.h"
#include "spi_drv.h"
#include "int_drv.h"

/****************************** Macro Definitions ******************************/
#define HSE_REST_PORT         PORT_C
#define HSE_REST_PIN          GPIO_12
#define HSE_REST_PIN_MUX      PTC12_GPIO

#define HSE_SPI_TYPE       SYSCTRL_SPI2
#define HSE_SPI_PCLK       CLK_SPI2
#define HSE_SPI_INDEX      SPI_ID_2
#define HSE_SPI_IRQN       I2C0_IRQn

#define HSE_CS_PORT         PORT_C
#define HSE_CS_PIN          GPIO_14
#define HSE_CS_PIN_MUX      PTC14_GPIO

#define SPI_CLK_PORT            PORT_C
#define SPI_CLK_PORT_PIN        GPIO_15
#define SPI_CLK_PORT_MUX        PTC15_SPI2_SCK

#define SPI_MOSI_PORT            PORT_C
#define SPI_MOSI_PORT_PIN        GPIO_1
#define SPI_MOSI_PORT_MUX        PTC1_SPI2_SOUT

#define SPI_MISO_PORT            PORT_C
#define SPI_MISO_PORT_PIN        HSE_CS_PIN
#define SPI_MISO_PORT_MUX        PTC0_SPI2_SIN

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
// SPI Master 模式的初始化配置数据
const SPI_Config_t SPI_MasterConfig =
{
    .mode = SPI_MODE_MASTER,            // SPI Master 模式
    .dataSize = 8,                        // 数据宽度，单次发送8位的数据。取值范围4-32bits
    .clkPhase = SPI_CLK_PHASE_FIRST,    // 在时钟的第奇数个边沿采样，在第偶数个边沿时，把数据打入到总线上
    .clkPolarity = SPI_CLK_INACTIVE_LOW,// 默认的时钟电平为低电平
    .transMode = SPI_TMOD_TR,            // 传输数据的模式为同时收、发
    .clkDivider = 2,                    // sclk_out 的时钟分频系数,取值范围 2--65534。
    .transFifoThr = 0,                    // 发送 FIFO中数据的数量小于等于n+1时，触发TXE标志位。取值范围0-3。发送FIFO的总空间是16个字节
    .recvFifoThr = 0                    // 接收 FIFO中数据的数量大于等于n+1时，触发RXF标志位。取值范围0-3。接收FIFO的总空间是16个字节
};
/****************************** Function Declarations *************************/
/****************************** Public Function Implementations ***************/
/*************************************************
  Function:       SPIx_Init
  Description:    Initialize SPIx module in Master mode with manual chip selection
  Input:          none
  Output:         none
  Return:         none
  Others:         Configures SPI SCK frequency to 2MHz with internal 64M FIRC clock source
                  Sets up GPIO pins for SPI communication and manual CS control
                  Disables all SPI interrupts initially
*************************************************/
void SPIx_Init(void)
{
    /* ***** 初始化SPIx模块所使用的IO ***** */
    PORT_PinmuxConfig(SPI_CLK_PORT, SPI_CLK_PORT_PIN, SPI_CLK_PORT_MUX);    //把 PT 设置为 SPIx_SCK
    PORT_PinmuxConfig(SPI_MISO_PORT, SPI_MISO_PORT_PIN, SPI_MISO_PORT_MUX);    //把 PT 设置为 SPIx_SIN
    PORT_PinmuxConfig(SPI_MOSI_PORT, SPI_MOSI_PORT_PIN, SPI_MOSI_PORT_MUX);//把 PT 设置为 SPIx_SOUT
    //PORT_PinmuxConfig(HSE_CS_PORT, HSE_CS_PIN, HSE_CS_PIN_MUX);//把 PT 设置为 SPIx_PCS0，使用自动片选信号时使用
    PORT_PinmuxConfig(HSE_CS_PORT, HSE_CS_PIN, HSE_CS_PIN_MUX);        //配置 PT 端口为GPIO功能
    GPIO_SetPinDir(HSE_CS_PORT, HSE_CS_PIN, GPIO_OUTPUT);        //设置 PT 端口的方向为GPIO输出
    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_HIGH);    //设置 PT 输出高电平


    /* ***** 初始化SPI模块 ***** */
    SYSCTRL_DisableModule(HSE_SPI_TYPE);
    CLK_ModuleSrc(HSE_SPI_PCLK, CLK_SRC_OSC40M);        //SPIx模块的时钟源选择外部高速晶振
    CLK_SetClkDivider(HSE_SPI_PCLK, CLK_DIV_1);        //设置SPIx时钟的预分频器。模块的时钟不能高于CPU的总线时钟
    SYSCTRL_ResetModule(HSE_SPI_TYPE);
    SYSCTRL_EnableModule(HSE_SPI_TYPE);

    // 配置 SPIx模块
    SPI_Init(HSE_SPI_INDEX, &SPI_MasterConfig);        //把SPI配置参数写入SPIx的寄存器
    SPI_SelectSlave(HSE_SPI_INDEX, SPI_SS_PCS0);        //即使不用模块操作CS引脚，也要使能一个

    //初始化SPIx中断
    SPI_IntMask(HSE_SPI_INDEX, SPI_INT_ALL, MASK);    //关闭SPIx所有的中断
    SPI_ClearInt(HSE_SPI_INDEX, SPI_INT_ALL);        //清除SPIx所有的中断标志

    //SPI_InstallCallBackFunc(HSE_SPI_INDEX, SPI_INT_TXE, SPI2_TXE_ISR);//加载TXE中断函数
    //SPI_IntMask(HSE_SPI_INDEX, SPI_INT_TXE, UNMASK);    //使能SPIx的TXE中断

    //SPI_InstallCallBackFunc(HSE_SPI_INDEX, SPI_INT_RXF, SPI2_RXF_ISR);//加载RXF中断函数
    //SPI_IntMask(HSE_SPI_INDEX, SPI_INT_RXF, UNMASK);    //使能SPIx的RXF中断

    INT_SetPriority(SPI2_Txe_IRQn, 0x7);    //设置 SPI2_Txe_IRQn 的中断优先级。(高)0--15(低)
    //INT_EnableIRQ(SPI2_Txe_IRQn);        //使能 SPI2_Txe_IRQn 中断
    INT_DisableIRQ(SPI2_Txe_IRQn);            //禁止 SPI2_Txe_IRQn 中断

    INT_SetPriority(SPI2_Txo_IRQn, 0x7);    //设置 SPI2_Txo_IRQn 的中断优先级。(高)0--15(低)
    INT_DisableIRQ(SPI2_Txo_IRQn);            //禁止 SPI2_Txo_IRQn 中断

    INT_SetPriority(SPI2_Rxf_IRQn, 0x7);    //设置 SPIx_Rxf_IRQn 的中断优先级。(高)0--15(低)
    INT_DisableIRQ(SPI2_Rxf_IRQn);            //禁止 SPIx_Rxf_IRQn 中断

    INT_SetPriority(SPI2_Rxo_IRQn, 0x7);    //设置 SPI2_Rxo_IRQn 的中断优先级。(高)0--15(低)
    INT_DisableIRQ(SPI2_Rxo_IRQn);            //禁止 SPI2_Rxo_IRQn 中断

    INT_SetPriority(SPI2_Rxu_IRQn, 0x7);    //设置 SPI2_Rxu_IRQn 的中断优先级。(高)0--15(低)
    INT_DisableIRQ(SPI2_Rxu_IRQn);            //禁止 SPI2_Rxu_IRQn 中断


    //初始化全局变量


    //启动模块，模块开始运行
    SPI_Enable(HSE_SPI_INDEX);    //使能 SPIx 模块
}


/*************************************************
  Function:       SPIx_SendData
  Description:    Send multiple 8-bit data via SPIx interface
  Input:          txdataP - Pointer to data to be sent
                  dlc - Number of data bytes to send
  Output:         none
  Return:         SUCC - Send successful
                  ERR - Send error
  Others:         Uses manual chip selection via GPIO
                  Includes timeout checks for FIFO operations
                  Releases chip select after data transmission completes
*************************************************/
ResultStatus_t SPIx_SendData(unsigned char *txdataP, unsigned int dlc)
{
    unsigned int i;
    unsigned int delay_cnt;

    delay_cnt = 0;
    while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFE) == RESET)    //如果 TX_FIFO不空，等待。
    {
        if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;    //模块故障
        }
    }

    //开始发送数据操作
    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_LOW);    //设置 PTB0 输出低电平，选择从机

    for(i=0; i<dlc; i++)
    {
        SPI_SendData(HSE_SPI_INDEX, txdataP[i]);    //启动发送数据

        delay_cnt = 0;
        while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFNF) == RESET)    //如果 TX_FIFO满，等待
        {
            if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
            {
                return ERR;
            }
            delay_cnt++;
        }
    }

    //等待把TX_FIFO中的数据全部发出
    delay_cnt = 0;
    while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFE) == RESET)    //如果 TX_FIFO不空，等待
    {
        if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;
        }
        delay_cnt++;
    }

    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_HIGH);    //设置 PTB0 输出高电平，释放从机

    return SUCC;
}


/*************************************************
  Function:       SPIx_ReceiveData
  Description:    Receive multiple 8-bit data via SPIx interface
  Input:          rxdataP - Pointer to store received data
                  dlc - Number of data bytes to receive
  Output:         none
  Return:         SUCC - Receive successful
                  ERR - Receive error
  Others:         Sends dummy 0xFF bytes to provide clock for slave
                  Clears RX FIFO before receiving data
                  Uses manual chip selection via GPIO
*************************************************/
ResultStatus_t SPIx_ReceiveData(unsigned char *rxdataP, unsigned int dlc)
{
    unsigned int i;
    unsigned int delay_cnt;

    delay_cnt = 0;
    while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFE) == RESET)    //如果 TX_FIFO不空，等待。
    {
        if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;    //模块故障
        }
    }

    //清空 RX_FIFO
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据

    //开始接收数据操作
    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_LOW);    //设置 PTB0 输出低电平，选择从机

    for(i=0; i<dlc; i++)
    {
        SPI_SendData(HSE_SPI_INDEX, 0xFF);    //启动发送数据，为从机提供时钟信号

        delay_cnt = 0;
        while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_RFNE) == RESET)    //如果 RX_FIFO空，等待
        {
            if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
            {
                return ERR;
            }
            delay_cnt++;
        }

        rxdataP[i] = SPI_ReceiveData(HSE_SPI_INDEX);    //读取RX_FIFO中的数据
    }

    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_HIGH);    //设置 PTB0 输出高电平，释放从机

    return SUCC;
}



/*************************************************
  Function:       SPIx_ReadData
  Description:    Read multiple 8-bit data from slave device via SPIx interface
                  Specifically designed for BYD slave display timing
  Input:          txdataP - Pointer to data to be sent
                  rxdataP - Pointer to store received data
                  dlc - Number of data bytes to receive
  Output:         none
  Return:         SUCC - Read successful
                  ERR - Read error
  Others:         First sends 5 bytes of command/data to slave
                  Clears RX FIFO before receiving data
                  Sends dummy 0xAA bytes to provide clock for slave during read
*************************************************/
ResultStatus_t SPIx_ReadData(unsigned char *txdataP, unsigned char *rxdataP, unsigned int dlc)
{
    unsigned int i;
    unsigned int delay_cnt;

    //等待发送完TX_FIFO中的数据
    delay_cnt = 0;
    while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFE) == RESET)    //如果 TX_FIFO不空，等待。
    {
        if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;    //模块故障
        }
    }

    //设置PCS引脚
    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_LOW);    //设置 PTB0 输出低电平，选择从机

    //发送数据操作
    for(i=0; i<5; i++)
    {
        SPI_SendData(HSE_SPI_INDEX, txdataP[i]);    //启动发送数据

        delay_cnt = 0;
        while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFNF) == RESET)    //如果 TX_FIFO满，等待
        {
            if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
            {
                return ERR;
            }
            delay_cnt++;
        }
    }

    //等待发送完TX_FIFO中的数据
    delay_cnt = 0;
    while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_TFE) == RESET)    //如果 TX_FIFO不空，等待。
    {
        if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;    //模块故障
        }
    }

    //清空 RX_FIFO
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据
    (void) SPI_ReceiveData(HSE_SPI_INDEX);    //接收数据

    //接收数据操作
    for(i=0; i<dlc; i++)
    {
        SPI_SendData(HSE_SPI_INDEX, 0xAA);    //启动发送数据，为从机提供时钟信号

        delay_cnt = 0;
        while(SPI_GetStatus(HSE_SPI_INDEX, SPI_STATUS_RFNE) == RESET)    //如果 RX_FIFO空，等待
        {
            if(delay_cnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
            {
                return ERR;
            }
            delay_cnt++;
        }

        rxdataP[i] = SPI_ReceiveData(HSE_SPI_INDEX);    //读取RX_FIFO中的数据
    }

    GPIO_WritePinOutput(HSE_CS_PORT, HSE_CS_PIN, GPIO_HIGH);    //设置 PTB0 输出高电平，释放从机

    return SUCC;
}

/*************************************************
  Function:     SecurityHalInit
  Description:  Security module init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
int16_t SecurityHalInit(void)
{

    SPIx_Init();

    return 0;
}

void SecurityHalSetMode(uint8_t wakeMode)
{   
    if(0 == wakeMode)
    {

    }
    else if(1 == wakeMode)
    {

    }  
}

void SecurityHalTestMain(void)
{}
