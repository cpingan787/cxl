#include "canHal.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"

#include "cyip_canfd.h"
#include "cy_canfd_config.h"
#include "cyt2b75cas.h"

#include "logHal.h"

#define NON_ISO_OPERATION 0

     //CAN0(CAN0_0)-TBOX_CAN_CHANNEL_B
#define T2G_CANFD1_TYPE                   CY_CANFD0_0_TYPE   
#define T2G_CANFD1_RX_PORT                GPIO_PRT2
#define T2G_CANFD1_RX_PIN                 1 
#define T2G_CANFD1_TX_PORT                GPIO_PRT2
#define T2G_CANFD1_TX_PIN                 0 
#define T2G_CANFD1_RX_MUX                 P2_1_CANFD0_TTCAN_RX0 
#define T2G_CANFD1_TX_MUX                 P2_0_CANFD0_TTCAN_TX0 
#define T2G_CANFD1_PCLK                   PCLK_CANFD0_CLOCK_CAN0
#define T2G_CANFD1_IRQN                   canfd_0_interrupts0_0_IRQn
    //CAN1(CAN0_1)-TBOX_CAN_CHANNEL_D
#define T2G_CANFD2_TYPE                   CY_CANFD0_1_TYPE   
#define T2G_CANFD2_RX_PORT                GPIO_PRT0
#define T2G_CANFD2_RX_PIN                 3 
#define T2G_CANFD2_TX_PORT                GPIO_PRT0
#define T2G_CANFD2_TX_PIN                 2 
#define T2G_CANFD2_RX_MUX                 P0_3_CANFD0_TTCAN_RX1 
#define T2G_CANFD2_TX_MUX                 P0_2_CANFD0_TTCAN_TX1 
#define T2G_CANFD2_PCLK                   PCLK_CANFD0_CLOCK_CAN1
#define T2G_CANFD2_IRQN                   canfd_0_interrupts0_1_IRQn
     //CAN2(CAN0_2)-TBOX_CAN_CHANNEL_A, 
#define T2G_CANFD3_TYPE                   CY_CANFD0_2_TYPE   
#define T2G_CANFD3_RX_PORT                GPIO_PRT6
#define T2G_CANFD3_RX_PIN                 3 
#define T2G_CANFD3_TX_PORT                GPIO_PRT6
#define T2G_CANFD3_TX_PIN                 2 
#define T2G_CANFD3_RX_MUX                 P6_3_CANFD0_TTCAN_RX2 
#define T2G_CANFD3_TX_MUX                 P6_2_CANFD0_TTCAN_TX2 
#define T2G_CANFD3_PCLK                   PCLK_CANFD0_CLOCK_CAN2
#define T2G_CANFD3_IRQN                   canfd_0_interrupts0_2_IRQn
   //CAN3(CAN1_1)-TBOX_CAN_CHANNEL_E
#define T2G_CANFD4_TYPE                   CY_CANFD1_1_TYPE   
#define T2G_CANFD4_RX_PORT                GPIO_PRT17
#define T2G_CANFD4_RX_PIN                 1 
#define T2G_CANFD4_TX_PORT                GPIO_PRT17
#define T2G_CANFD4_TX_PIN                 0 
#define T2G_CANFD4_RX_MUX                 P17_1_CANFD1_TTCAN_RX1 
#define T2G_CANFD4_TX_MUX                 P17_0_CANFD1_TTCAN_TX1 
#define T2G_CANFD4_PCLK                   PCLK_CANFD1_CLOCK_CAN1
#define T2G_CANFD4_IRQN                   canfd_1_interrupts0_1_IRQn
    //CAN4(CAN1_2-TBOX_CAN_CHANNEL_C
#define T2G_CANFD5_TYPE                   CY_CANFD1_2_TYPE   
#define T2G_CANFD5_RX_PORT                GPIO_PRT18
#define T2G_CANFD5_RX_PIN                 7 
#define T2G_CANFD5_TX_PORT                GPIO_PRT18
#define T2G_CANFD5_TX_PIN                 6 
#define T2G_CANFD5_RX_MUX                 P18_7_CANFD1_TTCAN_RX2 
#define T2G_CANFD5_TX_MUX                 P18_6_CANFD1_TTCAN_TX2 
#define T2G_CANFD5_PCLK                   PCLK_CANFD1_CLOCK_CAN2
#define T2G_CANFD5_IRQN                   canfd_1_interrupts0_2_IRQn
    //CAN5
#define T2G_CANFD6_TYPE                   CY_CANFD1_0_TYPE   
#define T2G_CANFD6_RX_PORT                GPIO_PRT14
#define T2G_CANFD6_RX_PIN                 1 
#define T2G_CANFD6_TX_PORT                GPIO_PRT14
#define T2G_CANFD6_TX_PIN                 0 
#define T2G_CANFD6_RX_MUX                 P14_1_CANFD1_TTCAN_RX0 
#define T2G_CANFD6_TX_MUX                 P14_0_CANFD1_TTCAN_TX0 
#define T2G_CANFD6_PCLK                   PCLK_CANFD1_CLOCK_CAN0
#define T2G_CANFD6_IRQN                   canfd_1_interrupts0_0_IRQn

//P1.0 -> 4G(CAN0_STB,P2.2)
#define CAN0FD_STB_PORT    GPIO_PRT2
#define CAN0FD_STB_PIN     2
#define CAN0FD_STB_PIN_MUX P2_2_GPIO
//P9.0 -> 4G(CAN1_STB,P0.1)
#define CAN1FD_STB_PORT    GPIO_PRT0
#define CAN1FD_STB_PIN     1
#define CAN1FD_STB_PIN_MUX P0_1_GPIO
//P12.2 -> 4G(CAN2_STB,P6.4)
#define CAN2FD_STB_PORT    GPIO_PRT6
#define CAN2FD_STB_PIN     4
#define CAN2FD_STB_PIN_MUX P6_4_GPIO
//P17.2 -> 4G(CAN3_STB,P14.2)
#define CAN3FD_STB_PORT    GPIO_PRT14
#define CAN3FD_STB_PIN     2
#define CAN3FD_STB_PIN_MUX P14_2_GPIO
//P18.5 -> 4G(CAN4_STB,P14.3)
#define CAN4FD_STB_PORT    GPIO_PRT14
#define CAN4FD_STB_PIN     3
#define CAN4FD_STB_PIN_MUX P14_3_GPIO
//P18.5 -> 4G(CAN5_STB,
#define CAN5FD_STB_PORT    GPIO_PRT18
#define CAN5FD_STB_PIN     5
#define CAN5FD_STB_PIN_MUX P18_5_GPIO

#define T2G_CAN0_IRQ_MUX P2_1_GPIO
#define T2G_CAN1_IRQ_MUX P0_3_GPIO
#define T2G_CAN2_IRQ_MUX P6_3_GPIO
#define T2G_CAN3_IRQ_MUX P14_1_GPIO
#define T2G_CAN4_IRQ_MUX P17_1_GPIO
#define T2G_CAN5_IRQ_MUX P18_7_GPIO

typedef struct
{
    volatile stc_GPIO_PRT_t* portReg;
    uint8_t pinNum;
    cy_stc_gpio_pin_config_t cfg;
}StcPinConfig_t;

typedef enum  
{
    E_CAN_MODE_STANDBY	= 0,
    E_CAN_MODE_NORMAL	= 1,
}CanModeType_e;

static cy_stc_gpio_pin_config_t CanFDStbPortPinCfg =
{
    .outVal = 0ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = P0_0_GPIO, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
};

/* CAN port configuration */
static const StcPinConfig_t can_pin_cfg[] =
{
            /* CAN0_1 */
    {
        .portReg = T2G_CANFD1_RX_PORT, 
        .pinNum  = T2G_CANFD1_RX_PIN,
        {
            .outVal = 0,
            .driveMode = CY_GPIO_DM_HIGHZ,
            .hsiom = T2G_CANFD1_RX_MUX,
            .intEdge = 0,
            .intMask = 0,
            .vtrip = 0,
            .slewRate = 0,
            .driveSel = 0,
            .vregEn = 0,
            .ibufMode = 0,
            .vtripSel = 0,
            .vrefSel = 0,
            .vohSel = 0,
        }
    },
    {
        .portReg = T2G_CANFD1_TX_PORT,
        .pinNum  = T2G_CANFD1_TX_PIN,
        {
            .outVal = 1,
            .driveMode = CY_GPIO_DM_STRONG,
            .hsiom = T2G_CANFD1_TX_MUX,
            .intEdge = 0,
            .intMask = 0,
            .vtrip = 0,
            .slewRate = 0,
            .driveSel = 0,
            .vregEn = 0,
            .ibufMode = 0,
            .vtripSel = 0,
            .vrefSel = 0,
            .vohSel = 0,
        }
    },
            // CAN0_0
    {
        .portReg = T2G_CANFD2_RX_PORT, 
        .pinNum  = T2G_CANFD2_RX_PIN,
        {
            .outVal = 0,
            .driveMode = CY_GPIO_DM_HIGHZ,
            .hsiom = T2G_CANFD2_RX_MUX,
            .intEdge = 0,
            .intMask = 0,
            .vtrip = 0,
            .slewRate = 0,
            .driveSel = 0,
            .vregEn = 0,
            .ibufMode = 0,
            .vtripSel = 0,
            .vrefSel = 0,
            .vohSel = 0,
        }
    },
    {
        .portReg = T2G_CANFD2_TX_PORT,
        .pinNum  = T2G_CANFD2_TX_PIN,
        {
            .outVal = 1,
            .driveMode = CY_GPIO_DM_STRONG,
            .hsiom = T2G_CANFD2_TX_MUX,
            .intEdge = 0,
            .intMask = 0,
            .vtrip = 0,
            .slewRate = 0,
            .driveSel = 0,
            .vregEn = 0,
            .ibufMode = 0,
            .vtripSel = 0,
            .vrefSel = 0,
            .vohSel = 0,
        }
    },
        // CAN0_2
    {
        .portReg = T2G_CANFD3_RX_PORT, 
        .pinNum  = T2G_CANFD3_RX_PIN,
        {
            .outVal = 0,
            .driveMode = CY_GPIO_DM_HIGHZ,
            .hsiom = T2G_CANFD3_RX_MUX,
            .intEdge = 0,
            .intMask = 0,
            .vtrip = 0,
            .slewRate = 0,
            .driveSel = 0,
            .vregEn = 0,
            .ibufMode = 0,
            .vtripSel = 0,
            .vrefSel = 0,
            .vohSel = 0,
        }
    },
    {
        .portReg = T2G_CANFD3_TX_PORT,
        .pinNum  = T2G_CANFD3_TX_PIN,
        {
            .outVal = 1,
            .driveMode = CY_GPIO_DM_STRONG,
            .hsiom = T2G_CANFD3_TX_MUX,
            .intEdge = 0,
            .intMask = 0,
            .vtrip = 0,
            .slewRate = 0,
            .driveSel = 0,
            .vregEn = 0,
            .ibufMode = 0,
            .vtripSel = 0,
            .vrefSel = 0,
            .vohSel = 0,
        }
    },
};

#define CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX	10//(sizeof(CanDriverBufferList)/sizeof(P_CanBufferHal_t))//

#define CAN_CHANNEL_NUMBER_MAX		          3

#define ALL_CAN_RX_BUFFER_SIZE                  30

typedef struct
{
  int8_t txMsgEnable;
  int8_t AppMsgEnable;
  uint8_t BusErrorState;
  uint8_t busOffCount;
  uint8_t transmitFinishedFlag;
  uint8_t busErrorAppDiableFlag;
  uint8_t busNoAckErrorState;//0:no error,1:ack error
  uint8_t txFailState;
  uint8_t loadHighFlag;
  uint8_t noAckError;
  uint8_t stuffError;
  uint8_t nmNoackState;
  uint32_t noAckTimeCount;
  uint32_t txStartTimeCount;
  uint32_t txTimeOutCount;
  uint32_t loadMsgCount;
  uint32_t loadTimeCount;  
  //
  typeCanBusOffEventCallBack busOffEventFun;
  typeCanTxRxHalCallBackPtr canRxCallFun;
  typeCanTxRxHalCallBackPtr canTxCallFun;
  typeCanRxHalFilterCallBackPtr rxFilterFun;
  typeCanNoAckStuffErrorRecoverEvent errorRecoverFun;
}CanManage_t;

CanManage_t g_driverCanManage[CAN_CHANNEL_NUMBER_MAX];

typedef struct
{
    uint8_t CanUseFlag;
    uint8_t CanRxFlag;
    uint8_t enableSendLoopBack;
    CanHalMsg_t *pMsgBufferRx;	
    uint16_t msgRxBufferSize;
    uint8_t msgRxIndexIn;
    //uint16_t msgRxIndexOut;
    //uint16_t msgRxCount;
    QueueHandle_t RxQueueHandle;
    CanHalMsgFilter_t filter;
    //typeCanTxRxHalCallBackPtr pRxCallBackFun;
    typeCanTxHalCallBackPtr pTxCallBackFun;
    typeCanRxHalFilterCallBackPtr pFilerFun;
}CanBufferHal_t;

static CanBufferHal_t g_can0DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can1DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can2DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];

static CanBufferHal_t* g_CanDriverBufferList[]=
{
	g_can0DriverBuffer,
	g_can1DriverBuffer,
	g_can2DriverBuffer,
};

typedef struct
{
    uint8_t msgRxIndexIn;
    //uint8_t msgRxCount;
    QueueHandle_t rxQueueHandle;
    CanHalMsg_t msgRxBuffer[ALL_CAN_RX_BUFFER_SIZE];
}AllCanRxBuffer_t;

static AllCanRxBuffer_t g_allCanRxBuffer;

static uint8_t g_CanBusOffProcessFlag[CAN_CHANNEL_NUMBER_MAX];
uint8_t g_canTestModeFlag[CAN_CHANNEL_NUMBER_MAX] = {0};
static uint8_t g_canControllerTxBufferIndex[CAN_CHANNEL_NUMBER_MAX] = {0};
static uint8_t g_canControllerTxBufferIndex1[CAN_CHANNEL_NUMBER_MAX] = {0};

static uint16_t g_u16CanTxCnt[CAN_CHANNEL_NUMBER_MAX];

static void T2GCanPortConfig(void)
{
    for (uint8_t i = 0; i < (sizeof(can_pin_cfg) / sizeof(can_pin_cfg[0])); i++)
    {
        Cy_GPIO_Pin_Init(can_pin_cfg[i].portReg, can_pin_cfg[i].pinNum, &can_pin_cfg[i].cfg);
    }
}


static void CanStbInit(void)
{
    T2GCanPortConfig();
    CanFDStbPortPinCfg.hsiom = CAN0FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN0FD_STB_PORT,CAN0FD_STB_PIN,&CanFDStbPortPinCfg);

    CanFDStbPortPinCfg.hsiom = CAN1FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN1FD_STB_PORT,CAN1FD_STB_PIN,&CanFDStbPortPinCfg);

    CanFDStbPortPinCfg.hsiom = CAN2FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN2FD_STB_PORT,CAN2FD_STB_PIN,&CanFDStbPortPinCfg);
}

