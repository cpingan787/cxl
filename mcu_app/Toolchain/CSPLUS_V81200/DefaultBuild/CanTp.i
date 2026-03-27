











 












 

 












 












 

 



























































 
 

 

























 


 
 




















 
 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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


 

 
 
typedef enum
{
    CANTP_STANDARD,  
    CANTP_EXTENDED,  
    CANTP_NORMALFIXED,
    CANTP_MIXED,
    CANTP_MIXED29BIT
} CanTp_AddressingFormatType;

 
typedef enum
{
    CANTP_CANFD_FUNCTIONAL,
    CANTP_CANFD_PHYSICAL,
    CANTP_FUNCTIONAL_RX,  
    CANTP_PHYSICAL_RX     
} CanTp_RxTaTypeType;

typedef enum
{
    CANTP_FUNCTIONAL_TX,  
    CANTP_PHYSICAL_TX     
} CanTp_TxTaTypeType;

typedef enum
{
    CANTP_MODE_FULL_DUPLEX,
    CANTP_MODE_HALF_DUPLEX
} CanTp_ChannelModeType;

typedef enum
{
    CANTP_CAN_20 = 0,
    CANTP_CAN_FD = 1
} CanTp_CanFrameType;

typedef enum
{
    CANTP_PADDING_OFF = 0,
    CANTP_PADDING_ON = 1
} CanTp_PaddingActivationType;

 
typedef struct
{
    
 
    const uint8 * Bs;

     
    const uint32 * Nar;

    


 
    uint32 Nbr;

    
 
    const uint32 * Ncr;

     
    CanTp_AddressingFormatType AddressingFormat;

     
    PduIdType RxIPduId;

     
    PduIdType RxNSduId;

     
    PduIdType RxNPduId;

     
    PduIdType TxFcNPduId;

     
    PduIdType TxFcLPduId;

    uint8 CanTpPduFlag; 
 

    PduLengthType RxNPduDLC;

     
    CanTp_PaddingActivationType RxPaddingActivation;

     
    CanTp_RxTaTypeType RxTaType;

    
 
    const uint8 * RxWftMax;

    
 
    const uint8 * STmin;

    const uint8 * NAe;

    const uint8 * NSa;

    const uint8 * NTa;

     
    CanTp_CanFrameType CanFrameType;
} CanTp_RxNSduType;

 
typedef struct
{
    
 
    uint32 Nas;

    
 
    const uint32 * Nbs;

    

 
    const uint32 * Ncs;

     
    CanTp_AddressingFormatType AddressingFormat;

     
    PduIdType TxIPduId;

     
    PduIdType TxNSduId;

     
    PduIdType TxNPduId;

     
    PduIdType RxFcNPduId;

     
    PduIdType TxLPduId;

    uint8 CanTpPduFlag; 
 

    PduLengthType TxNPduDLC;

     
    CanTp_PaddingActivationType TxPaddingActivation;

     
    CanTp_TxTaTypeType TxTaType;

    const uint8 * NAe;

    const uint8 * NSa;

    const uint8 * NTa;

     
    CanTp_CanFrameType CanFrameType;
} CanTp_TxNSduType;

typedef struct
{
    CanTp_ChannelModeType ChannelMode;
    boolean DiagGatewayResponseEnable;
    uint32 DiagGatewayResponseP2;
    uint32 DiagGatewayResponseP2Star;
    uint8 DiagGatewayResponseMaxNum;
    uint8 RxNSduNum;
    const CanTp_RxNSduType * RxNSdus;
    uint8 TxNsduNum;
    const CanTp_TxNSduType * TxNSdus;  
} CanTp_ChannelType;

 
typedef struct
{
    uint8 ChannelNum;
    const CanTp_ChannelType * CanTpChannel;
} CanTp_ConfigType;


 

 

 

 

 

extern const CanTp_ConfigType CanTp_Config;

 











 
extern  void CanTp_Init(const CanTp_ConfigType * CfgPtr);












 
extern  void CanTp_Shutdown(void);
















 
extern  Std_ReturnType
    CanTp_Transmit(PduIdType TxPduId, const PduInfoType * PduInfoPtr);
















 
extern  Std_ReturnType
    CanTp_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value);






 












 












 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
typedef struct STag_tDet_Error
{  
  uint16 ModuleId;

   
  uint8 InstanceId;

   
  uint8 ApiId;

   
  uint8 ErrorId;

}tDet_Error;




 
extern Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);

extern Std_ReturnType Det_ReportRuntimeError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);


 
 




















 
 



 












 












 


 



























 

 































 


 












 












 



 
 




















 
 




 
 




















 
 




 



 



 











 




 




 














 




 
 

typedef enum
{
    PDUR_DIRECT = 0u,
    PDUR_TRIGGERTRANSMIT
} PduR_DestPduDataProvisionType;

typedef uint16 PduR_PBConfigIdType;
typedef uint16 PduR_RoutingPathGroupIdType;

typedef uint32 PduR_TpThresholdType;

typedef enum
{
    PDUR_UNINIT = 0u,
    PDUR_ONLINE
} PduR_StateType;

 
typedef struct
{
    PduLengthType DefaultValueStart;
    PduLengthType DefaultValueLength;
} PduRDefaultValueType;

typedef enum
{
    PDUR_BUFFER_UNLOCK,
    PDUR_BUFFER_LOCK
} PduR_BufferLockStateType;

typedef enum
{
    PDUR_BUFFER_WRITE_OK,
    PDUR_BUFFER_WRITE_NOT_OK,
    PDUR_BUFFER_WRITE_PENDING
} PduR_BufferWriteStateType;

typedef enum
{
    PDUR_ROUTE_IF_TX_NOBUFFERED,
    PDUR_ROUTE_IF_RX_NOBUFFERED,
    PDUR_ROUTE_IF_RX_BUFFERED,
    PDUR_ROUTE_IF_GW_NOBUFFERED,
    PDUR_ROUTE_IF_GW_BUFFERED,
    PDUR_ROUTE_TP_TX_NOBUFFERED,
    PDUR_ROUTE_TP_RX_NOBUFFERED,
    PDUR_ROUTE_TP_RX_BUFFERED,
    PDUR_ROUTE_TP_GW_BUFFERED
} PduR_RouteType;

typedef enum
{
    PDUR_RES_INITIAL,
    PDUR_RES_PENDING,
    PDUR_RES_OK,
    PDUR_RES_NOT_OK
} PduR_RouteStatusType;

typedef enum
{
    PDUR_QUEUESTORE_NOT_OK,
    PDUR_QUEUESTORE_OK,
    PDUR_QUEUESTORE_FLUSH_OK
} PduR_QueueStoreType;

typedef struct
{
    boolean PduRSrcPduUpTxConf;
    uint8 BswModuleIndex;
    PduIdType PduRSrcModulePduIndex;
} PduRSrcPduType;

typedef struct
{
    uint8 BswModuleIndex;
    boolean transmissionConfirmation;
    uint8 PduSrcSum;
    const PduIdType * PduRSrcPduRef;
    PduIdType PduRDestModulePduIndex;
    PduLengthType configuredLength;
    PduR_RouteType routeType;
    PduR_DestPduDataProvisionType PduRDestPduDataProvision;
} PduRDestPduType;

typedef struct
{
    uint8 PduDestSum;
    boolean TpRoute;
    const PduIdType * PduRDestPduIdRef;
} PduRRoutingPathType;

typedef struct
{
    const PduRRoutingPathType * PduRRoutingPathRef;
} PduRRoutingTableType;
 
typedef struct
{
    boolean PduRIsEnabledAtInit;
    PduR_RoutingPathGroupIdType PduRRoutingPathGroupId;
    PduIdType PduRDestPduRefNumber;
    const PduIdType * PduRDestPduIdRef;
} PduRRoutingPathGroupType;
 
typedef struct
{
    PduR_PBConfigIdType PduRConfigId;
    uint16 routingPathGroupCnt;
    uint16 PduRSrcPduNum;
    PduIdType PduRRoutingPathNum;
    const PduRRoutingPathGroupType * PduRRoutingPathGroupRef;
    const PduRRoutingTableType * PduRRoutingTableRef;
    const PduRSrcPduType * PduRSrcPduRef;
    const PduRDestPduType * PduRDestPduRef;
} PduR_PBConfigType;

typedef Std_ReturnType (*ModuleCancelReceiveApiType)(PduIdType RxPduId);
typedef Std_ReturnType (*ModuleIfTpCancelTransmitApiType)(PduIdType TxPduId);
typedef Std_ReturnType (*ModuleTriggertransmitApiType)(PduIdType TxPduId, PduInfoType* PduInfoPtr);
typedef Std_ReturnType (*ModuleIfTransmitApiType)(PduIdType id, const PduInfoType* info);
typedef void (*ModuleTxConfirmationApiType)(PduIdType TxPduId);
typedef void (*ModuleIfRxIndicationApiType)(PduIdType RxPduId, const PduInfoType* PduInfoPtr);
typedef Std_ReturnType (*ModuleTpTransmitApiType)(PduIdType id, const PduInfoType* info);
typedef BufReq_ReturnType (*ModuleCopyTxDataApiType)(
    PduIdType id,
    const PduInfoType* info,
    const RetryInfoType* retry,
    PduLengthType* availableDataPtr);
typedef void (*ModuleTpTxConfirmationApiType)(PduIdType id, Std_ReturnType result);
typedef BufReq_ReturnType (*ModuleStartOfReceptionApiType)(
    PduIdType id,
    const PduInfoType* info,
    PduLengthType TpSduLength,
    PduLengthType* bufferSizePtr);
typedef BufReq_ReturnType (
    *ModuleCopyRxDataApiType)(PduIdType id, const PduInfoType* info, PduLengthType* bufferSizePtr);
typedef void (*ModuleTpRxIndicationApiType)(PduIdType id, Std_ReturnType result);

typedef struct
{
    uint8 PduRBswModuleRef;
    ModuleCancelReceiveApiType CancelReceiveApi;
    ModuleIfTpCancelTransmitApiType IfCancelTransmitApi;
    ModuleIfTpCancelTransmitApiType TpCancelTransmitApi;
    ModuleTriggertransmitApiType TriggertransmitApi;
    ModuleIfTransmitApiType IfTransmitApi;
    ModuleTxConfirmationApiType TxConfirmationApi;
    ModuleIfRxIndicationApiType IfRxIndicationApi;
    ModuleTpTransmitApiType TpTransmitApi;
    ModuleCopyTxDataApiType CopyTxDataApi;
    ModuleTpTxConfirmationApiType TpTxConfirmationApi;
    ModuleStartOfReceptionApiType StartOfReceptionApi;
    ModuleCopyRxDataApiType CopyRxDataApi;
    ModuleTpRxIndicationApiType TpRxIndicationApi;
} PduRBswModuleType;

 
typedef struct
{
    const PduLengthType pduMaxLength;  
    PduLengthType sduLength;           
    PduLengthType pduCurLength;        
    PduIdType srcPduId;                
    uint8* data;
    PduR_BufferLockStateType lockState;    
    PduR_BufferWriteStateType writeState;  
} PduR_BufferType;

typedef uint8 PduR_QueueDepthType;
typedef uint16 PduR_BufferPoolSizeType;
typedef uint16 PduR_BufferIndexType;
typedef PduIdType PduR_QueueIndexType;  
typedef struct
{
    PduR_BufferPoolSizeType size;
    const PduR_BufferIndexType* indexes;
} PduR_BufferPoolType;

typedef struct
{
    const PduR_QueueDepthType depth;
    PduLengthType
        curPosition;  
    PduLengthType
        curSduLength;  
    PduR_BufferType** bufferPtrs;  
    const PduR_BufferPoolType* const bufferPoolPtr;
} PduR_QueueType;

 
typedef uint8 PduR_MetaDataLengthType;





 
 




 
 

 

 







 

 
extern void PduR_Init(const PduR_PBConfigType* ConfigPtr);


extern PduR_PBConfigIdType PduR_GetConfigurationId(void);
extern void PduR_EnableRouting(PduR_RoutingPathGroupIdType id);
extern void PduR_DisableRouting(PduR_RoutingPathGroupIdType id, boolean initialize);

 
extern Std_ReturnType PduR_Transmit(PduIdType TxPduId, const PduInfoType* PduInfoPtr);

extern Std_ReturnType PduR_CancelTransmit(PduIdType TxPduId);

extern Std_ReturnType PduR_CancelReceive(PduIdType RxPduId);

extern void PduR_IfRxIndication(PduIdType RxPduId, const PduInfoType* PduInfoPtr);

extern void PduR_IfTxConfirmation(PduIdType TxPduId);

extern Std_ReturnType PduR_IfTriggerTransmit(PduIdType TxPduId, PduInfoType* PduInfoPtr);

extern BufReq_ReturnType PduR_TpCopyRxData(PduIdType id, const PduInfoType* info, PduLengthType* bufferSizePtr);

extern void PduR_TpRxIndication(PduIdType id, Std_ReturnType result);

extern BufReq_ReturnType PduR_TpStartOfReception(
    PduIdType id,
    const PduInfoType* info,
    PduLengthType TpSduLength,
    PduLengthType* bufferSizePtr);

extern BufReq_ReturnType PduR_TpCopyTxData(
    PduIdType id,
    const PduInfoType* info,
    const RetryInfoType* retry,
    PduLengthType* availableDataPtr);

extern void PduR_TpTxConfirmation(PduIdType id, Std_ReturnType result);



 
 
extern const PduR_PBConfigType * PduR_ConfigStd;
 
extern const PduR_PBConfigType PduR_PBConfigData;




 


 



 














 












 
























 



 




 












 












 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 
 




 
 
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



 



 
 




















 
 




 




 



 











































 






 
 




















 
 




 




 










 












 












 



 



 


 


















































































 


 




















 
 



 



 




 

 

 

 

 

 



 
 

 

 

 

 


 

 

 

 

 
















 












 



 



 



 












 












 



 



 


 
 




















 
 




 



 
 
 
 



 

 
typedef uint8 EcuM_ModeType;



 
typedef uint8 EcuM_UserType;


 
typedef uint8 EcuM_ShutdownCauseType;

 
typedef uint16 EcuM_ShutdownModeType;

 
typedef uint32 EcuM_TimeType;

typedef uint8 EcuM_ShutdownTargetType;


 
typedef uint8 EcuM_BootTargetType;


 




















 
 



 




 



 



 
 
typedef struct
{
    const void * bswMPbCfg;
    const void * canPbCfg;
    const void * canIfPbCfg;
    const void * canSMPbCfg;
    const void * pduRPbCfg;
    const void * comPbCfg;
    const void * comMPbCfg;
    const void * nmPbCfg;
    const void * canNmPbCfg;
    const void * canTpPbCfg;
    const void * dcmPbCfg;
    const void * demPbCfg;
} EcuM_GenBSWPbCfgType;



 



 



 


 
 
 
 

 
 
 
 
 
 
 


 


 


 

typedef uint8 EcuM_StateType;

 
typedef uint8 EcuM_RunStatusType;






 
typedef uint32 EcuM_WakeupSourceType;

 
typedef uint8 EcuM_WakeupStatusType;


 
typedef uint8 EcuM_ResetType;


 
typedef uint8 Rte_ModeType_EcuM_Mode;



 



 



 



 



 



 
















 
 void EcuM_SetWakeupEvent(EcuM_WakeupSourceType sources);













 
 void EcuM_ValidateWakeupEvent(EcuM_WakeupSourceType sources);












 
 void EcuM_CheckWakeup(EcuM_WakeupSourceType wakeupSource);





























 
 




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 


 




























 


 




























 


 




























 


 




























 


 

 


 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 


 



 



 



 
   



 



 



 



 



 



 



 



 
 



 
   
 



 



 



 
   



 
   
 



 
 



 



 



 



 



 


 




























 

 


 
 



 



 



 



 


 

























 
 

 

























 


 

 
 

  
  
typedef enum
{
     
    CFG_ALARM_ID_CORE0_BEGIN = 0,
    OsAlarm_1ms = CFG_ALARM_ID_CORE0_BEGIN,
    OsAlarm_5ms,
    OsAlarm_10ms,
    OsAlarm_50ms,
    OsAlarm_100ms,
    CFG_ALARM_ID_CORE0_END,

    INVALID_ALARM = 0xFFFFU,
} Os_AlarmType;
 

 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 



























 


 

 


 

 
typedef enum
{
    OS_BARRIERID_COUNT,
} Os_BarrierIdType;


 

 

 

 


 



























 


 

 

 

 

 

 

 

 
 
   
 

  
 
typedef enum
{
     
    CFG_COUNTER_ID_CORE0_BEGIN = 0,
    SystemTimer_Core_0 = CFG_COUNTER_ID_CORE0_BEGIN,
    CFG_COUNTER_ID_CORE0_END,

    INVALID_COUNTER = 0xFFFFU,
} Os_CounterType;
 


























 


 

 

 

 

 

 

 

 


























 


 

 
 

 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 
 
 


 

  
typedef enum
{
     
    CFG_ISR2_ID_CORE0_BEGIN = 0,
    CFG_SYS_TIMER_CORE0_ID = CFG_ISR2_ID_CORE0_BEGIN,  
    CFG_ISR_RCAN1ERR_IRQ_ID,
    CFG_ISR_RCAN1TRX_IRQ_ID,
    CFG_ISR_RCANGRECC0_IRQ_ID,
    CFG_ISR_ADCA0I1_IRQ_ID,
    CFG_ISR_ADCA1I1_IRQ_ID,
    CFG_ISR_TAUJ0I0_IRQ_ID,
    CFG_ISR_TAUD0I9_IRQ_ID,
    CFG_ISR_TAUB0I12_IRQ_ID,
    CFG_ISR_TAUB0I8_IRQ_ID,
    CFG_ISR_TAUB0I9_IRQ_ID,
    CFG_ISR_P1_IRQ_ID,
    CFG_ISR_P2_IRQ_ID,
    CFG_ISR_P5_IRQ_ID,
    CFG_ISR_P6_IRQ_ID,
    CFG_ISR_P7_IRQ_ID,
    CFG_ISR_P9_IRQ_ID,
    CFG_ISR_P14_IRQ_ID,
    CFG_ISR_RLIN34TX0_IRQ_ID,
    CFG_ISR_RLIN34RX1_IRQ_ID,
    CFG_ISR_RLIN34ERR2_IRQ_ID,
    CFG_ISR_RLIN35TX0_IRQ_ID,
    CFG_ISR_RLIN35RX1_IRQ_ID,
    CFG_ISR_RLIN35ERR2_IRQ_ID,
    CFG_ISR_RIIC0TI_IRQ_ID,
    CFG_ISR_RIIC0EE_IRQ_ID,
    CFG_ISR_RIIC0RI_IRQ_ID,
    CFG_ISR_RIIC0TEI_IRQ_ID,
    CFG_ISR2_ID_CORE0_END,

    INVALID_ISR = 0xFFFFU,
} Os_IsrType;
 


























 


 

 

 

 

 

 

 

 



























 


 

 

 

 

 

 

 

 


























 


 

 
   
 
 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 
 

  
typedef enum
{
    CFG_STD_RESOURCE_ID_CORE0_BEGIN = 0,
    RES_SCHEDULER_CORE0 = CFG_STD_RESOURCE_ID_CORE0_BEGIN,
    CFG_STD_RESOURCE_ID_CORE0_END,
    INVALID_RESOURCE = 0xFFFFU,
}Os_ResourceType;
 


























 


 

 

 

 

 

 

 

 
 
        



























 


 

 

 

 

 

 

 

 



























 


 

 
 
 

 
 

 
  
 
typedef enum
{
     
    CFG_BASIC_TASK_ID_CORE0_BEGIN = 0,
    OsTask_Init = CFG_BASIC_TASK_ID_CORE0_BEGIN,
    OsTask_1ms,
    OsTask_5ms,
    OsTask_10ms,
    OsTask_50ms,
    OsTask_100ms,
    CFG_BASIC_TASK_ID_CORE0_END,
     
    OS_TASK_IDLE_CORE0 = CFG_BASIC_TASK_ID_CORE0_END,

    INVALID_TASK = 0xFFFFU,
} Os_TaskType;
 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 


























 


 

 



 

 

 

 

 

 

 

 

























 

 

 

























 
 

 
 

 

 

 

 

 

 


























 


 

 
 

 

 

 

 

 

 


























 
 

 

 
 
 

 

 
 

 
 



 

 


 


 

 

 

 

 



 

 


 

 

 


 

 

 

 

 

 

 

 

 
































 
 

 

 


 

 

 

 

 
 
typedef uint32  Os_ArchMsrType;
typedef uint32* Os_ArchMsrRefType;    
typedef uint32  Os_TaskCBExtType;
typedef void (*Os_isrhnd)(void);    
 

 
 
   

 

 
































 


 








 


 










 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;











 


 


typedef	char	*va_list;



void __builtin_va_start(va_list);




typedef	struct {
	int		mode;	 
	unsigned	handle;
	int		unget_c;
	} FILE;
typedef int	fpos_t;








extern	FILE*	_REL_stdin();
extern	FILE*	_REL_stdout();
extern	FILE*	_REL_stderr();

extern	int fprintf(FILE *, const char *, ...);
extern	int fscanf(FILE *, const char *, ...);
extern	int printf(const char *, ...);
extern	int scanf(const char *, ...);
extern	int sprintf(char *, const char *, ...);
extern	int sscanf(const char *, const char *, ...);
extern	int vfprintf(FILE *, const char *, va_list);
extern	int vprintf(const char *, va_list);
extern	int vsprintf(char *, const char *, va_list);

extern	int fgetc(FILE *);
extern	char *fgets(char *, int, FILE *);
extern	int fputc(int, FILE *);
extern	int fputs(const char *, FILE *);
extern	int getc(FILE *);
extern	int getchar(void);
extern	char *gets(char *);
extern	int putc(int, FILE *);
extern	int putchar(int);
extern	int puts(const char *);
extern	int ungetc(int, FILE *);

extern	size_t fread(void *, size_t, size_t, FILE *);
extern	size_t fwrite(const void *, size_t, size_t,
		      FILE *);

extern	void rewind(FILE *);

extern	void perror(const char *);




 


 


 
   
typedef enum
{
     
    OSServiceId_GetApplicationID = 0x00U,
    OSServiceId_GetISRID = 0x01U,
    OSServiceId_CallTrustedFunction = 0x02U,
    OSServiceId_CheckISRMemoryAccess = 0x03U,
    OSServiceId_CheckTaskMemoryAccess = 0x04U,
    OSServiceId_CheckObjectAccess = 0x05U,
    OSServiceId_CheckObjectOwnership = 0x06U,
    OSServiceId_StartScheduleTableRel = 0x07U,
    OSServiceId_StartScheduleTableAbs = 0x08U,
    OSServiceId_StopScheduleTable = 0x09U,
    OSServiceId_NextScheduleTable = 0x0aU,
    OSServiceId_StartScheduleTableSynchron = 0x0bU,
    OSServiceId_SyncScheduleTable = 0x0cU,
    OSServiceId_SetScheduleTableAsync = 0x0dU,
    OSServiceId_GetScheduleTableStatus = 0x0eU,
    OSServiceId_IncrementCounter = 0x0fU,
    OSServiceId_GetCounterValue = 0x10U,
    OSServiceId_GetElapsedValue = 0x11U,
    OSServiceId_TerminateApplication = 0x12U,
    OSServiceId_AllowAccess = 0x13U,
    OSServiceId_GetApplicationState = 0x14U,
    OSServiceId_GetNumberOfActivatedCores = 0x15U,
    OSServiceId_GetCoreID = 0x16U,
    OSServiceId_StartCore = 0x17U,
    OSServiceId_StartNonAutosarCore = 0x18U,
    OSServiceId_GetSpinlock = 0x19U,
    OSServiceId_ReleaseSpinlock = 0x1aU,
    OSServiceId_TryToGetSpinlock = 0x1bU,
    OSServiceId_ShutdownAllCores = 0x1cU,
    OSServiceId_ControlIdle = 0x1dU,
    OSServiceId_IocSend = 0x1eU,
    OSServiceId_IocWrite = 0x1fU,
    OSServiceId_IocSendGroup = 0x20U,
    OSServiceId_IocWriteGroup = 0x21U,
    OSServiceId_IocReceive = 0x22U,
    OSServiceId_IocRead = 0x23U,
    OSServiceId_IocReceiveGroup = 0x24U,
    OSServiceId_IocReadGroup = 0x25U,
    OSServiceId_IocEmptyQueue = 0x26U,
    OSServiceId_GetCurrentApplicationID = 0x27U,
    OSServiceId_ReadPeripheral8 = 0x28U,
    OSServiceId_ReadPeripheral16 = 0x29U,
    OSServiceId_ReadPeripheral32 = 0x2aU,
    OSServiceId_WritePeripheral8 = 0x2bU,
    OSServiceId_WritePeripheral16 = 0x2cU,
    OSServiceId_WritePeripheral32 = 0x2dU,
    OSServiceId_ModifyPeripheral8 = 0x2eU,
    OSServiceId_ModifyPeripheral32 = 0x2fU,
    OSServiceId_DisableInterruptSource = 0x30U,
    OSServiceId_EnableInterruptSource = 0x31U,
    OSServiceId_ClearPendingInterrupt = 0x32U,
    OSServiceId_ActivateTaskAsyn = 0x33U,
    OSServiceId_SetEventAsyn = 0x34U,
    OSServiceId_ModifyPeripheral16 = 0x35U,

     
    OSServiceId_WaitAllEvents = 0xD7U,
    OSServiceId_IocCallBackNotify = 0xDEU,

     
    OSServiceId_ActivateTask = 0xDFU,
    OSServiceId_TerminateTask = 0xE0U,
    OSServiceId_ChainTask = 0xE1U,
    OSServiceId_Schedule = 0xE2U,
    OSServiceId_GetTaskID = 0xE3U,
    OSServiceId_GetTaskState = 0xE4U,
    OSServiceId_EnableAllInterrupts = 0xE5U,
    OSServiceId_DisableAllInterrupts = 0xE6U,
    OSServiceId_ResumeAllInterrupts = 0xE7U,
    OSServiceId_SuspendAllInterrupts = 0xE8U,
    OSServiceId_ResumeOSInterrupts = 0xE9U,
    OSServiceId_SuspendOSInterrupts = 0xEAU,
    OSServiceId_DeclareResource = 0xEBU,
    OSServiceId_GetResource = 0xECU,
    OSServiceId_ReleaseResource = 0xEDU,
    OSServiceId_DeclareEvent = 0xEEU,
    OSServiceId_SetEvent = 0xEFU,
    OSServiceId_ClearEvent = 0xF0U,
    OSServiceId_GetEvent = 0xF1U,
    OSServiceId_WaitEvent = 0xF2U,
    OSServiceId_GetAlarmBase = 0xF3U,
    OSServiceId_GetAlarm = 0xF4U,
    OSServiceId_SetRelAlarm = 0xF5U,
    OSServiceId_SetAbsAlarm = 0xF6U,
    OSServiceId_CancelAlarm = 0xF7U,
    OSServiceId_GetActiveApplicationMode = 0xF8U,
    OSServiceId_StartOS = 0xF9U,
    OSServiceId_ShutdownOS = 0xFAU,
    OSServiceId_ErrorHook = 0xFBU,
    OSServiceId_PreTaskHook = 0xFCU,
    OSServiceId_PostTaskHook = 0xFDU,
    OSServiceId_StartupHook = 0xFEU,
    OSServiceId_ShutdownHook = 0xFFU
} Os_ServiceIdType;

