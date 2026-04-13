#include "taskEcallProcess.h"
// #include "taskPowerManage.h"
// //#include "vehicleSignalApp.h"
// //#include "ecuNodeMissingCheck.h"

// //#include "FreeRTOS.h"
// //#include "semphr.h"
// //#include "queue.h"
// //#include "task.h"

#include "logHal.h"
// #include "string.h"
// //#include "taskDtcProcess.h"

#include "alarmSdk.h"
// #include "batterySdk.h"
// #include "autosarNmSdk.h"
#include "mpuPowerSyncSdk.h"
// #include "stateSyncSdk.h"

#include "peripheralHal.h"
// #include "powerManageSdk.h"
// //#include "projectConfigure.h"
// #include "powerManageHal.h"
#include "osHal.h"
#include "canParseSdk.h"
#include "Com_Cfg.h"
#include "Com.h"
#include "taskDtcProcess.h"
// ecall process cycle definition
#define ECALL_PROCESS_CYCLE_TIME          10 //ms

#define SOS_KEY_DEBANCE_TIME    ( 100 )                         /*按键消除去抖动的时间*/
#define SOS_KEY_PRESS_MIN_TIME  ( 3000 )                         /*按键被按下最短时间*/
#define SOS_KEY_PRESS_MAX_TIME  ( 10000 )                        /*按键被按下最长时间*/
#define SOS_KEY_RELEASED_TIME   ( 4000 )                        /*按键被释放的时间*/

#define SOS_KEY_ECALL_TEST_TIME ( 10000 )                       /*按键ECALL测试模式的时间*/
#define SOS_KEY_RESET_TBOX_TIME ( 25000 )                       /*按键复位TBOX的时间*/    
#define SOS_KEY_HARD_FAULT_TIME ( 20000 )                       /*按键硬件故障的时间*/    


static SosLledState_e g_SosLedState;        /*SOS LED灯闪烁状态*/
static SosButtonClickMsg_t g_SosButtonClickMsg;      /*按键时间*/
static uint8_t selfCheckStatusPrintFlag = 0;

static const uint8_t g_CanSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_INTEL;


static ECallSendCan_t g_EcallSendCanList[3] =
{
    {E_EMGC_CALL_TRIGD, 0, 0,IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx},//0x36A ecall 通话状态
    {E_EMGC_CALL_FLR_STATUS, 0, 0,IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx},//0x36A ecall 故障状态
    {E_ECALL_SYS_STATUS, 0, 0,IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx},//0x1F8 ecall 系统状态
};
#define EcallSendCanListSize (sizeof(g_EcallSendCanList)/sizeof(ECallSendCan_t))

void SetEcallSendSignalInit(EcallSendCan_e ecallSendCanItem,uint8_t enbaleStatus)
{
    uint8_t i = 0;
    switch(ecallSendCanItem)
    {
        case E_EMGC_CALL_TRIGD:
            g_EcallSendCanList[E_EMGC_CALL_TRIGD].ecallSendCanEnable = enbaleStatus;
            break;
        case E_EMGC_CALL_FLR_STATUS:
            g_EcallSendCanList[E_EMGC_CALL_FLR_STATUS].ecallSendCanEnable = enbaleStatus;
            break;
        case E_ECALL_SYS_STATUS:
            g_EcallSendCanList[E_ECALL_SYS_STATUS].ecallSendCanEnable = enbaleStatus;
            break;
        default:
            for (i = 0; i < EcallSendCanListSize; i++)
            {
                g_EcallSendCanList[i].ecallSendCanEnable = enbaleStatus;
            }
            break;
    }
}
void SetEcallSendSignal(EcallSendCan_e ecallSendCanItem, uint8_t ecallSendCanData)
{
    uint8_t i = 0;
    for(i = 0; i < EcallSendCanListSize; i++)
    {
        if (g_EcallSendCanList[i].ecallSendCanItem == ecallSendCanItem)
        {
            if (g_EcallSendCanList[i].ecallSendCanEnable == 1)
            {
                Com_SendSignal(g_EcallSendCanList[i].ecallSendCanSignal, &ecallSendCanData);
            }
        }
    }
}
// static uint8_t g_ECALLIsWorking = 0;
static uint8_t g_SendECALLLog[21] = {0};
void EcallLogReport(uint8_t startByte,uint8_t *data,uint8_t len)
{
    memcpy((g_SendECALLLog+startByte),data,len);
}

/** ****************************************************************************
* @remarks       static void SetSosLedState( ecall_led_flash_e st )
* @brief         设置SOS led灯显示的状态
* @param[in]     st led flash 显示状态
* @param[out]    无
* @return        无
* @attention     无
*******************************************************************************/
static void SetSosLedState( SosLledState_e st )
{
    g_SosLedState = st;
}

/** ****************************************************************************
* @remarks       SosLledState_e GetSosLedState( void )
* @brief         获取SOS led灯显示的状态
* @param[in]     无
* @param[out]    无
* @return        LED显示的状态
* @attention     无
*******************************************************************************/
SosLledState_e GetSosLedState( void )
{
    return g_SosLedState;
}

