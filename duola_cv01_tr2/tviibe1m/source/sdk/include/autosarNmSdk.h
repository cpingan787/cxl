#ifndef _AUTOSARNMSDK_H
#define _AUTOSARNMSDK_H

#include "canHal.h"

#define AUTOSAR_NET_MANAGE_MAX_INSTANCE           2

//CBV(Control Bit Vector) bit definition
#define CBV_BIT_REPEAT_MESSAGE_REQUEST        0
#define CBV_BIT_ACTIVE_WAKEUP                 4
#define canDataFour_KL15ON                    1  
#define canDataFour_KL15OFF_RemoteService     5     
#define canDataFour_Diagnosis_Sevice          6     

#define NM_E_OK                 0
#define NM_E_NOT_EXECUTED       -2
#define NM_E_NOT_OK             -100

typedef void (* NmAutosarEventCallBackFun_t)(uint8_t flag);


typedef struct
{
    uint8_t NodeId;
    uint32_t NodeIdMin;
    uint32_t NodeIdMax;
    uint8_t canChannel;  
    uint32_t BaseAddress;
    uint32_t repeatMessageTime;       
    uint32_t nmTimeOutTime;           
    uint32_t waitBusSleepTime;        
    uint32_t startxAppFrameTime;      
    uint32_t immediateCycleTime;      
    uint32_t msgCycleTime;            
    uint32_t immediateTimes;          
    uint32_t startTXTime;             
    uint32_t wakeupTime;              
    uint32_t busOffErrorEventLimitCount;
    uint32_t busOffQuickTime;
    uint32_t busOffSlowTime;
    uint32_t busOffQuickTimes;         
    NmAutosarEventCallBackFun_t canBusErrorCallBack;
}AutosarNmParameter_t;

typedef enum
{
	E_NETMANAGESTATE_IDLEMODE,//0
	E_NETMANAGESTATE_BUSSLEEPMODE,           
	E_NETMANAGESTATE_PREPAREBUSSLEEPMODE,    
	E_NETMANAGESTATE_REPEATMESSAGESTATE,     
	E_NETMANAGESTATE_NORMALOPERATIONSTATE,  
	E_NETMANAGESTATE_READYSLEEPSTATE,     

}NetManageAutosarState_e;

typedef struct
{
    NetManageAutosarState_e netManageState;
    int16_t canHandle;
    uint8_t nmMsgReceiveFlag;
    uint8_t networkRequestFlag;                  
    uint8_t passiveStartUpFlag;                   
    uint8_t repeatMessageBitReceivedFlag;         
    uint8_t immediateCycleState;    
    uint8_t appEnableFlag;
    int16_t NMTimerHandle;
    int16_t MsgCycleTimerHandle;
    int16_t BusSleepTimerHandle;
    int16_t RepeatMessageTimerHandle;
    uint8_t CBVRepeatMessage;                     
    uint8_t CBVActiveWakeUp;                      
    uint8_t nmStatus;
    uint32_t immediateCycleCount;                 
    uint8_t repeatMessageRequestFlag;             
    uint32_t busOffTimeCount;                      
    uint32_t busOffTimesCnt;
    uint8_t busOffEventOn;
    uint8_t passiveMode;                           
    uint8_t busOffTimerOnFlag;                     
    int16_t busOffRecoverTimerHandle;
    //  stru_can_hal_msg canRxBuffer[30];
    CanHalMsg_t canRxBuffer[5];
    int16_t receiveCheckCanHandle; 
    uint32_t checkTimeCount;
    uint8_t checkTimeoutFlag;                      
}AutosarNmVariable_t;

int16_t AutosarNmSdkConfig(const AutosarNmParameter_t *pNmConfigre,uint8_t NmNumber);
int16_t AutosarNmSdkNetworkRequest(uint8_t LocalWakeup);
int16_t AutosarNm_NetworkRelease( const int16_t nmChannelHandle );
int16_t AutosarNmSdkEnableCommunication( uint8_t ch );
int16_t AutosarNmSdkDisableCommunication( uint8_t ch );
int16_t AutosarNmSdkGetSleepStatus(uint8_t *sleepState);
int16_t AutosarNmSdkGetCanStatus(uint8_t *ReceiveState,uint8_t* pRxChannel);
int16_t AutosarNmSdkGetNetManageReceiveStatus(uint8_t *ReceiveState,uint8_t* pWakeChannel);
void NetManageAutosarCycleProcess(void);
int16_t AutosarNmSdkCleanBusOff(uint8_t index);
uint8_t GetBusOffCnt(uint8_t index);

uint8_t GetBusOffState();
uint8_t GetNmState();
void CleanNmState();
uint8_t GetNetManageState(uint8_t index);
void ApplicationMessageEnableTransmit(uint8_t index);

#endif  //_AUTOSARNMSDK_H
