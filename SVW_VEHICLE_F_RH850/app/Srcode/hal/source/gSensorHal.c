#include <stdio.h>
#include <stdarg.h>

#include "cy_project.h"
#include "cy_device_headers.h"
#include "gSensorHal.h"

#define USER_I2C_SCB_TYPE       SCB2
#define USER_I2C_SCB_PCLK       PCLK_SCB2_CLOCK
#define USER_I2C_SCB_IRQN       scb_2_interrupt_IRQn

#define I2C_SDA_PORT            GPIO_PRT19
#define I2C_SDA_PORT_PIN        (1)
#define I2C_SDA_PORT_MUX        P19_1_SCB2_I2C_SDA

#define I2C_SCL_PORT            GPIO_PRT19
#define I2C_SCL_PORT_PIN        (2)
#define I2C_SCL_PORT_MUX        P19_2_SCB2_I2C_SCL

#define DIVIDER_NO_1 (1u)

/* Select Frequency */
#if (CY_USE_PSVP == 1)
  #define E_SOURCE_CLK_FREQ     (24000000ul) // fixed
#else
  #define E_SOURCE_CLK_FREQ     (80000000u)  // fixed
#endif
#define E_I2C_INCLK_TARGET_FREQ (2000000ul)  // modifiable
#define I2C_DATARATE_100KHZ     100000
#define I2C_DATARATE_400KHZ     400000
#define I2C_DATARATE_1000KHZ    1000000

#define E_I2C_SLAVE_ADDR        0x6A
#define E_I2C_RECV_SIZE         9
#define I2C_READ                1         // read from device
#define I2C_WRITE               0         // write to device
#define TIMEOUT                 2000       // error counter time-out

#define ACC_RATIO               16384

//static uint8_t WriteBuffer[20];  // data to send to EEPROM
static uint8_t ReadBuffer[20];   // data received from EEPROM