static int16_t CheckCanIdIsSelfSend(uint32_t canId)
{
  if(canId==0x316)
  {
    return 0;
  }
  if(canId==0x317)
  {
    return 0;
  }
  if(canId==0x36C)
  {
    return 0;
  }  
  if(canId==0x406)
  {
    return 0;
  }
  if(canId==0x425)
  {
    return 0;
  }
  if(canId==0x536)
  {
    return 0;
  }
  if(canId==0x537)
  {
    return 0;
  }  
  if(canId==0x53C)
  {
    return 0;
  }  
  if(canId==0x53D)
  {
    return 0;
  }  
  if(canId==0x53E)
  {
    return 0;
  }  
  if(canId==0x53F)
  {
    return 0;
  }
  if(canId==0x591)
  {
    return 0;
  }
  if(canId==0x686)
  {
    return 0;
  } 
  return 1;
}


const static uint8_t g_canfdDlcMap[16] = 
{
    2,//0
    2,//1
    2,//2
    2,//3
    2,//4
    2,//5
    2,//6
    2,//7
    2,//8
    3,//9-12
    4,//10-16
    5,//11-20
    6,//12-24
    8,//13-32
    12,//14-48
    16//15-64
};
void CanRxInterruptProcessMsg(uint8_t canChannel,cy_stc_canfd_msg_t* pstcCanFDmsg,uint8_t txState)
{
    uint16_t data;
    uint8_t canData[64];
    uint8_t dlc;
    UnnData_t	dataPart;
    //UnnData_t	lowPart;
    BaseType_t xHigherPriorityTaskWoken;
    uint32_t canId;
    uint8_t i;
    uint16_t wordNum,tem,j;
    
    canId = pstcCanFDmsg->idConfig.identifier;
    if(pstcCanFDmsg->idConfig.extended)
    {
      canId |= (((uint32_t)0x0000001)<<31);
    } 
    wordNum = g_canfdDlcMap[pstcCanFDmsg->dataConfig.dataLengthCode];
    if(pstcCanFDmsg->dataConfig.dataLengthCode>8)
    {
        dlc = wordNum*4;
    }
    else
    {
        dlc = pstcCanFDmsg->dataConfig.dataLengthCode;
    }
    for(j=0;j<wordNum;j++)
    {
        tem = j*4;
        dataPart.u32Data = pstcCanFDmsg->dataConfig.data[j];
        canData[tem+0] = dataPart.u8Data[0];
        canData[tem+1] = dataPart.u8Data[1];
        canData[tem+2] = dataPart.u8Data[2];
        canData[tem+3] = dataPart.u8Data[3];     
    }

    //highPart.u32Data	=  pstcCanFDmsg->dataConfig.data[0];
    //lowPart.u32Data		=  pstcCanFDmsg->dataConfig.data[1];    
    xHigherPriorityTaskWoken = pdFALSE;  
    
    if(txState==0)
    {
        g_driverCanManage[canChannel].loadMsgCount++;
        if(g_driverCanManage[canChannel].rxFilterFun!=NULL)
        {
          if(g_driverCanManage[canChannel].rxFilterFun(canId,canData,dlc)!=0)
          {
            return;
          }
        }
      //
        if(g_driverCanManage[canChannel].canRxCallFun!=NULL)
        {

          //T2G???ִ�е���GateWayCan1Rx�����ػص�����,�л�����
          //
          g_driverCanManage[canChannel].canRxCallFun(canId,canData,dlc);
        }      
    }
    else
    {
      //tx call back
      if(g_driverCanManage[canChannel].canTxCallFun!=NULL)
      {
        g_driverCanManage[canChannel].canTxCallFun(canId,canData,dlc);
      } 
      for(i=0;i<CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX;i++)
      {
        if(g_CanDriverBufferList[canChannel][i].pTxCallBackFun!=NULL)
        {
          g_CanDriverBufferList[canChannel][i].pTxCallBackFun();
        }        
      }
      
    }    
    if(g_allCanRxBuffer.rxQueueHandle!=NULL)//rx buffer is  ready
    {
        if(txState)
        {
          if(CheckCanIdIsSelfSend(canId)!=0)
          {
            return;
          }
        }
        g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].canId = canId;
        g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].dlc = dlc;
        memcpy(g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].canData,canData,dlc);
        g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].txFlag = txState;
        data = (canChannel<<8)+g_allCanRxBuffer.msgRxIndexIn;      
        g_allCanRxBuffer.msgRxIndexIn++;
        if(g_allCanRxBuffer.msgRxIndexIn>=ALL_CAN_RX_BUFFER_SIZE)
        {
            g_allCanRxBuffer.msgRxIndexIn = 0;
        }   
        xQueueSendFromISR(g_allCanRxBuffer.rxQueueHandle, &data, &xHigherPriorityTaskWoken );
    }
}

void Can0TxCallBack(uint8_t messageMarker)
{
    cy_stc_canfd_msg_t stcCanFDmsg;
    if(CanFD_GetMsgFromTransmitMsgBuffer(T2G_CANFD1_TYPE,messageMarker,&stcCanFDmsg)==CY_CANFD_SUCCESS)
    {      
      CanRxInterruptProcessMsg(0,&stcCanFDmsg,1);
    }  
    //testCount++;
    g_u16CanTxCnt[0] += 1;
    //clear flag
    /*T2G_CANF0_TYPE->unIR.stcField.u1TC = 0x01;
    
    T2G_CANF0_TYPE->unIE.stcField.u1TCE = 0;*/
    
    g_driverCanManage[0].busErrorAppDiableFlag = 0x00;
    g_driverCanManage[0].busOffCount = 0x00;
	AutosarNmSdkCleanBusOff(0);
    //g_driverCanManage[0].busNoAckErrorState = 0x00;
    g_driverCanManage[0].noAckTimeCount = 0x00;
    
    
    if(g_driverCanManage[0].busNoAckErrorState==0x01)
    {
        g_driverCanManage[0].busNoAckErrorState = 0x00;
    }

    if(g_driverCanManage[0].txFailState)
    {
        if(g_driverCanManage[0].txTimeOutCount<10)
        {
          g_driverCanManage[0].txFailState = 0x00;
        }
    }
    g_driverCanManage[0].txTimeOutCount = 0xFFFFFFFF;
    g_driverCanManage[0].nmNoackState = 0x00;
    
    //CANFD0_Type->unIE.stcField.u1PEAE  = 0x00;
}

static void Can0ErrorCallBack(uint8_t enCanFDError)
{
  volatile stc_CANFD_CH_M_TTCAN_t*   pstcCanFD;
  pstcCanFD = &T2G_CANFD1_TYPE->M_TTCAN;
  
  if(enCanFDError==0x03)
  {
    //g_driverCanManage[0].busNoAckErrorState = 0x01;
    //g_driverCanManage[0].noAckTimeCount = 0x00;
    //g_driverCanManage[0].busErrorAppDiableFlag = 0x00;
    g_driverCanManage[0].noAckError = 0x01;
    //pstcCanFD->unIE.stcField.u1PEAE = 0x00;
  }
  else if(enCanFDError==0x01)
  {
    g_driverCanManage[0].stuffError = 0x01;
  }
  else
  { 
    
  }
  
  pstcCanFD->unIE.stcField.u1PEAE  = 0x00;
}

void Can1TxCallBack(uint8_t messageMarker)
{
    cy_stc_canfd_msg_t stcCanFDmsg;
    if(CanFD_GetMsgFromTransmitMsgBuffer(T2G_CANFD2_TYPE,messageMarker,&stcCanFDmsg)==CY_CANFD_SUCCESS)
    {
      CanRxInterruptProcessMsg(1,&stcCanFDmsg,1);
    } 
    g_u16CanTxCnt[1] += 1;
    //clear flag
    /*CANFD1_Type->unIR.stcField.u1TC = 0x01;
    
    CANFD1_Type->unIE.stcField.u1TCE = 0;*/
    g_driverCanManage[1].busErrorAppDiableFlag = 0x00;
    g_driverCanManage[1].busOffCount = 0x00;
	AutosarNmSdkCleanBusOff(1);
    //g_driverCanManage[1].busNoAckErrorState = 0x00;
    g_driverCanManage[1].noAckTimeCount = 0x00;
    
    if(g_driverCanManage[1].busNoAckErrorState==0x01)
    {
        g_driverCanManage[1].busNoAckErrorState = 0x00;
    }

    if(g_driverCanManage[1].txFailState)
    {
        if(g_driverCanManage[1].txTimeOutCount<10)
        {
          g_driverCanManage[1].txFailState = 0x00;
        }
    }
    g_driverCanManage[1].txTimeOutCount = 0xFFFFFFFF;
    g_driverCanManage[1].nmNoackState = 0x00;
    
    //CANFD1_Type->unIE.stcField.u1PEAE  = 0x00;
}

static void Can1ErrorCallBack(uint8_t enCanFDError)
{
  volatile stc_CANFD_CH_M_TTCAN_t*   pstcCanFD;
  pstcCanFD = &T2G_CANFD2_TYPE->M_TTCAN;
  
  if(enCanFDError==0x03)
  {
    //g_driverCanManage[1].busNoAckErrorState = 0x01;
    //g_driverCanManage[1].noAckTimeCount = 0x00;
    //g_driverCanManage[1].busErrorAppDiableFlag = 0x00;
    //pstcCanFD->unIE.stcField.u1PEAE = 0x00;
    g_driverCanManage[1].noAckError = 0x01;
  }
  else if(enCanFDError==0x01)
  {
    g_driverCanManage[1].stuffError = 0x01;
  }
  else
  { 
    
  }
  
  pstcCanFD->unIE.stcField.u1PEAE  = 0x00;
}

void Can2TxCallBack(uint8_t messageMarker)
{
    cy_stc_canfd_msg_t stcCanFDmsg;
    if(CanFD_GetMsgFromTransmitMsgBuffer(T2G_CANFD3_TYPE,messageMarker,&stcCanFDmsg)==CY_CANFD_SUCCESS)
    {
      CanRxInterruptProcessMsg(2,&stcCanFDmsg,1);
    } 
    g_u16CanTxCnt[2] += 1;
    //clear flag
    /*CANFD2_Type->unIR.stcField.u1TC = 0x01;
    
    CANFD2_Type->unIE.stcField.u1TCE = 0;*/
    g_driverCanManage[2].busErrorAppDiableFlag = 0x00;
    g_driverCanManage[2].busOffCount = 0x00;
	AutosarNmSdkCleanBusOff(2);
    //g_driverCanManage[2].busNoAckErrorState = 0x00;
    g_driverCanManage[2].noAckTimeCount = 0x00;
    
    if(g_driverCanManage[2].busNoAckErrorState==0x01)
    {
        g_driverCanManage[2].busNoAckErrorState = 0x00;
    }

    if(g_driverCanManage[2].txFailState)
    {
        if(g_driverCanManage[2].txTimeOutCount<10)
        {
          g_driverCanManage[2].txFailState = 0x00;
        }
    }
    g_driverCanManage[2].txTimeOutCount = 0xFFFFFFFF;
    g_driverCanManage[2].nmNoackState = 0x00;
    //CANFD2_Type->unIE.stcField.u1PEAE  = 0x00;
}

static void Can2ErrorCallBack(uint8_t enCanFDError)
{
  volatile stc_CANFD_CH_M_TTCAN_t*   pstcCanFD;
  pstcCanFD = &T2G_CANFD3_TYPE->M_TTCAN;
  
  if(enCanFDError==0x03)
  {
    //g_driverCanManage[2].busNoAckErrorState = 0x01;
    //g_driverCanManage[2].noAckTimeCount = 0x00;
    //g_driverCanManage[2].busErrorAppDiableFlag = 0x00;
    //pstcCanFD->unIE.stcField.u1PEAE = 0x00;
    g_driverCanManage[2].noAckError = 0x01;
  }
  else if(enCanFDError==0x01)
  {
    g_driverCanManage[2].stuffError = 0x01;
  }
  else
  { 
    
  }
  
  pstcCanFD->unIE.stcField.u1PEAE  = 0x00;  
}

void Can3TxCallBack(uint8_t messageMarker)
{
    cy_stc_canfd_msg_t stcCanFDmsg;
    
    if(CanFD_GetMsgFromTransmitMsgBuffer(T2G_CANFD4_TYPE,messageMarker,&stcCanFDmsg)==CY_CANFD_SUCCESS)
    {
      CanRxInterruptProcessMsg(3,&stcCanFDmsg,1);
    } 
    
    g_u16CanTxCnt[3] += 1;
    //clear flag
    /*CANFD3_Type->unIR.stcField.u1TC = 0x01;
    
    CANFD3_Type->unIE.stcField.u1TCE = 0;*/
    g_driverCanManage[3].busOffCount = 0x00;
    g_driverCanManage[3].busErrorAppDiableFlag = 0x00;
    //
    //g_driverCanManage[3].busNoAckErrorState = 0x00;
    g_driverCanManage[3].noAckTimeCount = 0x00;
    
    if(g_driverCanManage[3].busNoAckErrorState==0x01)
    {
        g_driverCanManage[3].busNoAckErrorState = 0x00;
    }

    if(g_driverCanManage[3].txFailState)
    {
        if(g_driverCanManage[3].txTimeOutCount<10)
        {
          g_driverCanManage[3].txFailState = 0x00;
        }
    }
    g_driverCanManage[3].txTimeOutCount = 0xFFFFFFFF;
    g_driverCanManage[3].nmNoackState = 0x00;
    //CANFD3_Type->unIE.stcField.u1PEAE  = 0x00;
    //g_driverCanManage[3].sleepFlag = 0;
}

static void Can3ErrorCallBack(uint8_t enCanFDError)
{
  volatile stc_CANFD_CH_M_TTCAN_t*   pstcCanFD;
  pstcCanFD = &T2G_CANFD4_TYPE->M_TTCAN;
  
  if(enCanFDError==0x03)
  {
    //g_driverCanManage[3].busNoAckErrorState = 0x01;
    //g_driverCanManage[3].noAckTimeCount = 0x00;
    //g_driverCanManage[3].busErrorAppDiableFlag = 0x00;
    //pstcCanFD->unIE.stcField.u1PEAE = 0x00;
    g_driverCanManage[3].noAckError = 0x01;
  }
  else if(enCanFDError==0x01)
  {
    g_driverCanManage[3].stuffError = 0x01;
  }
  else
  { 
      
  }
  
  pstcCanFD->unIE.stcField.u1PEAE  = 0x00;
}

