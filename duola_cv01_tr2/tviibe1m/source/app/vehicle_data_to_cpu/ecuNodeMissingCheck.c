#include <string.h>

#include "taskDtcProcess.h"
#include "canHal.h"
#include "peripheralHal.h"
#include "logHal.h"

#include "ecuNodeMissingCheck.h"

typedef int16_t (* NodeMissingEnableFun_t)(void);
#define SIZE_OF_ARRAY(name)     (sizeof(name)/sizeof(name[0]))

typedef struct
{
  uint32_t canId;
  uint32_t timeOut;//ms
  uint32_t recoverTime;  
  DtcItem_e dtcItem;
  NodeMissingEnableFun_t nodeMissingEnableCallBack;
}EcuNodeConfigure_t;

typedef struct
{
  uint32_t recoverCount;  
  uint32_t timeCount;
  uint8_t missingFlag;
}ecuNodeBuffer_t;


typedef struct {
    uint32_t id;
    uint8_t consecutiveUnchangedCounterFrames;
    uint8_t consecutiveTwoFrameDiffGreaterThanTwoCount;
    uint8_t consecutiveCRCErrorFrames;
    uint8_t consecutiveSuccessfulChecks;
	uint8_t Channel;
	uint8_t dtcItem;
} StateInfo;

const uint8_t thresholdUnchangedCounterFrames = 5;
const uint8_t thresholdTwoFrameDiffCount = 3;
const uint8_t thresholdCRCErrorFrames = 3;


#define CAN_1_USED 1
#define CAN_2_USED 1
#define CAN_3_USED 0
#define CAN_4_USED 0
#define CAN_5_USED 0
#define CAN_6_USED 0
static uint8_t lastcounter[25];

static StateInfo MessageState[] = 
{
	{0x150,0,0,0,0,0,E_DTC_ITEM_E2E_ABS},
	{0x230,0,0,0,0,0,E_DTC_ITEM_E2E_ACU},
	{0x636,0,0,0,0,0,E_DTC_ITEM_E2E_BMS},
	{0x216,0,0,0,0,0,E_DTC_ITEM_E2E_BMS},
	{0x637,0,0,0,0,0,E_DTC_ITEM_E2E_BMS},
	{0x220,0,0,0,0,0,E_DTC_ITEM_E2E_IPU},
	{0x660,0,0,0,0,0,E_DTC_ITEM_E2E_IPU},
	{0x661,0,0,0,0,0,E_DTC_ITEM_E2E_IPU},
	{0x100,0,0,0,0,0,E_DTC_ITEM_E2E_VCU},
	{0x205,0,0,0,0,1,E_DTC_ITEM_E2E_VCU},
	{0x101,0,0,0,0,1,E_DTC_ITEM_E2E_VCU},
	{0x101,0,0,0,0,0,E_DTC_ITEM_E2E_VCU},
	{0x20,0,0,0,0,0,E_DTC_ITEM_E2E_VCU},
	{0x200,0,0,0,0,1,E_DTC_ITEM_E2E_VCU},
	{0x200,0,0,0,0,0,E_DTC_ITEM_E2E_VCU},
	{0x202,0,0,0,0,1,E_DTC_ITEM_E2E_VCU},
	{0x202,0,0,0,0,0,E_DTC_ITEM_E2E_VCU},
	{0x203,0,0,0,0,1,E_DTC_ITEM_E2E_VCU},
	{0x204,0,0,0,0,1,E_DTC_ITEM_E2E_BCM},
	{0x2A0,0,0,0,0,1,E_DTC_ITEM_E2E_BCM},
	{0x2A1,0,0,0,0,1,E_DTC_ITEM_E2E_BCM},
	{0x2A2,0,0,0,0,1,E_DTC_ITEM_E2E_BCM},
	{0x2A3,0,0,0,0,1,E_DTC_ITEM_E2E_BCM},
	{0x2B0,0,0,0,0,1,E_DTC_ITEM_E2E_IPK},
	{0x260,0,0,0,0,1,E_DTC_ITEM_E2E_ACM},
};
#if CAN_2_USED
static const EcuNodeConfigure_t g_can2EcuNodeConfigure[] = //BD
{
    /***id  ,   timeout(ms),recovertime(ms) event call back**********************/
	{0x2A0		,1000  ,300	  ,E_DTC_ITEM_LOST_COMMUNICATION_BCM	  ,NULL},
	{0x2B0		,1000  ,300	  ,E_DTC_ITEM_LOST_COMMUNICATION_IPK	  ,NULL},
	{0x260		,1000  ,300	  ,E_DTC_ITEM_LOST_COMMUNICATION_ACM	  ,NULL},
};
#endif

