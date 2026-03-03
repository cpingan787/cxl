#include "stdlib.h"
#include "canHal.h"
#include "mpuHal.h"

#include "remoteControlCanSignal.h"
#include "remoteControl.h"

#define REMOTE_CONTROL_AID                       0x02
#define REMOTE_CONTROL_MID                       0x03
#define REMOTE_CONTROL_SUBCOMMAND_ACK            0x6E
#define REMOTE_CONTROL_SUBCOMMAND_RESULT         0x6F
#define REMOTE_CONTROL_SUBCOMMAND_CMD            0x01

//control cmd
#define REMOTE_CONTROL_CMD_CONTROL_ENGINE        0x01
#define REMOTE_CONTROL_CMD_CONTROL_AC            0x02
#define REMOTE_CONTROL_CMD_CONTROL_DOOR          0x03
#define REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH     0x04

//result status
/*
#define REMOTE_CONTROL_RESULT_SUCCESS					            0x00	//控制成功	
#define REMOTE_CONTROL_RESULT_PROHIBIT_REMOTE_START	                0x01	//已禁止远程启动	
#define REMOTE_CONTROL_RESULT_KEY_STATE_DISCONTENT	                0x02	//钥匙状态不满足条件	
#define REMOTE_CONTROL_RESULT_DOOR_NOT_CLOSE    	                0x03	//车门未关闭错误	
#define REMOTE_CONTROL_RESULT_UNPROTECTED       	                0x04	//未设防错误	
#define REMOTE_CONTROL_RESULT_NOT_PARKING_MODE	    				0x05	//未处于驻车状态	
#define REMOTE_CONTROL_RESULT_OIL_LEVEL_LOW_ALARM	    			0x06	//油量低警报错误	
#define REMOTE_CONTROL_RESULT_ENGINE_ANTITHEFT_AUTHENTICATION_FAIL	0x07	//发动机防盗认证失败	
#define REMOTE_CONTROL_RESULT_BATTERY_VOLTAGE_LOW	    			0x08	//蓄电池电压低	
#define REMOTE_CONTROL_RESULT_UNKNOWN_ERROR	    					0x09	//远控失败，未知错误	
#define REMOTE_CONTROL_RESULT_SPPED_NOT_ZERO	    				0x0a	//车速不为0	
#define REMOTE_CONTROL_RESULT_ENGINE_START_FAILED	    			0x0b	//发动机启动失败	
#define REMOTE_CONTROL_RESULT_DOOR_NOT_LOCK_ERROR	    			0x0c	//门未闭锁错误	
#define REMOTE_CONTROL_RESULT_LOCAL_START	    					0x10	//本地启动，远程启动退出	
#define REMOTE_CONTROL_RESULT_REMOTE_START_TIMEOUT_EXIT	    		0x11	//远程启动时间到退出	
#define REMOTE_CONTROL_RESULT_REMOTE_START_TIMEOUT_EXIT_FORCE	    0x12	//远程启动时间到TBOX强制退出	
#define REMOTE_CONTROL_RESULT_REMOTE_START_TIMEOUT_EXIT_FORCE_FAIL  0x13	//远程启动时间到TBOX强制退出失败	
*/
#define     ERROR_REMOTE            0x0001<<0
#define     ERROR_GEAR              0x0001<<1
#define     ERROR_VELOCITY          0x0001<<2
#define     ERROR_POWER             0x0001<<3
#define     ERROR_FUEL_LOW          0x0001<<4
#define     ERROR_ANTITHEFT         0x0001<<5
#define     ERROR_AUTHENTICATION    0x0001<<6
#define     ERROR_STARTUP_ENGINE    0x0001<<7
#define     ERROR_CLOSE_ENGINE      0x0001<<8
#define     ERROR_STARTUP_AC        0x0001<<9
#define     ERROR_CLOSE_AC          0x0001<<10

#define     ERROR_BATT              0x0001<<13
#define     ERROR_WINDOW_PINCH      0x0001<<14
#define     ERROR_WINDOW_LEARN      0x0001<<15
#define     ERROR_DOOR              0x0001<<15

#define     ERROR_CP          		0x0001<<12

#define     ERROR_E6_STARTUP_ENGINE  0x0016
#define     ERROR_E6_CLOSE_ENGINE    0x0017
#define     ERROR_E6_STARTUP_AC      0x0022
#define     ERROR_E6_CLOSE_AC        0x0023
#define     ERROR_ECU                0x0025

typedef void (*RemoteControlExecuteFunc)(uint8_t *data,uint16_t dataLenth);

typedef struct
{
    uint8_t cmd;
    RemoteControlExecuteFunc pFunc;
}RemoteControlFuncList_t;

typedef struct 
{
    uint8_t RxFlag;
    uint16_t CanId;
    uint8_t CanData[8];
    uint16_t TimeOut;
    uint8_t TimeOutFlag;
}EventInfo_t;

typedef struct 
{
    uint8_t sum;
    EventInfo_t *EventMsgInfoBuf;
}EventMsgInfoManage_t;

