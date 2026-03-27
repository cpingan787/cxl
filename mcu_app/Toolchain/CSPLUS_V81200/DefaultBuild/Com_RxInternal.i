











 












 

   


 












 












 



 


 












 












 


 












































 

 











































































 



 












 












 



 
 




















 
 



 



 
 



 

























































 


 











 
 




















 
 



 



 
 



 


 









































































 


 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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




 
 



 
typedef uint8 Com_RxIPduCounterIdType;

typedef uint8 Com_RxIpduGroupIdType;

typedef uint8 Com_TxIpduGroupIdType;

typedef uint8 Com_RxSigTimeoutIdType;

typedef uint8 Com_RxSigGrpTimeoutIdType;

typedef uint8 Com_GwSourceDescriptionIdType;

typedef uint16 Com_RxSignalIdType;

typedef uint8 Com_RxSignalGroupIdType;

typedef uint8 Com_GwDestinationDescriptionIdType;

typedef uint8 Com_TxSignalIdType;

typedef uint8 Com_TxSignalGroupIdType;

typedef uint8 Com_TxIPduCounterIdType;

typedef uint8 Com_RxSignalInvalidIdType;

typedef uint8 Com_RxSignalFilterIdType;

typedef PduLengthType Com_SignalPositionType;

typedef uint8 Com_TxSignalInvalidIdType;

typedef uint8 Com_TxSignalFilterIdType;

typedef uint8 Com_TxSigErrAndNotifyIdType;

typedef uint8 Com_TxSignalTimeoutIdType;

typedef uint16 Com_RxGroupSignalIdType;

typedef uint8 Com_TxGroupSignalIdType;

typedef uint8 Com_TxSigGrpErrAndNotifyIdType;

typedef uint8 Com_TxSigGrpTimeoutIdType;

typedef uint8 Com_RxGrpSigFilterIdType;

typedef uint8 Com_TxGrpSigFilterIdType;

typedef uint8 Com_DestSignalFilterIdType;

typedef uint16 Com_RxIpduBufIdType;

typedef uint16 Com_TxIpduBufIdType;

typedef uint8 Com_SignalGroupArryIdType;

 
typedef enum
{
    COM_UNINIT = 0u,
    COM_INIT
} Com_StatusType;

 
typedef enum
{
    COM_BIG_ENDIAN = 0u,
    COM_LITTLE_ENDIAN,
    COM_OPAQUE
} Com_SignalEndiannessType;

 
typedef enum
{
    COM_BOOLEAN = 0u,
    COM_FLOAT32,
    COM_FLOAT64,
    COM_SINT16,
    COM_SINT32,
    COM_SINT64,
    COM_SINT8,
    COM_UINT16,
    COM_UINT32,
    COM_UINT64,
    COM_UINT8,
    COM_UINT8_DYN,
    COM_UINT8_N
} Com_SignalType;

 
typedef enum
{
    COM_PENDING = 0u,
    COM_TRIGGERED,
    COM_TRIGGERED_ON_CHANGE,
    COM_TRIGGERED_ON_CHANGE_WITHOUT_REPETITION,
    COM_TRIGGERED_WITHOUT_REPETITION,
    COM_GROUPSIGNAL_TMC_NONE
} Com_TransferPropertyType;

 
typedef enum
{
    COM_FILTER_NONE = 0u,
    COM_ALWAYS,
    COM_MASKED_NEW_DIFFERS_MASKED_OLD,
    COM_MASKED_NEW_DIFFERS_X,
    COM_MASKED_NEW_EQUALS_X,
    COM_NEVER,
    COM_NEW_IS_OUTSIDE,
    COM_NEW_IS_WITHIN,
    COM_ONE_EVERY_N
} Com_FilterAlgorithmType;

typedef enum
{
    COM_TX_MODE_DIRECT = 0u,
    COM_TX_MODE_DIRECT_WITHOUT_REPETITION,
    COM_TX_MODE_MIXED,
    COM_TX_MODE_MIXED_WITHOUT_REPETITION,
    COM_TX_MODE_NONE,
    COM_TX_MODE_PERIODIC
} Com_TxModeModeType;

typedef enum
{
    COM_CONFIRMATION = 0u,
    COM_TRANSMIT,
    COM_TRIGGER_TRANSMIT,
    COM_CLEAR_UP_UNUSED
} Com_TxIPduClearUpdateBitType;

typedef enum
{
    COM_DEFERRED = 0u,
    COM_IMMEDIATE
} Com_IPduSignalProcessingType;

typedef enum
{
    COM_PDU_NORMAL = 0u,
    COM_PDU_TP
} Com_IPduType;

typedef enum
{
    COM_INVALID_ACTION_NOTIFY = 0u,
    COM_INVALID_ACTION_REPLACE,
    COM_INVALID_ACTION_NONE
} Com_DataInvalidActionType;

typedef enum
{
    COM_TIMEOUT_ACTION_NONE = 0u,
    COM_TIMEOUT_ACTION_REPLACE,
    COM_TIMEOUT_ACTION_SUBSTITUTE
} Com_RxDataTimeoutActionType;

typedef enum
{
    COM_TX_SIGNAL = 0u,
    COM_TX_GROUP_SIGNAL,
    COM_TX_DESCRIPTION,
    COM_RX_SIGNAL,
    COM_RX_GROUP_SIGNAL,
    COM_RX_DESCRIPTION,
} Com_SignalConfigType;

 
typedef uint16 Com_SignalIdType;

 
typedef uint16 Com_SignalGroupIdType;

 
typedef uint16 Com_IpduGroupIdType;

typedef uint8 Com_MainFunctionType;

typedef uint8 Com_IpduGroupVector[((2u - 1u) / 8u) + 1u];

 
typedef struct
{
    void (*ComIPduCounterErrorNotification)
    (PduIdType ComPduId, uint8 ExpectedCounter, uint8 ReceivedCounter);
    uint32 ComIPduCounterStartPosition;
    uint8 ComIPduCounterSize;  
    uint8 ComIPduCounterThreshold;
    uint8 ComIPduMaxCounter;
} Com_IPduCounterType;

 
typedef struct
{
    uint8 ComIPduReplicationQuorum;
} Com_IPduReplicationType;

typedef struct
{
    Com_SignalIdType ComGwDestSignalId;
    Com_MainFunctionType ComMainFunctionId;
    Com_SignalConfigType ComGwDestSignalType;
} Com_GwDestType;

 
typedef struct
{
    Com_SignalIdType ComGwSourceSignalId;
    Com_SignalIdType ComGwDestSignalStartId;
    Com_SignalIdType ComGwDestNumber;
    Com_SignalConfigType ComGwSourceSignalType;
} Com_GwMappingType;

 
typedef struct
{
    uint16 ComSigLsbBytePos;
    uint16 ComSignalLength;
    uint16 ComGwIPduRef;
    uint16 GWSignalBufferId;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
} Com_GwSourceSignalType;

 

typedef uint64 Com_FilterMaskType;

typedef uint64 Com_FilterXType;

typedef struct
{
    Com_FilterMaskType ComFilterMask;
    Com_FilterXType ComFilterX;
} Com_FilterMaskNewDifEquXType;

typedef uint64 Com_FilterMaxType;
typedef uint64 Com_FilterMinType;

typedef struct
{
    Com_FilterMaxType ComFilterMax;
    Com_FilterMinType ComFilterMin;
} Com_FilterNewIsWithinOutsideType;

typedef struct
{
    Com_SignalIdType ComFilterOffset;
    Com_SignalIdType ComFilterPeriod;
} Com_FilterONEEVERYNType;

 
typedef struct
{
    uint16 ComGwIPduRef;
    uint16 ComSignalLength;
    uint16 ComSignalInitValueId;
    uint16 ComSignalDataInitValueLength;
    Com_SignalPositionType ComSigLsbBytePos;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_TransferPropertyType ComTransferProperty;
    Com_SignalType ComSignalType;
} Com_GwDestSignalType;

typedef void (*Com_RxTimeoutNotificationType)(void);
typedef void (*Com_RxInvalidNotificationType)(void);

