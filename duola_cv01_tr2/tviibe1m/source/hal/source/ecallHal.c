#include "ecallHal.h"
#include "FreeRTOS.h"
#include "task.h"
#include "crc8_16_32.h"
#include "cy_project.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "taskEcallProcess.h"

/* I2C Addresses */
#define SA51034_ADDRESS     0xD8

/* Register Maps */
#define FAULT_REGISTER  			(0x01)
#define DIAGNOSTIC_REGISTER  		(0x02)
#define CONTROL_REGISTER  			(0x03)

#define USER_I2C_SCB_TYPE       SCB2
#define USER_I2C_SCB_PCLK       PCLK_SCB2_CLOCK
#define USER_I2C_SCB_IRQN       scb_2_interrupt_IRQn

#define I2C_SDA_PORT            GPIO_PRT19
#define I2C_SDA_PORT_PIN        (1)
#define I2C_SDA_PORT_MUX        P19_1_SCB2_I2C_SDA

#define I2C_SCL_PORT            GPIO_PRT19
#define I2C_SCL_PORT_PIN        (2)
#define I2C_SCL_PORT_MUX        P19_2_SCB2_I2C_SCL

#define E_I2C_RECV_SIZE         9
#define I2C_READ                1         // read from device
#define I2C_WRITE               0         // write to device
#define TIMEOUT                 2000       // error counter time-out



typedef enum
{
  PortGpioLow = 0,
  PortGpioHigh,
}en_port_gpio_level_t;

typedef enum
{
    E_ECALL_LED_STATE_OFF = 0x00,
	E_ECALL_LED_STATE_ON,
}EcallLedState_e;

/****************************************************************************************
* SOS LED灯状态控制结构体
******************************************************************************************/
typedef struct
{
	EcallLedMode_e ledMode;		/*0:关闭，1:打开，2:闪烁*/
    uint16_t ledCounter;		/*0:关闭，1:打开，2:闪烁*/
	uint16_t ledOnTime;		    /*LED打开的时间，单位ms*/
	uint16_t ledOffTime;		/*LED关闭的时间，单位ms*/
}EcallLedSwitchTime_t;

static EcallLedSwitchTime_t g_SosLedSwitchTime = {0};
/* SCB - I2C Configuration */
void Sa51034Init(void);
void Sa51034Close(void);

void EcallGpioInit(void)
{
    cy_stc_gpio_pin_config_t portPinCfg =
    {
        .outVal    = 0ul,
        .driveMode = CY_GPIO_DM_STRONG_IN_OFF,
        .hsiom     = P8_0_GPIO,
        .intEdge   = 0ul,
        .intMask   = 0ul,
        .vtrip     = 0ul,
        .slewRate  = 0ul,
        .driveSel  = 0ul,
    };
    /******** out1 (reserved) **************************/
    Cy_GPIO_Pin_Init(GPIO_PRT8, 0, &portPinCfg);
    /******** out2 ***************************/
    portPinCfg.hsiom  = P11_0_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT11, 0, &portPinCfg);
    /******** vehicle mute (reserved) ***************************/
    // PeripheralHalAmpInit
    /******** amp ***************************/
    // PeripheralHalAmpInit

    /******** button connect ***********************/
    portPinCfg.driveMode = CY_GPIO_DM_HIGHZ;
    portPinCfg.hsiom  = P13_7_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT13, 7, &portPinCfg);
    /******** amp fault det ***************************/
    // PeripheralHalAmpInit
    /******** srs (reserved) ***************************/
    portPinCfg.hsiom  = P12_1_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT12, 1, &portPinCfg);
	
}


void EcallHalSetSosLedState(uint8_t state)
{
    if (E_ECALL_LED_STATE_OFF == state)
    {
        Cy_GPIO_Clr(GPIO_PRT11, 0);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT11, 0);
    }
}

void EcallHalSetAmpSdz(uint8_t flag)
{
    if (0 == flag)
    {
        Cy_GPIO_Clr(GPIO_PRT12, 4);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT12, 4);
    }
}

void EcallHalSetAmpMute(uint8_t flag)
{
    TBOX_PRINT("ECALL_AMP_MUTE state is %d\r\n", flag);
    if (0 == flag)
    {
        Cy_GPIO_Clr(GPIO_PRT13, 5);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT13, 5);
    }
}