#if CAN_1_USED
static const EcuNodeConfigure_t g_can1EcuNodeConfigure[] = //PT
{
  /***id  ,   timeout(ms),recovertime(ms) event call back**********************/
  {0x20 	  ,500	,100	,E_DTC_ITEM_LOST_COMMUNICATION_VCU		,NULL},
  {0x150      ,500	,100    	,E_DTC_ITEM_LOST_COMMUNICATION_ABS		,NULL},
  {0x230      ,1000	,300    ,E_DTC_ITEM_LOST_COMMUNICATION_ACU		,NULL},
  {0x140	  ,500  ,100		,E_DTC_ITEM_LOST_COMMUNICATION_EPS		,NULL},
  {0x216	  ,1000	,300 	,E_DTC_ITEM_LOST_COMMUNICATION_BMS		,NULL},
  {0x220	  ,500	,100 	,E_DTC_ITEM_LOST_COMMUNICATION_IPU		,NULL},
};
#endif
#if CAN_3_USED
static const EcuNodeConfigure_t g_can3EcuNodeConfigure[] = 
{
    /***id  ,   timeout(ms),recovertime(ms) event call back**********************/
    //{0x1E9      ,250	,100    ,E_DTC_ITEM_NODE_MISSING_1E9  ,NULL                   },//20ms 
    //{0x17D      ,1050	,500    ,E_DTC_ITEM_NODE_MISSING_17D  ,NULL                   },//100ms
};
#endif
#if CAN_4_USED
static const EcuNodeConfigure_t g_can4EcuNodeConfigure[] = 
{
    ///***id  ,   timeout(ms),recovertime(ms) event call back**********************/
//  {0x287      ,525	,250    ,E_DTC_ITEM_NODE_MISSING_287  ,NULL                   },//50ms
//  {0x297      ,525	,250    ,E_DTC_ITEM_NODE_MISSING_297  ,NULL                   },//50ms
};
#endif
#if CAN_5_USED
static const EcuNodeConfigure_t g_can5EcuNodeConfigure[] = 
{
    /***id  ,   timeout(ms),recovertime(ms) event call back**********************/
    //{0x120      ,1050	,500    ,E_DTC_ITEM_NODE_MISSING_120  ,NULL                   },//100ms
    //{0x332      ,1050	,500    ,E_DTC_ITEM_NODE_MISSING_332  ,NULL    },//100ms
};
#endif
#if CAN_6_USED
static const EcuNodeConfigure_t g_can6EcuNodeConfigure[] = 
{
    /***id  ,   timeout(ms),recovertime(ms) event call back**********************/
    //{0x120      ,1050	,500    ,E_DTC_ITEM_NODE_MISSING_120  ,NULL                   },//100ms
    //{0x332      ,1050	,500    ,E_DTC_ITEM_NODE_MISSING_332  ,NULL    },//100ms
};
#endif
static uint8_t g_missingCheckRestFlag= 0;
static uint8_t g_CcuLostFlag = 0;
#if CAN_1_USED
static ecuNodeBuffer_t g_can1EcuNodeBuffer[sizeof(g_can1EcuNodeConfigure)/sizeof(g_can1EcuNodeConfigure[0])];
#endif
#if CAN_2_USED
static ecuNodeBuffer_t g_can2EcuNodeBuffer[sizeof(g_can2EcuNodeConfigure)/sizeof(g_can2EcuNodeConfigure[0])];
#endif
#if CAN_3_USED
static ecuNodeBuffer_t g_can3EcuNodeBuffer[sizeof(g_can3EcuNodeConfigure)/sizeof(g_can3EcuNodeConfigure[0])];
#endif
#if CAN_4_USED
static ecuNodeBuffer_t g_can4EcuNodeBuffer[sizeof(g_can4EcuNodeConfigure)/sizeof(g_can4EcuNodeConfigure[0])];
#endif
#if CAN_5_USED
static ecuNodeBuffer_t m_can5EcuNodeBuffer[sizeof(g_can5EcuNodeConfigure)/sizeof(g_can5EcuNodeConfigure[0])];
#endif
#if CAN_6_USED
static ecuNodeBuffer_t m_can6EcuNodeBuffer[sizeof(g_can5EcuNodeConfigure)/sizeof(g_can5EcuNodeConfigure[0])];
#endif