typedef struct
{
    boolean (*ComIPduCallout)
    (PduIdType PduId, const PduInfoType * PduInfoPtr);
    PduLengthType IPduNoDynSignalLength;
    PduLengthType IPduMaxDynSignalLength;
    uint16 ComRxIPduDMFirstTimeout;
    uint16 ComRxIPduDMTimeout;
    Com_RxIpduBufIdType ComRxIPduBufIndex;
    Com_RxSignalIdType ComIpduSignalRefStartId;
    Com_RxSignalIdType ComIPduSignalsRefNumber;
    Com_RxIpduGroupIdType ComIPduGroupsRefStartId;
    Com_RxIpduGroupIdType ComIPduGroupsRefNumber;
    Com_RxSigTimeoutIdType ComIPduSignalsTimeoutRefStartId;
    Com_RxSigTimeoutIdType ComIPduSignalsTimeoutRefNumber;
    Com_RxSignalGroupIdType ComIPduSignalGroupsRefStartId;
    Com_RxSignalGroupIdType ComIPduSignalGroupsRefNumber;
    Com_RxSigGrpTimeoutIdType ComIPduSignalGroupsTimeoutRefStartId;
    Com_RxSigGrpTimeoutIdType ComIPduSignalGroupsTimeoutRefNumber;
    uint8 MetaDataLength;
    boolean ComIPduCancellationSupport;
    Com_IPduSignalProcessingType ComIPduSignalProcessing;
    Com_IPduType ComIPduType;
} Com_RxIPduType;

 
typedef uint8 Com_TxModeNumberOfRepetitionsType;
typedef uint16 Com_TxModeRepetitionPeriodType;
typedef uint16 Com_TxModeTimeOffsetType;
typedef uint16 Com_TxModeTimePeriodType;

typedef struct
{
    Com_TxModeTimeOffsetType ComTxModeTimeOffset;
    Com_TxModeTimePeriodType ComTxModeTimePeriod;
} Com_TxModePeriodType;

typedef struct
{
    Com_TxModeNumberOfRepetitionsType ComTxModeNumberOfRepetitions;
    Com_TxModeRepetitionPeriodType ComTxModeRepetitionPeriod;
} Com_TxModeDirectRepetitionsType;

typedef struct
{
    Com_TxModeTimeOffsetType ComTxModeTimeOffset;
    Com_TxModeTimePeriodType ComTxModeTimePeriod;
    Com_TxModeRepetitionPeriodType ComTxModeRepetitionPeriod;
    Com_TxModeNumberOfRepetitionsType ComTxModeNumberOfRepetitions;
} Com_TxModeMixedRepetitionsType;

typedef struct
{
    boolean (*ComIPduCallout)
    (PduIdType PduId, PduInfoType * PduInfoPtr);
    PduLengthType IPduNoDynSignalLength;
    PduLengthType IPduMaxDynSignalLength;
    uint16 ComTxIpduDM;
    uint16 ComMinimumDelayTime;
    Com_TxIpduBufIdType ComTxIPduBufIndex;
    PduIdType ComPduIdRef;
    PduIdType ComTxModeTrueRefId;
    PduIdType ComTxModeFalseRefId;
    Com_TxSignalIdType ComIpduSignalRefStartId;
    Com_TxSignalIdType ComIPduSignalsRefNumber;
    Com_TxSignalGroupIdType ComIPduSignalGroupsRefStartId;
    Com_TxSignalGroupIdType ComIPduSignalGroupsRefNumber;
    Com_TxIpduGroupIdType ComIPduGroupsRefStartId;
    Com_TxIpduGroupIdType ComIPduGroupsRefNumber;
    Com_TxModeModeType ComTxTrueModeMode;
    Com_TxModeModeType ComTxFalseModeMode;
    uint8 MetaDataLength;
    boolean ComIPduCancellationSupport;
    Com_IPduSignalProcessingType ComIPduSignalProcessing;
    Com_IPduType ComIPduType;
} Com_TxIPduType;

typedef struct
{
    void (*ComNotification)(void);
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 GWSignalBufferId;
    Com_SignalPositionType ComSigLsbBytePos;
    PduIdType ComIpduRefIndex;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalType ComSignalType;
    Com_SignalEndiannessType ComSignalEndianness;
} Com_RxSignalType;

typedef void (*Com_TxTimeoutNotificationType)(void);
typedef void (*Com_ErrorAndNotificationType)(void);
typedef uint8 Com_TxSignalNotifyType;

typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    Com_SignalPositionType ComSigLsbBytePos;
    PduIdType ComIpduRefIndex;
    Com_TxSigErrAndNotifyIdType ComTxSignalErrAndNotifyFncId;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    boolean ComInitialValueOnly;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
    Com_TransferPropertyType ComTransferProperty;
    Com_TxSignalNotifyType ComTxSignalNotificationType;
} Com_TxSignalType;

typedef struct
{
    uint16 ComIPduStartBufIndex;
    uint16 SignalGroupArrayLength;
} Com_SignalGroupArrayType;

typedef struct
{
    void (*ComNotification)(void);
    Com_RxGroupSignalIdType ComGroupSignalRefStartId;
    Com_RxGroupSignalIdType ComGroupSignalRefNumber;
    PduIdType ComIpduRefIndex;
} Com_RxSignalGroupType;

typedef struct
{
    Com_TxGroupSignalIdType ComGroupSignalRefStartId;
    Com_TxGroupSignalIdType ComGroupSignalRefNumber;
    PduIdType ComIpduRefIndex;
    Com_TxSigGrpErrAndNotifyIdType ComTxSigGrpErrAndNotifyFncId;
    Com_TxSignalNotifyType ComTxSignalNotificationType;
    boolean ComInitialValueOnly;
    Com_TransferPropertyType ComTransferProperty;
} Com_TxSignalGroupType;

typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 GWSignalBufferId;
    Com_SignalPositionType ComSigLsbBytePos;
    Com_RxSignalGroupIdType ComSignalGroupRef;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
} Com_RxGroupSignalType;
typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 ComSignalDataInvalidValueLength;
    uint16 ComSignalInvalidBuffRefId;
    Com_SignalPositionType ComSigLsbBytePos;
    Com_TxSignalGroupIdType ComSignalGroupRef;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
    Com_TransferPropertyType ComTransferProperty;
} Com_TxGroupSignalType;
typedef struct
{
    uint16 RxIpduLength;
    uint16 RxIpduBaseDMTimeout;
    PduLengthType RxOffset;
    





 
    uint8 RxIpduRTStFlag;
    uint8 RxIpduDMFlag;
} Com_RxIPduRunTimeStateType;

typedef struct
{
    uint16 TxIpduLength;
    uint16 RptNum;
    uint16 NTimeCnt;
    uint16 DMCnt;
    uint16 PeriodCnt;
    PduLengthType TxOffset;
    





 
    uint8 TxIpduRTStFlag;
    Com_TxModeModeType ipduTxMode;
} Com_TxIPduRunTimeStateType;

typedef struct
{
    uint16 DynamicSignalLength;
    


 
    uint8 TxSigGrpRTStFlag;
} Com_TxSignalGroupRunTimeStateType;

typedef struct
{
    const Com_RxIPduType* ComRxIPdu;
    const Com_TxIPduType* ComTxIPdu;
    const Com_RxSignalType* ComRxSignal;
    const Com_TxSignalType* ComTxSignal;
    const Com_RxSignalGroupType* ComRxSignalGroup;
    const Com_TxSignalGroupType* ComTxSignalGroup;
    const Com_RxGroupSignalType* ComRxGroupSignal;
    const Com_TxGroupSignalType* ComTxGroupSignal;
    const Com_GwMappingType* ComGwMapping;
    const Com_GwSourceSignalType* ComSourceSignal;
    const Com_GwDestSignalType* ComDestSignal;
    const uint16* MainFunctionRxRange;
    const uint16* MainFunctionTxRange;
    Com_SignalIdType ComTxSignalNum;
    Com_SignalIdType ComRxSignalNum;
    PduIdType ComTxPduNum;
    PduIdType ComRxPduNum;
    Com_SignalIdType ComTxGroupSignalNum;
    Com_SignalIdType ComRxGroupSignalNum;
    Com_SignalGroupIdType ComTxSignalGroupNum;
    Com_SignalGroupIdType ComRxSignalGroupNum;
    Com_IpduGroupIdType ComIpduGroupNum;
    Com_MainFunctionType MainFunctionRouteSignalsNum;
    Com_MainFunctionType MainFunctionRxNum;
    Com_MainFunctionType MainFunctionTxNum;
} Com_ConfigType;




 
 


 

 


 






 


 
 