static uint16_t g_cycleTime = 10; //单位ms
static int16_t g_mpuHandle = -1;  //mpu通信句柄
static int16_t g_canHandle = -1; //can通信句柄
static uint8_t g_authenticationFlag = 0; //鉴权标记  0：未鉴权 1：鉴权

static uint8_t g_mpuDataBuffer[20] = {0}; //MPU响应数据存储buffer
static MpuHalDataPack_t g_mpuRespPack;

static RemoteControlSignalInfo_t g_canSignal;

static EventInfo_t  g_stEventMsgInfoArr[] =
{
    {0, 0x035,  {0},  (50/10), 0},
    {0, 0x046,  {0},  (50/10), 0},
    {0, 0x000,  {0},  (50/10), 0},
};

static EventMsgInfoManage_t g_eventMsgInfoManage =
{
    (sizeof(g_stEventMsgInfoArr)/sizeof(g_stEventMsgInfoArr[0])),
    g_stEventMsgInfoArr,
};
//������֤�¼���Ϣ
void RemoteControlReceiveEventMsgProcess(CanHalMsg_t canMsg)
{
    uint8_t i = 0;
    
    for(i = 0; i < g_eventMsgInfoManage.sum; i++)
    {
        //if((canMsg.canId == EventMsgInfo_MAN.EventMsgInfoBuf[i].CanId) && ((canMsg.canData[0] & 0xf0) != 0 ) )
        if(canMsg.canId == g_eventMsgInfoManage.EventMsgInfoBuf[i].CanId)
        {
            //TBOX_PRINT("id - 0x%X,dlc - %d,data - 0x%X\n",canMsg.canId,canMsg.dlc,canMsg.canData[1]);
            g_eventMsgInfoManage.EventMsgInfoBuf[i].RxFlag = 1;
            memcpy(g_eventMsgInfoManage.EventMsgInfoBuf[i].CanData, canMsg.canData, 8);
        }
    }
}

//static int16_t RemoteControlOpenCanChannel(void)
//{
//    int16_t canHandle = CanHalOpen(TBOX_CAN_CHANNEL_D);
//    return canHandle;
//}

int16_t RemoteControlInit(int16_t mpuHandle,uint16_t cycleTime)
{
    if(mpuHandle < 0 || cycleTime == 0)
    {
        return -1;
    }
    g_mpuHandle = mpuHandle;
    g_cycleTime = cycleTime;
    g_canHandle = CanHalOpen(TBOX_CAN_CHANNEL_D);
    if(g_canHandle < 0)
    {
        return -1;
    }
    return 0;
}
#if 1
static int16_t RemoteControlSendAck(uint8_t controlCmd)
{
    g_mpuRespPack.aid = REMOTE_CONTROL_AID;
    g_mpuRespPack.mid = REMOTE_CONTROL_MID;
    
    g_mpuRespPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_ACK;
    
    g_mpuRespPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = controlCmd;
    g_mpuRespPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuRespPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle,&g_mpuRespPack);
    return 0;
}

static int16_t RemoteControlSendResult(uint8_t controlCmd,uint8_t result,uint8_t *state,uint8_t stateLenth)
{
    g_mpuRespPack.aid = REMOTE_CONTROL_AID;
    g_mpuRespPack.mid = REMOTE_CONTROL_MID;
    
    g_mpuRespPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_RESULT;
    
    g_mpuRespPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = controlCmd;
    g_mpuDataBuffer[1] = result;
    for(uint8_t i = 0;i < ((stateLenth > 6)?6:stateLenth);i++)
    {
        g_mpuDataBuffer[2 + i] = state[i];
    }
    g_mpuRespPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuRespPack.dataLength = 8;
    
    MpuHalTransmit(g_mpuHandle,&g_mpuRespPack);
    return 0;
}