typedef enum
{
     
    OSApiId_GetApplicationID = 0x02U,
    OSApiId_GetISRID = 0x04U,
    OSApiId_CallTrustedFunction = 0x06U,
    OSApiId_CheckISRMemoryAccess = 0x08U,
    OSApiId_CheckTaskMemoryAccess = 0x0aU,
    OSApiId_CheckObjectAccess = 0x0cU,
    OSApiId_CheckObjectOwnership = 0x0EU,
    OSApiId_StartScheduleTableRel = 0x10U,
    OSApiId_StartScheduleTableAbs = 0x12U,
    OSApiId_StopScheduleTable = 0x14U,
    OSApiId_NextScheduleTable = 0x16U,
    OSApiId_StartScheduleTableSynchron = 0x18U,
    OSApiId_SyncScheduleTable = 0x1AU,
    OSApiId_SetScheduleTableAsync = 0x1CU,
    OSApiId_GetScheduleTableStatus = 0x1EU,
    OSApiId_IncrementCounter = 0x20U,
    OSApiId_GetCounterValue = 0x22U,
    OSApiId_GetElapsedValue = 0x24U,
    OSApiId_TerminateApplication = 0x26U,
    OSApiId_AllowAccess = 0x28U,
    OSApiId_GetApplicationState = 0x2AU,
    OSApiId_GetNumberOfActivatedCores = 0x2CU,
    OSApiId_GetCoreID = 0x2EU,
    OSApiId_StartCore = 0x30U,
    OSApiId_StartNonAutosarCore = 0x32U,
    OSApiId_GetSpinlock = 0x34U,
    OSApiId_ReleaseSpinlock = 0x36U,
    OSApiId_TryToGetSpinlock = 0x38U,
    OSApiId_ShutdownAllCores = 0x3AU,
    OSApiId_ControlIdle = 0x3CU,
    OSApiId_IocSend = 0x3EU,
    OSApiId_IocWrite = 0x40U,
    OSApiId_IocSendGroup = 0x42U,
    OSApiId_IocWriteGroup = 0x44U,
    OSApiId_IocReceive = 0x46U,
    OSApiId_IocRead = 0x48U,
    OSApiId_IocReceiveGroup = 0x4AU,
    OSApiId_IocReadGroup = 0x4CU,
    OSApiId_IocEmptyQueue = 0x4EU,
    OSApiId_GetCurrentApplicationID = 0x50U,
    OSApiId_ReadPeripheral8 = 0x52U,
    OSApiId_ReadPeripheral16 = 0x54U,
    OSApiId_ReadPeripheral32 = 0x56U,
    OSApiId_WritePeripheral8 = 0x58U,
    OSApiId_WritePeripheral16 = 0x5AU,
    OSApiId_WritePeripheral32 = 0x5CU,
    OSApiId_ModifyPeripheral8 = 0x5EU,
    OSApiId_ModifyPeripheral32 = 0x60U,
    OSApiId_DisableInterruptSource = 0x62U,
    OSApiId_EnableInterruptSource = 0x64U,
    OSApiId_ClearPendingInterrupt = 0x66U,
    OSApiId_ActivateTaskAsyn = 0x68U,
    OSApiId_SetEventAsyn = 0x6AU,
    OSApiId_ModifyPeripheral16 = 0x6CU,
     
    OSApiId_WaitAllEvents = 0x6EU,
    OSApiId_IocCallBackNotify = 0x70U,
     
    OSApiId_ActivateTask = 0x72U,
    OSApiId_TerminateTask = 0x74U,
    OSApiId_ChainTask = 0x76U,
    OSApiId_Schedule = 0x78U,
    OSApiId_GetTaskID = 0x7AU,
    OSApiId_GetTaskState = 0x7CU,
    OSApiId_EnableAllInterrupts = 0x7EU,
    OSApiId_DisableAllInterrupts = 0x80U,
    OSApiId_ResumeAllInterrupts = 0x82U,
    OSApiId_SuspendAllInterrupts = 0x84U,
    OSApiId_ResumeOSInterrupts = 0x86U,
    OSApiId_SuspendOSInterrupts = 0x88U,
    OSApiId_GetResource = 0x8AU,
    OSApiId_ReleaseResource = 0x8CU,
    OSApiId_SetEvent = 0x8EU,
    OSApiId_ClearEvent = 0x90U,
    OSApiId_GetEvent = 0x92U,
    OSApiId_WaitEvent = 0x94U,
    OSApiId_GetAlarmBase = 0x96U,
    OSApiId_GetAlarm = 0x98U,
    OSApiId_SetRelAlarm = 0x9AU,
    OSApiId_SetAbsAlarm = 0x9CU,
    OSApiId_CancelAlarm = 0x9EU,
    OSApiId_GetActiveApplicationMode = 0xA0U,
    OSApiId_StartOS = 0xA2U,
    OSApiId_ShutdownOS = 0xA4U,
    OSApiId_BarrierSynchronize = 0xA6U
} Os_TraceApiIdType;
 



 
typedef enum
{
    OS_LEVEL_MAIN = 0,
    OS_LEVEL_PROTECTIONHOOK = 1,
    OS_LEVEL_ALARMCALLBACK = 2,
    OS_LEVEL_SHUTDOWNHOOK = 3,
    OS_LEVEL_STARTUPHOOK = 4,
    OS_LEVEL_POSTTASKHOOK = 5,
    OS_LEVEL_PRETASKHOOK = 6,
    OS_LEVEL_ERRORHOOK = 7,
    OS_LEVEL_ISR2 = 8,
    OS_LEVEL_ISR1 = 9,
    OS_LEVEL_TASK = 10,
    OS_LEVEL_ERRORHOOK_APP = 11,
    OS_LEVEL_STANDARD_RESOURCE = 12,
    OS_LEVEL_INTERNAL_RESOURCE = 13
} Os_CallLevelType;



 
typedef uint16 Os_AppModeType;
typedef Os_AppModeType AppModeType;



 
typedef uint8 Os_LockerType;



 
typedef uint32 Os_StackDataType;



 
typedef uint32 *Os_StackPtrType;



 
typedef struct
{
    Os_StackPtrType StackTop;
    Os_StackPtrType StackBottom;
} Os_StackType;



 
typedef enum
{
    OS_OBJECT_TASK = 0,
    OS_OBJECT_ISR = 1,
    OS_OBJECT_ALARM = 2,
    OS_OBJECT_COUNTER = 3,
    OS_OBJECT_SCHEDULETABLE = 4,
    OS_OBJECT_APP = 5,

    OS_OBJECT_RESOURCE = 6,
    OS_OBJECT_SPINLOCK = 7,
    OS_OBJECT_MAX = 8,  
       
    OS_OBJECT_INVALID = 0xFFU  
     
} Os_ObjectTypeType;



 
typedef Os_ObjectTypeType ObjectTypeType;



 
typedef uint16 Os_CoreIdType;



 
typedef Os_CoreIdType *Os_CoreIdRefType;




 
typedef Os_CoreIdType CoreIdType;
typedef Os_CoreIdType *CoreIdRefType;



 
typedef uint16 Os_ApplicationType;
typedef Os_ApplicationType ApplicationType;



 
typedef enum
{
    OS_SHUTDOWN_OS = 0,
    OS_SHUTDOWN_ALL_OS = 1
} Os_ShutdownAction;

 


 
typedef enum
{
    OS_TASK_STATE_WAITING = 0,
    OS_TASK_STATE_READY = 1,
    OS_TASK_STATE_SUSPENDED = 2,
    OS_TASK_STATE_RUNNING = 3,
     
    OS_TASK_STATE_START = 4
} Os_TaskStateType;



 
typedef Os_TaskStateType TaskStateType;
typedef Os_TaskStateType *TaskStateRefType;
typedef Os_TaskStateType *Os_TaskStateRefType;



 
typedef Os_TaskType *Os_TaskRefType;
typedef Os_TaskType TaskType;
typedef Os_TaskType *TaskRefType;



 
typedef uint8 Os_TaskScheduleType;



 
typedef uint16 Os_PriorityType;



 
typedef void (*Os_TaskEntry)(void);



 
typedef struct
{
    const ApplicationType* AccAppRef;  
    ApplicationType        HostApp;           
    ApplicationType        AccAppRefNodeCnt;  
} Os_ObjectAppCfgType;

 


 
typedef uint32       Os_TickType;
typedef Os_TickType* Os_TickRefType;
typedef Os_TickType  TickType;
typedef TickType *   TickRefType;



 
typedef enum
{
    OS_ALARM_AUTOSTART_ABSOLUTE = 0,
    OS_ALARM_AUTOSTART_RELATIVE = 1
} Os_AlarmAutostartType;



 
typedef Os_AlarmType* Os_AlarmRefType;
typedef Os_AlarmType  AlarmType;
typedef Os_AlarmType* AlarmRefType;



 
typedef void (*Os_AlarmCallbackType)(void);



 
typedef struct
{
    Os_TickType MaxAllowedValue;
    Os_TickType TicksPerBase;
    Os_TickType MinCycle;
} Os_AlarmBaseType;



 
typedef Os_AlarmBaseType  AlarmBaseType;
typedef Os_AlarmBaseType* Os_AlarmBaseRefType;
typedef Os_AlarmBaseType* AlarmBaseRefType;



 
typedef struct
{
    Os_TickType AlarmStartTime;
    Os_TickType AlarmCycleTime;
    Os_AppModeType AlarmAppMode;
    Os_AlarmAutostartType AlarmAutostartType;
} Os_AlarmAutostartCfgType;



 
typedef struct
{
    const Os_AlarmAutostartCfgType *AlarmAutostartRef;
    Os_AlarmCallbackType AlarmCallback;

    Os_CoreIdType HostCore;  
    Os_CounterType AlarmCounter;
} Os_AlarmCfgType;



 
typedef struct
{
    Os_TickType  AlarmStart;
    Os_TickType  AlarmCycle;
    Os_AlarmType AlarmNext;
} Os_ACBType;



 
typedef struct
{
    Os_AlarmType Start;
    Os_AlarmType End;
} Os_AlarmIndexType;



 
typedef enum
{
    OS_ACCESS = 0,
    OS_NO_ACCESS = 1
} Os_ObjectAccessType;



 
typedef Os_ObjectAccessType ObjectAccessType;



 
typedef enum
{
    OS_RESTART = 0,
    OS_NO_RESTART = 1
} Os_RestartType;



 
typedef Os_RestartType RestartType;



 
typedef enum
{
    OS_APPLICATION_ACCESSIBLE = 0,
    OS_APPLICATION_RESTARTING = 1,
    OS_APPLICATION_TERMINATED = 2
} Os_ApplicationStateType;



 
typedef Os_ApplicationStateType *Os_ApplicationStateRefType;
typedef Os_ApplicationStateType ApplicationStateType;



 
typedef Os_ApplicationStateType *ApplicationStateRefType;



 
typedef uint16 Os_AppObjectIdType;



 
typedef uint16             Os_AppObjectType;
typedef Os_AppObjectType * Os_AppObjectRefType;



 
typedef void (*Os_ApplErrorHookType)(StatusType error);



 
typedef void (*Os_ApplShutdownHookType)(StatusType fatalerror);



 
typedef void (*Os_ApplStartupHookType)(void);



 
typedef struct
{
    Os_ApplicationStateType AppState;
} Os_AppCBType;





 
typedef struct
{
    Os_ApplErrorHookType    AppErrorHook;
    Os_ApplShutdownHookType AppShutdownHook;
    Os_ApplStartupHookType  AppStartupHook;
} Os_AppHookCfgType;



 
typedef uint16 Os_AppObjectId;
typedef Os_AppObjectId AppObjectId;




 
typedef enum
{
    OS_IDLE_NO_HALT = 0,
    OS_RUN = 1,
    OS_CORE_STATUS_INVALID = 2
} Os_IdleModeType;



 
typedef Os_IdleModeType IdleModeType;



 
typedef enum
{
    OS_CPUMODE_USER0 = 0,
    OS_CPUMODE_USER1 = 1,
    OS_CPUMODE_SUPERVISOR = 2
} Os_CpuModeType;



 
typedef struct
{
    Os_CoreIdType   CoreStateActive;
    Os_CoreIdType   CoreStateSynPoint[4U][(1U)];
    Os_AppModeType  AppMode[(1U)];
    Os_IdleModeType CoreStatus[(1U)];    
} Os_CoreCBType;



 
typedef enum
{
    OS_COUNTER_HARDWARE = 0,
    OS_COUNTER_SOFTWARE = 1
} Os_CounterPropertyType;




 
typedef Os_CounterType CounterType;



 
typedef struct
{
     
    Os_TickType CounterCurVal;
    Os_TickType CounterLastVal;
    Os_AlarmType CounterAlmQue;
} Os_CCBType;



 
typedef struct
{
    Os_TickType CounterMaxAllowedValue;
    Os_TickType CounterMinCycle;
    Os_TickType CounterTicksPerBase;
     
    Os_TickType SecondsPerTick;
    Os_CoreIdType HostCore;  
    Os_CounterPropertyType CounterProperty;
} Os_CounterCfgType;



 
typedef Os_CounterCfgType *Os_CounterCfgRefType;

typedef struct
{
    Os_CounterType start;
    Os_CounterType end;
}Os_CounterRangeType;



 
typedef uint64 Os_EventType;
typedef Os_EventType EventType;



 
typedef uint64 Os_EventMaskType;
typedef Os_EventMaskType *Os_EventMaskRefType;
typedef Os_EventMaskType EventMaskType;
typedef EventMaskType *EventMaskRefType;



 
typedef struct
{
    Os_EventMaskType SetEventMask;
    Os_EventMaskType WaitEventMask;
    boolean IsWaitAllEvents;
} Os_ECBType;




 
typedef enum
{
    OS_ISR_CATEGORY1 = 0,
    OS_ISR_CATEGORY2 = 1
} Os_IsrCategoryType;



 
typedef enum
{
    OS_ISR_DISABLED = 0,
    OS_ISR_ENABLED = 1
} Os_IsrStateType;



 
typedef uint16 Os_IPLType;



 
typedef Os_IsrType ISRType;



 
typedef enum
{
    OS_ISR_ENABLE = 0,
    OS_ISR_DISABLE = 1
} Os_IsrDescriptionType;



 
typedef struct
{


    Os_ResourceType *IsrC2ResourceStack;  
    Os_ResourceType  IsrC2ResCount;
 
    uint16 Isr2CriticalZoneCount;
    uint16 IsrCurrentSpinlockOccupyLevel;
    uint16 Isr2CriticalZoneStack[1U];
       
    Os_ObjectTypeType Isr2CriticalZoneType[1U];
     

 


} Os_ICBType;



 
typedef struct
{

    uint32 IsrSrc;      
    uint32 IsrSrcType;  
    Os_CoreIdType HostCore;  
    Os_IsrCategoryType IsrCatType;
    boolean NestedEnable;
} Os_IsrCfgType;



 
typedef struct
{
    Os_IsrType IsrStart;
    Os_IsrType IsrEnd;
} Os_IsrRangeType;



 
typedef struct
{
    Os_IsrRangeType AllIsr;
    Os_IsrRangeType Isr1;
    Os_IsrRangeType Isr2;
} Os_IsrPropertyType;




 
typedef struct
{
    uint8 *AppAddrStart;
    uint8 *AppAddrEnd;
} Os_AppAddrType;



 
typedef struct
{
    uint8 *IsrAddrStart;
    uint8 *IsrAddrEnd;
} Os_IsrAddrType;



 
typedef struct
{
    uint8 *TaskAddrStart;
    uint8 *TaskAddrEnd;
} Os_TaskAddrType;



 
typedef struct
{
    uint8 *RodataAddrStart;
    uint8 *RodataAddrEnd;
} Os_RodataAddrType;



 
typedef uint16 AreaIdType;



 
typedef struct
{
    uint32 PeriAreaStartAddr;
    uint32 PeriAreaEndAddr;
} Os_PeripheralAreaCfgType;



 
typedef enum
{
    PRO_IGNORE = 0,
    PRO_TERMINATETASKISR = 1,
    PRO_TERMINATEAPPL = 2,
    PRO_TERMINATEAPPL_RESTART = 3,
    PRO_SHUTDOWN = 4,
    PRO_RESUME = 5,
} Os_ProtectionReturnType;




 
typedef Os_ProtectionReturnType ProtectionReturnType;



 
typedef struct
{
    uint32 QueueHead;
    uint32 QueueTail;
} Os_ReadyQueueType;



 
typedef struct
{
    Os_ReadyQueueType *Mark;
    const uint32 *QueueSize;
    const Os_TaskRefType *Queue;
    Os_PriorityType *Map;
    uint8 PriorityMax;
} Os_ReadyQueueManageType;



 
typedef Os_ResourceType ResourceType;



 
typedef enum
{
    OS_RES_OCCUPIED_BY_TASK = 0,               
    OS_RES_OCCUPIED_BY_INTERRUPT = 1,          
    OS_RES_OCCUPIED_BY_TASK_OR_INTERRUPT = 2  
} Os_ResourceOccupyType;



 
typedef struct
{
    
 
    Os_PriorityType SavePrio;
    uint8           SaveCount;
    Os_CallLevelType SaveLevel;
} Os_RCBType;



 
typedef struct
{
    Os_CoreIdType HostCore;  
    Os_PriorityType Ceiling;
    Os_ResourceOccupyType ResourceOccupyType;
} Os_ResourceCfgType;



 
typedef struct
{
    Os_ResourceType StdResStart;
    Os_ResourceType StdResEnd;
} Os_ResourceRangeType;




 
typedef uint32 Os_SpinlockType;



 
typedef Os_SpinlockType *Os_SpinlockRefType;






 
typedef struct
{
    Os_EventMaskType    EventAccessMask;    
    Os_TaskEntry        TaskEntry;            
 
    Os_StackType        TaskStack;
    uint16              TaskActivation;      
 
    uint16              TaskPriority;         
    Os_AppModeType      TaskAutoStartMode; 


 
    Os_TaskScheduleType TaskSchedule;         
    uint8               Rsv;
    Os_CoreIdType       HostCore;  
} Os_TaskCfgType;



 
typedef struct
{
    Os_StackPtrType  TaskStackTop;
    Os_StackPtrType  TaskStackBottom;


 
    uint16            TaskCriticalZoneStack[1U];
    uint16            TaskCriticalZoneCount;
    uint16 volatile   TaskCurrentSpinlockOccupyLevel;
    Os_ObjectTypeType TaskCriticalZoneType[1U];

    Os_ResourceType * TaskResourceStack;  
    uint8             TaskResCount;

    uint16           TaskRunPrio;
    Os_TaskStateType TaskState;

    uint8            TaskActCount;

 

    
} Os_TCBType;



 
typedef struct
{
    Os_TaskType Start;
    Os_TaskType End;
} Os_TaskRangeType;



 
typedef struct
{
    Os_TaskRangeType AllTask;
    Os_TaskRangeType ExtendTask;
    Os_TaskRangeType BasicTask;
} Os_TaskPropertyType;



 
typedef uint16 Os_TrustedFunctionIndexType;



 
typedef Os_TrustedFunctionIndexType TrustedFunctionIndexType;



 
typedef void *TrustedFunctionParameterRefType;



 
typedef void (*Os_AppTrustedFunc)(TrustedFunctionIndexType index, TrustedFunctionParameterRefType ref);



 




 



 



 


 
typedef enum
{
    OS_RPC_SYNC = 0,
    OS_RPC_ASYNC = 1
} Os_RpcSyncType;



 
typedef enum
{
    OS_RPC_FREE = 0,
    OS_RPC_START = 1,
    OS_RPC_WORK = 2,
    OS_RPC_DONE = 3
} Os_RpcServiceState;



 
typedef StatusType (*Os_RpcActionFn)(uint32 *inPara);



 
typedef struct
{
    Os_RpcActionFn ActionFn;
    uint32         SrvPara[6];   
    uint32         InPara[(5U)];
    Os_CoreIdType  RemoteCoreId;
    Os_RpcSyncType RpcSync;
} Os_RpcInputType;



 
typedef Os_RpcInputType *Os_RpcInputRefType;



 
typedef uint8 Os_RpcNodeIdType;



 
typedef struct
{
    Os_RpcNodeIdType Head;
    Os_RpcNodeIdType Tail;
} Os_LinkQueType;



 
typedef Os_LinkQueType *LinkQueRefType;



 
typedef struct
{
    Os_RpcActionFn              ActionFn;
    uint32                      InPara[(5U)];
    Os_CoreIdType               SourceCoreId;
    Os_RpcSyncType              RpcSync;
    Os_RpcNodeIdType            NextNode;
    volatile Os_RpcServiceState ProcState;
    StatusType                  RetValue;
} Os_RpcServiceNodeType;



 
typedef Os_RpcServiceNodeType *Os_RpcServiceNodeRefType;



 
typedef struct
{
    Os_RpcServiceNodeType ServiceStation[(10U)];
    Os_LinkQueType FreeQue;
    Os_LinkQueType WorkQue;
} Os_RpcCoreType;

typedef enum
{
	BARRIER_WATING,
	BARRIER_RELEASED
}Os_BarrierStatusType;

typedef uint8   Os_BarrierTicketType;

typedef struct
{
     
    Os_BarrierTicketType  ticket;
    Os_BarrierStatusType  status;   
}Os_BarrierCBType;

   
typedef struct _Os_BarrierCfgType  Os_BarrierCfgType;
 
struct _Os_BarrierCfgType
{
    volatile Os_BarrierCBType  *       BarrierCB;         
    const Os_BarrierCfgType * const *  Participant;       
     
    const Os_BarrierCfgType * const *  OwnBarriers; 
     
    uint8                              ParticipantCount;
     
    uint8                              OwnBarriersCount;
     
    TaskType                           OwnerTask;
};



 
typedef uint16 ObjectType;    



 
typedef struct
{
    const Os_AppHookCfgType             ApplicationHooks;
    const Os_AppObjectRefType *         AppObjectRef;
    const Os_TrustedFunctionIndexType * AppTrustedFuncRef;
    uint16  HostCore;  
    uint16  AppTaskCnt;
    uint16  AppIsrRefCnt;
    uint16  AppAlarmRefCnt;
    uint16  AppCounterRefCnt;
    uint16  AppScheduleTableCnt;
    uint16  AppTrustedFuncCnt;  
    const Os_TaskType RestartTask;
    boolean           Trusted;  
    
 
    boolean           TrustedApplicationDelayTimingViolationCall;
    
 
    boolean           TrustedAppWithProtection;
} Os_ApplicationCfgType;



 
typedef struct
{
    Os_EventMaskType                EventMask;
    uint8 *                         Address8;
    uint8 *                         Value8;
    uint16 *                        Address16;
    uint16 *                        Value16;
    uint32 *                        Address32;
    uint32 *                        Value32;
    StatusType *                    Status;


    Os_EventMaskRefType             EventRef;
    Os_TaskRefType                  TaskRef;
    Os_TaskStateRefType             TaskState;
    TrustedFunctionParameterRefType FunctionParams;
    Os_TickRefType                  CounterValue;
    Os_TickRefType                  CounterElapsedValue;
    
    uint32                          Clearmask32;
    uint32                          Setmask32;
    uint32                          IocValue;
            
    TickType                        Offset;
    TickType                        Start;

    Os_AlarmBaseRefType             AlarmBaseRef;
    Os_TickRefType                  AlarmTickRef;
    Os_TickType                     AlarmTime;
    Os_TickType                     AlarmCycle;


    uint16                          Clearmask16;
    uint16                          Setmask16;
    uint16                          Area;
    uint16                          SpinlockId;
    TrustedFunctionIndexType        FunctionIndex; 
    uint16                          DataLenth;
    CoreIdType                      CoreID;
    Os_TaskType                     TaskId;
    CounterType                     CounterId;
    Os_IsrType                      ISRID;



    Os_AlarmType                    AlarmId;
    Os_ResourceType                 ResourceId;

    uint8                           Clearmask8;
    uint8                           Setmask8;
    StatusType                      ShutdownError;
    IdleModeType                    IdleMode;
    boolean                         ClearPending;
} Os_RunTimeSrvPrarmType;






typedef enum
{
    OS_PROTECTION_TERMINATE_INVALID = 0,
    OS_PROTECTION_TERMINATE_TASK = 1,
    OS_PROTECTION_TERMINATE_TPROT_ISR = 2,
    OS_PROTECTION_TERMINATE_NESTED_ISR = 3,
} Os_ProtectionTerminateObjType;



 
typedef struct
{
     
    const Os_ReadyQueueManageType * QueueMg;
    Os_TCBType *              SysRunningTCB;
    const Os_StackType *      SystemStack;

    Os_IsrType *              SysIsrNestQueue;
    uint32                    LastUnhandledIrq;
    uint32                    LastUnhandledExc;

    Os_ArchMsrType            SaveAllInt;
    Os_ArchMsrType            SaveAllIntNested;

    Os_AppModeType            SysActiveAppMode;
    Os_PriorityType           SysHighPrio;
    uint16                    SysTaskMax;
    Os_CoreIdType             SysCore;  
    uint16                    PriorityNum;  
    Os_ResourceType           ScheduleResId;

     
    uint16                    SaveOsIntNested;
    uint16                    CfgIsrMax;
    uint16                    CfgIsr2Max;
    uint16                    TaskIdle;
    Os_TaskType               SysHighTaskId;
    Os_TaskType               SysRunningTaskId;
    Os_TaskType               SysPrevTaskID;
     
    Os_AlarmType              SysAlarmMax;
    Os_IsrType                SysRunningIsrCat2Id;  
    boolean                   SysInIsrCat2;
    Os_LockerType             SysDispatchLocker;
    Os_CallLevelType          SysOsLevel;
    uint8                     SuspendAllCount;
    uint8                     SuspendOsCount;
    Os_CallLevelType          SaveLevel;
    uint8                     IntNestISR1;
    Os_CallLevelType          SaveLevelISR1;
    uint8                     IntNestISR2;
    boolean                   UnhandledIrqReported;
    boolean                   UnhandledExcReported;



    Os_ProtectionTerminateObjType ProtectionTerminateObj;






} Os_SCBType;


 




























 


 

 



 

 








 







 







 
  
 






 






 






 

 










 
extern void Os_CallShutdownHook(Os_SCBType *pScb, StatusType error);




 




























 


 

























 


 

 

 

 

 

 

 

 


 








 
extern void Os_ExceptionHandler(const void *errMsg, StatusType errType);


 



 

 


 

 


 
 

 



 



 

 

 


























 

   


 





 
















 
extern StatusType ActivateTask(TaskType TaskID);    








 
extern void ActivateTaskAsyn(TaskType TaskID);    











 
extern StatusType TerminateTask(void);    



















 
extern StatusType ChainTask(TaskType TaskID);    













 
extern StatusType Schedule(void);    














 
extern StatusType GetTaskID(TaskRefType TaskID);    


















 
extern StatusType GetTaskState(TaskType TaskID, TaskStateRefType State);    
















 
extern StatusType GetResource(ResourceType ResID);    

















 
extern StatusType ReleaseResource(ResourceType ResID);    



















 
extern StatusType GetAlarm(AlarmType AlarmID, TickRefType Tick);    



















 
extern StatusType GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info);    

 











 
 














 
extern StatusType CancelAlarm(AlarmType AlarmID);    



















 
extern StatusType SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle);    



















 
extern StatusType SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle);    














 
extern StatusType IncrementCounter(CounterType CounterID);    



















 
extern StatusType GetCounterValue(CounterType CounterID, TickRefType Value);    



















 
extern StatusType GetElapsedValue(CounterType CounterID, TickRefType Value, TickRefType ElapsedValue);    








 
extern AppModeType GetActiveApplicationMode(void);    







 
extern void DisableAllInterrupts(void);    







 
extern void EnableAllInterrupts(void);    






 
extern void ResumeAllInterrupts(void);    







 
extern void SuspendAllInterrupts(void);    






 
extern void ResumeOSInterrupts(void);    







 
extern void SuspendOSInterrupts(void);    















 
extern StatusType EnableInterruptSource(ISRType ISRID, boolean ClearPending);    













 
extern StatusType DisableInterruptSource(ISRType ISRID);    












 
extern StatusType ClearPendingInterrupt(ISRType ISRID);    








 
extern void StartOS(AppModeType Mode);    









 
extern void ShutdownOS(StatusType Error);    







 
extern ISRType GetISRID(void);    










 










 
extern void ShutdownHook(StatusType Error);    
















 
extern void StartCore(CoreIdType CoreID, StatusType *Status);    










 
extern void StartNonAutosarCore(CoreIdType CoreID, StatusType *Status);    













 
extern StatusType ControlIdle(CoreIdType CoreID, IdleModeType IdleMode);    








 
extern uint32 GetNumberOfActivatedCores(void);    







 
extern CoreIdType GetCoreID(void);    








 
extern void ShutdownAllCores(StatusType Error);    


































 

   


 


 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 

































































 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 



















































 
 



 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






















 
 



 


 



 





 




 



 
 

 




 








 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 

 

 

 




 

 

 





 
 

 

 

 

 

 









 






 




 



 


 




 


 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
typedef uint8 Mcu_ClockType;

 
 
 
 
typedef uint32 Mcu_RawResetType;

 
 
 
 
typedef uint8 Mcu_ModeType;

 
 
typedef uint8 Mcu_SeqType;

 
 
 
 
typedef uint8 Mcu_RamSectionType;

 
 
 
 
 
 
 

 
typedef struct STag_Mcu_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  uint32 ulMainClockStabCount;
   
  uint32 ulLVIindicationReg;
   
  const void * pClockDomainOffset;
  uint8 ucClockSettingOffset;
  uint8 ucModeSettingOffset;
   
  const void * pPortGroupSetting;
  uint8 ucPortGroupSettingOffset;
   
  uint32 * pPortRamArea;
  uint8 ucPortRamAreaNum;

  uint8 ucNumOfPortGroup;

   

} Mcu_ConfigType;

 
 
 
 
typedef enum ETag_Mcu_PllStatusType
{
  MCU_PLL_LOCKED = 0,
  MCU_PLL_UNLOCKED,
  MCU_PLL_STATUS_UNDEFINED
} Mcu_PllStatusType;

 
 
 
 
 
typedef enum ETag_Mcu_ResetType
{
  MCU_SW_RESET = 1,
  MCU_WATCHDOG0_RESET,
  MCU_WATCHDOG1_RESET,
  MCU_CLM0_RESET,
  MCU_CLM1_RESET,
   
  MCU_CLM2_RESET,
  MCU_LVI_RESET,
  MCU_CVM_RESET,
  MCU_TERMINAL_RESET,
  MCU_POWER_ON_RESET,
  MCU_ISO_RESET,
  MCU_RESF11_RESET,
  MCU_RESF12_RESET,
  MCU_RESF13_RESET,
  MCU_CLM3_RESET,
  MCU_RESET_UNDEFINED,
  MCU_MULTIPLE_RESETS_OCCURED,
  MCU_RESET_UNKNOWN
} Mcu_ResetType;


 


 
 
typedef enum ETag_Mcu_SeqOperationType
{
  MCU_DIGITAL_INPUT = 1,
  MCU_ANALOG_INPUT,
  MCU_MIXED_INPUT
} Mcu_SeqOperationType;


 
typedef enum ETag_Mcu_RamWriteSizeType
{
  MCU_8BIT_SIZE = 1,
  MCU_16BIT_SIZE,
  MCU_32BIT_SIZE
} Mcu_RamWriteSizeType;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 
































































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 




































































































































































 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


































 
 



 


 



 





 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


typedef struct Stag_PortRegisters
{
    uint16       usP;                        

    uint8        ucDummy1[254];              

    uint32       ulPSR;                      

    uint8        ucDummy2[252];              

    uint16       usPPR;                      

    uint8        ucDummy3[254];              

    uint16       usPM;                       

    uint8        ucDummy4[254];              

    uint16       usPMC;                      

    uint8        ucDummy5[254];              

    uint16       usPFC;                      

    uint8        ucDummy6[254];              

    uint16       usPFCE;                     

    uint8        ucDummy7[254];              

    uint16       usPNOT;                     

    uint8        ucDummy8[254];              

    uint32       ulPMSR;                     

    uint8        ucDummy9[252];              

    uint32       ulPMCSR;                    

    uint8        ucDummy10[252];             

    uint16       usPFCAE;                    

    uint8        ucDummy11[13822];           

    uint16       usPIBC;                     

    uint8        ucDummy12[254];             

    uint16       usPBDC;                     

    uint8        ucDummy13[254];             

    uint16       usPIPC;                     

    uint8        ucDummy14[254];             

    uint16       usPU;                       

    uint8        ucDummy15[254];             

    uint16       usPD;                       

    uint8        ucDummy16[254];             

    uint32       ulPODC;                     

    uint8        ucDummy17[252];             

    uint32       ulPDSC;                     

    uint8        ucDummy18[252];             

    uint16       usPIS;                      

    uint8        ucDummy19[1022];            

    uint32       ulPPROTS;                   

    uint8        ucDummy20[252];             

    uint32       ulPPCMD;                    
}PortReg;