extern const Com_ConfigType * Com_ConfigStd;
 
extern const Com_ConfigType Com_PBConfigData;


 

 










 
 
 











 
 
extern  void Com_Init(const Com_ConfigType * config);
 












 
 
extern  void Com_DeInit(void);

 











 
 
extern  void Com_IpduGroupControl(Com_IpduGroupVector ipduGroupVector, boolean initialize);
 










 
 
extern  void Com_ReceptionDMControl(Com_IpduGroupVector ipduGroupVector);
 









 
 
extern void Com_EnableReceptionDM(Com_IpduGroupIdType IpduGroupId);
 









 
 
extern void Com_DisableReceptionDM(Com_IpduGroupIdType IpduGroupId);
 











 
 
extern  Com_StatusType Com_GetStatus(void);

 









 
 
extern  void Com_ClearIpduGroupVector(Com_IpduGroupVector ipduGroupVector);
 










 
 
extern  void
    Com_SetIpduGroup(Com_IpduGroupVector ipduGroupVector, Com_IpduGroupIdType ipduGroupId, boolean bitval);
 















 
 
extern  uint8
    Com_SendSignal(Com_SignalIdType SignalId, const void * SignalDataPtr);
 
















 
 
extern  uint8
    Com_SendDynSignal(Com_SignalIdType SignalId, const void * SignalDataPtr, uint16 Length);
 










 
 
extern  uint8
    Com_ReceiveSignal(Com_SignalIdType SignalId, void * SignalDataPtr);
 

















 
 
extern  uint8 Com_ReceiveDynSignal(
    Com_SignalIdType SignalId,
    void * SignalDataPtr,
    uint16 * Length);
 














 
 
extern  uint8 Com_SendSignalGroup(Com_SignalGroupIdType SignalGroupId);
 














 
 
extern  uint8 Com_ReceiveSignalGroup(Com_SignalGroupIdType SignalGroupId);
 















 
 
 











 
 
 














 
 
extern  uint8 Com_InvalidateSignal(Com_SignalIdType SignalId);
 















 
 
extern  uint8 Com_InvalidateSignalGroup(Com_SignalGroupIdType SignalGroupId);
 











 
 
extern  Std_ReturnType Com_TriggerIPDUSend(PduIdType PduId);
 















 
 
extern Std_ReturnType Com_TriggerIPDUSendWithMetaData(PduIdType PduId, uint8* MetaData);

 











 
 
extern  void Com_SwitchIpduTxMode(PduIdType PduId, boolean Mode);
 











 
 
extern void Com_MainFunctionRx(Com_MainFunctionType mainFunctionId);
 










 
 
extern void Com_MainFunctionTx(Com_MainFunctionType mainFunctionId);
 









 
 
extern void Com_MainFunctionRouteSignals(Com_MainFunctionType mainFunctionId);




 
 




















 
 



 












 












 


 



























 

 































 


 












 












 



 
 




















 
 




 
 




















 
 




 



 



 











 




 




 














 




 
 

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




 


 



 














 











 


 


 


 













































 




 














 
void* ILib_memcpy(void*  dstptr, const void*  srcptr, uint32 length);








 
void* ILib_memset(void*  dstptr, uint8 val, uint32 n);








 
uint8 ILib_memcmp(const void*  str1ptr, const void*  str2ptr, uint32 n);




 









 
uint8 ILib_MemHeapInit(void* ram, uint32 size);







 
void* ILib_MemHeapMalloc(void* ram, uint32 size);








 
void* ILib_MemHeapCalloc(void* ram, uint32 count, uint32 size);







 
uint8 ILib_MemHeapFree(void* ram, void* ptr);







 
uint8 ILib_MemHeapGetManageSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetRealMaxSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetUsedSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetCurFreeMaxBlockSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetMaxMallocSize(const void* ram, uint32* size);






























 
   
   
   


























 




























 
   


 



 



 
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








extern void Com_MainFunctionRx_ComMainFunctionRx(void);
extern void Com_MainFunctionTx_ComMainFunctionTx(void);


 
extern void SchM_Enter_Com_MultiCore_Lock(void);
extern void SchM_Exit_Com_MultiCore_Lock(void);
 
extern void SchM_Enter_Com_Context(void);
extern void SchM_Exit_Com_Context(void);















 
 



 


 



 
 

extern boolean Com_IpduGroupDMEnable[2u];
extern boolean Com_IpduGroupEnable[2u];

 
extern Com_RxIPduRunTimeStateType Com_RxIPduRunTimeState[118u];
extern const Com_RxIPduRunTimeStateType Com_RxIPduInitState[118u];

extern Com_TxIPduRunTimeStateType Com_TxIPduRunTimeState[44u];
extern const Com_TxIPduRunTimeStateType Com_TxIPduInitState[44u];

extern const Com_RxIpduGroupIdType Com_RxIPduGroupsRef[118u];



extern const uint16 Com_RxSignalFirstTimeoutVal[6u];
extern const uint16 Com_RxSignalTimeoutVal[6u];
extern const Com_SignalIdType Com_TimeoutRxSignalRef[6u];
extern const Com_RxDataTimeoutActionType Com_RxSignalDataTimeoutActionCfg[6u];
extern const Com_RxTimeoutNotificationType Com_RxSignalTimeoutNotificationCfg[6u];

extern const uint16 Com_RxSigGrpFirstTimeoutVal[1u];
extern const uint16 Com_RxSigGrpTimeoutVal[1u];
extern const Com_RxSignalGroupIdType Com_TimeoutRxSigGrpRef[1u];
extern const Com_RxDataTimeoutActionType Com_RxSigGrpDataTimeoutActionCfg[1u];
extern const Com_RxTimeoutNotificationType Com_RxSigGrpTimeoutNotificationCfg[1u];

extern const Com_TxIpduGroupIdType Com_TxIPduGroupsRef[43u];

extern const Com_TxModePeriodType
    Com_TxModeTruePeriod[30u + 0u];
extern const Com_TxModeDirectRepetitionsType
    Com_TxModeTrueDirectRepetitions[12u];




extern const Com_ErrorAndNotificationType
    Com_TxSignalErrorAndNotification[240u];




extern const Com_ErrorAndNotificationType
    Com_TxSignalGroupErrorAndNotification[8u];




extern uint8 Com_TxIPduRuntimeBuff[542u];
extern const uint8 Com_TxIPduInitValue[542u];

extern uint8 Com_RxIPduRuntimeBuff[1365u];
extern const uint8 Com_RxIPduInitValue[1365u];

extern boolean Com_SignalBoolRuntimeBuff[336u];
extern const boolean Com_SignalBoolInitValue[336u];

extern uint8 Com_Signal8BitRuntimeBuff[817u];
extern const uint8 Com_Signal8BitInitValue[817u];

extern uint16 Com_Signal16BitRuntimeBuff[102u];
extern const uint16 Com_Signal16BitInitValue[102u];

extern uint32 Com_Signal32BitRuntimeBuff[49u];
extern const uint32 Com_Signal32BitInitValue[49u];

extern uint64 Com_Signal64BitRuntimeBuff[26u];
extern const uint64 Com_Signal64BitInitValue[26u];

extern boolean Com_RxGroupSignalBoolShadowBuff[187u];

extern uint8 Com_RxGroupSignal8BitShadowBuff[378u];

extern uint16 Com_RxGroupSignal16BitShadowBuff[23u];

extern uint32 Com_RxGroupSignal32BitShadowBuff[2u];










extern const uint8 Com_Signal8BitInvalidValue[1u];

extern const uint16 Com_Signal16BitInvalidValue[3u];



extern Com_TxSignalGroupRunTimeStateType Com_TxSignalGroupState[8u];

extern uint16 Com_RxSignalTimeOutCnt[6u];