void EcuNodeMissingCheckCanId(uint8_t canChannel,uint32_t canId)
{

  uint32_t i;
  uint32_t num = 0;
  ecuNodeBuffer_t* pEcuBuffer = NULL;
  const EcuNodeConfigure_t* pEcuConfig = NULL;
  
  if(TBOX_CAN_CHANNEL_1==canChannel)
  {
#if CAN_1_USED
      pEcuBuffer = g_can1EcuNodeBuffer;
      pEcuConfig = g_can1EcuNodeConfigure;
      num = SIZE_OF_ARRAY(g_can1EcuNodeConfigure);
#endif
  }
  else if(TBOX_CAN_CHANNEL_2==canChannel)
  {
#if CAN_2_USED
      pEcuBuffer = g_can2EcuNodeBuffer;
      pEcuConfig = g_can2EcuNodeConfigure;
      num = SIZE_OF_ARRAY(g_can2EcuNodeConfigure);
#endif
  }
  else if(TBOX_CAN_CHANNEL_3==canChannel)
  {
#if CAN_3_USED
      pEcuBuffer = g_can3EcuNodeBuffer;
      pEcuConfig = g_can3EcuNodeConfigure;
      num = SIZE_OF_ARRAY(g_can3EcuNodeConfigure);
#endif
  }
  else if(TBOX_CAN_CHANNEL_4==canChannel)
  {
#if CAN_4_USED
      pEcuBuffer = g_can4EcuNodeBuffer;
      pEcuConfig = g_can4EcuNodeConfigure;
      num = SIZE_OF_ARRAY(g_can4EcuNodeConfigure);
#endif
  }
  else if(TBOX_CAN_CHANNEL_5==canChannel)
  {
#if CAN_5_USED
      pEcuBuffer = g_can5EcuNodeBuffer;
      pEcuConfig = g_can5EcuNodeConfigure;
      num = SIZE_OF_ARRAY(g_can5EcuNodeConfigure);
#endif  
  }
  else if(TBOX_CAN_CHANNEL_6==canChannel)
  {
#if CAN_6_USED
      pEcuBuffer = g_can6EcuNodeBuffer;
      pEcuConfig = g_can6EcuNodeConfigure;
      num = SIZE_OF_ARRAY(g_can6EcuNodeConfigure);
#endif
  }
  for(i=0;i<num;i++)
  {
    if(pEcuConfig[i].canId==canId)
    {
      pEcuBuffer[i].timeCount = 0x00;
      if(pEcuBuffer[i].recoverCount<100)
      {
        pEcuBuffer[i].recoverCount++;
      }      
    }
  }
}


#define  NODE_MISS_CNT    (10)

//static uint32_t m_testCount = 0;