void Can4TxCallBack(uint8_t messageMarker)
{
    cy_stc_canfd_msg_t stcCanFDmsg;
    if(CanFD_GetMsgFromTransmitMsgBuffer(T2G_CANFD5_TYPE,messageMarker,&stcCanFDmsg)==CY_CANFD_SUCCESS)
    {
      CanRxInterruptProcessMsg(4,&stcCanFDmsg,1);
    } 
    g_u16CanTxCnt[4] += 1;
    //clear flag
    /*CANFD4_Type->unIR.stcField.u1TC = 0x01;
    
    CANFD4_Type->unIE.stcField.u1TCE = 0;*/
    g_driverCanManage[4].busErrorAppDiableFlag = 0x00;
    g_driverCanManage[4].busOffCount = 0x00;
    //
    //g_driverCanManage[4].busNoAckErrorState = 0x00;
    g_driverCanManage[4].noAckTimeCount = 0x00;
    
    if(g_driverCanManage[4].busNoAckErrorState==0x01)
    {
        g_driverCanManage[4].busNoAckErrorState = 0x00;
    }

    if(g_driverCanManage[4].txFailState)
    {
        if(g_driverCanManage[4].txTimeOutCount<10)
        {
          g_driverCanManage[4].txFailState = 0x00;
        }
    }
    g_driverCanManage[4].txTimeOutCount = 0xFFFFFFFF;
    g_driverCanManage[4].nmNoackState = 0x00;
    //CANFD4_Type->unIE.stcField.u1PEAE  = 0x00;
}

static void Can4ErrorCallBack(uint8_t enCanFDError)
{
  volatile stc_CANFD_CH_M_TTCAN_t*   pstcCanFD;
  pstcCanFD = &T2G_CANFD5_TYPE->M_TTCAN;
  
  if(enCanFDError==0x03)
  {
    //g_driverCanManage[4].busNoAckErrorState = 0x01;
    //g_driverCanManage[4].noAckTimeCount = 0x00;
    //g_driverCanManage[4].busErrorAppDiableFlag = 0x00;
    //pstcCanFD->unIE.stcField.u1PEAE = 0x00;
    g_driverCanManage[4].noAckError = 0x01;
  }
  else if(enCanFDError==0x01)
  {
    g_driverCanManage[4].stuffError = 0x01;
  }
  else
  { 
    
  }
  
  pstcCanFD->unIE.stcField.u1PEAE  = 0x00;  
}

void Can5TxCallBack(uint8_t messageMarker)
{
    cy_stc_canfd_msg_t stcCanFDmsg;
    if(CanFD_GetMsgFromTransmitMsgBuffer(T2G_CANFD6_TYPE,messageMarker,&stcCanFDmsg)==CY_CANFD_SUCCESS)
    {
      CanRxInterruptProcessMsg(5,&stcCanFDmsg,1);
    } 
    g_u16CanTxCnt[5] += 1;
    //clear flag
    /*CANFD8_Type->unIR.stcField.u1TC = 0x01;
    
    CANFD8_Type->unIE.stcField.u1TCE = 0;*/
    g_driverCanManage[5].busErrorAppDiableFlag = 0x00;
    g_driverCanManage[5].busOffCount = 0x00;
    //
    //g_driverCanManage[5].busNoAckErrorState = 0x00;
    g_driverCanManage[5].noAckTimeCount = 0x00;
    
    if(g_driverCanManage[5].busNoAckErrorState==0x01)
    {
        g_driverCanManage[5].busNoAckErrorState = 0x00;
    }

    if(g_driverCanManage[5].txFailState)
    {
        if(g_driverCanManage[5].txTimeOutCount<10)
        {
          g_driverCanManage[5].txFailState = 0x00;
        }
    }
    g_driverCanManage[5].txTimeOutCount = 0xFFFFFFFF;
    g_driverCanManage[5].nmNoackState = 0x00;
    //CANFD8_Type->unIE.stcField.u1PEAE  = 0x00;
}


/*static void Can5StatusChgCallBack(uint8_t u8CANChannel, en_canfd_status_t enCanFDStatus)
{
  
}*/

static void Can5ErrorCallBack(uint8_t enCanFDError)
{
  volatile stc_CANFD_CH_M_TTCAN_t*   pstcCanFD;
  pstcCanFD = &T2G_CANFD6_TYPE->M_TTCAN;
  
  if(enCanFDError==0x03)
  {
    //g_driverCanManage[5].busNoAckErrorState = 0x01;
    //g_driverCanManage[5].noAckTimeCount = 0x00;
    //g_driverCanManage[5].busErrorAppDiableFlag = 0x00;
    //pstcCanFD->unIE.stcField.u1PEAE = 0x00;
    g_driverCanManage[5].noAckError = 0x01;
  }
  else if(enCanFDError==0x01)
  {
    g_driverCanManage[5].stuffError = 0x01;
  }
  else
  { 
    
  }
  
  pstcCanFD->unIE.stcField.u1PEAE  = 0x00;  
}

/* Standard ID Filter configration 
ע��:CANFD_CONFIG_STD_ID_FILTER_CLASSIC_RXBUFF��ָ��ƥ���CANID,����ID����ָ����RXBUFF�����,�����ַ�ʽ��RAM������Ӧ���޷�֧��ϵͳ��
ʹ��CANFD_CONFIG_STD_ID_FILTER_RANGE,����ID�ķ�Χ,����������5G���ش��������
CANFD_CONFIG_STD_ID_FILTER_CLASSIC_RXBUFF(x, y),���ַ�����ע��ָ����CAN ID,����1��ID��,����2��ע��ı��
CANFD_CONFIG_STD_ID_FILTER_RANGE(x, y, z), ָ��CAN��ID��Χ,����1����СID������2�����ID,����3��ע��ı��
*/
static const cy_stc_id_filter_t stdIdFilter[] = 
{
    //CANFD_CONFIG_STD_ID_FILTER_CLASSIC_RXBUFF(0x010u, 0u),      /* ID=0x010, store into RX buffer Idx0 */
    //CANFD_CONFIG_STD_ID_FILTER_CLASSIC_RXBUFF(0x020u, 1u),      /* ID=0x020, store into RX buffer Idx1 */
    CANFD_CONFIG_STD_ID_FILTER_RANGE(0x0000u, 0x07FFu, 1u),      /* ID=0x010, store into RX buffer Idx0 */
};

/* Extended ID Filter configration */
static const cy_stc_extid_filter_t extIdFilter[] = 
{
    CANFD_CONFIG_EXT_ID_FILTER_CLASSIC_RXBUFF(0x10010u, 2u),    /* ID=0x10010, store into RX buffer Idx2 */
    CANFD_CONFIG_EXT_ID_FILTER_CLASSIC_RXBUFF(0x10020u, 3u),    /* ID=0x10020, store into RX buffer Idx3 */
};

static void CAN1_RxMsgCallback(bool bRxFifoMsg, uint8_t u8MsgBufOrRxFifoNum, cy_stc_canfd_msg_t* pstcCanFDmsg)
{
    if(g_canTestModeFlag[0])//����ģʽ,�յ�CAN���ĺ�CanFD_UpdateAndTransmitMsgBuffer()���·��ͻ���
    {
        cy_stc_canfd_msg_t canMsg;
        memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
        canMsg.dataConfig.data[1] += 1;
        Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD1_TYPE,0,&canMsg);
        return;
    }    
    CanRxInterruptProcessMsg(0,pstcCanFDmsg,0);//��һ��������ͨ����,������������ʶ�Ƿ��ͻ��ǽ���,������CAN���з��;����Ϣ,��Ҫִ�����ش���
}

static void CAN2_RxMsgCallback(bool bRxFifoMsg, uint8_t u8MsgBufOrRxFifoNum, cy_stc_canfd_msg_t* pstcCanFDmsg)
{
    if(g_canTestModeFlag[1])//����ģʽ,�յ�CAN���ĺ�CanFD_UpdateAndTransmitMsgBuffer()���·��ͻ���
    {
        cy_stc_canfd_msg_t canMsg;
        memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
        canMsg.dataConfig.data[1] += 1;
        Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD2_TYPE,0,&canMsg);
        return;
    }

    CanRxInterruptProcessMsg(1,pstcCanFDmsg,0);//��һ��������ͨ����,������������ʶ�Ƿ��ͻ��ǽ���,������CAN���з��;����Ϣ,��Ҫִ�����ش���
}

static void CAN3_RxMsgCallback(bool bRxFifoMsg, uint8_t u8MsgBufOrRxFifoNum, cy_stc_canfd_msg_t* pstcCanFDmsg)
{
    if(g_canTestModeFlag[2])//����ģʽ,�յ�CAN���ĺ�CanFD_UpdateAndTransmitMsgBuffer()���·��ͻ���
    {
        cy_stc_canfd_msg_t canMsg;
        memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
        canMsg.dataConfig.data[1] += 1;
        Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD3_TYPE,0,&canMsg);
        return;
    }
    CanRxInterruptProcessMsg(2,pstcCanFDmsg,0);//��һ��������ͨ����,������������ʶ�Ƿ��ͻ��ǽ���,������CAN���з��;����Ϣ,��Ҫִ�����ش���
}

static void CAN4_RxMsgCallback(bool bRxFifoMsg, uint8_t u8MsgBufOrRxFifoNum, cy_stc_canfd_msg_t* pstcCanFDmsg)
{
    if(g_canTestModeFlag[3])//����ģʽ,�յ�CAN���ĺ�CanFD_UpdateAndTransmitMsgBuffer()���·��ͻ���
    {
        cy_stc_canfd_msg_t canMsg;
        memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
        canMsg.dataConfig.data[1] += 1;
        Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD4_TYPE,0,&canMsg);
        return;
    }

    CanRxInterruptProcessMsg(3,pstcCanFDmsg,0);//��һ��������ͨ����,������������ʶ�Ƿ��ͻ��ǽ���,������CAN���з��;����Ϣ,��Ҫִ�����ش���
}

static void CAN5_RxMsgCallback(bool bRxFifoMsg, uint8_t u8MsgBufOrRxFifoNum, cy_stc_canfd_msg_t* pstcCanFDmsg)
{
    if(g_canTestModeFlag[4])//����ģʽ,�յ�CAN���ĺ�CanFD_UpdateAndTransmitMsgBuffer()���·��ͻ���
    {
        cy_stc_canfd_msg_t canMsg;
        memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
        canMsg.dataConfig.data[1] += 1;
        Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD5_TYPE,0,&canMsg);
        return;
    } 
    CanRxInterruptProcessMsg(4,pstcCanFDmsg,0);//��һ��������ͨ����,������������ʶ�Ƿ��ͻ��ǽ���,������CAN���з��;����Ϣ,��Ҫִ�����ش���
}

static void CAN6_RxMsgCallback(bool bRxFifoMsg, uint8_t u8MsgBufOrRxFifoNum, cy_stc_canfd_msg_t* pstcCanFDmsg)
{
    if(g_canTestModeFlag[5])//����ģʽ,�յ�CAN���ĺ�CanFD_UpdateAndTransmitMsgBuffer()���·��ͻ���
    {
        cy_stc_canfd_msg_t canMsg;
        memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
        canMsg.dataConfig.data[1] += 1;
        Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD6_TYPE,0,&canMsg);
        return;
    }

    CanRxInterruptProcessMsg(5,pstcCanFDmsg,0);//��һ��������ͨ����,������������ʶ�Ƿ��ͻ��ǽ���,������CAN���з��;����Ϣ,��Ҫִ�����ش���
}

static void CAN_StatusCallback(cy_en_canfd_bus_error_status_t enCanFDStatus)
{
    ;
}

const static cy_stc_canfd_bitrate_t g_canBandrate125K = 
{
    .prescaler      = 16u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
    .timeSegment1   = 15u - 1u, // tseg1 = 15tq
    .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
    .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
};

const static cy_stc_canfd_bitrate_t g_canBandrate250K = 
{
    .prescaler      = 8u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
    .timeSegment1   = 15u - 1u, // tseg1 = 15tq
    .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
    .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
};

const static cy_stc_canfd_bitrate_t g_canBandrate500K = 
{
    .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
    .timeSegment1   = 15u - 1u, // tseg1 = 15tq
    .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
    .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
};

const static cy_stc_canfd_bitrate_t g_canBandrate1000K = 
{
    .prescaler      = 2u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
    .timeSegment1   = 15u - 1u, // tseg1 = 15tq
    .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
    .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
};

const static cy_stc_canfd_bitrate_t g_canBandrate2000K = 
{
    .prescaler      = 1u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
    .timeSegment1   = 15u - 1u, // tseg1 = 15tq
    .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
    .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
};

const static cy_stc_canfd_bitrate_t g_canBandrate4000K = 
{
    .prescaler      = 1u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
    .timeSegment1   = 15u - 1u, // tseg1 = 15tq
    .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
    .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
};

static const cy_stc_canfd_config_t can1Cfg = 
{
    .txCallback     = Can0TxCallBack, // 
    .rxCallback     = CAN1_RxMsgCallback,//CAN_RxMsgCallback,
    .rxFifoWithTopCallback = NULL, //CAN_RxFifoWithTopCallback,
    .statusCallback = CAN_StatusCallback, // Un-supported now
    .errorCallback  = Can0ErrorCallBack, // Un-supported now
    .canFDMode      = false, // ��׼CANģʽ

    //����CAN������Ƶ��,Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); 80M/2=40M; 
    .bitrate        =       // Nominal bit rate settings (sampling point = 80%)
    { 
        .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },
    .fastBitrate = 
    {
        .prescaler      = 1u - 1u,  // cclk/10, When using 2000kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },    
    .tdcConfig      =       // Transceiver delay compensation, unused.
    {
        .tdcEnabled     = true,//if bandrate >1000K,tdcEnabled is enabled.
        .tdcOffset      = 16,//(can clocks of timeSegment1)+1
        .tdcFilterWindow= 0,
    },
    .sidFilterConfig    =   // Standard ID filter
    {
        .numberOfSIDFilters = sizeof(stdIdFilter) / sizeof(stdIdFilter[0]),
        .sidFilter          = stdIdFilter,
    },
    .extidFilterConfig  =   // Extended ID filter
    {
        .numberOfEXTIDFilters   = sizeof(extIdFilter) / sizeof(extIdFilter[0]),
        .extidFilter            = extIdFilter,
        .extIDANDMask           = 0x1fffffff,   // No pre filtering.
    },
    .globalFilterConfig =   // Global filter
    {
        .nonMatchingFramesStandard = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .nonMatchingFramesExtended = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .rejectRemoteFramesStandard = true, // No remote frame
        .rejectRemoteFramesExtended = true, // No remote frame
    },
    .rxBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo1DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .txBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0Config    = // RX FIFO0, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements =16u,
        .topPointerLogicEnabled = false,
    },
    .rxFifo1Config    = // RX FIFO1, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 10u,
        .numberOfFifoElements = 8u,
        .topPointerLogicEnabled = false, // true,
    },
    .noOfRxBuffers  = 32u,
    .noOfTxBuffers  = 0u,
};