extern uint16 Com_RxSignalGroupTimeOutCnt[1u];









 



 

 
extern  void
    Com_InitSignalBuffer(Com_SignalType SignalType, uint16 SignalInitValueId, uint16 SignalLength);


 
extern  uint64 Com_SignalUnPackHandle(
    Com_SignalType SignalType,
    Com_SignalConfigType SignalConfigType,
    const void* SignalPtr,
    const uint8* IPduBufferPtr);

 
extern  void Com_TxSignalPackHandle(
    Com_SignalConfigType SignalConfigType,
    const void* TxSignalPtr,
    uint64 TxValue,
    uint8* IPduBufferPtr);

 

 


 
extern  void
    Com_TxIpduTMSHandle(Com_TxIPduRunTimeStateType* TxIpduStatePtr, const Com_TxIPduType* TxIpduPtr, uint16* RptNum);

 


 


 

 


 
extern  void Com_TxSignalTMCStateInit(void);


 
extern  void Com_TxSignalGroupTriggerFlagInit(void);

 
extern  void Com_TxIpduController(boolean initialize);


 

 
extern  void Com_ConfirmationProcess(const Com_TxIPduType* TxIpduPtr);
 


 

 
extern  void Com_RxIpduController(boolean initialize);

 


 



 
 
extern  uint8
    Com_SendSignalHandle(Com_SignalIdType SignalId, const void * SignalDataPtr);
 
extern  uint8 Com_SendDynSignalHandle(
    Com_SignalIdType SignalId,
    const void * SignalDataPtr,
    uint16 Length);
 
extern  uint8 Com_SendSignalGroupHandle(Com_SignalGroupIdType SignalGroupId);
 
extern  uint8 Com_InvalidateSignalHandle(Com_SignalIdType SignalId);
 
extern  uint8 Com_InvalidateSignalGroupHandle(Com_SignalGroupIdType SignalGroupId);

 
extern  Std_ReturnType Com_TriggerIPDUSendHandle(PduIdType PduId);
 
 
 
extern void Com_MainFunctionTxHandle(Com_MainFunctionType mainFunctionId);
 
extern  Std_ReturnType
    Com_TriggerTransmitHandle(PduIdType TxPduId, PduInfoType * PduInfoPtr);
 
extern  void Com_TxConfirmationHandle(PduIdType TxPduId);
 


 

 
extern  uint8
    Com_ReceiveGroupSignalHandle(Com_SignalIdType SignalId, void * SignalDataPtr);

 
extern  uint8
    Com_ReceiveSignalHandle(Com_SignalIdType SignalId, void * SignalDataPtr);

 
extern  void Com_ReceiveSignalGroupHandle(PduIdType RxPduId, Com_SignalGroupIdType SignalGroupId);

 

 
extern  void
    Com_RxIndicationHandle(PduIdType RxPduId, const PduInfoType * PduInfoPtr);
 
 
extern void Com_MainFunctionRxHandle(Com_MainFunctionType mainFunctionId);


 
 
 
extern  void Com_RxPduDMCtrHandle(void);



 



 




 



 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   

 

 
static  void
    Com_RxPduHandle(PduIdType RxPduId, const PduInfoType * PduInfoPtr);

 
static  void
    Com_RxSignalGroupTimeOutHandle(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr);

 
static  void Com_ResetRxPduBufferAndSignalBuffer(PduIdType IpduId);

 

 
static  void Com_SignalRxIndication(
    const Com_RxSignalType* RxSignalPtr,
    uint16 RxDynSignalLength,
    Com_RxIpduBufIdType IpduBufferId);

 

 

 
static  void Com_RxSignalHandle(const Com_RxSignalType* RxSignalPtr);

 


 

 


 
static  void Com_RxSignalBuffHandle(uint64 Value, Com_SignalType SignalType, uint16 InitValueId);

 


 


 
static  void Com_SignalGroupRxIndication(
    const Com_RxSignalGroupType* RxSignalGroupPtr,
    uint16 RxDynSignalLength,
    Com_RxIpduBufIdType IpduBufferId);


 
static  void Com_RxGroupSignalBuffHanlde(
    boolean InvalidSignalGroup,
    Com_RxGroupSignalIdType Id,
    Com_RxIpduBufIdType IpduBufferId,
    uint16 RxDynSignalLength);



 
 
static  boolean Com_SignalGroupInvalidCalculate(
    const Com_RxSignalGroupType* RxSignalGroupPtr,
    Com_RxIpduBufIdType IpduBufferId,
    uint16 RxDynSignalLength);

 
static  void
    Com_RxSignalTimeOutHandle(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr);

static  void
    Com_RxIpduBaseDMTimeOutHandle(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr);

static  void
    Com_RxDMTimeOutHandleSignal(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr);

static  void
    Com_RxDMTimeOutHandleSignalGroup(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr);


 
static  void Com_ResetRxPduTimeOut(PduIdType IpduId);

 
static  void Com_DisableRxPduTimeOut(PduIdType IpduId);

 

 
static  void
    Com_ResetUpdateDMTime(PduIdType IpduId, const PduInfoType * PduInfo);

 

 

 
static  void
    Com_CopyPduDataToRxBuffer(PduIdType RxPduId, const PduInfoType * PduInfoPtr);

 
static  void
    Com_IndicationProcess(const Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr);

 

 












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   


 









 
 
 void Com_ReceiveSignalGroupHandle(PduIdType RxPduId, Com_SignalGroupIdType SignalGroupId)
{
    const Com_RxSignalGroupType* rxSignalGroupPtr = &Com_ConfigStd->ComRxSignalGroup[SignalGroupId];
    const Com_RxGroupSignalType* rxGroupSignalPtr;
    Com_RxGroupSignalIdType groupSignalNumber = rxSignalGroupPtr->ComGroupSignalRefNumber;
    Com_RxGroupSignalIdType cnt = rxSignalGroupPtr->ComGroupSignalRefStartId;
    Com_SignalType signalType;
    uint16 signalInitValueId;

    SchM_Enter_Com_Context();
    for (; cnt < groupSignalNumber; ++cnt)
    {
        rxGroupSignalPtr = &Com_ConfigStd->ComRxGroupSignal[cnt];
        signalInitValueId = rxGroupSignalPtr->ComSignalInitValueId;
        signalType = rxGroupSignalPtr->ComSignalType;
        switch (signalType)
        {
        case COM_BOOLEAN:
            Com_RxGroupSignalBoolShadowBuff[signalInitValueId] = Com_SignalBoolRuntimeBuff[signalInitValueId];
            break;
        case COM_SINT8:
        case COM_UINT8:
            Com_RxGroupSignal8BitShadowBuff[signalInitValueId] = Com_Signal8BitRuntimeBuff[signalInitValueId];
            break;
        case COM_SINT16:
        case COM_UINT16:
            Com_RxGroupSignal16BitShadowBuff[signalInitValueId] = Com_Signal16BitRuntimeBuff[signalInitValueId];
            break;
        case COM_SINT32:
        case COM_UINT32:
        case COM_FLOAT32:
            Com_RxGroupSignal32BitShadowBuff[signalInitValueId] = Com_Signal32BitRuntimeBuff[signalInitValueId];
            break;
        default:
             
            break;
        }
    }
    SchM_Exit_Com_Context();
    (void)(RxPduId);
    return;
}

 









 
 
 uint8
