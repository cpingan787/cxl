 



























 


 
 



























 


 











 






















 

 







 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


void __LDSR(int regID, int selID, unsigned int val);

unsigned int __STSR(int regID, int selID);







 



 




 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 



 
 

 

 



 


 



 



 



 




 



 



 


 
typedef signed char         sint8;           
typedef unsigned char       uint8;           
typedef signed short        sint16;          
typedef unsigned short      uint16;          
typedef signed long         sint32;          
typedef unsigned long       uint32;          
typedef float               float32;
typedef double              float64;
typedef signed long long    sint64;         
 
typedef unsigned long long  uint64;           

typedef unsigned long       uint8_least;     
typedef unsigned long       uint16_least;    
typedef unsigned long       uint32_least;    
typedef signed long         sint8_least;     
typedef signed long         sint16_least;    
typedef signed long         sint32_least;    
typedef unsigned char       boolean;         





 




 




 


 



 


 



 



 

 
  typedef unsigned char StatusType;





 
typedef uint8 Std_ReturnType;

typedef struct
{
  uint16  vendorID;
  uint16  moduleID;
  uint8  instanceID;
  uint8  sw_major_version;
  uint8  sw_minor_version;
  uint8  sw_patch_version;
} Std_VersionInfoType;  







 




 

 




















 
 



 


 



 
typedef uint16       PduIdType;

typedef uint16       PduLengthType;





 



 
 
 
 
 
 




 




 




 




 




 




 




 




 




 




 




 




 






 




 




 




 




 




 
typedef struct
{
    uint8 * SduDataPtr;
    uint8 * MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;

 
typedef uint8 PNCHandleType;

 
typedef enum
{
    TP_STMIN = 0x00,  
    TP_BS = 0x01,     
    TP_BC = 0x02     
 
} TPParameterType;

 
typedef enum
{
    BUFREQ_OK = 0x00,        
    BUFREQ_E_NOT_OK = 0x01,  
    BUFREQ_E_BUSY = 0x02,   
 
    BUFREQ_E_OVFL = 0x03     
} BufReq_ReturnType;

 
typedef enum
{
    TP_DATACONF = 0x00,   
 
    TP_DATARETRY = 0x01,  
 
    TP_CONFPENDING = 0x02 
 
} TpDataStateType;


 
typedef struct
{
    TpDataStateType TpDataState; 
 
    PduLengthType TxTpDataCnt;   
 
} RetryInfoType;


 
typedef uint8 NetworkHandleType;



 
typedef uint8 IcomConfigIdType;

typedef enum
{
    ICOM_SWITCH_E_OK = 0x00,
    ICOM_SWITCH_E_FAILED = 0x01
} IcomSwitch_ErrorType;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 
 




 
 
typedef uint32 Can_IdType;
typedef uint16 Can_HwHandleType;

 
typedef struct STag_Can_PduType
{
   
  uint8      *sdu;
   
  Can_IdType id;
   
  PduIdType  swPduHandle;
   
  uint8 length;
} Can_PduType;


 
typedef struct STag_Can_HwType
{
   
  Can_IdType CanId;
   
  Can_HwHandleType  Hoh;
   
  uint8 ControllerId;
} Can_HwType;



 
 
typedef enum ETag_Can_StateTransitionType
{
  CAN_T_START = 0,
  CAN_T_STOP,
  CAN_T_SLEEP,
  CAN_T_WAKEUP
} Can_StateTransitionType;




 






 

 
typedef enum ETag_Can_ReturnType
{
  CAN_OK = 0,
  CAN_NOT_OK,
  CAN_BUSY
} Can_ReturnType;



 
 
typedef enum ETag_CanTrcv_TrcvModeType
{
  CANTRCV_TRCVMODE_NORMAL = 0U,
  CANTRCV_TRCVMODE_SLEEP,
  CANTRCV_TRCVMODE_STANDBY
} CanTrcv_TrcvModeType;



 

 
typedef enum ETag_CanTrcv_TrcvWakeupModeType
{
  CANTRCV_WUMODE_ENABLE = 0U,
  CANTRCV_WUMODE_CLEAR,
  CANTRCV_WUMODE_DISABLE
} CanTrcv_TrcvWakeupModeType;



 
 
typedef enum ETag_CanTrcv_TrcvWakeupReasonType
{
  CANTRCV_WU_ERROR = 0U,
  CANTRCV_WU_BY_BUS,
  CANTRCV_WU_BY_PIN,
  CANTRCV_WU_INTERNALLY,
  CANTRCV_WU_NOT_SUPPORTED,
  CANTRCV_WU_POWER_ON,
  CANTRCV_WU_RESET,
  CANTRCV_WU_BY_SYSERR
}CanTrcv_TrcvWakeupReasonType;



 



 


 




 
 


typedef enum
{
    CANIF_CS_UNINIT = 0u,
    CANIF_CS_STARTED,
    CANIF_CS_STOPPED,
    CANIF_CS_SLEEP
} CanIf_ControllerModeType;



 
     
      








 


 
 



 
extern Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType* PduInfoPtr );
extern void CanIf_TxConfirmation( PduIdType CanTxPduId );
extern void CanIf_RxIndication(const Can_HwType * Mailbox, const PduInfoType * PduInfoPtr);
extern void CanIf_ControllerBusOff(uint8 ControllerId);
extern void CanIf_ControllerModeIndication( uint8 ControllerId, CanIf_ControllerModeType ControllerMode );









 

 













 
 
 



 

