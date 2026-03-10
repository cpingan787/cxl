#include "vehicleSignalApp.h"
#include "logHal.h"

/*******************************************************************************/
                                            
#define CAN_ID_CONFIGURE_DEFINE_BEGIN(canChannel)                       typedef struct \
                                                                        {\

#define CAN_ID_CONFIGURE_DEFINE(canIdName)                                  canId_map_configure_t s##canIdName;
                                              
#define CAN_ID_CONFIGURE_DEFINE_END(canChannel)                         }struct_can##canChannel##Id_define_t;\

                                              
                                              
/*****************************************************************************/
#define CAN_ID_CONFIGURE_BEGIN(CanChannel)     const static struct_can##CanChannel##Id_define_t m_can##CanChannel##IdList =         \
                                          {                                                               \
                                            
#define CAN_V_ID_ELEMENT(canIdName,cycleTime,Id)    .s##canIdName = {Id,cycleTime},

#define CAN_ID_CONFIGURE_END(CanChannel)    };                                                              \
                                          static can_signal_msg_buffer_t m_can##CanChannel##RxMsgBuffer[sizeof(m_can##CanChannel##IdList)/sizeof(canId_map_configure_t)];\

/******************************************************************************/

#define CAN_MSG_BUFFER_ADDRESS(canChannel)      (m_can##canChannel##RxMsgBuffer)                                              
#define CAN_ID_TO_BUFFER_INDEX(canChannel,CanIdName)       ((&m_can##canChannel##IdList.s##CanIdName - (canId_map_configure_t*)&m_can##canChannel##IdList))                                            

/********************************************************************************/                                            

/*

typedef struct
{
    canId_map_configure_t s[T_BOX_FD1];

}struct_can[0]
*/
CAN_ID_CONFIGURE_DEFINE_BEGIN(0)                                       
    CAN_ID_CONFIGURE_DEFINE(T_BOX_FD1)//
    CAN_ID_CONFIGURE_DEFINE(T_BOX_FD4)//
    CAN_ID_CONFIGURE_DEFINE(DDCM1)
    CAN_ID_CONFIGURE_DEFINE(DDCM3)
    CAN_ID_CONFIGURE_DEFINE(PDCM1)
    CAN_ID_CONFIGURE_DEFINE(BCM12)
    CAN_ID_CONFIGURE_DEFINE(BCM3)
    CAN_ID_CONFIGURE_DEFINE(BCM1)
    CAN_ID_CONFIGURE_DEFINE(R_PBOX1)
    CAN_ID_CONFIGURE_DEFINE(F_PBOX1)
    CAN_ID_CONFIGURE_DEFINE(AC1)
    CAN_ID_CONFIGURE_DEFINE(ESP_FD2)
    CAN_ID_CONFIGURE_DEFINE(PEPS2)
    CAN_ID_CONFIGURE_DEFINE(BCM8)
    CAN_ID_CONFIGURE_DEFINE(DCT5)
    CAN_ID_CONFIGURE_DEFINE(GW_FD1)
    CAN_ID_CONFIGURE_DEFINE(T_BOX_FD6)//
    CAN_ID_CONFIGURE_DEFINE(AC2)
    CAN_ID_CONFIGURE_DEFINE(SCM1)
    CAN_ID_CONFIGURE_DEFINE(CSA3)
    CAN_ID_CONFIGURE_DEFINE(IP2)
    CAN_ID_CONFIGURE_DEFINE(BCM11)
    CAN_ID_CONFIGURE_DEFINE(PEPS4)
    CAN_ID_CONFIGURE_DEFINE(TPMS1)
    CAN_ID_CONFIGURE_DEFINE(EEM1)
    CAN_ID_CONFIGURE_DEFINE(ECM2)
    CAN_ID_CONFIGURE_DEFINE(ECM1)
    CAN_ID_CONFIGURE_DEFINE(ABS3)
    CAN_ID_CONFIGURE_DEFINE(BCM14)
    CAN_ID_CONFIGURE_DEFINE(BCM7)
    CAN_ID_CONFIGURE_DEFINE(T_BOX_FD9)
    CAN_ID_CONFIGURE_DEFINE(BCM19)
    CAN_ID_CONFIGURE_DEFINE(GLO_NASS1)
    CAN_ID_CONFIGURE_DEFINE(EVCC1)//
    CAN_ID_CONFIGURE_DEFINE(VCU_FD4)//
		CAN_ID_CONFIGURE_DEFINE(BCM9)
		CAN_ID_CONFIGURE_DEFINE(BMS_FD10) 
		CAN_ID_CONFIGURE_DEFINE(OBC_FD2)	
		CAN_ID_CONFIGURE_DEFINE(CSA1)	
		CAN_ID_CONFIGURE_DEFINE(TPMS2)	
		CAN_ID_CONFIGURE_DEFINE(BMS_FD1) 
		CAN_ID_CONFIGURE_DEFINE(VCU_FD3)
		CAN_ID_CONFIGURE_DEFINE(VCU18)
		CAN_ID_CONFIGURE_DEFINE(VCU5)  
		CAN_ID_CONFIGURE_DEFINE(T_BOX_FD8)
		CAN_ID_CONFIGURE_DEFINE(T_BOX_FD5)
		
CAN_ID_CONFIGURE_DEFINE_END(0)                                  




CAN_ID_CONFIGURE_BEGIN(0)    
	CAN_V_ID_ELEMENT(T_BOX_FD1,100,0x033)//16
    CAN_V_ID_ELEMENT(T_BOX_FD4,100,0x1E1)//16
    CAN_V_ID_ELEMENT(DDCM1,100,0x2CA) //8
    CAN_V_ID_ELEMENT(DDCM3,100,0x2F7) //8
    CAN_V_ID_ELEMENT(PDCM1,100,0x2CD) //8
    CAN_V_ID_ELEMENT(BCM12,50,0x238)//8
    CAN_V_ID_ELEMENT(BCM3,50,0x345)//16
    CAN_V_ID_ELEMENT(BCM1,50,0x319)//16
    CAN_V_ID_ELEMENT(R_PBOX1,50,0x19C)//16
    CAN_V_ID_ELEMENT(F_PBOX1,50,0x19B)//8
    CAN_V_ID_ELEMENT(AC1,100,0x29D)//8
    CAN_V_ID_ELEMENT(ESP_FD2,20,0x137)//64
    CAN_V_ID_ELEMENT(PEPS2,50,0x295)//8
    CAN_V_ID_ELEMENT(BCM8,100,0x29F)//8
    CAN_V_ID_ELEMENT(DCT5,20,0x221)//8
    CAN_V_ID_ELEMENT(GW_FD1,100,0x2BB)//64
    CAN_V_ID_ELEMENT(T_BOX_FD6,100,0x33D)//16
    CAN_V_ID_ELEMENT(AC2,100,0x385)//8
    CAN_V_ID_ELEMENT(SCM1,100,0x2D1)//16
    CAN_V_ID_ELEMENT(CSA3,50,0x244)//8
    CAN_V_ID_ELEMENT(IP2,50,0x27F)//16
    CAN_V_ID_ELEMENT(BCM11,100,0x305)//8
    CAN_V_ID_ELEMENT(PEPS4,200,0x302)//8
    CAN_V_ID_ELEMENT(TPMS1,500,0x341)//16
    CAN_V_ID_ELEMENT(EEM1,100,0x2A8)//16
    CAN_V_ID_ELEMENT(ECM2,20,0x271)//16
    CAN_V_ID_ELEMENT(ECM1,10,0x111)//16
    CAN_V_ID_ELEMENT(ABS3,20,0x265)//16
    CAN_V_ID_ELEMENT(BCM14,100,0x2A3)//8
    CAN_V_ID_ELEMENT(BCM7,100,0x28D)//8
    CAN_V_ID_ELEMENT(T_BOX_FD9,100,0x1FE)//8
    CAN_V_ID_ELEMENT(BCM19,100,0x30F)//8
    CAN_V_ID_ELEMENT(GLO_NASS1,20,0x056)
    CAN_V_ID_ELEMENT(EVCC1,200,0x310)//8
    CAN_V_ID_ELEMENT(VCU_FD4,100,0x2D6)//64
	CAN_V_ID_ELEMENT(BCM9,100,0x2E8)//8 
	CAN_V_ID_ELEMENT(BMS_FD10,100,0X2F6)//64 
	CAN_V_ID_ELEMENT(OBC_FD2,100,0x31F)//8	
	CAN_V_ID_ELEMENT(CSA1,20,0x165)//8	
	CAN_V_ID_ELEMENT(TPMS2,500,0x395)//16		
	CAN_V_ID_ELEMENT(BMS_FD1,10,0x0F2)//64
	CAN_V_ID_ELEMENT(VCU_FD3,50,0x219)//64
	CAN_V_ID_ELEMENT(VCU18,50,0x1D7)//8  
	CAN_V_ID_ELEMENT(VCU5,200,0x31B)//8  
	CAN_V_ID_ELEMENT(T_BOX_FD8,500,0x33E)//64
	CAN_V_ID_ELEMENT(T_BOX_FD5,100,0x2EE)//16
			
CAN_ID_CONFIGURE_END(0) 

static const can0_signal_configure_t m_can0SignalConfigure =
{
    .T_Box_RemtWinCtrl =            //Զ�̿��Ƴ���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 0,//��ʼλ
        .bitLength = 3,//���ݳ���
        .resulotion = 1,//�ֱ���
        .offset = 0,//ƫ����
        .useInvalidFlag = 1,//Ĭ��ֵ�Ƿ���Ч
        .InvalidData = 0xFFFFFFFF,   //Ĭ��ֵ
    },
    .T_Box_RemtSrCtrl = //Զ�̿����촰
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 28,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,  
    },
    .T_Box_RemtSsCtrl = //T_BOX_FD1 0x033 Զ�̿���������
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 24,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,  
    },
    .T_BOX_RemtDoorLockCtrl = //Զ�̿�������
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 5,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF, 
    },
    .T_BOX_RemtTrunkCtrl = //Զ�̿��ƺ���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 3,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF, 
    },
    .T_Box_RemtCarSearch = //Զ�̿������ѻ�����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 44,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtCockpitClnReq = //T_BOX_FD4 0x1E1Զ���������
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD4),
        .dataType = 0,
        .startBit = 52,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
 /*   .ReleAlarmSts = //�����������
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VMDR2),
        .dataType = 0,
        .startBit = 12,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },*/
   
    .EVCC_CPLineSts = //���ǹCP״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,EVCC1),
        .dataType = 0,
        .startBit = 11,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .DrvWinPosnSts = //BCM9 0x2E8 ����״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 19,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },   
    .RLWinPosnSts = //BCM9 0x2E8 ����״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 30,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .PassWinPosnSts = //BCM9 0x2E8����״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 17,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .RRWinPosnSts = //BCM9 0x2E8 ����״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 27,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .SrPosn_VR_APP = //�촰״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM12),
        .dataType = 0,
        .startBit = 48,
        .bitLength = 7,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },  
    .SsPosn_VR_APP = //BCM12 0x238������״̬��� 
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM12),
        .dataType = 0,
        .startBit = 40,
        .bitLength = 7,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .DoorLockSts = //BCM3 ����״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM3),
        .dataType = 0,
        .startBit = 12,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .TrunkSts = //BCM1 0x319 ������״̬���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 23,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .LTurnLmpSts = //BCM1 0x319 //R_PBox1 0x19C����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 10,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .RTurnLmpSts = //BCM1 0x319 //R_PBox1 0x19C����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 9,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
    .WhistleSts_F_PBOX = //BCM8 0x29F //  BCM 0x19B ����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM8),
        .dataType = 0,
        .startBit = 45,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },     