Com_ReceiveGroupSignalHandle(Com_SignalIdType SignalId, void * SignalDataPtr)
{
    const Com_RxGroupSignalType* rxGroupSignalPtr = &Com_ConfigStd->ComRxGroupSignal[SignalId - 443u];
    Com_RxSignalGroupIdType signalGroupId = rxGroupSignalPtr->ComSignalGroupRef;
    PduIdType ipduRef = Com_ConfigStd->ComRxSignalGroup[signalGroupId].ComIpduRefIndex;
    const Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[ipduRef];
    uint16 signalInitValueId;
    uint8 ret = ((uint8)0x80u);

     
    uint8 Receiving = rxIpduStatePtr->RxIpduRTStFlag & 0x4u;
    if (0x4u != Receiving)
    {
        signalInitValueId = rxGroupSignalPtr->ComSignalInitValueId;
         
        switch (rxGroupSignalPtr->ComSignalType)
        {
        case COM_BOOLEAN:
            *((boolean*)SignalDataPtr) = Com_RxGroupSignalBoolShadowBuff[signalInitValueId];
            break;
        case COM_UINT8:
        case COM_SINT8:
            *((uint8*)SignalDataPtr) = Com_RxGroupSignal8BitShadowBuff[signalInitValueId];
            break;
        case COM_UINT16:
        case COM_SINT16:
            *((uint16*)SignalDataPtr) = Com_RxGroupSignal16BitShadowBuff[signalInitValueId];
            break;
        case COM_SINT32:
        case COM_UINT32:
            *((uint32*)SignalDataPtr) = Com_RxGroupSignal32BitShadowBuff[signalInitValueId];
            break;
        case COM_FLOAT32:
            *((float32*)SignalDataPtr) = *(float32*)(&Com_RxGroupSignal32BitShadowBuff[signalInitValueId]);
            break;
        default:
             
            break;
        }
         
        uint8 activeEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x1u;
        if (0x1u == activeEnable)
        {
            ret = 0U;
        }
    }
    else
    {
        ret = ((uint8)0x81u);
    }
    (void)(SignalDataPtr);
    return ret;
}

 









 
 
 uint8
Com_ReceiveSignalHandle(Com_SignalIdType SignalId, void * SignalDataPtr)
{
    const Com_RxSignalType* rxSignalPtr = &Com_ConfigStd->ComRxSignal[SignalId];
    uint8 ret = ((uint8)0x80u);
    PduIdType ipduRef = rxSignalPtr->ComIpduRefIndex;
    const Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[ipduRef];
    uint16 signalInitValueId;

     
    uint8 Receiving = rxIpduStatePtr->RxIpduRTStFlag & 0x4u;
    if (0x4u != Receiving)
    {
        signalInitValueId = rxSignalPtr->ComSignalInitValueId;
         
        SchM_Enter_Com_Context();
        switch (rxSignalPtr->ComSignalType)
        {
        case COM_BOOLEAN:
            *((boolean*)SignalDataPtr) = Com_SignalBoolRuntimeBuff[signalInitValueId];
            break;
        case COM_UINT8:
        case COM_SINT8:
            *((uint8*)SignalDataPtr) = Com_Signal8BitRuntimeBuff[signalInitValueId];
            break;
        case COM_UINT16:
        case COM_SINT16:
            *((uint16*)SignalDataPtr) = Com_Signal16BitRuntimeBuff[signalInitValueId];
            break;
        case COM_SINT32:
        case COM_UINT32:
            *((uint32*)SignalDataPtr) = Com_Signal32BitRuntimeBuff[signalInitValueId];
            break;
        case COM_FLOAT32:
            (void)ILib_memcpy(SignalDataPtr, &Com_Signal32BitRuntimeBuff[signalInitValueId], sizeof(float32));
            break;
        case COM_SINT64:
        case COM_UINT64:
            *((uint64*)SignalDataPtr) = Com_Signal64BitRuntimeBuff[signalInitValueId];
            break;
        case COM_FLOAT64:
            (void)ILib_memcpy(SignalDataPtr, &Com_Signal64BitRuntimeBuff[signalInitValueId], sizeof(float64));
            break;
        default:
             
            break;
        }
        SchM_Exit_Com_Context();
         
        uint8 activeEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x1u;
        if (0x1u == activeEnable)
        {
            ret = 0U;
        }
    }
    else
    {
        ret = ((uint8)0x81u);
    }
    (void)(SignalDataPtr);
    return ret;
}

 









 
 
static  void
    Com_RxPduHandle(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[RxPduId];
    Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[RxPduId];

    boolean ret = 1u;
    if (((void *)0) != rxIpduPtr->ComIPduCallout)
    {
        ret = rxIpduPtr->ComIPduCallout(RxPduId, PduInfoPtr);
    }
    if (ret)
    {
         
        {
            rxIpduStatePtr->RxIpduRTStFlag |= 0x8u;
        }
    }
    (void)(PduInfoPtr);
    return;
}

 









 
 
static  void
    Com_RxSignalGroupTimeOutHandle(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr)
{
    const Com_RxSignalGroupType* rxSignalGroupPtr;
    Com_RxSignalGroupIdType rxSignalGroupId;
    Com_RxGroupSignalIdType groupSignalNumber, groupSignalId;
    Com_RxSigGrpTimeoutIdType ipduSignalGroupTimeoutNumber = RxIpduPtr->ComIPduSignalGroupsTimeoutRefNumber;
    Com_RxSigGrpTimeoutIdType counter = RxIpduPtr->ComIPduSignalGroupsTimeoutRefStartId;

    for (; counter < ipduSignalGroupTimeoutNumber; ++counter)
    {
        rxSignalGroupId = Com_TimeoutRxSigGrpRef[counter];
        rxSignalGroupPtr = &Com_ConfigStd->ComRxSignalGroup[rxSignalGroupId];
        if (Com_RxSignalGroupTimeOutCnt[counter] > 0u)
        {
            Com_RxSignalGroupTimeOutCnt[counter] -= 1u;
            if (0u == Com_RxSignalGroupTimeOutCnt[counter])
            {
                groupSignalNumber = rxSignalGroupPtr->ComGroupSignalRefNumber;
                groupSignalId = rxSignalGroupPtr->ComGroupSignalRefStartId;
                if (((void *)0) != Com_RxSigGrpTimeoutNotificationCfg[counter])
                {
                    Com_RxSigGrpTimeoutNotificationCfg[counter]();
                }
                Com_RxSignalGroupTimeOutCnt[counter] = Com_RxSigGrpTimeoutVal[counter];
            }
        }
    }
}

 











 
 
 










 
 
static  void Com_ResetRxPduBufferAndSignalBuffer(PduIdType IpduId)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[IpduId];
    Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[IpduId];
    uint16 signalInitValueId;
    Com_SignalType signalType;
    uint16 signalLength;
     
    Com_RxIpduBufIdType pduBufferId = rxIpduPtr->ComRxIPduBufIndex;
    uint16 initPduLength = Com_RxIPduInitState[IpduId].RxIpduLength;
    SchM_Enter_Com_Context();
     
    (void)ILib_memcpy(&Com_RxIPduRuntimeBuff[pduBufferId], &Com_RxIPduInitValue[pduBufferId], initPduLength);
    SchM_Exit_Com_Context();
     
    Com_RxSignalIdType ipduSignalRefNumber, cnt;
    const Com_RxSignalType* rxSignalPtr;
    ipduSignalRefNumber = rxIpduPtr->ComIPduSignalsRefNumber;
    cnt = rxIpduPtr->ComIpduSignalRefStartId;
    for (; cnt < ipduSignalRefNumber; ++cnt)
    {
        rxSignalPtr = &Com_ConfigStd->ComRxSignal[cnt];
        signalInitValueId = rxSignalPtr->ComSignalInitValueId;
        signalType = rxSignalPtr->ComSignalType;
        {
            signalLength = 0u;
        }
        Com_InitSignalBuffer(signalType, signalInitValueId, signalLength);
    }
 
    Com_RxSignalGroupIdType ipduSignalGroupNumber, counter;
    Com_RxGroupSignalIdType groupSignalNumber, groupSignalId;
    const Com_RxSignalGroupType* rxSignalGroupPtr;
    const Com_RxGroupSignalType* rxGroupSignalPtr;
    ipduSignalGroupNumber = rxIpduPtr->ComIPduSignalGroupsRefNumber;
    counter = rxIpduPtr->ComIPduSignalGroupsRefStartId;
    for (; counter < ipduSignalGroupNumber; ++counter)
    {
        rxSignalGroupPtr = &Com_ConfigStd->ComRxSignalGroup[counter];
        groupSignalNumber = rxSignalGroupPtr->ComGroupSignalRefNumber;
        groupSignalId = rxSignalGroupPtr->ComGroupSignalRefStartId;
        for (; groupSignalId < groupSignalNumber; ++groupSignalId)
        {
            rxGroupSignalPtr = &Com_ConfigStd->ComRxGroupSignal[groupSignalId];
            signalInitValueId = rxGroupSignalPtr->ComSignalInitValueId;
            signalType = rxGroupSignalPtr->ComSignalType;


            {
                signalLength = 0u;
            }
            Com_InitSignalBuffer(signalType, signalInitValueId, signalLength);
        }
    }


    rxIpduStatePtr->RxIpduRTStFlag &= 0xFBu;
    rxIpduStatePtr->RxIpduRTStFlag &= 0xF7u;
    rxIpduStatePtr->RxIpduLength = Com_RxIPduInitState[IpduId].RxIpduLength;
}


 










 
 