//-1:失败  0：成功  1：进行中
static int16_t RemoteControlOpenEngineProcess(uint8_t *errorType,uint16_t *errorCode)
{
    //0:Idle 1:send 1E1 2:send 033
    static uint8_t statusFlag = 0;
    static uint8_t authFailCount = 0;
    static uint32_t timeCount = 0;
    
    if(statusFlag == 0)
    {
        //混动车
        //SetRemoteContorl1E1SignalValue(E_Box_RemtSdlMod,0x01,5);
        statusFlag = 1;
    }
    else if(statusFlag == 1)
    {
        if(GetRemoteContorl1E1SignalIsSendEnd(E_Box_RemtSdlMod) == 0)
        {
            timeCount = 0;
            SetRemoteContorl033SignalValue(E_Box_RemtEngCtrl,0x01,5);
            statusFlag = 2;
        }
    }
    else if(statusFlag == 2) // 判断鉴权结果
    {
        timeCount++;
        if(GetRemoteContorl033SignalIsSendEnd(E_Box_RemtEngCtrl) == 0)
        {
            //判断鉴权是否成功
            if(g_authenticationFlag == 1)//鉴权成功
            {
                authFailCount = 0;
                timeCount = 0;
                statusFlag = 3;
            }
            else//鉴权失败
            {
                authFailCount++;
                statusFlag = 0;
                if(authFailCount >= 3)
                {
                    authFailCount = 0;
                    *errorType = 0xE2;
                    *errorCode = ERROR_AUTHENTICATION;
                    return -1;
                }
                else
                {
                    authFailCount = 0;
                    statusFlag = 0;
                    return 1;
                }
            }
         }
         else
         {
            return 1;
         }
    }
    else if(statusFlag == 3) //等待上电结果
    {
        timeCount++;
        if((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && 
                    ((g_canSignal.VCU_VCUSts == 0x02) || (g_canSignal.VCU_VCUSts == 0x0C)))
        {
            return 0;
        }
        if(timeCount >= (30*1000/g_cycleTime))
        {
            *errorType = 0xE6;
            *errorCode = ERROR_E6_STARTUP_ENGINE;
            return -1;
        }
    }
    return 1;
}

//0:成功  -1:失败 1:结束
static int16_t RemoteControlOpenEngineStart(uint8_t *errorType,uint16_t *errorCode)
{
    uint16_t gErrorCode = 0;
    //是否已经启动成功
    if(((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) 
       && ((g_canSignal.VCU_VCUSts == 0x02)) || (g_canSignal.VCU_VCUSts == 0x0C)))

    {
        //
        gErrorCode = 0;
        *errorType = 0x02;
        *errorCode = gErrorCode;
        //RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,0x02,(uint8_t *)&gErrorCode,2);
        return 1;
        //将新指令清空
        //newCmdFlag = 0;
        //oldCmdFlag = 0;
    }
    else//判断先决条件
    {
        if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
        {
            gErrorCode |= ERROR_VELOCITY;
        }
        if(!(((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x00)) || 
            ((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01))))
        {
            gErrorCode |= ERROR_POWER;
        }
        if(!((g_canSignal.VCU_GearSts == 0x01) || (g_canSignal.VCU_GearSts == 0x03)))
        {
            gErrorCode |= ERROR_GEAR;
        }
        if(!((g_canSignal.AntitheftSts == 0x01) || (g_canSignal.AntitheftSts == 0x02)))
        {
            gErrorCode |= ERROR_ANTITHEFT;
        }
        if(!(g_canSignal.EVCC_CPLineSts == 0x00))
        {
            gErrorCode |= ERROR_CP;
        }
        if(gErrorCode == 0)
        {
            //发起上电请求
            RemoteControlOpenEngineProcess(errorType,errorCode);
            return 0;
        }
        else
        {
            //返回失败
            *errorType = 0xE2;
            *errorCode = gErrorCode;
            return -1;
        }
    }
}

//0:开始执行   -1:失败 1:结束
static int16_t RemoteControlCloseEngineStart(uint8_t *errorType,uint16_t *errorCode)
{
    uint16_t gErrorCode = 0;
    if((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) 
        && ((g_canSignal.VCU_VCUSts == 0x02) || (g_canSignal.VCU_VCUSts == 0x0C)))
    {
        if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
        {
            gErrorCode |= ERROR_VELOCITY;
        }
        if(!(((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x00)) || 
            ((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01))))
        {
            gErrorCode |= ERROR_POWER;
        }
        if(!((g_canSignal.VCU_GearSts == 0x01) || (g_canSignal.VCU_GearSts == 0x03)))
        {
            gErrorCode |= ERROR_GEAR;
        }
        if(gErrorCode == 0)
        {
            //执行远控
           SetRemoteContorl033SignalValue(E_Box_RemtEngCtrl,0x02,5); //关闭信号
           return 0;
        }
        else
        {
            *errorType = 0xE2;
            *errorCode = gErrorCode;
            return -1;
        }
        
    }
    else
    {
        gErrorCode = 0;
        *errorType = 0x02;
        *errorCode = gErrorCode;
        return 1;
    }
}

//0:成功 -1：失败 1:进行中
static int16_t RemoteControlCloseEngineProcess(uint8_t *errorType,uint16_t *errorCode)
{
    static uint32_t timeCount = 0;
    if(GetRemoteContorl033SignalIsSendEnd(E_Box_RemtEngCtrl)!=0)
    {
        timeCount = 0;
        return 1;
    }
    timeCount++;
    if((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && 
    ((g_canSignal.VCU_VCUSts == 0x02) || (g_canSignal.VCU_VCUSts == 0x0C)))
	{
        if(timeCount >= (30*1000/g_cycleTime)) //超时
        {
            timeCount = 0;
            *errorType = 0xE6;
            *errorCode = ERROR_E6_CLOSE_ENGINE;
            return -1;
        }
        return 1;
	}
	else //成功
	{
			return 0;
	}
}

static void RemoteControlCmdControlEngineFunc(uint8_t *data,uint16_t dataLenth)
{
    static uint8_t oldCmdFlag = 0;
    static uint8_t oldCmdData = 0;
    static uint8_t newCmdFlag = 0;
    static uint8_t newCmdData = 0;
    static uint16_t timeCount = 0;
    
    uint8_t gErrorType = 0;
    uint16_t gErrorCode = 0;
    int16_t ret = 0;
    //获取执行结果
    if(oldCmdFlag == 1)
    {
        timeCount++;
        if(oldCmdData == 1) //上电
        {
            //判断执行结果 成功/失败/超时
            ret = RemoteControlOpenEngineProcess(&gErrorType,&gErrorCode);
            if(ret != 1)
            {
                RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,gErrorType,(uint8_t *)&gErrorCode,2);
                oldCmdFlag = 0;
            }
            //else
            //{
            //}
        }
        else//下电
        {
            ret = RemoteControlCloseEngineProcess(&gErrorType,&gErrorCode);
            if(ret != 1)
            {
                RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,gErrorType,(uint8_t *)&gErrorCode,2);
                oldCmdFlag = 0;
            }
        }
    }
    
    //判断新的指令
    if((data != NULL) && (data[0] == REMOTE_CONTROL_CMD_CONTROL_ENGINE) && (dataLenth == 2))
    {
        if((data[1] == 0) || (data[1] == 1))
        {
            if(oldCmdFlag == 1)//旧的指令未执行结束，保存到新的指令
            {
                newCmdFlag = 1;
                newCmdData = data[1];
            }
            else if(newCmdFlag == 1)//旧的指令已执行结束，缓存的指令还未执行，更新新的指令
            {
                newCmdFlag = 1;
                newCmdData = data[1];
            }
            else //没有正在执行的指令和缓存的指令
            {
                newCmdFlag = 1;
                newCmdData = data[1];
            }
        }
        else
        {
            gErrorCode = 0x3FFF;
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,0xE6,(uint8_t *)&gErrorCode,2);
        }

    }
    
    if((oldCmdFlag == 0) && (newCmdFlag == 1))
    {
        //执行新的指令
        //1、判定先决条件，是否符合
        //2、如果符合先决条件，
        //2.1 执行远控，
        //2.2 将新的指令清空，变为旧的指令，等待指令执行结果
        //3、如果不符合先决条件，返回失败
        if(newCmdData == 0)//关闭引擎
        {
            if(RemoteControlCloseEngineStart(&gErrorType,&gErrorCode) == 0)
            {
                //将新指令变成老指令，等待结果，新指令清空
                newCmdFlag = 0;
                oldCmdFlag = 1;
                oldCmdData = newCmdData; 
                timeCount = 0;
            }
            else
            {
                RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,0x02,(uint8_t *)&gErrorCode,2);
                //将新指令清空
                newCmdFlag = 0;
                oldCmdFlag = 0;
            }
        }
        else if(newCmdData == 1)//打开引擎
        {
            if(RemoteControlOpenEngineStart(&gErrorType,&gErrorCode) == 0)
            {
                //将新指令变成老指令，等待结果，新指令清空
                newCmdFlag = 0;
                oldCmdFlag = 1;
                oldCmdData = newCmdData; 
            }
            else
            {
                RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,gErrorType,(uint8_t *)&gErrorCode,2);
                //将新指令清空
                newCmdFlag = 0;
                oldCmdFlag = 0;
            }
        }
        else
        {
            gErrorCode = 0x3FFF;
            //返回失败
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_ENGINE,0xE6,(uint8_t *)&gErrorCode,2);
            //将新指令标记清空,老指令标记清空
            newCmdFlag = 0;  
            oldCmdFlag = 0;
        }
    }
}
/*
static int16_t RemoteControlStartUpStart(uint8_t cmd,uint8_t *errorType,uint16_t *errorCode)
{
    uint16_t gErrorCode = 0;
    if(0x01 != g_canSignal.ACOpenSts)
    {
        *errorType = 0x02;
        *errorCode = 0;
        return 1;
    }
    if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
    {
        gErrorCode |= ERROR_VELOCITY;
    }
    if(!((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01)))
    {
        gErrorCode |= ERROR_POWER;
    }
    if(!((g_canSignal.VCU_GearSts == 0x01) || (g_canSignal.VCU_GearSts == 0x03)))
    {
        gErrorCode |= ERROR_GEAR;
    }
    if(gErrorCode == 0)
    {
        
        return 0;
    }
    *errorType = 0xE2;
    *errorCode = gErrorCode;
    return -1;
}
*/
//0:成功  1：进行中  -1：失败
static int16_t RemoteControlStartUpAcProcess(uint8_t *cmdData,uint8_t *errorType,uint16_t *errorCode)
{
    static uint32_t timeCount = 0;
    if(0x01 == g_canSignal.ACOpenSts)
    {
        timeCount = 0;
        *errorType = 0x02;
        *errorCode = 0;
        return 0;
    }
    timeCount++;
    if(timeCount >= ((30*1000)/g_cycleTime))
    {
        timeCount = 0;
        *errorType = 0xE6;
        *errorCode = ERROR_E6_CLOSE_ENGINE;
        return -1;
    }
    return 1;
}