static const cy_stc_canfd_config_t can2Cfg = 
{
    .txCallback     = Can1TxCallBack, // 
    .rxCallback     = CAN2_RxMsgCallback,//CAN_RxMsgCallback,
    .rxFifoWithTopCallback = NULL, //CAN_RxFifoWithTopCallback,
    .statusCallback = CAN_StatusCallback, // Un-supported now
    .errorCallback  = Can1ErrorCallBack, // Un-supported now
    .canFDMode      = false, // ��׼CANģʽ

    // 40 MHz
    .bitrate        =       // Nominal bit rate settings (sampling point = 80%)
    { 
        .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },
    
    .tdcConfig      =       // Transceiver delay compensation, unused.
    {
        .tdcEnabled     = false,
        .tdcOffset      = 0,
        .tdcFilterWindow= 0,
    },
    .sidFilterConfig    =   // Standard ID filter
    {
        .numberOfSIDFilters = sizeof(stdIdFilter) / sizeof(stdIdFilter[0]),
        .sidFilter          = stdIdFilter,
    },
    .extidFilterConfig  =   // Extended ID filter
    {
        .numberOfEXTIDFilters   = sizeof(extIdFilter) / sizeof(extIdFilter[0]),
        .extidFilter            = extIdFilter,
        .extIDANDMask           = 0x1fffffff,   // No pre filtering.
    },
    .globalFilterConfig =   // Global filter
    {
        .nonMatchingFramesStandard = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .nonMatchingFramesExtended = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .rejectRemoteFramesStandard = true, // No remote frame
        .rejectRemoteFramesExtended = true, // No remote frame
    },
    .rxBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo1DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .txBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0Config    = // RX FIFO0, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements =16u,
        .topPointerLogicEnabled = false,
    },
    .rxFifo1Config    = // RX FIFO1, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements = 16u,
        .topPointerLogicEnabled = false, // true,
    },
    .noOfRxBuffers  = 32u,
    .noOfTxBuffers  = 0u,
};

static const cy_stc_canfd_config_t can3Cfg = 
{
    .txCallback     = Can2TxCallBack, // 
    .rxCallback     = CAN3_RxMsgCallback,//CAN_RxMsgCallback,
    .rxFifoWithTopCallback = NULL, //CAN_RxFifoWithTopCallback,
    .statusCallback = CAN_StatusCallback, // Un-supported now
    .errorCallback  = Can2ErrorCallBack, // Un-supported now
    .canFDMode      = true, // ��׼CANģʽ

    // 40 MHz
    .bitrate        =       // Nominal bit rate settings (sampling point = 80%)
    { 
        .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },
    
    .tdcConfig      =       // Transceiver delay compensation, unused.
    {
        .tdcEnabled     = false,
        .tdcOffset      = 0,
        .tdcFilterWindow= 0,
    },
    .sidFilterConfig    =   // Standard ID filter
    {
        .numberOfSIDFilters = sizeof(stdIdFilter) / sizeof(stdIdFilter[0]),
        .sidFilter          = stdIdFilter,
    },
    .extidFilterConfig  =   // Extended ID filter
    {
        .numberOfEXTIDFilters   = sizeof(extIdFilter) / sizeof(extIdFilter[0]),
        .extidFilter            = extIdFilter,
        .extIDANDMask           = 0x1fffffff,   // No pre filtering.
    },
    .globalFilterConfig =   // Global filter
    {
        .nonMatchingFramesStandard = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .nonMatchingFramesExtended = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .rejectRemoteFramesStandard = true, // No remote frame
        .rejectRemoteFramesExtended = true, // No remote frame
    },
    .rxBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo1DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .txBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0Config    = // RX FIFO0, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements =16u,
        .topPointerLogicEnabled = false,
    },
    .rxFifo1Config    = // RX FIFO1, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 20u,
        .numberOfFifoElements = 16u,
        .topPointerLogicEnabled = false, // true,
    },
    .noOfRxBuffers  = 32u,
    .noOfTxBuffers  = 0u,
};

static const cy_stc_canfd_config_t can4Cfg = 
{
    .txCallback     = Can3TxCallBack, // 
    .rxCallback     = CAN4_RxMsgCallback,//CAN_RxMsgCallback,
    //.rxCallback     = CAN_RxMsgCallback,//CAN_RxMsgCallback,
    .rxFifoWithTopCallback = NULL, //CAN_RxFifoWithTopCallback,
    .statusCallback = CAN_StatusCallback, // Un-supported now
    .errorCallback  = Can3ErrorCallBack, // Un-supported now
    .canFDMode      = false, // ��׼CANģʽ

    // 40 MHz
    .bitrate        =       // Nominal bit rate settings (sampling point = 80%)
    { 
        .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },
    
    .tdcConfig      =       // Transceiver delay compensation, unused.
    {
        .tdcEnabled     = false,
        .tdcOffset      = 0,
        .tdcFilterWindow= 0,
    },
    .sidFilterConfig    =   // Standard ID filter
    {
        .numberOfSIDFilters = sizeof(stdIdFilter) / sizeof(stdIdFilter[0]),
        .sidFilter          = stdIdFilter,
    },
    .extidFilterConfig  =   // Extended ID filter
    {
        .numberOfEXTIDFilters   = sizeof(extIdFilter) / sizeof(extIdFilter[0]),
        .extidFilter            = extIdFilter,
        .extIDANDMask           = 0x1fffffff,   // No pre filtering.
    },
    .globalFilterConfig =   // Global filter
    {
        .nonMatchingFramesStandard = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .nonMatchingFramesExtended = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .rejectRemoteFramesStandard = true, // No remote frame
        .rejectRemoteFramesExtended = true, // No remote frame
    },
    .rxBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo1DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .txBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0Config    = // RX FIFO0, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements =16u,
        .topPointerLogicEnabled = false,
    },
    .rxFifo1Config    = // RX FIFO1, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 10u,
        .numberOfFifoElements = 8u,
        .topPointerLogicEnabled = false, // true,
    },
    .noOfRxBuffers  = 32u,
    .noOfTxBuffers  = 0u,
};

static const cy_stc_canfd_config_t can5Cfg = 
{
    .txCallback     = Can4TxCallBack, // 
    .rxCallback     = CAN5_RxMsgCallback,//CAN_RxMsgCallback,
    .rxFifoWithTopCallback = NULL, //CAN_RxFifoWithTopCallback,
    .statusCallback = CAN_StatusCallback, // Un-supported now
    .errorCallback  = Can4ErrorCallBack, // Un-supported now
    .canFDMode      = false, // ��׼CANģʽ

    // 40 MHz
    .bitrate        =       // Nominal bit rate settings (sampling point = 80%)
    { 
        .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },
    
    .tdcConfig      =       // Transceiver delay compensation, unused.
    {
        .tdcEnabled     = false,
        .tdcOffset      = 0,
        .tdcFilterWindow= 0,
    },
    .sidFilterConfig    =   // Standard ID filter
    {
        .numberOfSIDFilters = sizeof(stdIdFilter) / sizeof(stdIdFilter[0]),
        .sidFilter          = stdIdFilter,
    },
    .extidFilterConfig  =   // Extended ID filter
    {
        .numberOfEXTIDFilters   = sizeof(extIdFilter) / sizeof(extIdFilter[0]),
        .extidFilter            = extIdFilter,
        .extIDANDMask           = 0x1fffffff,   // No pre filtering.
    },
    .globalFilterConfig =   // Global filter
    {
        .nonMatchingFramesStandard = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .nonMatchingFramesExtended = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .rejectRemoteFramesStandard = true, // No remote frame
        .rejectRemoteFramesExtended = true, // No remote frame
    },
    .rxBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo1DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .txBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0Config    = // RX FIFO0, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements =16u,
        .topPointerLogicEnabled = false,
    },
    .rxFifo1Config    = // RX FIFO1, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 20u,
        .numberOfFifoElements = 16u,
        .topPointerLogicEnabled = false, // true,
    },
    .noOfRxBuffers  = 32u,
    .noOfTxBuffers  = 0u,
};

static const cy_stc_canfd_config_t can6Cfg = 
{
    .txCallback     = Can5TxCallBack, // 
    .rxCallback     = CAN6_RxMsgCallback,//CAN_RxMsgCallback,
    .rxFifoWithTopCallback = NULL, //CAN_RxFifoWithTopCallback,
    .statusCallback = CAN_StatusCallback, // Un-supported now
    .errorCallback  = Can5ErrorCallBack, // Un-supported now
    .canFDMode      = false, // ��׼CANģʽ

    // 40 MHz
    .bitrate        =       // Nominal bit rate settings (sampling point = 80%)
    { 
        .prescaler      = 4u - 1u,  // cclk/10, When using 500kbps, 1bit = 20tq
        .timeSegment1   = 15u - 1u, // tseg1 = 15tq
        .timeSegment2   = 4u - 1u,  // tseg2 = 4tq
        .syncJumpWidth  = 2u - 1u,  // sjw   = 2tq
    },
    
    .tdcConfig      =       // Transceiver delay compensation, unused.
    {
        .tdcEnabled     = false,
        .tdcOffset      = 0,
        .tdcFilterWindow= 0,
    },
    .sidFilterConfig    =   // Standard ID filter
    {
        .numberOfSIDFilters = sizeof(stdIdFilter) / sizeof(stdIdFilter[0]),
        .sidFilter          = stdIdFilter,
    },
    .extidFilterConfig  =   // Extended ID filter
    {
        .numberOfEXTIDFilters   = sizeof(extIdFilter) / sizeof(extIdFilter[0]),
        .extidFilter            = extIdFilter,
        .extIDANDMask           = 0x1fffffff,   // No pre filtering.
    },
    .globalFilterConfig =   // Global filter
    {
        .nonMatchingFramesStandard = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .nonMatchingFramesExtended = CY_CANFD_REJECT_NON_MATCHING,  // Reject none match IDs
        .rejectRemoteFramesStandard = true, // No remote frame
        .rejectRemoteFramesExtended = true, // No remote frame
    },
    .rxBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo1DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0DataSize  = CY_CANFD_BUFFER_DATA_SIZE_64,
    .txBufferDataSize = CY_CANFD_BUFFER_DATA_SIZE_64,
    .rxFifo0Config    = // RX FIFO0, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 0u,
        .numberOfFifoElements =16u,
        .topPointerLogicEnabled = false,
    },
    .rxFifo1Config    = // RX FIFO1, unused.
    {
        .mode = CY_CANFD_FIFO_MODE_OVERWRITE,
        .watermark = 20u,
        .numberOfFifoElements = 4u,
        .topPointerLogicEnabled = false, // true,
    },
    .noOfRxBuffers  = 32u,
    .noOfTxBuffers  = 0u,
};
/* CANFD intrerrupt handler */
static void Canfd1InterruptHandler(void)
{
    /* Just invoking */
    Cy_CANFD_IrqHandler(T2G_CANFD1_TYPE);
}

static void Canfd2InterruptHandler(void)
{
    /* Just invoking */
    Cy_CANFD_IrqHandler(T2G_CANFD2_TYPE);
}

static void Canfd3InterruptHandler(void)
{
    /* Just invoking */
    Cy_CANFD_IrqHandler(T2G_CANFD3_TYPE);
}

static void Canfd4InterruptHandler(void)
{
    /* Just invoking */
    Cy_CANFD_IrqHandler(T2G_CANFD4_TYPE);
}

static void Canfd5InterruptHandler(void)
{
    /* Just invoking */
    Cy_CANFD_IrqHandler(T2G_CANFD5_TYPE);
}

static void Canfd6InterruptHandler(void)
{
    /* Just invoking */
    Cy_CANFD_IrqHandler(T2G_CANFD6_TYPE);
}

#if(0)
static void SetISOFormat(cy_pstc_canfd_type_t canfd)
{
    /* Now a ch configured as CANFD is working. */
    canfd->M_TTCAN.unCCCR.stcField.u1INIT = 1;
    while(canfd->M_TTCAN.unCCCR.stcField.u1INIT != 1);
        /* Cancel protection by setting CCE */
    canfd->M_TTCAN.unCCCR.stcField.u1CCE = 1;
    canfd->M_TTCAN.unCCCR.stcField.u1NISO = 1;

    canfd->M_TTCAN.unCCCR.stcField.u1INIT = 0;
    while(canfd->M_TTCAN.unCCCR.stcField.u1INIT != 0);
}
#endif

int16_t T2GCanFDSetBandrate(cy_stc_canfd_config_t* pcanCfg,uint8_t canfdFlag,CanBaudType_e idBandrate,CanBaudType_e dataBandrateRate)
{
    if(E_CAN_125K==idBandrate)
    {
        memcpy(&pcanCfg->bitrate,&g_canBandrate125K,sizeof(cy_stc_canfd_bitrate_t));
    }
    else if(E_CAN_250K==idBandrate)
    {
        memcpy(&pcanCfg->bitrate,&g_canBandrate250K,sizeof(cy_stc_canfd_bitrate_t));
    }
    else if(E_CAN_500K==idBandrate)
    {
        memcpy(&pcanCfg->bitrate,&g_canBandrate500K,sizeof(cy_stc_canfd_bitrate_t));
    }
    else if(E_CAN_1000K==idBandrate)
    {
        memcpy(&pcanCfg->bitrate,&g_canBandrate1000K,sizeof(cy_stc_canfd_bitrate_t));
    }
    else
    {
        return -1;
    }
    if(canfdFlag)
    {
        if(dataBandrateRate<idBandrate)
        {
            return -1;
        }
        pcanCfg->canFDMode = true;
        if(E_CAN_125K==dataBandrateRate)
        {
            memcpy(&pcanCfg->fastBitrate,&g_canBandrate125K,sizeof(cy_stc_canfd_bitrate_t));
            pcanCfg->tdcConfig.tdcEnabled = false;
        }
        else if(E_CAN_250K==dataBandrateRate)
        {
            memcpy(&pcanCfg->fastBitrate,&g_canBandrate250K,sizeof(cy_stc_canfd_bitrate_t));
            pcanCfg->tdcConfig.tdcEnabled = false;
        }
        else if(E_CAN_500K==dataBandrateRate)
        {
            memcpy(&pcanCfg->fastBitrate,&g_canBandrate500K,sizeof(cy_stc_canfd_bitrate_t));
            pcanCfg->tdcConfig.tdcEnabled = false;
        }
        else if(E_CAN_1000K==dataBandrateRate)
        {
            memcpy(&pcanCfg->fastBitrate,&g_canBandrate1000K,sizeof(cy_stc_canfd_bitrate_t));
            pcanCfg->tdcConfig.tdcEnabled = false;
        }
        else if(E_CAN_2000K==dataBandrateRate)
        {
            memcpy(&pcanCfg->fastBitrate,&g_canBandrate2000K,sizeof(cy_stc_canfd_bitrate_t));
            pcanCfg->tdcConfig.tdcEnabled = false;
        }
        else if(E_CAN_4000K==dataBandrateRate)
        {
            memcpy(&pcanCfg->fastBitrate,&g_canBandrate4000K,sizeof(cy_stc_canfd_bitrate_t));
            pcanCfg->tdcConfig.tdcEnabled = false;
        }
        else
        {
            return -1;
        }
    }
    
    return 0;
}

