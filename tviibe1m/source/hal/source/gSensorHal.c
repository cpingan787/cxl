#include <stdio.h>
#include <stdarg.h>

#include "cy_project.h"
#include "cy_device_headers.h"
//#include "lsm6dsm_reg.h"
#include "gSensorHal.h"

#define USER_I2C_SCB_TYPE       SCB2
#define USER_I2C_SCB_PCLK       PCLK_SCB2_CLOCK
#define USER_I2C_SCB_IRQN       scb_2_interrupt_IRQn

#define I2C_SDA_PORT     GPIO_PRT19
#define I2C_SDA_PORT_PIN (1)
#define I2C_SDA_PORT_MUX P19_1_SCB2_I2C_SDA

#define I2C_SCL_PORT     GPIO_PRT19
#define I2C_SCL_PORT_PIN (2)
#define I2C_SCL_PORT_MUX P19_2_SCB2_I2C_SCL

#define DIVIDER_NO_1 (1u)

/* Select Frequency */
#if (CY_USE_PSVP == 1)
  #define E_SOURCE_CLK_FREQ     (24000000ul) // fixed
#else
  #define E_SOURCE_CLK_FREQ     (80000000u)  // fixed
#endif
#define     E_I2C_INCLK_TARGET_FREQ (2000000ul)  // modifiable
#define     I2C_DATARATE_100KHZ   100000
#define     I2C_DATARATE_400KHZ   400000
#define     I2C_DATARATE_1000KHZ  1000000

#define E_I2C_SLAVE_ADDR        0x6A
#define E_I2C_RECV_SIZE         9
#define     I2C_READ       1         // read from device
#define     I2C_WRITE      0         // write to device
#define     TIMEOUT          2000       // error counter time-out

uint8_t WriteBuffer[20];  // data to send to EEPROM
uint8_t ReadBuffer[20];   // data received from EEPROM

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

static cy_stc_scb_i2c_master_xfer_config_t g_stc_i2c_master_config =
{
    .slaveAddress = E_I2C_SLAVE_ADDR,
    .buffer       = 0,
    .bufferSize   = 0,
    .xferPending  = false
};

typedef struct 
{
    uint32_t xAcceleratedData;
    uint32_t yAcceleratedData;
    uint32_t zAcceleratedData;
}GSensorHalData_t;

//GSensorHalData_t GSensorAccData;

void DelayUs(uint32_t cnt)
{ 		
	do{}while(--cnt);
}

/* Local Variables */
void Scb_I2C_IntrISR(void)
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

