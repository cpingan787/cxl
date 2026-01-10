#include <stdio.h>
#include <stdarg.h>

#include "cy_project.h"
#include "cy_device_headers.h"

#include "bleHal.h"
#include "FreeRTOS.h"
#include "task.h"
#if 0
#define BLE_SCB_TYPE                 SCB1

#define BLE_SCB_UART_RX_PORT         GPIO_PRT18
#define BLE_SCB_UART_RX_PIN          0
#define BLE_SCB_UART_RX_MUX          P18_0_SCB1_UART_RX

#define BLE_SCB_UART_TX_PORT         GPIO_PRT18
#define BLE_SCB_UART_TX_PIN          1
#define BLE_SCB_UART_TX_MUX          P18_1_SCB1_UART_TX

#define BLE_SCB_UART_PCLK            PCLK_SCB1_CLOCK
#define BLE_SCB_UART_IRQN            scb_1_interrupt_IRQn

#define BLE_RST_PORT        GPIO_PRT18
#define BLE_RST_PIN         4
#define BLE_RST_MUX         P18_4_GPIO

#define BLE_STATUS_PORT     GPIO_PRT17
#define BLE_STATUS_PIN      2
#define BLE_STATUS_MUX      P17_2_GPIO



#define E_UART_RX_INTR_FACTER     (                              \
                                 CY_SCB_UART_RX_TRIGGER      |   \
                               /*CY_SCB_UART_RX_NOT_EMPTY    | */\
                               /*CY_SCB_UART_RX_FULL         | */\
                                 CY_SCB_UART_RX_OVERFLOW     |   \
                                 CY_SCB_UART_RX_UNDERFLOW    |   \
                                 CY_SCB_UART_RX_ERR_FRAME    |   \
                                 CY_SCB_UART_RX_ERR_PARITY   |   \
                                 CY_SCB_UART_RX_BREAK_DETECT |   \
                                 0                               \
                                )

static cy_stc_scb_uart_config_t    g_stc_uart_config = {//串口配置结构
   .uartMode                   = CY_SCB_UART_STANDARD,
   .oversample                 = 8,
   .dataWidth                  = 8,
   .enableMsbFirst             = false,
   .stopBits                   = CY_SCB_UART_STOP_BITS_1,
   .parity                     = CY_SCB_UART_PARITY_NONE,
   .enableInputFilter          = false,
   .dropOnParityError          = false,
   .dropOnFrameError           = false,
   .enableMutliProcessorMode   = false,
   .receiverAddress            = 0,
   .receiverAddressMask        = 0,
   .acceptAddrInFifo           = false,
   .irdaInvertRx               = false,
   .irdaEnableLowPowerReceiver = false,
   .smartCardRetryOnNack       = false,
   .enableCts                  = false,
   .ctsPolarity                = CY_SCB_UART_ACTIVE_LOW,
   .rtsRxFifoLevel             = 0, //
   .rtsPolarity                = CY_SCB_UART_ACTIVE_LOW,
   .breakWidth                 = 0,
   .rxFifoTriggerLevel         = 0,
   .rxFifoIntEnableMask        = E_UART_RX_INTR_FACTER,
   .txFifoTriggerLevel         = 0,
   .txFifoIntEnableMask        = 0,
};

#define UART_BLE_RX_BUF_LEN 512
uint8_t m_bleModuleProtocalBuf[300];

typedef struct
{
  uint16_t indexIn;
  uint16_t indexOut;
  uint16_t rxCount;
  uint8_t rxBuffer[UART_BLE_RX_BUF_LEN];
}bsp_uart_rx_buffer_t;

typedef struct
{
  uint8_t rxBuffer[300];
  uint16_t rxCount;
}ble_uart_buffer_t;

typedef struct
{
  uint8_t rxBuffer[50];
  uint16_t rxCount;
}ble_AT_buffer_t;

static ble_AT_buffer_t m_bleATBuf;

static ble_uart_buffer_t m_bleBuf;

bsp_uart_rx_buffer_t m_bspUart0Buffer;
cy_stc_scb_uart_context_t   g_bleuart_context;

static uint32_t g_uartBandrate = 460800;

static uint16_t GetXorCheckSum(uint8_t *pData,uint16_t len)
{
  uint16_t i;
  uint16_t checksum;
  checksum = 0;
  for(i=0;i<len;i++)
  {
    checksum ^= pData[i];
  }
  return checksum;
}

