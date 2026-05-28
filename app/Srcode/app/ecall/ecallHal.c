 #include "ecallHal.h"
 #include "osHal.h"

 #include "r_cg_macrodriver.h"
#include "r_cg_port.h"
#include "r_port.h"
#include "r_cg_uart.h"
#include "Os.h"
// #include "FreeRTOS.h"
// #include "task.h"
// #include "crc8_16_32.h"
// #include "cy_project.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "alarmSdk.h"
// #include "FreeRTOS.h"
// #include "semphr.h"
// #include "queue.h"
// #include "task.h"

// #define DEBUG_PRINT_ENABLE 1
#define SOS_LED_QUEUE_SEND_WAIT_TIME 	( 1000 )

// /* I2C Addresses */
// #define SA51034_ADDRESS     0x6C

// /* Register Maps */
// #define FAULT_REGISTER  			(0x01)
// #define DIAGNOSTIC_REGISTER  		(0x02)
// #define CONTROL_REGISTER  			(0x03)

// #define USER_I2C_SCB_TYPE       SCB2
// #define USER_I2C_SCB_PCLK       PCLK_SCB2_CLOCK
// #define USER_I2C_SCB_IRQN       scb_2_interrupt_IRQn

// #define I2C_SDA_PORT            GPIO_PRT19
// #define I2C_SDA_PORT_PIN        (1)
// #define I2C_SDA_PORT_MUX        P19_1_SCB2_I2C_SDA

// #define I2C_SCL_PORT            GPIO_PRT19
// #define I2C_SCL_PORT_PIN        (2)
// #define I2C_SCL_PORT_MUX        P19_2_SCB2_I2C_SCL

// /* Select Frequency */
// #if (CY_USE_PSVP == 1)
//   #define E_SOURCE_CLK_FREQ     (24000000ul) // fixed
// #else
//   #define E_SOURCE_CLK_FREQ     (80000000u)  // fixed
// #endif
// #define     E_I2C_INCLK_TARGET_FREQ (2000000ul)  // modifiable
// #define     I2C_DATARATE_100KHZ   100000
// #define     I2C_DATARATE_400KHZ   400000
// #define     I2C_DATARATE_1000KHZ  1000000

// #define E_I2C_RECV_SIZE         9
// #define I2C_READ                1         // read from device
// #define I2C_WRITE               0         // write to device
// #define TIMEOUT                 2000       // error counter time-out

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

static EcallLedSwitchTime_t g_SosLedSwitchTime[E_ECALL_LED_TOTAL_NUM] = {
    E_ECALL_LED_MODE_KEEP_OFF, 0, 0, 0,
    E_ECALL_LED_MODE_KEEP_OFF, 0, 0, 0};
// static uint32_t g_ampInitTime = 0;
// static uint8_t g_ampInitFlag = 0;
// static uint8_t g_vehicleMuteStatus = 0;
// //static uint8_t g_srsStatus = 0;

QueueHandle_t g_SosLedMsgQueue = NULL;
SemaphoreHandle_t  g_SosLedMutex = NULL; 	//当前互斥操作信号量

// /* SCB - I2C Configuration */
// static cy_stc_scb_i2c_context_t g_stc_i2c_context;
// // extern cy_stc_scb_i2c_context_t g_stc_i2c_context;

// void Sa51034Init(void);
// void Sa51034Close(void);

void EcallGpioInit(void)
{
/**********************  ECALl LED P0_14 ***********************************/
    // 1. 解除端口写保护（单次解锁即可）
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;

    // 2. 强制P0.14为GPIO模式（关键！避免外设占用）
    PORT.PMC0 &= ~_PORT_PMn14_MODE_UNUSED;   // 清除PMC0的P0.14位 → GPIO模式
    PORT.PIPC0 &= ~_PORT_PMn14_MODE_UNUSED;  // 清除PIPC0的P0.14位 → 禁用外设输入/输出映射

    // 3. 配置（驱动速度、输出类型、上下拉）
    PORT.PDSC0 &= (uint32_t) ~_PORT_PMn14_MODE_UNUSED;
    PORT.PDSC0 |= _PORT_PDSCn14_SLOW_MODE_SELECT;
    PORT.PODC0 &= (uint32_t) ~_PORT_PMn14_MODE_UNUSED;
    PORT.PODC0 |= _PORT_PODCn14_PUSH_PULL;
    PORT.PBDC0 &= (uint16_t) ~_PORT_PMn14_MODE_UNUSED;
    PORT.PBDC0 |= _PORT_PBDCn14_PBDC_MODE_DISABLED;

    // 4. 输出电平 + 输出模式配置
    PORT.P0 &= (uint16_t) ~_PORT_PMn14_MODE_UNUSED;
    PORT.P0 |= _PORT_Pn14_OUTPUT_LOW;
    PORT.PM0 &= (uint16_t) ~_PORT_PMn14_MODE_UNUSED;
    PORT.PM0 |= _PORT_PMn14_MODE_OUTPUT; // 设置P0.14为输出模式

/**********************  CALL_BUTTON_PWR_EN ***********************************/
    // 1. 解除端口写保护（单次解锁即可）
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;

    // 2. 强制为GPIO模式（关键！避免外设占用）
    PORT.PMC1 &= ~_PORT_PMn0_MODE_UNUSED;   // 清除PMC → GPIO模式
    //PORT.PIPC1 &= ~_PORT_PMn0_MODE_UNUSED;  // 清除PIPC → 禁用外设输入/输出映射

    // 3. 配置（驱动速度、输出类型、上下拉）
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn0_SLOW_MODE_SELECT;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn0_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn0_PBDC_MODE_DISABLED;

    // 4. 输出电平 + 输出模式配置
    PORT.P1 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn0_OUTPUT_LOW;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn0_MODE_OUTPUT; // 设置为输出模式

/*****************************  A1：P9_5   B0：P8_5 *******************************************/
#if ISUSEA1    
    // 1. 解除端口写保护（单次解锁即可）
    PORT.PPCMD9 = _WRITE_PROTECT_COMMAND;

    // 2. 强制为GPIO模式
    PORT.PMC9 &= ~_PORT_PMn5_MODE_UNUSED;   // 清除PMC → GPIO模式

    // 3. 配置驱动速度
    //PORT.PDSC9 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    //PORT.PDSC9 |= _PORT_PDSCn5_SLOW_MODE_SELECT;

    // 4. 将P9_5设置为输入模式
    PORT.PM9 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PM9 |= _PORT_PMn5_MODE_INPUT; 
#else
    // 1. 解除端口写保护（单次解锁即可）
    PORT.PPCMD8 = _WRITE_PROTECT_COMMAND;

    // 2. 设置为INTP9模式（不会影响IO功能，配置为仅IO模式时无法触发中断）
    PORT.PMC8 |= _PORT_PMn5_MODE_UNUSED;

    // 3. 使能输入缓冲器
    PORT.PIBC8 |= _PORT_PIBCn5_INPUT_BUFFER_ENABLE;

    // 4. 将P8_5设置为输入模式
    PORT.PM8 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PM8 |= _PORT_PMn5_MODE_INPUT; 
#endif

/*******************************************************************************/
    // AMP_FAULT P1_9 pull-down input 
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn9_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn9_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn9_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn9_OPEN_DRAIN;
    PORT.PBDC1 &= (uint16_t) ~_PORT_PMn9_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn9_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t) ~_PORT_PMn9_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn9_OUTPUT_HIGH;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn9_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn9_MODE_INPUT;
    
    /********AMP_MUTE  P1_10 push-pull output************/
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn10_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn10_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn10_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn10_OUTPUT_HIGH;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn10_MODE_OUTPUT;

    /********AMP_STB P1_11 push-pull output**************/
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn11_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn11_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn11_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn11_OUTPUT_HIGH;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn11_MODE_OUTPUT;


}