/** ****************************************************************************
* @remarks       static void SosLedControlProcess(void)
* @brief         SOS led闪烁控制函数
* @param[in]     flash LED灯闪烁方式
* @param[out]    无
* @return        无
* @attention     无
*******************************************************************************/
static void SosLedControlProcess(void)
{
    SosLledState_e sos_led_msg;
    static uint32_t ledTime = 0;
    uint8_t sosLedStatus = 0;
    uint8_t sosquueStatus = 0;

    sosLedStatus = GetSosLedState();
    if(ledTime != 0)
    {
        ledTime--;
        if(ledTime == 0)
        {
            if((sosLedStatus== E_SOS_LED_STATE_END_CALL) || (sosLedStatus== E_SOS_LED_STATE_END_CALL_ABNORM) 
            || (sosLedStatus== E_SOS_LED_STATE_SEND_MSD_FAIL) || (sosLedStatus== E_SOS_LED_STATE_SEND_MSD_SUCC))
            {
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 200 , 800 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_KEEP_ON , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_NO_ECALL );
            }
        }
    }

    if( EcallHalSosLedControlReceive( &sos_led_msg, 0) == pdPASS )
    {
        switch( sos_led_msg )
        {
            case E_SOS_LED_STATE_IN_CALL:         /*ECALL拨号中LED状态指示灯*/
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 200 , 800 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_IN_CALL );
            break;
            case E_SOS_LED_STATE_INCOMMING:          /* */
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 0 , 0 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_SEND_MSD );
            break;
            case E_SOS_LED_STATE_SEND_MSD:          /* */
            case E_SOS_LED_STATE_DURING_CALL:         /*ECALL正在通话中*/
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 800 , 200 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_DURING_CALL );
            break;
            case E_SOS_LED_STATE_END_CALL:          /*ECALL事件结束 */
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 0 , 0 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_KEEP_ON , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_END_CALL );
                ledTime = 2*1000/ECALL_PROCESS_CYCLE_TIME; 
                //SetECALLWorkingState(0);
            break;
            case E_SOS_LED_STATE_END_CALL_ABNORM:          /*ECALL异常事件结束 */
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 500 , 500 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_END_CALL_ABNORM );
                //ledTime = 1*1000/ECALL_PROCESS_CYCLE_TIME;
                //SetECALLWorkingState(0);
            break;
            case E_SOS_LED_STATE_SEND_MSD_SUCC:          /*ECALL */
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 0 , 0 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_SEND_MSD_SUCC );
                ledTime = 1*1000/ECALL_PROCESS_CYCLE_TIME; 
            break;
            case E_SOS_LED_STATE_SEND_MSD_FAIL:          /*ECALL */
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 500 , 500 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_SEND_MSD_FAIL );
                ledTime = 1*1000/ECALL_PROCESS_CYCLE_TIME;
            break;

            /************************************************************************/
            case E_SOS_LED_STATE_SELFCHECK_ERR:      /*设备自检异常*/
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_ON , 200 , 1800 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 1000 , 1000 );
                SetSosLedState( E_SOS_LED_STATE_SELFCHECK_ERR );
            break;
            case E_SOS_LED_STATE_SELFCHECK_ERR_HEAVY:         /*初始化LED状态指示灯*/
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_KEEP_OFF , 500 , 500 );
                SetSosLedState( E_SOS_LED_STATE_SELFCHECK_ERR_HEAVY );
            break;
            case E_SOS_LED_STATE_SELFCHECK_ON:           /*设备自检*/
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 0 , 0 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_FLASH , 250 , 250 );
                SetSosLedState( E_SOS_LED_STATE_SELFCHECK_ON );
            break;
            case E_SOS_LED_STATE_NO_ECALL:
                //EcallHalSetSosLedMode( E_ECALL_LED_RED, E_ECALL_LED_MODE_KEEP_OFF , 200 , 800 );
                EcallHalSetSosLedMode( E_ECALL_LED_GREEN, E_ECALL_LED_MODE_KEEP_ON , 1000 , 1000 );
                SetSosLedState( E_SOS_LED_STATE_NO_ECALL );
                //SetECALLWorkingState(0);
                break;
            default:
            break;
        }
    }
}

static uint8_t SosButtonPressAction( uint32_t presstime, uint8_t* saveBtnState, SosLledState_e* saveLedState)
{
    uint8_t btnState;
    SosLledState_e ledState;
    SosLledState_e ledStateDebug = E_SOS_LED_STATE_INIT;

    btnState = *saveBtnState;
    ledState = *saveLedState;

    if( presstime >= SOS_KEY_HARD_FAULT_TIME )
    {
        if(btnState == 2)
        {
            btnState = 3;
            //ledState = GetSosLedState();
            // EcallHalSosLedControlSend( E_SOS_LED_STATE_WARNING );
            g_SosButtonClickMsg.hardFault = 1;
            //SetDtcFaultState(E_DTC_ITEM_ECALL_BUTTON_FAULT);
        }
    }
    else if( presstime >= SOS_KEY_RESET_TBOX_TIME )
    {
        if(btnState == 1)
        {
            btnState = 2;
            //ledStateDebug = GetSosLedState();
            //EcallHalSosLedControlSend( ledState );
        }
    }
    else if( presstime >= SOS_KEY_ECALL_TEST_TIME )
    {
        if(btnState == 0)
        {
            btnState = 1;
            //ledState = GetSosLedState();
            //EcallHalSosLedControlSend( E_SOS_LED_STATE_WARNING );
        }
    }

    *saveBtnState = btnState;
    *saveLedState = ledState;

    return 0;
}