static void T2GCanFDInit(uint8_t can_index,uint8_t canfdFlag,CanBaudType_e idBandrate,CanBaudType_e dataBandrateRate )
{
    cy_stc_canfd_config_t canCfg;
    cy_stc_sysint_irq_t irq_cfg;
    switch(can_index)
    {
    case 0:
        Cy_SysClk_PeriphAssignDivider(T2G_CANFD1_PCLK, CY_SYSCLK_DIV_8_BIT, 0u);
        Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); //
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0u);  //
        Cy_CANFD_DeInit(T2G_CANFD1_TYPE); //CAN0(CAN0_0)-TBOX_CAN_CHANNEL_B
        irq_cfg = (cy_stc_sysint_irq_t){
            .sysIntSrc  = T2G_CANFD1_IRQN, //Use interrupt LINE0,�漰���ж�ϵͳ 
            .intIdx     = CPUIntIdx4_IRQn,
            .isEnabled  = true,
        };
      break;
    case 1:
        Cy_SysClk_PeriphAssignDivider(T2G_CANFD2_PCLK, CY_SYSCLK_DIV_8_BIT, 0u);
        Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); //
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0u);  //
        Cy_CANFD_DeInit(T2G_CANFD2_TYPE);//CAN1(CAN0_1)-TBOX_CAN_CHANNEL_D
        irq_cfg = (cy_stc_sysint_irq_t){
            .sysIntSrc  = T2G_CANFD2_IRQN, //Use interrupt LINE0,�漰���ж�ϵͳ 
            .intIdx     = CPUIntIdx4_IRQn,
            .isEnabled  = true,
        };
      break;
    case 2:
        Cy_SysClk_PeriphAssignDivider(T2G_CANFD3_PCLK, CY_SYSCLK_DIV_8_BIT, 0u);
        Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); //
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0u);  //
        Cy_CANFD_DeInit(T2G_CANFD3_TYPE);//CAN2(CAN0_2)-TBOX_CAN_CHANNEL_A, 
        irq_cfg = (cy_stc_sysint_irq_t){
            .sysIntSrc  = T2G_CANFD3_IRQN, //Use interrupt LINE0,�漰���ж�ϵͳ 
            .intIdx     = CPUIntIdx4_IRQn,
            .isEnabled  = true,
        };
      break;
    case 3:
        Cy_SysClk_PeriphAssignDivider(T2G_CANFD4_PCLK, CY_SYSCLK_DIV_8_BIT, 0u);
        Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); //
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0u);  //
        Cy_CANFD_DeInit(T2G_CANFD4_TYPE);//CAN3(CAN1_1)-TBOX_CAN_CHANNEL_E
        irq_cfg = (cy_stc_sysint_irq_t){
            .sysIntSrc  = T2G_CANFD4_IRQN, //Use interrupt LINE0,�漰���ж�ϵͳ 
            .intIdx     = CPUIntIdx4_IRQn,
            .isEnabled  = true,
        };
      break;
    case 4:
        Cy_SysClk_PeriphAssignDivider(T2G_CANFD5_PCLK, CY_SYSCLK_DIV_8_BIT, 0u);
        Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); //
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0u);  //
        Cy_CANFD_DeInit(T2G_CANFD5_TYPE);//CAN4(CAN1_2-TBOX_CAN_CHANNEL_C
        irq_cfg = (cy_stc_sysint_irq_t){
            .sysIntSrc  = T2G_CANFD5_IRQN, //Use interrupt LINE0,�漰���ж�ϵͳ 
            .intIdx     = CPUIntIdx4_IRQn,
            .isEnabled  = true,
        };
      break;
    case 5:
        Cy_SysClk_PeriphAssignDivider(T2G_CANFD6_PCLK, CY_SYSCLK_DIV_8_BIT, 0u);
        Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0u, 1u); //
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0u);  //
        Cy_CANFD_DeInit(T2G_CANFD6_TYPE);
        irq_cfg = (cy_stc_sysint_irq_t){
            .sysIntSrc  = T2G_CANFD6_IRQN, //Use interrupt LINE0,�漰���ж�ϵͳ 
            .intIdx     = CPUIntIdx4_IRQn,
            .isEnabled  = true,
        };
      break;
    default:
      break;
    }
    Cy_SysInt_InitIRQ(&irq_cfg);
    switch(can_index)
    {
    case 0:
      Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Canfd1InterruptHandler);
      break;
    case 1:
      Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Canfd2InterruptHandler);
      break;
    case 2:
      Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Canfd3InterruptHandler);
      break;
    case 3:
      Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Canfd4InterruptHandler);
      break;
    case 4:
      Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Canfd5InterruptHandler);
      break;
    case 5:
      Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, Canfd6InterruptHandler);
      break;
    }
    
    NVIC_SetPriority(CPUIntIdx4_IRQn, 4);//���жϻص�������Ҫ��ִ��freertos�ӿ�,���ȼ���С��4
    NVIC_ClearPendingIRQ(CPUIntIdx4_IRQn);
    NVIC_EnableIRQ(CPUIntIdx4_IRQn);

    switch(can_index)
    {
    case 0:
      memcpy(&canCfg,&can1Cfg,sizeof(canCfg));  
      T2GCanFDSetBandrate(&canCfg,canfdFlag, idBandrate,dataBandrateRate);
      Cy_CANFD_Init(T2G_CANFD1_TYPE, &canCfg);//����CAN����,����(����,״̬,����)�Ȼص�����,ע����ԭ��4G��������;���ʼ�����Fq/BSP*(ts1+ts2+!)
      /*#if NON_ISO_OPERATION == 1
      if(canfdFlag)
      {
          SetISOFormat(T2G_CANFD1_TYPE);
      }      
      #endif*/
      break;
    case 1:
      memcpy(&canCfg,&can2Cfg,sizeof(canCfg));  
      T2GCanFDSetBandrate(&canCfg,canfdFlag, idBandrate,dataBandrateRate);
      Cy_CANFD_Init(T2G_CANFD2_TYPE, &canCfg);//����CAN����,����(����,״̬,����)�Ȼص�����,ע����ԭ��4G��������;���ʼ�����Fq/BSP*(ts1+ts2+!)
      /*#if NON_ISO_OPERATION == 1
      SetISOFormat(T2G_CANFD2_TYPE);
      #endif*/
      break;
    case 2:
      memcpy(&canCfg,&can3Cfg,sizeof(canCfg));  
      T2GCanFDSetBandrate(&canCfg,canfdFlag, idBandrate,dataBandrateRate);
      Cy_CANFD_Init(T2G_CANFD3_TYPE, &canCfg);//����CAN����,����(����,״̬,����)�Ȼص�����,ע����ԭ��4G��������;���ʼ�����Fq/BSP*(ts1+ts2+!)
      /*#if NON_ISO_OPERATION == 1
      if(canfdFlag)
      {
          SetISOFormat(T2G_CANFD3_TYPE);
      }      
      #endif*/
      break;
    case 3:
      memcpy(&canCfg,&can4Cfg,sizeof(canCfg)); 
      T2GCanFDSetBandrate(&canCfg,canfdFlag, idBandrate,dataBandrateRate);
      Cy_CANFD_Init(T2G_CANFD4_TYPE, &canCfg);//����CAN����,����(����,״̬,����)�Ȼص�����,ע����ԭ��4G��������;���ʼ�����Fq/BSP*(ts1+ts2+!)
      /*#if NON_ISO_OPERATION == 1
      if(canfdFlag)
      {
          SetISOFormat(T2G_CANFD4_TYPE);
      }      
      #endif*/
      break;
    case 4:
      memcpy(&canCfg,&can5Cfg,sizeof(canCfg));  
      T2GCanFDSetBandrate(&canCfg,canfdFlag, idBandrate,dataBandrateRate);
      Cy_CANFD_Init(T2G_CANFD5_TYPE, &canCfg);//����CAN����,����(����,״̬,����)�Ȼص�����,ע����ԭ��4G��������;���ʼ�����Fq/BSP*(ts1+ts2+!)
      /*#if NON_ISO_OPERATION == 1
      if(canfdFlag)
      {
          SetISOFormat(T2G_CANFD5_TYPE);
      }      
      #endif*/
      break;
    case 5:
      memcpy(&canCfg,&can6Cfg,sizeof(canCfg));  
      T2GCanFDSetBandrate(&canCfg,canfdFlag, idBandrate,dataBandrateRate);
      Cy_CANFD_Init(T2G_CANFD6_TYPE, &canCfg);//����CAN����,����(����,״̬,����)�Ȼص�����,ע����ԭ��4G��������;���ʼ�����Fq/BSP*(ts1+ts2+!)
      /*#if NON_ISO_OPERATION == 1
      if(canfdFlag)
      {
          SetISOFormat(T2G_CANFD6_TYPE);
      }      
      #endif*/
      break;
    }
}

static void CanControllerReset(uint8_t canChannel)
{
    volatile stc_CANFD_CH_M_TTCAN_t* pstCanType = NULL;
    
    switch(canChannel)
    {
    case 0://BCAN
            pstCanType = &T2G_CANFD1_TYPE->M_TTCAN;
            break;
    case 1:
            pstCanType = &T2G_CANFD2_TYPE->M_TTCAN;
            break;
    case 2://ACAN
            pstCanType = &T2G_CANFD3_TYPE->M_TTCAN;
            break;
    case 3://ECAN
            pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
            break;
    case 4://CCAN
            pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
            break;
    case 5:
            pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
            break;
    default:
            break;
    }
    pstCanType->unCCCR.stcField.u1INIT = 1;
    if (pstCanType->unIR.u32Register & 0x00000001)
    {
      pstCanType->unIR.u32Register = 0X3FFFFFFE;
    }
    else
    {
      pstCanType->unIR.u32Register = 0X3FFFFFFF;
    }  
   
    pstCanType->unCCCR.stcField.u1INIT = 0;
    while ( pstCanType->unCCCR.stcField.u1INIT != 0 )
    {
    }	
    pstCanType->unTXBCR.u32Register = 0xFFFFFFFFul;
    /*clear can controller flag*/
     
    pstCanType->unIR.stcField.u1BO_ =1;
    //g_driverCanManage[canChannel].AppMsgEnable = 1; 
    g_driverCanManage[canChannel].BusErrorState = 0x00;
}

static int16_t CanHalSetCANMode(uint8_t u8Channel, uint8_t mode)
{
    // check parameter
    if ((u8Channel > CAN_CHANNEL_NUMBER_MAX) \
            || ( (mode != E_CAN_MODE_NORMAL) && (mode != E_CAN_MODE_STANDBY) ) )
    {
        return -1;
    }
    
    switch(u8Channel)
    {
        case 0:
        {
            if (mode == E_CAN_MODE_NORMAL)
            {
                Cy_GPIO_Clr(CAN0FD_STB_PORT,CAN0FD_STB_PIN);
            }
            else
            {
                Cy_GPIO_Set(CAN0FD_STB_PORT,CAN0FD_STB_PIN);// Go-to-Sleep mode
            }
        }
        break;
        case 1:
        {
            if (mode == E_CAN_MODE_NORMAL)
            {
                Cy_GPIO_Clr(CAN1FD_STB_PORT,CAN1FD_STB_PIN);
            } 
            else
            {
                Cy_GPIO_Set(CAN1FD_STB_PORT,CAN1FD_STB_PIN);// Go-to-Sleep mode
            }
        }
        break;
        case 2:
        {
            if (mode == E_CAN_MODE_NORMAL)
            {
                Cy_GPIO_Clr(CAN2FD_STB_PORT,CAN2FD_STB_PIN);
            }
            else
            {
                Cy_GPIO_Set(CAN2FD_STB_PORT,CAN2FD_STB_PIN);// Go-to-Sleep mode
            }
        }
        break;
        case 3:
        {
            if (mode == E_CAN_MODE_NORMAL)
            {
                Cy_GPIO_Clr(CAN3FD_STB_PORT,CAN3FD_STB_PIN);
            }
            else
            {
                Cy_GPIO_Set(CAN3FD_STB_PORT,CAN3FD_STB_PIN);// Go-to-Sleep mode
            }
        }
        break;
        case 4:
        {
            if (mode == E_CAN_MODE_NORMAL)
            {
                Cy_GPIO_Clr(CAN4FD_STB_PORT,CAN4FD_STB_PIN);
            }
            else
            {
                Cy_GPIO_Set(CAN4FD_STB_PORT,CAN4FD_STB_PIN);// Go-to-Sleep mode
            }
        }
        break;
        case 5:
        {
            if (mode == E_CAN_MODE_NORMAL)
            {
//                Cy_GPIO_Clr(CAN5FD_STB_PORT,CAN5FD_STB_PIN);
            }
            else
            {
//                Cy_GPIO_Set(CAN5FD_STB_PORT,CAN5FD_STB_PIN);// Go-to-Sleep mode
            }
        }
        break;
        default:
        break;
    }
    return 0;
}

int16_t CanHalSetMode(uint8_t mode)
{
    uint8_t i;
    int16_t ret,tem;
    
    ret = 0;
    
    for(i=0;i<3;i++)
    {
        tem = CanHalSetCANMode(i, mode);
        if(tem!=0)
        {
            ret = -1;
        }
    }    
    return ret;
}

static void SetCanControllerStart(uint8_t canChannel)
{
    volatile stc_CANFD_CH_M_TTCAN_t* pstCanType = NULL;   
    // get can type

    switch(canChannel)
    {
    case 0:
            pstCanType = &T2G_CANFD1_TYPE->M_TTCAN;
            break;
    case 1:
            pstCanType = &T2G_CANFD2_TYPE->M_TTCAN;
            break;
    case 2:
            pstCanType = &T2G_CANFD3_TYPE->M_TTCAN;
            break;
    case 3:
            pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
            break;
    case 4:
            pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
            break;
    case 5:
            pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
            break;
    default:
            break;
    }
    
    /*pstCanType->unCCCR.stcField.u1CSR = 0;
    while(pstCanType->unCCCR.stcField.u1CSA==1);*/
    pstCanType->unCCCR.stcField.u1INIT = 0;
 
}
/*************************************************
  Function:     CanHalSetsleep
  Description:  set can sleep or awake
  Input:        mode : 0 sleep; 1 awake
  Output:       None
  Return:       None
  Others:       None
*************************************************/
//static uint8_t canDriverHalSetFlag = 1;
int16_t CanHalSetsleep(uint8_t mode)
{
	int i = 0,count = 100000;
	
	cy_stc_gpio_pin_config_t can_irq_port_pin_cfg =
	{
	  .outVal    = 0ul,
	  .driveMode = CY_GPIO_DM_HIGHZ,
	  .hsiom     = T2G_CAN0_IRQ_MUX,
	  .intEdge   = CY_GPIO_INTR_FALLING,
	  .intMask   = 1ul,
	  .vtrip     = 0ul,
	  .slewRate  = 0ul,
	  .driveSel  = 0ul,
	};
	
	if(mode == 0)
	{
		CANFD0->unCTL.stcField.u8STOP_REQ = 0x07;
		count = 100000;
		while((CANFD0->unSTATUS.stcField.u8STOP_ACK==0) && (count > 0)) count--;

		CANFD1->unCTL.stcField.u8STOP_REQ = 0x07;
		count = 100000;
		while((CANFD1->unSTATUS.stcField.u8STOP_ACK==0) && (count > 0)) count--;

		CanHalSetMode(0);

		can_irq_port_pin_cfg.hsiom = T2G_CAN0_IRQ_MUX;
		Cy_GPIO_Pin_Init(T2G_CANFD1_RX_PORT, T2G_CANFD1_RX_PIN, &can_irq_port_pin_cfg);
		can_irq_port_pin_cfg.hsiom = T2G_CAN1_IRQ_MUX;
		Cy_GPIO_Pin_Init(T2G_CANFD2_RX_PORT, T2G_CANFD2_RX_PIN, &can_irq_port_pin_cfg);
		can_irq_port_pin_cfg.hsiom = T2G_CAN2_IRQ_MUX;
		Cy_GPIO_Pin_Init(T2G_CANFD3_RX_PORT, T2G_CANFD3_RX_PIN, &can_irq_port_pin_cfg);
    //canDriverHalSetFlag = 0;
    return 0;
  }
  else if (mode == 1)
  {
		CANFD0->unCTL.stcField.u8STOP_REQ = 0x00;
		count = 100000;
		while((CANFD0->unSTATUS.stcField.u8STOP_ACK) && (count > 0)) count--;

		CANFD1->unCTL.stcField.u8STOP_REQ = 0x00;
		count = 100000;
		while((CANFD1->unSTATUS.stcField.u8STOP_ACK) && (count > 0)) count--;
		T2GCanPortConfig();
		CanHalSetMode(1);
		for (; i < CAN_CHANNEL_NUMBER_MAX; i++)
		{
		    CanControllerReset(i);
		}
		//canDriverHalSetFlag = 1;
			return 0;
		}
		else
		{
			return -1;
		}
}