typedef struct STag_IPortRegisters
{                                                      
    uint16       usIPPR;                     

    uint8        ucDummy21[15870];           

    uint16       usIPIBC;                    
}IPortReg;

typedef struct STag_JPortRegisters
{
    uint8        ucJP;                       

    uint8        ucDummy22[15];              

    uint32       ulJPSR;                     

    uint8        ucDummy23[12];              

    uint8        ucJPPR;                     

    uint8        ucDummy24[15];              

    uint8        ucJPM;                      

    uint8        ucDummy25[15];              

    uint8        ucJPMC;                     

    uint8        ucDummy26[15];              

    uint8        ucJPFC;                     

    uint8        ucDummy27[15];              

    uint8        ucJPFCE;                    

    uint8        ucDummy28[15];              

    uint8        ucJPNOT;                    

    uint8        ucDummy29[15];              

    uint32       ulJPMSR;                    

    uint8        ucDummy30[9];               

    uint32       ulJPMCSR;                   

    uint8        ucDummy31[876];             

    uint8        ucJPIBC;                    

    uint8        ucDummy32[15];              

    uint8        ucJPBDC;                    

    uint8        ucDummy33[31];              

    uint8        ucJPU;                      

    uint8        ucDummy34[15];              

    uint8        ucJPD;                      

    uint8        ucDummy35[15];              

    uint32       ulJPODC;                    

    uint8        ucDummy36[12];              

    uint32       ulJPDSC;                    

    uint8        ucDummy37[12];              

    uint8        ucJPIS;                     

    uint8        ucDummy38[47];              

    uint8        ucJPISA;                    

    uint8        ucDummy39[15];              

    uint32       ulJPPROTS;                  

    uint8        ucDummy40[12];              

    uint32       ulJPPCMD;                   
}JPortReg;

typedef struct Stag_AnalogPortReg
{
    uint16       usAP;                       

    uint8        ucDummy41[254];             

    uint32       ulAPSR;                     

    uint8        ucDummy42[252];             

    uint16       usAPPR;                     

    uint8        ucDummy43[254];             

    uint16       usAPM;                      

    uint8        ucDummy44[1022];            

    uint16       usAPNOT;                    

    uint8        ucDummy45[254];             

    uint32       ulAPMSR;                    

    uint8        ucDummy46[14332];           

    uint16       usAPIBC;                    

    uint8        ucDummy47[254];             

    uint16       usAPBDC;                    
}APortReg;

typedef struct Stag_FCLA0_Registers
{
    uint8         ucCTLn_SIG[137];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}FCLAReg;

typedef struct Stag_DNFA_Registers
{
    uint8        ucCTL;                      

    uint8        ucDummy70[3];               

    uint16       usEN;                       
}DNFAReg;

typedef struct Stag_RESF_Registers
{                                                      
    const uint32 ulRESF;                     

    uint8        ucDummy90[4];               

    uint32       ulRESFC;                    

    uint8        ucDummy91[244];             

    const uint32 ulRESFR;                    

    uint8        ucDummy92[4];               

    uint32       ulRESFCR;                   

    uint8        ucDummy93[408];             

    uint32       ulSWRESA;                   

    uint8        ucDummy94[11256];           

    uint32       ulCYCRBASE;                 
} RESFReg;

typedef struct Stag_LVI_Registers
{                                                      
    const uint32 ulVLVF;                     

    uint8        ucDummy95[4];               

    uint32       ulVLVFC;                    

    uint8        ucDummy96[116];             

    uint32       ulLVICNT;                   

    uint8        ucDummy97[9980];            

    uint32       ulCVMF;                     

    const uint32 ulCVMDE;                    

    uint8        ucDummy98[12];              

    uint32       ulCVMDIAG;                  

    uint8        ucDummy99[232];             

    uint32       ulPROTCMDCVM;               

    const uint32 ulPROTSCVM;                 
} LVIReg;
 
typedef struct Stag_ClkCntl_Registers
{                                                      

    uint32       ulROSCE;                    

    const uint32 ulROSCS;                    

    uint8        ucDummy100[16];             

    uint32       ulROSCSTPM;                 

    uint32       ulROSCUT;                   

    uint8        ucDummy101[224];            

    uint32       ulMOSCE;                    

    const uint32 ulMOSCS;                    

    uint32       ulMOSCC;                    

    uint32       ulMOSCST;                   

    uint8        ucDummy102[8];              

    uint32       ulMOSCSTPM;                 

    uint32       ulMOSCM;                    

    uint8        ucDummy103[224];            

    uint32       ulSOSCE;                    

    const uint32 ulSOSCS;                    

    uint8        ucDummy104[4];              

    uint32       ulSOSCST;                   

    uint8        ucDummy105[3568];           

    uint32       ulCKSC_AWDTAD_CTL;          

    uint8        ucDummy106[4];              

    const uint32 ulCKSC_AWDTAD_ACT;          

    uint8        ucDummy107[12];             

    uint32       ulCKSC_AWDTAD_STPM;         

    uint8        ucDummy108[228];            

    uint32       ulCKSC_ATAUJS_CTL;          

    uint8        ucDummy109[4];              

    const uint32 ulCKSC_ATAUJS_ACT;          

    uint8        ucDummy110[244];            

    uint32       ulCKSC_ATAUJD_CTL;          

    uint8        ucDummy111[4];              

    const uint32 ulCKSC_ATAUJD_ACT;          

    uint8        ucDummy112[12];             

    uint32       ulCKSC_ATAUJD_STPM;         

    uint8        ucDummy113[228];            

    uint32       ulCKSC_ARTCAS_CTL;          

    uint8        ucDummy114[4];              

    const uint32 ulCKSC_ARTCAS_ACT;          

    uint8        ucDummy115[244];            

    uint32       ulCKSC_ARTCAD_CTL;          

    uint8        ucDummy116[4];              

    const uint32 ulCKSC_ARTCAD_ACT;          

    uint8        ucDummy117[12];             

    uint32       ulCKSC_ARTCAD_STPM;         

    uint8        ucDummy118[228];            

    uint32       ulCKSC_AADCAS_CTL;          

    uint8        ucDummy119[4];              

    const uint32 ulCKSC_AADCAS_ACT;          

    uint8        ucDummy120[244];            

    uint32       ulCKSC_AADCAD_CTL;          

    uint8        ucDummy121[4];              

    const uint32 ulCKSC_AADCAD_ACT;          

    uint8        ucDummy122[12];             

    uint32       ulCKSC_AADCAD_STPM;         

    uint8        ucDummy123[228];            

    uint32       ulCKSC_AFOUTS_CTL;          

    uint8        ucDummy124[4];              

    const uint32 ulCKSC_AFOUTS_ACT;          

    uint8        ucDummy125[12];             

    uint32       ulCKSC_AFOUTS_STPM;         

    uint8        ucDummy126[228];            

    uint32       ulFOUTDIV;                  

    const uint32 ulFOUTSTAT;                 

    uint8        ucDummy127[26616];          

    uint32       ulPLLE;                     

    const uint32 ulPLLS;                     

    uint32       ulPLLC;                     

    uint8        ucDummy128[4084];           

    uint32       ulCKSC_CPUCLKS_CTL;         

    uint8        ucDummy129[4];              

    const uint32 ulCKSC_CPUCLKS_ACT;         

    uint8        ucDummy130[4];              

    uint32       ulCKSC_PPLLCLKS_CTL;        

    uint8        ucDummy131[4];              

    const uint32 ulCKSC_PPLLCLKS_ACT;        

    uint8        ucDummy132[228];            

    uint32       ulCKSC_CPUCLKD_CTL;         

    uint8        ucDummy133[4];              

    const uint32 ulCKSC_CPUCLKD_ACT;         

    uint8        ucDummy134[244];            

    uint32       ulCKSC_IPERI1S_CTL;         

    uint8        ucDummy135[4];              

    const uint32 ulCKSC_IPERI1S_ACT;         

    uint8        ucDummy136[244];            

    uint32       ulCKSC_IPERI2S_CTL;         

    uint8        ucDummy137[4];              

    const uint32 ulCKSC_IPERI2S_ACT;         

    uint8        ucDummy138[244];            

    uint32       ulCKSC_ILINS_CTL;           

    uint8        ucDummy139[4];              

    const uint32 ulCKSC_ILINS_ACT;           

    uint8        ucDummy140[244];            

    uint32       ulCKSC_IADCAS_CTL;          

    uint8        ucDummy141[4];              

    const uint32 ulCKSC_IADCAS_ACT;          

    uint8        ucDummy142[244];            

    uint32       ulCKSC_IADCAD_CTL;          

    uint8        ucDummy143[4];              

    const uint32 ulCKSC_IADCAD_ACT;          

    uint8        ucDummy144[244];            

    uint32       ulCKSC_PLLIS_CTL;           

    uint8        ucDummy145[4];              

    const uint32 ulCKSC_PLLIS_ACT;           

    uint8        ucDummy146[244];            

    uint32       ulCKSC_ILIND_CTL;           

    uint8        ucDummy147[4];              

    const uint32 ulCKSC_ILIND_ACT;           

    uint8        ucDummy148[12];             

    uint32       ulCKSC_ILIND_STPM;          

    uint8        ucDummy149[228];            

    uint32       ulCKSC_ICANS_CTL;           

    uint8        ucDummy150[4];              

    const uint32 ulCKSC_ICANS_ACT;           

    uint8        ucDummy151[12];             

    uint32       ulCKSC_ICANS_STPM;          

    uint8        ucDummy152[228];            

    uint32       ulCKSC_ICANOSCD_CTL;        

    uint8        ucDummy153[4];              

    const uint32 ulCKSC_ICANOSCD_ACT;        

    uint8        ucDummy154[12];             

    uint32       ulCKSC_ICANOSCD_STPM;       

    uint8        ucDummy155[228];            

    uint32       ulCKSC_ICSIS_CTL;           

    uint8        ucDummy156[4];              

    const uint32 ulCKSC_ICSIS_ACT;           

    uint8        ucDummy157[244];            

    uint32       ulCKSC_IIICS_CTL;           

    uint8        ucDummy158[4];              

    const uint32 ulCKSC_IIICS_ACT;           
} ClkCntlReg;
 
typedef struct Stag_ClkMntr_Register
{                                                      
    uint8        ucCTL0;                     

    uint8        ucDummy159[7];              

    uint16       usCMPL;                     

    uint8        ucDummy160[2];              

    uint16       usCMPH;                     

    uint8        ucDummy161[2];              

    uint8        ucPCMD;                     

    uint8        ucDummy162[3];              

    const uint8  ucPS;                       

    uint8        ucDummy163[3];              

    uint8        ucEMU0;                     
} ClkMntrReg;

typedef struct Stag_CmnClkMntr_Register
{                                                      
    uint32       ulTEST;                     

    const uint32 ulTESTS;                    

    uint8        ucDummy164[248];            

    uint32       ulPROTCMDCLMA;              

    const uint32 ulPROTSCLMA;                
} CmnClkMntrReg;

typedef struct Stag_STBC0_Registers
{                                                      
    uint32       ulPSC;                      

    uint8        ucDummy165[12];             

    uint32       ulSTPT;                     
} STBC0Reg;

typedef struct Stag_WUF_Registers
{                                                      
    const uint32 ulWUF0;                     

    uint32       ulWUFMSK0;                  

    uint32       ulWUFC0;                    
} WUFReg;

typedef struct Stag_LPS_Registers                      
{
    uint32       ulSCTLR;                    

    uint32       ulEVFR;                     

    uint32       ulDPSELR0;                  

    uint32       ulDPSELRM;                  

    uint32       ulDPSELRH;                  

    uint32       ulDPDSR0;                   

    uint32       ulDPDSRM;                   

    uint32       ulDPDSRH;                   

    const uint32 ulDPDIMR0;                  

    const uint8  ucDPDIMR1;                  

    uint8        ucDummy166[3];              

    const uint8  ucDPDIMR2;                  

    uint8        ucDummy167[3];              

    const uint8  ucDPDIMR3;                  

    uint8        ucDummy168[3];              

    const uint8  ucDPDIMR4;                  

    uint8        ucDummy169[3];              

    const uint8  ucDPDIMR5;                  

    uint8        ucDummy170[3];              

    const uint8  ucDPDIMR6;                  

    uint8        ucDummy171[3];              

    const uint8  ucDPDIMR7;                  

    uint8        ucDummy172[3];              

    uint16       usCNTVAL;                   

    uint8        ucDummy173[2];              

    const uint8  ucSOSTR;                    
} LPSReg;

typedef struct Stag_WriteProt_Registers
{                                                      
    uint32       ulPROTCMD0;                 

    const uint32 ulPROTS0;                   

    uint8        ucDummy174[32760];          

    uint32       ulPROTCMD1;                 

    const uint32 ulPROTS1;                   
} WPROTReg;

typedef struct Stag_CANController_Registers
{
    uint32       ulGCFG;                     

    uint32       ulGCTR;                     

    uint32       ulGSTS;                     

    uint32       ulGERFL;                    

    uint32       ulGTSC;                     

    uint32       ulGAFLECTR;                 

    uint32       ulGAFLCFG0;                 

    uint32       ulGAFLCFG1;                 

    uint32       ulRMNB;                     

    uint8        ucdummy175[952];            

    uint32       ulGTINTSTS0;                

    uint32       ulGTINTSTS1;                

    uint32       ulGTSTCFG;                  

    uint32       ulGTSTCTR;                  

    uint8        ucdummy289[4];              

    uint32       ulGFDCFG;                   

    uint8        ucdummy290[4];              

    uint32       ulGLOCKK;                   

    uint8        ucdummy291[124];            

    uint32       ulGRMCFG;                   

}CANGblReg;

typedef struct Stag_CANChannel_Registers
{
    uint32       ulCFG;                      

    uint32       ulCTR;                      

    uint32       ulSTS;                      

    uint32       ulERFL;                     
}CANChReg;

typedef struct Stag_CANTXQ_Registers
{
    uint32       ulTXQCC;                    

    uint8        ucdummy178[28];             

    uint32       ulTXQSTS;                   

    uint8        ucdummy179[28];             

    uint32       ulTXQPCTR;                  
}CANTxqReg;

typedef struct Stag_CANTHL_Registers
{
    uint32       ulTHLCC;                    

    uint8        ucdummy181[28];             

    uint32       ulTHLSTS;                   

    uint8        ucdummy182[28];             

    uint32       ulTHLPCTR;                  

    uint8        ucdummy183[5052];           

    uint32       ulTHLACC;                   

    uint8        ucdummy184[18428];          

    uint32       ulFDTHLACC;                 
}CANThlReg;


typedef struct Stag_CAN_ReceiveRule
{
    uint32       ulGAFLID;                   

    uint32       ulGAFLM;                    

    uint32       ulGAFLP0;                   

    uint32       ulGAFLP1;                   
}CANRRuleReg;

typedef struct Stag_CAN_ComFIFO1
{
    uint32       ulCFCC;                     

    uint8        ucdummy184[92];             

    uint32       ulCFSTS;                    

    uint8        ucdummy185[92];             

    uint32       ulCFPCTR;                   
}CANCFIFOReg1;

typedef struct Stag_CAN_ComFIFO2
{
    uint32       ulCFID;                     

    uint32       ulCFPTR;                    

    uint32       ulCFDF0;                    

    uint32       ulCFDF1;                    
}CANCFIFOReg2;

 
typedef struct Stag_CAN_FIFOStatus
{
    uint32       ulFESTS;                    

    uint32       ulFFSTS;                    

    uint32       ulFMSTS;                    

    uint32       ulRFISTS;                   

    uint32       ulCFRISTS;                  

    uint32       ulCFTISTS;                  
}CANFIFOStatusReg;

typedef struct Stag_CAN_HrhFIFO
{
    uint32       ulRFCC;                     

    uint8        ucdummy287[28];             

    uint32       ulRFSTS;                    

    uint8        ucdummy288[28];             

    uint32       ulRFPCTR;                   


}CANHRTFIFOReg1;

typedef struct Stag_CAN_HrhFIFO2
{
    uint32       ulRFID;                     

    uint32       ulRFPTR;                    

    uint32       ulRFDF0;                    

    uint32       ulRFDF1;                    

}CANHRTFIFOReg2;


typedef struct Stag_CAN_FIFODMA
{
    uint32       ulCDTCT;                    
    uint32       ulCDTSTS;                   
}CANFIFIODMAReg;

typedef struct Stag_CAN_TransmitBuffControl
{
    uint32       TMTRSTS;                    

    uint32       TMTARSTS;                   

    uint32       TMTCSTS;                    

    uint32       TMTASTS;                    
}CANTransmitBuffControlReg;

typedef struct STag_CAN_Hrh
{
    uint32       ulRMID;                     

    uint32       ulRMPTR;                    

    uint32       ulRMDF0;                    

    uint32       ulRMDF1;                    
}CANHrhReg;

typedef struct STag_CAN_Hth1
{
    uint8        ucTMC;                      

    uint8        ucdummy190[127];            

    uint8        ucTMSTS;                    
}CANHthReg1;

typedef struct STag_CAN_Hth2
{
    uint32       ulTMID;                     

    uint32       ulTMPTR;                    

    uint32       ulTMDF0;                    
}CANHthReg2;

 

typedef struct STag_CAN_FDChannel
{
    uint32        ulDCFG;

    uint32        ulFDCFG;

    uint32        ulFDCTR;

    uint32        ulFDSTS;

    uint32        ulFDCRC;
}CANFDChReg;

typedef struct STag_CANRamTstReg
{
    uint32       ulRPGACC[64];               
}CANRamTstReg;

typedef struct Stag_CANFD_ReceiveRule
{
    uint32       ulFDGAFLID;                 

    uint32       ulFDGAFLM;                  

    uint32       ulFDGAFLP0;                 

    uint32       ulFDGAFLP1;                 
}CANFDRRuleReg;

typedef struct STag_CANFD_Hrh
{
    uint32       ulFDRMID;                   

    uint32       ulFDRMPTR;                  

    uint32       ulFDRMSTS;                  

    uint32       ulFDRMDF0;                  

    uint32       ulFDRMDF1;                  

    uint32       ulFDRMDF2;                  

    uint32       ulFDRMDF3;                  

    uint32       ulFDRMDF4;                  
}CANFDHrhReg;

typedef struct Stag_CANFD_HrhFIFO
{
    uint32       ulFDRFID;                   

    uint32       ulFDRFPTR;                  

    uint32       ulRFFDSTS;                  

    uint32       ulFDRFDF0;                  

    uint32       ulFDRFDF1;                  

    uint32       ulFDRFDF2;                  

    uint32       ulFDRFDF3;                  

    uint32       ulFDRFDF4;                  

    uint32       ulFDRFDF5;                  

    uint32       ulFDRFDF6;                  

    uint32       ulFDRFDF7;                  

    uint32       ulFDRFDF8;                  

    uint32       ulFDRFDF9;                  

    uint32       ulFDRFDF10;                 

    uint32       ulFDRFDF11;                 

    uint32       ulFDRFDF12;                 

    uint32       ulFDRFDF13;                 

    uint32       ulFDRFDF14;                 

    uint32       ulFDRFDF15;                 
}CANFDHRTFIFOReg;

typedef struct Stag_CANFD_ComFIFO
{
    uint32       ulFDCFID;                   

    uint32       ulFDCFPTR;                  

    uint32       ulFDCSTS;                   

    uint32       ulFDCFDF0;                  

    uint32       ulFDCFDF1;                  

    uint32       ulFDCFDF2;                  

    uint32       ulFDCFDF3;                  

    uint32       ulFDCFDF4;                  

    uint32       ulFDCFDF5;                  

    uint32       ulFDCFDF6;                  

    uint32       ulFDCFDF7;                  

    uint32       ulFDCFDF8;                  

    uint32       ulFDCFDF9;                  

    uint32       ulFDCFDF10;                 

    uint32       ulFDCFDF11;                 

    uint32       ulFDCFDF12;                 

    uint32       ulFDCFDF13;                 

    uint32       ulFDCFDF14;                 

    uint32       ulFDCFDF15;                 
}CANFDCFIFOReg;

typedef struct STag_CANFD_Hth
{
    uint32       ulFDTMID;                   

    uint32       ulFDTMPTR;                  

    uint32       ulTMFDCTR;                  

    uint32       ulFDTMDF0;                  

    uint32       ulFDTMDF1;                  

    uint32       ulFDTMDF2;                  

    uint32       ulFDTMDF3;                  

    uint32       ulFDTMDF4;                  
}CANFDHthReg;

typedef struct STag_TAUDBUnitUserReg
{
    uint16       usTOL;                      

    uint8        ucdummy192[2];              

    uint16       usRDT;                      

    uint8        ucdummy193[2];              

    uint16       usRSF;                      

    uint8        ucdummy272[2];              

    uint16       usTRO;                      

    uint8        ucdummy194[2];              

    uint16       usTME;                      

    uint8        ucdummy195[2];              

    uint16       usTDL;                      

    uint8        ucdummy196[2];              

    uint16       usTO;                       

    uint8        ucdummy197[2];              

    uint16       usTOE;                      

    uint8        ucdummy198[354];            

    uint16       usTE;                       

    uint8        ucdummy199[2];              

    uint16       usTS;                       

    uint8        ucdummy200[2];              

    uint16       usTT;                       

}TAUDBUserReg;

typedef struct STag_TAUDBUnitOsReg
{
    uint16       usTPS;                      

    uint8        ucdummy201[2];              

    uint8        ucBRS;                      

    uint8        ucdummy202[3];              

    uint16       usTOM;                      

    uint8        ucdummy203[2];              

    uint16       usTOC;                      

    uint8        ucdummy204[2];              

    uint16       usTDE;                      

    uint8        ucdummy205[2];              

    uint16       usTDM;                      

    uint8        ucdummy206[2];              

    uint16       usTRE;                      

    uint8        ucdummy207[2];              

    uint16       usTRC;                      

    uint8        ucdummy208[2];              

    uint16       usRDE;                      

    uint8        ucdummy209[2];              

    uint16       usRDM;                      

    uint8        ucdummy210[2];              

    uint16       usRDS;                      

    uint8        ucdummy211[2];              

    uint16       usRDC;                      
}TAUDBOsReg;

typedef struct STag_TAUJUnitUserReg
{
    uint8        ucTE;                       

    uint8        ucdummy212[3];              

    uint8        ucTS;                       

    uint8        ucdummy213[3];              

    uint8        ucTT;                       

    uint8        ucdummy214[3];              

    uint8        ucTO;                       

    uint8        ucdummy215[3];              

    uint8        ucTOE;                      

    uint8        ucdummy216[3];              

    uint8        ucTOL;                      

    uint8        ucdummy217[3];              

    uint8        ucRDT;                      

    uint8        ucdummy267[3];              

    uint8        ucRSF;                      

    uint8        ucdummy275[16];             

}TAUJUserReg;

typedef struct STag_TAUJUnitOsRegs
{
    uint16       usTPS;                      

    uint8        ucdummy218[2];              

    uint8        ucBRS;                      

    uint8        ucdummy219[3];              

    uint8        ucTOM;                      

    uint8        ucdummy220[3];              

    uint8        ucTOC;                      

    uint8        ucdummy221[3];              

    uint8        ucRDE;                      

    uint8        ucdummy222[3];              

    uint8        ucRDM;                      
}TAUJOsReg;

typedef struct STag_TAUDBUserReg
{
    uint16       usCDR;                      

    uint16       usDummy223[63];             

    uint16       usCNT;                      

    uint16       usDummy224[31];             

    uint8        ucCMUR;                     

    uint8        ucdummy225[127];            

    uint8        ucCSR;                      

    uint8        ucdummy270[63];             

    uint8        ucCSC;                      

    uint8        ucdummy268[127];            

    uint16       usCMOR;                     

}TAUDBChReg;

typedef struct STag_TAUJUserReg
{
    uint32       ulCDR;                      

    uint8        ucdummy226[12];             

    uint32       ulCNT;                      

    uint8        ucdummy227[12];             

    uint8        ucCMUR;                     

    uint8        ucdummy269[15];             

    uint8        ucCSR;                      

    uint8        ucdummy271[15];             

    uint8        ucCSC;                      

    uint8        ucdummy228[63];             

    uint16       usCMOR;                     
}TAUJChReg;

typedef struct STag_OSTMUnitUserRegs
{
    uint32       ulCMP;                      

    uint32       ulCNT;                      

    uint8        ucdummy229[8];              

    uint8        ucTE;                       

    uint8        ucdummy230[3];              

    uint8        ucTS;                       

    uint8        ucdummy231[3];              

    uint8        ucTT;                       

    uint8        ucdummy232[7];              

    uint8        ucCTL;                      

    uint8        ucdummy233[3];              

    uint8        ucEMU;                      
} OSTMReg;

typedef struct STag_Pwm_DiagClockDivRegs
{
    uint16       usBRS0;                     

    uint8        ucdummy232[2];              

    uint16       usBRS1;                     

    uint8        ucdummy233[2];              

    uint16       usBRS2;                     

    uint8        ucdummy234[2];              

    uint16       usBRS3;                     

    uint8        ucdummy235[2];              

    uint8        ucTE;                       

    uint8        ucdummy236[3];              

    uint8        ucTS;                       

    uint8        ucdummy237[3];              

    uint8        ucTT;                       
}PWBAReg;

typedef struct STag_Pwm_DiagGeneratorRegs
{
    uint16       usCSDR;                     

    uint8        ucdummy238[2];              

    uint16       usCRDR;                     

    uint8        ucdummy239[2];              

    uint16       usCTDR;                     

    uint8        ucdummy240[2];              

    uint8        ucRDT;                      

    uint8        ucdummy241[3];              

    uint8        ucRSF;                      

    uint8        ucdummy242[3];              

    uint16       usCNT;                      

    uint8        ucdummy243[10];             

    uint8        ucCTL;                      

    uint8        ucdummy244[3];              

    uint16       usCSBR;                     

    uint8        ucdummy245[2];              

    uint16       usCRBR;                     

    uint8        ucdummy246[2];              

    uint16       usCTBR;                     
}PWGAReg;

typedef struct STag_Pwm_PWSAReg
{
    uint8        ucCTL;                      

    uint8        ucdummy268[3];              

    uint8        ucSTR;                      

    uint8        ucdummy269[59];             

    uint32       ulPVCR[36];                 
}PWSAReg;

typedef struct STag_Pwm_SLPWGAReg
{
    uint32       ulSLPWGA0;                  

    uint32       ulSLPWGA1;                  

    uint32       ulSLPWGA2;                  
}SLPWGAReg;

typedef struct STag_RLin2_GblRegs
{
    uint8        ucGLWBR;                    

    uint8        ucGLBRP0;                   

    uint8        ucGLBRP1;                   

    uint8        ucGLSTC;                    
} Lin2GblReg;

typedef struct STag_RLin2_ChannelRegs
{
    uint8        ucLiMD;                     

    uint8        ucLiBFC;                    

    uint8        ucLiSC;                     

    uint8        ucLiWUP;                    

    uint8        ucLiIE;                     

    uint8        ucLiEDE;                    

    uint8        ucLiCUC;                    

    uint8        ucdummy247[1];              

    uint8        ucLiTRC;                    

    uint8        ucLiMST;                    

    uint8        ucLiST;                     

    uint8        ucLiEST;                    

    uint8        ucLiDFC;                    

    uint8        ucLiIDB;                    

    uint8        ucLiCBR;                    

    uint8        ucdummy248[1];              

    uint8        ucLiDBR[8];                 
} Lin2ChReg;

typedef struct STag_RLin3_UartRegs
{
    uint8        ucLWBR;                     

    uint8        ucLBRP0;                    

    uint8        ucLBRP1;                    

    uint8        ucLSTC;                     

    uint8        ucdummy249[3];              

    uint8        ucLMD;                      

    uint8        ucLBFC;                     

    uint8        ucLSC;                      

    uint8        ucLWUP;                     

    uint8        ucLIE;                      

    uint8        ucLEDE;                     

    uint8        ucLCUC;                     

    uint8        ucdummy250[1];              

    uint8        ucLTRC;                     

    uint8        ucLMST;                     

    uint8        ucLST;                      

    uint8        ucLEST;                     

    uint8        ucLDFC;                     

    uint8        ucLDB;                      

    uint8        ucLCBR;                     

    uint8        ucdummy251[1];              

    uint8        ucLDBR[8];                  
} Lin3UartReg;


typedef struct Stag_WDTA_Registers
{
    uint8        ucWDTE;                     

    uint8        ucdummy252[3];              

    uint8        ucEVAC;                     

    uint8        ucdummy253[3];              

    uint8        ucREF;                      

    uint8        ucdummy254[3];              

    uint8        ucMD;                       
}WDTAReg;