static  void Com_SignalRxIndication(
    const Com_RxSignalType* RxSignalPtr,
    uint16 RxDynSignalLength,
    Com_RxIpduBufIdType IpduBufferId)
{
    {
        Com_RxSignalHandle(RxSignalPtr);
    }

}



 











 
 
static  void Com_RxSignalHandle(const Com_RxSignalType* RxSignalPtr)
{
    uint16 initValueId = RxSignalPtr->ComSignalInitValueId;
    Com_SignalType signalType = RxSignalPtr->ComSignalType;
    
 
    Com_RxIpduBufIdType ipduBufferIndex = Com_ConfigStd->ComRxIPdu[RxSignalPtr->ComIpduRefIndex].ComRxIPduBufIndex;
    uint64 unPackValue = Com_SignalUnPackHandle(
        signalType,
        COM_RX_SIGNAL,
        RxSignalPtr,
        &Com_RxIPduRuntimeBuff[ipduBufferIndex]);
 

 
    {
        {
             
            Com_RxSignalBuffHandle(unPackValue, signalType, initValueId);

 
            if (((void *)0) != RxSignalPtr->ComNotification)
            {
                RxSignalPtr->ComNotification();
            }
        }
    }
    return;
}



 











 
 
static  void Com_RxSignalBuffHandle(uint64 Value, Com_SignalType SignalType, uint16 InitValueId)
{
    switch (SignalType)
    {
    case COM_BOOLEAN:
        Com_SignalBoolRuntimeBuff[InitValueId] = (Value == 1ULL) ? 1u : 0u;
        break;
    case COM_SINT8:
    case COM_UINT8:
        Com_Signal8BitRuntimeBuff[InitValueId] = (uint8)Value;
        break;
    case COM_SINT16:
    case COM_UINT16:
        Com_Signal16BitRuntimeBuff[InitValueId] = (uint16)Value;
        break;
    case COM_SINT32:
    case COM_UINT32:
    case COM_FLOAT32:
        Com_Signal32BitRuntimeBuff[InitValueId] = (uint32)Value;
        break;
    case COM_SINT64:
    case COM_UINT64:
    case COM_FLOAT64:
        Com_Signal64BitRuntimeBuff[InitValueId] = (uint64)Value;
        break;
    default:
         
        break;
    }
    (void)(Value);
    (void)(InitValueId);
    return;
}


 










 
 
static  void Com_SignalGroupRxIndication(
    const Com_RxSignalGroupType* RxSignalGroupPtr,
    uint16 RxDynSignalLength,
    Com_RxIpduBufIdType IpduBufferId)
{
    boolean normalRxIndication = 0u;
     
    boolean signalGroupInvalid = Com_SignalGroupInvalidCalculate(RxSignalGroupPtr, IpduBufferId, RxDynSignalLength);
 
    if ((!signalGroupInvalid) || (normalRxIndication == 1u))    
    {
        {
            Com_RxGroupSignalIdType groupSignalNumber = RxSignalGroupPtr->ComGroupSignalRefNumber;
            Com_RxGroupSignalIdType counter = RxSignalGroupPtr->ComGroupSignalRefStartId;
             
            for (; counter < groupSignalNumber; ++counter)
            {
                Com_RxGroupSignalBuffHanlde(signalGroupInvalid, counter, IpduBufferId, RxDynSignalLength);
            }
            
 
            if (((void *)0) != RxSignalGroupPtr->ComNotification)
            {
                RxSignalGroupPtr->ComNotification();
            }
        }
    }

    return;
}

 










 
 
static  void Com_RxGroupSignalBuffHanlde(
    boolean InvalidSignalGroup,
    Com_RxGroupSignalIdType Id,
    Com_RxIpduBufIdType IpduBufferId,
    uint16 RxDynSignalLength)
{
    const Com_RxGroupSignalType* rxGroupSignalPtr = &Com_ConfigStd->ComRxGroupSignal[Id];
    uint16 initValueId = rxGroupSignalPtr->ComSignalInitValueId;
    Com_SignalType signalType = rxGroupSignalPtr->ComSignalType;


     
    {
        {
            uint64 value = Com_SignalUnPackHandle(
                signalType,
                COM_RX_GROUP_SIGNAL,
                rxGroupSignalPtr,
                &Com_RxIPduRuntimeBuff[IpduBufferId]);
            Com_RxSignalBuffHandle(value, signalType, initValueId);
        }
    }
    (void)(RxDynSignalLength);
    (void)(InvalidSignalGroup);
    return;
}




 










 
 
static  boolean Com_SignalGroupInvalidCalculate(
    const Com_RxSignalGroupType* RxSignalGroupPtr,
    Com_RxIpduBufIdType IpduBufferId,
    uint16 RxDynSignalLength)
{
    boolean signalGroupInvalid = 0u;
    uint16 gwSignalBufferId;
    uint16 signalLength;
    uint64 unPackValue;
    Com_SignalType signalType;
    const Com_RxGroupSignalType* rxGroupSignalPtr;
    Com_RxGroupSignalIdType groupSignalNumber = RxSignalGroupPtr->ComGroupSignalRefNumber;
    Com_RxGroupSignalIdType cnt = RxSignalGroupPtr->ComGroupSignalRefStartId;

    for (; cnt < groupSignalNumber; ++cnt)
    {
        rxGroupSignalPtr = &Com_ConfigStd->ComRxGroupSignal[cnt];
        signalType = rxGroupSignalPtr->ComSignalType;

        {
            unPackValue = Com_SignalUnPackHandle(
                signalType,
                COM_RX_GROUP_SIGNAL,
                rxGroupSignalPtr,
                &Com_RxIPduRuntimeBuff[IpduBufferId]);

        }

    }
    (void)(RxDynSignalLength);
    return signalGroupInvalid;
}

 









 
 
static  void
    Com_RxSignalTimeOutHandle(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr)
{
    uint16* rxSignalTimeoutCnt;
    Com_RxSigTimeoutIdType ipduSignalTimeoutRefNumber = RxIpduPtr->ComIPduSignalsTimeoutRefNumber;
    Com_RxSigTimeoutIdType cnt = RxIpduPtr->ComIPduSignalsTimeoutRefStartId;
    for (; cnt < ipduSignalTimeoutRefNumber; ++cnt)
    {
        rxSignalTimeoutCnt = &Com_RxSignalTimeOutCnt[cnt];
        if (*rxSignalTimeoutCnt > 0u)
        {
            *rxSignalTimeoutCnt -= 1u;
            if (0u == *rxSignalTimeoutCnt)
            {
 
                 
                if (((void *)0) != Com_RxSignalTimeoutNotificationCfg[cnt])
                {
                    Com_RxSignalTimeoutNotificationCfg[cnt]();
                }
                *rxSignalTimeoutCnt = Com_RxSignalTimeoutVal[cnt];
            }
        }
    }
    (void)(RxIpduStatePtr);
    return;
}

 









 
 
static  void
    Com_RxIpduBaseDMTimeOutHandle(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr)
{
    if (RxIpduStatePtr->RxIpduBaseDMTimeout > 0u)
    {
        RxIpduStatePtr->RxIpduBaseDMTimeout -= 1u;
        if (0u == RxIpduStatePtr->RxIpduBaseDMTimeout)
        {
            Com_RxDMTimeOutHandleSignal(RxIpduStatePtr, RxIpduPtr);

            Com_RxDMTimeOutHandleSignalGroup(RxIpduStatePtr, RxIpduPtr);
            RxIpduStatePtr->RxIpduBaseDMTimeout = RxIpduPtr->ComRxIPduDMTimeout;
        }
    }
}

 









 
 