void EcallHalSetVehicleMute(uint8_t flag)
{
    TBOX_PRINT("ECALL_Vehicle_MUTE state is %d\r\n", flag);
    if (0 == flag)
    {
        // Sa51034Close();
        Cy_GPIO_Clr(GPIO_PRT21, 5);
    }
    else
    {
        // Sa51034Init();
        Cy_GPIO_Set(GPIO_PRT21, 5);
    }
}

/**
 * @brief 
 * 
 * @return 1：BCALL Button pressed ;  return 0：BCALL Button no press
 */
uint8_t EcallHalGetSosButtonStatus(void)
{
	uint32_t voltage;
    
	PeripheralHalAdGet(AD_CHANNEL_SOS_KEY, &voltage);  //AD采样电压
    // TBOX_PRINT("sos voltage is %d\r\n",voltage);    // TODO guanyuan test only
	if((voltage > 3100)||(voltage < 1800))  // 1900mV 700mV
	{
		return 0;
	}
  return 1;
}

/**
 * @brief 
 * 
 * @return uint8_t 0 - 未安装
 */
uint8_t EcallHalGetSosButtonConnectStatus(void)
{
    if(Cy_GPIO_Read(GPIO_PRT13, 7) == PortGpioLow)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

uint8_t EcallHalGetSRSConnectStatus(void)
{
    if(Cy_GPIO_Read(GPIO_PRT12, 1) == PortGpioLow)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

void EcallHalGpioTest(uint8_t flag)
{
    if (0 == flag)
    {
        Cy_GPIO_Clr(GPIO_PRT8, 0); // out1
        Cy_GPIO_Clr(GPIO_PRT11, 0); // out2
        // EcallHalSetVehicleMute(0);   // 硬件未贴件
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT8, 0); // out1
        Cy_GPIO_Set(GPIO_PRT11, 0); // out2
        // EcallHalSetVehicleMute(1);
    }
    EcallHalGetSosButtonStatus();
    TBOX_PRINT("sos state is %d\r\n", EcallHalGetSosButtonConnectStatus());
    EcallHalGetMicConnectStatus();
}

void Sa51034Init(void)                                                                             //IIC协议
{
    EcallHalSetAmpSdz(1);
    EcallHalSetAmpMute(0);
}

void Sa51034Close(void)
{
    // iic_sleep();
    EcallHalSetAmpMute(1);    // TODO guanyuan need set high?
    EcallHalSetAmpSdz(0);
}

uint8_t EcallHalGetMicConnectStatus(void)
{
    #define MIC_NORMAL_VOL  ( 2150 )
    #define MIC_SHORT_VOL   ( 500 )
    #define MIC_OPEN_VOL    ( 2500 )

    uint32_t voltage;
   
    PeripheralHalAdGet(AD_CHANNEL_MICP, &voltage);
   //TBOX_PRINT("mic voltage is %d\r\n",voltage); // TODO guanyuan debug only
    if(voltage > MIC_OPEN_VOL)   /*按键未安装*/
    {
        return 1;
    }
    else if(voltage < MIC_SHORT_VOL)   /*按键对地短路*/
    {
        return 2;
    }
    else    /*按键正常按下*/
    {
        return 0;
    }
}

void EcallHalInit(void)
{
    EcallGpioInit();
    Sa51034Init();
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
    static EcallLedState_e st = E_ECALL_LED_STATE_ON;
    
    if( g_SosLedSwitchTime.ledMode == E_ECALL_LED_MODE_FLASH )
    {
        if( st == E_ECALL_LED_STATE_OFF )
        {
            EcallHalSetSosLedState( E_ECALL_LED_STATE_OFF );
            g_SosLedSwitchTime.ledCounter++;
            if( g_SosLedSwitchTime.ledCounter >= g_SosLedSwitchTime.ledOffTime )
            {
                st = E_ECALL_LED_STATE_ON;
                g_SosLedSwitchTime.ledCounter = 0;
            }
        }
        else if( st == E_ECALL_LED_STATE_ON )
        {
            EcallHalSetSosLedState( E_ECALL_LED_STATE_ON );
            g_SosLedSwitchTime.ledCounter++;
            if( g_SosLedSwitchTime.ledCounter >= g_SosLedSwitchTime.ledOnTime )
            {
                st = E_ECALL_LED_STATE_OFF;
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
        EcallHalSetSosLedState( E_ECALL_LED_STATE_OFF );
    }
    else if (mode == E_ECALL_LED_MODE_KEEP_ON)
    {
        EcallHalSetSosLedState( E_ECALL_LED_STATE_ON );
    }
    else
    {
        // do nothing
    }
}