//    .WhistleSts_F_PBOX = //BCM ����
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,F_PBOX1),
//        .dataType = 0,
//        .startBit = 45,
//        .bitLength = 1,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    }, 
    .ACCbnClnEnasts = //AC1 0x29D �������״̬�ź�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC1),
        .dataType = 0,
        .startBit = 47,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ACCbnClnOffCode = //AC1 0x29D ������๦�ܲ�����ԭ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC1),
        .dataType = 0,
        .startBit = 43,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .VehSpd = //ESP_FD2 0x137 //ABS3 0x265  ���� Km/h
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,ESP_FD2),
        .dataType = 0,
        .startBit = 336,
        .bitLength = 13,
        .resulotion = 0.05625,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .VehSpdVld = //ESP_FD2 0x137 //ABS3 0x265  ������Ч��־
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,ESP_FD2),
        .dataType = 0,
        .startBit = 333,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .SysPowerModVld = //PEPS2 0x295 ��Դ��Ч��־
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,PEPS2),
        .dataType = 0,
        .startBit = 13,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .SysPowerMod = //PEPS2 0x295 ��Դ״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,PEPS2),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RemoteModSts = //BCM8 0x29F Զ��ģʽ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM8),
        .dataType = 0,
        .startBit = 9,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DrvAntiPinchSts = //BCM9	0x2E8//DDCM1 0x2CA �������д���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 11,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassAntiPinchSts = //BCM9	0x2E8//PDCM1 0x2CD �������д���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 12,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RLAntiPinchSts = //BCM9	0x2E8//DDCM1 0x2CA �������д���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 13,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RRAntiPinchSts = //BCM9	0x2E8//PDCM1 0x2CD �������д���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DrvWinLrnSts = //BCM9 0x2E8 //DDCM1 0x2CA ����ѧϰ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 21,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassWinLrnSts = //BCM9 0x2E8 //PDCM1 0x2CD ����ѧϰ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 23,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RLWinLrnSts = //BCM9 0x2E8//DDCM1 0x2CA ����ѧϰ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 26,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RRWinLrnSts = //BCM9 0x2E8 //PDCM1 0x2CD ����ѧϰ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM9),
        .dataType = 0,
        .startBit = 24,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .SrAntiPinch = //BCM12 0x238 �촰���д���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM12),
        .dataType = 0,
        .startBit = 47,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .SsAntiPinch = //BCM12 0x238 ���������д���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM12),
        .dataType = 0,
        .startBit = 55,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .CURRENT_GEAR = //DCT5 0x221 P/N ��λ״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,DCT5),
        .dataType = 0,
        .startBit = 52,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DrvDoorSts = //BCM1 0x319 ���Źر�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 22,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .LRDoorSts = //BCM1 0x319 ���Źر�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 21,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassengerDoorSts = //BCM1 0x319 ���Źر�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 20,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RRDoorSts = //BCM1 0x319 ���Źر�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 19,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .AntitheftSts = //BCM3 0x345���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM3),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .U_BATT = //GW_FD1 0x2BB���ص��� V
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,GW_FD1),
        .dataType = 0,
        .startBit = 74,
        .bitLength = 14,
        .resulotion = 0.0009765625,
        .offset = 3,//ƫ����
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .T_Box_RemtEngCtrl = //T_BOX_FD1 0x033 ����/�ر�����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 46,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .T_BOX_RemtAutoCtrl = //T_BOX_FD1 0x033 Զ�̿���\�رտյ�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 16,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtDrvTempSet = //T_BOX_FD1 0x033 �յ������¶�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 10,
        .bitLength = 6,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtPassTempSet = //T_BOX_FD1 0x033 �յ������¶�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 18,
        .bitLength = 6,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtAIUReq = //T_BOX_FD1 0x033 Զ�̿������ӷ�����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 38,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_Box_RemtRearDefrostCtrl = //T_BOX_FD4 0x1E1 Զ�̿������رպ��˪
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD4),
        .dataType = 0,
        .startBit = 38,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtFrntDefrostCtrl = //T_BOX_FD4 0x1E1 Զ�̿������ر�ǰ��˪
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD4),
        .dataType = 0,
        .startBit = 18,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtDrvSeatHeatgLvlSet = //T_Box_FD1 0x033 //T_BOX_FD9 0x1FE ���ݲ����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 50,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtPassSeatHeatgLvlSet = //T_Box_FD1 0x033 //T_BOX_FD9 0x1FE ���ݲ����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 53,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .T_BOX_RemtSecRowLeSeatHeatgLvlSet = //T_BOX_FD9 0x1FE ���������
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD9),
//        .dataType = 0,
//        .startBit = 16,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//    .T_BOX_RemtSecRowRiSeatHeatgLvlSet = //T_BOX_FD9 0x1FE �����Ҽ���
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD9),
//        .dataType = 0,
//        .startBit = 20,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    .T_BOX_RemtDrvSeatVentnLvlSet = //T_BOX_FD1 0x033 ���ݲ�ͨ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 32,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtPassSeatVentnLvlSet = //T_BOX_FD1 0x033 ���ݲ�ͨ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 35,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .T_BOX_RemtSecRowLeSeatVentnLvlSet = //T_BOX_FD9 0x1FE ������ͨ��
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD9),
//        .dataType = 0,
//        .startBit = 4,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//    .T_BOX_RemtSecRowRiSeatVentnLvlSet = //T_BOX_FD9 0x1FE ������ͨ��
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD9),
//        .dataType = 0,
//        .startBit = 0,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    /* P01
    .T_BOX_RemtDrvSeatHeatgLvlSet = //T_BOX_FD1 0x033 ���ݲ����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 50,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtPassSeatHeatgLvlSet = //T_BOX_FD1 0x033 ���ݲ����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 53,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtSecRowLeSeatHeatgLvlSet = //T_BOX_FD6 0x33D ���������
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD6),
        .dataType = 0,
        .startBit = 60,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtSecRowRiSeatHeatgLvlSet = //T_BOX_FD6 0x33D �����Ҽ���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD6),
        .dataType = 0,
        .startBit = 36,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtDrvSeatVentnLvlSet = //T_BOX_FD1 0x033 ���ݲ�ͨ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 32,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtPassSeatVentnLvlSet = //T_BOX_FD6 0x33D ���ݲ�ͨ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 35,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtPassSeatVentnLvlSet = //T_BOX_FD1 0x033 ���ݲ�ͨ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD1),
        .dataType = 0,
        .startBit = 35,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },*/
    .T_BOX_RemtSteerWheelHeatCtrl = //T_BOX_FD6 0x33DԶ�̿��������̼���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD6),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ACOpenSts = //AC2 0x385 Զ�̿յ�״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ACAIUEnaSts = //AC1 0x29D ���ӷ�����״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC1),
        .dataType = 0,
        .startBit = 36,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ACRearWinHeatSts = //AC2 0x385Զ�̺��˪״̬���յ�ִ�У�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
        .dataType = 0,
        .startBit = 15,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ACFrntDefrstSts = //AC2 0x385 ǰ��˪״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
        .dataType = 0,
        .startBit = 40,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DrvSeatHeatSts = //SCM1 0x2D1 //BCM14 0x2A3 �������μ���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassSeatHeatSts = //SCM1 0x2D1 //BCM14 0x2A3 �������μ���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 12,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .SecRowLeSeatHeatSts = //BCM14 0x2A3 ���������μ���״̬
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM14),
//        .dataType = 0,
//        .startBit = 44,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//    .SecRowRiSeatHeatSts = //BCM14 0x2A3 ���������μ���״̬
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM14),
//        .dataType = 0,
//        .startBit = 40,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    .DrvSeatVentnSts = //SCM1 0x2D1 //BCM14 0x2A3 ��������ͨ��״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 10,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassSeatVentnSts = //SCM1 0x2D1 //BCM14 0x2A3 ��������ͨ��״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 8,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .SecRowLeSeatVentnSts = //0x28D ����������ͨ��״̬
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM7),
//        .dataType = 0,
//        .startBit = 48,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//    .SecRowRiSeatVentnSts = //0x28D ����������ͨ��״̬
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM7),
//        .dataType = 0,
//        .startBit = 60,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    /*
    .DrvSeatHeatSts = //SCM1 0x2D1 �������μ���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassSeatHeatSts = //SCM1 0x2D1 �������μ���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 12,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DrvSeatVentnSts = //SCM1 0x2D1 ��������ͨ��״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 10,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .PassSeatVentnSts = //SCM1 0x2D1 ��������ͨ��״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,SCM1),
        .dataType = 0,
        .startBit = 8,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },*/