static int16_t RemoteControlStartUpAcStart(uint8_t *cmdData,uint8_t *errorType,uint16_t *errorCode)
{
    uint16_t gErrorCode = 0;
    uint8_t drvTemp = 0;
    uint8_t passTemp = 0;
    if(0x01 != g_canSignal.ACOpenSts)
    {
        if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
        {
            gErrorCode |= ERROR_VELOCITY;
        }
        if(!((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01)))
        {
            gErrorCode |= ERROR_POWER;
        }
        if(!((g_canSignal.VCU_GearSts == 0x01) || (g_canSignal.VCU_GearSts == 0x03)))
        {
            gErrorCode |= ERROR_GEAR;
        }
        if(gErrorCode == 0)
        {
            //执行开空调指令
            SetRemoteContorl033SignalValue(E_Box_RemtAutoCtrl,0x01,5);
            drvTemp = cmdData[1];
            passTemp = cmdData[2];
            if(drvTemp < 17)
            {
                drvTemp = 17;
            }
            else if(drvTemp > 31)
            {
                drvTemp = 31;
            }
            if(passTemp < 17)
            {
                passTemp = 17;
            }
            else if(passTemp > 31)
            {
                passTemp = 31;
            }
            SetRemoteContorl033SignalValue(E_Box_RemtDrvTempSet,(drvTemp-16)*2,5);
            SetRemoteContorl033SignalValue(E_Box_RemtPassTempSet,(passTemp-16)*2,5);
          
            return 0;
        }
        //返回前置条件判定失败
        *errorType = 0xE2;
        *errorCode = gErrorCode;
        return -1;
    }
    else
    {
        *errorType = 0x02;
        *errorCode = 0;
        return 1;
    }
}