uint8_t EcallHalGetAmpFaultStatus(void)
{
	uint32_t PortLevel;
    PortLevel = R_PORT_GetLevel(Port1,9);

    if(PortLevel == 0)
    {
        return 0;
    }
    else if(PortLevel == 1)
    {
        return 1;
    }

}
// void EcallHalSetSosRedLedState(uint8_t state)
// {
//     if (0 == state)
//     {
//         Cy_GPIO_Clr(GPIO_PRT11, 0);
//     }
//     else
//     {
//         Cy_GPIO_Set(GPIO_PRT11, 0);
//     }
// }

void EcallHalSetSosGreenLedState(uint8_t state)
{
    if (0 == state)
    {
        R_PORT_SetGpioOutput(Port0, 14, 0);
    }
    else
    {
        R_PORT_SetGpioOutput(Port0, 14, 1);
    }
}

void EcallHalSetSosLedState(uint8_t index, uint8_t state)
{
    switch (index)
    {
        case E_ECALL_LED_RED:
        if (0 == state)
        {
            //Cy_GPIO_Clr(GPIO_PRT8, 0);
        }
        else
        {
            //Cy_GPIO_Set(GPIO_PRT8, 0);
        }
        break;
    case E_ECALL_LED_GREEN:
        if (0 == state)
        {
            EcallHalSetSosGreenLedState(0);
        }
        else
        {
            EcallHalSetSosGreenLedState(1);
        }
        break;
    default:
        break;
    }
}

// void EcallHalSetAmpSdz(uint8_t flag)
// {
//     if (0 == flag)
//     {
//         Cy_GPIO_Clr(GPIO_PRT12, 4);
//     }
//     else
//     {
//         Cy_GPIO_Set(GPIO_PRT12, 4);
//     }
// }

// void EcallHalSetAmpMute(uint8_t flag)
// {
//     //TBOX_PRINT("ECALL_AMP_MUTE state is %d\r\n", flag);
//     if (0 == flag)
//     {
//         Cy_GPIO_Clr(GPIO_PRT13, 5);
//     }
//     else
//     {
//         Cy_GPIO_Set(GPIO_PRT13, 5);
//     }
// }

// void EcallHalSetVehicleMute(uint8_t flag)
// {
// #if (1)
//     TBOX_PRINT("ECALL_Vehicle_MUTE state is %d\r\n", flag);
//     if (0 == flag)
//     {
//         // Sa51034Close();
//         Cy_GPIO_Clr(GPIO_PRT21, 5);
//     }
//     else
//     {
//         // Sa51034Init();
//         Cy_GPIO_Set(GPIO_PRT21, 5);
//     }
// #endif
//     g_vehicleMuteStatus = flag;
// }

// uint8_t EcallHalGetVehicleMute(void)
// {
//     return g_vehicleMuteStatus;
// }

/**
 * @brief 
 * 
 * @return 1：BCALL Button pressed ;  return 0：BCALL Button no press
 */
uint8_t EcallHalGetSosButtonStatus(void)
{
	uint32_t PortLevel;
#if ISUSEA1
    PortLevel = R_PORT_GetLevel(Port9,5);
#else
    PortLevel = R_PORT_GetLevel(Port8, 5);
#endif

    if(PortLevel == 0)
    {
        return 0;
    }
    else if(PortLevel == 1)
    {
        return 1;
    }
    // else
    // {
    //     return 0;//默认未按下
    // }
 
}
// /**
//  * @brief 
//  * 
//  * @return uint8_t 0 - 未安装
//  */
// uint8_t EcallHalGetSosButtonConnectStatus(void)
// {
//     if(Cy_GPIO_Read(GPIO_PRT13, 7) == 0)
//     {
//         return 1;
//     }
//     else
//     {
//         return 0;
//     }
// }

// static void DelayUs(uint32_t cnt)
// { 		
// 	do{}while(--cnt);
// }

// static cy_en_scb_i2c_status_t I2cStart(uint8_t address)
// { 
//     cy_en_scb_i2c_status_t  result_i2c;
//     result_i2c = Cy_SCB_I2C_MasterSendStart(USER_I2C_SCB_TYPE, address, CY_SCB_I2C_WRITE_XFER, 50, &g_stc_i2c_context);
//     return result_i2c;
// }   

// static cy_en_scb_i2c_status_t I2cStop(void)
// {   
//     cy_en_scb_i2c_status_t  result_i2c;
//     result_i2c = Cy_SCB_I2C_MasterSendStop(USER_I2C_SCB_TYPE, TIMEOUT, &g_stc_i2c_context); 
//     return result_i2c;
// }  