//    .AC_FrntWinHeatEnaSts = //AC2 0x385 ǰ�絲ȫ������״̬�ź�
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
//        .dataType = 0,
//        .startBit = 44,
//        .bitLength = 1,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    .AC_FrntWinHeatDislSts = //AC2 0x385 ǰ�絲ȫ�����ȹ��ܽ����ź�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
        .dataType = 0,
        .startBit = 54,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .SteerWheelHeatdSts = //CSA3 0x244 �����̼���״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,CSA3),
        .dataType = 0,
        .startBit = 40,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .EngState = //ECM2 0x271 ������״̬
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,ECM2),
//        .dataType = 0,
//        .startBit = 61,
//        .bitLength = 2,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    .VCU_GearSts = //VCU_FD3 0x219 //DCT5 0x221 �����任����λ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU_FD3),
        .dataType = 0,
        .startBit = 84,
        .bitLength = 4,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .IP_FuelLvlLowLmpSts = //IP2 0x27F ����������
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,IP2),
//        .dataType = 0,
//        .startBit = 44,
//        .bitLength = 2,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
/*    .NeutralSts = //0x139 ECM10 �յ�״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,IP2),
        .dataType = 0,
        .startBit = 44,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },*/
    .ClsWinRmd = //BCM11 0x305 ����δ������
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM11),
        .dataType = 0,
        .startBit = 16,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .WarnPowerNotInOffPosn2 = //PEPS4 0x302 ����δϨ��/δ�µ����Ѵ���
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,PEPS4),
//        .dataType = 0,
//        .startBit = 11,
//        .bitLength = 1,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    /*.MbrMonrAlarmReq = //VMDR2 0x1E8 ���Ż����ⱨ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VMDR2),
        .dataType = 0,
        .startBit = 15,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },*/
    .FLTirePressIndSts = //TPMS1 0x341��ǰ��̥ѹ�쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 13,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .FRTirePressIndSts =//TPMS1 0x341//��ǰ��̥ѹ�쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 10,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RLTirePressIndSts = //TPMS1 0x341�����̥ѹ�쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 21,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RRTirePressIndSts = //TPMS1 0x341�Һ���̥ѹ�쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 18,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .FLTireTempSts = //TPMS1 0x341��ǰ��̥���쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 30,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .FRTireTempSts = //TPMS1 0x341��ǰ��̥���쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 28,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RLTireTempSts = //TPMS1 0x341�����̥���쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 26,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .RRTireTempSts = //TPMS1 0x341�Һ���̥���쳣��������/����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS1),
        .dataType = 0,
        .startBit = 24,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DeepSlpCmd = //EEM1 0x2A8���ص͵��������ź�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,EEM1),
        .dataType = 0,
        .startBit = 2,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .DrvDoorLockSts = //BCM3 0x345��ʻԱ������״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM3),
        .dataType = 0,
        .startBit = 34,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .HoodSts = //BCM1 0x319�����״̬	//F_PBOX1  0x19B
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 40,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ACAutoModEnaSts = //AC2 0x385�յ�Auto״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
        .dataType = 0,
        .startBit = 32,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .HiBeamSts = //BCM1 0x319 //F_PBOX1 0x19B Զ������״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 11,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .IP_VehTotDistanceValid = //IP2 0x27F �������Чֵ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,IP2),
        .dataType = 0,
        .startBit = 46,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .IP_VehTotDistance = //IP2 0x27F �����
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,IP2),
        .dataType = 0,
        .startBit = 24,
        .bitLength = 24,
        .resulotion = 0.1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .EngSpd = //ECM1 0x111 ������ת��
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,ECM1),
//        .dataType = 0,
//        .startBit = 48,
//        .bitLength = 16,
//        .resulotion = 0.125,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    .RWinHeatgIconRlyCmd =//R_PBOX1 19C ���˪
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,R_PBOX1),
        .dataType = 0,
        .startBit = 21,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .T_BOX_RemtFrntWinHeatCtrl = //T_BOX_FD6 33D ǰ�絲ȫ�����ȿ����ź�
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD6),
        .dataType = 0,
        .startBit = 54,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//    .WshngLiquidLvlWarn = //BCM19 0x30F ϴ��Һ����
//    {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM19),
//        .dataType = 0,
//        .startBit = 36,
//        .bitLength = 1,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
    .LowBeamSts = //BCM1 0x319 //F_PBOX1 0x19B �����״̬
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM1),
        .dataType = 0,
        .startBit = 62,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .TranPMode_Sts = //EEM1 0x2A8 ����ģʽ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,EEM1),
        .dataType = 0,
        .startBit = 7,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ECALLSts = 
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,GLO_NASS1),
        .dataType = 0,
        .startBit = 0,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .QuietVoiceReq = 
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,GLO_NASS1),
        .dataType = 0,
        .startBit = 7,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .CEM_FrntWinHeatEnaSts = 
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BCM19),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		.BMS_ChrgSts = 				//BMS_FD10 0X2F6 ������س��״̬
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BMS_FD10),
        .dataType = 0,
        .startBit = 309,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		 .VCU_ChrgnSts = 				//VCU_FD4 0X2D6 ���״̬
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU_FD4),
        .dataType = 0,
        .startBit = 85,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		  .BMS_DCChrgConnect = 				// BMS_FD10 0X2F6 ֱ�����������
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BMS_FD10),
        .dataType = 0,
        .startBit = 311,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
     },
		  .OBC_CCLineConnectSts = 				// OBC_FD2 0X31F ����CC����״̬
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,OBC_FD2),
        .dataType = 0,
        .startBit = 63,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		 .BMS_RemtPreHeatSts = 				// BMS_FD10 0X2F6 ���Ԥ����״̬
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BMS_FD10),
        .dataType = 0,
        .startBit = 61,
        .bitLength = 3,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		  .InCarTemp = 				// AC1 0x29D �յ����¶�
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC1),
        .dataType = 0,
        .startBit = 8,
        .bitLength = 8,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		  .EVCC_PPLineSts = 				// EVCC1 0x310 ���ǹPP״̬
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,EVCC1),
        .dataType = 0,
        .startBit = 14,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		 .BMS_BattHeatRunaway = 				// BMS_FD10 0X2F6 ���������ʧ�ر���
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BMS_FD10),
        .dataType = 0,
        .startBit = 316,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//		  .ACAmbTemp = 				// AC2 0x385 �����¶�
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
//        .dataType = 0,
//        .startBit = 16,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .ACDrvAirDistriMod = 				// AC1 0x29D ����ģʽ
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC1),
//        .dataType = 0,
//        .startBit = 21,
//        .bitLength = 3,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .ACFrntBlwrSpd = 				// AC2 0x385 ǰ�ķ���ٶ�
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,AC2),
//        .dataType = 0,
//        .startBit = 8,
//        .bitLength = 4,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .LTurnLmpSwtSts = 				// CSA1 0x165 ��ת��ƿ���״̬
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,CSA1),
//        .dataType = 0,
//        .startBit = 19,
//        .bitLength = 1,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .RTurnLmpSwtSts = 				// CSA1 0x165 ��ת��ƿ���״̬
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,CSA1),
//        .dataType = 0,
//        .startBit = 20,
//        .bitLength = 1,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .FLTirePress = 				// TPMS2 0x395 ��ǰ̥ѹ
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 0,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .FLTireTemp = 				// TPMS2 0x395 ��ǰ��̥�¶�
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 8,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
		 .BMS_SOC = 				// BMS_FD1 0x0F2 �������soc
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BMS_FD1),
        .dataType = 0,
        .startBit = 318,
        .bitLength = 10,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