static uint8_t SosButtonReleaseAction( uint32_t presskeeptime, SosButtonState_e *st )
{
    SosButtonState_e SosButtonState = *st;
    TBOX_PRINT("SosButtonReleaseAction presskeeptime = %d\r\n", presskeeptime);
    EcallLogReport(7,&presskeeptime,sizeof(presskeeptime));
    if( presskeeptime >= SOS_KEY_HARD_FAULT_TIME )
    {
        TBOX_PRINT("SOS button is hard fault, Into idle mode: [E_SOS_BUTTON_STATE_IDLE]\r\n");
        SosButtonState = E_SOS_BUTTON_STATE_IDLE;
        memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        //ClearDtcFaultState(E_DTC_ITEM_ECALL_BUTTON_FAULT);
    }
    else if( presskeeptime >= SOS_KEY_RESET_TBOX_TIME )
    {
        TBOX_PRINT("SOS button reset tbox\r\n");
        MpuHalPowerOff();
        //vTaskDelay(100);
        PeripheralHalMcuHardReset();
    }
    else if( presskeeptime >= SOS_KEY_ECALL_TEST_TIME )
    {
        // AlarmSdkEcallTriger(E_ECALL_TRIGGER_TEST_MODE);
        // EcallHalSetVehicleMute(1);
         TBOX_PRINT("SOS button triggers the test mode, Into idle mode : [E_SOS_BUTTON_STATE_IDLE]\r\n");
         SosButtonState = E_SOS_BUTTON_STATE_IDLE;
         memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
    }
    else if(( presskeeptime >= SOS_KEY_PRESS_MIN_TIME ) && ( presskeeptime <= SOS_KEY_PRESS_MAX_TIME ))
    {
        g_SosButtonClickMsg.releasedTime = xTaskGetTickCount();
        SosButtonState = E_SOS_BUTTON_STATE_RELEASED;
    }
    else
    {
        SosButtonState = E_SOS_BUTTON_STATE_IDLE;
    }

    *st = SosButtonState;

    return 0;
}

