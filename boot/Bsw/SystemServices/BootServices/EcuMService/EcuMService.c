/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : EcuM.c
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : zhongliang.Yang
************************************************************************************************
*   Description     :
*
************************************************************************************************
*   Limitations     : None
*
************************************************************************************************
*
************************************************************************************************
*   Revision History:
*
*   Version     Date          Initials           CR#         Descriptions
*   --------    -----------   ----------------   --------    -----------------------
*   1.0         2018/05/29    zhongliang.yang    N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "CanTp.h"

//#include "Adc.h"
//#include "Adc_Ipw_Types.h"
//#include "OsIf.h"
#include "Dio.h"
//#include "Gpt.h"
//#include "Mcl.h"
#include "Mcu.h"
//#include "Platform.h"
#include "Port.h"
//#include "Spi.h"
#include "Can.h"
#include "SecM.h"
#include "BootM.h"
#include "Diag_Callout.h"
//#include "Drv_Tja1463_Hw.h"
//#include "cdd_drv_fs45.h"
//#include "Wdg_43_Instance0.h"
#include "Wdg_59_DriverB.h"
//#include "WdgIf_Types.h"
//#include "Uart.h"
//#include "menu.h"
//#include "iohwab.h"
//#include "cdd.h"
#include "EEIf.h"
#include "DIDReadWrite.h"
/***************************************************************************************************
*                                 INTERNAL FUNCTION PROTOTYPES
***************************************************************************************************/
static void Mcal_Init(void);
//static void CDD_Init(void);
static void Service_Init(void);
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Mcal_Init
*
* Description   : This function is used to initialize mcal drivers.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Mcal_Init(void)
{
    /* Initialize the Port pins */
    Port_Init(PortConfigSet0);

    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_EN_Pin0_12, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6, STD_HIGH);

    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3, STD_HIGH);

    //WDG初始化
    Wdg_59_DriverB_Init(WdgSettingsConfig);

    /* Initializing memory storage driver */
    EEIf_Init();

    /* 初始化安全启动模块 */
    SecureBoot_Init();
    
   /* Initialize CAN Driver */
    Can_Init(CanConfigSet0);
    Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Service_Init
*
* Description   : This function is used to a) decide whether the program stays in boot and b)
*                 initialize boot services if the program stays in boot.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void Service_Init(void)
{
    uint8 flag = 0;
    /* Initialize canTp */
    CanTp_Init(NULL_PTR);
    /* Get flag */
    flag = BootM_GetFlag();
    /* Initializing Security Module */
    SecM_Init();
    /* Initialize dcm */
    Dcm_Init();
    /* Perform the next action based on the flag */
    BootM_FlagHandle(flag);

}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EcuM_Init
*
* Description   : This function is used to initialize program.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void EcuMService_Init(void)
{
    /* Initializes the Microcontroller Abstraction Layer */
    Mcal_Init();
    /* Initializes the Complex Drivers */
   // Cdd_Init();
    /* Initializes the boot services */
    Service_Init();
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EcuM_DeInit
*
* Description   : This function is used to deinitialize the specified drivers.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void EcuMService_DeInit(void)
{
    //    MCU_DeInit();

   /*dev DeInit*/
 //   Gpt_StopTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration_0);
   // Gpt_DeInit();
   /*module DeInit*/
  //  Drv_TJA1443_Hw_Sleep();
      Can_SetControllerMode(CanConf_CanController_CanController,CAN_T_STOP);
  //     Can_DeInit();
      SuspendAllInterrupts();
   // Can_SetControllerMode(CanController_CAN1,CAN_CS_STOPPED);
 //   FS65_CAN_SetMode(fs65CanModeSleepNoWakeup, false);

 //   Can_DeInit();
 //   Mcl_DeInit();
   //MCU_DeInit();
}