//0:成功  1:进行中  -1：失败
static int16_t RemoteControlControlOpenACProcess(uint8_t *cmdData,uint8_t *errorType,uint16_t *errorCode)
{
    //0:IDLE 1:上电 2:等待上电结果  3:开空调 4:等待开空调结果
    static uint8_t stateFlag = 0;
    int16_t ret = 0;
    if(stateFlag == 0)
    {
        stateFlag = 1;
    }
    else if(stateFlag == 1)
    {
        //发送上电请求
        ret = RemoteControlOpenEngineStart(errorType,errorCode);
        if(ret == 0)//发送了上电请求
        {
            stateFlag = 1;
        }
        else if(ret == 1)//已上电
        {
            stateFlag = 3;
        }
        else//状态不满足
        {
            return -1;
        }
    }
    if(stateFlag == 2)
    {
        //判断执行结果 成功/失败/超时
        ret = RemoteControlOpenEngineProcess(errorType,errorCode);
        if(ret == 0)//成功
        {
            stateFlag = 3;
        }
        else if(ret == -1)//超时
        {
            stateFlag = 0;
            return -1;
        }
    }
    if(stateFlag == 3)//3:开空调
    {
        ret = RemoteControlStartUpAcStart(cmdData,errorType,errorCode);
        if(ret == 0)
        {
            stateFlag = 4;
        }
        else if(ret == 1)
        {
            stateFlag = 4;
        }
        else
        {
            stateFlag = 0;
            return -1;
        }
    }
    if(stateFlag == 4)//等待开空调结果
    {
        ret = RemoteControlStartUpAcProcess(cmdData,errorType,errorCode);
        if(ret == 0)//成功
        {
            stateFlag = 0;
            return 0;
        }
        else if(ret == -1)//失败
        {
            stateFlag = 0;
            return -1;
        }
    }
    return 1;
}

//0:开始执行   -1:结束
static int16_t RemoteControlControlACStart(uint8_t *cmd,uint8_t *errorType,uint16_t *errorCode)
{
    int16_t ret = 0;
    if(cmd[0] == 0)//关空调
    {
        
    }
    else//开空调
    {
        ret = RemoteControlControlOpenACProcess(cmd,errorType,errorCode);
        if(ret == 1)//开始执行
        {
            return 0;
        }
        else
        {
            return -1;
        }
        
    }
    return 0;
}

//0:成功   -1:失败  1：正在执行
static int16_t RemoteControlControlACProcess(uint8_t *cmd,uint8_t *errorType,uint16_t *errorCode)
{
    if(cmd[0] == 0)//关空调
    {
        
    }
    else//开空调
    {
        return RemoteControlControlOpenACProcess(cmd,errorType,errorCode);
    }
    return 0;
}