typedef struct STag_AdcConfigRegisters
{
    uint32       ulPWDVCR;                   

    uint8        ucdummy255[508];            

    uint32       ulPWDDIR;                   

    uint8        ucdummy256[8];              

    uint32       ulADHALTR;                  

    uint32       ulADCR;                     

    uint32       ulSGSTR;                    

    uint32       ulMPXCURR;                  

    uint8        ucdummy257[4];              

    uint32       ulTHSMPSTCR;                

    uint32       ulTHCR;                     

    uint32       ulTHAHLDSTCR;               

    uint32       ulTHBHLDSTCR;               

    uint32       ulTHACR;                    

    uint32       ulTHBCR;                    

    uint32       ulTHER;                     

    uint32       ulTHGSR;                    

    uint32       ulSFTCR;                    

    uint32       ulULLMTBR[3];               

    uint32       ulECR;                      

    uint32       ulULER;                     

    uint32       ulOWER;                     

    uint32       ulDGCTL0;                   

    uint32       ulDGCTL1;                   

    uint32       ulPDCTL1;                   

    uint32       ulPDCTL2;                   

    uint8        ucdummy258[32];             

    uint32       ulSMPCR;                    

    uint8        ucdummy259[388];            

    uint32       ulPWDSGCR;                  

    uint8        ucdummy260[12];             

    uint32       ulPWDSGSEFCR;               
}AdcConfReg;

typedef struct STag_DmaAddrRegs
{
    uint32       ulDSA;                      

    uint32       ulDDA;                      

    uint32       ulDTC;                      

    uint32       ulDTCT;                     

    uint32       ulDRSA;                     

    uint32       ulDRDA;                     

    uint32       ulDRTC;                     

    uint8        ucdummy261[4];              

    uint32       ulDCEN;                     

    uint32       ulDCST;                     

    uint32       ulDCSTS;                    

    uint32       ulDCSTC;                    

    uint32       ulDTFR;                     

    uint32       ulDTFRRQ;                   

    uint32       ulDTFRRQC;                  
}DmaReg;

typedef struct STag_DmaGlobalRegs
{

    uint32       ulDMACTL;                   

    uint8        ucdummy287[28];             

    uint32       ulDMACER;                   

    uint8        ucdummy288[12];             

    uint32       ulDM0CMV;                   
 
    uint32       ulDM1CMV;                   
 

    uint8        ucdummy289[4];              

    uint32       ulCMVC;                     
 

    uint8        ucdummy290[192];            

    uint32       ulDM00CM;                   

    uint32       ulDM01CM;                   

    uint32       ulDM02CM;                   

    uint32       ulDM03CM;                   

    uint32       ulDM04CM;                   

    uint32       ulDM05CM;                   

    uint32       ulDM06CM;                   

    uint32       ulDM07CM;                   

    uint32       ulDM10CM;                   

    uint32       ulDM11CM;                   

    uint32       ulDM12CM;                   

    uint32       ulDM13CM;                   

    uint32       ulDM14CM;                   

    uint32       ulDM15CM;                   

    uint32       ulDM16CM;                   

    uint32       ulDM17CM;                   

}DmaGlobalReg;
typedef struct STag_Adc_VirtualChReg
{
    uint32       ulVCR[50];                  

    uint8        ucdummy262[56];             

    uint16       usDR[50];                   

    uint8        ucdummy263[154];            

    uint32       ulDIR[50];                  
}AdcVirChReg;

typedef struct STag_Adc_ScanGroupReg
{
    uint32       ulSGSTCR;                   

    uint8        ucdummy264[4];              

    uint32       ulSGCR;                     

    uint32       ulSGVCSP;                   

    uint32       ulSGVCEP;                   

    uint32       ulSGMCYCR;                  

    uint32       ulSGSEFCR;                  

    uint32       ulSGTSEL;                   
}AdcSGReg;

typedef struct STag_Spi_MainReg
{
    uint8        ucCTL0;                     

    uint8        ucdummy280[3];              

    uint32       ulSTR0;                     

    uint16       usSTCR0;                    

    uint8        ucdummy265[6];              

    uint32       ulCTL1;                     

    uint16       usCTL2;                     
}SpiMainReg;

typedef struct STag_Spi_BRSReg
{
    uint16       usBRS;                      

    uint8        ucdummy[2];                 
}SpiBRSReg;

typedef struct STag_Spi_CSIHReg
{
    uint32       ulMCTL1;                    

    uint32       ulMCTL2;                    

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy281[2];              

    uint32       ulRX0W;                     

    uint16       usRX0H;                     

    uint8        ucdummy282[2];              

    uint32       ulMRWP0;                    

    uint8        ucdummy266[36];             

    uint16       usMCTL0;                    

    uint8        ucdummy283[2];              

    uint32       ulCFG[8];                   

    uint8        ucdummy267[4];              

    SpiBRSReg      stBRS[4];                 
}SpiCSIHReg;

typedef struct STag_Spi_ECCCSIHnTRC
{
    uint8         ucErdb;


    uint8         ucEcrd;

    uint8         ucHord;

    uint8         ucSynd;

}Spi_EccTrcReg;

typedef struct STag_Spi_CSIHECCReg
{
    uint16        usEccCTL;

    uint8         ucdummy[2];

    uint16        usEccTmc;

Spi_EccTrcReg stEccTrc;

    uint32        ulEccTed;

}SpiCSIHECCReg;

typedef struct STag_Spi_SELBREADTEST
{
    uint16        usSelfReadTest;

}SpiSelfReadTestReg;

typedef struct STag_Spi_CSIGReg
{
    uint8        ucBCTL0;                    

    uint8        ucdummy284[3];              

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy285[2];              

    uint16       usRX0;                      

    uint8        ucdummy286[2];              

    uint32       ulCFG0;                     
}SpiCSIGReg;

typedef struct STag_Fls_Reg
{
    uint32       DCNT;                       

    uint32       DPCMD;                      

    uint32       DPS;                        
}FlsReg;

typedef struct STag_FEINTReg
{                                                          
    const uint32 F;                          
    uint32       FMSK;                       
    uint32       FC;                         
} FEINTReg;

typedef uint16       CANnTMIECReg;
typedef uint32       CANnRMNDReg;

typedef struct STag_Fcu_Registers
{
    uint8         ucReserved1[16];

    uint8         ucFASTAT;

    uint8         ucReserved2[31];

    uint32        ulFSADDR;

    uint32        ulFEADDR;

    uint8         ucReserved3[28];

    uint16        usFCURAME;

    uint8         ucReserved4[42];

    uint32        ulFSTATR;

    uint16        usFENTRYR;

    uint8         ucReserved5[78];

    uint8         ucFBCSTAT;

    uint8         ucReserved6[3];

    uint32        ulFPSADDR;

    uint8         ucReserved7[8];

    uint16        usFPCKAR;

}FlsFACIReg;


typedef struct STag_Fcu_ECCReg
{
    uint16        usDFECCCTL;

    uint8         ucReserved8[2];

    uint8         ucDFERSTR;

    uint8         ucReserved9[3];

    uint8         ucDFERSTC;

    uint8         ucReserved10[11];

    uint8         ucDFERRINT;

    uint8         ucReserved11[7];

    uint16        usDFTSTCTL;
}FlsECCReg;





 
 

 




 
 
 
 
 
 
 
 
 
 


 

 




















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
extern volatile WPROTReg* const Mcu_WriteProtReg_BaseAddress; 

 
extern volatile LVIReg* const LviReg_BaseAddress; 

 
 

 
extern volatile unsigned long * const Mcu_IoHoldRegister_BaseAddress;

 
extern volatile RESFReg * const Mcu_ResfRegister_BaseAddress;

 
extern volatile ClkMntrReg* const Clma0Reg_BaseAddress;

 
extern volatile ClkMntrReg* const Clma1Reg_BaseAddress;

 
extern volatile ClkMntrReg* const Clma2Reg_BaseAddress;

 
 

 
extern volatile STBC0Reg * const Mcu_Stbc0Register_BaseAddress;

 
extern volatile WUFReg* const WufReg_BaseAddress;
extern volatile WUFReg* const WufIsoReg_BaseAddress;

 
extern volatile FEINTReg* const FEIntMsk_BaseAddress;
 
 
 
 

 
 
extern volatile ClkCntlReg* const Mcu_ClkCtrlReg_BaseAddress;

 
extern volatile unsigned short* const Mcu_ICCWEND_IMRAddress; 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 


 




 


 

 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




 
 
 

 

 





 
 
 





























 

 

 

 

 

 

 

 



 




 



 










































 

 
 






 



 
 



 

 
 
 
 
typedef struct STag_Mcu_ClockSetting
{
   
  const void * pCkscSel;
  uint8 ucCkscSelOffset;
   
  uint32 ulPLLControlValue;
   
  uint32 ulMainOscStabTime;
   
  uint16 usFoutDivReg;
   
  uint8 ucSelectedSrcClock;
   
  uint8 ucMosccRegValue;
   
  uint8 ucSelectedSTPMK;
   
  uint8 ucNoOfIsoCkscReg;
   
  uint8 ucNoOfAwoCkscReg;
   
  uint8 ucNoOfPllIsoCkscReg;
   
  uint8 ucNoOfPllAwoCkscReg;
   
  uint8 ucCkscPllIndexOffset;
   
  uint8 ucPllSelectedSrcClock;
   
  boolean blPllActCheck;
   
  uint16 usCLMA0CMPL;
   
  uint16 usCLMA0CMPH;
   
  uint16 usCLMA1CMPL;
   
  uint16 usCLMA1CMPH;
   
  uint16 usCLMA2CMPL;
   
  uint16 usCLMA2CMPH;
} Mcu_ClockSetting;

 
 
typedef struct STag_Mcu_CkscSetting
{
   
  uint8 ucCkscSourceSelRegNum;
   
  uint8 ucCkscDividerSelRegNum;
   
  uint16 usCkscStpmskSelRegNum;
   
  uint8 ucCkscSourceSelRegValue;
   
  uint8 ucCkscDividerSelRegValue;
   
  uint8 ucCkscControlval;

} Mcu_CkscSetting;



 

 
typedef struct STag_Mcu_PortGroupAddress
{
   
  volatile uint32 * pPortGroupAddress;
} Mcu_PortGroupAddress;



 

 
 
 
typedef struct STag_Mcu_ModeSetting
{
   
  uint32 ulPowerDownWakeupType0;
   
  uint32 ulPowerDownWakeupTypeISO0;
   
   
  uint8 ucModeType;
   
  boolean blModeTransitionReq;
   
  boolean blMcuMainOscOperation;
} Mcu_ModeSetting;

 
 
 
typedef struct STag_Mcu_TAUJUnitUserRegs
{
  uint8  volatile ucTAUJnTS;
 
  uint8  volatile aaReserved1[3];
 
  uint8  volatile ucTAUJnTT;
} Mcu_TAUJUnitUserRegs;

 
 
typedef struct STag_Mcu_TAUJUnitOsRegs
{
  uint16 volatile usTAUJnTPS;
  uint16 volatile usReserved1;
  uint8  volatile ucTAUJnBRS;
} Mcu_TAUJUnitOsRegs;

 
 
typedef struct STag_Mcu_TAUJUserRegs
{
  uint32 volatile ulTAUJnCDRm;
 
  uint32 volatile aaReserved1[3];
 
} Mcu_TAUJChannelUserRegs;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
 
extern const Mcu_CkscSetting Mcu_GstCkscSetting[];
 
 
 
extern const Mcu_ClockSetting Mcu_GstClockSetting[];
 
 
 
extern const Mcu_ModeSetting Mcu_GstModeSetting[];
 
 
 
extern const Mcu_PortGroupAddress
                     Mcu_GaaPortGroup[0x1U + 0x0U];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_8"




 
 



 
 
 