// static cy_en_scb_i2c_status_t I2cWriteStop(void)
// {   
//     cy_en_scb_i2c_status_t  result_i2c;
//     result_i2c = Cy_SCB_I2C_MasterSendStop(USER_I2C_SCB_TYPE, 2000, &g_stc_i2c_context); 
//     return result_i2c;
// }   

// static cy_en_scb_i2c_status_t I2CWriteByte(uint8_t cValue)
// {
//     // Transmite One Byte Data 
//     cy_en_scb_i2c_status_t result_i2c;
//     result_i2c = Cy_SCB_I2C_MasterWriteByte(USER_I2C_SCB_TYPE, cValue, TIMEOUT, &g_stc_i2c_context);
//     return  result_i2c;
// }

// static cy_en_scb_i2c_status_t I2c_Continue(uint8_t address)
// {
//     cy_en_scb_i2c_status_t result_i2c;
//     result_i2c = Cy_SCB_I2C_MasterSendReStart(USER_I2C_SCB_TYPE,address, CY_SCB_I2C_READ_XFER, TIMEOUT, &g_stc_i2c_context);
//     return  result_i2c; 
// } 

// static void I2c_SetSlaveAddress(void)
// {
//     Cy_SCB_I2C_Disable(USER_I2C_SCB_TYPE, &g_stc_i2c_context);
//     Cy_SCB_I2C_SlaveSetAddress(USER_I2C_SCB_TYPE, SA51034_ADDRESS);
//     Cy_SCB_I2C_SlaveSetAddressMask(USER_I2C_SCB_TYPE, SA51034_ADDRESS);
//     Cy_SCB_I2C_Enable(USER_I2C_SCB_TYPE);
// }

// static cy_en_scb_i2c_status_t I2c_Read( uint8_t *Rxbyte)
// {
//     cy_en_scb_i2c_status_t result_i2c;

//     result_i2c = Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_ACK, Rxbyte, 2000, &g_stc_i2c_context);
//     return result_i2c; 
// } 

// static cy_en_scb_i2c_status_t I2c_ReadLast(uint8_t *Rxbyte)  
// {
//     cy_en_scb_i2c_status_t result_i2c;
//     result_i2c = Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_NAK, Rxbyte, TIMEOUT, &g_stc_i2c_context);
//     return result_i2c;                       
// }

// int32_t Sa51034WriteOneByte(uint8_t address, uint8_t cValue)
// {
//     I2c_SetSlaveAddress();
//     if(I2cStart(I2C_WRITE) != CY_SCB_I2C_SUCCESS)    return 1;
//     if(I2CWriteByte(address) != CY_SCB_I2C_SUCCESS) return 1;
//     if(I2CWriteByte(cValue) != CY_SCB_I2C_SUCCESS) return 1;
//     if(I2cWriteStop() != CY_SCB_I2C_SUCCESS) return 1; 
//     return 0; 
// }

// static int16_t Sa51034ReadOneByte(uint8_t address,uint8_t *buffer)
// {
//     I2c_SetSlaveAddress();
//   if(I2cStart(SA51034_ADDRESS) != CY_SCB_I2C_SUCCESS)    return 1;
//   if(I2CWriteByte(address) != CY_SCB_I2C_SUCCESS)    return 1;
//   if(I2c_Continue(SA51034_ADDRESS) != CY_SCB_I2C_SUCCESS)    return 1;
//   if(I2c_ReadLast(buffer) != CY_SCB_I2C_SUCCESS)    return 1;
//   if(I2cStop() != CY_SCB_I2C_SUCCESS)    return 1;
//   return 0;
// }

// void Sa51034Init(void)
// {
//     uint16_t timerCounter = 100;
//     uint8_t defaultValue = 0;

//     if(g_ampInitFlag)
//     {
//         return;
//     }

//     EcallHalSetAmpSdz(1);
//     EcallHalSetAmpMute(0);
//     // iic_init();
//     //检查ID是否存在
//     do
//     {
//         Sa51034ReadOneByte(CONTROL_REGISTER, &defaultValue);
//         timerCounter--;
//         // vTaskDelay(50);
//     } while ((defaultValue != 0x78) && (timerCounter));

//     if(timerCounter == 0)
//     {
//         //TBOX_PRINT("SA51034 init error, CONTROL_REGISTER = 0x%02x\n", defaultValue);
//     }
//     else
//     {
//         //TBOX_PRINT("SA51034 init success\n");
//         g_ampInitFlag = 1;
//         g_ampInitTime = xTaskGetTickCount();
//     }
// }

// void Sa51034Close(void)
// {
//     // iic_sleep();
//     EcallHalSetAmpMute(1);    // TODO guanyuan need set high?
//     EcallHalSetAmpSdz(0);
//     g_ampInitFlag = 0;
// }

// uint8_t EcallHalGetAmpFaultStatus(void)
// {
//     uint16_t timerCounter = 3;
//     uint8_t faultRegValue = 0;
//     uint8_t ret = 0;
//     uint32_t readTime = 0;

//     if(g_ampInitFlag == 0)
//     {
//         //TBOX_PRINT("amp not init\r\n");
//         Sa51034Init();
//     }

//     readTime = xTaskGetTickCount();
//     if( (osElapsedTimeGet( readTime, g_ampInitTime )) < 600 )
//     {
//         return 0xFF;
//     }

//     do
//     {
//         timerCounter--;
//         ret = Sa51034ReadOneByte(FAULT_REGISTER, &faultRegValue);
//         if(ret == 0)
//         {
// #if(DEBUG_PRINT_ENABLE)
//             //TBOX_PRINT("faultRegValue = %02x\r\n", faultRegValue);
// #endif
//             return faultRegValue;
//         }
//     } while (timerCounter);
//     if(timerCounter == 0)
//     {
//         //TBOX_PRINT("GetAmpFaultStatus error, FAULT_REGISTER = 0x%02x\n", faultRegValue);
//         Sa51034Close();
//         // Sa51034Init();
//     }

//     return 0xFF;
// }

// uint8_t EcallHalGetAmpDiagnosticStatus(void)
// {
//     uint16_t timerCounter = 3;
//     uint8_t diagnosticRegValue = 0;
//     uint8_t ret = 0;
//     uint32_t readTime = 0;

//     if(g_ampInitFlag == 0)
//     {
//         Sa51034Init();
//     }

//     readTime = xTaskGetTickCount();
//     if( (osElapsedTimeGet( readTime, g_ampInitTime )) < 600 )
//     {
//         return 0xFF;
//     }