static  void
    Com_RxDMTimeOutHandleSignal(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr)
{
    const Com_RxSignalType* rxSignalPtr;
    Com_RxSigTimeoutIdType ipduSignalTimeoutRefNumber, cnt;
    Com_SignalIdType rxSignalId;
    ipduSignalTimeoutRefNumber = RxIpduPtr->ComIPduSignalsTimeoutRefNumber;
    cnt = RxIpduPtr->ComIPduSignalsTimeoutRefStartId;
    for (; cnt < ipduSignalTimeoutRefNumber; ++cnt)
    {
        rxSignalId = Com_TimeoutRxSignalRef[cnt];
        rxSignalPtr = &Com_ConfigStd->ComRxSignal[rxSignalId];
        {
            if (Com_RxSignalTimeoutVal[cnt] > 0u)
            {
 

                if (((void *)0) != Com_RxSignalTimeoutNotificationCfg[cnt])
                {
                    Com_RxSignalTimeoutNotificationCfg[cnt]();
                }
            }
        }
    }
    (void)(RxIpduStatePtr);
}

 









 
 
static  void
    Com_RxDMTimeOutHandleSignalGroup(Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr)
{
    Com_RxSigGrpTimeoutIdType ipduSignalGroupTimeoutNumber = RxIpduPtr->ComIPduSignalGroupsTimeoutRefNumber;
    Com_RxSigGrpTimeoutIdType counter = RxIpduPtr->ComIPduSignalGroupsTimeoutRefStartId;
    for (; counter < ipduSignalGroupTimeoutNumber; ++counter)
    {
        Com_RxSignalGroupIdType rxSignalGroupId = Com_TimeoutRxSigGrpRef[counter];
        const Com_RxSignalGroupType* rxSignalGroupPtr = &Com_ConfigStd->ComRxSignalGroup[rxSignalGroupId];
 
        {
            if (Com_RxSigGrpTimeoutVal[counter] > 0u)
            {
                Com_RxGroupSignalIdType groupSignalNumber = rxSignalGroupPtr->ComGroupSignalRefNumber;
                Com_RxGroupSignalIdType groupSignalId = rxSignalGroupPtr->ComGroupSignalRefStartId;
                 
                if (((void *)0) != Com_RxSigGrpTimeoutNotificationCfg[counter])
                {
                    Com_RxSigGrpTimeoutNotificationCfg[counter]();
                }
            }
        }
    }
}

 











 
 
static  void Com_ResetRxPduTimeOut(PduIdType IpduId)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[IpduId];
    uint8 rxDMFlag = 0u;

    Com_RxSigTimeoutIdType ipduSignalTimeoutRefNumber = rxIpduPtr->ComIPduSignalsTimeoutRefNumber;
    Com_RxSigTimeoutIdType cnt = rxIpduPtr->ComIPduSignalsTimeoutRefStartId;
    for (; cnt < ipduSignalTimeoutRefNumber; ++cnt)
    {
        {
            rxDMFlag |= (4u);
            break;
        }
    }
    Com_RxSigGrpTimeoutIdType ipduSignalGroupTimeoutNumber = rxIpduPtr->ComIPduSignalGroupsTimeoutRefNumber;
    Com_RxSigGrpTimeoutIdType counter = rxIpduPtr->ComIPduSignalGroupsTimeoutRefStartId;
    for (; counter < ipduSignalGroupTimeoutNumber; ++counter)
    {
        {
            rxDMFlag |= (4u);
            break;
        }
    }

    if (rxDMFlag > 0u)
    {
        Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[IpduId];
        if ((4u) == (rxDMFlag & (4u)))
        {
            rxIpduStatePtr->RxIpduBaseDMTimeout = rxIpduPtr->ComRxIPduDMFirstTimeout;
        }
        {
            (rxIpduStatePtr->RxIpduDMFlag) = ((uint8)(0u));
            (rxIpduStatePtr->RxIpduDMFlag) = ((uint8)((rxIpduStatePtr->RxIpduDMFlag) | (uint8)((8u))));
        }
    }
}

 










 
 
static  void Com_DisableRxPduTimeOut(PduIdType IpduId)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[IpduId];
    Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[IpduId];
    Com_RxSigTimeoutIdType ipduSignalTimeoutRefNumber, cnt;
    ipduSignalTimeoutRefNumber = rxIpduPtr->ComIPduSignalsTimeoutRefNumber;
    cnt = rxIpduPtr->ComIPduSignalsTimeoutRefStartId;
    for (; cnt < ipduSignalTimeoutRefNumber; ++cnt)
    {
        Com_RxSignalTimeOutCnt[cnt] = 0u;
    }
    Com_RxSigGrpTimeoutIdType ipduSignalGroupTimeoutNumber, counter;
    ipduSignalGroupTimeoutNumber = rxIpduPtr->ComIPduSignalGroupsTimeoutRefNumber;
    counter = rxIpduPtr->ComIPduSignalGroupsTimeoutRefStartId;
    for (; counter < ipduSignalGroupTimeoutNumber; ++counter)
    {
        Com_RxSignalGroupTimeOutCnt[counter] = 0u;
    }

    (rxIpduStatePtr->RxIpduDMFlag) = ((uint8)(0u));
    rxIpduStatePtr->RxIpduBaseDMTimeout = 0u;
}

 










 
 
static  void
    Com_ResetUpdateDMTime(PduIdType IpduId, const PduInfoType * PduInfo)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[IpduId];
    Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[IpduId];
    uint8 rxDMFlag = 0u;

    Com_RxSigTimeoutIdType ipduSignalTimeoutRefNumber, cnt;
    ipduSignalTimeoutRefNumber = rxIpduPtr->ComIPduSignalsTimeoutRefNumber;
    cnt = rxIpduPtr->ComIPduSignalsTimeoutRefStartId;
    for (; cnt < ipduSignalTimeoutRefNumber; ++cnt)
    {
        {
            rxDMFlag |= (4u);
            break;
        }
    }
    Com_RxSigGrpTimeoutIdType ipduSignalGroupTimeoutNumber, counter;
    ipduSignalGroupTimeoutNumber = rxIpduPtr->ComIPduSignalGroupsTimeoutRefNumber;
    counter = rxIpduPtr->ComIPduSignalGroupsTimeoutRefStartId;
    for (; counter < ipduSignalGroupTimeoutNumber; ++counter)
    {
        {
            rxDMFlag |= (4u);
            break;
        }
    }

    if (rxDMFlag > 0u)
    {
        if ((4u) == (rxDMFlag & (4u)))
        {
            rxIpduStatePtr->RxIpduBaseDMTimeout = rxIpduPtr->ComRxIPduDMTimeout;
        }
        {
            (rxIpduStatePtr->RxIpduDMFlag) = ((uint8)(0u));
            (rxIpduStatePtr->RxIpduDMFlag) = ((uint8)((rxIpduStatePtr->RxIpduDMFlag) | (uint8)((8u))));
        }
    }
    (void)(PduInfo);
    return;
}


 









 
 
static  void
    Com_CopyPduDataToRxBuffer(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[RxPduId];
    SchM_Enter_Com_Context();
    Com_RxIpduBufIdType pduBufferPos = rxIpduPtr->ComRxIPduBufIndex;
     
    (void)ILib_memcpy(&Com_RxIPduRuntimeBuff[pduBufferPos], &PduInfoPtr->SduDataPtr[0], PduInfoPtr->SduLength);
    SchM_Exit_Com_Context();

     
    Com_RxIPduRunTimeState[RxPduId].RxIpduLength = (uint16)PduInfoPtr->SduLength;
    return;
}
 









 
 