//		 .VCU_ResrDrvRng = 				// VCU_FD4 0X2D6 ��ʻ���
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU_FD4),
//        .dataType = 0,
//        .startBit = 182,
//        .bitLength = 10,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .FRTirePress = 				// TPMS2 0X395 ��ǰ̥ѹ
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 16,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		  .FRTireTemp = 				// TPMS2 0X395 ��ǰ��̥�¶�
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 24,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		  .RLTirePress = 				// TPMS2 0X395 ���̥ѹ
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 32,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		  .RLTireTemp = 				// TPMS2 0X395 �����̥�¶�
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 40,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .RRTirePress = 				// TPMS2 0X395 �Һ�̥ѹ
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 48,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
//		 .RRTireTemp = 				// TPMS2 0X395 �Һ���̥�¶�
//		 {
//        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
//        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,TPMS2),
//        .dataType = 0,
//        .startBit = 56,
//        .bitLength = 8,
//        .resulotion = 1,
//        .offset = 0,
//        .useInvalidFlag = 1,
//        .InvalidData = 0xFFFFFFFF,
//    },
		 .VCU_VCUSts = 				// VCU_FD4 0X2D6//TPMS2 0X395 VCU��ѹ״̬
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU_FD4),
        .dataType = 0,
        .startBit = 177,
        .bitLength = 5,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		 .Phone_ChrgnMode = 				// T_BOX_FD4 0x1E1 ���ģʽ
		 {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD4),
        .dataType = 0,
        .startBit = 9,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		 .T_BOX_RemtSdlMod = //T_BOX_FD4 0x1E1 Զ������ģʽ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD4),
        .dataType = 0,
        .startBit = 54,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
		 .VCU_PhoneChrgnModeResp = //VCU18 0x1D7 ���ģʽ������Ӧ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU18),
        .dataType = 0,
        .startBit = 33,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
		.VCU_PhoneChrgnReqResp = //VCU18 0x1D7 �������������Ӧ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU18),
        .dataType = 0,
        .startBit = 32,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
		.BMS_ChrgTime = //BMS_FD10 0X2F6 ���ʱ��
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,BMS_FD10),
        .dataType = 0,
        .startBit = 96,
        .bitLength = 16,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		.VCU_ACLineCnctSts = //VCU5 0x31B �����������ϵ���ʾ
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,VCU5),
        .dataType = 0,
        .startBit = 39,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		.Phone_StrtHourMin = //T_BOX_FD8 0x33E ���ڷ���HUT
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD8),
        .dataType = 0,
        .startBit = 85,
        .bitLength = 11,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    }, 
		.Phone_EndHourMin = //T_BOX_FD8 0x33E ���ڷ���HUT
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD8),
        .dataType = 0,
        .startBit = 90,
        .bitLength = 11,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		.Phone_DelayTimMod = //T_BOX_FD8 0x33E ���ڷ���HUT
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD8),
        .dataType = 0,
        .startBit = 97,
        .bitLength = 7,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		.Phone_ChrgnReq = //T_BOX_FD5 0x2EE ���ڷ���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD5),
        .dataType = 0,
        .startBit = 22,
        .bitLength = 2,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		.T_BOX_DlyChargReq = //T_BOX_FD5 0x2EE ���ڷ���
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,T_BOX_FD5),
        .dataType = 0,
        .startBit = 11,
        .bitLength = 1,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
    .ABM_AirbagSignal = //
    {
        .msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
        .canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,EVCC1),
        .dataType = 0,
        .startBit = 0,
        .bitLength = 8,
        .resulotion = 1,
        .offset = 0,
        .useInvalidFlag = 1,
        .InvalidData = 0xFFFFFFFF,
    },
		
};