static uint16_t GetBleData(uint8_t *pInputData,uint16_t inputLength,uint8_t *pDataOut,uint32_t *pLenOut)
{

  uint16_t i;
  uint16_t len;
  uint16_t checksum;
  if(inputLength<2)
  {

    return -1;
  }
  for(i=1;i<inputLength;i++)
  {
    if((pInputData[i-1]==0x55)&&(pInputData[i]==0xAA))
    {
      break;
    }
  }
  if(i>=inputLength)
  {
    return -1;
  }
  i++;
  len = (pInputData[i+1]<<8)+pInputData[i];

  checksum = GetXorCheckSum(pInputData+i,len+6);
  if(((checksum>>8)&0xFF)!=pInputData[i+len+7])
  {

    return -1;
  }
  if(((checksum>>0)&0xFF)!=pInputData[i+len+6])
  {

    return -1;
  }
  //data
  for(uint16_t count = 0;count < len;count ++)
  {
    pDataOut[count] = pInputData[count+i+6];
  }
  *pLenOut = len;

  return 0;
}

static int16_t BleTransmit(uint8_t *pData,uint32_t txLength)
{
    Cy_SCB_UART_PutArray(BLE_SCB_TYPE, pData, txLength);
    /*
    uint8_t temp[120];
    uint32_t remain = txLength;
    uint32_t startAddress = 0;
    uint32_t i = 0,j = 0;

    while(i<txLength)
    {
        if(remain>40)
        {
            for(j=0; j<40; j++)
            {                    
                temp[j] = pData[startAddress++];
            }
            Cy_SCB_UART_PutArray(BLE_SCB_TYPE, temp, 40);//debug
            vTaskDelay(4/(g_uartBandrate/115200));
//            vTaskDelay( pdMS_TO_TICKS(4/(g_uartBandrate/115200)));
            i = i+40;
            remain = remain - 40;
        }
        else
        {              
            for(j=0; j<remain; j++)
            {                    
                temp[j] = pData[startAddress++];                   
            }
            Cy_SCB_UART_PutArray(BLE_SCB_TYPE, temp, remain);//debug
            i = i+ remain;
            vTaskDelay(4/(g_uartBandrate/115200));
//            vTaskDelay( pdMS_TO_TICKS(4/(g_uartBandrate/115200)));
        }
    }
    */
    return 0;
}

int16_t BleHalTransmit(uint8_t *pData,uint32_t length)
{   
  uint16_t checksum;
  if((pData[0]=='A')&&(pData[1]=='T'))
  {
    BleTransmit(pData,length);
    return 0;
  }
  m_bleModuleProtocalBuf[0] = 0x55;
  m_bleModuleProtocalBuf[1] = 0xAA;
  m_bleModuleProtocalBuf[2] = length&0xFF;
  m_bleModuleProtocalBuf[3] = (length>>8)&0xFF;
  //connect handle
  m_bleModuleProtocalBuf[4] = 0x00;
  m_bleModuleProtocalBuf[5] = 0x00;
  //channel handle
  m_bleModuleProtocalBuf[6] = 0x25;
  m_bleModuleProtocalBuf[7] = 0x00;
  //data
  memcpy(m_bleModuleProtocalBuf+8,pData,length);
  //checksum
  checksum = GetXorCheckSum(m_bleModuleProtocalBuf+2,length+6);
  m_bleModuleProtocalBuf[9+length] = (checksum>>8)&0xFF ;  
  m_bleModuleProtocalBuf[8+length] = (checksum>>0)&0xFF ;  
  //
  m_bleModuleProtocalBuf[10+length] = 0xAA; 
  m_bleModuleProtocalBuf[11+length] = 0x55; 
  BleTransmit(m_bleModuleProtocalBuf,12+length);

  return 0;
}