static  void
    Com_IndicationProcess(const Com_RxIPduRunTimeStateType* RxIpduStatePtr, const Com_RxIPduType* RxIpduPtr)
{
    uint16 rxDynSignalLength = RxIpduStatePtr->RxIpduLength - (uint16)RxIpduPtr->IPduNoDynSignalLength;
    Com_RxIpduBufIdType ipduBufferId = RxIpduPtr->ComRxIPduBufIndex;

 
    Com_RxSignalIdType ipduSignalRefNumber, cnt;
    const Com_RxSignalType* rxSignalPtr;
    ipduSignalRefNumber = RxIpduPtr->ComIPduSignalsRefNumber;
    cnt = RxIpduPtr->ComIpduSignalRefStartId;
    for (; cnt < ipduSignalRefNumber; ++cnt)
    {
        rxSignalPtr = &Com_ConfigStd->ComRxSignal[cnt];
        {
            Com_SignalRxIndication(rxSignalPtr, rxDynSignalLength, ipduBufferId);
        }
    }
    Com_RxSignalGroupIdType ipduSignalGroupNumber, counter;
    const Com_RxSignalGroupType* rxSignalGroupPtr;
    ipduSignalGroupNumber = RxIpduPtr->ComIPduSignalGroupsRefNumber;
    counter = RxIpduPtr->ComIPduSignalGroupsRefStartId;
    for (; counter < ipduSignalGroupNumber; ++counter)
    {
        rxSignalGroupPtr = &Com_ConfigStd->ComRxSignalGroup[counter];
        {
            Com_SignalGroupRxIndication(rxSignalGroupPtr, rxDynSignalLength, ipduBufferId);
        }
    }
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   


 









 
 
 void
Com_RxIpduController(boolean initialize)
{
    Com_RxIPduRunTimeStateType* rxIpduStatePtr;
    const Com_RxIPduType* rxIpduPtr;
    PduIdType ipduCnt;
    Com_IpduGroupIdType ipduGroupRefNumber;
    Com_IpduGroupIdType index;
    Com_IpduGroupIdType ipduGroupId;
    uint8 activeEnable;

    for (ipduCnt = 0u; ipduCnt < 118u; ++ipduCnt)
    {
        {
            rxIpduPtr = &Com_ConfigStd->ComRxIPdu[ipduCnt];
            ipduGroupRefNumber = rxIpduPtr->ComIPduGroupsRefNumber;
             
            if (ipduGroupRefNumber > 0u)
            {
                index = rxIpduPtr->ComIPduGroupsRefStartId;
                rxIpduStatePtr = &Com_RxIPduRunTimeState[ipduCnt];
                activeEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x1u;
                for (; index < ipduGroupRefNumber; ++index)
                {
                    ipduGroupId = Com_RxIPduGroupsRef[index];
                    if (Com_IpduGroupEnable[ipduGroupId])
                    {
                        break;
                    }
                }
                 
                if (index < ipduGroupRefNumber)
                {
                     
                    if (0x1u != activeEnable)
                    {
                        SchM_Enter_Com_MultiCore_Lock();
                        rxIpduStatePtr->RxIpduRTStFlag |= 0x1u;
                        SchM_Exit_Com_MultiCore_Lock();
 
                        Com_ResetRxPduTimeOut(ipduCnt);
 
                        if (initialize)
                        {
                            
 
                            Com_ResetRxPduBufferAndSignalBuffer(ipduCnt);
                        }
                    }
                }
                else
                {
                    if (0x1u == activeEnable)
                    {
                        SchM_Enter_Com_MultiCore_Lock();
                        rxIpduStatePtr->RxIpduRTStFlag &= 0xFEu;
                        SchM_Exit_Com_MultiCore_Lock();
 
                        Com_DisableRxPduTimeOut(ipduCnt);
                    }
                }
            }
        }
    }
}

 









 
 
uint8 TestactiveEnable = 0;
 void
Com_RxIndicationHandle(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
    const Com_RxIPduType* rxIpduPtr = &Com_ConfigStd->ComRxIPdu[RxPduId];
    const Com_RxIPduRunTimeStateType* rxIpduStatePtr = &Com_RxIPduRunTimeState[RxPduId];
    uint16 minPduLength = (uint16)rxIpduPtr->IPduNoDynSignalLength;
    uint16 maxPduLength = minPduLength + (uint16)rxIpduPtr->IPduMaxDynSignalLength;
    uint8 activeEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x1u;
    TestactiveEnable = activeEnable;
     
    if ((0x1u == activeEnable) && (PduInfoPtr->SduLength >= minPduLength)
        && (PduInfoPtr->SduLength <= maxPduLength))
    {
        uint8 DMEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x2u;
        if (0x2u == DMEnable)
        {
            
 
            Com_ResetUpdateDMTime(RxPduId, PduInfoPtr);
        }
        {
            Com_CopyPduDataToRxBuffer(RxPduId, PduInfoPtr);
            Com_RxPduHandle(RxPduId, PduInfoPtr);
        }
    }
}

 









 
 
void Com_MainFunctionRxHandle(Com_MainFunctionType mainFunctionId)
{
    const Com_RxIPduType* rxIpduPtr;
    Com_RxIPduRunTimeStateType* rxIpduStatePtr;
    PduIdType rxIpduId = ((mainFunctionId) == 0u) ? 0u : Com_ConfigStd->MainFunctionRxRange[(mainFunctionId)-1u];
    uint8 DMEnable;
    uint8 activeEnable;
    uint8 RxIndication;
    for (; rxIpduId < Com_ConfigStd->MainFunctionRxRange[(mainFunctionId)]; ++rxIpduId)
    {
        rxIpduStatePtr = &Com_RxIPduRunTimeState[rxIpduId];
        rxIpduPtr = &Com_ConfigStd->ComRxIPdu[rxIpduId];
        activeEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x1u;
        if (0x1u == activeEnable)
        {
            RxIndication = rxIpduStatePtr->RxIpduRTStFlag & 0x8u;
             
            if (0x8u == RxIndication)
            {
                 
                Com_IndicationProcess(rxIpduStatePtr, rxIpduPtr);
                rxIpduStatePtr->RxIpduRTStFlag &= 0xF7u;
                 
            }
             
            DMEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x2u;
            if (0x2u == DMEnable)
            {
                if ((1u) == (rxIpduStatePtr->RxIpduDMFlag & (1u)))
                {
                    Com_RxSignalTimeOutHandle(rxIpduStatePtr, rxIpduPtr);
                }

                if ((2u) == (rxIpduStatePtr->RxIpduDMFlag & (2u)))
                {
                    Com_RxSignalGroupTimeOutHandle(rxIpduStatePtr, rxIpduPtr);
                }

                if (((8u) == (rxIpduStatePtr->RxIpduDMFlag & (8u)))
                    || ((4u) == (rxIpduStatePtr->RxIpduDMFlag & (4u))))
                {
                    Com_RxIpduBaseDMTimeOutHandle(rxIpduStatePtr, rxIpduPtr);
                }
            }
        }
    }
}
 









 
 
 void Com_RxPduDMCtrHandle(void)
{
    const Com_RxIPduType* rxIpduPtr;
    Com_RxIPduRunTimeStateType* rxIpduStatePtr;
    Com_IpduGroupIdType ipduGroupRefNumber;
    Com_IpduGroupIdType index;
    Com_IpduGroupIdType ipduGroupId;
    uint16 ipduCnt;
    uint8 DMEnable;
    for (ipduCnt = 0u; ipduCnt < 118u; ++ipduCnt)
    {
        rxIpduPtr = &Com_ConfigStd->ComRxIPdu[ipduCnt];
        index = rxIpduPtr->ComIPduGroupsRefStartId;
        ipduGroupRefNumber = rxIpduPtr->ComIPduGroupsRefNumber;
         
        if (ipduGroupRefNumber > 0u)
        {
            rxIpduStatePtr = &Com_RxIPduRunTimeState[ipduCnt];
            DMEnable = rxIpduStatePtr->RxIpduRTStFlag & 0x2u;
            for (; index < ipduGroupRefNumber; ++index)
            {
                ipduGroupId = Com_RxIPduGroupsRef[index];
                if (Com_IpduGroupDMEnable[ipduGroupId])
                {
                    break;
                }
            }
            if (index < ipduGroupRefNumber)
            {
                 
                if (0x2u != DMEnable)
                {
                    rxIpduStatePtr->RxIpduRTStFlag |= 0x2u;

 
                    Com_ResetRxPduTimeOut(ipduCnt);
                }
            }
            else
            {
                if (0x2u == DMEnable)
                {
                    rxIpduStatePtr->RxIpduRTStFlag &= 0xFDu;
 
                    Com_DisableRxPduTimeOut(ipduCnt);
                }
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 
