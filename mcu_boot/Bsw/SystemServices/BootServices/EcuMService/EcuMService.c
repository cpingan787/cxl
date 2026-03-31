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
		/* Initializes the Port Driver module */
	//   Port_Init(NULL_PTR);
	   /* MCU driver initialization */
	//    Mcu_Init(&Mcu_Config);
	    /* MCU driver clock initialization */
	//    Mcu_InitClock(McuClockSettingConfig_A_HighPerf);
	    /* Busy wait until the System PLL is locked */
	//    while (MCU_PLL_LOCKED != Mcu_GetPllStatus());
	    /* Activates the PLL clock to the MCU clock distribution */
	//    Mcu_DistributePllClock();
	    /* Sets the MCU power mode */
	//    Mcu_SetMode(McuModeSettingConf_Run);
	    /* Initializes the platform settings based on user configuration */
	//    Platform_Init(NULL_PTR);
	    /* GPT driver initialization */
	//    Gpt_Init(&Gpt_Config);
	    /* GPT driver function for enabling the notification for a timer channel */
	//    Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration_0);
	    /* GPT driver function for starting a timer channel */
	//    Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration_0,40*1000); /* 1ms = 40M/(40*1000) */
	//    Uart_Init(&Uart_xConfig);
	    /* Sets the level of a channel. */
	//    Dio_WriteChannel(DioConf_DioChannel_PG3, STD_HIGH);
	    /* Enable peripheral power supply for deepway hardware -- by smx*/
	//    Dio_WriteChannel(DioConf_DioChannel_DioChannel_PC17, STD_HIGH);
	//    Menu_Init();
	//    IoHwAb_Init();
	    /* Initialize the CAN driver */
	//    Can_Init(&Can_Config);
	//    Spi_Init(&Spi_Config);
	    /* Put the controller into a started state */
	//	Can_SetControllerMode(0,CAN_CS_STARTED);
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
    /* Initializing memory storage driver */
    EEIf_Init();
    /* Get flag */
    flag = BootM_GetFlag();
    /* Initializing Security Module */
    //SecM_Init();
    /* Initialize canTp */
    CanTp_Init(NULL_PTR);
    /* Initialize dcm */
    Dcm_Init();
    /* SBC Initialization */
 //   drvFs45_Init();
    /* Perform the next action based on the flag */
    BootM_FlagHandle(flag);
    /* Initializes the WDG module */
   // Wdg_43_Instance0_Init(&Wdg_Config_0);
    /* Switches the watchdog into the mode Mode */
   // Wdg_43_Instance0_SetMode(WDGIF_SLOW_MODE);
    /* set the watchdog timeout counter according to the timeout value passed */
   // Diag_WdgFeed();
   // DID_Init();

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