extern const uint8 Mcu_GaaClockOffset[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section sbss=".MCU_CFG_BURAM_NO_INIT_32"




 
 



 
 
 
 
extern uint32 Mcu_GaaRamPortGroup[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section sbss=default
     #pragma ghs endsda





 
 



 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 

















































 
 




 












 












 
 



















































































































 




 





































































































 



 












 












 













 












 



 
 




















 
 


 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 













 












 




 
 




















 
 

 




 



 



 



 
typedef uint16 Dem_EventIdType;

typedef uint8 Dem_EventStatusType;

typedef uint8 Dem_DebouncingStateType;

typedef uint8 Dem_DebounceResetStatusType;

typedef uint8 Dem_UdsStatusByteType;

typedef uint8 Dem_OperationCycleStateType;

typedef uint8 Dem_DTCKindType;

typedef uint8 Dem_DTCFormatType;

typedef uint8 Dem_DTCOriginType;

typedef uint8 Dem_DTRControlType;

typedef uint8 Dem_InitMonitorReasonType;

typedef uint8 Dem_IumprDenomCondIdType;

typedef uint8 Dem_IumprDenomCondStatusType;

typedef uint8 Dem_IndicatorStatusType;





 


 
typedef uint16 Dem_ComponentIdType;


 
typedef uint16 Dem_RatioIdType;

typedef uint8 Dem_DTCRequestType;

typedef uint8 Dem_DTCTranslationFormatType;

typedef uint8 Dem_DTCSeverityType;
 

 
typedef uint8 Dem_IUMPRDenGroupType;

 
typedef uint8 Dem_IUMPRGroupType;

 
typedef uint8 Dem_RatioKindType;

typedef uint8 Dem_J1939DcmDTCStatusFilterType;

typedef uint8 Dem_J1939DcmSetClearFilterType;

typedef uint8 Dem_J1939DcmSetFreezeFrameFilterType;

typedef uint16 Dem_J1939DcmLampStatusType;








 

 
typedef struct
{
    uint8 ActiveTroubleCodes;                      
    uint8 PreviouslyActiveDiagnosticTroubleCodes;  
    uint8 OBDCompliance;                           
    uint8
        ContinuouslyMonitoredSystemsSupport_Status;  
    uint16 NonContinuouslyMonitoredSystemsSupport;   
     
    uint16 NonContinuouslyMonitoredSystemsStatus;
} Dem_J1939DcmDiagnosticReadiness1Type;

 
typedef struct
{
    uint16 DistanceTraveledWhileMILisActivated;     
    uint16 DistanceSinceDTCsCleared;                
    uint16 MinutesRunbyEngineWhileMILisActivated;   
    uint16 TimeSinceDiagnosticTroubleCodesCleared; 
 
} Dem_J1939DcmDiagnosticReadiness2Type;

 
typedef struct
{
    uint16 TimeSinceEngineStart;                              
    uint8 NumberofWarmupsSinceDTCsCleared;                    
    uint8 ContinuouslyMonitoredSystemsEnableCompletedStatus; 
 
    uint16
        NonContinuouslyMonitoredSystemsEnableStatus;  
     
    uint16 NonContinuouslyMonitoredSystems;
} Dem_J1939DcmDiagnosticReadiness3Type;



 

typedef uint8 Dem_ReturnGetStatusOfDTCType;  

typedef uint8 Dem_ReturnGetSeverityOfDTCType;   

typedef uint8 Dem_ReturnGetFunctionalUnitOfDTCType;  

typedef uint8 Dem_ReturnSetFilterType;  

typedef uint8 Dem_ReturnGetNumberOfFilteredDTCType;  

typedef uint8 Dem_ReturnGetNextFilteredElementType; 
 

typedef uint8 Dem_ReturnGetDTCByOccurrenceTimeType;  

typedef uint8 Dem_ReturnDisableDTCRecordUpdateType;  

typedef uint8 Dem_ReturnGetFreezeFrameDataByDTCType;  

typedef uint8
    Dem_ReturnGetExtendedDataRecordByDTCType;  

typedef uint8 Dem_ReturnGetSizeOfDataByDTCType; 

 

typedef uint8 Dem_ReturnClearDTCType;  

typedef uint8 Dem_ReturnControlDTCSettingType; 
 


 






 



 
typedef struct
{
    Dem_EventIdType IntId;
    uint8 Status;
    uint8 EventStatusFlag;
    uint8 UdsStatus;
    uint8 OldUdsStatus;
     
    uint8 OccurrenceCounter;  
    uint8 FailureCounter;
    uint8 AgingCounter;
    uint8 HealingCounter;
    uint8 AgedCounter;
     
} Dem_EventRelateInformationType;

typedef struct
{
    boolean IUMPRDenStatus;
    boolean IUMPRNumStatus;
    uint16 Denominator;  
    uint16 Numerator;    
    uint16 General_Denominator;
} IUMPRType;

typedef struct
{
    sint32 TestResult;
    sint32 LowerLimit;
    sint32 UpperLimit;
} DTRInfoType;

 
typedef struct
{
    Dem_J1939DcmDTCStatusFilterType DTCStatusFilter;
    Dem_DTCKindType DemJ1939DTCFilterInfo;
    uint8 node;
    Dem_DTCOriginType DTCOrigin;
     
    boolean IsSet;
    uint16 NumberOfFilteredDTC;
    uint8 GetNum;
    uint8 CurrentIndex;
} Dem_J1939DTCFilterInfoType;

 
typedef struct
{
    Dem_J1939DcmSetFreezeFrameFilterType FreezeFrameKind;
    uint8 node;
    uint8 CurrentIndex;
    boolean IsSet;
    uint16 SPNIndex;
    uint8 SPNCounter;
    boolean IsFind;
    boolean IsOK;
} Dem_J1939DcmFreezeFrameFilterType;

typedef struct
{
    uint8 node;
    uint8 CurrentIndex;
    boolean IsSet;
} Dem_J1939DcmRatioFilterType;

 
typedef enum
{
    DEM_STATE_UNINIT = 0u,
    DEM_STATE_PRE_INIT,
    DEM_STATE_INIT,
    DEM_STATE_SHUTDOWN
} Dem_StateType;

typedef enum
{
    DEM_CLEAR_LOCK = 0u,
    DEM_CLEAR_NOT_LOCK
} Dem_ClearLockStatus;

typedef enum
{
    DEM_ClEAR_NONVOLATILE_FINISHED = 0u,
    DEM_ClEAR_NONVOLATILE_FAILED,
    DEM_ClEAR_NONVOLATILE_INIT,
    DEM_CLEAR_NONVOLATILE_PROCESSING,
    DEM_CLEAR_NONVOLATILE_START
} Dem_ClearNonvolatileStatusType;

typedef struct
{
    uint16 DTCIndex;
    uint16 SaveDTCIndex;
    boolean ClearAllGroup;
    uint8 DTCGroupIndex;
    uint8 memDest;
    uint32 DTC;
    Dem_DTCFormatType DTCFormat;
    Dem_DTCFormatType SaveDTCFormat;
    Dem_DTCOriginType DTCOrigin;
    Dem_DTCOriginType SaveDTCOrigin;
    uint16 SID;
    Dem_J1939DcmSetClearFilterType DTCTypeFilter;
    uint8 node;
} Dem_ClearDTCInfoType;

typedef struct
{
    uint8 Occctr;
    uint8 AgingUpCnt;
    uint8 AgingDownCnt;
    uint8 Ovflind;
    uint8 Significance;
    uint8 CurrentFDC;
    uint8 MaxFDCDuringCurrentCycle;
    uint8 FailedCycles;
    uint8 FaultPendingCounter;
    uint8 AgedCounter;
} Dem_InternalDataType;

typedef struct
{
    uint8 CbUdsStatus;
    boolean SuppressionStatus;
} Dem_DTCGeneralStatusType;

typedef struct
{
    boolean Status;
    uint8 FailurePriority;
    boolean availability;
} DemComponentStatusType;

 
typedef struct
{
    sint16 InternalDebounceCounter;
    Dem_EventStatusType CurStatus;
} Dem_DebounceCounterInfoType;

typedef struct
{
    sint8 FDC;
    uint8 MaxFDCSinceLastClear;
    uint8 MaxFDCDuringCurrentCycle;
} FDCInfoType;

 
typedef struct
{
     
    Dem_DTCFormatType DTCFormat;
     
    uint16 NumberOfFilteredRecords;
    uint16 GetNum;
    uint8 EntryIndex;
    uint8 FFIndex;
} Dem_FreezeFrameRecordFilterInfoType;

typedef struct
{
    uint8 node;
    uint8 CurrentIndex;
    boolean IsSet;
} DemJ1939DTCGetNodeType;


 




 

 



 
 




 
 


 


 

 

 



 

 



 

 

 

 


 

 

 

 


 
 

 

 

 

 


 
 


 


 


 



 
 


 

 

 

 

 



 
 



 

 


 


 


 

 



 
 


 

 



 
 


 






 



 




 
 

 

 

 

 

 

 

 

 

 

 

 




 

 


 

 

 

 

 

 


 

 

 

 


 

 


 









typedef struct
{
     
    boolean AllGroupIsEnabled;
    Dem_DTCKindType DTCKind;
} Dem_DTCSettingInfoType;



 
typedef Std_ReturnType (*Dem_ReadDataFncType)(uint8* Buffer, uint16 BufSize);

typedef Std_ReturnType (*DataServicesType)(uint8* Buffer);



 
 
typedef struct
{
     
    const boolean DemOperationCycleAutomaticEnd;

     
    const boolean DemOperationCycleAutostart;

    







 
    const uint8 DemOperationCycleType;
} Dem_OperationCycleType;




 
 
typedef struct
{
    const uint16 DemPidIdentifier;
    const uint16 StartIndex;
    const uint8 RefNum;
    const uint8 DataSize;  
} Dem_PidClassType;

 
typedef struct
{
    const uint16 DataSize;
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_FreezeFrameClassType;
 
typedef struct
{
    const uint16 DemDidIdentifier;
    const uint16 StartIndex;
    const uint8 RefNum;
    const uint8 DataSize;  
} Dem_DidClassType;

extern const Dem_FreezeFrameClassType DemFreezeFrameClass[2u];

extern const Dem_DidClassType DemDidClass[6u];
extern const uint16 DemDidClassRef[6u];

 
typedef struct
{
    const uint16 DemSPNIdentifier;
    const uint16 StartIndex;
    const uint8 DataSize;  
} Dem_SPNClassType;

typedef struct
{
    const uint16 DataSize;
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_J1939FreezeFrameClassType;


 
typedef struct
{
     
    const uint8 DemFreezeFrameRecordNumber;

    





 
    const uint8 DemFreezeFrameRecordTrigger;

    



 
    const uint8 DemFreezeFrameRecordUpdate;
} Dem_FreezeFrameRecordClassType;

extern const Dem_FreezeFrameRecordClassType DemFreezeFrameRecordClass[1u];


typedef struct
{
     
    uint16 DemFreezeFrameClassRef;
     
    const uint8 DemFreezeFrameRecordNumber;

    





 
    const uint8 DemFreezeFrameRecordTrigger;

     
    const uint8 DemFreezeFrameRecordUpdate;

} Dem_GlobalFreezeFrameType;

extern const Dem_GlobalFreezeFrameType DemGlobalFreezeFrame;


 
typedef struct
{
     
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_FreezeFrameRecNumClassType;

 
extern const Dem_FreezeFrameRecNumClassType DemFreezeFrameRecNumClass[1u];

extern const uint8 DemFreezeFrameRecordClassRef[1u];

typedef struct
{
    uint8 UdsStatus[59u];
    uint8 AgedCounter[59u];
    sint16 DebounceCounter[59u];
    Dem_EventIdType FirstFailed;
    Dem_EventIdType MostRecentFailed;
    Dem_EventIdType FirstDtcConfirmed;
    Dem_EventIdType MostRecDtcConfirmed;
} Dem_EventRelateInformationStorageType;

typedef struct
{
    uint8 StoreWarmUpCycleCounter;
    uint16 StoreIgnUpCycleCounter;
    uint16 StoreOBDDistanceMILOn;
    uint16 StoreDistSinceDtcCleared;
    uint16 StoreOBDTimeMILOn;
    uint16 StoreOBDTimeDTCClear;
    uint16 StoreContinuousMICounter;
    uint16 StoreOBDB1Counter;
} DemOBDDataStorageType;

typedef struct
{
     
    Dem_EventIdType ExtId;
    Dem_EventStatusType Status;
} Dem_EventDataBufferType;

 
typedef struct
{
    uint64 Timeout;
    boolean Triggered;
    Dem_EventIdType IntId;
    Dem_EventStatusType CurStatus;
    boolean IsFreezing;
} Dem_DebounceTimeInfoType;

typedef struct
{
    uint8 RecordNum;
    uint8 DisableDTCRecordUpdate[(((59u) + 7u) >> 3u)];  
    boolean OverFlow;
} Dem_MemDestInfoType;

typedef struct
{
    Dem_EventIdType ExtId;
    uint8 FFData[13u];
} Dem_PreStoreFFInfoType;


typedef struct
{
    Dem_EventDataBufferType Queue[58u];
    uint8 ReadIndex;
    uint8 WriteIndex;
} Dem_EventQueueType;


 

 
typedef struct
{
     
    const uint8 DemExtendedDataRecordNumber;

    







 
    const uint8 DemExtendedDataRecordTrigger;

    



 
    const uint8 DemExtendedDataRecordUpdate;

     
    const uint16 DemDataElementClassIndex;
    const uint8 DemDataElementClassNum;
    const uint8 DataSize;  
} Dem_ExtendedDataRecordClassType;

 
typedef struct
{
     
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_ExtendedDataClassType;

extern const Dem_ExtendedDataRecordClassType DemExtendedDataRecordClass[4u];


extern const Dem_ExtendedDataClassType DemExtendedDataClass[1u];

extern const uint8 DemExtendedDataRecordClassRef[4u];



 
 
typedef Std_ReturnType (
    *Dem_TriggerOnDTCStatusType)(uint32 DTC, Dem_UdsStatusByteType DTCStatusOld, Dem_UdsStatusByteType DTCStatusNew);

 
typedef struct
{
     
    const uint32 DemDtcValue;
     
    const uint16 DemDTCAttributesRef;
     
    const uint16 DemObdDTCRef;

    const Dem_DTCKindType DTCKind;
     
    const uint8 DemDTCFunctionalUnit;
    





 
    const uint8 DemDTCSeverity;  
     
    const uint8 GroupRef;  

    const uint8 DemWWHOBDDTCClass;
    Dem_EventIdType EventRefNum;
    Dem_EventIdType EventRefStart;
} Dem_DTCType;

typedef struct
{
    const boolean DemConsiderPtoStatus;
    const uint16 DemDtcValue;
    const uint32 DemJ1939DTCValue;
    const uint8 DemEventOBDReadinessGroup;
} DemObdDTCType;

typedef struct
{
    const uint8 NodeNum;
} J1939NodeType;

 
typedef struct
{
     
    const boolean DemAgingAllowed;

     
    const uint8 DemAgingCycleRef;

     
    const uint8 DemAgingCycleCounterThreshold;

     
    const uint8 DemAgingCycleCounterThresholdForTFSLC;

     
    const uint8 DemDTCPriority;

     
    const uint8 DemEventMemoryEntryFdcThresholdStorageValue;

    
 
    const uint8 DemFreezeFrameRecNumClassRef;

     
    const boolean DemImmediateNvStorage;

    



 
    const uint8 DemDTCSignificance;

     
    const uint16 DemExtendedDataClassRef;

     
    const uint16 DemFreezeFrameClassRef;

    
 
    const uint8 DemMemoryDestinationRef[1u];

     
    const uint8 DemJ1939DTC_J1939NodeRef;

     
    const uint8 DemJ1939ExpandedFreezeFrameClassRef;

     
    const uint8 DemJ1939FreezeFrameClassRef;

     
    const uint8 DemWWHOBDFreezeFrameClassRef;
} Dem_DTCAttributesType;

typedef struct
{
     
    const uint8 DemIndicatorFailureCycleCounterThreshold;

     
    const uint8 DemIndicatorHealingCycleCounterThreshold;

     
    const uint8 DemIndicatorRef;

    






 
    const uint8 DemIndicatorBehaviour;
} Dem_IndicatorAttributeType;



 
 
extern const Dem_IndicatorAttributeType DemIndicatorAttribute[59u];



 
 
typedef struct
{
     
    const uint16 DemDebounceCounterDecrementStepSize;

     
    const uint16 DemDebounceCounterIncrementStepSize;

     
    const sint16 DemDebounceCounterJumpDownValue;

     
    const sint16 DemDebounceCounterJumpUpValue;

     
    const sint16 DemDebounceCounterFailedThreshold;

     
    const sint16 DemDebounceCounterPassedThreshold;

     
    const boolean DemDebounceCounterJumpDown;

     
    const boolean DemDebounceCounterJumpUp;

     
    const boolean DemDebounceCounterStorage;

    



 
    const uint8 DemDebounceBehavior;
} Dem_DebounceCounterBasedClassType;

 
typedef struct
{
     
    const uint32 DemDebounceTimeFailedThreshold;

     
    const uint32 DemDebounceTimePassedThreshold;

    



 
    const uint8 DemDebounceBehavior;
} Dem_DebounceTimeBaseClassType;

 
typedef Std_ReturnType (*Dem_GetFDCFncType)(sint8* FDC);



 

 
typedef Std_ReturnType (*Dem_CallbackInitMForEType)(Dem_InitMonitorReasonType InitMonitorReason);

 
typedef Std_ReturnType (*Dem_CallbackEventDataChangedType)(Dem_EventIdType EventId);

 
typedef Std_ReturnType (*Dem_TriggerOnEventStatusType)(
    Dem_EventIdType EventId,
    Dem_UdsStatusByteType EventStatusByteOld,
    Dem_UdsStatusByteType EventStatusByteNew);


typedef Std_ReturnType (*ClearEventAllowedType)(boolean* Allowed);

 
typedef struct
{
     
    const ClearEventAllowedType ClearEventAllowed;
    



 
    const uint8 DemClearEventAllowedBehavior;
} Dem_CallbackClearEventAllowedType;


typedef Std_ReturnType (
    *pDemComponentFailedCallbackFnc)(Dem_ComponentIdType ComponentId, boolean ComponentFailedStatus);
typedef struct
{
    const pDemComponentFailedCallbackFnc DemComponentFailedCallbackFnc;
    const boolean DemComponentIgnoresPriority; 
 
    const uint16 DemParentComponentRef;         
} DemComponentTypes;

 
typedef struct
{
     
    const Dem_CallbackInitMForEType DemCallbackInitMForE;

     
    const Dem_CallbackEventDataChangedType DemCallbackEventDataChanged;

     
    const Dem_CallbackClearEventAllowedType *
    DemCallbackClearEventAllowed;

     
    const uint16 StatusChangedCbkStartIndex;
    const uint8 StatusChangedCbkNum;

     
    const uint16 DemDTCRef;
     
    const uint16 AlgorithmRef;  
    const uint16 AlgorithmIndex;
    const uint8 AlgorithmType;

     
    const uint16 AttrStartIndex;
    const uint8 AttrNum;

     
    const uint8 DemEventFailureCycleCounterThreshold;
     
    const boolean DemEventAvailable;
     
    const boolean DemFFPrestorageSupported;  

    



 
    const uint8 DemEventKind;

    



 
    const uint8 DemReportBehavior;

     
    const uint8 DemOperationCycleRef;

     
    const uint8 DemEnableConditionGroupRef;

     
    const uint8 DemStorageConditionGroupRef;

     
    const uint16 DemComponentClassRef;

    const uint8 DemComponentPriority;

    
 
    const uint16 DemOBDGroupingAssociativeEventsRef;
} Dem_EventParameterType;



 
 
typedef struct
{
    uint8 RecordNum;  
    uint8 Data[13u];
} Dem_FreezeFrameInfoType;

 
typedef struct
{
    uint8 RecordNum;  
    uint8 Data[13];
} Dem_GlobalFreezeFrameInfoType;

 
typedef struct
{
    uint8 FFNum;
    uint8 LatestFF;
    Dem_FreezeFrameInfoType FFList[1u];
    Dem_GlobalFreezeFrameInfoType GlobalFFList;
    uint8 ExtStatus[(((4u) + 7u) >> 3u)];
    uint8 AbsTime;
    uint8 UdsStatus;
    uint8 AgingCounter;
    uint8 HealingCounter;
    uint8 FailureCounter;
    uint8 OccurrenceCounter;
    uint8 AgedCounter;
     
 
    uint8 EventStatusFlag;
    Dem_EventIdType EventId;
} Dem_EventMemEntryType;

 
typedef struct
{
    Dem_EventMemEntryType* EntryList;
    const uint8 EntryNum;
    const Dem_DTCOriginType ExtId;
} Dem_MemDestConfigType;

extern const Dem_MemDestConfigType DemMemDestCfg[1u];

extern const uint16 DemNvRamBlockId[2];



 
typedef struct
{
    
 
    const uint8 DemOBDCompliancy;

     
    const uint8 DemOBDEngineType;

    
 
    const uint8 DemOBDInputAcceleratorPedalInformation;

     
    const uint8 DemOBDInputAmbientPressure;

     
    const uint8 DemOBDInputAmbientTemperature;

     
    const uint8 DemOBDInputDistanceInformation;

     
    const uint8 DemOBDInputEngineSpeed;

     
    const uint8 DemOBDInputEngineTemperature;

     
    const uint8 DemOBDInputProgrammingEvent;

     
    const uint8 DemOBDInputVehicleSpeed;

     
    const uint8 DemOBDTimeSinceEngineStart;

} DemGeneralOBDType;


typedef struct
{
    const sint16 DemDtrCompuDenominator0;
    const sint16 DemDtrCompuNumerator0;
    const sint16 DemDtrCompuNumerator1;
    const uint16 DemDtrEventRef;
    const uint8 DemDtrMid;
    const uint8 DemDtrTid;
    const uint8 DemDtrUasid;
    const uint8 DemDtrUpdateKind;
} DTRType;

typedef Std_ReturnType (*DemDataElementReadFncType)(uint8* Buffer);

typedef struct
{
    boolean DemInterFlag;
    uint8 DemDataElementDataSize;
    DemDataElementReadFncType DemDataElementReadFnc;
} DemDataElementClassTypes;

typedef struct
{
    const uint8 DemSecondaryFunctionIdRefNum;
    const uint8 DemSecondaryFunctionIdRef[2u];
} DemSecondaryFunctionIdType;

typedef struct
{
    const uint8 DemDiagnosticEventRef;
    const uint8 DemFunctionIdRef;
    const uint8 DemIUMPRDenGroup;
    const uint8 DemIUMPRGroup;  
    const uint8 DemRatioId;
    const uint8 DemRatioKind;
    const DemSecondaryFunctionIdType * DemSecondaryFunctionIdRef;
} DemRatioType;



 

typedef struct
{
    const DemComponentTypes * pDemComponent;
    const Dem_DTCType * DemCfgDTC;
    const uint32 * GroupOfDTC;
    uint16 DemDTCNum;
    const Dem_DTCAttributesType * pDemDTCAttributes;
    const Dem_DebounceCounterBasedClassType * DebounceCounterBasedClass;
    const Dem_DebounceTimeBaseClassType * DebounceTimeBaseClass;
    const DTRType * pDTR;
    const Dem_EventParameterType * pDemEventParameter;
    uint16 DemEventNum;
    const J1939NodeType * pJ1939Node;
    const DemObdDTCType * ObdDTC;
    const Dem_PidClassType * PidClass;
    const Dem_OperationCycleType * OperationCycle;
    uint16 DemOperationCycleNum;
    const DemRatioType * pDemRatio;
    const DemDataElementClassTypes * pDemDataElementClass;
    const Dem_EventIdType * DTCMapping;
} Dem_ConfigType;




 
 




















 
 

 




 



 



 



 
typedef  uint8   Dcm_SecLevelType;



 
typedef  uint8   Dcm_SesCtrlType;



  
typedef  uint8   Dcm_ProtocolType;



 
typedef  uint8   Dcm_NegativeResponseCodeType;
 
typedef  uint8   Dcm_ConfirmationStatusType;

typedef  uint8   Dcm_OpStatusType;

typedef  uint8   Dcm_EcuResetType;

typedef  uint8   Rte_ModeType_DcmEcuReset;

typedef  uint8   Rte_ModeType_DcmControlDTCSetting;





 
extern uint8 DemOperationCycleStatus[(((1u) + 7u) >> 3u)];  


extern Dem_InternalDataType DemInternalData;

extern Dem_EventQueueType DemEventQueue;


 
extern const uint8 DemEnableConditionGroup[3u][(((4u) + 7u) >> 3u)];

 
extern const uint8 DemEnableCondition[(((4u) + 7u) >> 3u)];




extern Dem_IndicatorStatusType DemWIRStatus[1u];

 
extern Dem_DebounceCounterInfoType DemDebounceCounterInfo[59u];




 
 













 
 
extern  Std_ReturnType Dem_InterSetEnableCondition(uint8 EnableConditionID, boolean ConditionFulfilled);

 









 
 
extern  void Dem_SetEnableCondictionProcess(void);

 









 
 
extern  void Dem_SetStorageCondictionProcess(void);

 














 
 
extern  Std_ReturnType
    Dem_InterSetStorageCondition(uint8 StorageConditionID, boolean ConditionFulfilled);

 




 
 
extern  void Dem_InterPreInit(void);

 









 
 
extern  void Dem_InterInit(void);

 












 
 
extern  Std_ReturnType Dem_InterSetEventStatus(Dem_EventIdType* IntId, Dem_EventStatusType EventStatus);

 












 
 
extern  void
    Dem_InterResetEventDebounceStatus(Dem_EventIdType EventId, Dem_DebounceResetStatusType DebounceResetStatus);

 










 
 
extern  Std_ReturnType Dem_InterPrestoreFreezeFrame(Dem_EventIdType IntId);

 










 
 
extern  Std_ReturnType Dem_InterClearPrestoredFreezeFrame(Dem_EventIdType IntId);

 










 
 
extern  Std_ReturnType Dem_InterGetComponentFailed(
    Dem_ComponentIdType ComponentId,
    const boolean * ComponentFailed
);

 









 
 
extern  Std_ReturnType Dem_InterGetIndicatorStatus(
    uint8 IndicatorId,
    Dem_IndicatorStatusType * IndicatorStatus);

 











 
 
extern  Std_ReturnType Dem_InterSetIndicatorStatus(
    uint8 IndicatorId,
    const Dem_IndicatorStatusType * IndicatorStatus);

 


























 
 
extern  Std_ReturnType Dem_InterGetEventFreezeFrameDataEx(
    Dem_EventIdType IntId,
    uint8 RecordNumber,
    uint16 DataId,
    uint8 * DestBuffer,
    uint16 * BufSize);

 

















 
 
extern  Std_ReturnType Dem_InterGetEventExtendedDataRecordEx(
    Dem_EventIdType IntId,
    uint8 RecordNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 









 
 
static inline  uint8 Dem_GetInternalMemDest(Dem_DTCOriginType DTCOrigin)
{
    uint8 iloop;
    uint8 ret = 0xFFu;
    for (iloop = 0; iloop < 1u; iloop++)
    {
        if (DemMemDestCfg[iloop].ExtId == DTCOrigin)
        {
            ret = iloop;
            break;
        }
    }
    return ret;
}

 











 
 
extern  Std_ReturnType
    Dem_InterSetComponentAvailable(Dem_ComponentIdType ComponentId, boolean AvailableStatus);

 









 
 

extern  void Dem_DebounceFreeze(Dem_EventIdType IntId);



 









 
 
extern  void
    Dem_TriggerOnEventStatus(Dem_EventIdType IntId, Dem_UdsStatusByteType OldStatus, Dem_UdsStatusByteType NewStatus);

 









 
 
extern  void Dem_ClearAllDTC(uint8 memDest);

 









 
 
extern  void Dem_ClearGroupDTC(uint8 memDest, uint8 GroupIndex);

 









 
 
extern  void Dem_ClearDTRInfoByEventId(Dem_EventIdType IntId);

 









 
 
extern  void Dem_GetFreezeFrame(Dem_EventIdType IntId, uint8 * pBuffer);

 









 
 
extern  boolean Dem_CheckFreezeFrameIsStorage(Dem_EventIdType IntId, uint8 Trigger);

 









 
 
extern  Std_ReturnType Dem_ExtendedDataGetFromEntry(
    const Dem_EventMemEntryType * pEntry,
    uint8 RecordNum,
    uint8 * pBuffer,
    uint16* BufSize);


 









 
 
extern  boolean Dem_CheckExtendedDataIsStorage(Dem_EventIdType IntId, uint8 Trigger);

 









 
 
extern  void Dem_EventQueueProcessWithDebounce(Dem_EventIdType IntId);

 









 
 
extern  void Dem_EventTestFailedProcessOfComponent(
    const Dem_EventRelateInformationType * pEvent,
    const Dem_EventParameterType * pEventCfg);

 









 
 
extern  uint8 Dem_GetMemDestMaxNumOfDtc(void);

 









 
 
extern  Dem_IndicatorStatusType Dem_GetDemWIRStatus(uint8 DemIndicatorRef);

 









 
 
extern  boolean Dem_CheckWIROn(
    const Dem_EventRelateInformationType * pEvent,
    const Dem_EventParameterType * pEventCfg);

 









 
 
extern  boolean Dem_CheckWIROff(
    const Dem_EventRelateInformationType * pEvent,
    const Dem_EventParameterType * pEventCfg);

 









 
 
extern  void Dem_ResponseOnDtcStatusChange(Dem_EventIdType IntId);

 









 
 
extern  void Dem_InterEventTestPassed(Dem_EventIdType IntId);

 









 
 
extern  void Dem_InterOperationCycleStart(Dem_EventIdType IntId);

 









 
 
extern  void Dem_CallDataChangedOfMemEntryAllocate(Dem_EventIdType IntId);

 









 
 
extern void Dem_ClearEventRelateInformation(Dem_EventRelateInformationType * pEvent);

 









 
 
extern  void Dem_DeleteRelatedData(Dem_EventMemEntryType * pEntry);

 









 
 
extern  void Dem_EventDataStorageTrigger(Dem_EventIdType IntId, uint8 Trigger);

 









 
 
extern  void Dem_DebounceInit(void);

 









 
 
extern  void Dem_DebounceReset(Dem_EventIdType IntId);

 









 
 
extern  Std_ReturnType
    Dem_GetInteralFDC(Dem_EventIdType IntId, sint8 * FaultDetectionCounter);

 









 
 
extern  Dem_EventStatusType Dem_DebounceProcess(Dem_EventDataBufferType pEventBuffer);

 









 
 
extern  void Dem_DebounceTimerMain(void);


 









 
 
extern  void Dem_InterIntReadNvRAM(
    uint16 iloop,
    const Dem_EventRelateInformationStorageType * InformationStorage);

 











 
 
extern  Dem_ReturnSetFilterType Dem_InterDcmSetFreezeFrameRecordFilter(
    Dem_DTCFormatType DTCFormat,
    uint16 * NumberOfFilteredRecords);

 














 
 
extern  Dem_ReturnGetNextFilteredElementType Dem_InterDcmGetNextFilteredRecord(
    uint32 * DTC,
    uint8 * RecordNumber);

 


















 
 
extern  Dem_ReturnGetFreezeFrameDataByDTCType Dem_InterDcmGetFreezeFrameDataByDTC(
    uint32 DTC,
    uint16 memDestAndRecordNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 














 
 
extern  Dem_ReturnGetSizeOfDataByDTCType Dem_InterDcmGetSizeOfFreezeFrameByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 RecordNumber,
    uint16 * SizeOfFreezeFrame);

 









 
 
extern  const Dem_ExtendedDataRecordClassType *
    Dem_GetExtendedDataRecordCfg(uint8 ExtendedDataNumber);

 









 
 
extern  Dem_ReturnGetExtendedDataRecordByDTCType Dem_GetExtendedRecordDataLoop(
    uint32 DTC,
    uint16 memDestAndExtendedDataNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 















 
 
extern  Dem_ReturnGetSizeOfDataByDTCType Dem_InterDcmGetSizeOfExtendedDataRecordByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 ExtendedDataNumber,
    uint16 * SizeOfExtendedDataRecord);

 












 
 
extern  Dem_ReturnControlDTCSettingType
    Dem_InterDcmDisableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);

 















 
 
extern  Dem_ReturnControlDTCSettingType
    Dem_InterDcmEnableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);

 









 
 
extern  uint8 Dem_GetDemMalfunctionLampIndicator(void);


 











 
 
extern  void Dem_SubGetLampStatusOfJ1939DcmGetNextDTCwithLampStatus(
    const Dem_IndicatorAttributeType * pWIRAttr,
    const Dem_EventRelateInformationType * pEvent,
    Dem_J1939DcmLampStatusType * LampStatus);



 









 
 
extern  Std_ReturnType Dem_FreezeFrameGetFromEntry(
    Dem_EventMemEntryType * pEntry,
    uint8 RecordNum,
    uint16 Did,
    uint8 * pBuffer,
    uint16 * BufSize);




 



 

extern const Dem_ConfigType DemPbCfg;  


 
 







 
 
extern  void Dem_PreInit(void);
 









 
 
extern  void Dem_Init(const Dem_ConfigType * ConfigPtr);

 









 
 
extern  void Dem_GetVersionInfo(Std_VersionInfoType * versionInfo);

 









 
 
extern  void Dem_Shutdown(void);

 













 
 
extern  void Dem_ReportErrorStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus);

 












 
 
 
extern  Std_ReturnType Dem_SetEventAvailable(Dem_EventIdType EventId, boolean AvailableStatus);

 












 
 
extern  Std_ReturnType Dem_SetEventStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus);

 













 
 
extern  Std_ReturnType
    Dem_ResetEventDebounceStatus(Dem_EventIdType EventId, Dem_DebounceResetStatusType DebounceResetStatus);

 












 
 
extern  Std_ReturnType Dem_ResetEventStatus(Dem_EventIdType EventId);

 











 
 
extern  Std_ReturnType Dem_PrestoreFreezeFrame(Dem_EventIdType EventId);

 











 
 
extern  Std_ReturnType Dem_ClearPrestoredFreezeFrame(Dem_EventIdType EventId);

 














 
 
extern  Std_ReturnType
    Dem_GetComponentFailed(Dem_ComponentIdType ComponentId, boolean * ComponentFailed);

 










 
 
extern  Std_ReturnType
    Dem_GetEventStatus(Dem_EventIdType EventId, Dem_UdsStatusByteType * EventStatusByte);

 










 
 
extern  Std_ReturnType
    Dem_GetEventFailed(Dem_EventIdType EventId, boolean * EventFailed);

 











 
 
extern  Std_ReturnType
    Dem_GetEventTested(Dem_EventIdType EventId, boolean * EventTested);

 












 
 
extern  Std_ReturnType
    Dem_SetOperationCycleState(uint8 OperationCycleId, Dem_OperationCycleStateType CycleState);

 











 
 
extern  Std_ReturnType Dem_GetOperationCycleState(
    uint8 OperationCycleId,
    Dem_OperationCycleStateType * CycleState);

 










 
 
extern  Std_ReturnType Dem_SetAgingCycleState(uint8 OperationCycleId);

 












 
 
extern  Std_ReturnType Dem_SetWIRStatus(Dem_EventIdType EventId, boolean WIRStatus);

 










 
 
extern  Std_ReturnType Dem_GetDebouncingOfEvent(
    Dem_EventIdType EventId,
    Dem_DebouncingStateType * DebouncingState);

 













 
 
extern  Std_ReturnType Dem_GetDTCOfEvent(
    Dem_EventIdType EventId,
    Dem_DTCFormatType DTCFormat,
    uint32 * DTCOfEvent);

 













 
 
extern  Std_ReturnType Dem_SetEnableCondition(uint8 EnableConditionID, boolean ConditionFulfilled);

 














 
 
extern  Std_ReturnType Dem_SetStorageCondition(uint8 StorageConditionID, boolean ConditionFulfilled);

 















 
 
extern  Std_ReturnType
    Dem_GetFaultDetectionCounter(Dem_EventIdType EventId, sint8 * FaultDetectionCounter);

 









 
 
extern  Std_ReturnType
    Dem_GetIndicatorStatus(uint8 IndicatorId, Dem_IndicatorStatusType * IndicatorStatus);

 











 
 
extern  Std_ReturnType Dem_SetIndicatorStatus(
    uint8 IndicatorId,
    const Dem_IndicatorStatusType * IndicatorStatus);

 


























 
 
extern  Std_ReturnType Dem_GetEventFreezeFrameDataEx(
    Dem_EventIdType EventId,
    uint8 RecordNumber,
    uint16 DataId,
    uint8 * DestBuffer,
    uint16* BufSize);

 


















 
 
extern  Dem_ReturnClearDTCType
    Dem_ClearDTC(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin);

 




















 
 
extern  Std_ReturnType Dem_GetEventExtendedDataRecordEx(
    Dem_EventIdType EventId,
    uint8 RecordNumber,
    uint8 * DestBuffer,
    uint16* BufSize);

 












 
 
extern  Std_ReturnType Dem_GetEventMemoryOverflow(
    Dem_DTCOriginType DTCOrigin,
    boolean * OverflowIndication);

 












 
 
extern  Std_ReturnType Dem_GetNumberOfEventMemoryEntries(
    Dem_DTCOriginType DTCOrigin,
    uint8 * NumberOfEventMemoryEntries);

 











 
 
extern  Std_ReturnType
    Dem_SetComponentAvailable(Dem_ComponentIdType ComponentId, boolean AvailableStatus);

 













 
 
extern  Std_ReturnType
    Dem_SetDTCSuppression(uint32 DTC, Dem_DTCFormatType DTCFormat, boolean SuppressionStatus);






 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 


 
 

 
 
 



















 




















 


















 
 


















 


 
 
 



















 
 



















 
 


















 
 


















 
 


















 
 

 
 


 




 



 



 
 


 



 
 

 
 
 
 
 
 
 
 
 
 
 
 



 



 



 

 
typedef enum ETag_Mcu_HWConsistencyCheckType
{
  MCU_HW_CONSIST_CHECK_STATIC,
  MCU_HW_CONSIST_CHECK_DYNAMIC
} Mcu_HWConsistencyCheckType;

typedef struct STag_Mcu_LPSRegMirror
{
  unsigned long ulSCTLR;                                 
  unsigned long ulDPSELR0;                               
  unsigned long ulDPSELRM;                               
  unsigned long ulDPSELRH;                               
  unsigned long ulDPDSR0;                                
  unsigned long ulDPDSRM;                                
  unsigned long ulDPDSRH;                                
  unsigned short usCNTVAL;                               
}Mcu_LPSRegMirror;

typedef struct STag_Mcu_ClkMntrReg0Mirror
  {
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg0Mirror;

typedef struct STag_Mcu_ClkMntrReg1Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg1Mirror;

typedef struct STag_Mcu_ClkMntrReg2Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg2Mirror;

typedef struct STag_Mcu_ClkMntrReg3Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg3Mirror;

typedef struct STag_Mcu_TAUJOsRegMirror
{
  unsigned short usTPS;                                  
  unsigned char ucBRS;                                   
}Mcu_TAUJOsRegMirror;

typedef struct STag_TAUJChRegMirror
{
  unsigned long ulCDR;                                   
  unsigned short usCMOR;                                 
}Mcu_TAUJChRegMirror;

typedef struct Stag_Mcu_ClkCntlRegMirror
{
  unsigned long ulROSCS;                                 
  unsigned long ulROSCSTPM;                              
  unsigned long ulMOSCE;                                 
  unsigned long ulMOSCC;                                 
  unsigned long ulMOSCST;                                
  unsigned long ulMOSCSTPM;                              
  unsigned long ulSOSCE;                                 
  unsigned long ulSOSCST;                                
  unsigned long ulCKSC_AWDTAD_CTL;                       
  unsigned long ulCKSC_AWDTAD_STPM;                      
  unsigned long ulCKSC_ATAUJS_CTL;                       
  unsigned long ulCKSC_ATAUJD_CTL;                       
  unsigned long ulCKSC_ATAUJD_STPM;                      
  unsigned long ulCKSC_ARTCAS_CTL;                       
  unsigned long ulCKSC_ARTCAD_CTL;                       
  unsigned long ulCKSC_ARTCAD_STPM;                      
  unsigned long ulCKSC_AADCAS_CTL;                       
  unsigned long ulCKSC_AADCAD_CTL;                       
  unsigned long ulCKSC_AADCAD_STPM;                      
  unsigned long ulCKSC_AFOUTS_CTL;                       
  unsigned long ulCKSC_AFOUTS_STPM;                      
  unsigned long ulFOUTDIV;                               
  unsigned long ulPLLE;                                  
  unsigned long ulPLLC;                                  
  unsigned long ulPLL0C;                                 
  unsigned long ulCKSC_CPUCLKS_CTL;                      
  unsigned long ulCKSC_PPLLCLKS_CTL;                     
  unsigned long ulCKSC_CPUCLKD_CTL;                      
  unsigned long ulCKSC_IPERI1S_CTL;                      
  unsigned long ulCKSC_IPERI2S_CTL;                      
  unsigned long ulCKSC_ILINS_CTL;                        
  unsigned long ulCKSC_IADCAS_CTL;                       
  unsigned long ulCKSC_IADCAD_CTL;                       
  unsigned long ulCKSC_PLL0IS_CTL;                       
  unsigned long ulCKSC_PLLIS_CTL;                        
  unsigned long ulCKSC_ILIND_CTL;                        
  unsigned long ulCKSC_ILIND_STPM;                       
  unsigned long ulCKSC_ICANS_CTL;                        
  unsigned long ulCKSC_ICANS_STPM;                       
  unsigned long ulCKSC_ICANOSCD_CTL;                     
  unsigned long ulCKSC_ICANOSCD_STPM;                    
  unsigned long ulCKSC_ICSIS_CTL;                        
  unsigned long ulCKSC_IIICS_CTL;                        
}Mcu_ClkCntlRegMirror;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"



 
 

 
extern const Mcu_ConfigType * Mcu_GpConfigPtr;

 
extern const Mcu_ClockSetting *
                                                             Mcu_GpClockSetting;

 
extern const Mcu_CkscSetting *
                                                             Mcu_GpCkscSetting;


 
extern Mcu_LPSRegMirror Mcu_GddLpsRegRamMirror;
extern Mcu_ClkMntrReg0Mirror Mcu_GddClkMntrReg0RamMirror;
extern Mcu_ClkMntrReg1Mirror Mcu_GddClkMntrReg1RamMirror;
extern Mcu_ClkMntrReg2Mirror Mcu_GddClkMntrReg2RamMirror;
extern Mcu_ClkMntrReg3Mirror Mcu_GddClkMntrReg3RamMirror;
extern Mcu_TAUJOsRegMirror Mcu_GddTaujOsRegRamMirror;
extern Mcu_TAUJChRegMirror Mcu_GddTaujChRegRamMirror;
extern Mcu_ClkCntlRegMirror Mcu_GddClkCntlRegRamMirror;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda

 
 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_1BIT"



 
 

 
extern boolean Mcu_GblDriverStatus;
 
extern boolean Mcu_GblWakeUpPreparation;

extern boolean Mcu_GblResetFlag;

 
extern boolean Mcu_GblPllActCheck;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sdata=default
   #pragma ghs endsda




 
 



 




 



 
 


 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 


 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 

 

 

 

 

 

 



 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 

 
 
 

 
 
 

 
 
 
 

 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

extern void MCU_FEINT_ENTRY(void);
extern void MCU_FEINT_LEAVE(void);

extern  void Mcu_Init
(const Mcu_ConfigType * ConfigPtr);

extern  Std_ReturnType Mcu_InitRamSection
(Mcu_RamSectionType RamSection);

 

extern  Std_ReturnType Mcu_InitClock
(Mcu_ClockType ClockSetting);


 

extern  Std_ReturnType Mcu_DistributePllClock (void);


extern  Mcu_PllStatusType Mcu_GetPllStatus (void);

extern  Mcu_ResetType Mcu_GetResetReason (void);

extern  Mcu_RawResetType Mcu_GetResetRawValue (void);

 
extern  void Mcu_PerformReset (void);

extern  void Mcu_SetMode (Mcu_ModeType McuMode);
extern  void Mcu_WakeUpFactor_Preparation
                                               (Mcu_ModeType McuMode);
 
 
 
extern  void Mcu_GetVersionInfo
       (Std_VersionInfoType * versioninfo);
 


 




extern  Std_ReturnType Mcu_CheckHWConsistency(
                            const Mcu_HWConsistencyCheckType CheckType);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
 
 
extern const Mcu_ConfigType Mcu_GstConfiguration[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 
 
 


 



 




 

 

 

 

 

 

 

 


 
 
 
typedef struct
{
    uint32 configConsistencyHash;               
 
    AppModeType defaultAppMode;                  
    EcuM_ShutdownTargetType defaultShutdownTgt;  
    EcuM_ShutdownModeType defaultShutdownMode;  
 
    const EcuM_GenBSWPbCfgType* modulePBCfg;     
} EcuM_ConfigType;


 
extern const uint32 EcuM_ConfigConsistencyHash;


 














 
 Std_ReturnType EcuM_GoDownHaltPoll(uint16 caller);











 
 void
EcuM_Init(void);










 
 void
EcuM_StartupTwo(void);











 
 void EcuM_Shutdown(void);










 
 void EcuM_SetState(EcuM_StateType state);
















 
 Std_ReturnType
EcuM_SelectShutdownTarget(EcuM_ShutdownTargetType shutdownTarget, EcuM_ShutdownModeType shutdownMode);



















 
 Std_ReturnType
EcuM_GetShutdownTarget(
    EcuM_ShutdownTargetType * shutdownTarget,
    EcuM_ShutdownModeType * shutdownMode);



















 
 Std_ReturnType
EcuM_GetLastShutdownTarget(
    EcuM_ShutdownTargetType * shutdownTarget,
    EcuM_ShutdownModeType * shutdownMode);












 
 Std_ReturnType EcuM_SelectShutdownCause(EcuM_ShutdownCauseType cause);












 
 Std_ReturnType
EcuM_GetShutdownCause(EcuM_ShutdownCauseType * shutdownCause);










 
 EcuM_WakeupSourceType EcuM_GetPendingWakeupEvents(void);










 
 void EcuM_ClearWakeupEvent(EcuM_WakeupSourceType sources);










 
 EcuM_WakeupSourceType EcuM_GetValidatedWakeupEvents(void);












 
 EcuM_WakeupSourceType EcuM_GetExpiredWakeupEvents(void);














 
   
 Std_ReturnType EcuM_SetRelWakeupAlarm(EcuM_UserType user, EcuM_TimeType time);
   
















 
   
 Std_ReturnType EcuM_SetAbsWakeupAlarm(EcuM_UserType user, EcuM_TimeType time);
   













 
 Std_ReturnType EcuM_AbortWakeupAlarm(EcuM_UserType user);












 
   
 Std_ReturnType EcuM_GetCurrentTime(EcuM_TimeType * time);
   














 
   
 Std_ReturnType EcuM_GetWakeupTime(EcuM_TimeType * time);
   














 
   
 Std_ReturnType EcuM_SetClock(EcuM_UserType user, EcuM_TimeType time);
   












 
 Std_ReturnType EcuM_SelectBootTarget(EcuM_BootTargetType target);











 
 Std_ReturnType EcuM_GetBootTarget(EcuM_BootTargetType * target);

 void
EcuM_AL_DriverInitBswM(uint8 drvInitIdx);



 
 



 
 
 
 
 


typedef uint32 CanIf_IdType;

 
typedef struct
{
    boolean used;
    uint8 length;
    PduIdType TxPduIndex;
    Can_IdType canId;
    uint8* data;
} CanIf_TxPduBufferType;

 
typedef struct
{
     
    uint8 length;
     
    uint8* data;
    CanIf_IdType metaData;
} CanIf_RxPduBufferType;

typedef struct
{
    CanIf_TxPduBufferType * CanIf_TxPduBufferRef;
} CanIf_TxBufferType;


 
 
typedef enum
{
    CANIF_INITED = 0u,
    CANIF_UNINIT
} CanIf_InitStatusType;

 
typedef enum
{
    CANIF_CS_UNINIT = 0u,
    CANIF_CS_STARTED,
    CANIF_CS_STOPPED,
    CANIF_CS_SLEEP
} CanIf_ControllerModeType;

 
typedef enum
{
    CANIF_NO_NOTIFICATION = 0u,  
    CANIF_TX_RX_NOTIFICATION     
} CanIf_NotifStatusType;

typedef enum
{
 
     
    CANIF_TX_STANDARD_FD_CAN
} CanIf_TxPduCanIdMode;
typedef enum
{
 
     
    CANIF_RX_STANDARD_FD_CAN,
} CanIf_RxPduCanIdMode;

 
typedef enum
{
    CANIF_BASIC_CAN = 0u,
    CANIF_FULL_CAN
} CanIf_HohType;





 
typedef enum
{
    CANIF_OFFLINE = 0u,
    CANIF_TX_OFFLINE,
    CANIF_TX_OFFLINE_ACTIVE,
    CANIF_ONLINE
} CanIf_PduModeType;

typedef enum
{
    CANID_DYNAMIC = 0u,
    CANID_STATIC
} CanIfTxPduMode;


typedef struct
{
     
    uint8 CanIfTrcvId;
     
    uint8 CanTrcvDriverId;
     
    boolean CanIfTrcvWakeupSupport;
     
    uint8 CanTrcvId;
} CanIf_TrcvCfgType;

typedef struct
{
     
    uint8 CanIfCtrlId;
     
    uint8 CanDriverId;
    
 
    boolean CanIfCtrlWakeupSupport;
 
     
    uint8 CanCtrlId;
     
    EcuM_WakeupSourceType CanIfWakeUpSource;
} CanIf_ControllerCfgType;

typedef struct
{
     
    CanIf_IdType CanIfHrhRangeRxPduLowerCanId;
     
    CanIf_IdType CanIfHrhRangeRxPduUpperCanId;
} CanIfHrhRangeType;

typedef struct
{
     
    uint8 CanIfHrhCanCtrlId;
     
    Can_HwHandleType CanObjectId;
    PduIdType CanIfRxPduRefNum;
    CanIf_HohType CanIfHrhType;
    const PduIdType * CanIfRxPduIdRef;
} CanIfHrhCfgType;

typedef struct
{
     
    uint8 CanIfHthCanCtrlId;
     
    Can_HwHandleType CanObjectId;
    CanIf_HohType CanIfHthType;
} CanIfHthCfgType;

typedef void (*CanIfTxPduUserTxConfirmationNameApiType)(PduIdType TxPduId);
typedef Std_ReturnType (*CanIfTxPduUserTriggerTransmitNameApiType)(PduIdType TxPduId, PduInfoType* PduInfoPtr);
typedef void (*CanIfRxPduUserRxIndicationNameApiType)(PduIdType RxPduId, const PduInfoType* PduInfoPtr);

typedef uint8 CanIf_RxApiNumType;

typedef uint8 CanIf_TxConfApiNumType;

typedef PduIdType CanIf_TxTrigApiNumType;

 
typedef struct
{
    boolean TxMetaDataEnable;
    PduLengthType CanIfTxPduDlc;  
     
    CanIf_TxConfApiNumType CanIfUpTxConfApiIndex;
     
    Can_HwHandleType CanIfTxPduHthId;
     
    PduIdType CanIfUpPduId;
     
    PduIdType TxBufferIdndex;
     
    PduIdType CanIfDynamicCanIdIndex;
     
    CanIf_IdType CanIfTxPduCanId;  
     
    CanIf_IdType CanIfTxPduCanIdMask;  
     
    CanIf_TxPduCanIdMode CanIfTxPduCanIdType;
     
    CanIfTxPduMode CanIfTxPduType;
} CanIf_TxPduConfigType;

typedef struct
{
    CanIf_IdType CanIfRxPduLowerCanId;
    CanIf_IdType CanIfRxPduUpperCanId;
} CanIfRxCanIdRangeRefType;

typedef uint8 CanIf_RxBufferNumType;

 
typedef struct
{
    boolean CanIfRxPduForNM;
    boolean RxMetaDataEnable;
     
    boolean CanIfRxPduDataLengthCheck;
     
    CanIf_RxApiNumType CanIfUpRxIndicationApiIndex;
     
    Can_HwHandleType
        CanIfRxPduHrhId;  
     
    PduIdType CanIfUpPduId;
     
    PduLengthType CanIfRxPduDlc;  
     
    CanIf_IdType CanIfRxPduCanIdMasked;
     
    CanIf_IdType CanIfRxPduCanIdMask;  
     
    CanIf_RxPduCanIdMode CanIfRxPduCanIdType;
    CanIfRxCanIdRangeRefType* CanIfRxCanIdRangeRef;
} CanIf_RxPduConfigType;

 
typedef struct
{
     
    void (*CanIfDispatchUserCtrlBusOffName)(uint8 ControllerId);
     
    void (*CanIfDispatchUserCtrlModeIndicationName)
    (uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
     
    void (*CanIfDispatchUserTrcvModeIndicationName)
    (uint8 TransceiverId, CanTrcv_TrcvModeType TransceiverMode);
} CanIf_DispatchConfigType;






 
typedef struct
{
    PduIdType CanIfTxBufferSize;
    PduIdType CanIfRxPduNumber;
    PduIdType CanIfTxPduNumber;
    Can_HwHandleType CanIfHrhNumber;
    Can_HwHandleType CanIfHthNumber;
    const CanIfHrhCfgType * CanIfHrhCfgRef;
    const CanIfHthCfgType * CanIfHthCfgRef;
    const CanIf_RxPduConfigType * CanIfRxPduConfigRef;
    const CanIf_TxPduConfigType * CanIfTxPduConfigRef;
    const uint8 * CanIfBufferSize;  
} CanIf_ConfigType;

typedef struct
{
    Can_ReturnType (*CanSetControllerModeApi)
    (uint8 Controller, Can_StateTransitionType Transition);
    Can_ReturnType (*CanWriteApi)
    (Can_HwHandleType Hth, const Can_PduType * PduInfo);
} Can_DriverApiType;

typedef struct
{
    Std_ReturnType (*CanTrcvSetOpModeApi)(uint8 Transceiver, CanTrcv_TrcvModeType OpMode);
    Std_ReturnType (*CanTrcvGetOpModeApi)
    (uint8 Transceiver, CanTrcv_TrcvModeType * OpMode);
    Std_ReturnType (*CanTrcvGetBusWuReasonApi)
    (uint8 Transceiver, CanTrcv_TrcvWakeupReasonType * reason);
    Std_ReturnType (*CanTrcvSetWakeupModeApi)
    (uint8 Transceiver, CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
} Can_TrcvApiType;

typedef struct
{
    const uint16 * CanIfCanHoh2HrhRef;
    uint32 CanIfCanHohLen;
} CanIf_CanHOH2HRHType;



 



 
 


 


 
extern const CanIf_ConfigType CanIf_InitCfgSet;

extern const CanIf_CanHOH2HRHType CanIf_CanHoh2Hrh[1u];


 
 








 
 
extern  void CanIf_Init(const CanIf_ConfigType * ConfigPtr);
 











 
 
extern  void CanIf_DeInit(void);
 
















 
 
extern  Std_ReturnType
    CanIf_SetControllerMode(uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
 















 
 
extern  Std_ReturnType CanIf_GetControllerMode(
    uint8 ControllerId,
    CanIf_ControllerModeType * ControllerModePtr);
 


















 
 
extern  Std_ReturnType
    CanIf_Transmit(PduIdType CanIfTxSduId, const PduInfoType * PduInfoPtr);
 















 
 
extern  Std_ReturnType CanIf_SetPduMode(uint8 ControllerId, CanIf_PduModeType PduModeRequest);
 















 
 
extern  Std_ReturnType
    CanIf_GetPduMode(uint8 ControllerId, CanIf_PduModeType * PduModePtr);
 














 
 
extern  Std_ReturnType CanIf_CheckWakeup(EcuM_WakeupSourceType WakeupSource);
 












 
 
extern  CanIf_NotifStatusType CanIf_GetTxConfirmationState(uint8 ControllerId);



 


























 
   
   
   


























 




























 
   


 



 



 
typedef enum
{
    RTE_STATE_RTE_UNINIT,
    RTE_STATE_SCHM_START,
    RTE_STATE_SCHM_INIT, 
    RTE_STATE_RTE_INIT   
} Rte_StateType;

typedef struct crossCoreBufferType
{
    void (*servicePtr)(struct crossCoreBufferType *);
    uint32 serviceParameter[16U];
    uint32 index;
} SchM_CrossCore_BufferType;
typedef struct AsyncrossCoreBufferType
{
    void (*servicePtr)(struct AsyncrossCoreBufferType *);
    uint32 serviceParameter[16U];
} SchM_AsynCrossCore_BufferType;


 
typedef enum
{
  SHCM_TP_DATACONF = 0x00U,
  SHCM_TP_DATARETRY = 0x01U,
  SHCM_TP_CONFPENDING = 0x02U,
  SHCM_TP_NULLPTR = 0xFFU
} SchM_TpDataStateType;  
                    

typedef struct
{
    SchM_TpDataStateType TpDataState; 
 
    PduLengthType TxTpDataCnt;   
 
} SchM_RetryInfoType;








extern void CanTp_MainFunction(void);


 
extern void SchM_Enter_CanTp_ExclusiveArea(void);
extern void SchM_Exit_CanTp_ExclusiveArea(void);















 









 

 
 

 

   
 

 
typedef uint8 CanTp_FramePCIType;







 

 

 

 


 

 

 
 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 


 

 

 

 

 

 

 

 

 

 

 
 
 
 





 




 





 
 
typedef enum
{
    CANTP_OFF,  
    CANTP_ON    
} CanTp_StateType;

 
typedef enum
{
    CANTP_TIMER_NONE,  
    CANTP_NA,          
    CANTP_NB,          
    CANTP_NC           
} CanTp_ABCTimerType;

 
typedef struct
{
    CanTp_ABCTimerType EnabledTimer;
    uint32 StartTime;
    uint32 RemainTime;
} CanTp_ChannelTimerType;

 
typedef struct
{
    boolean Started;
    uint32 RemainTime;
    uint32 StartTime;
    uint32 FcSTMin;
} CanTp_STminType;

 
typedef struct
{
    boolean Started;
    uint32 RemainTime;
    uint32 StartTime;
    uint8 ResponseTimer;
    uint8 Sid;
    uint8 PendingSid;
} CanTp_GatewayTimerType;

 
typedef enum
{
    CANTP_IDLE,               
    CANTP_OCCUPIED,           
    CANTP_SF_RECEIVING,       
    CANTP_SF_TRANSIMITTING,   
    CANTP_LARGE_RECEIVING,    
    CANTP_LARGE_TRANSMITTING  
} CanTp_ChannelRootStateType;

 
typedef enum
{
    CANTP_SUBSTATE_NONE,

    CANTP_RX_SF_START,  

    CANTP_RX_FF_START,
    CANTP_RX_LARGE_START,        
    CANTP_RX_LARGE_V4FCWT_CFM,   
    CANTP_RX_LARGE_V4FCCTS_CFM,  
    CANTP_RX_LARGE_V4CF,         
    CANTP_RX_LARGE_RXCF,         

    CANTP_TX_SF_START,     
    CANTP_TX_SF_V4SF_CFM,  

    CANTP_TX_LARGE_START,       
    CANTP_TX_LARGE_V4DATA_CFM,  
    CANTP_TX_LARGE_V4FC         
} CanTp_ChannelSubstateType;

typedef struct
{
     
    uint8 ChannelId;
     
    CanTp_ChannelTimerType ChannelTimer;

     
    CanTp_STminType STminTimer;

     
    CanTp_ChannelRootStateType RootState;

     
    CanTp_ChannelSubstateType Substate;

     
    CanTp_FramePCIType HandleType;

     
    PduIdType NSduId;

    PduLengthType CanFrameLength;

     
    PduLengthType SduDataRemaining;

     
    PduLengthType SduDataTotalCount;

     
    PduLengthType DataLen;

     
    uint8 CurrentBs;

    PduLengthType FDDlc;

    uint8 ChangedBs;

    uint8 ChangedSTmin;

     
    uint8 HandledCfCount;

     
    uint8 CurrentCfSn;

     
    uint8 SentWftCount;

     
    uint8 EventFlags;

} CanTp_ConnectionType;

typedef struct
{
    CanTp_ConnectionType Connection;
     
    uint8 LocalBuf[(PduLengthType)64];
} CanTp_TxConnectionType;

 
typedef struct
{
    CanTp_ConnectionType RxConnection;
    CanTp_TxConnectionType TxConnection;
} CanTp_ConnectionChannelType;

 
typedef struct
{
    uint8 FcFs;
    uint8 FcBS;
    uint32 FcSTMin;  
} CanTp_FCInfoType;


 
 
extern const CanTp_ConfigType * CanTp_ConfigPtr;
 
extern CanTp_ConnectionChannelType CanTp_Channels[0x1u];
 

static inline void CANTP_DET_REPORTRUNTIMEERROR(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportRuntimeError(35u, 0x0u, (ApiId), (ErrorId));
}
static inline void CANTP_DET_REPORTERROR(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportError(35u, 0x0u, (ApiId), (ErrorId));
}

 
static inline CanTp_ConnectionType* CANTP_RXCHANNEL(uint8 ChannelId)
{
    return &CanTp_Channels[ChannelId].RxConnection;
}

 
static inline CanTp_TxConnectionType* CANTP_TXCHANNEL(uint8 ChannelId)
{
    return &CanTp_Channels[ChannelId].TxConnection;
}

 
static inline CanTp_ConnectionType* CANTP_TXSUBCHANNEL(uint8 ChannelId)
{
    return &CanTp_Channels[ChannelId].TxConnection.Connection;
}












 
extern  const CanTp_RxNSduType * CanTp_GetRxSduCfgByNpdu(
    PduIdType CanTpRxPduId,
    const PduInfoType * CanTpRxPduPtr,
    CanTp_FramePCIType * SduFrameType,
    uint8 * ChannelId);












 
extern  PduLengthType CanTp_RxGetSFDl(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    uint8 * dataoffset,
    uint8 * totaloffset);













 
extern  PduLengthType CanTp_RxGetFFDl(
    const uint8 * PduInfoPtr,
    uint8 * offset,
    const CanTp_RxNSduType * RxNSduCfgPtr);












 
extern  Std_ReturnType CanTp_CalcBS(
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr,
    PduLengthType bufferSize);












 
extern  Std_ReturnType CanTp_CompareBufferWithBs(
    const CanTp_RxNSduType* RxNSduCfgPtr,
    const CanTp_ConnectionType* RxchannelPtr,
    PduLengthType bufferSize);












 
extern  Std_ReturnType CanTp_SendFC(
    const CanTp_RxNSduType* RxNSduCfgPtr,
    const CanTp_ConnectionType* RxchannelPtr,
    CanTp_FCInfoType CanTp_FC);












 
extern  void
    CanTp_MemorySet(uint8 * Address, uint8 Value, uint16 Length);













 
extern  void CanTp_RxGetCFOffset(
    const CanTp_RxNSduType * RxNSduCfgPtr,
    uint8 * dataoffset,
    uint8 * pcioffset);












 
extern  const CanTp_TxNSduType * CanTp_GetTxSduCfgByFCNpdu(
    PduIdType CanTpRxPduId,
    const PduInfoType * CanTpRxPduPtr,
    uint8 * ChannelId);


 
extern  void CanTp_GetChannelFCInfo(
    const CanTp_TxNSduType * TxNSduCfgPtr,
    const PduInfoType * PduInfoPtr,
    CanTp_FCInfoType * FcInfoPtr);












 
extern  Std_ReturnType CanTp_CheckTxLengthInAddressMode(
    const CanTp_TxNSduType * TxNSduCfgPtr,
    const PduInfoType * PduInfoPtr);













 
extern  void CanTp_TxHandleTransmitReq(
    CanTp_ConnectionType* TxSubchannelPtr,
    const CanTp_TxNSduType * TxNSduCfgPtr
);

 
extern  void CanTp_TxHandleSFStart(CanTp_ConnectionChannelType* connectionChannel);

 
extern  void CanTp_TxHandleLargeStart(CanTp_ConnectionChannelType* connectionChannel);

 
extern  void CanTp_ConstructSFPci(
    const CanTp_ConnectionType* TxSubchannelPtr,
    const CanTp_TxNSduType* txNSduCfgPtr,
    uint8* dataPtr,
    uint8* totalOffset);

 
extern  void CanTp_ConstructCFPci(
    const CanTp_ConnectionType* TxSubchannelPtr,
    const CanTp_TxNSduType* txNSduCfgPtr,
    uint8* dataPtr,
    uint8* totalOffset);

 
 void
CanTp_ConstructFFPci(
    const CanTp_ConnectionType* TxSubchannelPtr,
    const CanTp_TxNSduType* txNSduCfgPtr,
    uint8* dataPtr,
    uint8* totalOffset);












 
extern  void CanTp_TxSFPadding(
    const CanTp_ConnectionType* TxSubchannelPtr,
    const CanTp_TxNSduType* txSduCfgPtr,
    PduInfoType* pduInfoPtr);

 
extern  PduLengthType CanTp_MatchDLC(PduLengthType frameDL);


 
extern  void CanTp_ResetTime(uint32 * TimerPtr);

 
extern  void CanTp_GetTimeSpan(uint32 TimerPtr, uint32 * TimeSpanPtr);
 

 




 












 












 


 



 













 
extern  void
    CanTp_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr);













 
extern  void CanTp_TxConfirmation(PduIdType TxPduId);




 

 
 
 
 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static CanTp_StateType CanTp_ModuleState = CANTP_OFF;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
const CanTp_ConfigType * CanTp_ConfigPtr = ((void *)0);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
uint32 CanTp_Timer = 0u;












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   

 

 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 
static inline  void
    CanTp_InitSubChannel(CanTp_ConnectionType * SubchannelPtr);

 
static  void CanTp_InitTxChannel(CanTp_ConnectionType* TxSubchannelPtr);

 
static inline  void CanTp_InitChannel(CanTp_ConnectionChannelType* connectionChannel);


 
static  void
    CanTp_RxSubDeal(PduIdType CanTpRxPduId, const PduInfoType * PduInfoPtr);

 
static  void CanTp_RxSubDealWithSF(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel);

 
static  void CanTp_RxSubDealWithSFToUp(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel);

 
static  void CanTp_RxSubDealWithFC(
    const PduInfoType * PduInfoPtr,
    const CanTp_TxNSduType * TxNSduCfgPtr,
    CanTp_ConnectionType* TxSubchannelPtr);

 
static  void CanTp_RxSubDealWithCF(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr);

 
static  void CanTp_RxSubDealWithCFToUp(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr);

 
static  void CanTp_RxSubDealWithFF(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel);

 
static  void CanTp_RxSubDealWithFFToUp(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel);

static  boolean CanTp_checkSF(PduLengthType SF_DL, PduLengthType CAN_DL, PduLengthType Offset);
static  boolean
    CanTp_checkLastCF(PduLengthType CF_DL, PduLengthType CAN_DL, PduLengthType Offset);

static inline  void CanTp_ReleaseRxChannel(CanTp_ConnectionType* RxChannelPtr);

static  void CanTp_ReleaseTxChannel(CanTp_ConnectionType* TxSubchannelPtr);

 
static  Std_ReturnType CanTp_RxBlockStart(
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr);

 
static  void CanTp_DispatchRxEvent(CanTp_ConnectionType* RxchannelPtr);
 
static  void CanTp_DispatchRxEventSubDeal(
    CanTp_ConnectionType* RxchannelPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr);

 
static  const CanTp_RxNSduType *
    CanTp_GetRxSduCfgByNSduId(PduIdType CanTpRxSduId, uint8* ChannelId);

 
static  void CanTp_DispatchTxEvent(CanTp_ConnectionChannelType* connectionChannel);

 
static  const CanTp_TxNSduType *
    CanTp_GetTxSduCfgByTxSduId(PduIdType TxSduId, uint8* ChannelId);

 
static  const CanTp_TxNSduType *
    CanTp_GetTxSduCfgByTxNPdu(PduIdType CanTpTxPduId, uint8* ChannelId);

 
static  const CanTp_RxNSduType *
    CanTp_GetRxSduCfgByTxFCNPdu(PduIdType CanTpTxPduId, uint8* ChannelId);


 
static  void CanTp_HandleTimers(CanTp_ConnectionChannelType* connectionChannel);

 
static  void CanTp_HandleTxTimers(CanTp_ConnectionType* TxSubchannelPtr);

 
static inline  boolean
    CanTP_CheckRxChangeParameter(TPParameterType canTpParam, uint16 value);













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static  void CanTp_SFCFTxConfirmationSubDealWith(
    CanTp_ConnectionChannelType* ChannelPtr,
    const CanTp_TxNSduType * txNSduCfgPtr);

static  void CanTp_FCTxConfirmationSubDealWith(PduIdType TxPduId);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   
 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void
CanTp_Init(const CanTp_ConfigType * CfgPtr)
{
    uint8 ChannelId;
    if (((void *)0) == CfgPtr)
    {
         
        CANTP_DET_REPORTERROR((0x01u), (0x03u));
    }
    else if (CfgPtr->ChannelNum > 0x1u)
    {
         
        CANTP_DET_REPORTERROR((0x01u), (0x04u));
    }
    else
    {
        SchM_Enter_CanTp_ExclusiveArea();  
         
        if (CANTP_ON == CanTp_ModuleState)
        {
            CanTp_ModuleState = CANTP_OFF;
        }
        CanTp_ConfigPtr = CfgPtr;
        SchM_Exit_CanTp_ExclusiveArea();  

         
        for (ChannelId = 0; ChannelId < 0x1u; ChannelId++)
        {
            CANTP_RXCHANNEL(ChannelId)->ChannelId = ChannelId;
            CanTp_InitSubChannel(CANTP_RXCHANNEL(ChannelId));
            CANTP_TXSUBCHANNEL(ChannelId)->ChannelId = ChannelId;
            CanTp_InitTxChannel(CANTP_TXSUBCHANNEL(ChannelId));
        }
         
        CanTp_ModuleState = CANTP_ON;
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void CanTp_Shutdown(void)
{
     
    CanTp_ModuleState = CANTP_OFF;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
















 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
CanTp_Transmit(PduIdType TxPduId, const PduInfoType * PduInfoPtr)
{
    const CanTp_TxNSduType* TxNSduCfgPtr;
    Std_ReturnType result = 1U;
    uint8 ChannelId;
    CanTp_ConnectionType* TxSubchannelPtr;
    const CanTp_ConnectionType* RxchannelPtr;

     
    if (CANTP_ON != CanTp_ModuleState)
    {
         
        CANTP_DET_REPORTERROR((0x03u), (0x20u));
    }
    else if (((void *)0) == PduInfoPtr)
    {
         
        CANTP_DET_REPORTERROR((0x03u), (0x03u));
    }
    else
    {
         
        TxNSduCfgPtr = CanTp_GetTxSduCfgByTxSduId(TxPduId, &ChannelId);
        if (((void *)0) != TxNSduCfgPtr)
        {
             
             
            if (0U == CanTp_CheckTxLengthInAddressMode(TxNSduCfgPtr, PduInfoPtr))
            {
                 
                 
                TxSubchannelPtr = CANTP_TXSUBCHANNEL(ChannelId);
                RxchannelPtr = CANTP_RXCHANNEL(ChannelId);
                if ((CANTP_IDLE == TxSubchannelPtr->RootState)
                    && ((CANTP_MODE_FULL_DUPLEX == CanTp_ConfigPtr->CanTpChannel[ChannelId].ChannelMode)
                        || ((RxchannelPtr->RootState == CANTP_IDLE) || (RxchannelPtr->RootState == CANTP_OCCUPIED))))
                {
                     
                    SchM_Enter_CanTp_ExclusiveArea();  
                    TxSubchannelPtr->NSduId = TxNSduCfgPtr->TxNSduId;
                    TxSubchannelPtr->SduDataRemaining = PduInfoPtr->SduLength;
                    TxSubchannelPtr->SduDataTotalCount = PduInfoPtr->SduLength;
                    SchM_Exit_CanTp_ExclusiveArea();  
                    
 
                     
                    CanTp_ChannelTimerType* channelTimer = &TxSubchannelPtr->ChannelTimer;
                    if (TxNSduCfgPtr->Ncs != ((void *)0))
                    {
                        SchM_Enter_CanTp_ExclusiveArea();  
                        channelTimer->EnabledTimer = CANTP_NC;
                        channelTimer->RemainTime = *(TxNSduCfgPtr->Ncs);
                        SchM_Exit_CanTp_ExclusiveArea();  
                        CanTp_ResetTime(&(channelTimer->StartTime));
                    }
                    else
                    {
                        channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                    }
                    CanTp_TxHandleTransmitReq(TxSubchannelPtr, TxNSduCfgPtr);
                    result = 0U;
                }
            }
            else
            {
                 
                CANTP_DET_REPORTRUNTIMEERROR((0x03u), (0x90u));
            }
        }
        else
        {
             
            CANTP_DET_REPORTERROR((0x03u), (0x30u));
        }
    }  
    return result;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   














 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   















 
 Std_ReturnType
CanTp_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value)
{
    Std_ReturnType result = 1U;
    const CanTp_RxNSduType* rxNSduCfgPtr;
    uint8 ChannelId;

     
    if (CANTP_ON != CanTp_ModuleState)
    {
         
        CANTP_DET_REPORTERROR((0x0Au), (0x20u));
    }
    else
    {
        rxNSduCfgPtr = CanTp_GetRxSduCfgByNSduId(id, &ChannelId);
        if ((0u == CanTP_CheckRxChangeParameter(parameter, value)) || (((void *)0) == rxNSduCfgPtr))
        {
            CANTP_DET_REPORTERROR((0x0Au), (0x02u));
        }
        else  
        {
            CanTp_ConnectionType* RxchannelPtr = CANTP_RXCHANNEL(ChannelId);
            if (RxchannelPtr->RootState != CANTP_LARGE_RECEIVING)
            {
                if (TP_BS == parameter)
                {
                    RxchannelPtr->ChangedBs = (uint8)value;
                       
                    ((RxchannelPtr->EventFlags) |= ((uint8)0x01));
                     
                    result = 0U;
                }
                else
                    if (TP_STMIN == parameter)
                {
                    RxchannelPtr->ChangedSTmin = (uint8)value;
                       
                    ((RxchannelPtr->EventFlags) |= ((uint8)0x02));
                     
                    result = 0U;
                }
                else
                {
                     
                }
            }
        }
    }
    return result;
}














 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void CanTp_MainFunction(void)
{
    uint8 index;
    CanTp_ConnectionChannelType* connectionChannel;

     
    if (CANTP_ON == CanTp_ModuleState)
    {
        if (CanTp_Timer < (0xFFFFFFFFuL - 0xau))
        {
            CanTp_Timer += 0xau;
        }
        else
        {
            CanTp_Timer = 0xau - (0xFFFFFFFFuL - CanTp_Timer);
        }
        for (index = 0; index < CanTp_ConfigPtr->ChannelNum; index++)
        {
            connectionChannel = &CanTp_Channels[index];
             
            CanTp_HandleTimers(connectionChannel);


             
            CanTp_DispatchRxEvent(&connectionChannel->RxConnection);

             
            CanTp_DispatchTxEvent(connectionChannel);
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   















 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 void
CanTp_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
     
    if (CANTP_ON != CanTp_ModuleState)
    {
         
        CANTP_DET_REPORTERROR((0x42u), (0x20u));
    }
    else if ((((void *)0) == PduInfoPtr) || (((void *)0) == PduInfoPtr->SduDataPtr))
    {
         
        CANTP_DET_REPORTERROR((0x42u), (0x03u));
    }
    else
    {
         
        CanTp_RxSubDeal(RxPduId, PduInfoPtr);
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 void CanTp_TxConfirmation(PduIdType TxPduId)
{
    uint8 ChannelId;
    const CanTp_TxNSduType* txNSduCfgPtr = CanTp_GetTxSduCfgByTxNPdu(TxPduId, &ChannelId);
    const CanTp_ConnectionType* TxSubchannelPtr;

     
    if (CANTP_ON != CanTp_ModuleState)
    {
         
        CANTP_DET_REPORTERROR((0x40u), (0x20u));
    }
    else
    {
         
        if (((void *)0) != txNSduCfgPtr)
        {
            TxSubchannelPtr = CANTP_TXSUBCHANNEL(ChannelId);
            

 
            if (((CANTP_TX_SF_V4SF_CFM == TxSubchannelPtr->Substate)
                 || (CANTP_TX_LARGE_V4DATA_CFM == TxSubchannelPtr->Substate))
                && (txNSduCfgPtr->TxNSduId == TxSubchannelPtr->NSduId))
            {
                CanTp_SFCFTxConfirmationSubDealWith(&CanTp_Channels[ChannelId], txNSduCfgPtr);
            }
            else
            {
                 
                CanTp_FCTxConfirmationSubDealWith(TxPduId);
            }
        }  
        else
        {
            CanTp_FCTxConfirmationSubDealWith(TxPduId);
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   

 

 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static  void CanTp_SFCFTxConfirmationSubDealWith(
    CanTp_ConnectionChannelType* ChannelPtr,
    const CanTp_TxNSduType * txNSduCfgPtr)
{
    CanTp_ChannelTimerType* channelTimer;
    CanTp_STminType* STminTimer;
    CanTp_ConnectionType* TxSubchannelPtr = &ChannelPtr->TxConnection.Connection;
     
    if (CANTP_TX_SF_V4SF_CFM == TxSubchannelPtr->Substate)
    {
         
        TxSubchannelPtr->RootState = CANTP_IDLE;
        
 
        CanTp_ReleaseTxChannel(TxSubchannelPtr);
         
        PduR_TpTxConfirmation(txNSduCfgPtr->TxIPduId, 0U);
    }
    else  
    {
         
        TxSubchannelPtr->CurrentCfSn = (uint8)(TxSubchannelPtr->CurrentCfSn + 1u) & (uint8)0x0F;
        if ((uint8)0x10 == TxSubchannelPtr->HandleType)
        {
             
            TxSubchannelPtr->Substate = CANTP_TX_LARGE_V4FC;
            channelTimer = &TxSubchannelPtr->ChannelTimer;
            if (txNSduCfgPtr->Nbs != ((void *)0))
            {
                channelTimer->EnabledTimer = CANTP_NB;
                channelTimer->RemainTime = *(txNSduCfgPtr->Nbs);
                CanTp_ResetTime(&(channelTimer->StartTime));
            }
            else
            {
                channelTimer->EnabledTimer = CANTP_TIMER_NONE;
            }
        }
        else  
        {
            if (0u == TxSubchannelPtr->SduDataRemaining)
            {
                
 
                TxSubchannelPtr->RootState = CANTP_IDLE;
                 
                CanTp_ReleaseTxChannel(TxSubchannelPtr);
                PduR_TpTxConfirmation(txNSduCfgPtr->TxIPduId, 0U);
            }
            else  
            {
                channelTimer = &TxSubchannelPtr->ChannelTimer;
                 
                if (0xFFu > TxSubchannelPtr->HandledCfCount)
                {
                    TxSubchannelPtr->HandledCfCount++;
                }
                if (TxSubchannelPtr->HandledCfCount == TxSubchannelPtr->CurrentBs)
                {
                     
                    TxSubchannelPtr->Substate = CANTP_TX_LARGE_V4FC;
                    if (txNSduCfgPtr->Nbs != ((void *)0))
                    {
                        channelTimer->EnabledTimer = CANTP_NB;
                        channelTimer->RemainTime = *(txNSduCfgPtr->Nbs);
                        CanTp_ResetTime(&(channelTimer->StartTime));
                    }
                    else
                    {
                        channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                    }
                }
                else  
                {
                     
                    TxSubchannelPtr->Substate = CANTP_TX_LARGE_START;
                    if (txNSduCfgPtr->Ncs != ((void *)0))
                    {
                        channelTimer->EnabledTimer = CANTP_NC;
                        channelTimer->RemainTime = *(txNSduCfgPtr->Ncs);
                        CanTp_ResetTime(&(channelTimer->StartTime));
                    }
                    else
                    {
                        channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                    }
                    STminTimer = &TxSubchannelPtr->STminTimer;
                    STminTimer->Started = 1u;
                    STminTimer->RemainTime = STminTimer->FcSTMin;
                    CanTp_ResetTime(&(STminTimer->StartTime));
                    if (STminTimer->FcSTMin == 0u)
                    {

                        CanTp_TxHandleLargeStart(ChannelPtr);
                    }
                }
            }
        }
    }
}

static  void CanTp_FCTxConfirmationSubDealWith(PduIdType TxPduId)
{
    uint8 ChannelId = 0u;
    const CanTp_RxNSduType* rxNSduCfgPtr = CanTp_GetRxSduCfgByTxFCNPdu(TxPduId, &ChannelId);
    CanTp_ConnectionType* RxchannelPtr;
    CanTp_ChannelTimerType* channelTimer;

    if (((void *)0) == rxNSduCfgPtr)
    {
         
        CANTP_DET_REPORTERROR((0x40u), (0x30u));
    }
    else
    {
        RxchannelPtr = CANTP_RXCHANNEL(ChannelId);
        
 
        if (((CANTP_RX_LARGE_V4FCCTS_CFM == RxchannelPtr->Substate)
             || (CANTP_RX_LARGE_V4FCWT_CFM == RxchannelPtr->Substate))
            && (rxNSduCfgPtr->RxNSduId == RxchannelPtr->NSduId))
        {
            channelTimer = &RxchannelPtr->ChannelTimer;
             
            if (CANTP_RX_LARGE_V4FCWT_CFM == RxchannelPtr->Substate)
            {
                 
                RxchannelPtr->Substate = CANTP_RX_LARGE_START;
                channelTimer->EnabledTimer = CANTP_NB;
                channelTimer->RemainTime = rxNSduCfgPtr->Nbr;
                CanTp_ResetTime(&(channelTimer->StartTime));
            }
            else if (CANTP_RX_LARGE_V4FCCTS_CFM == RxchannelPtr->Substate)
            {
                 
                RxchannelPtr->Substate = CANTP_RX_LARGE_V4CF;
                if (rxNSduCfgPtr->Ncr != ((void *)0))
                {
                    channelTimer->EnabledTimer = CANTP_NC;
                    channelTimer->RemainTime = *(rxNSduCfgPtr->Ncr);
                    CanTp_ResetTime(&(channelTimer->StartTime));
                }
                else
                {
                    channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                }
            }
            else
            {
                 
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 
static  void
    CanTp_InitSubChannel(CanTp_ConnectionType * SubchannelPtr)
{
    CanTp_STminType* STminTimer = &SubchannelPtr->STminTimer;
    SchM_Enter_CanTp_ExclusiveArea();  
     
    SubchannelPtr->RootState = CANTP_IDLE;
    SubchannelPtr->Substate = CANTP_SUBSTATE_NONE;
    SubchannelPtr->HandleType = (uint8)0xF0;
     
    SubchannelPtr->ChannelTimer.EnabledTimer = CANTP_TIMER_NONE;
    SubchannelPtr->ChannelTimer.RemainTime = 0;
    SubchannelPtr->ChannelTimer.StartTime = 0;
     
    SubchannelPtr->CurrentBs = 0;
    SubchannelPtr->FDDlc = 0;
    if (CanTp_ModuleState != CANTP_ON)
    {
        SubchannelPtr->ChangedBs = 0;
        SubchannelPtr->ChangedSTmin = 0;
        SubchannelPtr->EventFlags = 0;
    }
    else
    {
        SubchannelPtr->EventFlags &= ((uint8)0x01 | (uint8)0x02);
    }
    SubchannelPtr->CurrentCfSn = 0;
    SubchannelPtr->HandledCfCount = 0;
    SubchannelPtr->SentWftCount = 0;
    STminTimer->Started = 0u;
    STminTimer->RemainTime = 0;
    STminTimer->StartTime = 0;
    STminTimer->FcSTMin = 0;
     
    SubchannelPtr->NSduId = 0;
    SubchannelPtr->SduDataRemaining = 0;
    SubchannelPtr->SduDataTotalCount = 0;
     

    SchM_Exit_CanTp_ExclusiveArea();  
}

 
static  void CanTp_InitTxChannel(CanTp_ConnectionType* TxSubchannelPtr)
{
    CanTp_TxConnectionType* TxchannelPtr = CANTP_TXCHANNEL(TxSubchannelPtr->ChannelId);
    uint8 unusedchannelId;
    const CanTp_TxNSduType* txSduCfgPtr;

    if (TxSubchannelPtr->RootState != CANTP_IDLE)
    {
        txSduCfgPtr = CanTp_GetTxSduCfgByTxSduId(TxSubchannelPtr->NSduId, &unusedchannelId);
        if (txSduCfgPtr != ((void *)0))
        {
            PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
        }
    }
    CanTp_InitSubChannel(TxSubchannelPtr);
    for (uint8 iloop = 0; iloop <
                          (PduLengthType)64
         ;
         iloop++)
    {
        TxchannelPtr->LocalBuf[iloop] = 0;
    }
}

 
static  void CanTp_InitChannel(CanTp_ConnectionChannelType* connectionChannel)
{
    CanTp_InitSubChannel(&connectionChannel->RxConnection);
    CanTp_InitTxChannel(&connectionChannel->TxConnection.Connection);
}

static  void CanTp_ReleaseRxChannel(CanTp_ConnectionType* RxChannelPtr)
{
    uint8 ChannelId = RxChannelPtr->ChannelId;
    if (CanTp_ConfigPtr->CanTpChannel[ChannelId].ChannelMode != CANTP_MODE_FULL_DUPLEX)
    {
        CanTp_InitChannel(&CanTp_Channels[ChannelId]);
    }
    else
    {
        CanTp_InitSubChannel(RxChannelPtr);
    }
}

static  void CanTp_ReleaseTxChannel(CanTp_ConnectionType* TxSubchannelPtr)
{
    uint8 ChannelId = TxSubchannelPtr->ChannelId;
    if (CanTp_ConfigPtr->CanTpChannel[ChannelId].ChannelMode != CANTP_MODE_FULL_DUPLEX)
    {
        CanTp_InitChannel(&CanTp_Channels[ChannelId]);
    }
    else
    {
        CanTp_InitTxChannel(TxSubchannelPtr);
    }
}












 
 PduLengthType CanTp_MatchDLC(PduLengthType frameDL)
{
    uint8 i;
    PduLengthType len = frameDL;

     
    const uint8 canDL[8] = {8, 12, 16, 20, 24, 32, 48, 64};
    if (frameDL > (PduLengthType)8)
    {
        for (i = 0; i < 8u; i++)
        {
            if (frameDL <= canDL[i])
            {
                len = canDL[i];
                break;
            }
        }
    }
    return len;
}


 
static  void
    CanTp_RxSubDeal(PduIdType CanTpRxPduId, const PduInfoType * PduInfoPtr)
{
    uint8 chnIdx;
    CanTp_FramePCIType FrameType = (uint8)0xF0;
     
    const CanTp_RxNSduType* rxNSduCfgPtr = CanTp_GetRxSduCfgByNpdu(CanTpRxPduId, PduInfoPtr, &FrameType, &chnIdx);
    const CanTp_TxNSduType* txNSduCfgPtr;

    if (((void *)0) != rxNSduCfgPtr)
    {
        switch (FrameType)
        {
        case (uint8)0x20:
            CanTp_RxSubDealWithCF(PduInfoPtr, rxNSduCfgPtr, CANTP_RXCHANNEL(chnIdx));
            break;
        case (uint8)0x10:
            CanTp_RxSubDealWithFF(PduInfoPtr, rxNSduCfgPtr, &CanTp_Channels[chnIdx]);
            break;
        case 0x00u:
            CanTp_RxSubDealWithSF(PduInfoPtr, rxNSduCfgPtr, &CanTp_Channels[chnIdx]);
            break;
        default:
             
            break;
        }
    }

    if ((uint8)0xF0 == FrameType)
    {
         
        txNSduCfgPtr = CanTp_GetTxSduCfgByFCNpdu(CanTpRxPduId, PduInfoPtr, &chnIdx);
        if (((void *)0) != txNSduCfgPtr)
        {
             
            CanTp_RxSubDealWithFC(PduInfoPtr, txNSduCfgPtr, CANTP_TXSUBCHANNEL(chnIdx));
        }
    }
}












 
static  void CanTp_RxSubDealWithFC(
    const PduInfoType * PduInfoPtr,
    const CanTp_TxNSduType * TxNSduCfgPtr,
    CanTp_ConnectionType* TxSubchannelPtr)
{
    CanTp_ChannelTimerType* channelTimer;
    CanTp_STminType* STminTimer;
    CanTp_FCInfoType fcInfo;
    PduLengthType MatchDLC = CanTp_MatchDLC(PduInfoPtr->SduLength);
     
    if ((PduInfoPtr->SduLength >= 3u)
        && ((MatchDLC == PduInfoPtr->SduLength) || (PduInfoPtr->SduLength < 8u))
        && (PduInfoPtr->SduLength <= TxNSduCfgPtr->TxNPduDLC)
    )
    {
        
 
        if ((TxNSduCfgPtr->TxNSduId == TxSubchannelPtr->NSduId) && (CANTP_TX_LARGE_V4FC == TxSubchannelPtr->Substate)
            && (CANTP_LARGE_TRANSMITTING == TxSubchannelPtr->RootState))
        {
            if ((8u > PduInfoPtr->SduLength) && (TxNSduCfgPtr->TxPaddingActivation == CANTP_PADDING_ON))
            {
                CANTP_DET_REPORTRUNTIMEERROR((0x42u), (0x70u));
                CanTp_ReleaseTxChannel(TxSubchannelPtr);
            }
            else
            {
                {
                    CanTp_GetChannelFCInfo(TxNSduCfgPtr, PduInfoPtr, &fcInfo);

                    switch (fcInfo.FcFs)
                    {
                    case 0x00u:
                         
                        SchM_Enter_CanTp_ExclusiveArea();  
                        TxSubchannelPtr->CurrentBs = fcInfo.FcBS;
                        TxSubchannelPtr->HandledCfCount = 0;
                        STminTimer = &TxSubchannelPtr->STminTimer;
                        STminTimer->Started = 1u;
                        STminTimer->RemainTime = fcInfo.FcSTMin;
                        STminTimer->FcSTMin = fcInfo.FcSTMin;
                        channelTimer = &TxSubchannelPtr->ChannelTimer;
                        CanTp_ResetTime(&(STminTimer->StartTime));
                        SchM_Exit_CanTp_ExclusiveArea();  

                         
                        if (TxNSduCfgPtr->Ncs != ((void *)0))
                        {
                            SchM_Enter_CanTp_ExclusiveArea();  
                            channelTimer->EnabledTimer = CANTP_NC;
                            channelTimer->RemainTime = *(TxNSduCfgPtr->Ncs);
                            CanTp_ResetTime(&(channelTimer->StartTime));
                            SchM_Exit_CanTp_ExclusiveArea();  
                        }
                        else
                        {
                            channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                        }
                        SchM_Enter_CanTp_ExclusiveArea();
                        TxSubchannelPtr->HandleType = (uint8)0x20;
                        TxSubchannelPtr->Substate = CANTP_TX_LARGE_START;
                        SchM_Exit_CanTp_ExclusiveArea();
                        break;
                    case (uint8)0x01:
                        channelTimer = &TxSubchannelPtr->ChannelTimer;
                         
                        if (TxNSduCfgPtr->Nbs != ((void *)0))
                        {
                            SchM_Enter_CanTp_ExclusiveArea();
                            channelTimer->EnabledTimer = CANTP_NB;
                            channelTimer->RemainTime = *(TxNSduCfgPtr->Nbs);
                            CanTp_ResetTime(&(channelTimer->StartTime));
                            SchM_Exit_CanTp_ExclusiveArea();
                        }
                        else
                        {
                            channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                        }
                        break;
                    case (uint8)0x02:
                    default:
                        
 
                        TxSubchannelPtr->RootState = CANTP_IDLE;
                         
                        CanTp_ReleaseTxChannel(TxSubchannelPtr);
                         
                        PduR_TpTxConfirmation(TxNSduCfgPtr->TxIPduId, 1U);
                        break;
                    }  
                }
            }
        }
    }
}











 
static  void CanTp_RxSubDealWithCF(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr)
{
    PduLengthType MatchDLC = CanTp_MatchDLC(PduInfoPtr->SduLength);
    uint8 cfSN;
    uint8 pcioffset;
    uint8 dataoffset;

     
    
 
    if ((PduInfoPtr->SduLength >= 1u) && (CANTP_FUNCTIONAL_RX != RxNSduCfgPtr->RxTaType)
        && (RxNSduCfgPtr->RxNSduId == RxchannelPtr->NSduId) && (CANTP_LARGE_RECEIVING == RxchannelPtr->RootState)
        && (CANTP_RX_LARGE_V4CF == RxchannelPtr->Substate) && (PduInfoPtr->SduLength <= RxNSduCfgPtr->RxNPduDLC)
        && ((PduInfoPtr->SduLength == MatchDLC) || (PduInfoPtr->SduLength < 8u))
        && (CANTP_CANFD_FUNCTIONAL != RxNSduCfgPtr->RxTaType)
    )
    {
        if ((8u > PduInfoPtr->SduLength) && (RxNSduCfgPtr->RxPaddingActivation == CANTP_PADDING_ON))
        {
            CANTP_DET_REPORTRUNTIMEERROR((0x42u), (0x70u));
            PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
            CanTp_ReleaseRxChannel(RxchannelPtr);
        }
        else
        {
            {
                CanTp_RxGetCFOffset(RxNSduCfgPtr, &dataoffset, &pcioffset);
                cfSN = PduInfoPtr->SduDataPtr[pcioffset] & (uint8)0x0F;
                if (cfSN != RxchannelPtr->CurrentCfSn)
                {
                    PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                         
                    CanTp_ReleaseRxChannel(RxchannelPtr);
                }
                else
                {
                    CanTp_RxSubDealWithCFToUp(PduInfoPtr, RxNSduCfgPtr, RxchannelPtr);
                }  
            }
        }
    }
    else if (
        (CANTP_FUNCTIONAL_RX == RxNSduCfgPtr->RxTaType)
        || (CANTP_CANFD_FUNCTIONAL == RxNSduCfgPtr->RxTaType)
    )
    {
         
        CANTP_DET_REPORTRUNTIMEERROR((0x42u), (0x90u));
    }
    else
    {
         
    }
}












 
static  void CanTp_RxSubDealWithCFToUp(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr)
{
    uint32 N_Cr;
    PduInfoType upperpduInfo;
    const PduInfoType* upperpduInfoPtr = &upperpduInfo;
    PduLengthType bufferSize;
    Std_ReturnType result;
    BufReq_ReturnType bufRslt;
    PduLengthType DataLength;
    uint8 pcioffset;
    uint8 dataoffset;
    CanTp_ChannelTimerType* channelTimer = &RxchannelPtr->ChannelTimer;

     
    CanTp_RxGetCFOffset(RxNSduCfgPtr, &dataoffset, &pcioffset);
    DataLength = PduInfoPtr->SduLength - dataoffset;
    SchM_Enter_CanTp_ExclusiveArea();  
    RxchannelPtr->HandleType = (uint8)0x20;
    channelTimer->EnabledTimer = CANTP_TIMER_NONE;
    if (0xFFu > RxchannelPtr->HandledCfCount)
    {
        RxchannelPtr->HandledCfCount++;
    }
     
    if (DataLength > RxchannelPtr->SduDataRemaining)
    {
        DataLength = RxchannelPtr->SduDataRemaining;
    }
    SchM_Exit_CanTp_ExclusiveArea();  

    upperpduInfo.SduDataPtr = &(PduInfoPtr->SduDataPtr[dataoffset]);
    upperpduInfo.SduLength = DataLength;
    bufRslt = PduR_TpCopyRxData(RxNSduCfgPtr->RxIPduId, upperpduInfoPtr, &bufferSize);
    if (BUFREQ_E_NOT_OK == bufRslt)
    {
        PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
         
        CanTp_ReleaseRxChannel(RxchannelPtr);
    }
    else
    {
        RxchannelPtr->SduDataRemaining -= DataLength;
        if (((DataLength < (PduLengthType)((PduLengthType)8u - (PduLengthType)dataoffset))
             || (PduInfoPtr->SduLength != RxchannelPtr->FDDlc)
                 )
            && (0u != RxchannelPtr->SduDataRemaining))
        {
            PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
             
            CanTp_ReleaseRxChannel(RxchannelPtr);
        }
        else
        {
            if (0u == RxchannelPtr->SduDataRemaining)
            {
                 
                if (0u == CanTp_checkLastCF(DataLength, PduInfoPtr->SduLength, pcioffset))
                {
                    PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                     
                    CanTp_ReleaseRxChannel(RxchannelPtr);
                }
                else
                {
                       
                    ((RxchannelPtr->EventFlags) |= ((uint8)0x04));
                     
                }
            }
            else
            {
                 
                if (RxchannelPtr->CurrentBs == RxchannelPtr->HandledCfCount)
                {
                     
                    result = CanTp_CompareBufferWithBs(RxNSduCfgPtr, RxchannelPtr, bufferSize);
                    if (1U == result)
                    {
                         
                        SchM_Enter_CanTp_ExclusiveArea();  
                        RxchannelPtr->Substate = CANTP_RX_LARGE_START;
                        channelTimer->EnabledTimer = CANTP_NB;
                        channelTimer->RemainTime = RxNSduCfgPtr->Nbr;
                        CanTp_ResetTime(&(channelTimer->StartTime));
                        SchM_Exit_CanTp_ExclusiveArea();  
                    }
                    else
                    {
                           
                        result = CanTp_RxBlockStart(RxNSduCfgPtr, RxchannelPtr);
                        if (1U == result)
                        {
                            PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                            CanTp_ReleaseRxChannel(RxchannelPtr);
                        }
                    }
                }
                else
                {
                     
                    RxchannelPtr->Substate = CANTP_RX_LARGE_V4CF;
                    if (RxNSduCfgPtr->Ncr != ((void *)0))
                    {
                        SchM_Enter_CanTp_ExclusiveArea();
                        N_Cr = *(RxNSduCfgPtr->Ncr);
                        channelTimer->EnabledTimer = CANTP_NC;
                        channelTimer->RemainTime = N_Cr;
                        CanTp_ResetTime(&(channelTimer->StartTime));
                        SchM_Exit_CanTp_ExclusiveArea();
                    }
                    else
                    {
                        channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                    }
                }
                 
                RxchannelPtr->CurrentCfSn = (RxchannelPtr->CurrentCfSn + 1u) & (uint8)0x0F;
            }  
        }
    }  
}












 
static  void CanTp_RxSubDealWithFF(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel)
{
    uint8 Offset = 0;
    PduLengthType frameDl;
    const CanTp_ConnectionType* TxSubchannelPtr = &connectionChannel->TxConnection.Connection;
    CanTp_ConnectionType* RxchannelPtr = &connectionChannel->RxConnection;
    CanTp_ChannelTimerType* channelTimer;
    PduLengthType MatchDLC = CanTp_MatchDLC(PduInfoPtr->SduLength);

     
     
     
     
    if ((PduInfoPtr->SduLength >= 8u)
        && ((CanTp_ConfigPtr->CanTpChannel[TxSubchannelPtr->ChannelId].ChannelMode != CANTP_MODE_HALF_DUPLEX)
            || (TxSubchannelPtr->RootState == CANTP_IDLE))
        && (CANTP_FUNCTIONAL_RX != RxNSduCfgPtr->RxTaType)
        && ((CANTP_IDLE == RxchannelPtr->RootState) || (CANTP_LARGE_RECEIVING == RxchannelPtr->RootState))
        && (PduInfoPtr->SduLength <= RxNSduCfgPtr->RxNPduDLC)
        && ((PduInfoPtr->SduLength == MatchDLC) || (PduInfoPtr->SduLength <= 8u))
        && (CANTP_CANFD_FUNCTIONAL != RxNSduCfgPtr->RxTaType)
    )
    {
         
        frameDl = CanTp_RxGetFFDl((const uint8*)PduInfoPtr->SduDataPtr, &Offset, RxNSduCfgPtr);

         
        if (PduInfoPtr->SduLength > 8u)
        {
            Offset++;
        }
         
        if (frameDl > (PduInfoPtr->SduLength - (PduLengthType)Offset + 1u))
        {
                {
                    if ((CANTP_SF_RECEIVING == RxchannelPtr->RootState)
                        || (CANTP_LARGE_RECEIVING == RxchannelPtr->RootState))
                    {
                         
                         
                        PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                    }
                     
                    SchM_Enter_CanTp_ExclusiveArea();  
                    RxchannelPtr->RootState = CANTP_LARGE_RECEIVING;
                    RxchannelPtr->Substate = CANTP_RX_FF_START;
                    RxchannelPtr->NSduId = RxNSduCfgPtr->RxNSduId;
                    RxchannelPtr->HandleType = (uint8)0x10;
                    RxchannelPtr->SduDataRemaining = frameDl;
                    RxchannelPtr->SduDataTotalCount = frameDl;
                     
                    RxchannelPtr->CurrentBs = 0;
                    RxchannelPtr->FDDlc = MatchDLC;
                    RxchannelPtr->CurrentCfSn = 0;
                    RxchannelPtr->HandledCfCount = 0;
                    RxchannelPtr->SentWftCount = 0;
                    channelTimer = &RxchannelPtr->ChannelTimer;
                    
 
                    channelTimer->EnabledTimer = CANTP_NB;
                    channelTimer->RemainTime = RxNSduCfgPtr->Nbr;
                    CanTp_ResetTime(&(channelTimer->StartTime));
                    SchM_Exit_CanTp_ExclusiveArea();

                    CanTp_RxSubDealWithFFToUp(PduInfoPtr, RxNSduCfgPtr, connectionChannel);
                }
        }
    }
    else if (
        (CANTP_FUNCTIONAL_RX == RxNSduCfgPtr->RxTaType)
        || (CANTP_CANFD_FUNCTIONAL == RxNSduCfgPtr->RxTaType)
    )
    {
         
        CANTP_DET_REPORTRUNTIMEERROR((0x42u), (0x90u));
    }
    else
    {
         
    }
}












 
static  void CanTp_RxSubDealWithFFToUp(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel)
{
    CanTp_ConnectionType* RxchannelPtr = &connectionChannel->RxConnection;
    CanTp_FCInfoType CanTp_FC;
    uint8 Offset = 0;
    PduLengthType frameDl;
    PduLengthType bufferSize;
    BufReq_ReturnType bufRslt;
    PduInfoType upperpduInfo;
    Std_ReturnType result;
    const PduInfoType* upperpduInfoPtr = &upperpduInfo;
    CanTp_ChannelTimerType* ChannelTimer;
    upperpduInfo.SduLength = 0;
    frameDl = CanTp_RxGetFFDl((const uint8*)PduInfoPtr->SduDataPtr, &Offset, RxNSduCfgPtr);
    bufRslt = PduR_TpStartOfReception(RxNSduCfgPtr->RxIPduId, upperpduInfoPtr, frameDl, &bufferSize);
    switch (bufRslt)
    {
    case BUFREQ_OK:
        upperpduInfo.SduDataPtr = &PduInfoPtr->SduDataPtr[Offset];
        upperpduInfo.SduLength = PduInfoPtr->SduLength - (PduLengthType)Offset;
        bufRslt = PduR_TpCopyRxData(RxNSduCfgPtr->RxIPduId, upperpduInfoPtr, &bufferSize);
        if (BUFREQ_E_NOT_OK == bufRslt)
        {
            PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
            CanTp_ReleaseRxChannel(RxchannelPtr);
        }
        else
        {
            RxchannelPtr->SduDataRemaining -= (PduInfoPtr->SduLength - (PduLengthType)Offset);
             
            result = CanTp_CalcBS(RxNSduCfgPtr, RxchannelPtr, bufferSize);
            if (1U == result)
            {
                SchM_Enter_CanTp_ExclusiveArea();
                 
                RxchannelPtr->Substate = CANTP_RX_LARGE_START;
                ChannelTimer = &RxchannelPtr->ChannelTimer;
                ChannelTimer->EnabledTimer = CANTP_NB;
                ChannelTimer->RemainTime = RxNSduCfgPtr->Nbr;
                CanTp_ResetTime(&(ChannelTimer->StartTime));
                SchM_Exit_CanTp_ExclusiveArea();
            }
            else
            {
                 
                result = CanTp_RxBlockStart(RxNSduCfgPtr, RxchannelPtr);
                if (1U == result)
                {
                    PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                    CanTp_ReleaseRxChannel(RxchannelPtr);
                }
            }
        }
         
        RxchannelPtr->CurrentCfSn = (uint8)(RxchannelPtr->CurrentCfSn + 1u) & (uint8)0x0F;
        break;
    case BUFREQ_E_NOT_OK:
        CanTp_InitSubChannel(RxchannelPtr);
        break;
    case BUFREQ_E_OVFL:
        
 
         
        CanTp_FC.FcFs = (uint8)0x02;
        CanTp_FC.FcBS = 0;
        CanTp_FC.FcSTMin = 0;
        (void)CanTp_SendFC(RxNSduCfgPtr, RxchannelPtr, CanTp_FC);
         
        CanTp_ReleaseRxChannel(RxchannelPtr);
        break;
    default:
         
        break;
    }
}












 
static  void CanTp_RxSubDealWithSF(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel)
{
    uint8 totaloffset = 0;
    PduLengthType frameDl;
    const CanTp_ConnectionType* TxSubchannelPtr = &connectionChannel->TxConnection.Connection;
    const CanTp_ConnectionType* RxchannelPtr = &connectionChannel->RxConnection;
    uint8 DataOffset = 0;
    PduLengthType MatchDLC = CanTp_MatchDLC(PduInfoPtr->SduLength);

     
     
     
    if ((PduInfoPtr->SduLength >= 1u)
        && ((CanTp_ConfigPtr->CanTpChannel[TxSubchannelPtr->ChannelId].ChannelMode != CANTP_MODE_HALF_DUPLEX)
            || (TxSubchannelPtr->RootState == CANTP_IDLE))
        && ((CANTP_IDLE == RxchannelPtr->RootState) || (CANTP_LARGE_RECEIVING == RxchannelPtr->RootState)))
    {
         
        frameDl = CanTp_RxGetSFDl(
            PduInfoPtr,
            RxNSduCfgPtr,
            &DataOffset,
            &totaloffset);
        if (((PduInfoPtr->SduLength == MatchDLC) || (PduInfoPtr->SduLength < 8u))
            && (PduInfoPtr->SduLength <= RxNSduCfgPtr->RxNPduDLC))
        {
            if ((8u <= PduInfoPtr->SduLength) || (RxNSduCfgPtr->RxPaddingActivation != CANTP_PADDING_ON))
            {
                 
                if (frameDl != 0x0u)
                {
                    if (0u == CanTp_checkSF(frameDl, MatchDLC, DataOffset))
                    {
                         
                    }
                    else
                        if (frameDl <= (PduInfoPtr->SduLength - totaloffset))
                        {
                            CanTp_RxSubDealWithSFToUp(PduInfoPtr, RxNSduCfgPtr, connectionChannel);
                        }
                        else
                        {
                             
                        }
                }
            }
            else
            {
                CANTP_DET_REPORTRUNTIMEERROR((0x42u), (0x70u));
            }
        }
    }
}












 
static  void CanTp_RxSubDealWithSFToUp(
    const PduInfoType * PduInfoPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionChannelType* connectionChannel)
{
    CanTp_ConnectionType* RxchannelPtr = &connectionChannel->RxConnection;
    PduLengthType bufferSize;
    BufReq_ReturnType bufRslt;
    PduInfoType upperpduInfo;
    uint8 totaloffset = 0;
    PduLengthType frameDl;
    const PduInfoType* upperpduInfoPtr = &upperpduInfo;
    uint8 DataOffset = 0;

    upperpduInfo.SduLength = 0;
        {
            frameDl = CanTp_RxGetSFDl(
                PduInfoPtr,
                RxNSduCfgPtr,
                &DataOffset,
                &totaloffset);

            if (((CANTP_SF_RECEIVING == RxchannelPtr->RootState) || (CANTP_LARGE_RECEIVING == RxchannelPtr->RootState))
                && (!(
                    (PduInfoPtr->SduDataPtr[totaloffset] == 0x3Eu)
                    && (PduInfoPtr->SduDataPtr[totaloffset + 1u] == 0x80u)
                    && ((RxNSduCfgPtr->RxTaType == CANTP_FUNCTIONAL_RX)
                        || (RxNSduCfgPtr->RxTaType == CANTP_CANFD_FUNCTIONAL))
                    && (frameDl == 2u))))
            {
                 
                 
                PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
            }
            bufRslt = PduR_TpStartOfReception(RxNSduCfgPtr->RxIPduId, upperpduInfoPtr, frameDl, &bufferSize);
             
            switch (bufRslt)
            {
            case BUFREQ_OK:
                upperpduInfo.SduDataPtr = &PduInfoPtr->SduDataPtr[totaloffset];
                upperpduInfo.SduLength = frameDl;
                bufRslt = PduR_TpCopyRxData(RxNSduCfgPtr->RxIPduId, upperpduInfoPtr, &bufferSize);
                if (bufRslt == BUFREQ_OK)
                {
                    if ((PduInfoPtr->SduDataPtr[totaloffset] == 0x3Eu)
                        && (PduInfoPtr->SduDataPtr[totaloffset + 1u] == 0x80u)
                        && ((RxNSduCfgPtr->RxTaType == CANTP_FUNCTIONAL_RX)
                            || (RxNSduCfgPtr->RxTaType == CANTP_CANFD_FUNCTIONAL))
                        && (frameDl == 2u))
                    {
                        PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 0U);
                    }
                    else
                    {
                        SchM_Enter_CanTp_ExclusiveArea();  
                         
                        RxchannelPtr->RootState = CANTP_SF_RECEIVING;
                        RxchannelPtr->Substate = CANTP_RX_SF_START;
                        RxchannelPtr->NSduId = RxNSduCfgPtr->RxNSduId;
                        RxchannelPtr->HandleType = 0x00u;
                        SchM_Exit_CanTp_ExclusiveArea();  
                       
                    ((RxchannelPtr->EventFlags) |= ((uint8)0x04));
                     
                    }
                }
                else
                {
                    PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                    CanTp_ReleaseRxChannel(RxchannelPtr);
                }
                break;
            case BUFREQ_E_NOT_OK:
                 
                CanTp_InitSubChannel(RxchannelPtr);
                break;
            case BUFREQ_E_OVFL:
            default:
                 
                PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                 
                CanTp_ReleaseRxChannel(RxchannelPtr);
                break;
            }  
        }
}

static  boolean CanTp_checkSF(PduLengthType SF_DL, PduLengthType CAN_DL, PduLengthType Offset)
{
    boolean ret = 0u;
    switch (CAN_DL)
    {
    case 12u:
        if ((SF_DL >= (8u - Offset)) && (SF_DL <= (10u - Offset)))
        {
            ret = 1u;
        }
        break;
    case 16u:
    case 20u:
    case 24u:
        if ((SF_DL >= ((CAN_DL - 5u) - Offset)) && (SF_DL <= ((CAN_DL - 2u) - Offset)))
        {
            ret = 1u;
        }
        break;
    case 32u:
        if ((SF_DL >= (23u - Offset)) && (SF_DL <= (30u - Offset)))
        {
            ret = 1u;
        }
        break;
    case 48u:
        if ((SF_DL >= (31u - Offset)) && (SF_DL <= (46u - Offset)))
        {
            ret = 1u;
        }
        break;
    case 64u:
        if ((SF_DL >= (47u - Offset)) && (SF_DL <= (62u - Offset)))
        {
            ret = 1u;
        }
        break;
    default:
        if (CAN_DL <= 8u)
        {
            ret = 1u;
        }
        break;
    }
    return ret;
}

static  boolean CanTp_checkLastCF(PduLengthType CF_DL, PduLengthType CAN_DL, PduLengthType Offset)
{
    boolean ret = 0u;
    switch (CAN_DL)
    {
    case 12u:
        if ((CF_DL >= (8u - Offset)) && (CF_DL <= (11u - Offset)))
        {
            ret = 1u;
        }
        break;
    case 16u:
    case 20u:
    case 24u:
        if ((CF_DL >= ((CAN_DL - 4u) - Offset)) && (CF_DL <= ((CAN_DL - 1u) - Offset)))
        {
            ret = 1u;
        }
        break;
    case 32u:
        if ((CF_DL >= (24u - Offset)) && (CF_DL <= (31u - Offset)))
        {
            ret = 1u;
        }
        break;
    case 48u:
        if ((CF_DL >= (32u - Offset)) && (CF_DL <= (47u - Offset)))
        {
            ret = 1u;
        }
        break;
    case 64u:
        if ((CF_DL >= (48u - Offset)) && (CF_DL <= (63u - Offset)))
        {
            ret = 1u;
        }
        break;
    default:
        if (CAN_DL <= 8u)
        {
            ret = 1u;
        }
        break;
    }
    return ret;
}

 
static  Std_ReturnType CanTp_RxBlockStart(
    const CanTp_RxNSduType * RxNSduCfgPtr,
    CanTp_ConnectionType* RxchannelPtr)
{
    Std_ReturnType ret;
    uint8 stMin;
    uint32 N_Ar;
    CanTp_FCInfoType CanTp_FC;
    CanTp_ChannelTimerType* channelTimer = &RxchannelPtr->ChannelTimer;

     
    if ((0u != ((RxchannelPtr->EventFlags) & ((uint8)0x02))))
    {
        stMin = RxchannelPtr->ChangedSTmin;
    }
    else
    {
         
        stMin = (RxNSduCfgPtr->STmin != ((void *)0)) ? (*(RxNSduCfgPtr->STmin)) : 0u;
    }
     
    SchM_Enter_CanTp_ExclusiveArea();  
    CanTp_FC.FcFs = 0x00u;
    CanTp_FC.FcBS = RxchannelPtr->CurrentBs;
    CanTp_FC.FcSTMin = stMin;
     
    RxchannelPtr->Substate = CANTP_RX_LARGE_V4FCCTS_CFM;
    RxchannelPtr->SentWftCount = 0;
    RxchannelPtr->HandledCfCount = 0;
    if (RxNSduCfgPtr->Nar != ((void *)0))
    {
        N_Ar = *(RxNSduCfgPtr->Nar);
        channelTimer->EnabledTimer = CANTP_NA;
        channelTimer->RemainTime = N_Ar;
        CanTp_ResetTime(&(channelTimer->StartTime));
        SchM_Exit_CanTp_ExclusiveArea();
    }
    else
    {
        channelTimer->EnabledTimer = CANTP_TIMER_NONE;
        SchM_Exit_CanTp_ExclusiveArea();
    }

    ret = CanTp_SendFC(RxNSduCfgPtr, RxchannelPtr, CanTp_FC);

    return ret;
}

 
static  void CanTp_DispatchRxEvent(CanTp_ConnectionType* RxchannelPtr)
{
    const CanTp_RxNSduType* RxNSduCfgPtr;
    PduLengthType buffersize;
    PduInfoType pduInfo;
    Std_ReturnType ret;
    uint8 ChannelId;

     
    if ((0u != ((RxchannelPtr->EventFlags) & ((uint8)0x04))))
    {
        RxNSduCfgPtr = CanTp_GetRxSduCfgByNSduId(RxchannelPtr->NSduId, &ChannelId);
        if (RxNSduCfgPtr != ((void *)0))
        {
            RxchannelPtr->RootState = CANTP_OCCUPIED;
            PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 0U);
        }
         
        CanTp_InitSubChannel(RxchannelPtr);
    }
     
    if (CANTP_RX_LARGE_START == RxchannelPtr->Substate)
    {
        RxNSduCfgPtr = CanTp_GetRxSduCfgByNSduId(RxchannelPtr->NSduId, &ChannelId);
        if ((RxNSduCfgPtr != ((void *)0)) && ((RxchannelPtr->ChannelTimer.EnabledTimer == CANTP_NB)))
        {
            pduInfo.SduDataPtr = ((void *)0);
            pduInfo.SduLength = 0;
             
            (void)PduR_TpCopyRxData(RxNSduCfgPtr->RxIPduId, &pduInfo, &buffersize);
            ret = CanTp_CalcBS(RxNSduCfgPtr, RxchannelPtr, buffersize);
            if (ret == 0U)
            {
                 
                ret = CanTp_CompareBufferWithBs(RxNSduCfgPtr, RxchannelPtr, buffersize);
            }
            if (1U == ret)
            {
                CanTp_DispatchRxEventSubDeal(RxchannelPtr, RxNSduCfgPtr);
            }
            else
            {
                 
                 
                ret = CanTp_RxBlockStart(RxNSduCfgPtr, RxchannelPtr);
                if (1U == ret)
                {
                    PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                    CanTp_ReleaseRxChannel(RxchannelPtr);
                }
            }
        }
    }
}

 
static  void CanTp_DispatchRxEventSubDeal(
    CanTp_ConnectionType* RxchannelPtr,
    const CanTp_RxNSduType * RxNSduCfgPtr)
{
    uint8 wtfMax;
    Std_ReturnType ret = 1U;
    CanTp_FCInfoType CanTp_FC;
    CanTp_ChannelTimerType* channelTimer = &RxchannelPtr->ChannelTimer;

     
    if (0u == channelTimer->RemainTime)
    {
        wtfMax = (RxNSduCfgPtr->RxWftMax != ((void *)0)) ? (*(RxNSduCfgPtr->RxWftMax)) : 0xFFu;
         
        if (0u != wtfMax)
        {
            


 
            if (((uint8)0x10 == RxchannelPtr->HandleType)
                || ((RxchannelPtr->CurrentBs == RxchannelPtr->HandledCfCount) && (RxchannelPtr->SduDataRemaining > 0u)))
            {
                 
                if (wtfMax <= RxchannelPtr->SentWftCount)
                {
                    PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
                     
                     
                    CanTp_ReleaseRxChannel(RxchannelPtr);
                }
                else
                {
                    SchM_Enter_CanTp_ExclusiveArea();  
                     
                    CanTp_FC.FcFs = (uint8)0x01;
                    CanTp_FC.FcBS = 0;
                    CanTp_FC.FcSTMin = 0;
                     
                    RxchannelPtr->SentWftCount++;
                     
                    RxchannelPtr->Substate = CANTP_RX_LARGE_V4FCWT_CFM;
                    if (RxNSduCfgPtr->Nar != ((void *)0))
                    {
                        channelTimer->EnabledTimer = CANTP_NA;
                        channelTimer->RemainTime = *(RxNSduCfgPtr->Nar);
                        CanTp_ResetTime(&(channelTimer->StartTime));
                        SchM_Exit_CanTp_ExclusiveArea();  
                    }
                    else
                    {
                        channelTimer->EnabledTimer = CANTP_TIMER_NONE;
                        SchM_Exit_CanTp_ExclusiveArea();  
                    }
                    ret = CanTp_SendFC(RxNSduCfgPtr, RxchannelPtr, CanTp_FC);
                }
            }  
        }
        if (1U == ret)
        {
            PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
             
            CanTp_ReleaseRxChannel(RxchannelPtr);
        }
    }  
}

 
static  void CanTp_DispatchTxEvent(CanTp_ConnectionChannelType* connectionChannel)
{
    const CanTp_ConnectionType* TxSubchannelPtr = &connectionChannel->TxConnection.Connection;
    const CanTp_ConnectionType* RxchannelPtr = &connectionChannel->RxConnection;

    if ((CANTP_RX_LARGE_V4FCWT_CFM != RxchannelPtr->Substate) && (CANTP_RX_LARGE_V4FCCTS_CFM != RxchannelPtr->Substate))
    {
        switch (TxSubchannelPtr->Substate)
        {
        case CANTP_TX_SF_START:
             
            CanTp_TxHandleSFStart(connectionChannel);
            break;
        case CANTP_TX_LARGE_START:
             
            CanTp_TxHandleLargeStart(connectionChannel);
            break;
        default:
             
            break;
        }
    }
}

 
   
 void CanTp_TxHandleSFStart(CanTp_ConnectionChannelType* connectionChannel)
 
{
    CanTp_TxConnectionType* TxchannelPtr = &connectionChannel->TxConnection;
    CanTp_ConnectionType* TxSubchannelPtr = &TxchannelPtr->Connection;
    PduInfoType pduInfo;
    const CanTp_TxNSduType* txSduCfgPtr;
    BufReq_ReturnType bufRslt;
    Std_ReturnType rslt;
    uint8 totalOffset;
    uint8 unusedchannelId;
    PduLengthType unusedavailableDataPtr;
     
    uint8* pLocalBuf = TxchannelPtr->LocalBuf;
    txSduCfgPtr = CanTp_GetTxSduCfgByTxSduId(TxSubchannelPtr->NSduId, &unusedchannelId);
    CanTp_ChannelTimerType* channelTimer;

    if (((void *)0) != txSduCfgPtr)
    {
         
        CanTp_ConstructSFPci(TxSubchannelPtr, txSduCfgPtr, pLocalBuf, &totalOffset);
        pduInfo.SduDataPtr = &pLocalBuf[totalOffset];
        pduInfo.SduLength = TxSubchannelPtr->SduDataRemaining;
         
        bufRslt = PduR_TpCopyTxData(txSduCfgPtr->TxIPduId, &pduInfo, ((void *)0), &unusedavailableDataPtr);
         
        switch (bufRslt)
        {
        case BUFREQ_OK: {
             
            TxSubchannelPtr->SduDataRemaining -= pduInfo.SduLength;
             
             
            pduInfo.SduDataPtr = pLocalBuf;
            pduInfo.SduLength += (PduLengthType)totalOffset;
             
            CanTp_TxSFPadding(TxSubchannelPtr, txSduCfgPtr, &pduInfo);
            SchM_Enter_CanTp_ExclusiveArea();  
             
            TxSubchannelPtr->Substate = CANTP_TX_SF_V4SF_CFM;
            channelTimer = &TxSubchannelPtr->ChannelTimer;
            channelTimer->EnabledTimer = CANTP_NA;
            channelTimer->RemainTime = txSduCfgPtr->Nas;
            CanTp_ResetTime(&(channelTimer->StartTime));
            SchM_Exit_CanTp_ExclusiveArea();  
             
            rslt = CanIf_Transmit(txSduCfgPtr->TxLPduId, &pduInfo);
            if (1U == rslt)
            {
                 
                TxSubchannelPtr->RootState = CANTP_IDLE;
                 
                CanTp_ReleaseTxChannel(TxSubchannelPtr);
                 
                PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
            }
            break;
        }  
        case BUFREQ_E_NOT_OK: {
             
            CanTp_ReleaseTxChannel(TxSubchannelPtr);
             
            PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
            break;
        }
        case BUFREQ_E_BUSY:
             
            break;
        default:
             
            break;
        }  
    }
}

 
   
 void CanTp_TxHandleLargeStart(CanTp_ConnectionChannelType* connectionChannel)
 
{
    CanTp_TxConnectionType* TxchannelPtr = &connectionChannel->TxConnection;
    CanTp_ConnectionType* TxSubchannelPtr = &TxchannelPtr->Connection;
    PduInfoType pduInfo;
    const CanTp_TxNSduType* txSduCfgPtr;
    BufReq_ReturnType bufRslt = BUFREQ_OK;
    Std_ReturnType rslt;
    uint8 totalOffset;
    uint8 unusedchannelId;
    PduLengthType unusedavailableDataPtr;
    PduLengthType CAN_DL;
     
    uint8* pLocalBuf = TxchannelPtr->LocalBuf;
    CanTp_ChannelTimerType* channelTimer;
    CanTp_STminType* STminTimer;

    txSduCfgPtr = CanTp_GetTxSduCfgByTxSduId(TxSubchannelPtr->NSduId, &unusedchannelId);
    if (((void *)0) != txSduCfgPtr)
    {
        if ((uint8)0x10 == TxSubchannelPtr->HandleType)
        {
             
            CanTp_ConstructFFPci(TxSubchannelPtr, txSduCfgPtr, pLocalBuf, &totalOffset);
        }
        else
        {
             
            CanTp_ConstructCFPci(TxSubchannelPtr, txSduCfgPtr, pLocalBuf, &totalOffset);
        }

         
        CAN_DL = (txSduCfgPtr->TxNPduDLC <= (PduLengthType)8) ? txSduCfgPtr->TxNPduDLC :
                                                                        
                     ((CANTP_CAN_20 == txSduCfgPtr->CanFrameType) ? (PduLengthType)8
                                                                  : CanTp_MatchDLC(txSduCfgPtr->TxNPduDLC));

        pduInfo.SduLength = CAN_DL - totalOffset;
         
        if (pduInfo.SduLength > TxSubchannelPtr->SduDataRemaining)
        {
            pduInfo.SduLength = TxSubchannelPtr->SduDataRemaining;
            CAN_DL = CanTp_MatchDLC((pduInfo.SduLength + totalOffset));
        }
        pduInfo.SduDataPtr = &pLocalBuf[totalOffset];

        if (((uint8)0x10 == TxSubchannelPtr->HandleType)
            || ((!(0u != ((TxSubchannelPtr->EventFlags) & ((uint8)0x08))))
                && ((uint8)0x20 == TxSubchannelPtr->HandleType)))
        {
            bufRslt = PduR_TpCopyTxData(txSduCfgPtr->TxIPduId, &pduInfo, ((void *)0), &unusedavailableDataPtr);
        }

        switch (bufRslt)
        {
        case BUFREQ_OK:
             
               
            ((TxSubchannelPtr->EventFlags) |= ((uint8)0x08));
             
            if ((uint8)0x10 == TxSubchannelPtr->HandleType)
            {
                 
                TxSubchannelPtr->SduDataRemaining -= pduInfo.SduLength;
                 
                pduInfo.SduDataPtr = pLocalBuf;
                 
                pduInfo.SduLength += totalOffset;
                SchM_Enter_CanTp_ExclusiveArea();  
                 
                TxSubchannelPtr->Substate = CANTP_TX_LARGE_V4DATA_CFM;
                channelTimer = &TxSubchannelPtr->ChannelTimer;
                channelTimer->EnabledTimer = CANTP_NA;
                channelTimer->RemainTime = txSduCfgPtr->Nas;
                CanTp_ResetTime(&(channelTimer->StartTime));
                SchM_Exit_CanTp_ExclusiveArea();  
                rslt = CanIf_Transmit(txSduCfgPtr->TxLPduId, &pduInfo);
                 
                   
                ((TxSubchannelPtr->EventFlags) &= (uint8)(~((uint8)0x08)));
                 
                if (1U == rslt)
                {
                     
                    CanTp_ReleaseTxChannel(TxSubchannelPtr);
                     
                    PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
                }
            }
            else  
            {
                STminTimer = &TxSubchannelPtr->STminTimer;
                 
                if ((1u == STminTimer->Started) && (0u == STminTimer->RemainTime))
                {
                     
                    TxSubchannelPtr->SduDataRemaining -= pduInfo.SduLength;
                    pduInfo.SduDataPtr = pLocalBuf;
                    pduInfo.SduLength += totalOffset;
                     
                    if ((0u == TxSubchannelPtr->SduDataRemaining)
                        && (CANTP_PADDING_ON == txSduCfgPtr->TxPaddingActivation))
                    {
                         
                        CAN_DL = (CAN_DL < (PduLengthType)8) ? (PduLengthType)8 : CAN_DL;
                        CanTp_MemorySet(
                            &pduInfo.SduDataPtr[pduInfo.SduLength],
                            0xaau,
                            (uint16)(CAN_DL - pduInfo.SduLength));
                        pduInfo.SduLength = CAN_DL;
                    }
                     
                    TxSubchannelPtr->Substate = CANTP_TX_LARGE_V4DATA_CFM;
                    channelTimer = &TxSubchannelPtr->ChannelTimer;
                    channelTimer->EnabledTimer = CANTP_NA;
                    channelTimer->RemainTime = txSduCfgPtr->Nas;
                    CanTp_ResetTime(&(channelTimer->StartTime));
                    STminTimer->Started = 0u;
                    rslt = CanIf_Transmit(txSduCfgPtr->TxLPduId, &pduInfo);
                     
                       
                    ((TxSubchannelPtr->EventFlags) &= (uint8)(~((uint8)0x08)));
                     
                    if (1U == rslt)
                    {
                         
                        TxSubchannelPtr->RootState = CANTP_IDLE;
                        CanTp_ReleaseTxChannel(TxSubchannelPtr);
                         
                        PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
                    }
                }
            }  
            break;
        case BUFREQ_E_NOT_OK:
             
            TxSubchannelPtr->RootState = CANTP_IDLE;
             
            CanTp_ReleaseTxChannel(TxSubchannelPtr);
             
            PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
            break;
        case BUFREQ_E_BUSY:
            if ((CANTP_NC == TxSubchannelPtr->ChannelTimer.EnabledTimer)
                && (0u == TxSubchannelPtr->ChannelTimer.RemainTime))
            {
                 
                TxSubchannelPtr->RootState = CANTP_IDLE;
                 
                CanTp_ReleaseTxChannel(TxSubchannelPtr);
                 
                PduR_TpTxConfirmation(txSduCfgPtr->TxIPduId, 1U);
            }
             
            break;
        default:
             
            break;
        }  
    }
}



 
static  void CanTp_HandleTimers(CanTp_ConnectionChannelType* connectionChannel)
{
    CanTp_ConnectionType* RxchannelPtr = &connectionChannel->RxConnection;
    CanTp_ConnectionType* TxSubchannelPtr = &connectionChannel->TxConnection.Connection;
    const CanTp_RxNSduType* RxNSduCfgPtr;
    uint32 elapsedTick;
    uint8 unusedchannelId;
    CanTp_ChannelTimerType* channelTimer;
    boolean timeOut = 0u;

    SchM_Enter_CanTp_ExclusiveArea();  
    if (CANTP_LARGE_RECEIVING == RxchannelPtr->RootState)
    {
        channelTimer = &RxchannelPtr->ChannelTimer;
         
        if (CANTP_TIMER_NONE != channelTimer->EnabledTimer)
        {
             
            CanTp_GetTimeSpan(channelTimer->StartTime, &elapsedTick);
            if (channelTimer->RemainTime <= elapsedTick)
            {
                channelTimer->RemainTime = 0;
                 
                RxNSduCfgPtr = CanTp_GetRxSduCfgByNSduId(RxchannelPtr->NSduId, &unusedchannelId);
                if (((void *)0) != RxNSduCfgPtr)
                {
                     
                    if (CANTP_NB != channelTimer->EnabledTimer)
                    {
                        timeOut = 1u;
                    }
                     
                    CANTP_DET_REPORTRUNTIMEERROR((0x06u), (0xB0u));
                }
            }
        }
    }
    SchM_Exit_CanTp_ExclusiveArea();
    if (1u == timeOut)
    {
         
        PduR_TpRxIndication(RxNSduCfgPtr->RxIPduId, 1U);
         
        CanTp_ReleaseRxChannel(RxchannelPtr);
    }
    CanTp_HandleTxTimers(TxSubchannelPtr);
}

 
static  void CanTp_HandleTxTimers(CanTp_ConnectionType* TxSubchannelPtr)
{
    const CanTp_TxNSduType* TxSduCfgPtr;
    uint32 elapsedTick;
    uint8 unusedchannelId;
    CanTp_ChannelTimerType* channelTimer;
    CanTp_STminType* STminTimer;
    boolean timeOut = 0u;

    SchM_Enter_CanTp_ExclusiveArea();  
    if ((CANTP_SF_TRANSIMITTING == TxSubchannelPtr->RootState)
        || (CANTP_LARGE_TRANSMITTING == TxSubchannelPtr->RootState))
    {
         
        STminTimer = &TxSubchannelPtr->STminTimer;
        if ((CANTP_LARGE_TRANSMITTING == TxSubchannelPtr->RootState) && (1u == STminTimer->Started))
        {
            CanTp_GetTimeSpan(STminTimer->StartTime, &elapsedTick);
            if (STminTimer->RemainTime <= elapsedTick)
            {
                STminTimer->RemainTime = 0;
            }
        }  

        channelTimer = &TxSubchannelPtr->ChannelTimer;
         
        if (CANTP_TIMER_NONE != channelTimer->EnabledTimer)
        {
             
            CanTp_GetTimeSpan(channelTimer->StartTime, &elapsedTick);
            if (channelTimer->RemainTime <= elapsedTick)
            {
                channelTimer->RemainTime = 0;
                 
                TxSduCfgPtr = CanTp_GetTxSduCfgByTxSduId(TxSubchannelPtr->NSduId, &unusedchannelId);
                if (((void *)0) != TxSduCfgPtr)
                {
                     
                    if (CANTP_NC != channelTimer->EnabledTimer)
                    {
                        timeOut = 1u;
                    }
                     
                    CANTP_DET_REPORTRUNTIMEERROR((0x06u), (0xB0u));
                }
            }
        }
    }
    if (1u == timeOut)
    {
        
 
        TxSubchannelPtr->RootState = CANTP_IDLE;
         
        CanTp_ReleaseTxChannel(TxSubchannelPtr);
         
        PduR_TpTxConfirmation(TxSduCfgPtr->TxIPduId, 1U);
    }
    SchM_Exit_CanTp_ExclusiveArea();
}












 
static  const CanTp_RxNSduType *
    CanTp_GetRxSduCfgByNSduId(PduIdType CanTpRxSduId, uint8* ChannelId)
{
    uint8 i;
    uint8 j;
    const CanTp_RxNSduType* RxNSduCfgPtr = ((void *)0);
    const CanTp_ChannelType* channelCfgPtr;
    const CanTp_RxNSduType* RxNSdus;

    for (i = 0; (((void *)0) == RxNSduCfgPtr) && (i < CanTp_ConfigPtr->ChannelNum); i++)
    {
        channelCfgPtr = &CanTp_ConfigPtr->CanTpChannel[i];
        for (j = 0; j < channelCfgPtr->RxNSduNum; j++)
        {
            RxNSdus = &channelCfgPtr->RxNSdus[j];
            if (RxNSdus->RxNSduId == CanTpRxSduId)
            {
                RxNSduCfgPtr = RxNSdus;
                *ChannelId = i;
                break;
            }
        }
    }

    return RxNSduCfgPtr;
}

 
static inline  const CanTp_TxNSduType *
    CanTp_GetTxSduCfgByTxSduId(PduIdType TxSduId, uint8* ChannelId)
{
    const CanTp_TxNSduType* TxSduCfgPtr = ((void *)0);
    const CanTp_TxNSduType* TxNSdus;
    const CanTp_ChannelType* channelCfgPtr;
    uint8 i;
    uint8 j;

    for (i = 0; (((void *)0) == TxSduCfgPtr) && (i < 0x1u); i++)
    {
        channelCfgPtr = &CanTp_ConfigPtr->CanTpChannel[i];
        for (j = 0; j < channelCfgPtr->TxNsduNum; j++)
        {
            TxNSdus = &channelCfgPtr->TxNSdus[j];
            if (TxSduId == TxNSdus->TxNSduId)
            {
                TxSduCfgPtr = TxNSdus;
                *ChannelId = i;
                break;
            }
        }
    }
    return TxSduCfgPtr;
}












 
static  const CanTp_TxNSduType *
    CanTp_GetTxSduCfgByTxNPdu(PduIdType CanTpTxPduId, uint8* ChannelId)
{
    const CanTp_TxNSduType* TxSduCfgPtr = ((void *)0);
    const CanTp_ChannelType* channelPtr;
    const CanTp_TxNSduType* TxNSdus;
    uint8 i;
    uint8 j;

    for (i = 0; (((void *)0) == TxSduCfgPtr) && (i < 0x1u); i++)
    {
        channelPtr = &CanTp_ConfigPtr->CanTpChannel[i];
        for (j = 0; j < channelPtr->TxNsduNum; j++)
        {
            TxNSdus = &channelPtr->TxNSdus[j];
            if (CanTpTxPduId == TxNSdus->TxNPduId)
            {
                TxSduCfgPtr = TxNSdus;
                *ChannelId = i;
                break;
            }
        }
    }
    return TxSduCfgPtr;
}












 
static  const CanTp_RxNSduType *
    CanTp_GetRxSduCfgByTxFCNPdu(PduIdType CanTpTxPduId, uint8* ChannelId)
{
    const CanTp_RxNSduType* RxNSduCfgPtr = ((void *)0);
    const CanTp_RxNSduType* RxNSdus;
    const CanTp_ChannelType* channelPtr;
    uint8 i;
    uint8 j;

    for (i = 0; (((void *)0) == RxNSduCfgPtr) && (i < 0x1u); i++)
    {
        channelPtr = &CanTp_ConfigPtr->CanTpChannel[i];
        for (j = 0; j < channelPtr->RxNSduNum; j++)
        {
            RxNSdus = &channelPtr->RxNSdus[j];
            if ((RxNSdus->TxFcNPduId == CanTpTxPduId)
                && ((CANTP_PHYSICAL_RX == RxNSdus->RxTaType)
                    || (CANTP_CANFD_PHYSICAL == RxNSdus->RxTaType)
                        ))
            {
                RxNSduCfgPtr = RxNSdus;
                *ChannelId = i;
                break;
            }
        }
    }
    return RxNSduCfgPtr;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 
static inline  boolean
    CanTP_CheckRxChangeParameter(TPParameterType canTpParam, uint16 value)
{
    boolean paramValid = 0u;

    if (((TP_BS == canTpParam) && (value < 256u)) || ((TP_STMIN == canTpParam) && (value <= 0x7Fu)))
    {
        paramValid = 1u;
    }

    return paramValid;
}

 