static void NodeMissingCheckTimeOutOnCan(const EcuNodeConfigure_t *pCheckConfigure,ecuNodeBuffer_t *pCheckBuffer,uint32_t configureSize,uint32_t cycleTime)
{
    uint32_t i;
    for(i=0;i<configureSize;i++)
    {       
        /*if(pCheckConfigure[i].canId==0x4C6)
        {
                m_testCount++;
        }*/
        if(pCheckConfigure[i].nodeMissingEnableCallBack!=NULL)
        {
          if(pCheckConfigure[i].nodeMissingEnableCallBack()!=0)//disabled
          {
            pCheckBuffer[i].timeCount = 0;
            pCheckBuffer[i].recoverCount = 100;
          }              
        }
        if((pCheckBuffer[i].timeCount) >= pCheckConfigure[i].timeOut)
        {         
             pCheckBuffer[i].recoverCount = 0;
            if(!pCheckBuffer[i].missingFlag)
            {
                pCheckBuffer[i].missingFlag = 0x01;
                SetDtcFaultState(pCheckConfigure[i].dtcItem);                              
                g_CcuLostFlag = 1;
            }                                      
        }
        else
        {
            pCheckBuffer[i].timeCount += cycleTime;
            if(pCheckBuffer[i].timeCount >= (pCheckConfigure[i].recoverTime * 2 / 5))
            {
            	/*if(pCheckConfigure[i].canId==0x1D2)
            	{
            		TBOX_PRINT("1D2 recoverCount clear %d,%d\r\n",pCheckBuffer[i].timeCount,RTOS_HalGetTickCount());
            	}*/
                pCheckBuffer[i].recoverCount = 0;
            }
            
            if(pCheckBuffer[i].recoverCount >= 3 )
            {
                if(pCheckBuffer[i].missingFlag)
                { 
                    pCheckBuffer[i].missingFlag = 0x00;
                    ClearDtcFaultState(pCheckConfigure[i].dtcItem);                 
                    g_CcuLostFlag = 0;
                }      
            }
        }
    }
}

static void ClearNodeMissingDtcOnCan(const EcuNodeConfigure_t *pCheckConfigure,ecuNodeBuffer_t *pCheckBuffer,uint32_t configureSize)
{
    uint8_t i = 0;
    for(i = 0; i < configureSize; i++)
    {
        ClearDtcFaultState(pCheckConfigure[i].dtcItem);
        g_CcuLostFlag = 0;
    }
}
static void ClearNodeE2EDtcOnCan(const StateInfo *pCheckConfigure,uint32_t configureSize)
{
    uint8_t i = 0;
    for(i = 0; i < configureSize; i++)
    {
        ClearDtcFaultState(pCheckConfigure[i].dtcItem);
    }
}
static void ClearAllNodeMissingDtc(void)
{
#if CAN_1_USED
    ClearNodeMissingDtcOnCan(g_can1EcuNodeConfigure,g_can1EcuNodeBuffer,SIZE_OF_ARRAY(g_can1EcuNodeConfigure));
#endif
#if CAN_2_USED
    ClearNodeMissingDtcOnCan(g_can2EcuNodeConfigure,g_can2EcuNodeBuffer,SIZE_OF_ARRAY(g_can2EcuNodeConfigure));
#endif
    ClearNodeE2EDtcOnCan(MessageState,SIZE_OF_ARRAY(MessageState));
    //ClearNodeMissingDtcOnCan(g_can3EcuNodeConfigure,g_can3EcuNodeBuffer,SIZE_OF_ARRAY(g_can3EcuNodeConfigure));
    //ClearNodeMissingDtcOnCan(g_can4EcuNodeConfigure,g_can4EcuNodeBuffer,SIZE_OF_ARRAY(g_can4EcuNodeConfigure));
    //ClearNodeMissingDtcOnCan(g_can5EcuNodeConfigure,m_can5EcuNodeBuffer,SIZE_OF_ARRAY(g_can5EcuNodeConfigure));
}

static void ClearNodeMissingCheckConfigOnCan(const EcuNodeConfigure_t *pCheckConfigure,ecuNodeBuffer_t *pCheckBuffer,uint32_t configureSize)
{
    uint8_t i = 0;
    for(i = 0; i < configureSize; i++)
    {
        pCheckBuffer[i].missingFlag = 1;
        pCheckBuffer[i].timeCount = 0;  
        pCheckBuffer[i].recoverCount = 3;  
    }
}