static void RemoteControlCmdControlACFunc(uint8_t *data,uint16_t dataLenth)
{
    static uint8_t oldCmdFlag = 0;
    static uint8_t oldCmdData[9] = {0};
    static uint8_t newCmdFlag = 0;
    static uint8_t newCmdData[9] = {0};
    
    int16_t ret = 0;
    uint8_t gErrorType = 0;
    uint16_t gErrorCode = 0;
    //获取执行结果
    if(oldCmdFlag == 1)
    {
        //判断执行结果 成功/失败/超时
        ret = RemoteControlControlACProcess(oldCmdData,&gErrorType,&gErrorCode);
        if(ret != 1)//成功或者失败
        {
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_AC,gErrorType,(uint8_t *)&gErrorCode,2);
            oldCmdFlag = 0;
        }
    }
    
    //判断新的指令
    if((data != NULL) && (data[0] == REMOTE_CONTROL_CMD_CONTROL_AC) && (dataLenth == 10))
    {
        if((data[1] == 0) || (data[1] == 1))
        {
            if(oldCmdFlag == 1)//旧的指令未执行结束，保存到新的指令
            {
                newCmdFlag = 1;
                for(uint16_t i = 0;i<(dataLenth-1);i++)
                {
                    newCmdData[i] = data[1+i];
                }
            }
            else if(newCmdFlag == 1)//旧的指令已执行结束，缓存的指令还未执行，更新新的指令
            {
                newCmdFlag = 1;
                for(uint16_t i = 0;i<(dataLenth-1);i++)
                {
                    newCmdData[i] = data[1+i];
                }
            }
            else //没有正在执行的指令和缓存的指令
            {
                newCmdFlag = 1;
                for(uint16_t i = 0;i<(dataLenth-1);i++)
                {
                    newCmdData[i] = data[1+i];
                }
            }
        }
        else
        {
            gErrorCode = 0x3FFF;
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_AC,0xE6,(uint8_t *)&gErrorCode,2);
        }
    }
    
    if((oldCmdFlag == 0) && (newCmdFlag == 1))
    {
        if(RemoteControlControlACStart(newCmdData,&gErrorType,&gErrorCode)!=0)
        {
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_AC,gErrorType,(uint8_t *)&gErrorCode,2);
            newCmdFlag = 0;
            oldCmdFlag = 0;
        }
        else
        {
            newCmdFlag = 0;
            oldCmdFlag = 1;
            for(uint16_t i = 0;i<9;i++)
            {
                oldCmdData[i] = newCmdData[i];
            }
        }
    }
    
}
#endif

//0:开始执行   -1:失败
static int16_t RemoteControlCloseDoorStart(uint8_t *errorType,uint16_t *errorCode)
{
    uint16_t gErrorCode = 0;
    //(1)车速为 0 (2)电源 OFF 或远程模式（3）四门关闭
    //返回失败
    if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
    {
        gErrorCode |= ERROR_VELOCITY;
    }
    if(!(((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x00)) || 
        ((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01))))
    {
        gErrorCode |= ERROR_POWER;
    }
    if(!((g_canSignal.DrvDoorSts == 0x00) && (g_canSignal.LRDoorSts == 0x00) && (g_canSignal.PassengerDoorSts == 0x00) && (g_canSignal.RRDoorSts == 0x00)))
    {
        gErrorCode |= ERROR_DOOR;
    }
    
    if(gErrorCode == 0)
    {
        //执行远控
        SetRemoteContorl033SignalValue(E_Box_RemtDoorLockCtrl,0x03,5); //关闭信号
        return 0;
    }
    else
    {
        //返回失败
        *errorType = 0xE2;
        *errorCode = gErrorCode;
        return -1;
    }
}
static int16_t RemoteControlOpenDoorStart(uint8_t *errorType,uint16_t *errorCode)
{
    uint16_t gErrorCode = 0;
    //(1)车速为 0 (2)电源 OFF 或远程模式
    if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
    {
        gErrorCode |= ERROR_VELOCITY;
    }
    if(!(((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x00)) || 
        ((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01))))
    {
        gErrorCode |= ERROR_POWER;
    }
    //返回失败
    if(gErrorCode == 0)
    {
        //执行远控
        SetRemoteContorl033SignalValue(E_Box_RemtDoorLockCtrl,0x02,5); //关闭信号
        return 0;
    }
    else
    {
        //返回失败
        *errorType = 0xE2;
        *errorCode = gErrorCode;
        return -1;
    }
}
//0:开始执行   -1:失败
static int16_t RemoteControlControlDoorStart(uint8_t cmd,uint8_t *errorType,uint16_t *errorCode)
{
    if(cmd == 0)//关门
    {
        return RemoteControlCloseDoorStart(errorType,errorCode);
    }
    else if(cmd == 1)//开门
    {
        return RemoteControlOpenDoorStart(errorType,errorCode);
    }
    else
    {
        *errorType = 0xE6;
        *errorCode = 0x3FFF;
        return -1;
    }
}

//0:成功 -1：失败 1:进行中
static int16_t RemoteControlControlDoorProcess(uint8_t *cmdData,uint8_t *errorType,uint16_t *errorCode)
{
    static uint32_t timeCount = 0;
    
    //判断执行结果 成功/失败/超时
    // g_canSignal
    if(0x01 == cmdData[0]) //解锁
    {
        if(g_canSignal.DoorLockSts == 0x03)
        {
            //返回成功
            timeCount = 0;
            *errorType = 0x02;
            *errorCode = 0x00;
            return 0;
        }
    }
    else if(0x00 == cmdData[0]) //闭锁
    {
        if(g_canSignal.DoorLockSts == 0x01)
        {
            //返回成功
            timeCount = 0;
            *errorType = 0x02;
            *errorCode = 0x00;
            return 0;
        }
    }
    timeCount++;
    if(timeCount >= ((30*1000)/g_cycleTime))
    {
        //返回超时
        *errorType = 0xE6;
        *errorCode = 0x0025;
        timeCount = 0;
        return -1;
    }
    return 1;
}