/** ****************************************************************************
* @remarks       static void SosButtonDetection( void )
* @brief         SOS 按键信号周期性处理
* @param[in]     无
* @param[out]    无
* @return        pdPASS 成功，pdFAIL 失败
* @attention     无
*******************************************************************************/
static void SosButtonDetection( void )
{
    uint32_t key_time = 0;
    static SosLledState_e ledState = E_SOS_LED_STATE_INIT;
    static uint8_t btnState = 0;
    static SosButtonState_e SosButtonState = E_SOS_BUTTON_STATE_IDLE;

    if( SosButtonState == E_SOS_BUTTON_STATE_IDLE )            /*检测按键*/
    {
        if( EcallHalGetSosButtonStatus() == 1 )
        {
            g_SosButtonClickMsg.clickTime = xTaskGetTickCount();
            SosButtonState = E_SOS_BUTTON_STATE_CLICK;
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_CLICK )            /*按键去抖*/
    {
        if( EcallHalGetSosButtonStatus() == 1 )
        {
            g_SosButtonClickMsg.pressTime = xTaskGetTickCount();
            key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, g_SosButtonClickMsg.clickTime );
            if( key_time >= SOS_KEY_DEBANCE_TIME )
            {
                SosButtonState = E_SOS_BUTTON_STATE_PRESS;           /*按键确认被按下*/
                TBOX_PRINT("SOS button is confirmed to be pressed : [E_SOS_BUTTON_STATE_PRESS]\r\n", 0);
            }
        }
        else
        {
            TBOX_PRINT("SOS button jitters, Into idle mode : [E_SOS_BUTTON_STATE_IDLE]\r\n");
            SosButtonState = E_SOS_BUTTON_STATE_IDLE;
            memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_PRESS )           /*按键确认被按下*/
    {
        g_SosButtonClickMsg.pressTime = xTaskGetTickCount();
        if( EcallHalGetSosButtonStatus() == 1 )
        {
            key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, g_SosButtonClickMsg.clickTime );
            SosButtonPressAction(key_time, &btnState, &ledState);
        }
        else
        {
            btnState = 0;
            //EcallHalSosLedControlSend( ledState );
            key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, g_SosButtonClickMsg.clickTime );
            SosButtonReleaseAction(key_time, &SosButtonState);
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_RELEASED )
    {
        g_SosButtonClickMsg.releasedTime = xTaskGetTickCount();
        if( EcallHalGetSosButtonStatus() == 1 )
        {
        //     g_SosButtonClickMsg.cancelTime = xTaskGetTickCount();
        //     key_time = osElapsedTimeGet( g_SosButtonClickMsg.cancelTime, g_SosButtonClickMsg.pressTime );
        //     if( key_time >= SOS_KEY_DEBANCE_TIME )
        //     {
        //         key_time = osElapsedTimeGet( g_SosButtonClickMsg.releasedTime, g_SosButtonClickMsg.pressTime );
        //         if( key_time < SOS_KEY_RELEASED_TIME )                  /*规定时间内再次按压按键进行取消*/
        //         {
        //             SosButtonState = E_SOS_BUTTON_STATE_CANCELLED;
        //         }
        //     }
        }
        else
        {
            // key_time = osElapsedTimeGet( g_SosButtonClickMsg.releasedTime, g_SosButtonClickMsg.pressTime );
            // if( key_time >= SOS_KEY_RELEASED_TIME )                     /*触发按键成功*/    // TODO guanyuan confirm requirement
            // {
                AlarmSdkEcallTriger(E_ECALL_TRIGGER_BTN_MANN);
                SetEcallSendSignal(E_ECALL_SYS_STATUS,1);
                //EcallHalSetVehicleMute(1);
                SosButtonState = E_SOS_BUTTON_STATE_IDLE;
                memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
                //SetECALLWorkingState(1);
            // }
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_CANCELLED )
    {
        if( EcallHalGetSosButtonStatus() == 0 )
        {
            TBOX_PRINT("SOS button is released, Into idle mode: [E_SOS_BUTTON_STATE_IDLE]\r\n");
            SosButtonState = E_SOS_BUTTON_STATE_IDLE;
            memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        }
    }
    //if(SosButtonState != E_SOS_BUTTON_STATE_IDLE)
    //  TBOX_PRINT("SOS state %d\r\n",SosButtonState);
}

/*********************************** 系统自检 *****************************************************/
static uint8_t gkl30Status = 0;
void SetKL30Status(uint8_t status)
{
    gkl30Status = status;
}
// 通用正常判断：0=无错误码，1=错误码
// 输出：1=正常，0=异常
static uint8_t isNormalDefault(uint8_t v) {
    return (v == 0U) ? 1 : 0;
}

// SOS专用输入：0=正常 1=短路  2=卡滞；
// 输出：1=正常，0=异常
static uint8_t isNormal_SOS(uint8_t v) {
    if (v == 0U) return 1;
    else if (v == 1U) return 0;
    else if (v == 2U) return 0;
    else return 0;
}

// 检测短路开路专用输入：0=正常  1=短路  2=开路；
// 输出：1=正常，0=异常
static uint8_t isNormal_OpenOrShort(uint8_t v) {
    if (v == 0U) return 1;
    else if (v == 1U) return 0;
    else if (v == 2U) return 0;
    else return 0;
}

// 通用日志
static void logError_Gen(uint8_t raw, uint8_t faultId) {
    uint8_t log[2] = {faultId, raw};
    AlarmSdkLogReport(log, 2);
}

// ===================== 硬件读取 =====================
static uint8_t getMPU(void) {
    return (MpuPowerSyncSdkGetNadModuleStatus() == 0) ? 0 : 1;
}

static uint8_t getBattery(void) {
    //return (BatterySdkGetBatteyStatus() == 1) ? 0 : 1;
    return 0;
}

static uint8_t getSosButton(void) 
{
    uint32_t ANT_Value = 0;

    /* ECALL BUTTON*/
    PeripheralHalAdGet(AD1_CHANNEL_ECALL_BUTTON_ADC, &ANT_Value);
    if(ANT_Value >= 3300)//对电源短路，短路电压大于3.3V
    {
        return 1;
    }
    else if(g_SosButtonClickMsg.hardFault == 1)//按键卡滞
    {
        return 2;
    }
    else
    {
        return 0;
    }
}

static uint8_t getAntMain(void) 
{
    uint32_t main_Value = 0;
    DtcQueryState_e ANT_Value = DtcGetObjState(E_DTC_QUERY_5G_MAIN_ANT);
    uint8_t mainAnt = (uint8_t)ANT_Value;
    EcallLogReport(11,&mainAnt,1);
    if(ANT_Value == E_DTC_QUERY_STATE_OPEN)
    {
        return 1;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_SHORT_GND)
    {
        return 2;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_NORMAL)
    {
        return 0;
    }
}
static uint8_t getAntDiv(void) 
{
    DtcQueryState_e ANT_Value = DtcGetObjState(E_DTC_QUERY_5G_DIV1_ANT);

    if(ANT_Value == E_DTC_QUERY_STATE_OPEN)
    {
        return 1;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_SHORT_GND)
    {
        return 2;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_NORMAL)
    {
        return 0;
    }
}
static uint8_t getAntMimo3(void) 
{
    DtcQueryState_e ANT_Value = DtcGetObjState(E_DTC_QUERY_5G_DIV2_ANT);

    if(ANT_Value == E_DTC_QUERY_STATE_OPEN)
    {
        return 1;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_SHORT_GND)
    {
        return 2;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_NORMAL)
    {
        return 0;
    }
}
static uint8_t getAntMimo4(void) 
{
    DtcQueryState_e ANT_Value = DtcGetObjState(E_DTC_QUERY_5G_DIV3_ANT);

    if(ANT_Value == E_DTC_QUERY_STATE_OPEN)
    {
        return 1;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_SHORT_GND)
    {
        return 2;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_NORMAL)
    {
        return 0;
    }
}
static uint8_t getAntGnss(void) 
{
    DtcQueryState_e ANT_Value = DtcGetObjState(E_DTC_QUERY_GPS_ANT);

    if(ANT_Value == E_DTC_QUERY_STATE_OPEN)
    {
        return 1;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_SHORT_GND)
    {
        return 2;
    }
    else if(ANT_Value == E_DTC_QUERY_STATE_NORMAL)
    {
        return 0;
    }
}
static uint8_t getMIC(void) {
    DtcQueryState_e MIC_Value = DtcGetObjState(E_DTC_QUERY_MIC_IN);

    if(MIC_Value == E_DTC_QUERY_STATE_OPEN)
    {
        return 1;
    }
    else if(MIC_Value == E_DTC_QUERY_STATE_SHORT_GND)
    {
        return 2;
    }
    else if(MIC_Value == E_DTC_QUERY_STATE_NORMAL)
    {
        return 0;
    }
}

/**
 * @breif 获取喇叭状态
 * @retval 0=正常 1=异常
 */
static uint8_t getSpeaker(void) {
    //return (EcallHalGetAmpFaultStatus() == 1) ? 0 : 1;
    return 0;
}

static uint8_t getSIMCard(void) {
    
    return 0;
}
// 去抖状态机
typedef enum {
    DEB_STATE_NORMAL          = 0U,   // 稳定正常
    DEB_STATE_FAULT_DEBOUNCING= 1U,   // 故障去抖中
    DEB_STATE_FAULT           = 2U,   // 稳定故障
    DEB_STATE_RECOVER_DEBOUNCING= 3U  // 恢复去抖中
} DebounceStateEnum;

// 函数指针
typedef uint8_t (*GetRawFunc)(void);                  // 读取硬件原始值
typedef uint8_t (*IsNormalFunc)(uint8_t);             // 判断是否正常(1=正常,0=异常)
typedef void    (*SetAlarmFunc)(uint8_t, uint8_t);    // 设置报警
typedef void    (*LogErrorFunc)(uint8_t, uint8_t);    // 错误日志

// 自检项结构体
typedef struct {
    // 配置项
    uint8_t             faultId;
    uint8_t             faultThreshold;
    uint8_t             recoverThreshold;
    GetRawFunc          getRaw;
    IsNormalFunc        isNormal;
    SetAlarmFunc        setAlarm;
    LogErrorFunc        logError;

    // 运行态
    DebounceStateEnum   state;
    uint8_t             rawCache;
    uint8_t             faultCnt;
    uint8_t             recoverCnt;
} SelfCheckItem_t;
// 自检项配置表
static SelfCheckItem_t s_selfCheckItems[] = {
    { E_NAD_FAULT,          2,      1,     getMPU,       isNormalDefault,       AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_BATTERY_FAULT,      2,      1,     getBattery,   isNormalDefault,       AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_ANT_MAIN_FAULT,     2,      1,     getAntMain,   isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_ANT_DIV_FAULT,      2,      1,     getAntDiv,    isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_MIMO3_FAULT,        2,      1,     getAntMimo3,  isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_MIMO4_FAULT,        2,      1,     getAntMimo4,  isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_ANT_GNSS_FAULT,     2,      1,     getAntGnss,   isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_SOS_FAULT,          2,      1,     getSosButton, isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_MIC_FAULT,          2,      1,     getMIC,       isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_SPEAKER_FAULT,      2,      1,     getSpeaker,   isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
    { E_SIM_CARD_FAULT,     2,      1,     getSIMCard,   isNormalDefault,   AlarmSdkSetMcuSelfcheckResult, logError_Gen },
};

#define SELFCHECK_ITEM_COUNT  (sizeof(s_selfCheckItems)/sizeof(SelfCheckItem_t))
void SelfcheckDebounceInit(void)
{
    for (uint8_t i = 0; i < SELFCHECK_ITEM_COUNT; i++)
    {
        SelfCheckItem_t *item = &s_selfCheckItems[i];
        item->state = DEB_STATE_NORMAL;
        item->rawCache = 0x00;
        item->faultCnt = 0;
        item->recoverCnt = 0;
        item->setAlarm(item->faultId, 0);  // 强制置为正常
    }
}

typedef enum {
    SELFTEST_PASS,      // 所有检测项稳定且正常
    SELFTEST_FAIL,      // 存在稳定故障
    SELFTEST_PENDING    // 还有检测项处于消抖中
} SelfTestResult_t;
/** ****************************************************************************
* @remarks       static uint32_t HardwareSelfcheckResult( void )
* @brief         系统硬件状态自检
* @param[in]     无
* @param[out]    无
* @return        pdPASS 成功，pdFAIL 失败；
* @attention     无
*******************************************************************************/
static SelfTestResult_t HardwareSelfcheckResult( void )
{
    uint8_t rawIsNormal;  

    for (uint8_t i = 0; i < SELFCHECK_ITEM_COUNT; i++)
    {
        SelfCheckItem_t *item = &s_selfCheckItems[i];
        item->rawCache = item->getRaw();
        rawIsNormal = item->isNormal(item->rawCache);

        switch (item->state)
        {
            case DEB_STATE_NORMAL:
                if (rawIsNormal == 0)  // 0=异常
                {
                    item->faultCnt++;
                    if (item->faultCnt >= item->faultThreshold)
                    {
                        item->state = DEB_STATE_FAULT;
                        item->faultCnt = 0;
                        item->setAlarm(item->faultId, item->rawCache);
                        item->logError(item->rawCache, item->faultId);
                    }
                    else
                    {
                        item->state = DEB_STATE_FAULT_DEBOUNCING;
                    }
                }
                break;

            case DEB_STATE_FAULT_DEBOUNCING:
                if (rawIsNormal == 0)
                {
                    item->faultCnt++;
                    if (item->faultCnt >= item->faultThreshold)
                    {
                        item->state = DEB_STATE_FAULT;
                        item->faultCnt = 0;
                        item->setAlarm(item->faultId, item->rawCache);
                        item->logError(item->rawCache, item->faultId);
                    }
                }
                else
                {
                    item->faultCnt = 0;
                    item->state = DEB_STATE_NORMAL;
                }
                break;

            case DEB_STATE_FAULT:
                if (rawIsNormal == 1)  // 1=正常
                {
                    item->recoverCnt++;
                    if (item->recoverCnt >= item->recoverThreshold)
                    {
                        item->state = DEB_STATE_NORMAL;
                        item->recoverCnt = 0;
                        item->setAlarm(item->faultId, 0);
                    }
                    else
                    {    
                        item->state = DEB_STATE_RECOVER_DEBOUNCING;
                    }
                }
                else
                {
                    item->setAlarm(item->faultId, item->rawCache);
                    item->logError(item->rawCache, item->faultId);
                }
                break;

            case DEB_STATE_RECOVER_DEBOUNCING:
                if (rawIsNormal == 1)
                {
                    item->recoverCnt++;
                    if (item->recoverCnt >= item->recoverThreshold)
                    {
                        item->state = DEB_STATE_NORMAL;
                        item->recoverCnt = 0;
                        item->setAlarm(item->faultId, 0);
                    }
                }
                else
                {
                    item->recoverCnt = 0;
                    item->state = DEB_STATE_FAULT;
                }
                break;

            default:
                item->state = DEB_STATE_NORMAL;
                break;
        }
    }
    // 第二遍：根据各检测项的最终状态，综合判断整体自检结果
    uint8_t hasFault = pdFALSE;
    uint8_t hasDebouncing = pdFALSE;

    for (uint8_t i = 0; i < SELFCHECK_ITEM_COUNT; i++)
    {
        SelfCheckItem_t *item = &s_selfCheckItems[i];
        if (item->state == DEB_STATE_FAULT)
        {
            hasFault = pdTRUE;
        }
        else if (item->state == DEB_STATE_FAULT_DEBOUNCING ||
                 item->state == DEB_STATE_RECOVER_DEBOUNCING)
        {
            hasDebouncing = pdTRUE;
        }
        // 其他状态（NORMAL）不影响结果
    }

    if (hasDebouncing == pdTRUE)
    {
        return SELFTEST_PENDING;   // 仍有项在消抖中，结果未稳定
    }
    else if (hasFault == pdTRUE)
    {
        return SELFTEST_FAIL;      // 存在稳定故障项
    }
    else
    {
        return SELFTEST_PASS;      // 所有项均正常且稳定
    }
}

/** ****************************************************************************
* @remarks       static void SelfcheckCycleProcess( void )
* @brief         检测硬件系统的状态
* @param[in]     无
* @param[out]    无
* @return        无
* @attention     无
*******************************************************************************/
static void SelfcheckCycleProcess( void )
{
    #define SYSTEM_CHECK_RUN_TIME	( 80 * 1000 )	    /*硬件上电后连续60秒钟*/
    static uint32_t startTime = 0;
    static uint32_t currTime = 0;
    static uint8_t ecallSatausRequestFlag = 0;

    /*设备自检开始******************************************************/
    switch( AlarmSdkGetSelfcheckState() )
    {
        case E_SELFCHECK_RUN_INIT:
            selfCheckStatusPrintFlag = 0;
            // AlarmSdkSetMcuSelfcheckResult(E_MCU_FAULT_STATUS, 0x00);
            // AlarmSdkSetMpuSelfcheckResult(E_MPU_FAULT_STATUS, 0x00);
            startTime = (uint32_t)xTaskGetTickCount();//RTOS_HalGetTickCount();	
            EcallHalSosLedControlSend(E_SOS_LED_STATE_SELFCHECK_ON); 
            AlarmSdkSetSelfcheckState(E_SELFCHECK_RUN_START);
            TBOX_PRINT("enter E_SELFCHECK_RUN_START\r\n" );
            break;
        case E_SELFCHECK_RUN_START:
            currTime = (uint32_t)xTaskGetTickCount();
            if(( currTime - startTime ) >= SYSTEM_CHECK_RUN_TIME )
            {
                AlarmSdkSetSelfcheckState(E_SELFCHECK_RUN_STOP);
                TBOX_PRINT("timeout enter E_SELFCHECK_RUN_STOP\r\n" );
            }
            else
            {   /*MPU检测时间比较长，当MPU检测成功时快速结束自检*/
                if(MpuPowerSyncSdkGetNadModuleStatus() == 0)
                {
                    AlarmSdkSetSelfcheckState(E_SELFCHECK_RUN_STOP);
                    TBOX_PRINT("recv mpu heartbeat enter E_SELFCHECK_RUN_STOP\r\n" );
                }
            }
            break;
        case E_SELFCHECK_RUN_STOP:
            SelfTestResult_t selfTestresult = HardwareSelfcheckResult();
            uint8_t selfcheckLevel = AlarmSdkGetMcuSelfcheckLevel();

            if( selfTestresult == SELFTEST_PENDING )
            {
                // 自检结果未稳定，保持当前LED状态
                // 不改变状态，等待下一次调用
            }
            else if( selfTestresult == SELFTEST_PASS )                    /*系统硬件状态检测成功*/
            {      
                if(( GetSosLedState() == E_SOS_LED_STATE_SELFCHECK_ON ) || ( GetSosLedState() == E_SOS_LED_STATE_SELFCHECK_ERR ) || ( GetSosLedState() == E_SOS_LED_STATE_SELFCHECK_ERR_HEAVY ))
                {   
                    EcallHalSosLedControlSend( E_SOS_LED_STATE_NO_ECALL );
                }         
            }
            else
            {
                if(( GetSosLedState() == E_SOS_LED_STATE_SELFCHECK_ON ) || ( GetSosLedState() == E_SOS_LED_STATE_NO_ECALL )
                 || ( GetSosLedState() == E_SOS_LED_STATE_SELFCHECK_ERR_HEAVY ) || ( GetSosLedState() == E_SOS_LED_STATE_SELFCHECK_ERR ))
                {
                    if (selfcheckLevel == 2)
                    {
                        EcallHalSosLedControlSend( E_SOS_LED_STATE_SELFCHECK_ERR_HEAVY );
                    }
                    else if (selfcheckLevel == 1)
                    {
                        EcallHalSosLedControlSend( E_SOS_LED_STATE_SELFCHECK_ERR );
                    }
                }
            }
            if (selfTestresult != SELFTEST_PENDING)
            {
                SetEcallSendSignal(E_EMGC_CALL_FLR_STATUS,selfcheckLevel);
            }

            break;
        case E_SELFCHECK_RUN_END:
            
            break;
        default:
            break;
    }
    if(ecallSatausRequestFlag == 0)//仅上电第一次请求
    {
        EcallSatausRequest();//复位后向MPU请求ECALL状态
        ecallSatausRequestFlag = 1;
    }
    else
    {
        
    }
}

/* ==================== 获取稳定的气囊状态 ==================== */
uint8_t EcallHalGetStableAirbagStatus(void)
{
    static uint8_t last_stable_return = 0xff;
    static uint8_t debounce_counter = 0;
    uint8_t current_status = 0xFF;
    uint8_t airbagDplInvsneForeCallValue = 0;
    uint8_t airbagDplForeCallValue = 0;
    /*0x163   AirbagDplForeCall startbit=15  ; AirbagDplInvsneForeCall startbit=14
    * Byte[1]=0xC0  AirbagDplForeCall = 1  AirbagDplInvsneForeCall = 1
    * Byte[1]=0x80  AirbagDplForeCall = 1  AirbagDplInvsneForeCall = 0
    */
    //满足 AirbagDplForeCall == 1 (True) 且 AirbagDplInvsneForeCall == 0 (气囊展开)
    Com_ReceiveSignalGroup(ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx);
    Com_ReceiveSignal(ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,
                        &airbagDplInvsneForeCallValue);   

    Com_ReceiveSignal(ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,
                        &airbagDplForeCallValue);

    EcallLogReport(3,&airbagDplInvsneForeCallValue,1);
    EcallLogReport(4,&airbagDplForeCallValue,1);
    if((airbagDplForeCallValue == 0x01) && (airbagDplInvsneForeCallValue == 0x00))
    {
        current_status = 0x01;
    }
    else
    {
        current_status = 0xFF;
    }

    // 如果是有效状态且与上次返回值不同
    if (current_status != 0xFF && current_status != last_stable_return)
    {
        debounce_counter++;
        // 需要连续多次相同才确认状态变化
        if (debounce_counter >= 3)
        {
            last_stable_return = current_status;
            debounce_counter = 0;
            //TBOX_PRINT("SRS stable status changed to %d\r\n", current_status);
        }
    }
    else
    {
        debounce_counter = 0;
    }
    
    if(last_stable_return == 0xFF)
    {
        return 0;
    }
    else
    {
        return last_stable_return;
    }
}

uint8_t EcallHalGetAdasStatus(void)
{
    static uint8_t last_stable_return = 0xff;
    static uint8_t debounce_counter = 0;
    uint8_t current_status = 0;

    uint8_t launchTelematicsCallValue = 0xFF;

    //Com_ReceiveSignal(ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,&dataVaule);   

    current_status = (uint8_t)launchTelematicsCallValue;

    EcallLogReport(5,&launchTelematicsCallValue,1);
    
    // 如果是有效状态且与上次返回值不同
    if (current_status != 0xFF && current_status != last_stable_return)
    {
        debounce_counter++;
        // 需要连续多次相同才确认状态变化
        if (debounce_counter >= 3)
        {
            last_stable_return = current_status;
            debounce_counter = 0;
            //TBOX_PRINT("SRS stable status changed to %d\r\n", current_status);
        }
    }
    else
    {
        debounce_counter = 0;
    }
    
    if(last_stable_return == 0xFF)
    {
        return 0;
    }
    else
    {
        return last_stable_return;
    }
}

void AirbagSingleProcess(void)
{
    uint8_t airbagSingal = 0;
    static uint8_t SRStriggerFlag = 0;
    
    uint8_t adasStatus = 0;
    uint8_t airbagcanSingal = 0;

    adasStatus = EcallHalGetAdasStatus();
    airbagcanSingal = EcallHalGetStableAirbagStatus();
    
    airbagSingal = airbagcanSingal + adasStatus;

    // g_SendECALLLog[4] = srsStatus;
    // g_SendECALLLog[5] = airbagcanSingal;
    // g_SendECALLLog[7] = SRStriggerFlag;


    if(airbagSingal != 0)
    {
        if(SRStriggerFlag == 0)
        {
            if(adasStatus != 0)
            {
                AlarmSdkEcallTriger(E_ECALL_TRIGGER_SRS_AUTO);
                //SetECALLWorkingState(1);
                TBOX_PRINT("==Ecall ADAS %d \r\n",adasStatus);
            }
            else
            {
                AlarmSdkEcallTriger(E_ECALL_TRIGGER_CAN_AUTO);
                //SetECALLWorkingState(1);
                TBOX_PRINT("==Ecall Airbag %d \r\n",(airbagSingal-adasStatus));
            }
            
            //EcallHalSetVehicleMute(1);
            SRStriggerFlag = 1;
            SetEcallSendSignal(E_ECALL_SYS_STATUS,2);
        }
    }
    else
    {
        if(SRStriggerFlag == 1)
        {
            TBOX_PRINT("Airbag recover normal\r\n");
            SRStriggerFlag = 0;
        }
    }

}

void TaskEcallInit(void)
{
    //e-call服务初始化
    AlarmSdkInit(ECALL_PROCESS_CYCLE_TIME);
    SetSosLedState(E_SOS_LED_STATE_INIT);
    AlarmSdkSetSelfcheckState(E_SELFCHECK_RUN_INIT);
    memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
    SelfcheckDebounceInit();
    SetEcallSendSignalInit(E_ECALL_SINGAL_ALL,1);
}
static uint8_t ecallEnableState = 1;

void TaskEcallProcess(void)
{
    static uint16_t cycleTimeCount = 0;
    static uint32_t ecallCleartimeCount = 0;
    static uint16_t ecallLogtimeCount = 0;
    
    if(ecallEnableState == 0)
    {
        EcallHalSetMode(0);
        return;
    }

    /* 按键处理 */
    SosButtonDetection();
    /* 顶灯处理 */
    SosLedControlProcess();
    /* ecall */
    AlarmSdkCycleProcess();
    /* 气囊信号处理 */
    AirbagSingleProcess();

    cycleTimeCount++;
    if(cycleTimeCount == (1000 / ECALL_PROCESS_CYCLE_TIME))
    {
        AlarmSdkSelfchackPeriSend();
    }
    if(cycleTimeCount == (2000 / ECALL_PROCESS_CYCLE_TIME))
    {
        cycleTimeCount = 0;

        /* 上电自检 */
        SelfcheckCycleProcess();
        //TBOX_PRINT("==Ecall Selfcheck\r\n");
    }
//         if(GetECALLWorkingState() == 1)
//         {
//             ecallCleartimeCount++;
//             if(ecallCleartimeCount > ((30*60*1000) / ECALL_PROCESS_CYCLE_TIME))
//             {
//                 ecallCleartimeCount = 0;
//                 SetECALLWorkingState(0);
//             }
//         }
//         else
//         {
//             ecallCleartimeCount = 0;
//         }
        
    ecallLogtimeCount++;
    static uint16_t ecallLogSendCount=0;
    uint32_t voltage_soskey =0;
    if(ecallLogtimeCount == ((500) / ECALL_PROCESS_CYCLE_TIME))
    {
        if(ecallLogSendCount == 0xFFFF)
        {
            ecallLogSendCount = 0;
        }
        ecallLogtimeCount = 0;
        ecallLogSendCount++;
        g_SendECALLLog[0] = (ecallLogSendCount >> 8)&0xFF;
        g_SendECALLLog[1] = ecallLogSendCount &0xFF;
        /*
        * EcallLogReport 2-5
        * g_SendECALLLog[2] ECALL触发发送计数
        * g_SendECALLLog[3] airbagDplInvsneForeCallValue
        * g_SendECALLLog[4] airbagDplForeCallValue
        * g_SendECALLLog[5] launchTelematicsCallValue
        */
        g_SendECALLLog[6] = GetSosLedState();
        /*
         * EcallLogReport 7-10
         * g_SendECALLLog[7] presskeeptime>>24
         * g_SendECALLLog[8] presskeeptime>>16
         * g_SendECALLLog[9] presskeeptime>>8
         * g_SendECALLLog[10] presskeeptime
         */

        g_SendECALLLog[12] = 0xFF;
        AlarmSdkLogReport(g_SendECALLLog,13);
    }

//         vTaskDelay(ECALL_PROCESS_CYCLE_TIME);
// #else
//     EcallHalTestMain();
//     vTaskDelay(1000);
// #endif
//     }
}


void SetEcallEnableState(uint8_t enableState)
{
    ecallEnableState = enableState;
}
// uint8_t GetECALLWorkingState(void)
// {
//     return g_ECALLIsWorking;
// }

// void SetECALLWorkingState(uint8_t state)
// {
//     g_ECALLIsWorking = state;
// }

// uint8_t Read22SOSLedStatus(void)
// {
//     return g_SosLedState;
// }