static cy_stc_gpio_pin_config_t I2S_port_pin_cfg =
{
    .outVal    = 0ul,
    .driveMode = 0ul,            /* Will be updated in runtime */
    .hsiom     = HSIOM_SEL_GPIO, /* Will be updated in runtime */
    .intEdge   = 0ul,
    .intMask   = 0ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

static cy_stc_sysint_irq_t irq_cfg =
{
    .sysIntSrc  = USER_I2C_SCB_IRQN,
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

/* SCB - I2C Configuration */
static cy_stc_scb_i2c_context_t g_stc_i2c_context;
static const cy_stc_scb_i2c_config_t  g_stc_i2c_config =
{
    .i2cMode             = CY_SCB_I2C_MASTER,
    .useRxFifo           = true,
    .useTxFifo           = true,
    .slaveAddress        = E_I2C_SLAVE_ADDR,
    .slaveAddressMask    = E_I2C_SLAVE_ADDR,
    .acceptAddrInFifo    = false,
    .ackGeneralAddr      = false,
    .enableWakeFromSleep = false
};

/* Local Variables */
static void Scb_I2C_IntrISR(void)
{
    /* I2C interrupt handler for High-Level APIs */
    Cy_SCB_I2C_Interrupt(USER_I2C_SCB_TYPE, &g_stc_i2c_context);
}

static void SetPeripheFracDiv24_5(uint64_t targetFreq, uint64_t sourceFreq, uint8_t divNum)
{
    uint64_t temp = ((uint64_t)sourceFreq << 5ull);
    uint32_t divSetting;

    divSetting = (uint32_t)(temp / targetFreq);
    Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, divNum, 
                                   (((divSetting >> 5u) & 0x00000FFFul) - 1ul), 
                                   (divSetting & 0x0000001Ful));
}

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

static int32_t Lsm6dsmWriteoneByte(uint8_t address, uint8_t cValue)
{
  if(I2cStart(E_I2C_SLAVE_ADDR) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2CWriteByte(address) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2CWriteByte(cValue) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2cStop() != CY_SCB_I2C_SUCCESS)    return 1;
  return 0; 
}

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

static int16_t Lsm6dsmReadOneByte(uint8_t address,uint8_t *buffer)
{
  if(I2cStart(E_I2C_SLAVE_ADDR) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2CWriteByte(address) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2c_Continue(E_I2C_SLAVE_ADDR) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2c_ReadLast(buffer) != CY_SCB_I2C_SUCCESS)    return 1;
  if(I2cStop() != CY_SCB_I2C_SUCCESS)    return 1;
  return 0;
}

static uint8_t g_Lsm6dsmWakeupFlag = 0;
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

  /*set ODR 416 Hz   full-scale ±2g*/
  Lsm6dsmWriteoneByte(LSM6DSM_CTRL1_XL,0x60);
  //Lsm6dsmReadOneByte(LSM6DSM_CTRL1_XL,ReadBuffer);
  Lsm6dsmWriteoneByte(LSM6DSM_TAP_CFG,0x00);
  if(flag == 1)
  {
    g_Lsm6dsmWakeupFlag = 1;
  }
  else
  {
    g_Lsm6dsmWakeupFlag = 0;
  }
}
/*************************************************
  Function:       GSensorHalGetWakeupFlag
  Description:    Get wake-up flag
  Input:          none
  Output:         none
  Return:         g_Lsm6dsmWakeupFlag : set the wake-up flag
                  0 : no wake-up
                  1 : set wake-up
  Others:         none
*************************************************/
int16_t GSensorHalGetWakeupFlag(void)
{
  return g_Lsm6dsmWakeupFlag;
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
    /*---------------------*/
    /* Clock Configuration */
    /*---------------------*/
    Cy_SysClk_PeriphAssignDivider(USER_I2C_SCB_PCLK, CY_SYSCLK_DIV_24_5_BIT, DIVIDER_NO_1);
    SetPeripheFracDiv24_5(E_I2C_INCLK_TARGET_FREQ, E_SOURCE_CLK_FREQ, DIVIDER_NO_1);
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, DIVIDER_NO_1);

    /*--------------------*/
    /* Port Configuration */
    /*--------------------*/
    I2S_port_pin_cfg.driveMode = CY_GPIO_DM_OD_DRIVESLOW;
    I2S_port_pin_cfg.hsiom     = I2C_SDA_PORT_MUX;
    Cy_GPIO_Pin_Init(I2C_SDA_PORT, I2C_SDA_PORT_PIN, &I2S_port_pin_cfg);

    I2S_port_pin_cfg.driveMode = CY_GPIO_DM_OD_DRIVESLOW;
    I2S_port_pin_cfg.hsiom     = I2C_SCL_PORT_MUX;
    Cy_GPIO_Pin_Init(I2C_SCL_PORT, I2C_SCL_PORT_PIN, &I2S_port_pin_cfg);

    /*--------------------------*/
    /* Interrupt Configuration */
    /*--------------------------*/
    Cy_SysInt_InitIRQ(&irq_cfg);
    Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Scb_I2C_IntrISR);
    NVIC_SetPriority(irq_cfg.intIdx, 3ul);
    NVIC_EnableIRQ(irq_cfg.intIdx);

    /*--------------------------*/
    /*  Initialize & Enable I2C  */
    /*--------------------------*/
    Cy_SCB_I2C_DeInit(USER_I2C_SCB_TYPE);
    Cy_SCB_I2C_Init(USER_I2C_SCB_TYPE, &g_stc_i2c_config, &g_stc_i2c_context);
    Cy_SCB_I2C_SetDataRate(USER_I2C_SCB_TYPE, I2C_DATARATE_100KHZ, E_I2C_INCLK_TARGET_FREQ);
    Cy_SCB_I2C_RegisterEventCallback(USER_I2C_SCB_TYPE, NULL, &g_stc_i2c_context);
    Cy_SCB_I2C_Enable(USER_I2C_SCB_TYPE);

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