//     do
//     {
//         timerCounter--;
//         ret = Sa51034ReadOneByte(DIAGNOSTIC_REGISTER, &diagnosticRegValue);
//         if(ret == 0)
//         {
// #if(DEBUG_PRINT_ENABLE)
//             //TBOX_PRINT("diagnosticRegValue = %02x\r\n", diagnosticRegValue);
// #endif
//             return diagnosticRegValue;
//         }
//     } while (timerCounter);
//     if(timerCounter == 0)
//     {
//         //TBOX_PRINT("GetAmpDiagnosticStatus error, DIAGNOSTIC_REGISTER = 0x%02x\n", diagnosticRegValue);
//         Sa51034Close();
//         // Sa51034Init();
//     }

//     return 0xFF;
// }

// uint8_t EcallHalGetAmpControlStatus(void)
// {
//     uint16_t timerCounter = 3;
//     uint8_t contralRegValue = 0;
//     uint8_t ret = 0;
//     uint32_t readTime = 0;

//     if(g_ampInitFlag == 0)
//     {
//         Sa51034Init();
//     }

//     readTime = xTaskGetTickCount();
//     if( (osElapsedTimeGet( readTime, g_ampInitTime )) < 600 )
//     {
//         return 0xFF;
//     }

//     do
//     {
//         timerCounter--;
//         ret = Sa51034ReadOneByte(CONTROL_REGISTER, &contralRegValue);
//         if(ret == 0)
//         {
// #if(DEBUG_PRINT_ENABLE)
//             TBOX_PRINT("contralRegValue = %02x\r\n", contralRegValue);
// #endif
//             return contralRegValue;
//         }
//     } while (timerCounter);
//     if(timerCounter == 0)
//     {
//         //TBOX_PRINT("GetAmpControlStatus error, CONTROL_REGISTER = 0x%02x\n", contralRegValue);
//         Sa51034Close();
//         // Sa51034Init();
//     }

//     return 0xFF;
// }

// uint8_t EcallHalSetAmpControlStatus(uint8_t value)
// {
//     uint16_t timerCounter = 3;
//     uint8_t contralRegValue = 0;
//     uint8_t ret = 0;

//     if(value > 4)
//     {
//         return 0xFF;
//     }

//     if(g_ampInitFlag == 0)
//     {
//         Sa51034Init();
//     }

//     do
//     {
//         timerCounter--;

//         if(value == 0)
//         {
//             contralRegValue = 0x78;
//         }
//         else
//         {
//             ret = Sa51034ReadOneByte(CONTROL_REGISTER, &contralRegValue);
//             if(ret != 0)
//             {
//                 continue;
//             }
//             contralRegValue &= 0x3F;
//             contralRegValue |= value << 6;
//         }
        
//         ret = Sa51034WriteOneByte(CONTROL_REGISTER, contralRegValue);
//         if(ret != 0)
//         {
//             continue;
//         }
//         ret = Sa51034ReadOneByte(CONTROL_REGISTER, &contralRegValue);
//         if(ret == 0)
//         {
// #if(DEBUG_PRINT_ENABLE)
//         DEBUG_PRINT("set contralRegValue = %02x\r\n", contralRegValue);
// #endif
//            return 0;
//         }
        
//     } while (timerCounter);

//     return 0xFF;
// }

// uint8_t EcallHalRestartAmpClose(void)
// {
//     if(g_ampInitFlag == 0)
//     {
//         Sa51034Init();
//     }
//     else
//     {
//         // EcallHalSetAmpMute(1);
//         EcallHalSetAmpSdz(0);

//         // DEBUG_PRINT("close sdz\r\n");
//     }
    
//     return 0x00;
// }

// uint8_t EcallHalRestartAmpDiagnostic(void)
// {
//     if(g_ampInitFlag == 0)
//     {
//         Sa51034Init();
//     }
//     else
//     {
//         // EcallHalSetAmpMute(1);
//         EcallHalSetAmpSdz(0);
//         vTaskDelay(10);
//         EcallHalSetAmpSdz(1);
//         // EcallHalSetAmpMute(0);
//         g_ampInitTime = xTaskGetTickCount();
// #if(DEBUG_PRINT_ENABLE)
//         DEBUG_PRINT("restart diagnostic\r\n");
// #endif
//     }
    
//     return 0x00;
// }

// uint8_t EcallHalGetMicConnectStatus(void)
// {
//     #define MIC_NORMAL_VOL  ( 2150 )
//     #define MIC_SHORT_VOL   ( 500 )
//     #define MIC_OPEN_VOL    ( 2500 )

//     uint32_t voltage;
   
//     PeripheralHalAdGet(AD_CHANNEL_MICP, &voltage);
//     // TBOX_PRINT("mic voltage is %d\r\n",voltage); // TODO guanyuan debug only
//     if(voltage > MIC_OPEN_VOL)   /*按键未安装*/
//     {
//         return 1;
//     }
//     else if(voltage < MIC_SHORT_VOL)   /*按键对地短路*/
//     {
//         return 2;
//     }
//     else    /*按键正常按下*/
//     {
//         return 0;
//     }
// }

void EcallHalInit(void)
{
    EcallGpioInit();
    g_SosLedMsgQueue = xQueueCreate(5, sizeof(SosLledState_e));
    g_SosLedMutex = xSemaphoreCreateMutex();  //创建互斥操作信号量
    TaskEcallInit();
    // Sa51034Init();

}
CounterType SystemCounter;
void os1msTimer( void )
{
    IncrementCounter(SystemCounter);
    EcallHalSosLedTimerCallback();
}

uint32_t xTaskGetTickCount()
{
    TickType tick;
    StatusType ret;

    ret = GetCounterValue(SystemCounter, &tick);
    if (ret != E_OK) {
        return 0;
    }
    return tick;
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
		tempDa = (0xFFFFFFFF - old_time + 1) + new_time;
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
    
    for(uint8_t index = 0; index < E_ECALL_LED_TOTAL_NUM; index++)
    {
        if( g_SosLedSwitchTime[index].ledMode == E_ECALL_LED_MODE_FLASH )
        {
            if( st == 0 )
            {
                EcallHalSetSosLedState( index, 0 );
                g_SosLedSwitchTime[index].ledCounter++;
                if( g_SosLedSwitchTime[index].ledCounter >= g_SosLedSwitchTime[index].ledOffTime )
                {
                    st = 1;
                    g_SosLedSwitchTime[index].ledCounter = 0;
                }
            }
            else if( st == 1 )
            {
                EcallHalSetSosLedState( index, 1 );
                g_SosLedSwitchTime[index].ledCounter++;
                if( g_SosLedSwitchTime[index].ledCounter >= g_SosLedSwitchTime[index].ledOnTime )
                {
                    st = 0;
                    g_SosLedSwitchTime[index].ledCounter = 0;
                }
            }
        }
    }
}

