/*
 * BswM_Ext.c
 *
 *  Created on: 20260111
 *      Author: PTAH
 */
#include "BswM.h"
#include "BswM_Ext.h"
#include "EcuM_Cbk.h"
#include "EcuM_Externals.h"
#include "Can_GeneralTypes.h"
#include "Com.h"
#include "Dem.h"
#include "BswM_Ext.h"
#include "Dio.h"
#include "Can.h"
#include "BswM_EcuM.h"
#include "Rte_EcuM.h"
#include "PowManager.h"

#include "powerManageSdk.h"

// void BswM_WakeupSourcePending(void)
// {
//     //Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
//     //Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_WAKEUP);
//     //Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);
// }

void WakeupSource_Validated(void)
{
    
    if(Mcu_WakeSource.Can_WakeFlag == TRUE)
    {
        /* code */
        APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_CAN1);
    }
    // else if (Mcu_WakeSource.KL30_WakeFlag == TRUE)
    // {
    //     /* code */
    //     APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_KL30);
    // }
    else if(Mcu_WakeSource.NAD_WakeFlag == TRUE)
    {
        /* code */
        APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_MPU);
    }
    // else if (Mcu_WakeSource.Crash_WakeFlag == TRUE)
    // {
    //     /* code */
    //     APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_CRASH);
    // }
    else if(Mcu_WakeSource.Ecall_WakeFlag == TRUE)
    {
        /* code */
        APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_ECALL);
    }
    // else if (Mcu_WakeSource.Imu_Int1_WakeFlag == TRUE)
    // {
    //     /* code */
    //     APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_GSENSOR);
    // }
    // else if(Mcu_WakeSource.Imu_Int2_WakeFlag == TRUE)
    // {
    //     /* code */
    //     APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_GSENSOR);
    // }
    else if (Mcu_WakeSource.Rtc_WakeFlag == TRUE)
    {
        /* code */
        APP_SetWakeupSource(PM_HAL_WAKEUP_SOURCE_MCURTC);
    }
    else
    {

    }
          
    APP_WakeupNotified = TRUE; /* WakeupSource has been notified to APP by calling the APP_SetWakeupSource*/
    BswM_RequestMode(RPort_CanNMIndi_1,COND_NM_NOALLOWED_SLEEP);//manually add     
    BswM_EcuM_CurrentWakeup(EcuMWakeupSource_CAN,ECUM_WKSTATUS_EXPIRED);
    BswM_EcuM_CurrentWakeup(EcuMWakeupSource_Local,ECUM_WKSTATUS_EXPIRED);
}
extern  uint8 validNmMsgFlag;
void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN(void)
{
    EcuM_ClearWakeupEvent(EcuMWakeupSource_CAN);
    EcuM_ClearWakeupEvent(EcuMWakeupSource_Local);
    
    validNmMsgFlag = FALSE;
    Mcu_WakeSource.Can_WakeFlag = FALSE;
	Mcu_WakeSource.KL30_WakeFlag = FALSE;
	Mcu_WakeSource.NAD_WakeFlag = FALSE;
	Mcu_WakeSource.Crash_WakeFlag = FALSE;
	Mcu_WakeSource.Ecall_WakeFlag = FALSE;
	Mcu_WakeSource.Imu_Int1_WakeFlag = FALSE;
	Mcu_WakeSource.Imu_Int2_WakeFlag = FALSE;
	Mcu_WakeSource.Rtc_WakeFlag = FALSE;
}
void Act_Bsw_Allow_GoDown_Function(void)
{
    APP_GotoSleep();
}