void NodeMissingCheckTimeOut(uint32_t cycleTime)
{
    static uint32_t TimeCnt = 0;
    static uint8_t FirstEnter = 0;
	uint8_t canHandle = 0;

    if(g_missingCheckRestFlag)
    {
        g_missingCheckRestFlag = 0;
        ClearNodeMissingCheckConfig();
    }
    if(PeripheralHalGetKl15Status() && (FirstEnter == 0))
    {
        TimeCnt += cycleTime;
        if(TimeCnt <= 1500)
        {
            ClearAllNodeMissingDtc();
            return;        
        }
        
        TimeCnt = 0;
        FirstEnter = 1;
        ClearNodeMissingCheckConfig();
    }

    if((!PeripheralHalGetKl15Status()))
    {
        if(FirstEnter!=0)
        {
            ClearAllNodeMissingDtc();
        }
        TimeCnt = 0;
        FirstEnter = 0;
        return;
    }
     
    if(!GetDtcProcessSetStatus())
    {
        return;
    }

#if CAN_1_USED
	if(GetBusOffCnt(0) >= 2)
	{
		ClearNodeMissingCheckConfigOnCan(g_can1EcuNodeConfigure,g_can1EcuNodeBuffer,SIZE_OF_ARRAY(g_can1EcuNodeConfigure));
	}
	else
	{
		NodeMissingCheckTimeOutOnCan(g_can1EcuNodeConfigure,g_can1EcuNodeBuffer,SIZE_OF_ARRAY(g_can1EcuNodeConfigure),cycleTime);
	}
#endif
#if CAN_2_USED
	if(GetBusOffCnt(1) >= 2)
	{
		ClearNodeMissingCheckConfigOnCan(g_can2EcuNodeConfigure,g_can2EcuNodeBuffer,SIZE_OF_ARRAY(g_can2EcuNodeConfigure));
	}
	else
	{
		NodeMissingCheckTimeOutOnCan(g_can2EcuNodeConfigure,g_can2EcuNodeBuffer,SIZE_OF_ARRAY(g_can2EcuNodeConfigure),cycleTime);
	}
#endif
    //NodeMissingCheckTimeOutOnCan(g_can3EcuNodeConfigure,g_can3EcuNodeBuffer,SIZE_OF_ARRAY(g_can3EcuNodeConfigure),cycleTime);
    //NodeMissingCheckTimeOutOnCan(g_can4EcuNodeConfigure,g_can4EcuNodeBuffer,SIZE_OF_ARRAY(g_can4EcuNodeConfigure),cycleTime);
    //NodeMissingCheckTimeOutOnCan(g_can5EcuNodeConfigure,m_can5EcuNodeBuffer,SIZE_OF_ARRAY(g_can5EcuNodeConfigure),cycleTime);
 
}


static void ClearNodeE2EDtcConfigOnCan(const StateInfo *pCheckConfigure,uint32_t configureSize)
{
    uint8_t i = 0;
    for(i = 0; i < configureSize; i++)
    {
		MessageState[i].consecutiveCRCErrorFrames = 0;
		MessageState[i].consecutiveTwoFrameDiffGreaterThanTwoCount = 0;
		MessageState[i].consecutiveSuccessfulChecks = 0;
		MessageState[i].consecutiveUnchangedCounterFrames = 0;
    }
}

void ClearNodeMissingCheckConfig(void)
{
#if CAN_1_USED
    ClearNodeMissingCheckConfigOnCan(g_can1EcuNodeConfigure,g_can1EcuNodeBuffer,SIZE_OF_ARRAY(g_can1EcuNodeConfigure));
#endif
#if CAN_2_USED
    ClearNodeMissingCheckConfigOnCan(g_can2EcuNodeConfigure,g_can2EcuNodeBuffer,SIZE_OF_ARRAY(g_can2EcuNodeConfigure));
#endif
    ClearNodeE2EDtcConfigOnCan(MessageState,SIZE_OF_ARRAY(MessageState));

    //ClearNodeMissingCheckConfigOnCan(g_can3EcuNodeConfigure,g_can3EcuNodeBuffer,SIZE_OF_ARRAY(g_can3EcuNodeConfigure));
    //ClearNodeMissingCheckConfigOnCan(g_can4EcuNodeConfigure,g_can4EcuNodeBuffer,SIZE_OF_ARRAY(g_can4EcuNodeConfigure));
    //ClearNodeMissingCheckConfigOnCan(g_can5EcuNodeConfigure,m_can5EcuNodeBuffer,SIZE_OF_ARRAY(g_can5EcuNodeConfigure));
}