/** ****************************************************************************
* @remarks       void EcallHalSetSosLedMode(EcallLedIndex_e index, EcallLedMode_e mode , uint16_t on_time , uint16_t off_time )
* @brief         设置SOS led灯显示的状态
* @param[in]     无
* @param[out]    无
* @return        LED显示的状态
* @attention     无
*******************************************************************************/
void EcallHalSetSosLedMode(EcallLedIndex_e index, EcallLedMode_e mode , uint16_t on_time , uint16_t off_time )
{
    g_SosLedSwitchTime[index].ledMode =  mode;
    g_SosLedSwitchTime[index].ledCounter = 0;
    g_SosLedSwitchTime[index].ledOnTime = on_time;
    g_SosLedSwitchTime[index].ledOffTime = off_time;

    if (mode == E_ECALL_LED_MODE_KEEP_OFF)
    {
        EcallHalSetSosLedState( index, 0 );
    }
    else if (mode == E_ECALL_LED_MODE_KEEP_ON)
    {
        EcallHalSetSosLedState( index, 1 );
    }
    else
    {
        // do nothing
    }
}

void EcallHalResetSosLedMode()
{
    for(uint8_t index = 0; index < E_ECALL_LED_TOTAL_NUM; index++)
    {
        g_SosLedSwitchTime[index].ledMode = E_ECALL_LED_MODE_KEEP_OFF;
        g_SosLedSwitchTime[index].ledCounter = 0;
        g_SosLedSwitchTime[index].ledOnTime = 0;
        g_SosLedSwitchTime[index].ledOffTime = 0;
    }
}