static void RemoteControlCmdControlDoorFunc(uint8_t *data,uint16_t dataLenth)
{
    static uint8_t oldCmdFlag = 0;
    static uint8_t oldCmdData[2] = {0};
    static uint8_t newCmdFlag = 0;
    static uint8_t newCmdData[2] = {0};
    
    uint16_t gErrorCode = 0;
    uint8_t gErrorType = 0;
    int16_t ret = -1;
    
    //获取执行结果
    if(oldCmdFlag == 1)
    {
        //判断执行结果 成功/失败/超时
       // g_canSignal
        ret = RemoteControlControlDoorProcess(oldCmdData,&gErrorType,&gErrorCode);
        if(ret != 1)
        {
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_DOOR,gErrorType,(uint8_t *)&gErrorCode,2);
            //旧的指令执行结束
            oldCmdFlag = 0;
        }
    }
    
    //判断新的指令
    if((data != NULL) && (data[0] == REMOTE_CONTROL_CMD_CONTROL_DOOR) && (dataLenth == 3))
    {
        if(((data[1] == 0x00) || (data[1] == 0x01)) && (data[2] <= 0x05))
        {
            if(oldCmdFlag == 1)//旧的指令未执行结束，保存到新的指令
            {
                newCmdFlag = 1;
                newCmdData[0] = data[1];
                newCmdData[1] = data[2];
            }
            else if(newCmdFlag == 1)//旧的指令已执行结束，缓存的指令还未执行，更新新的指令
            {
                newCmdFlag = 1;
                newCmdData[0] = data[1];
                newCmdData[1] = data[2];
            }
            else //没有正在执行的指令和缓存的指令
            {
                newCmdFlag = 1;
                newCmdData[0] = data[1];
                newCmdData[1] = data[2];
            }
        }
        else
        {
            gErrorCode = 0x3FFF;
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_DOOR,0xE6,(uint8_t *)&gErrorCode,2);
        }
    }
    
    if((oldCmdFlag == 0) && (newCmdFlag == 1))
    {
        if(RemoteControlControlDoorStart(newCmdData[0],&gErrorType,&gErrorCode) == 0)
        {
            //将新指令变成老指令，等待结果，新指令清空
            newCmdFlag = 0;
            oldCmdFlag = 1;
            oldCmdData[0] = newCmdData[0];
            oldCmdData[1] = newCmdData[1];
        }
        else
        {
            //返回失败
            RemoteControlSendResult(REMOTE_CONTROL_CMD_CONTROL_DOOR,gErrorType,(uint8_t *)&gErrorCode,2);
            //将新指令标记清空,老指令标记清空
            newCmdFlag = 0;
            oldCmdFlag = 0;
        }
    }
}

//0:开始执行   -1:失败
static int16_t RemoteControlCarSearchStart(uint8_t cmd,uint8_t *errorType,uint16_t *errorCode)
{
    //执行新的指令
    //1、判定先决条件，是否符合
    //2、如果符合先决条件，
    //2.1 执行远控，
    //2.2 将新的指令清空，变为旧的指令，等待指令执行结果
    //3、如果不符合先决条件，返回失败
    //(1)车速为 0 (2)电源 OFF 或远程模式（3）整车设防或预设防状态
    uint16_t gErrorCode = 0;
    //返回失败
    if(!((g_canSignal.VehSpdVld == 0x01) && (g_canSignal.VehSpd <= 5)))
    {
        gErrorCode |= ERROR_VELOCITY;
    }
    if(!(((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x00)) || 
        ((g_canSignal.SysPowerModVld == 0x01) && (g_canSignal.SysPowerMod == 0x02) && (g_canSignal.RemoteModSts == 0x01))))
    {
        gErrorCode |= ERROR_POWER;
    }
    if(!((g_canSignal.AntitheftSts == 0x01) || (g_canSignal.AntitheftSts == 0x02)))
    {
        gErrorCode |= ERROR_ANTITHEFT;
    }
    
    if(gErrorCode == 0)
    {
        //执行远控
        SetRemoteContorl033SignalValue(E_Box_RemtCarSearch,cmd,5);
        return 0;
    }
    else
    {
        *errorType = 0xE2;
        *errorCode = gErrorCode;
        return -1;
    }
}

//0:成功 -1：失败 1:进行中
static int16_t RemoteControlCarSearchProcess(uint8_t cmd,uint8_t *errorType,uint16_t *errorCode)
{
    static uint32_t timeCount = 0;
    if(GetRemoteContorl033SignalIsSendEnd(E_Box_RemtCarSearch) != 0)
    {
        timeCount = 0;
        return 1;
    }
    timeCount++;
    if(0x0 == cmd)
    {
        if(g_canSignal.WhistleSts_F_PBOX == 0x01)//鸣笛
        {
            *errorType = 0x02;
            *errorCode = 0;
            return 0;
        }
    }
    else if(0x01 == cmd)//双闪
    {
        if((g_canSignal.LTurnLmpSts == 0x01) && (g_canSignal.RTurnLmpSts == 0x01))
        {
            *errorType = 0x02;
            *errorCode = 0;
            return 0;
        }
    }
    else if(0x02 == cmd)//鸣笛+双闪
    {
        if((g_canSignal.LTurnLmpSts == 0x01) && 
           (g_canSignal.RTurnLmpSts == 0x01) &&
           (g_canSignal.WhistleSts_F_PBOX == 0x01))
        {
            *errorType = 0x02;
            *errorCode = 0;
            return 0;
        }
    }
    if(timeCount >= (30*1000/g_cycleTime))
    {
        *errorType = 0xE6;
        *errorCode = ERROR_ECU;
        return -1;
    }
    return 1;
}