void NodeMissingCheckReset(void)
{
    g_missingCheckRestFlag= 1;
}

uint8_t GetCcuLostStatus(void)
{
    return g_CcuLostFlag;
}

void updateState(int* consecutiveFrames, int conditionMet) {
    if (conditionMet) {
        (*consecutiveFrames)++;
    } else {
        *consecutiveFrames = 0;
    }
}
uint8_t Can_E2E_DTC_Check(uint32_t canId, uint8_t *pData, uint8_t canChannel)
{
    uint8_t i;
    uint8_t counter;
    bool messageValid = false;
    bool crcValid = false;
    bool counterValid = false;
    
	uint8_t canData[8] = {0};
	uint16_t canHandle;
    // 预计算CRC
    uint8_t calculatedCrc = crc8_checksum(pData, 7);

    for (i = 0; i < SIZE_OF_ARRAY(MessageState); i++)
    {
        if ((MessageState[i].id == canId) && (MessageState[i].Channel == canChannel))
        {
            counter = pData[6] & 0x0F;
            
            // 验证计数器和CRC
            counterValid = (counter == lastcounter[i] + 1) || ((lastcounter[i] == 0x0E) && (counter == 0x00));
            crcValid = (pData[7] == calculatedCrc);
            messageValid = counterValid && crcValid;
			
            // 处理验证结果
            if (messageValid)
            {
                // 成功验证处理
                if((GetDtcFaultState(MessageState[i].dtcItem) == 1)&&(MessageState[i].consecutiveSuccessfulChecks < 3))
                {
                	MessageState[i].consecutiveSuccessfulChecks++;
				}
				MessageState[i].consecutiveCRCErrorFrames = 0;
				MessageState[i].consecutiveTwoFrameDiffGreaterThanTwoCount = 0;
				MessageState[i].consecutiveUnchangedCounterFrames = 0;
            }	
            else
            {
                // 验证失败处理
                MessageState[i].consecutiveSuccessfulChecks = 0;
                
                // 分类记录错误类型
                if (counter == lastcounter[i])
                {
                    MessageState[i].consecutiveUnchangedCounterFrames++;
                }
                
                if (!crcValid)
                {
                    MessageState[i].consecutiveCRCErrorFrames++;
                }
                
                if (counter > lastcounter[i] + 1)
                {
					MessageState[i].consecutiveTwoFrameDiffGreaterThanTwoCount++;
                }
            }
            
            // 故障状态管理
            if (MessageState[i].consecutiveSuccessfulChecks >= 3)
            {
                // 清除故障状态，设置为0xFF表示已清除
                MessageState[i].consecutiveCRCErrorFrames = 0;
                MessageState[i].consecutiveTwoFrameDiffGreaterThanTwoCount = 0;
                MessageState[i].consecutiveSuccessfulChecks = 0;
                MessageState[i].consecutiveUnchangedCounterFrames = 0;
                ClearDtcFaultState(MessageState[i].dtcItem);
            }
            else if ((MessageState[i].consecutiveCRCErrorFrames >= 3) ||
                    (MessageState[i].consecutiveTwoFrameDiffGreaterThanTwoCount >= 3) ||
                    (MessageState[i].consecutiveUnchangedCounterFrames >= 5))
            {
                // 设置故障状态，重置所有计数器
                MessageState[i].consecutiveCRCErrorFrames = 0;
                MessageState[i].consecutiveTwoFrameDiffGreaterThanTwoCount = 0;
                MessageState[i].consecutiveUnchangedCounterFrames = 0;
                MessageState[i].consecutiveSuccessfulChecks = 0;
                SetDtcFaultState(MessageState[i].dtcItem);

            }
            
            lastcounter[i] = counter;
            break; // 找到匹配消息后退出循环
        }
    }
    
    return 0;
}