struct CanTp_ConfigStructType;
typedef struct CanTp_ConfigStructType CanTp_ConfigType;

extern const struct CanTp_ConfigStructType CanTp_Config;

 







 



extern void CanTp_TxConfirmation(PduIdType TxPduId);
extern void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType *PduInfoPtr);



 



























 


 
 



























 


 



 
 
 
































 


 
 
 
 
 
 

 

 

 

 

 

 

 

 


 


 

 

 

 

 



 



 
typedef union
{
    uint8 u8_arr[4];
    struct {
           uint8 ReceivedRequset       :1;
           uint8 EnableDiagResp        :1;
           uint8 FunctionalRequest     :1;
           uint8 ServiceInProgress     :1;
           uint8 RcrRpInProgress       :1;
           uint8 EnablePrgSession      :1;
           uint8 Session               :2;
           uint8 SecurityKeyAllowed    :1;
           uint8 SecurityUnlock        :1;
           uint8 FingerPrint           :1;
           uint8 AllowTransferData     :1;
           uint8 TransferDataOver      :1;
           uint8 RequestTransferExit   :1;
           uint8 Driver34              :1;
           uint8 Driver36              :1;
           uint8 Driver37              :1;
           uint8 DriverCrc             :1;
           uint8 EraseMemoryAppA       :1;
           uint8 AppA34                :1;
           uint8 AppA36                :1;
           uint8 AppA37                :1;
           uint8 Service36_1stBlock    :1;
           uint8 AppACrc               :1;
           uint8 AppBCrc               :1;
           uint8 CalCrc                :1;
           uint8 EraseMemoryAppB       :1;
           uint8 EraseMemoryCal        :1;
    } State;
} DcmState_t;


 
extern uint8             Dcm_S3TimerStartFlag;
extern uint16            Dcm_S3Timer;
extern uint8             Dcm_P2TimerStartFlag;
extern uint16            Dcm_P2Timer;
extern uint8             gDCM_FunReq_Flag;
extern DcmState_t        DcmState ;
extern uint8        	 ServerIdPost ;
extern uint8        	 ServerPostCount ;


 
 

 






























 

 

extern void Dcm_Init( void );
extern void Dcm_MainFunction( void );
extern void Dcm_MainFunction_Post( void );
extern void Dcm_TimerFunction( void );
extern BufReq_ReturnType Dcm_CopyTxData(PduIdType id, const PduInfoType *info, const RetryInfoType* retry, PduLengthType* availableDataPtr);
extern void Dcm_RxIndication(PduIdType id, Std_ReturnType Result);
extern void Dcm_FuncRxIndication(void);
extern void Dcm_TxConfirmation(PduIdType id, Std_ReturnType Result);
extern void Dsd_Nrc78ResponseProcess(uint8 forceSend);
extern BufReq_ReturnType Dcm_StartOfReception(PduIdType id, const PduInfoType* info, PduLengthType TpSduLength, PduLengthType* bufferSizePtr);
extern BufReq_ReturnType Dcm_CopyRxData(PduIdType id, const PduInfoType *info, PduLengthType* bufferSizePtr);






























 



 



 


 



 
extern uint8 g_BootM_SIBTimeout;
extern uint8 g_BootM_SIBData[(3u)];


 
extern uint8 BootM_GetFlag(void);
extern uint8 BootM_FlagHandle(uint8 Flag);
extern uint8 BootM_IsAllLBA_Valid(void);
extern uint8 BootM_IsAllLBB_Valid(void);
extern void BootM_ReprogramRespond(void);





























 


 


 


 


 
extern void EcuMService_Init(void);
extern void EcuMService_DeInit(void);
 



























 


 



 
extern volatile uint16 Comm_MainTick;


 
extern void CommF_DataCopy(void * des, void * src,uint32 srcSize);
extern uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length);
extern void CommF_DataSet(void * des, uint8 src,uint32 desSize);
extern uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length);
extern void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 















 
 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 




 
 
 
 



 










 




 



 




 
 

 




 






 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 

 

 



 





 




 




 





 

 
 



 



 

 



 

 
 
 
 
 
 
 
 
 
 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
typedef struct STag_Can_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  const void * pHWUnitInfo;
   
  const void *
    pControllerPCConfig;
   
  const void *
    pControllerPBConfig;
   
  const void * pHohConfig;
   
  const void * pPhysicalControllerToIndex;
} Can_ConfigType;

 
typedef enum ETag_Can_SelfTestType
{
   
  CAN_T_SELF_OFF = 0,
   
  CAN_T_SELF_EXTERNAL,
   
  CAN_T_SELF_INTERNAL
} Can_SelfTestType;



 
 