static void RemoteControlCmdRemoteCarSearchFunc(uint8_t *data,uint16_t dataLenth)
{
    static uint8_t oldCmdFlag = 0;
    static uint8_t oldCmdData = 0;
    static uint8_t newCmdFlag = 0;
    static uint8_t newCmdData = 0;
    static uint16_t timeCount = 0;
    
    uint8_t gErrorType = 0;
    uint16_t gErrorCode = 0;
    int16_t ret = -1;
    //获取执行结果
    if(oldCmdFlag == 1)
    {
        timeCount++;
        //判断执行结果 成功/失败/超时
        ret = RemoteControlCarSearchProcess(oldCmdData,&gErrorType,&gErrorCode);
        if(ret != 1)
        {
            RemoteControlSendResult(REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH,gErrorType,(uint8_t *)&gErrorCode,2);
            //旧的指令执行结束
            oldCmdFlag = 0;
        }
    }
    
    //判断新的指令
    if((data != NULL) && (data[0] == REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH))
    {
        if(data[1] < 3)
        {
            if(oldCmdFlag == 1)//旧的指令未执行结束，保存到新的指令
            {
                newCmdFlag = 1;
                newCmdData = data[1];
            }
            else if(newCmdFlag == 1)//旧的指令已执行结束，缓存的指令还未执行，更新新的指令
            {
                newCmdFlag = 1;
                newCmdData = data[1];
            }
            else //没有正在执行的指令和缓存的指令
            {
                newCmdFlag = 1;
                newCmdData = data[1];
            }
        }
        else
        {
            gErrorCode = 0x3FFF;
            RemoteControlSendResult(REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH,0xE6,(uint8_t *)&gErrorCode,2);
        }

    }
    
    if((oldCmdFlag == 0) && (newCmdFlag == 1))
    {
        if(newCmdData < 3)
        {
            if(RemoteControlCarSearchStart(newCmdData,&gErrorType,&gErrorCode) == 0)
            {
                //将新指令变成老指令，等待结果，新指令清空
                newCmdFlag = 0;
                oldCmdFlag = 1;
                oldCmdData = newCmdData;
            }
            else
            {
                //返回失败
                RemoteControlSendResult(REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH,gErrorType,(uint8_t *)&gErrorCode,2);
                //将新指令标记清空,老指令标记清空
                newCmdFlag = 0;  
                oldCmdFlag = 0;
            }
        }
        else
        {
            gErrorCode = 0x3FFF;
            RemoteControlSendResult(REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH,0xE6,(uint8_t *)&gErrorCode,2);
            //将新指令标记清空,老指令标记清空
            newCmdFlag = 0;  
            oldCmdFlag = 0;
        }
    }
    
    
}

static const RemoteControlFuncList_t g_remoteControlFuncGroup[] = 
{
    {REMOTE_CONTROL_CMD_CONTROL_ENGINE,          RemoteControlCmdControlEngineFunc },
    {REMOTE_CONTROL_CMD_CONTROL_AC,              RemoteControlCmdControlACFunc },
    {REMOTE_CONTROL_CMD_CONTROL_DOOR,            RemoteControlCmdControlDoorFunc },
    {REMOTE_CONTROL_CMD_REMOTE_CAR_SEARCH,       RemoteControlCmdRemoteCarSearchFunc }
};

void RemoteControlPorcess(MpuHalDataPack_t *msgData)
{
    uint16_t i = 0;
    uint8_t *cmdData = NULL;
    uint16_t cmdLen = 0;
    if(msgData != NULL)
    {
        if((msgData->aid == REMOTE_CONTROL_AID) && (msgData->mid == REMOTE_CONTROL_MID) && (msgData->subcommand == REMOTE_CONTROL_SUBCOMMAND_CMD))
        {
            RemoteControlSendAck(msgData->pDataBuffer[0]);
            cmdData = msgData->pDataBuffer;
            cmdLen = msgData->dataLength;
            
        }
    }
    
    GetRemoteControlSignalValue(&g_canSignal);
    for(i = 0;i < sizeof(g_remoteControlFuncGroup)/sizeof(g_remoteControlFuncGroup[0]);i++)
    {
        if((cmdData != NULL) && (g_remoteControlFuncGroup[i].cmd == cmdData[0]))
        {
            g_remoteControlFuncGroup[i].pFunc(cmdData,cmdLen);
        }
        else
        {
            g_remoteControlFuncGroup[i].pFunc(NULL,0);
        }
    }
    
    RemoteContorlCanDataSendProcess(g_canHandle,g_cycleTime);
}