static int16_t CanInit(uint8_t u8Channel, uint8_t canfdFlag,CanBaudType_e u8BaudType,CanBaudType_e dataBandType, uint8_t mode)
{
    static uint8_t  s = 0;

    // check parameter
    if ( (u8Channel > CAN_CHANNEL_NUMBER_MAX) \
            || ( (u8BaudType != E_CAN_125K) && (u8BaudType != E_CAN_250K) && (u8BaudType != E_CAN_500K)&& (u8BaudType != E_CAN_1000K) ) \
            || ( (mode != E_CAN_MODE_NORMAL) && (mode != E_CAN_MODE_STANDBY) ) )
    {
            return -1;
    }

    if (0 == s)
    {
      s = 1;
      //��CAN�Ŀ��ƶ˿ڽ��г�ʼ��
      CanStbInit();//���ж˿�ֻ��ʼһ��,T2G,����ΪCY������,��
    }

#if(1)
    if (u8Channel == 0)
    {
        T2GCanFDInit(0,canfdFlag,u8BaudType,dataBandType);
        CanHalSetCANMode(0, mode);
    }
#endif

#if(1)
    if (u8Channel == 1)
    {
        T2GCanFDInit(1,canfdFlag,u8BaudType,dataBandType);
        CanHalSetCANMode(1, mode);
    }
#endif

#if(1)
    if (u8Channel == 2)
    {
         T2GCanFDInit(2,canfdFlag,u8BaudType,dataBandType);
        CanHalSetCANMode(2, mode);
    }
#endif

#if(1)
    if (u8Channel == 3)
    {
        T2GCanFDInit(3,canfdFlag,u8BaudType,dataBandType);
        CanHalSetCANMode(3, mode);
    }
#endif

#if(1)
    if (u8Channel == 4)
    {
        T2GCanFDInit(4,canfdFlag,u8BaudType,dataBandType);
        CanHalSetCANMode(4, mode);
    }
#endif
    
#if(1)
    if (u8Channel == 5)
    {
        T2GCanFDInit(5,canfdFlag,u8BaudType,dataBandType);
        CanHalSetCANMode(5, mode);
    }
        
#endif
      return 0;
}
#if(0)
static uint8_t m_configureedCanChannelNum = 0;
static const CanConfigure_t *m_pCanConfig = NULL;
#endif
int16_t CanHalInit(const CanConfigure_t *pCanConfig,uint8_t CanNum)
{
    uint8_t i;

    for(i=0;i<CAN_CHANNEL_NUMBER_MAX;i++)
    {
      g_driverCanManage[i].AppMsgEnable = 0;
      g_driverCanManage[i].txMsgEnable = 1;
      g_driverCanManage[i].canRxCallFun = NULL;
      g_driverCanManage[i].rxFilterFun = NULL;
      g_driverCanManage[i].noAckError = 0;
      g_driverCanManage[i].stuffError = 0; 
      g_driverCanManage[i].errorRecoverFun = NULL;
    }
    //
    g_allCanRxBuffer.rxQueueHandle = NULL;  
      
    if(pCanConfig==NULL)
    {
      return -1;
    }
#if(0)
    m_pCanConfig = pCanConfig;
    m_configureedCanChannelNum = CanNum;
#endif
    for(i=0;i<CanNum;i++)
    {     
      if(pCanConfig->canChannel>5)
      {
        return -1;
      }
      
      CanInit(pCanConfig[i].canChannel, pCanConfig[i].canFdMode,pCanConfig[i].bandrate, pCanConfig[i].dataBandrate,E_CAN_MODE_NORMAL); 
      
      g_driverCanManage[pCanConfig[i].canChannel].AppMsgEnable = 0;
      g_CanBusOffProcessFlag[pCanConfig[i].canChannel] = 0x01;
      g_driverCanManage[pCanConfig[i].canChannel].busOffEventFun = pCanConfig[i].busOffEventFun;
      g_driverCanManage[pCanConfig[i].canChannel].txStartTimeCount = 0xFFFFFFFF;      
    }
   return 0;
}

int16_t CanHalOpen(uint8_t canChannel)
{
    int16_t canHandle;
    uint16_t i;

    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
        return -1;
    }
    canHandle = -1;
    __disable_irq();
    for(i=0;i<CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX;i++)
    {
        if(g_CanDriverBufferList[canChannel][i].CanUseFlag ==0)
        {
            g_CanDriverBufferList[canChannel][i].CanUseFlag = 1;
            g_CanDriverBufferList[canChannel][i].RxQueueHandle = NULL;
            g_CanDriverBufferList[canChannel][i].enableSendLoopBack = 0x00;
            g_CanDriverBufferList[canChannel][i].pFilerFun = NULL;
            canHandle = i+(256*canChannel);
            break;
        }
    }
    __enable_irq();
    return canHandle;
}

int16_t CanHalSetRxBuffer(int16_t canHandle,CanHalMsg_t *pMsgBuf,uint16_t bufMsgCount)
{
    uint8_t canChannel;
    QueueHandle_t queHandle;
    if(canHandle<0)
    {
            return -1;		
    }

    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)//invalid channel
    {
            return -1;
    }
    if(bufMsgCount==0)
    {
            return -2;
    }

    queHandle = xQueueCreate( bufMsgCount, // The number of items the queue can hold.
                            sizeof(uint8_t)); // The buffer that will hold the queue structure.
    if (0 == queHandle)
    {
            return -3;
    }
    
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].RxQueueHandle = queHandle;
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].msgRxIndexIn = 0;
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].msgRxBufferSize = bufMsgCount;
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].pMsgBufferRx = pMsgBuf;
    return 0;
}

int16_t CanHalSetFilter(int16_t canHandle,CanHalMsgFilter_t *pMsgFilter)
{
    uint8_t canChannel;
    //int i;
    if(canHandle<0)
    {
            return -1;		
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)//invalid channel
    {
            return -1;
    }
    if(pMsgFilter==NULL)
    {
      return -2;
    }
	memcpy(&(g_CanDriverBufferList[canChannel][(canHandle&0xFF)].filter),pMsgFilter,sizeof(CanHalMsgFilter_t));	
	
    return 0;
}

int16_t CanHalSetFilterFun(int16_t canHandle,typeCanRxHalFilterCallBackPtr pFilterFun)
{
    uint8_t canChannel;
    if(canHandle<0)
    {
            return -1;		
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)//invalid channel
    {
            return -1;
    }
    
    if(pFilterFun==NULL)
    {
      return -2;
    }
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].pFilerFun = pFilterFun;

    return 0;
}

int16_t CanHalRegisterTxFinishedCallBackFunction(int16_t canHandle,typeCanTxHalCallBackPtr pCallBackFun)
{
    uint8_t canChannel;
    //int i;

    if(canHandle<0)
    {
            return -1;		
    }

    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)//invalid channel
    {
            return -1;
    }
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].pTxCallBackFun = pCallBackFun;
    return 0;
}

void FillCanDriverMSgData(cy_stc_canfd_msg_t* pMsg,uint8_t u8Len, uint8_t* pu8CmdData,uint8_t fdFlag)
{
    uint16_t wordNum,i,tem; 
    wordNum = u8Len/4;
    if((0==fdFlag)&&(u8Len>8))
    {
        u8Len = 8;
    }
    if(u8Len>=64)
    {
        pMsg->dataConfig.dataLengthCode = 15;
    }
    else if(u8Len>=48)
    {
        pMsg->dataConfig.dataLengthCode = 14;
    }
    else if(u8Len>=32)
    {
        pMsg->dataConfig.dataLengthCode = 13;
    }
    else if(u8Len>=24)
    {
        pMsg->dataConfig.dataLengthCode = 12;
    }
    else if(u8Len>=20)
    {
        pMsg->dataConfig.dataLengthCode = 11;
    }
    else if(u8Len>=16)
    {
        pMsg->dataConfig.dataLengthCode = 10;
    }
    else if(u8Len>=12)
    {
        pMsg->dataConfig.dataLengthCode = 9;
    }
    else if(u8Len>=8)
    {
        pMsg->dataConfig.dataLengthCode = 8;
    }
    else
    {
        wordNum = 2;
        pMsg->dataConfig.dataLengthCode = u8Len;
    }
    for(i=0;i<wordNum;i++)
    {
        tem = i*4;
        pMsg->dataConfig.data[i] = pu8CmdData[tem+3]<<24 | pu8CmdData[tem+2]<<16 | pu8CmdData[tem+1]<<8 | pu8CmdData[tem+0];
    }    
}
static uint16_t g_u16CanTransmitCnt[CAN_CHANNEL_NUMBER_MAX];
/*************************

fdFlag:
bit0:
1:can fd 报文
0:normal 报文
bit1:
1:brs 报文
0:normal 报文

********/
static int16_t CanTransmit(uint8_t u8Channel, uint32_t id, uint8_t u8Len, uint8_t* pu8CmdData,uint8_t fdFlag)
{
    cy_pstc_canfd_type_t pstCanType=NULL;
    cy_stc_canfd_msg_t stcMsg;
    
    if(fdFlag&0x01)
    {
        stcMsg.canFDFormat = true;
    }
    if(fdFlag&(0x01<<1))
    {
        stcMsg.canFDFormatBrs = true;
    }
    stcMsg.idConfig.extended = false;
    stcMsg.idConfig.identifier = id;
    /*stcMsg.dataConfig.dataLengthCode = u8Len;
    stcMsg.dataConfig.data[0] = pu8CmdData[3]<<24 | pu8CmdData[2]<<16 | pu8CmdData[1]<<8 | pu8CmdData[0];
    stcMsg.dataConfig.data[1] = pu8CmdData[7]<<24 | pu8CmdData[6]<<16 | pu8CmdData[5]<<8 | pu8CmdData[4];*/
    FillCanDriverMSgData(&stcMsg,u8Len,pu8CmdData,fdFlag);
    //cy_en_canfd_status_t cantxstate;

    
    //CAN_Index(u8Channel);
    switch(u8Channel)
    {
    case 0:
      pstCanType = T2G_CANFD1_TYPE;      
      break;
    case 1:
      pstCanType = T2G_CANFD2_TYPE;      
      break;
    case 2:
      pstCanType = T2G_CANFD3_TYPE;      
      break;
    case 3:
      pstCanType = T2G_CANFD4_TYPE;      
      break;
    case 4:
      pstCanType = T2G_CANFD5_TYPE;      
      break;
    case 5:
      pstCanType = T2G_CANFD6_TYPE;      
      break;
    }
    //__disable_irq();
    if(0 != (pstCanType->M_TTCAN.unTXBRP.u32Register & (0x00000001<<g_canControllerTxBufferIndex[u8Channel])))
    {
      //__enable_irq();
	  
      return CAN_ERROR_TX_BUFFER_FULL;
    }
	
    Cy_CANFD_UpdateAndTransmitMsgBuffer(pstCanType, g_canControllerTxBufferIndex[u8Channel], &stcMsg);
    //Cy_CANFD_UpdateAndTransmitMsgBuffer(pstCanType, 0, &stcMsg);
    //pstCanType->unIE.stcField.u1TCE = 1; //by xwm 2020.3.13
    pstCanType->M_TTCAN.unIE.stcField.u1PEAE  = 1;
    g_canControllerTxBufferIndex[u8Channel]++;
    if(g_canControllerTxBufferIndex[u8Channel]>=16)
    {
      g_canControllerTxBufferIndex[u8Channel] = 0;
    }
    g_u16CanTransmitCnt[u8Channel] += 1;
    g_driverCanManage[u8Channel].txTimeOutCount = 0;
    //__enable_irq();
    
    return 0;
}