#define CAN_MSG_BUFFER_SIZE(canChannel)          (sizeof(m_can##canChannel##RxMsgBuffer)/sizeof(m_can##canChannel##RxMsgBuffer[0]))
#define CAN_MSG_BUFFER_GET_ELEMENT(canChannel,index)  m_can##canChannel##RxMsgBuffer[index]         
#define CAN_ID_CONFIGURE_POINTER(canChannel)   (&m_can##canChannel##IdList)

const can0_signal_configure_t * GetCan0SignalConfigure(void)
{
  return &m_can0SignalConfigure;
}


int16_t Can0RxCanMsgDispatch(uint32_t canId,uint8_t dlc,uint8_t *pData)
{
    int16_t ret;
    ret = 1;
    uint32_t i;
    //uint32_t j;
    canId_map_configure_t *pCanConfigure;

    pCanConfigure = (canId_map_configure_t *)CAN_ID_CONFIGURE_POINTER(0);
    for(i=0;i<CAN_MSG_BUFFER_SIZE(0);i++)
    {
        if(pCanConfigure[i].canId==canId)
        {
				for(int j=0;j<dlc;j++)
				{
					CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[j] = pData[j];
				}
                //TBOX_PRINT("ID = 0x%X,data = 0x%X\n",pCanConfigure[i].canId,CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[43]);
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[0] = pData[0];
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[1] = pData[1];      
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[2] = pData[2];      
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[3] = pData[3];      
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[4] = pData[4];      
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[5] = pData[5];      
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[6] = pData[6];      
//            CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[7] = pData[7]; 			
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag = 1;

            ret = 0;
            break;
        }
    }
    return ret;
}


int16_t Can0RxCanMsgCycleCheck(uint32_t cycleTime)
{
	uint32_t i;
    canId_map_configure_t *pCanConfigure;
    
    pCanConfigure = (canId_map_configure_t *)CAN_ID_CONFIGURE_POINTER(0);
	for(i=0;i<CAN_MSG_BUFFER_SIZE(0);i++)
	{
        if(CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag)
        {    
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag = 0;
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount = 0;
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).cycleTimeOutFlag = 0;
        }
        else
        {
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount += cycleTime;
            if((CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount)>(10*pCanConfigure[i].timeOutValue))
            {
                CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount = 0;
                CAN_MSG_BUFFER_GET_ELEMENT(0,i).cycleTimeOutFlag = 1;
                CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag = 0;
            }
        }
	}
	return 0;
}