void Scb_BLEUART_Event(uint32_t locEvents)
{
    switch (locEvents) {

        case CY_SCB_UART_TRANSMIT_IN_FIFO_EVENT:
            break;

        case CY_SCB_UART_TRANSMIT_DONE_EVENT:
            break;

        case CY_SCB_UART_RECEIVE_DONE_EVENT:
#if defined(E_UART_ECHO_INTR_THRESHOLD)
            /* UART Test (High-Level)                                                 */
            /* (3) Interrupt & Receive by threshold byte unit (E_UART_RECV_THRESHOLD) */
            Cy_SCB_UART_Transmit(CY_BLE_SCB_TYPE, &g_bleuart_in_data[0], E_UART_RECV_THRESHOLD, &g_bleuart_context);
            Cy_SCB_UART_Receive(CY_BLE_SCB_TYPE, &g_bleuart_in_data[0], E_UART_RECV_THRESHOLD, &g_bleuart_context);
#endif
            /* Re-Enable Interrupt */
            Cy_SCB_SetRxInterruptMask(BLE_SCB_TYPE, g_stc_uart_config.rxFifoIntEnableMask);
            break;

        case CY_SCB_UART_RB_FULL_EVENT:
            break;

        case CY_SCB_UART_RECEIVE_ERR_EVENT:
            break;

        case CY_SCB_UART_TRANSMIT_ERR_EVENT:
            break;

        default:
            break;
    }
}
void Scb_BLEUART_IntrISR(void)
{
#if(1)
    /* UART Echo Test (High-Level)            */
    /* (2) Interrupt & Receive by 1 byte unit */
    uint8_t buffer[64];
    int i;
    uint32_t num;
    //num = Cy_SCB_UART_GetNumInRxFifo(CY_BLE_SCB_TYPE);
    num = Cy_SCB_UART_GetArray(BLE_SCB_TYPE, buffer, sizeof(buffer));
    if (num != 0) 
    {
        //Cy_SCB_UART_Receive(CY_BLE_SCB_TYPE, buffer, num, &g_bleuart_context);
        for(i=0;i<num;i++)
        {
            m_bspUart0Buffer.rxBuffer[m_bspUart0Buffer.indexIn]= buffer[i];
            m_bspUart0Buffer.indexIn++;
            if(m_bspUart0Buffer.indexIn>=UART_BLE_RX_BUF_LEN)
            {
                m_bspUart0Buffer.indexIn = 0;
            }
            m_bspUart0Buffer.rxCount++;
        }
        // Cy_SCB_SetRxFifoLevel(CY_BLE_SCB_TYPE, 0);
    }
#endif
    /* UART interrupt handler */
    Cy_SCB_UART_Interrupt(BLE_SCB_TYPE, &g_bleuart_context);
    NVIC_ClearPendingIRQ(CPUIntIdx4_IRQn);
}

void BleHalInit(void)
{
    cy_stc_gpio_pin_config_t    stc_port_pin_cfg_uart = {0};
    cy_stc_sysint_irq_t         stc_sysint_irq_cfg_uart;
    cy_stc_gpio_pin_config_t portPinCfg =
    {
        .outVal    = 0ul,
        .driveMode = CY_GPIO_DM_STRONG_IN_OFF,
        .hsiom     = P18_4_GPIO,
        .intEdge   = 0ul,
        .intMask   = 0ul,
        .vtrip     = 0ul,
        .slewRate  = 0ul,
        .driveSel  = 0ul,
    };
    Cy_GPIO_Pin_Init(GPIO_PRT18,4,&portPinCfg);
    Cy_GPIO_Set(GPIO_PRT18,4);


    portPinCfg.hsiom = P18_7_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT18,7,&portPinCfg);

    portPinCfg.hsiom = P18_3_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT18,3,&portPinCfg);

    stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_HIGHZ;
    stc_port_pin_cfg_uart.hsiom     = BLE_SCB_UART_RX_MUX;
    Cy_GPIO_Pin_Init(BLE_SCB_UART_RX_PORT, BLE_SCB_UART_RX_PIN, &stc_port_pin_cfg_uart);//直接指定端口,对应手册pdf26:P130
    stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_STRONG_IN_OFF;
    stc_port_pin_cfg_uart.hsiom     = BLE_SCB_UART_TX_MUX;
    Cy_GPIO_Pin_Init(BLE_SCB_UART_TX_PORT, BLE_SCB_UART_TX_PIN, &stc_port_pin_cfg_uart);//P131
    Cy_SysClk_PeriphAssignDivider(BLE_SCB_UART_PCLK, CY_SYSCLK_DIV_24_5_BIT, 2u);
    //set bandrate 460800
    Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, 2u, 20u, 22u);    //80MHz
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 2u);
    
    //g_stc_uart_config.oversample = 8;
    stc_sysint_irq_cfg_uart.sysIntSrc = BLE_SCB_UART_IRQN;
    stc_sysint_irq_cfg_uart.intIdx    = CPUIntIdx4_IRQn;
    stc_sysint_irq_cfg_uart.isEnabled = true;
    Cy_SysInt_InitIRQ(&stc_sysint_irq_cfg_uart);//开启UART接收中断
    Cy_SysInt_SetSystemIrqVector(stc_sysint_irq_cfg_uart.sysIntSrc, Scb_BLEUART_IntrISR);//Scb_UART_IntrISR:uart中断处理函数

    m_bspUart0Buffer.indexIn = 0;
    m_bspUart0Buffer.indexOut = 0;
    m_bspUart0Buffer.rxCount = 0;
    Cy_SCB_UART_DeInit(BLE_SCB_TYPE);
    Cy_SCB_UART_Init(BLE_SCB_TYPE, &g_stc_uart_config, &g_bleuart_context);//将SCBx与串口的配置还有数据结构绑定
    Cy_SCB_UART_RegisterCallback(BLE_SCB_TYPE, (scb_uart_handle_events_t)Scb_BLEUART_Event, &g_bleuart_context);//
    Cy_SCB_ClearTxInterrupt(BLE_SCB_TYPE, CY_SCB_TX_INTR_LEVEL);
    
    Cy_SCB_UART_Enable(BLE_SCB_TYPE);
    /* Enable Interrupt */
    NVIC_EnableIRQ(CPUIntIdx4_IRQn);
    NVIC_SetPriority(CPUIntIdx4_IRQn, 4);
}