void Scb_I2C_Master_LowLevelAPI_Test(void)
{
    /*------------------------*/
    /* I2C Master Byte Write  */
    /*------------------------*/

    /* Make sure TX FIFO empty */
    while(Cy_SCB_GetNumInTxFifo(USER_I2C_SCB_TYPE) != 0ul);

    /* Send START and Receive ACK/NACK */
    //CY_ASSERT(Cy_SCB_I2C_MasterSendStart(USER_I2C_SCB_TYPE, E_I2C_SLAVE_ADDR, CY_SCB_I2C_WRITE_XFER, 2000ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);
    if(Cy_SCB_I2C_MasterSendStart(USER_I2C_SCB_TYPE, E_I2C_SLAVE_ADDR, CY_SCB_I2C_WRITE_XFER, 10ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS)
    {
      
    }
    /* Transmit One Byte Data */
    static uint8_t g_send_byte = LSM6DSM_WHO_AM_I;
    if(Cy_SCB_I2C_MasterWriteByte(USER_I2C_SCB_TYPE, g_send_byte, 10ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);

    /* Send STOP */
    if(Cy_SCB_I2C_MasterSendWriteStop(USER_I2C_SCB_TYPE, 10ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);

    /*------------------------*/
    /* I2C Master Byte Read   */
    /*------------------------*/

    /* Make sure RX FIFO empty */
    while(Cy_SCB_GetNumInRxFifo(USER_I2C_SCB_TYPE) != 0ul);

    /* Send START and Receive ACK/NACK */
    if(Cy_SCB_I2C_MasterSendStart(USER_I2C_SCB_TYPE, E_I2C_SLAVE_ADDR, CY_SCB_I2C_READ_XFER, 10ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);

    /* Receive One Byte Data */
    static uint8_t g_recv_byte = 0x00u;
    if(Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_NAK, &g_recv_byte, 10ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);

    /* Send NACK (and stop) */
    if(Cy_SCB_I2C_MasterSendReadStop(USER_I2C_SCB_TYPE, 10ul, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);
}

void Scb_I2C_Master_HighLevelAPI_Test(void)
{
//    if(Cy_SCB_I2C_MasterWriteByte(USER_I2C_SCB_TYPE,LSM6DSM_WHO_AM_I,5,&g_stc_i2c_context) == CY_SCB_I2C_SUCCESS)
//    {
//      
//    }
    /* I2C Master Write */
    //static uint8_t g_i2c_tx_buf[32] = "ABCDEFG012345!";
    static uint8_t g_i2c_tx_buf[32];
    g_i2c_tx_buf[0] = LSM6DSM_WHO_AM_I;
    g_stc_i2c_master_config.buffer     = &g_i2c_tx_buf[0];
    g_stc_i2c_master_config.bufferSize = strlen((char *)g_i2c_tx_buf);
    if(Cy_SCB_I2C_MasterWrite(USER_I2C_SCB_TYPE, &g_stc_i2c_master_config, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);

    Cy_SysTick_DelayInUs(100000ul);

    /* I2C Master Read */
    static uint8_t g_i2c_rx_buf[32];
    g_stc_i2c_master_config.buffer     = &g_i2c_rx_buf[0];
    g_stc_i2c_master_config.bufferSize = E_I2C_RECV_SIZE;
    if(Cy_SCB_I2C_MasterRead(USER_I2C_SCB_TYPE, &g_stc_i2c_master_config, &g_stc_i2c_context) == CY_SCB_I2C_SUCCESS);
    
    
}

cy_en_scb_i2c_status_t I2cStart(uint8_t WR_flg)
{ 
    cy_en_scb_i2c_status_t  result_i2c;
    result_i2c = Cy_SCB_I2C_MasterSendStart(USER_I2C_SCB_TYPE, (E_I2C_SLAVE_ADDR|WR_flg), CY_SCB_I2C_WRITE_XFER, 10, &g_stc_i2c_context);
    return result_i2c;
}   
  
 
cy_en_scb_i2c_status_t I2cWriteStop(void)
{   
    cy_en_scb_i2c_status_t  result_i2c;
    result_i2c = Cy_SCB_I2C_MasterSendStop(USER_I2C_SCB_TYPE, 2000, &g_stc_i2c_context); 
    return result_i2c;
}   

cy_en_scb_i2c_status_t I2CWriteByte(uint8_t cValue)
{
    // Transmite One Byte Data 
    cy_en_scb_i2c_status_t result_i2c;
    result_i2c = Cy_SCB_I2C_MasterWriteByte(USER_I2C_SCB_TYPE, cValue, 2000, &g_stc_i2c_context);
    return  result_i2c;
}

cy_en_scb_i2c_status_t I2c_Continue(uint8_t WR_flg)
{
    cy_en_scb_i2c_status_t result_i2c;
   // Cy_SCB_I2C_MasterSendReStart(SCB0, EEPROM_24C04|WR_flg, CY_SCB_I2C_READ_XFER, 2000, &g_stc_i2c_context);
    result_i2c = Cy_SCB_I2C_MasterSendReStart(USER_I2C_SCB_TYPE, E_I2C_SLAVE_ADDR|WR_flg, CY_SCB_I2C_READ_XFER, 2000, &g_stc_i2c_context);
    return  result_i2c; 
} 

int32_t Lsm6dsmWriteoneByte(uint16_t u16Address, uint8_t cValue)
{
    //uint8_t Pagetemp;
    uint8_t Addresstemp;
    //Pagetemp = (uint8_t)(u16Address >> 8) ;
    Addresstemp = (uint8_t)(u16Address & 0x00ff);
    if(I2cStart(I2C_WRITE) != CY_SCB_I2C_SUCCESS)    return 1;
    if(I2CWriteByte(Addresstemp) != CY_SCB_I2C_SUCCESS) return 1;
    if(I2CWriteByte(cValue) != CY_SCB_I2C_SUCCESS) return 1;
    if(I2cWriteStop() != CY_SCB_I2C_SUCCESS) return 1; 
    return 0; 
}

int32_t Lsm6dsmWriteByte(uint16_t u16Address, uint8_t *buffer, uint8_t Length)
{
    //uint8_t Pagetemp;
    uint8_t Addresstemp, i;
    //Pagetemp = (uint8_t)(u16Address >> 8) ;
    Addresstemp = (uint8_t)(u16Address & 0x00ff);
    if(I2cStart(I2C_WRITE) != CY_SCB_I2C_SUCCESS)    return 1;
    if(I2CWriteByte(Addresstemp) != CY_SCB_I2C_SUCCESS) return 1;
    for(i = 0; i < Length ; i++)
    {
        if(I2CWriteByte(*buffer++) != CY_SCB_I2C_SUCCESS) return 1;
        DelayUs(2000); 
    }
    if(I2cWriteStop() != CY_SCB_I2C_SUCCESS) return 1; 
    return 0; 
}

cy_en_scb_i2c_status_t I2c_Read( uint8_t *Rxbyte)
{
    cy_en_scb_i2c_status_t result_i2c;

    result_i2c = Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_ACK, Rxbyte, 2000, &g_stc_i2c_context);
    return result_i2c; 
} 
cy_en_scb_i2c_status_t I2c_ReadLast(uint8_t *Rxbyte)  
{
    cy_en_scb_i2c_status_t result_i2c;
    result_i2c = Cy_SCB_I2C_MasterReadByte(USER_I2C_SCB_TYPE, CY_SCB_I2C_NAK, Rxbyte, 2000, &g_stc_i2c_context);
    return result_i2c;                       
}

uint8_t temp = 0;
int32_t Lsm6dsmReadByte(uint16_t u16Address, uint8_t *buffer, uint8_t Length)
{
    uint8_t Pagetemp, Addresstemp, i;
    //uint8_t Rx_data;
    Pagetemp = (uint8_t)(u16Address >> 8) ;
    Addresstemp = (uint8_t)(u16Address & 0x00ff) ;
    if(I2cStart(Pagetemp | I2C_WRITE) != CY_SCB_I2C_SUCCESS)    return 1;
    if(I2CWriteByte(Addresstemp) != CY_SCB_I2C_SUCCESS) return 1;
    if(I2c_Continue(Pagetemp | I2C_WRITE) != CY_SCB_I2C_SUCCESS) return 1; 
    //if(I2cStart(Addresstemp | I2C_READ) != CY_SCB_I2C_SUCCESS) return 1; 
    for(i = 1; i <= Length; i++)
    {
        if(i < Length)
        {
            if(I2c_Read(buffer) != CY_SCB_I2C_SUCCESS)       return 1;
        }
        else
        {
            if(I2c_ReadLast(buffer) != CY_SCB_I2C_SUCCESS)   return 1;
        }
        buffer++;
        DelayUs(1000); 
    }
    if(I2cWriteStop() != CY_SCB_I2C_SUCCESS) return 1;
    return 0;
}

static void Lsm6dsmInit(void)
{
    uint16_t timerCounter = 10000;
    Lsm6dsmReadByte(LSM6DSM_WHO_AM_I,ReadBuffer,1);
    while((ReadBuffer[0]!=0x6B) && (timerCounter))
    {
        timerCounter--;
        if(timerCounter < 5000)
        {
            Lsm6dsmReadByte(LSM6DSM_WHO_AM_I,ReadBuffer,1);
        }
        //RTOS_HalApiWait(50);
    }
 
    //set ODR 12.5Hz   full-scale ±2g
    Lsm6dsmWriteoneByte(LSM6DSM_CTRL1_XL,0x10);
    
}

void GSensorHalInit(void)
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

    Lsm6dsmInit();
    /* I2C Master Mode Test */
    //Scb_I2C_Master_LowLevelAPI_Test();

    //Scb_I2C_Master_HighLevelAPI_Test();

    //for(;;);
}

void IICtest(void)
{
  uint16_t temp;
  WriteBuffer[0] = LSM6DSM_WHO_AM_I;
  WriteBuffer[1] = LSM6DSM_WHO_AM_I;
  for(;;)   //debug
  {                                       
      //Lsm6dsmWriteByte(LSM6DSM_WHO_AM_I,WriteBuffer,0);  
      Lsm6dsmWriteByte(LSM6DSM_WHO_AM_I,WriteBuffer,0);  
      DelayUs(666666);
      temp = LSM6DSM_WHO_AM_I;
      Lsm6dsmReadByte(temp,ReadBuffer,1);
      DelayUs(66666);
  }
}

int16_t GSensorHalGetValue(GSensorHalData_t *GSensordata)
{
#if(0)
    uint8_t buf[6];
    Lsm6dsmReadByte(LSM6DSM_STATUS_REG,ReadBuffer,1);
    if((ReadBuffer[0]&0x01) != 0)
    {
        Lsm6dsmReadByte(LSM6DSM_OUTX_H_G,ReadBuffer,1);
        buf[0] = ReadBuffer[0];
        Lsm6dsmReadByte(LSM6DSM_OUTX_L_G,ReadBuffer,1);
        buf[1] = ReadBuffer[0];

        Lsm6dsmReadByte(LSM6DSM_OUTY_H_G,ReadBuffer,1);
        buf[2] = ReadBuffer[0];
        Lsm6dsmReadByte(LSM6DSM_OUTY_L_G,ReadBuffer,1);
        buf[3] = ReadBuffer[0];

        Lsm6dsmReadByte(LSM6DSM_OUTZ_H_G,ReadBuffer,1);
        buf[4] = ReadBuffer[0];
        Lsm6dsmReadByte(LSM6DSM_OUTZ_L_G,ReadBuffer,1);
        buf[5] = ReadBuffer[0];

        GSensordata->xAcceleratedData = (buf[0]<<8)|buf[1];
        GSensordata->yAcceleratedData = (buf[2]<<8)|buf[3];
        GSensordata->zAcceleratedData = (buf[4]<<8)|buf[5];
        return 0;
    }
#endif
    return 1;
}


int16_t GSensorHalSetThreshold(uint32_t Threshold)
{
#if(0)
    //enable basic interrupts
    Lsm6dsmWriteoneByte(LSM6DSM_TAP_CFG,0x10);
    Lsm6dsmWriteoneByte(LSM6DSM_WAKE_UP_DUR,0x00);
#endif
    return 0;
}