typedef enum ETag_Can_HWConsistencyModeType
{
   
  CAN_STATIC = 0,
   
  CAN_DYNAMIC
}Can_HWConsistencyModeType;

 
 
typedef struct STag_Can_MirrorGlobalType
{
   
  uint32 ulGCTR;
} Can_MirrorGlobalType;

  
 
typedef struct STag_Can_MirrorChannelType
{
   
  uint32 ulCFG;
   
  uint32 ulCTR;
   
  uint32 ulFDCFG;
   
  uint32 ulDCFG;
} Can_MirrorChannelType;

 
 
typedef struct STag_Can_MirrorHohType
{
   
  uint32 ulRFCC;
   
  uint32 ulTXQCC;
   
  uint32 ulCFCC;
} Can_MirrorHohType;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".CAN_CFG_DBTOC_UNSPECIFIED"




 
 


 
 
 
 
extern const Can_ConfigType Can_GaaConfig[];
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PUBLIC_CODE_ROM"




 
 


 
 

 
extern  void Can_Init
(const Can_ConfigType * Config);

 
extern  Std_ReturnType Can_ChangeBaudrate(
  uint8 Controller, const uint16 Baudrate);

 
extern  Std_ReturnType Can_CheckBaudrate(
  uint8 Controller, const uint16 Baudrate);

 
extern  Std_ReturnType Can_SetBaudrate(
  uint8 Controller, uint16 BaudRateConfigID);

 
extern  Can_ReturnType Can_SetControllerMode(
  uint8 Controller, Can_StateTransitionType Transition);

 
extern  void Can_DisableControllerInterrupts(
  uint8 Controller);

 
extern  void Can_EnableControllerInterrupts(
  uint8 Controller);

 
extern  Can_ReturnType Can_Write(
  Can_HwHandleType Hth,
  const Can_PduType * PduInfo);

 
extern  void Can_MainFunction_Write(void);
extern  void Can_MainFunction_Write_0(void);
 
extern  void Can_MainFunction_Read(void);
extern  void Can_MainFunction_Read_0(void);
 
extern  void Can_MainFunction_BusOff(void);
 
extern  void Can_MainFunction_Wakeup(void);
 
extern  void Can_MainFunction_Mode(void);

extern  void Can_GetVersionInfo(
  Std_VersionInfoType * versioninfo);


extern  Std_ReturnType Can_CheckHWConsistency
                               (Can_HWConsistencyModeType LenHWConsistencyMode);

extern  Std_ReturnType Can_RAMTest(
  uint32 LulPageID);

 
extern  Std_ReturnType Can_SelfTestChannel
                    (uint8 LucController, Can_SelfTestType LenTest_Transition);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_APPL_CODE_ROM"




 
 


 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 




 


 

















 
Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType* PduInfoPtr )
{
     Std_ReturnType retval = 0U;
     Can_PduType CanIfTxPduObject;

     {if((CanTxPduId) != 0U) { }};
     CanIfTxPduObject.swPduHandle = (0U);   
     CanIfTxPduObject.length      = (uint8)PduInfoPtr->SduLength;
     CanIfTxPduObject.id          = (0x719U | (0x40000000U));  
     CanIfTxPduObject.sdu         = PduInfoPtr->SduDataPtr;
     if(CAN_OK != Can_Write((Can_HwHandleType)2,&CanIfTxPduObject))
     {
        retval = 1U;
     }
     return retval;
}


















 
void CanIf_TxConfirmation( PduIdType CanTxPduId )
{
    if(CanTxPduId == (0U))
    {
        CanTp_TxConfirmation(0);
    }
}

















 
void CanIf_RxIndication(const Can_HwType * Mailbox, const PduInfoType * PduInfoPtr)
{
    PduInfoType CanIf_TpRxPduInfo ;
    uint8 i;
     
    if(g_BootM_SIBTimeout == 0u)
    {
        for(i = 0; i < (3u); i++)
        {
            g_BootM_SIBData[i] = PduInfoPtr->SduDataPtr[i];
        }
    }

    CanIf_TpRxPduInfo.SduLength = PduInfoPtr->SduLength;
    CanIf_TpRxPduInfo.SduDataPtr = (uint8*)PduInfoPtr->SduDataPtr;
    if (PduInfoPtr->SduLength <= 64U)
    {
         
        if((0x711U | (0x40000000U)) == Mailbox->CanId )
        {
            CanTp_RxIndication(0, &CanIf_TpRxPduInfo);
        }
        else if ((0x7DFU | (0x40000000U)) == Mailbox->CanId )
        {
            (gDCM_FunReq_Flag = 0x01);
            CanTp_RxIndication(1, &CanIf_TpRxPduInfo);
        }
        else
        {
             
        }
    }
}

















 
void CanIf_ControllerBusOff(uint8 ControllerId)
{
     
    Can_Init((&Can_GaaConfig[0]));
    Can_SetControllerMode(0U, CAN_T_START);
}

















 
void CanIf_ControllerModeIndication( uint8 ControllerId, CanIf_ControllerModeType ControllerMode )
{
    {if((ControllerId) != 0U) { }};
    {if((ControllerMode) != 0U) { }};
     
}