int16_t BleRead(uint8_t *pData,uint32_t readCount,uint32_t *pLength)
{
    uint16_t receiveDataCount = 0;
    uint16_t i;
    __disable_irq();
    if(m_bspUart0Buffer.rxCount > 0)
    {
        if(readCount < m_bspUart0Buffer.rxCount)
        {
            receiveDataCount = readCount;
        }
        else
        {
            receiveDataCount = m_bspUart0Buffer.rxCount;
        }
        for(i = 0;i < receiveDataCount;i++)
        {
            pData[i] = m_bspUart0Buffer.rxBuffer[m_bspUart0Buffer.indexOut];
            m_bspUart0Buffer.indexOut++;
            if(m_bspUart0Buffer.indexOut >= UART_BLE_RX_BUF_LEN)
            {
                m_bspUart0Buffer.indexOut = 0;
            }
            m_bspUart0Buffer.rxCount--;
        }
    }
    else
    {
        receiveDataCount = 0;
    }
    __enable_irq();
    *pLength = receiveDataCount;
    if(receiveDataCount == 0)
    {
        return -1;
    }

    return 0;
}

int16_t BleHalReadAT(uint8_t *pData,uint32_t *ble_len)
{
  int ret = 0;
  if(m_bleATBuf.rxCount == 0)
  {
    ret = -1;
  }
  else
  {
    *ble_len = m_bleATBuf.rxCount;
    for(int i = 0;i < m_bleATBuf.rxCount;i++)
    {
      pData[i] = m_bleATBuf.rxBuffer[i];
    }
  }
  return ret;
}

int16_t BleHalRead(uint8_t *pData,uint32_t *ble_len)
{
  uint32_t len;
  uint16_t i,j;
  int16_t ret;
  uint8_t tmp[100];
  //uint32_t time;
  //read key id from app.in receiving,when 20ms is timeout,receive is finished  
  m_bleBuf.rxCount = 0;
  len = 0;
  BleRead(tmp,sizeof(tmp),&len);
  if(len>0)
  {
    for(j=0;j<len;j++)
    {
      if(m_bleBuf.rxCount<sizeof(m_bleBuf.rxBuffer))
      {
        m_bleBuf.rxBuffer[m_bleBuf.rxCount++] = tmp[j];
      }      
    }
  }
  else
  {
    return 1;
  }
  for(i=0;i<10;i++)
  {
    BleRead(tmp,sizeof(tmp),&len);
    if(len>0)
    {
      i = 0;//clear time count
      for(j=0;j<len;j++)
      {
        if(m_bleBuf.rxCount<sizeof(m_bleBuf.rxBuffer))
        {
          m_bleBuf.rxBuffer[m_bleBuf.rxCount++] = tmp[j];
        }      
      }
    }
    else
    {
      vTaskDelay(pdMS_TO_TICKS(2));
    }
  }
  //check At Command
  if((m_bleBuf.rxBuffer[0]=='A')&&(m_bleBuf.rxBuffer[1]=='T')&&(m_bleBuf.rxBuffer[2]=='+'))
  {
    m_bleATBuf.rxBuffer[0] = 'A';
    m_bleATBuf.rxBuffer[1] = 'T';
    m_bleATBuf.rxBuffer[2] = '+';
    for(i=3;i<m_bleBuf.rxCount;i++)
    {
      if(m_bleBuf.rxBuffer[i]=='\n')
      {
        m_bleATBuf.rxBuffer[i] = m_bleBuf.rxBuffer[i];
        m_bleATBuf.rxCount = m_bleBuf.rxCount;
        break;
      }
      else
      {
        m_bleATBuf.rxBuffer[i] = m_bleBuf.rxBuffer[i];
        m_bleATBuf.rxCount = 0;
      }
    }
    if(i>=m_bleBuf.rxCount)
    {
      return -1;
    }    
    i++;
    for(j=0;i<m_bleBuf.rxCount;i++,j++)
    {
      m_bleBuf.rxBuffer[j] = m_bleBuf.rxBuffer[j];
    }        
    m_bleBuf.rxCount = j;
  }  
  //
  len = 0;
  ret = GetBleData(m_bleBuf.rxBuffer,m_bleBuf.rxCount,pData,ble_len);
  if(ret!=0)
  {
    return -1;
  }
  return 0;
}



void BleHalSetMode(uint8_t BleHalRead)
{

}

int16_t BleHalGetConnectStatus(void)
{
    return 0;
}

#endif