void EcallHalSetMode(uint8_t wakeMode)
{   
    if(0 == wakeMode)
    {
        EcallHalSetSosGreenLedState( 0 );
        EcallHalResetSosLedMode();
    }
    else if(1 == wakeMode)
    {
        AlarmSdkSetSelfcheckState(E_SELFCHECK_RUN_INIT);
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
    return (ret);
}
// #if 0
// #define TOTAL_PERIE_TIME         100//ms
// #define NOMAL_HIGH_LEVEL_TIME    80 //ms
// #define NOMAL_LOW_LEVEL_TIME     20 //ms
// #define TOLERANCE_VALUE_TIME     5  //ms
// #define CRASH_HIGH_LEVEL1_TIME   60 //ms
// #define CRASH_LOW_LEVEL1_TIME    40 //ms
// #define CRASH_HIGH_LEVEL2_TIME   40 //ms
// #define CRASH_LOW_LEVEL2_TIME    60 //ms
// #define CRASH_HIGH_LEVEL3_TIME   20 //ms
// #define CRASH_LOW_LEVEL3_TIME    80 //ms


// #define SRS_STATUS_TEST   1
// static uint8_t g_srsStatusTest = 0xff;

// static volatile uint32_t g_srsInterruptCount = 0;
// static volatile uint32_t g_srsRisingEdgeCount = 0;
// static volatile uint32_t g_srsFallingEdgeCount = 0;

// void EcallHalSrsStatusCheck(void)
// {
// #if 0
//     static uint32_t lastTime = 0;
//     static uint32_t currTime = 0;
//     static uint8_t firstFlag = 0;

//     currTime = xTaskGetTickCount();

//     if(firstFlag = 0)
//     {
//         firstFlag = 1;
//         lastTime = currTime;
//         return;
//     }

//     if(PeripheralHalGetSrsStatus() == 1)
//     {
//         if(osElapsedTimeGet( currTime, lastTime ) > 190 )
//         {
//             g_srsStatus = 1;
//         }
//         else if(osElapsedTimeGet( currTime, lastTime ) < 50 )
//         {
//             g_srsStatus = 0;
//         }
//         else
//         {
//             g_srsStatus = 2;
//         }
//     }
//     else
//     {
//         if(osElapsedTimeGet( currTime, lastTime ) < 50 )
//         {
//             g_srsStatus = 1;
//         }
//         else if(osElapsedTimeGet( currTime, lastTime ) > 190 )
//         {
//             g_srsStatus = 0;
//         }
//         else
//         {
//             g_srsStatus = 2;
//         }
//     }
//     lastTime = currTime;
    
// #else 
//     static uint32_t highLastTime = 0;
//     static uint32_t lowLastTime = 0;
//     uint32_t t1 = 0,t2 = 0,t3 = 0;
    
//     uint32_t currtime = 0;
//     currtime = xTaskGetTickCount();
    
//     // 总中断计数器
//     g_srsInterruptCount++;
    
//     // 根据电平区分上升沿/下降沿
//     if(PeripheralHalGetSrsStatus() == 1)
//     {
//         g_srsRisingEdgeCount++;  // 上升沿
//     }
//     else
//     {
//         g_srsFallingEdgeCount++; // 下降沿
//     }

//     if(PeripheralHalGetSrsStatus() == 1)
//     {
//         if(highLastTime == 0)
//         {
//             highLastTime = currtime;
//         }
//         else
//         {
//             t1 = osElapsedTimeGet(currtime,highLastTime);
//             if((t1 >= (TOTAL_PERIE_TIME-TOLERANCE_VALUE_TIME)) && (t1 <= (TOTAL_PERIE_TIME+TOLERANCE_VALUE_TIME))) // 正常周期
//             {
//                 t3 = osElapsedTimeGet(lowLastTime,highLastTime);
//                 t2 = osElapsedTimeGet(currtime,lowLastTime);
//                 if((t3>=(NOMAL_HIGH_LEVEL_TIME-TOLERANCE_VALUE_TIME)) && (t3 <= (NOMAL_HIGH_LEVEL_TIME+TOLERANCE_VALUE_TIME)) && (t2 >= (NOMAL_LOW_LEVEL_TIME - TOLERANCE_VALUE_TIME)) && (t2 <=(NOMAL_LOW_LEVEL_TIME + TOLERANCE_VALUE_TIME))) //nomal
//                 {
//                     g_srsStatus = 0;
//                     g_srsStatusTest = 0;
//                 }
//                 else if((t3 <= (CRASH_HIGH_LEVEL1_TIME + TOLERANCE_VALUE_TIME)) && (t3 >= (CRASH_HIGH_LEVEL1_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (CRASH_LOW_LEVEL1_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (CRASH_LOW_LEVEL1_TIME - TOLERANCE_VALUE_TIME)))//pengzhuang
//                 {
//                     g_srsStatus = 1;//level 1
//                 }
//                 else if((t3 <= (CRASH_HIGH_LEVEL2_TIME + TOLERANCE_VALUE_TIME)) && (t3 >= (CRASH_HIGH_LEVEL2_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (CRASH_LOW_LEVEL2_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (CRASH_LOW_LEVEL2_TIME - TOLERANCE_VALUE_TIME)))//pengzhuang
//                 {
//                     g_srsStatus = 2;//level 3
//                 }
//                 else if((t3 <= (CRASH_HIGH_LEVEL3_TIME + TOLERANCE_VALUE_TIME)) && (t3 >= (CRASH_HIGH_LEVEL3_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (CRASH_LOW_LEVEL3_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (CRASH_LOW_LEVEL3_TIME - TOLERANCE_VALUE_TIME)))//pengzhuang
//                 {
//                     g_srsStatus = 3;//level 3
//                 }
//                 else
//                 {
//                     g_srsStatus = 0;
//                 }
//             }
//             else
//             {
//                 g_srsStatus = 0;
//             }
//             highLastTime = currtime;
//         }    
//     }
//     else
//     {
//         if(lowLastTime == 0)
//         {
//             lowLastTime = currtime;
//         }
//         else
//         {
//             t1 = osElapsedTimeGet(currtime,lowLastTime);
//             if((t1 >= (TOTAL_PERIE_TIME-TOLERANCE_VALUE_TIME)) && (t1 <= (TOTAL_PERIE_TIME+TOLERANCE_VALUE_TIME)))// 正常周期
//             {
//                 t3 = osElapsedTimeGet(currtime,highLastTime);
//                 t2 = osElapsedTimeGet(highLastTime,lowLastTime);
//                 if((t3>=(NOMAL_HIGH_LEVEL_TIME - TOLERANCE_VALUE_TIME)) && (t3 <= (NOMAL_HIGH_LEVEL_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (NOMAL_LOW_LEVEL_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (NOMAL_LOW_LEVEL_TIME + TOLERANCE_VALUE_TIME))) //nomal
//                 {
//                     g_srsStatus = 0;
//                     g_srsStatusTest = 0;
//                 }
//                 else if((t3 <= (CRASH_HIGH_LEVEL1_TIME + TOLERANCE_VALUE_TIME)) && (t3 >= (CRASH_HIGH_LEVEL1_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (CRASH_LOW_LEVEL1_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (CRASH_LOW_LEVEL1_TIME - TOLERANCE_VALUE_TIME)))//pengzhuang
//                 {
//                     g_srsStatus = 1;//level 1
//                 }
//                 else if((t3 <= (CRASH_HIGH_LEVEL2_TIME + TOLERANCE_VALUE_TIME)) && (t3 >= (CRASH_HIGH_LEVEL2_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (CRASH_LOW_LEVEL2_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (CRASH_LOW_LEVEL2_TIME - TOLERANCE_VALUE_TIME)))//pengzhuang
//                 {
//                     g_srsStatus = 2;//level 3
//                 }
//                 else if((t3 <= (CRASH_HIGH_LEVEL3_TIME + TOLERANCE_VALUE_TIME)) && (t3 >= (CRASH_HIGH_LEVEL3_TIME - TOLERANCE_VALUE_TIME)) && (t2 <= (CRASH_LOW_LEVEL3_TIME + TOLERANCE_VALUE_TIME)) && (t2 >= (CRASH_LOW_LEVEL3_TIME - TOLERANCE_VALUE_TIME)))//pengzhuang
//                 {
//                     g_srsStatus = 3;//level 3
//                 }
//                 else
//                 {
//                     g_srsStatus = 0;
//                 }
//             }
//             else
//             {
//                 g_srsStatus = 0;
//             }
//             lowLastTime = currtime;
//         }
//     }
    
// #endif
// }
// #endif

// /* 全局变量声明 */
// static volatile uint32_t g_srsInterruptCount = 0;
// static volatile uint32_t g_srsRisingEdgeCount = 0;
// static volatile uint32_t g_srsFallingEdgeCount = 0;
// static volatile uint8_t g_srsStatus = 0xFF;
// static uint8_t g_srsStatusTest = 0xFF;
// static uint8_t g_srsStatusLog[6] = {0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE};
// /* 配置参数 */
// #define TOTAL_PERIE_TIME         10    // ms
// #define TOLERANCE_VALUE_TIME     2     // ms

// /* 占空比参数（百分比，扩大100倍避免浮点数） */
// #define NORMAL_DUTY_PERCENT      20    // 20% 负占空比（正常）
// #define CRASH1_DUTY_PERCENT      40    // 40% 负占空比（1级碰撞）
// #define CRASH2_DUTY_PERCENT      60    // 60% 负占空比（2级碰撞）
// #define CRASH3_DUTY_PERCENT      80    // 80% 负占空比（3级碰撞）
// #define DUTY_TOLERANCE_PERCENT   5     // 5% 占空比容差
// #define PERIOD_TOLERANCE_PERCENT 10    // 10% 周期容差

// /* 滤波参数 */
// #define FILTER_WINDOW_SIZE       8     // 滤波窗口大小
// #define STABLE_THRESHOLD         3     // 连续稳定次数阈值

// /* 滤波数据结构 */
// typedef struct {
//     uint8_t status_history[FILTER_WINDOW_SIZE];  // 历史状态记录
//     uint8_t history_index;                       // 当前索引
//     uint8_t stable_count;                        // 稳定计数
//     uint8_t last_stable_status;                  // 最后稳定状态
//     uint8_t is_initialized;                      // 初始化标志
// } SrsFilter_t;

// static SrsFilter_t srs_filter = {0};

// /* ==================== 滤波函数 ==================== */
// /**
//  * @brief 初始化滤波器
//  */
// static void Filter_Init(SrsFilter_t *filter)
// {
//     memset(filter, 0, sizeof(SrsFilter_t));
//     filter->last_stable_status = 0xFF;  // 默认正常状态
//     filter->is_initialized = 1;
// }

// void Srs_Init(void) 
// {
//     // 1. 初始化滤波器
//     Filter_Init(&srs_filter);
    
//     // 2. 重置所有状态变量
//     g_srsInterruptCount = 0;
//     g_srsRisingEdgeCount = 0;
//     g_srsFallingEdgeCount = 0;
//     g_srsStatus = 0;
//     g_srsStatusTest = 0xFF;
// }

// /**
//  * @brief 滤波器更新，返回稳定状态
//  * @param new_status 新状态
//  * @return 稳定状态
//  */
// static uint8_t Filter_Update(SrsFilter_t *filter, uint8_t new_status)
// {
//     if (!filter->is_initialized) {
//         Filter_Init(filter);
//     }
    
//     // 跳过异常状态
//     if (new_status == 0xFF) {
//         // 如果当前稳定状态也是0xFF，可以保持不变
//         // 如果当前有稳定状态，保持原状态
//         return (filter->last_stable_status == 0xFF) ? 0xFF : filter->last_stable_status;
//     }
    

//     // 更新历史记录
//     filter->status_history[filter->history_index] = new_status;
//     filter->history_index = (filter->history_index + 1) % FILTER_WINDOW_SIZE;
    
//     // 统计历史记录中相同状态的数量
//     uint8_t same_count = 0;
//     for (uint8_t i = 0; i < FILTER_WINDOW_SIZE; i++) {
//         if (filter->status_history[i] == new_status) {
//             same_count++;
//         }
//     }
    
//     // 如果历史记录中超过3/4相同，认为状态稳定
//     if (same_count >= (FILTER_WINDOW_SIZE * 3 / 4)) {
//         filter->stable_count++;
        
//         // 连续稳定达到阈值，更新稳定状态
//         if (filter->stable_count >= STABLE_THRESHOLD) {
//             filter->last_stable_status = new_status;
//             filter->stable_count = STABLE_THRESHOLD;  // 防止溢出
//         }
//     } else {
//         filter->stable_count = 0;  // 不稳定，重置计数器
//     }
    
//     return filter->last_stable_status;
// }

// /**
//  * @brief 获取滤波后的状态
//  */
// static uint8_t GetFilteredStatus(uint8_t new_status)
// {
//     return Filter_Update(&srs_filter, new_status);
// }

// /**
//  * @brief 重置滤波器
//  */
// void SrsFilter_Reset(void)
// {
//     Filter_Init(&srs_filter);
// }

// /* ==================== 占空比计算函数 ==================== */

// /**
//  * @brief 根据占空比计算状态（整数运算）
//  * @param low_time 低电平时间（ms）
//  * @param period 总周期（ms）
//  * @return 原始状态（0=正常,1=1级,2=2级,3=3级,0xFF=异常）
//  */
// static uint8_t CalculateStatusByDuty(uint32_t low_time, uint32_t period)
// {
//     uint8_t raw_status = 0xFF;
    
//     // 防止除零
//     if (period == 0) {
//         return 0xFF;
//     }
    
//     // 计算占空比百分比（低电平比例 * 100）
//     uint32_t duty_percent = (low_time * 100) / period;
    
//     // 计算周期误差百分比
//     uint32_t period_error = (period > TOTAL_PERIE_TIME) ? 
//                             (period - TOTAL_PERIE_TIME) : 
//                             (TOTAL_PERIE_TIME - period);
//     uint32_t period_error_percent = (period_error * 100) / TOTAL_PERIE_TIME;
    
//     // 检查周期是否在允许范围内
//     if (period_error_percent > PERIOD_TOLERANCE_PERCENT) {
//         return 0xFF;  // 周期异常
//     }
    
//     // 判断状态（使用整数比较）
//     if ((duty_percent >= (CRASH3_DUTY_PERCENT - DUTY_TOLERANCE_PERCENT)) &&
//         (duty_percent <= (CRASH3_DUTY_PERCENT + DUTY_TOLERANCE_PERCENT))){
//         // 3级碰撞：80%±5% -> 75%~85%
//         raw_status = 3;
//     } 
//     else if ((duty_percent >= (CRASH2_DUTY_PERCENT - DUTY_TOLERANCE_PERCENT)) && 
//              (duty_percent < (CRASH2_DUTY_PERCENT + DUTY_TOLERANCE_PERCENT))) {
//         // 2级碰撞：60%±5% -> 55%~65%
//         raw_status = 2;
//     } 
//     else if ((duty_percent >= (CRASH1_DUTY_PERCENT - DUTY_TOLERANCE_PERCENT)) && 
//              (duty_percent < (CRASH1_DUTY_PERCENT + DUTY_TOLERANCE_PERCENT))) {
//         // 1级碰撞：40%±5% -> 35%~45%
//         raw_status = 1;
//     } 
//     else if ((duty_percent >= (NORMAL_DUTY_PERCENT - DUTY_TOLERANCE_PERCENT)) && 
//              (duty_percent < (NORMAL_DUTY_PERCENT + DUTY_TOLERANCE_PERCENT))) {
//         // 正常状态：20%±5% -> 15%~25%
//         raw_status = 0;
//     }
//     else if (duty_percent < (NORMAL_DUTY_PERCENT - DUTY_TOLERANCE_PERCENT)) {
//         // 高电平时间过长，不做处理，防止非碰撞硬线断拨打，会有投诉

//     }
//     else 
//     {

//     }
//     return raw_status;
// }

// /* ==================== 中断处理主函数 ==================== */
// #define SRS_STATUS_TEST 1
// void EcallHalSrsStatusCheck(void)
// {
//     static uint32_t high_last_time = 0;
//     static uint32_t low_last_time = 0;
//     static uint32_t last_interrupt_time = 0;
//     static uint8_t is_first_sample = 1;
//     static uint8_t last_level = 0xFF;
    
//     uint32_t current_time = xTaskGetTickCount();
//     uint8_t current_level = PeripheralHalGetSrsStatus();
//     uint32_t period = 0;
//     uint32_t high_time = 0;
//     uint32_t low_time = 0;
//     uint8_t raw_status = 0xFF;
    
//     // 1. 统计计数
//     g_srsInterruptCount++;
    
//     if (current_level == 1) {
//         g_srsRisingEdgeCount++;   // 上升沿
//     } else {
//         g_srsFallingEdgeCount++;  // 下降沿
//     }
    
//     // 2. 简单去抖（防止信号抖动）
//     if (last_interrupt_time != 0) {
//         uint32_t time_diff = (current_time > last_interrupt_time) ? 
//                             (current_time - last_interrupt_time) : 
//                             (0xFFFFFFFF - last_interrupt_time + current_time);
        
//         // 如果两次中断间隔小于1ms，认为是抖动，忽略
//         if (time_diff < 1) {
//             TBOX_PRINT("SRS: Interrupt jitter detected!\r\n");
//             return;
//         }
//     }
//     last_interrupt_time = current_time;
    
//     // 3. 处理高电平中断（上升沿）
//     if (current_level == 1) {
//         if (high_last_time == 0 || is_first_sample) {
//             high_last_time = current_time;
//             last_level = current_level;
//             is_first_sample = 0;
//             TBOX_PRINT("SRS: First high level interrupt detected!\r\n");
//             return;
//         }
        
//         // 计算周期（本次高电平到上次高电平）
//         period = (current_time > high_last_time) ? 
//                 (current_time - high_last_time) : 
//                 (0xFFFFFFFF - high_last_time + current_time);
        
//         // 计算低电平时间（上次低电平到本次高电平）
//         if (low_last_time != 0) {
//             low_time = (current_time > low_last_time) ? 
//                       (current_time - low_last_time) : 
//                       (0xFFFFFFFF - low_last_time + current_time);
//         }
        
//         // 计算高电平时间
//         high_time = (period > low_time) ? (period - low_time) : 0;
        
//         // 更新时间戳
//         high_last_time = current_time;
//     }
//     // 4. 处理低电平中断（下降沿）
//     else {
//         if (low_last_time == 0 || is_first_sample) {
//             low_last_time = current_time;
//             last_level = current_level;
//             is_first_sample = 0;
//             TBOX_PRINT("SRS: First low level interrupt detected!\r\n");
//             return;
//         }
        
//         // 计算周期（本次低电平到上次低电平）
//         period = (current_time > low_last_time) ? 
//                 (current_time - low_last_time) : 
//                 (0xFFFFFFFF - low_last_time + current_time);
        
//         // 计算高电平时间（上次高电平到本次低电平）
//         if (high_last_time != 0) {
//             high_time = (current_time > high_last_time) ? 
//                        (current_time - high_last_time) : 
//                        (0xFFFFFFFF - high_last_time + current_time);
//         }
        
//         // 计算低电平时间
//         low_time = (period > high_time) ? (period - high_time) : 0;
        
//         // 更新时间戳
//         low_last_time = current_time;
//     }
    
//     // 5. 检查数据有效性
//     if (period == 0 || (high_time == 0 && low_time == 0)) {
//         // 无效数据，保持原状态
//         TBOX_PRINT("SRS: Invalid data detected!\r\n");
//         return;
//     }
    
//     // 6. 计算原始状态（使用占空比）
//     raw_status = CalculateStatusByDuty(low_time, period);
    
//     // 7. 记录原始状态用于测试
//     g_srsStatusTest = raw_status;
    
//     // 8. 滤波处理（如果状态有效）
//     if (raw_status != 0xFF) {
//         g_srsStatus = GetFilteredStatus(raw_status);
//     } else {
//         // 如果连续多次异常，可以重置滤波器或采取其他措施
//         static uint8_t error_count = 0;
//         error_count++;
        
//         if (error_count > 10) {
//             SrsFilter_Reset();  // 重置滤波器
//             error_count = 0;
//         }
//     }
    
//     // 9. 调试输出（可选）
// #if SRS_STATUS_TEST
//     // static uint32_t debug_count = 0;
//     // if (debug_count++ % 100 == 0) {  // 每10次中断输出一次
//     //     uint32_t duty_percent = (low_time * 1000) / period;
//     //     TBOX_PRINT("[SRS] P:%lums L:%lums H:%lums Duty:%lu%% Raw:%u Filtered:%u\n",
//     //            period, low_time, high_time, duty_percent, 
//     //            raw_status, g_srsStatus);
//     // }

//     g_srsStatusLog[0]= period;
//     g_srsStatusLog[1]= low_time;
//     g_srsStatusLog[2]= high_time;
//     g_srsStatusLog[3]= ((low_time * 1000) / period);
//     g_srsStatusLog[4]= raw_status;
//     g_srsStatusLog[5]= g_srsStatus;
// #endif
    
//     last_level = current_level;
// }

// uint8_t EcallHalGetSrsStatus(void)
// {
//     return g_srsStatus;
// }

// uint8_t EcallHalGetSrsStatusTest(void)
// {
//     if(g_srsStatus != 0)
//     {
//         g_srsStatusTest = g_srsStatus;
//     }
//     return g_srsStatusTest;
// }

// void EcallHalGetSrsStatusLog(uint8_t *log)
// {
//     memcpy(log, g_srsStatusLog, sizeof(g_srsStatusLog));
// }


// void EcallHalTestMain(void)
// {
//     static uint8_t flag = 0;
//     static uint8_t count = 0;

//     // EcallHalInit();

//     // if(count++ < 10)
//     // {
//     //     return;
//     // }
//     // count = 0;

//     if (0 == flag)
//     {
//         EcallHalSetSosRedLedState(0);
//         EcallHalSetSosGreenLedState(0);
//         // EcallHalSetVehicleMute(0);
//     }
//     else
//     {
//         EcallHalSetSosRedLedState(1);
//         EcallHalSetSosGreenLedState(1);
//         // EcallHalSetVehicleMute(1);
//     }

//     flag = !flag;
//     EcallHalGetSosButtonStatus();
//     // TBOX_PRINT("sos button connect state is %d\r\n", EcallHalGetSosButtonConnectStatus());
//     EcallHalGetMicConnectStatus();
// }