int16_t CanHalTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag)
{
    uint8_t canChannel;
    int16_t ret;
    
    if(canHandle<0)
    {
            return -1;
    }
    canChannel = canHandle>>8;
    //g_driverCanManage[canChannel].AppMsgEnable = 1;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
            return -1;
    }
    if(g_driverCanManage[canChannel].txMsgEnable<=0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if(g_driverCanManage[canChannel].busNoAckErrorState!=0)
    {
      return CAN_ERROR_BUS_ERROR;
    }
    if(g_driverCanManage[canChannel].AppMsgEnable<=0)
    {
      //return CAN_ERROR_BUS_OFF_LINE;
    }  
    if(g_driverCanManage[canChannel].busErrorAppDiableFlag)
    {
      return CAN_ERROR_TX_DISABLE_ERROR;
    }
    if(g_canTestModeFlag[canChannel])
    {
      return CAN_ERROR_TEST_MODE;
    }
    ret = CanTransmit(canChannel, canId, dlc,canData,fdFlag);
    if(ret==CAN_ERROR_TX_BUFFER_FULL)
    {
      //alter:2022-11-23,ʹ�ö��TX BUFѭ������CAN,û���ٳ��ַ���error
      vTaskDelay( pdMS_TO_TICKS(10)); 
      ret = CanTransmit(canChannel, canId, dlc,canData,fdFlag); 
    }
    if(ret==0)
    {
      __disable_irq();//disable interrupt
      if(g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
      {
          g_driverCanManage[canChannel].txStartTimeCount = 0x00;
      }
      __enable_irq();//enable interrupt
    }
    return ret;
}

int16_t CanHalReceive(int16_t canHandle,CanHalMsg_t *pMsg,int32_t timeOut_ms)
{
	uint8_t canChannel,index;
	QueueHandle_t queHandle;
	TickType_t tickWait;
    uint8_t data;
	if(canHandle<0)
	{
		return CAN_ERROR_INVALID_HANDLE;
	}
	canChannel = canHandle>>8;
	if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
	{
		return CAN_ERROR_INVALID_HANDLE;
	}
	//receive
	index = canHandle&0xFF;
	queHandle = g_CanDriverBufferList[canChannel][index].RxQueueHandle;
    if(queHandle==NULL)
    {
        return CAN_ERROR_TIMEOUT;
    }        
	if(timeOut_ms!=portMAX_DELAY)
	{
        tickWait = pdMS_TO_TICKS(timeOut_ms);
	}
	else
	{
        tickWait = portMAX_DELAY;
	}
	
	if(xQueueReceive( queHandle, &data, tickWait)!= pdPASS)
	{
        return CAN_ERROR_TIMEOUT;
	}   

	memcpy(pMsg,(g_CanDriverBufferList[canChannel][index].pMsgBufferRx+data),sizeof(CanHalMsg_t));
	return 0;
}

int16_t CanHalSetCanRxCallBack(uint8_t canChannel,typeCanTxRxHalCallBackPtr rxCallBack)
{
    if(rxCallBack==NULL)
    {
        return -1;
    }
    if(canChannel>5)
    {
        return -1;
    }
    //IRQ_DISABLE();
    g_driverCanManage[canChannel].canRxCallFun = rxCallBack;
    //IRQ_ENABLE();
    return 0;
}

int16_t CanHalSetCanTxCallBack(uint8_t canChannel,typeCanTxRxHalCallBackPtr txCallBack)
{
    if(txCallBack==NULL)
    {
        return -1;
    }
    if(canChannel>5)
    {
        return -1;
    }
    //IRQ_DISABLE();
    g_driverCanManage[canChannel].canTxCallFun = txCallBack;
    //IRQ_ENABLE();
    return 0;
}

int16_t CanHalNmTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag)
{
    uint8_t canChannel;
    int16_t ret;
    if(canHandle<0)
    {
            return -1;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
            return -1;
    }
    if(g_driverCanManage[canChannel].txMsgEnable<=0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if(g_driverCanManage[canChannel].BusErrorState)
    {
      return CAN_ERROR_BUS_ERROR;
    }  

    if(g_driverCanManage[canChannel].busNoAckErrorState != 0x00) 
    {
      return CAN_ERROR_TX_DISABLE_ERROR;
    }  

    if(g_canTestModeFlag[canChannel])
    {
      return CAN_ERROR_TEST_MODE;
    }
    ret = CanTransmit(canChannel, canId, dlc,canData,fdFlag);
    if(ret==CAN_ERROR_TX_BUFFER_FULL)
    {
      vTaskDelay( pdMS_TO_TICKS(2)); 
      ret = CanTransmit(canChannel, canId, dlc,canData,fdFlag);
    }
    if(ret==0)
    {
      __disable_irq();//disable interrupt
      if(g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
      {
          g_driverCanManage[canChannel].txStartTimeCount = 0x00;
      }
      __enable_irq();//enable interrupt
    }
    return ret;
}

int16_t CanHalNmReceive(int16_t canHandle,CanHalMsg_t *pMsg,int32_t timeOut_ms)
{
	uint8_t canChannel;
	uint8_t index;
	//uint8_t canType;
	QueueHandle_t queHandle;
	TickType_t tickWait;
        uint8_t data;
	if(canHandle<0)
	{
		return CAN_ERROR_INVALID_HANDLE;
	}
	canChannel = canHandle>>8;
	if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
	{
		return CAN_ERROR_INVALID_HANDLE;
	}
	//receive
	index = canHandle&0xFF;
        //��Ӧ֮ǰ������g_CanDriverBufferList[canChannel][(canHandle&0xFF)].RxQueueHandle
	queHandle = g_CanDriverBufferList[canChannel][index].RxQueueHandle;
        if(queHandle==NULL)
        {
          return CAN_ERROR_TIMEOUT;
        }
	if(timeOut_ms!=portMAX_DELAY)
	{
            tickWait = pdMS_TO_TICKS(timeOut_ms);
	}
	else
	{
            tickWait = portMAX_DELAY;
	}
	//��ȷ��Ӧ�����ݴ��ķ���
	if(xQueueReceive( queHandle, &data, tickWait)!= pdPASS)
	{
            return CAN_ERROR_TIMEOUT;
	}   
	memcpy(pMsg,&(g_CanDriverBufferList[canChannel][index].pMsgBufferRx[data]),sizeof(CanHalMsg_t));
	return 0;
}

int16_t CanHalRecieveIsTimeOut(int16_t canHandle)
{
    uint8_t canChannel;
    uint8_t index;
    if(canHandle<0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    index = canHandle&0xFF;
    if(g_CanDriverBufferList[canChannel][index].CanRxFlag)
    {
      g_CanDriverBufferList[canChannel][index].CanRxFlag = 0;
      return 1;
    } 
    return 0;  
}

int16_t CanHalAppMsgEnable(int16_t canHandle)
{
    uint8_t canChannel;
    if(canHandle<0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    //IRQ_DISABLE();
    g_driverCanManage[canChannel].AppMsgEnable++;
    //IRQ_ENABLE();
    return 0;
}

int16_t CanHalAppMsgDisable(int16_t canHandle)
{
    uint8_t canChannel;
    if(canHandle<0)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    //IRQ_DISABLE();
    __disable_irq();
    g_driverCanManage[canChannel].AppMsgEnable--;
    __enable_irq();
    //IRQ_ENABLE();
    return 0;
}

uint32_t CanHalGetTimeCountSinceLastCanTx(int16_t canHandle)
{
    uint32_t timeCount;
    uint8_t canChannel;
    if(canHandle<0)
    {
        return 0xFFFFFFFF;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
        return 0xFFFFFFFF;
    }
    __disable_irq();//disable interrupt
    timeCount = g_driverCanManage[canChannel].txStartTimeCount;
    __enable_irq();//enable interrupt
    return timeCount;    
}

static void CanControllerReset_1(uint8_t canChannel)
{
    volatile stc_CANFD_CH_M_TTCAN_t* pstCanType = NULL; 
    // get can type

    switch(canChannel)
    {
    case 0:
            pstCanType = &T2G_CANFD1_TYPE->M_TTCAN;
            break;
    case 1:
            pstCanType = &T2G_CANFD2_TYPE->M_TTCAN;
            break;
    case 2:
            pstCanType = &T2G_CANFD3_TYPE->M_TTCAN;
            break;
    case 3:
            pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
            break;
    case 4:
            pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
            break;
    case 5:
            pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
            break;
    default:
            break;
    }
    pstCanType->unCCCR.stcField.u1INIT = 1;
    //pstCanType->unECR.stcField.u8CEL;     
    if (pstCanType->unIR.u32Register & 0x00000001)
    {
      pstCanType->unIR.u32Register = 0X3FFFFFFE;
    }
    else
    {
      pstCanType->unIR.u32Register = 0X3FFFFFFF;
    }  
   
    pstCanType->unCCCR.stcField.u1INIT = 0;
    while ( pstCanType->unCCCR.stcField.u1INIT != 0 )
    {
    }	
    pstCanType->unTXBCR.u32Register = 0xFFFFFFFFul;
    /*clear can controller flag*/
     
    pstCanType->unIR.stcField.u1BO_ =1;
    //return 0;
}

static int16_t CanControllerBusOffError(uint8_t canChannel)
{
    
    volatile stc_CANFD_CH_M_TTCAN_t* pstCanType = NULL; 
    
    switch(canChannel)
    {
    case 0://BCAN
            pstCanType = &T2G_CANFD1_TYPE->M_TTCAN;
            break;
    case 1:
            pstCanType = &T2G_CANFD2_TYPE->M_TTCAN;
            break;
    case 2://ACAN
            pstCanType = &T2G_CANFD3_TYPE->M_TTCAN;
            break;
    case 3://ECAN
            pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
            break;
    case 4://CCAN
            pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
            break;
    case 5:
            pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
            break;
    default:
            break;
    }
    if(pstCanType->unIR.stcField.u1BO_)
    {
        if(pstCanType->unPSR.stcField.u1BO)
        {
           CanControllerReset_1(canChannel);
            g_driverCanManage[canChannel].busErrorAppDiableFlag = 0x01;
            g_driverCanManage[canChannel].BusErrorState = 0x01;
            return 0;
        }
    }
    return 1;
 
}

int16_t CanHalClearBusoffAppDisableFlag(uint8_t canChannel)
{
    g_driverCanManage[canChannel].busErrorAppDiableFlag = 0x00;
    return 0;
}

int16_t CanHalGetIsBusOffError(int16_t canHandle)
{
    uint8_t canChannel;
    if(canHandle<0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    //pstc_canfd_type_t pstCanType = NULL;
    return CanControllerBusOffError(canChannel);
}

int16_t CanHalEnableTransmitLoopBack(int16_t canHandle)
{
    uint8_t canChannel;
    if(canHandle<0)
    {
        return -1;		
    }

    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)//invalid channel
    {
        return -1;
    }  
    g_CanDriverBufferList[canChannel][(canHandle&0xFF)].enableSendLoopBack = 0x01;
    return 0;
}

int16_t CanHalDiagnosticTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag)
{
    uint8_t canChannel;
    int16_t ret;
    if(canHandle<0)
    {
        return -1;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
        return -1;
    }
    if(g_driverCanManage[canChannel].txMsgEnable<=0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if(g_driverCanManage[canChannel].BusErrorState)
    {
      return CAN_ERROR_BUS_ERROR;
    }  
    if(g_canTestModeFlag[canChannel])
    {
      return CAN_ERROR_TEST_MODE;
    }
    ret = CanTransmit(canChannel, canId, dlc,canData,fdFlag);
    if(ret==CAN_ERROR_TX_BUFFER_FULL)
    {
      vTaskDelay( pdMS_TO_TICKS(10)); 
      ret = CanTransmit(canChannel, canId, dlc,canData,fdFlag);
    }
    if(ret==0)
    {
      __disable_irq();//disable interrupt
      if(g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
      {
          g_driverCanManage[canChannel].txStartTimeCount = 0x00;
      }
      __enable_irq();//enable interrupt
    }
    return ret;
}

int16_t CanHalDiagnosticReceive(int16_t canHandle,CanHalMsg_t *pMsg,int32_t timeOut_ms)
{
    uint8_t canChannel;
	uint8_t index;
	//uint8_t canType;
	QueueHandle_t queHandle;
	TickType_t tickWait;
        uint8_t data;
	if(canHandle<0)
	{
		return CAN_ERROR_INVALID_HANDLE;
	}
	canChannel = canHandle>>8;
	if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
	{
		return CAN_ERROR_INVALID_HANDLE;
	}
	//receive
	index = canHandle&0xFF;
	queHandle = g_CanDriverBufferList[canChannel][index].RxQueueHandle;
        if(queHandle==NULL)
        {
          return CAN_ERROR_TIMEOUT;
        }
	if(timeOut_ms!=portMAX_DELAY)
	{
            tickWait = pdMS_TO_TICKS(timeOut_ms);
	}
	else
	{
            tickWait = portMAX_DELAY;
	}
	
	if(xQueueReceive( queHandle, &data, tickWait)!= pdPASS)
	{
            return CAN_ERROR_TIMEOUT;
	}       

	memcpy(pMsg,&(g_CanDriverBufferList[canChannel][index].pMsgBufferRx[data]),sizeof(CanHalMsg_t));
	
	return 0;
}

static int16_t CanTransmitFromIsr(uint8_t u8Channel, uint32_t id, uint8_t u8Len, uint8_t* pu8CmdData,uint8_t fdFlag)
{
    cy_pstc_canfd_type_t pstCanType=NULL;
    cy_stc_canfd_msg_t stcMsg;
    if(fdFlag&0x01)
    {
        stcMsg.canFDFormat = true;
        if(fdFlag&(0x01<<1))
        {
            stcMsg.canFDFormatBrs = true;
        }
        else
        {
            stcMsg.canFDFormatBrs = false;
        }
    }
    else
    {
        stcMsg.canFDFormat = false;
        stcMsg.canFDFormatBrs = false;
    }    
    stcMsg.idConfig.extended = false;
    stcMsg.idConfig.identifier = id;
    stcMsg.dataConfig.dataLengthCode = u8Len;
    stcMsg.dataConfig.data[0] = pu8CmdData[3]<<24 | pu8CmdData[2]<<16 | pu8CmdData[1]<<8 | pu8CmdData[0];
    stcMsg.dataConfig.data[1] = pu8CmdData[7]<<24 | pu8CmdData[6]<<16 | pu8CmdData[5]<<8 | pu8CmdData[4];
    //cy_en_canfd_status_t cantxstate;
    
    switch(u8Channel)
    {
    case 0:
      pstCanType = T2G_CANFD1_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD1_TYPE, TBufIndex[0], &stcMsg);
      break;
    case 1:
      pstCanType = T2G_CANFD2_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD2_TYPE, TBufIndex[1], &stcMsg);
      break;
    case 2:
      pstCanType = T2G_CANFD3_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD3_TYPE, TBufIndex[2], &stcMsg);
      break;
    case 3:
      pstCanType = T2G_CANFD4_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD4_TYPE, TBufIndex[3], &stcMsg);
      break;
    case 4:
      pstCanType = T2G_CANFD5_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD5_TYPE, TBufIndex[4], &stcMsg);
      break;
    case 5:
      pstCanType = T2G_CANFD6_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD6_TYPE, TBufIndex[5], &stcMsg);
      break;
    }
    //__disable_irq();
    if(0 != (pstCanType->M_TTCAN.unTXBRP.u32Register & (0x00000001<<g_canControllerTxBufferIndex1[u8Channel])))
    {
      __enable_irq();
      return CAN_ERROR_TX_BUFFER_FULL;
    }    
    Cy_CANFD_UpdateAndTransmitMsgBuffer(pstCanType, g_canControllerTxBufferIndex1[u8Channel], &stcMsg);
     pstCanType->M_TTCAN.unIE.stcField.u1PEAE  = 1;
    g_canControllerTxBufferIndex1[u8Channel]++;
    if(g_canControllerTxBufferIndex1[u8Channel]>=32)
    {
      g_canControllerTxBufferIndex1[u8Channel] = 16;
    }
    g_u16CanTransmitCnt[u8Channel] += 1;
    g_driverCanManage[u8Channel].txTimeOutCount = 0;
    //__enable_irq();
    
    return 0;    
}

int16_t CanHalTransmitFromIsr(uint8_t canChannel,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag)
{
    int16_t ret;

    if(g_driverCanManage[canChannel].txMsgEnable<=0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if(g_driverCanManage[canChannel].busNoAckErrorState!=0)
    {
      return CAN_ERROR_BUS_ERROR;
    }
    if((g_driverCanManage[canChannel].AppMsgEnable<=0)&&(canId<0x600))
    {
      return CAN_ERROR_BUS_OFF_LINE;
    }  
    if(g_driverCanManage[canChannel].busErrorAppDiableFlag)
    {
      return CAN_ERROR_TX_DISABLE_ERROR;
    }
    if(g_canTestModeFlag[canChannel])
    {
      return CAN_ERROR_TEST_MODE;
    }
    //T2G???,�滻ΪT2G����
    ret = CanTransmitFromIsr(canChannel, canId, dlc,canData,fdFlag);
    if(ret==0)
    {
      __disable_irq();//disable interrupt
      if(g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
      {
          g_driverCanManage[canChannel].txStartTimeCount = 0x00;
      }
      __enable_irq();//enable interrupt
    }
    return ret;
}


static void CanCancelTransmit(uint8_t canChannel)
{
    volatile stc_CANFD_CH_M_TTCAN_t* pstCanType = NULL;   
    // get can type

    switch(canChannel)
    {
    case 0:
            pstCanType = &T2G_CANFD1_TYPE->M_TTCAN;
            break;
    case 1:
            pstCanType = &T2G_CANFD2_TYPE->M_TTCAN;
            break;
    case 2:
            pstCanType = &T2G_CANFD3_TYPE->M_TTCAN;
            break;
    case 3:
            pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
            break;
    case 4:
            pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
            break;
    case 5:
            pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
            break;
    default:
            break;
    }
    pstCanType->unTXBCR.u32Register = 0xFFFFFFFFul;
}

void CanHalCanBusOffProcessDisalbe(uint8_t canChannel)
{
  if(canChannel>5)
  {
    return;
  }
  g_CanBusOffProcessFlag[canChannel] = 0;
}

void CanHalCanBusOffProcessEnalbe(uint8_t canChannel)
{
  if(canChannel>5)
  {
    return;
  }

  g_CanBusOffProcessFlag[canChannel] = 1;
}

void CanHalCanBusOffCycleProcess(uint32_t cycleTime_ms)
{
  uint8_t i;
  static uint8_t busOffEvent[4];
  static uint32_t cycleTimeCount = 0;
  uint32_t txTimeOut;
  //uint32_t txFailDelay;
  
  for(i=0;i<CAN_CHANNEL_NUMBER_MAX;i++)
  {
      if(g_driverCanManage[i].txFailState)
      {
          txTimeOut = 10;
          //txFailDelay = 200;
      }
      else
      {
          txTimeOut = 90;
          //txFailDelay = 200;
      }
      if(g_driverCanManage[i].busNoAckErrorState==0x00)
      {
          __disable_irq();
          if(g_driverCanManage[i].txTimeOutCount!=0xFFFFFFFF)
          {
              if(g_driverCanManage[i].txTimeOutCount<txTimeOut)
              {
                  g_driverCanManage[i].txTimeOutCount += cycleTime_ms;
                  __enable_irq();
#ifdef    CAN_NOACK_DEBUG_CHANNEL
                  if(i==CAN_NOACK_DEBUG_CHANNEL)
                  {
                    TBOX_PRINT("can fail txTimeOutCount %d,%d---%d\r\n",i,g_driverCanManage[i].txTimeOutCount);
                  }  
#endif                  
              }
              else
              {
                  //uint8_t errorCode;
                  //errorCode = GetCanControllerLastErrorCode(i);
                  /*if(i==CAN_NOACK_DEBUG_CHANNEL)
                  {
                    TBOX_PRINT("g_driverCanManage[i].BusErrorState %d\r\n",i,g_driverCanManage[i].BusErrorState);
                  }*/               
                  __enable_irq();
                  if(0==g_driverCanManage[i].BusErrorState)
                  {
                      if(g_driverCanManage[i].noAckError)//no ack
                      //if(3==errorCode)  
                      {
                          g_driverCanManage[i].noAckError= 0x00;
#ifdef    CAN_NOACK_DEBUG_CHANNEL                          
                          if(i==CAN_NOACK_DEBUG_CHANNEL)
                          {
                            TBOX_PRINT("can nack error occured %d\r\n",i);
                          }       
#endif                  
                          g_driverCanManage[i].busErrorAppDiableFlag = 0x00;
                          g_driverCanManage[i].busNoAckErrorState = 0x01;
                          g_driverCanManage[i].noAckTimeCount = 0x00;
                          g_driverCanManage[i].txFailState = 0x01;
                          g_driverCanManage[0].nmNoackState = 0x01;
                          CanCancelTransmit(i);
                      }
                      else if(g_driverCanManage[i].stuffError)//can not connected
                      //else if(1==errorCode)//can not connected
                      {
                          g_driverCanManage[i].busErrorAppDiableFlag = 0x00;
                          g_driverCanManage[i].stuffError = 0x00;
                          g_driverCanManage[i].busNoAckErrorState = 0x03;
                          g_driverCanManage[i].noAckTimeCount = 0x00;
                          g_driverCanManage[i].txFailState = 0x01;
#ifdef    CAN_NOACK_DEBUG_CHANNEL
                          if(i==CAN_NOACK_DEBUG_CHANNEL)
                          {
                            TBOX_PRINT("can stuff error occured %d\r\n",i);
                          }       
#endif
                          CanCancelTransmit(i);
                      }
                      else if(g_driverCanManage[i].loadHighFlag)
                      {                          
                          g_driverCanManage[i].busNoAckErrorState = 0x01;
                          g_driverCanManage[i].noAckTimeCount = 0x00;
                          g_driverCanManage[i].txFailState = 0x01;
                          CanCancelTransmit(i);
                          TBOX_PRINT("can load high txb\r\n");
                      }
                  }                  
              }
          }
          else
          {
              __enable_irq();
          }
      }
      else if(g_driverCanManage[i].busNoAckErrorState==0x01)
      {
          //TBOX_PRINT("can nack01 error txb is %d \r\n",g_can0TxBuffer.txCount);
          //CanCearlTransmitBuf(i);
          if(g_driverCanManage[i].noAckTimeCount<100)
          {
              g_driverCanManage[i].noAckTimeCount += cycleTime_ms;
          }
          else
          {
              g_driverCanManage[i].txTimeOutCount = 0xFFFFFFFF;
              g_driverCanManage[i].busNoAckErrorState = 0x00;
              if(g_driverCanManage[i].loadHighFlag==0)
              {
                  if((g_driverCanManage[i].errorRecoverFun!=NULL)  && (g_driverCanManage[i].AppMsgEnable > 0))
                  {
                   
                    g_driverCanManage[i].errorRecoverFun();
                  }                
              }
 
#ifdef    CAN_NOACK_DEBUG_CHANNEL
              if(i==CAN_NOACK_DEBUG_CHANNEL)
              {
                TBOX_PRINT("can nack error recovered %d\r\n",i);
              } 
#endif
          }
      }
      else if(3==g_driverCanManage[i].busNoAckErrorState)
      {
          if(g_driverCanManage[i].noAckTimeCount<100)
          {
              g_driverCanManage[i].noAckTimeCount += cycleTime_ms;
          }
          else
          {
              g_driverCanManage[i].txTimeOutCount = 0xFFFFFFFF;
              g_driverCanManage[i].busNoAckErrorState = 0x00;
              if((g_driverCanManage[i].errorRecoverFun!=NULL)  && (g_driverCanManage[i].AppMsgEnable > 0))
              {
                g_driverCanManage[i].errorRecoverFun();
              }
#ifdef    CAN_NOACK_DEBUG_CHANNEL
              if(i==CAN_NOACK_DEBUG_CHANNEL)
              {
                TBOX_PRINT("can stuffing error recovered %d\r\n",i);
              } 
#endif              
          }
      }
      else
      {
        g_driverCanManage[i].busNoAckErrorState = 0;
      }
  }
  //
  for(i=0;i<CAN_CHANNEL_NUMBER_MAX;i++)
  {
      uint32_t msgCount;
      g_driverCanManage[i].loadTimeCount += cycleTime_ms;
      if(g_driverCanManage[i].loadTimeCount>=100)
      {
          g_driverCanManage[i].loadTimeCount = 0;
          __disable_irq();
          msgCount = g_driverCanManage[i].loadMsgCount;
          g_driverCanManage[i].loadMsgCount = 0;
          __enable_irq();
         /*if(i==0)
          {
            TBOX_PRINT("can load %d \r\n",msgCount);
          }        */
          if(msgCount>300)
          {
              g_driverCanManage[i].loadHighFlag = 1;
          }
          else
          {
              g_driverCanManage[i].loadHighFlag = 0;
          }
      }
  }
 //
  cycleTimeCount += cycleTime_ms;
  if(cycleTimeCount>=100)
  { 
    return;
  }
  cycleTimeCount = 0;  
  for(i=1;i<CAN_CHANNEL_NUMBER_MAX;i++)
  {
    if(g_CanBusOffProcessFlag[i])
    {
      if(CanControllerBusOffError(i)==0)
      {    
        if(g_driverCanManage[i].busOffCount<100)
        {
          g_driverCanManage[i].busOffCount++;
        }
        CanControllerReset(i); 
        g_driverCanManage[i].busErrorAppDiableFlag = 0x00;
      }   
      if(g_driverCanManage[i].busOffCount>=4)
      {
        if(busOffEvent[i]==0x00)
        {
          busOffEvent[i]=0x01;
          if(g_driverCanManage[i].busOffEventFun!=NULL)
          {
            g_driverCanManage[i].busOffEventFun(0x01);
          } 
        }
      }
      else
      {
        if(busOffEvent[i]==0x01)
        {
          busOffEvent[i]=0x00;
          if(g_driverCanManage[i].busOffEventFun!=NULL)
          {
            g_driverCanManage[i].busOffEventFun(0x00);
          } 
        }
      }             
    }      
  }

}

void CanHalSetCanTestMode(uint8_t canChannel,uint8_t modeFlag)
{
  if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
  {
    return ;
  }
  g_canTestModeFlag[canChannel] = modeFlag;
}

static void CanMsgDispatch(CanHalMsg_t* pMsg,CanBufferHal_t *pCanDriverBuffer,uint16_t maxCanInstanse)
{
  uint16_t i;
  uint8_t data;
  uint8_t extended;
  uint32_t canId;
  
  extended = (pMsg->canId>>31)&0x01;
  canId = pMsg->canId&0x7FFFFFFF;

  for(i=0;i<maxCanInstanse;i++)
  {
    if((0==pCanDriverBuffer[i].enableSendLoopBack)&&pMsg->txFlag)
    {
      continue;
    }
    if(pCanDriverBuffer[i].pFilerFun!=NULL)//ע��,����m_netManageSgmwGWConfigure[]��wakeUPMsgCheckFun,����EcanWakeupMsgCheck
    {                                      //�����ǿ��յ���CAN��ID�Ƿ���g_canWakeMsgList[],�ڵĻ�����0,�˳�ѭ��;���򷵻�1
      if(pCanDriverBuffer[i].pFilerFun(pMsg->canId,pMsg->canData,pMsg->dlc)!=0)
      {
        continue;
      }
    }
    else
    {
        if(extended)
        {
          //filter process
            if(pCanDriverBuffer[i].filter.useExdtFilter)
            {
              if(canId<pCanDriverBuffer[i].filter.canIdExtdMin)
              {
                continue;
              }
              if(canId>pCanDriverBuffer[i].filter.canIdExtdMax)
              {
                continue;
              }
            }
            else
            {
              continue;
            }
        }
        else//��׼CAN ID
        {
            if(pCanDriverBuffer[i].filter.useStdFilter)
            {
              if(canId<pCanDriverBuffer[i].filter.canIdStdMin)
              {
                continue;
              }
              if(canId>pCanDriverBuffer[i].filter.canIdStdMax && canId != 0x782)
              {
                continue;
              }
            }
            else
            {
              continue;
            }
        }
    }
    
    //dispatch data
    if(pCanDriverBuffer[i].CanUseFlag)
    {   
          if(pCanDriverBuffer[i].CanUseFlag)
          {
            pCanDriverBuffer[i].CanRxFlag = 1;
          }
          if(pCanDriverBuffer[i].pMsgBufferRx==NULL)//
          {
               continue;
          }
          memcpy(&(pCanDriverBuffer[i].pMsgBufferRx[pCanDriverBuffer[i].msgRxIndexIn]),pMsg,sizeof(CanHalMsg_t));//���յ��ı���
          data = pCanDriverBuffer[i].msgRxIndexIn;
          pCanDriverBuffer[i].msgRxIndexIn++;
          if(pCanDriverBuffer[i].msgRxIndexIn>=pCanDriverBuffer[i].msgRxBufferSize)
          {
               pCanDriverBuffer[i].msgRxIndexIn = 0;
          }            
          xQueueSend(pCanDriverBuffer[i].RxQueueHandle, &data,0);        
    }		
  }
}

void CanHalReceiveTask( void *pvParameters )
{
  uint8_t canChannel;
  uint8_t msgIndex;
  CanHalMsg_t canMsg; 
  uint16_t queueData;
  
  g_allCanRxBuffer.msgRxIndexIn = 0;
  g_allCanRxBuffer.rxQueueHandle = xQueueCreate( ALL_CAN_RX_BUFFER_SIZE, // The number of items the queue can hold.
                            sizeof(uint16_t));
  
  while(1)
  {
    if(xQueueReceive(g_allCanRxBuffer.rxQueueHandle, &queueData, 0xFFFFFFFF)!= pdPASS)
    {
      continue;
    }
    canChannel = queueData>>8;
    msgIndex = queueData&0xFF;      
    //receive from can interrupt 
    memcpy(&canMsg,&(g_allCanRxBuffer.msgRxBuffer[msgIndex]),sizeof(CanHalMsg_t));
 
    if(canChannel<CAN_CHANNEL_NUMBER_MAX)
    {
      //can message dispatch  to app task
      /*if(2==canChannel)
      {
        m_testCount++;
      }*/
      //ע��:�Ƚ��ж����յ��ı��Ĵ���g_allCanRxBuffer.msgRxBuffer[],���ö��з��ͽ�ͨ����,msgIndex����,���н��պ󽫱�������->canMsg
      CanMsgDispatch(&canMsg,g_CanDriverBufferList[canChannel],CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX);
    }
    else 
    {
      //TBOX_PRINT("can channel error\r\n");
    }      
  }
}

void CanHalTimer1msCallBack(void)
{
  uint8_t i;
  //volatile pstc_canfd_type_t pstCanType = NULL;  
    // get can type
    
  for(i=0;i<CAN_CHANNEL_NUMBER_MAX;i++)
  {      
    if(g_driverCanManage[i].txStartTimeCount<10000000)
    {
      g_driverCanManage[i].txStartTimeCount++;
    }
  } 
}

int16_t CanHalResetHardware(int16_t canHandle)
{
    uint8_t canChannel;
    if(canHandle<0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    //CanControllerReset(canChannel);
    g_driverCanManage[canChannel].BusErrorState = 0x00;
    return 0;
}

void CanHalEnableCanWakeup(uint8_t canChannel)
{
    
}


