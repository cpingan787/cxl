











 












 

   


 












 












 



 


 












 












 


 












































 

 











































































 



 












 












 



 
 




















 
 



 



 
 



 

























































 


 











 
 




















 
 



 



 
 



 


 









































































 


 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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


 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   

 

 
static  void Com_ResetTxPduBufferAndSignalBuffer(PduIdType IpduId);

 
static  void Com_TxGroupSignalPack(const Com_TxGroupSignalType* TxGroupSignalPtr);

 

 

 

 
static  Std_ReturnType Com_TriggerIPDUSendInternalHandle(PduIdType TxIpduId);


static void Com_GetTxModeOffset(
    Com_TxIPduRunTimeStateType* TxIpduStatePtr,
    const Com_TxIPduType* TxIpduPtr,
    boolean TMS);


 



 
static  boolean
    Com_MainFuncTxDirect(Com_TxIPduRunTimeStateType* TxIpduStatePtr, const Com_TxIPduType* TxIpduPtr, boolean MDTRun);


 
static  boolean
    Com_MainFuncTxPeriod(Com_TxIPduRunTimeStateType* TxIpduStatePtr, const Com_TxIPduType* TxIpduPtr, boolean MDTRun);


 

 

 
static  void Com_MainFunction_SendPdu(PduIdType TxIpduId);

 

 

 
static  boolean Com_SetTxSignalBuff(
    Com_SignalType SignalType,
    uint16 SignalLength,
    uint16 SignalBufferId,
    const void * SignalNewDataPtr,
    uint8 BitSize);

 
static  void Com_TxSignalPack(Com_SignalIdType TxSignalId);

 
static  uint8 Com_SendTxSignalHandle(
    PduIdType TxIpduId,
    Com_TransferPropertyType SignalTxProperty,
    boolean DMSignal,
    boolean ValueChanged);

 
static  uint8 Com_SendTxGroupSignalHandle(
    Com_SignalIdType TxGroupSignalId,
    const void * SignalDataPtr);


 

 
static  void Com_TxSignalGroupPack(Com_SignalGroupIdType SignalGroupId);

 


 












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static void Com_GetTxModeOffset(
    Com_TxIPduRunTimeStateType* TxIpduStatePtr,
    const Com_TxIPduType* TxIpduPtr,
    boolean TMS)
{
    Com_TxModeTimeOffsetType txModeOffset = 1u;
    PduIdType txModeIndex;
    Com_TxModeModeType ipduTxMode = TxIpduStatePtr->ipduTxMode;
    {
        txModeIndex = TxIpduPtr->ComTxModeTrueRefId;
        if (COM_TX_MODE_MIXED == ipduTxMode)
        {
        }
        else
        {
            txModeOffset = Com_TxModeTruePeriod[txModeIndex].ComTxModeTimeOffset;
        }
    }
    TxIpduStatePtr->PeriodCnt = txModeOffset;
}


 











 
 
static  void Com_ResetTxPduBufferAndSignalBuffer(PduIdType IpduId)
{
    const Com_TxIPduType* txIpduPtr = &Com_ConfigStd->ComTxIPdu[IpduId];
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[IpduId];
    const Com_TxIPduRunTimeStateType* txIpduInitStatePtr = &Com_TxIPduInitState[IpduId];
    const Com_TxSignalType* txSignalPtr;
    const Com_TxSignalGroupType* txSignalGroupPtr;
    const Com_TxGroupSignalType* txGroupSignalPtr;
    uint16 signalInitValueId;
    uint16 signalLength;
    Com_SignalType signalType;

 
    Com_TxIpduBufIdType pduBufferId = txIpduPtr->ComTxIPduBufIndex;
    uint16 initPduLength = Com_TxIPduInitState[IpduId].TxIpduLength;
    SchM_Enter_Com_Context();
    (void)ILib_memcpy(&Com_TxIPduRuntimeBuff[pduBufferId], &Com_TxIPduInitValue[pduBufferId], initPduLength);
    SchM_Exit_Com_Context();
    Com_TxSignalIdType txSignalNumber, cnt;
     
    txSignalNumber = txIpduPtr->ComIPduSignalsRefNumber;
    cnt = txIpduPtr->ComIpduSignalRefStartId;
    for (; cnt < txSignalNumber; ++cnt)
    {
        txSignalPtr = &Com_ConfigStd->ComTxSignal[cnt];
        signalInitValueId = txSignalPtr->ComSignalInitValueId;
        signalType = txSignalPtr->ComSignalType;
        {
            signalLength = 0u;
        }
        Com_InitSignalBuffer(signalType, signalInitValueId, signalLength);
    }
    Com_TxSignalGroupIdType signalGroupNumber, signalGroupId;
    Com_TxGroupSignalIdType groupSignalNumber, counter;
     
    signalGroupNumber = txIpduPtr->ComIPduSignalGroupsRefNumber;
    signalGroupId = txIpduPtr->ComIPduSignalGroupsRefStartId;
    for (; signalGroupId < signalGroupNumber; ++signalGroupId)
    {
        txSignalGroupPtr = &Com_ConfigStd->ComTxSignalGroup[signalGroupId];
        groupSignalNumber = txSignalGroupPtr->ComGroupSignalRefNumber;
        counter = Com_ConfigStd->ComTxSignalGroup[signalGroupId].ComGroupSignalRefStartId;
        for (; counter < groupSignalNumber; ++counter)
        {
            txGroupSignalPtr = &Com_ConfigStd->ComTxGroupSignal[counter];
            signalInitValueId = txGroupSignalPtr->ComSignalInitValueId;
            signalType = txGroupSignalPtr->ComSignalType;
            {
                signalLength = 0u;
            }
            Com_InitSignalBuffer(signalType, signalInitValueId, signalLength);
        }
    }
    txIpduStatePtr->TxIpduRTStFlag |= (txIpduInitStatePtr->TxIpduRTStFlag & 0x4u);
    txIpduStatePtr->ipduTxMode = txIpduInitStatePtr->ipduTxMode;
    txIpduStatePtr->TxIpduLength = txIpduInitStatePtr->TxIpduLength;
    txIpduStatePtr->TxIpduRTStFlag &= 0xFDu;
    txIpduStatePtr->TxIpduRTStFlag &= 0xF7u;
    txIpduStatePtr->TxIpduRTStFlag &= 0xEFu;
    txIpduStatePtr->NTimeCnt = 0u;
    txIpduStatePtr->RptNum = 0u;
    return;
}

 









 
 
static  void Com_TxGroupSignalPack(const Com_TxGroupSignalType* TxGroupSignalPtr)
{
    Com_TxSignalGroupIdType signalGroupRef = TxGroupSignalPtr->ComSignalGroupRef;
    PduIdType txIpduId = Com_ConfigStd->ComTxSignalGroup[signalGroupRef].ComIpduRefIndex;
    Com_SignalType signalType = TxGroupSignalPtr->ComSignalType;
    Com_TxIpduBufIdType ipduBufferIndex = Com_ConfigStd->ComTxIPdu[txIpduId].ComTxIPduBufIndex;
    uint16 signalBufferId = TxGroupSignalPtr->ComSignalInitValueId;
    uint64 txData;
    Com_TxIpduBufIdType ipduBuffPos = ipduBufferIndex + (Com_TxIpduBufIdType)(TxGroupSignalPtr->ComSigLsbBytePos);
    uint8* iPduBufferPtr = &Com_TxIPduRuntimeBuff[ipduBuffPos];

    if (COM_UINT8_N == signalType)
    {
    }
     
    else if (COM_BOOLEAN == signalType)
    {
        uint8 value = (uint8)(1u << TxGroupSignalPtr->ComSignalPosInByte);
        SchM_Enter_Com_Context();
        if (Com_SignalBoolRuntimeBuff[signalBufferId])
        {
            *iPduBufferPtr |= value;
        }
        else
        {
            *iPduBufferPtr &= ~value;
        }
        SchM_Exit_Com_Context();
    }
    else
    {
         
        switch (signalType)
        {
        case COM_UINT8:
        case COM_SINT8:
            txData = (uint64)(Com_Signal8BitRuntimeBuff[signalBufferId]);
            break;
        case COM_UINT16:
        case COM_SINT16:
            txData = (uint64)(Com_Signal16BitRuntimeBuff[signalBufferId]);
            break;
        case COM_SINT32:
        case COM_UINT32:
        case COM_FLOAT32:
            txData = (uint64)(Com_Signal32BitRuntimeBuff[signalBufferId]);
            break;
        case COM_SINT64:
        case COM_UINT64:
        case COM_FLOAT64:
            txData = Com_Signal64BitRuntimeBuff[signalBufferId];
            break;
        default:
             
            txData = 0u;
            break;
        }
        Com_TxSignalPackHandle(COM_TX_GROUP_SIGNAL, TxGroupSignalPtr, txData, &Com_TxIPduRuntimeBuff[ipduBufferIndex]);
    }
}





 









 
 
static  Std_ReturnType Com_TriggerIPDUSendInternalHandle(PduIdType TxIpduId)
{
    const Com_TxIPduType* txIpduPtr = &Com_ConfigStd->ComTxIPdu[TxIpduId];
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[TxIpduId];
    Com_TxIpduBufIdType ipduBufferId = txIpduPtr->ComTxIPduBufIndex;
    uint16 ipduLength = txIpduStatePtr->TxIpduLength;
    PduInfoType pduInfo;
    Std_ReturnType returnValue = 1U;

    pduInfo.SduDataPtr = &Com_TxIPduRuntimeBuff[ipduBufferId];
    pduInfo.SduLength = (PduLengthType)ipduLength;
    {
        pduInfo.MetaDataPtr = ((void *)0);
    }
    boolean ret = 1u;
     
    if (((void *)0) != txIpduPtr->ComIPduCallout)
    {
        ret = txIpduPtr->ComIPduCallout((TxIpduId + (118u)), &pduInfo);
    }
    if (ret)
    {
        txIpduStatePtr->TxIpduRTStFlag |= 0x8u;
        txIpduStatePtr->TxOffset = 0u;
        if (0U == PduR_Transmit(txIpduPtr->ComPduIdRef, &pduInfo))
        {
 
            returnValue = 0U;
        }
        else
        {
            txIpduStatePtr->TxIpduRTStFlag &= 0xF7u;
 
 
        }
    }
    return returnValue;
}



 











 
 
static  boolean
    Com_MainFuncTxDirect(Com_TxIPduRunTimeStateType* TxIpduStatePtr, const Com_TxIPduType* TxIpduPtr, boolean MDTRun)
{
    boolean ret = 0u;
    PduIdType txModeIndex;
    Com_TxModeModeType txMode;
    uint8 TxDelay = TxIpduStatePtr->TxIpduRTStFlag & 0x10u;

    Com_TxModeNumberOfRepetitionsType numOfRepetition;
    if ((!MDTRun) && (0x10u == TxDelay))
    {
        TxIpduStatePtr->NTimeCnt = 0u;
    }
    if (TxIpduStatePtr->NTimeCnt > 0u)
    {
        (TxIpduStatePtr->NTimeCnt) -= 1u;
    }
    if ((0u == TxIpduStatePtr->NTimeCnt) && (TxIpduStatePtr->RptNum > 0u))
    {
 
        {
            ret = 1u;
        }

        {
            txModeIndex = TxIpduPtr->ComTxModeTrueRefId;
            txMode = TxIpduPtr->ComTxTrueModeMode;
            switch (txMode)
            {
            case COM_TX_MODE_DIRECT:
                numOfRepetition = Com_TxModeTrueDirectRepetitions[txModeIndex].ComTxModeNumberOfRepetitions;
                if (numOfRepetition <= 1u)
                {
                    TxIpduStatePtr->RptNum = 0u;
                }
                else
                {
                    TxIpduStatePtr->NTimeCnt = Com_TxModeTrueDirectRepetitions[txModeIndex].ComTxModeRepetitionPeriod;
                }
                break;
            case COM_TX_MODE_MIXED:
                {
                    TxIpduStatePtr->RptNum = 0u;
                }
                break;
            default:
                 
                break;
            }
        }
    }
    if ((!MDTRun) && (0x10u == TxDelay))
    {
        ret = 1u;
    }
    return ret;
}

 











 
 
static  boolean
    Com_MainFuncTxPeriod(Com_TxIPduRunTimeStateType* TxIpduStatePtr, const Com_TxIPduType* TxIpduPtr, boolean MDTRun)
{
    boolean ret = 0u;
    PduIdType txModeIndex;
    if (TxIpduStatePtr->PeriodCnt > 0u)
    {
        (TxIpduStatePtr->PeriodCnt) -= 1u;
    }
    if (0u == TxIpduStatePtr->PeriodCnt)
    {
 
        {
            ret = 1u;
        }

        {
            txModeIndex = TxIpduPtr->ComTxModeTrueRefId;
            if (COM_TX_MODE_MIXED == TxIpduStatePtr->ipduTxMode)
            {
            }
            else
            {
                TxIpduStatePtr->PeriodCnt = Com_TxModeTruePeriod[txModeIndex].ComTxModeTimePeriod;
            }
        }
    }
    uint8 TxDelay = TxIpduStatePtr->TxIpduRTStFlag & 0x10u;
    if ((!MDTRun) && (0x10u == TxDelay))
    {
        ret = 1u;
    }
    if (ret && (0u == TxIpduStatePtr->DMCnt))
    {
         
        TxIpduStatePtr->DMCnt = TxIpduPtr->ComTxIpduDM;
    }
    return ret;
}



 









 
 
static  void Com_MainFunction_SendPdu(PduIdType TxIpduId)
{
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[TxIpduId];
    const Com_TxIPduType* txIpduPtr = &Com_ConfigStd->ComTxIPdu[TxIpduId];
    PduInfoType pduInfo;
    Com_TxIpduBufIdType ipduBufferId = txIpduPtr->ComTxIPduBufIndex;
    uint16 ipduLength = txIpduStatePtr->TxIpduLength;

    pduInfo.SduDataPtr = &Com_TxIPduRuntimeBuff[ipduBufferId];
    pduInfo.SduLength = ipduLength;
    {
        pduInfo.MetaDataPtr = ((void *)0);
    }
    boolean ret = 1u;
     
    if (((void *)0) != txIpduPtr->ComIPduCallout)
    {
        ret = txIpduPtr->ComIPduCallout(TxIpduId + 118u, &pduInfo);
    }
    if (ret)
    {
        
 
        txIpduStatePtr->TxIpduRTStFlag |= 0x8u;
        if (0U == PduR_Transmit(txIpduPtr->ComPduIdRef, &pduInfo))
        {
            uint8 TxDelay = txIpduStatePtr->TxIpduRTStFlag & 0x10u;
            if (0x10u == TxDelay)
            {
                txIpduStatePtr->TxIpduRTStFlag &= 0xEFu;
            }
 
            txIpduStatePtr->TxOffset = 0u;
        }
        else
        {
            txIpduStatePtr->TxIpduRTStFlag &= 0xF7u;
 
 
        }
    }
    return;
}



 











 
 
static  boolean Com_SetTxSignalBuff(
    Com_SignalType SignalType,
    uint16 SignalLength,
    uint16 SignalBufferId,
    const void * SignalNewDataPtr,
    uint8 BitSize)
{
    uint8 signalValueU8;
    uint16 signalValueU16;
    uint32 signalValueU32;
    uint64 signalNewValue;
    boolean ret = 0u;

    SchM_Enter_Com_Context();
    switch (SignalType)
    {
    case COM_BOOLEAN:
        if (*((const boolean*)(SignalNewDataPtr)) != Com_SignalBoolRuntimeBuff[SignalBufferId])
        {
            Com_SignalBoolRuntimeBuff[SignalBufferId] = *((const boolean*)SignalNewDataPtr);
            ret = 1u;
        }
        break;
    case COM_UINT8:
    case COM_SINT8:
        signalValueU8 = *((const uint8*)SignalNewDataPtr) & ((0xFFu) >> (8u - BitSize));
        if (signalValueU8 != Com_Signal8BitRuntimeBuff[SignalBufferId])
        {
            Com_Signal8BitRuntimeBuff[SignalBufferId] = signalValueU8;
            ret = 1u;
        }
        break;
    case COM_UINT8_N:
         
        if (0u != ILib_memcmp(&Com_Signal8BitRuntimeBuff[SignalBufferId], (const uint8*)SignalNewDataPtr, SignalLength))
        {
            (void)ILib_memcpy(&Com_Signal8BitRuntimeBuff[SignalBufferId], (const uint8*)SignalNewDataPtr, SignalLength);
            ret = 1u;
        }
        break;
    case COM_UINT16:
    case COM_SINT16:
        signalValueU16 = *((const uint16*)SignalNewDataPtr) & ((0xFFFFu) >> (16u - BitSize));
        if (signalValueU16 != Com_Signal16BitRuntimeBuff[SignalBufferId])
        {
            Com_Signal16BitRuntimeBuff[SignalBufferId] = signalValueU16;
            ret = 1u;
        }
        break;
    case COM_SINT32:
    case COM_UINT32:
    case COM_FLOAT32:
        signalValueU32 = *((const uint32*)SignalNewDataPtr);
        signalValueU32 =
            (COM_FLOAT32 != SignalType) ? (signalValueU32 & ((0xFFFFFFFFu) >> (32u - BitSize))) : signalValueU32;
        if (signalValueU32 != Com_Signal32BitRuntimeBuff[SignalBufferId])
        {
            Com_Signal32BitRuntimeBuff[SignalBufferId] = signalValueU32;
            ret = 1u;
        }
        break;
    case COM_SINT64:
    case COM_UINT64:
    case COM_FLOAT64:
        signalNewValue = *((const uint64*)SignalNewDataPtr);
        signalNewValue =
            (COM_FLOAT64 != SignalType) ? (signalNewValue & ((0xFFFFFFFFFFFFFFFFu) >> (64u - BitSize))) : signalNewValue;
        if (signalNewValue != Com_Signal64BitRuntimeBuff[SignalBufferId])
        {
            Com_Signal64BitRuntimeBuff[SignalBufferId] = signalNewValue;
            ret = 1u;
        }
        break;
    default:
         
        break;
    }
    SchM_Exit_Com_Context();
    (void)(SignalLength);
    (void)(SignalBufferId);
    (void)(SignalNewDataPtr);
    return ret;
}
 










 
 
static  void Com_TxSignalPack(Com_SignalIdType TxSignalId)
{
    const Com_TxSignalType* txSignalPtr = &Com_ConfigStd->ComTxSignal[TxSignalId];
    PduIdType txIpduId = txSignalPtr->ComIpduRefIndex;
    Com_SignalType signalType = txSignalPtr->ComSignalType;
    Com_TxIpduBufIdType ipduBufferIndex = Com_ConfigStd->ComTxIPdu[txIpduId].ComTxIPduBufIndex;
    uint16 signalBufferId = txSignalPtr->ComSignalInitValueId;
    uint64 txData;
    Com_TxIpduBufIdType ipduBuffPos = ipduBufferIndex + (Com_TxIpduBufIdType)(txSignalPtr->ComSigLsbBytePos);
    uint8* iPduBufferPtr = &Com_TxIPduRuntimeBuff[ipduBuffPos];

    if (COM_UINT8_N == signalType)
    {
    }
     
    else if (COM_BOOLEAN == signalType)
    {
        uint8 value = (uint8)(1u << ((uint8)txSignalPtr->ComSignalPosInByte));
        if (Com_SignalBoolRuntimeBuff[signalBufferId])
        {
            *iPduBufferPtr |= value;
        }
        else
        {
            *iPduBufferPtr &= ~value;
        }
    }
     
    else
    {
         
        switch (signalType)
        {
        case COM_UINT8:
        case COM_SINT8:
            txData = (uint64)(Com_Signal8BitRuntimeBuff[signalBufferId]);
            break;
        case COM_UINT16:
        case COM_SINT16:
            txData = (uint64)(Com_Signal16BitRuntimeBuff[signalBufferId]);
            break;
        case COM_SINT32:
        case COM_UINT32:
        case COM_FLOAT32:
            txData = (uint64)(Com_Signal32BitRuntimeBuff[signalBufferId]);
            break;
        case COM_SINT64:
        case COM_UINT64:
        case COM_FLOAT64:
            txData = Com_Signal64BitRuntimeBuff[signalBufferId];
            break;
        default:
            txData = 0u;
            break;
        }
        Com_TxSignalPackHandle(COM_TX_SIGNAL, txSignalPtr, txData, &Com_TxIPduRuntimeBuff[ipduBufferIndex]);
    }
}

 










 
 

static  uint8 Com_SendTxSignalHandle(

    PduIdType TxIpduId,
    Com_TransferPropertyType SignalTxProperty,
    boolean DMSignal,
    boolean ValueChanged)
{

    const Com_TxIPduType* txIpduPtr = &Com_ConfigStd->ComTxIPdu[TxIpduId];
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[TxIpduId];
    uint16 txIpduDM = txIpduPtr->ComTxIpduDM;
    Com_TxModeNumberOfRepetitionsType txModeRptNum = 1u;
    PduIdType txModeIndex;
    Com_TxModeModeType ipduTxMode = txIpduStatePtr->ipduTxMode;
    boolean initDMCnt = 0u;
    
 
    if ((0u == txIpduStatePtr->DMCnt) && DMSignal && (COM_TX_MODE_NONE != txIpduStatePtr->ipduTxMode))
    {
        txIpduStatePtr->DMCnt = txIpduDM;
        initDMCnt = 1u;
    }
    if ((COM_TX_MODE_DIRECT == ipduTxMode) || (COM_TX_MODE_MIXED == ipduTxMode)
        || (COM_TX_MODE_DIRECT_WITHOUT_REPETITION == ipduTxMode)
        || (COM_TX_MODE_MIXED_WITHOUT_REPETITION == ipduTxMode))
    {
        if ((COM_TX_MODE_DIRECT == ipduTxMode) || (COM_TX_MODE_MIXED == ipduTxMode))
        {
            {
                txModeIndex = txIpduPtr->ComTxModeTrueRefId;
                if (COM_TX_MODE_DIRECT == ipduTxMode)
                {
                    txModeRptNum = Com_TxModeTrueDirectRepetitions[txModeIndex].ComTxModeNumberOfRepetitions;
                }
                else
                {
                }
            }
        }

        switch (SignalTxProperty)
        {
        case COM_TRIGGERED:
            txIpduStatePtr->NTimeCnt = 0u;
            txIpduStatePtr->RptNum = txModeRptNum;
            

 
            if ((1u < txModeRptNum) && (!initDMCnt) && DMSignal)
            {
                txIpduStatePtr->DMCnt = txIpduDM;
            }
            break;
        default:
             
            break;
        }
    }
    else
    {
        txIpduStatePtr->NTimeCnt = 0u;
        txIpduStatePtr->RptNum = 0u;
    }

    (void)(ValueChanged);
    return 0U;
}

 










 
 
static  uint8 Com_SendTxGroupSignalHandle(
    Com_SignalIdType TxGroupSignalId,
    const void * SignalDataPtr)
{
    boolean valueChanged;
    const Com_TxGroupSignalType* txGroupSignalPtr = &Com_ConfigStd->ComTxGroupSignal[TxGroupSignalId];
    Com_TxSignalGroupIdType signalGroupId = txGroupSignalPtr->ComSignalGroupRef;
    const Com_TxSignalGroupType* txSignalGroupPtr = &Com_ConfigStd->ComTxSignalGroup[signalGroupId];
    Com_SignalType groupSignalType = txGroupSignalPtr->ComSignalType;
    uint8 ret;

 
    {
         
         
        uint16 groupSignalLength = txGroupSignalPtr->ComSignalLength;
        valueChanged = Com_SetTxSignalBuff(
            groupSignalType,
            groupSignalLength,
            txGroupSignalPtr->ComSignalInitValueId,
            SignalDataPtr,
            txGroupSignalPtr->ComBitSize);
        Com_TransferPropertyType signalTxProperty =
                                                                                txSignalGroupPtr->ComTransferProperty;
        switch (signalTxProperty)
        {
        default:
             
            break;
        }
        ret = 0U;
    }
    (void)(SignalDataPtr);
    (void)(valueChanged);
    return ret;
}

 









 
 
 void
Com_TxIpduController(boolean initialize)
{
    Com_TxIPduRunTimeStateType* txIpduStatePtr;
    const Com_TxIPduType* txIpduPtr;
    Com_TxIpduGroupIdType ipduGroupRefNumber;
    Com_TxIpduGroupIdType ipduGroupRefIndex;
    Com_TxIpduGroupIdType ipduGroupId;
    PduIdType ipduCnt;
    uint8 activeEnable;
    Com_TxModeModeType ipduTxMode;
    for (ipduCnt = 0u; ipduCnt < 44u; ++ipduCnt)
    {
        {
            txIpduPtr = &Com_ConfigStd->ComTxIPdu[ipduCnt];
            ipduGroupRefNumber = txIpduPtr->ComIPduGroupsRefNumber;
             
            if (ipduGroupRefNumber > 0u)
            {
                ipduGroupRefIndex = txIpduPtr->ComIPduGroupsRefStartId;
                SchM_Enter_Com_MultiCore_Lock();
                txIpduStatePtr = &Com_TxIPduRunTimeState[ipduCnt];
                ipduTxMode = txIpduStatePtr->ipduTxMode;
                activeEnable = txIpduStatePtr->TxIpduRTStFlag & 0x1u;
                SchM_Exit_Com_MultiCore_Lock();
                for (; ipduGroupRefIndex < ipduGroupRefNumber; ++ipduGroupRefIndex)
                {
                    ipduGroupId = Com_TxIPduGroupsRef[ipduGroupRefIndex];
                    if (Com_IpduGroupEnable[ipduGroupId])
                    {
                        break;
                    }
                }
                 
                if (ipduGroupRefIndex < ipduGroupRefNumber)
                {
                    if (0x1u != activeEnable)
                    {
                        SchM_Enter_Com_MultiCore_Lock();
                        txIpduStatePtr->TxIpduRTStFlag |= 0x1u;
                        SchM_Exit_Com_MultiCore_Lock();
                         
                        if (initialize)
                        {
                             
                            Com_ResetTxPduBufferAndSignalBuffer(ipduCnt);
                            if ((COM_TX_MODE_MIXED == ipduTxMode) || (COM_TX_MODE_PERIODIC == ipduTxMode)
                                || (COM_TX_MODE_MIXED_WITHOUT_REPETITION == ipduTxMode))
                            {
                                boolean TMS = (0x4u == (txIpduStatePtr->TxIpduRTStFlag & 0x4u));
                                Com_GetTxModeOffset(txIpduStatePtr, txIpduPtr, TMS);
                            }
                        }
                    }
                }
                else
                {
                    if (0x1u == activeEnable)
                    {
                        SchM_Enter_Com_MultiCore_Lock();
                        txIpduStatePtr->TxIpduRTStFlag &= 0xFEu;
                        SchM_Exit_Com_MultiCore_Lock();
                        uint8 Transmiting = txIpduStatePtr->TxIpduRTStFlag & 0x8u;
                        if (0x8u == Transmiting)
                        {
                            if (txIpduPtr->ComIPduCancellationSupport)
                            {
                                (void)PduR_CancelTransmit(txIpduPtr->ComPduIdRef);
                            }
                            txIpduStatePtr->TxIpduRTStFlag &= 0xF7u;
                        }
                        txIpduStatePtr->DMCnt = 0u;
                    }
                }
            }
        }
    }
}

 










 
 
static  void Com_TxSignalGroupPack(Com_SignalGroupIdType SignalGroupId)
{
    const Com_TxSignalGroupType* txSignalGroupPtr = &Com_ConfigStd->ComTxSignalGroup[SignalGroupId];
    const Com_TxGroupSignalType* txGroupSignalPtr;
    Com_TxGroupSignalIdType groupSignalNumber = txSignalGroupPtr->ComGroupSignalRefNumber;
    Com_TxGroupSignalIdType cnt = txSignalGroupPtr->ComGroupSignalRefStartId;


    for (; cnt < groupSignalNumber; ++cnt)
    {
        txGroupSignalPtr = &Com_ConfigStd->ComTxGroupSignal[cnt];

        {
            Com_TxGroupSignalPack(txGroupSignalPtr);
        }
    }
    return;
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   


 











 
 
 void
Com_ConfirmationProcess(const Com_TxIPduType* TxIpduPtr)
{
    Com_TxSignalIdType txSignalNumber, cnt;
    const Com_TxSignalType* txSignalPtr;
    txSignalNumber = TxIpduPtr->ComIPduSignalsRefNumber;
    cnt = TxIpduPtr->ComIpduSignalRefStartId;
    for (; cnt < txSignalNumber; ++cnt)
    {
        txSignalPtr = &Com_ConfigStd->ComTxSignal[cnt];
         
        if (0x1u == (txSignalPtr->ComTxSignalNotificationType & 0x1u))
        {
            Com_TxSigErrAndNotifyIdType txSignalErrAndNotifyFncId =
                (0x3u == txSignalPtr->ComTxSignalNotificationType)
                    ? (txSignalPtr->ComTxSignalErrAndNotifyFncId + 1u)
                    : txSignalPtr->ComTxSignalErrAndNotifyFncId;
            Com_TxSignalErrorAndNotification[txSignalErrAndNotifyFncId]();
        }
    }
    Com_TxSignalGroupIdType signalGroupNumber, signalGroupId;
    signalGroupNumber = TxIpduPtr->ComIPduSignalGroupsRefNumber;
    signalGroupId = TxIpduPtr->ComIPduSignalGroupsRefStartId;
    const Com_TxSignalGroupType* txSignalGroupPtr;
    for (; signalGroupId < signalGroupNumber; ++signalGroupId)
    {
        txSignalGroupPtr = &Com_ConfigStd->ComTxSignalGroup[signalGroupId];
         
        if (0x1u
            == (txSignalGroupPtr->ComTxSignalNotificationType & 0x1u))
        {
            Com_TxSigGrpErrAndNotifyIdType txSigGrpErrAndNotifyFncId =
                (0x3u == txSignalGroupPtr->ComTxSignalNotificationType)
                    ? (txSignalGroupPtr->ComTxSigGrpErrAndNotifyFncId + 1u)
                    : txSignalGroupPtr->ComTxSigGrpErrAndNotifyFncId;
            Com_TxSignalGroupErrorAndNotification[txSigGrpErrAndNotifyFncId]();
        }
    }
    (void)(TxIpduPtr);
    return;
}

 









 
 
 uint8
Com_SendSignalHandle(Com_SignalIdType SignalId, const void * SignalDataPtr)
{
    uint8 ret = ((uint8)0x80u);
    boolean valueChanged;
    boolean signalIsDM;
    Com_SignalType signalType;
    Com_SignalIdType groupSignalId;

     
    if (SignalId < 240u)
    {
        const Com_TxSignalType* txSignalPtr = &Com_ConfigStd->ComTxSignal[SignalId];
        signalType = txSignalPtr->ComSignalType;
         
        {
            PduIdType ipduRef = txSignalPtr->ComIpduRefIndex;
            Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[ipduRef];
             
            {
                 
                uint16 signalLength = txSignalPtr->ComSignalLength;
                uint16 signalBufferId = txSignalPtr->ComSignalInitValueId;
                 
                valueChanged = Com_SetTxSignalBuff(
                    signalType,
                    signalLength,
                    signalBufferId,
                    SignalDataPtr,
                    txSignalPtr->ComBitSize);
                if (valueChanged)
                {
                     
                    Com_TxSignalPack(SignalId);
                }
                 
                if ((txIpduStatePtr->TxIpduRTStFlag & 0x1u) == 0x1u)
                {
                    {
                        signalIsDM = 0u;
                    }
                    Com_TransferPropertyType signalTxProperty = txSignalPtr->ComTransferProperty;
                    ret = Com_SendTxSignalHandle(ipduRef, signalTxProperty, signalIsDM, valueChanged);
                }
                 
                else
                {
                     
                    if (0x2u
                        == (txSignalPtr->ComTxSignalNotificationType & 0x2u))
                    {
                        Com_TxSignalErrorAndNotification[txSignalPtr->ComTxSignalErrAndNotifyFncId]();
                    }
                }
            }
        }
    }
     
    else
    {
        groupSignalId = SignalId - 240u;
        ret = Com_SendTxGroupSignalHandle(groupSignalId, SignalDataPtr);
    }
    (void)(SignalId);
    (void)(SignalDataPtr);
    return ret;
}

 









 
 
 uint8
Com_SendDynSignalHandle(
    Com_SignalIdType SignalId,
    const void * SignalDataPtr,
    uint16 Length)
{
    uint8 ret = ((uint8)0x80u);

     
    if (SignalId < 240u)
    {
    }
    (void)(Length);
    return ret;
}

 









 
 
 uint8
Com_SendSignalGroupHandle(Com_SignalGroupIdType SignalGroupId)
{
    uint8 ret = ((uint8)0x80u);
    PduIdType ipduRef;
    uint16 rptNum = 1u;
    Com_TxModeModeType ipduTxMode;
    const Com_TxSignalGroupType* txSignalGroupPtr = &Com_ConfigStd->ComTxSignalGroup[SignalGroupId];
    const Com_TxIPduType* txIpduPtr;
    Com_TxIPduRunTimeStateType* txIpduStatePtr;
    Com_TxSignalGroupRunTimeStateType* txSigGrpStPtr = &Com_TxSignalGroupState[SignalGroupId];

     
    {
        ipduRef = txSignalGroupPtr->ComIpduRefIndex;
        txIpduPtr = &Com_ConfigStd->ComTxIPdu[ipduRef];
        txIpduStatePtr = &Com_TxIPduRunTimeState[ipduRef];
         
        {
            
 
            Com_TxSignalGroupPack(SignalGroupId);
             
            txIpduStatePtr->TxIpduLength =
                ((uint16)txIpduPtr->IPduNoDynSignalLength + txSigGrpStPtr->DynamicSignalLength);
            
 
            Com_TxIpduTMSHandle(txIpduStatePtr, txIpduPtr, &rptNum);
             
            if ((txIpduStatePtr->TxIpduRTStFlag & 0x1u) == 0x1u)
            {
                
 
                ipduTxMode = txIpduStatePtr->ipduTxMode;

                if ((COM_TX_MODE_DIRECT == ipduTxMode) || (COM_TX_MODE_MIXED == ipduTxMode)
                    || (COM_TX_MODE_DIRECT_WITHOUT_REPETITION == ipduTxMode)
                    || (COM_TX_MODE_MIXED_WITHOUT_REPETITION == ipduTxMode))
                {
                    uint8 NTimesTransmitNeed = txSigGrpStPtr->TxSigGrpRTStFlag & 0x1u;
                    uint8 WithoutRepetition = txSigGrpStPtr->TxSigGrpRTStFlag & 0x2u;
                    if (0x1u == NTimesTransmitNeed)
                    {
                        txIpduStatePtr->NTimeCnt = 0u;
                        txIpduStatePtr->RptNum = (0x2u == WithoutRepetition) ? 1u : rptNum;
                        

 
                        txSigGrpStPtr->TxSigGrpRTStFlag &= 0xFEu;
                    }
                }
                else
                {
                    txIpduStatePtr->NTimeCnt = 0u;
                    txIpduStatePtr->RptNum = 0u;
                }
                ret = 0U;
            }
            else
            {
                 
                if (0x2u
                    == (txSignalGroupPtr->ComTxSignalNotificationType & 0x2u))
                {
                    Com_TxSignalGroupErrorAndNotification[txSignalGroupPtr->ComTxSigGrpErrAndNotifyFncId]();
                }
            }
        }
    }
    return ret;
}

 









 
 

 uint8
Com_InvalidateSignalHandle(Com_SignalIdType SignalId)
{
    uint8 ret = ((uint8)0x80u);
    (void)(SignalId);
    return ret;
}
 









 
 
 uint8
Com_InvalidateSignalGroupHandle(Com_SignalGroupIdType SignalGroupId)
{
    uint8 ret;
    const Com_TxSignalGroupType* txSignalGroupPtr = &Com_ConfigStd->ComTxSignalGroup[SignalGroupId];

     
    {
         
        {
            Com_TxGroupSignalIdType groupSignalNumber, groupSignalId;
            groupSignalNumber = txSignalGroupPtr->ComGroupSignalRefNumber;
            groupSignalId = txSignalGroupPtr->ComGroupSignalRefStartId;
            for (; groupSignalId < groupSignalNumber; ++groupSignalId)
            {
                const Com_TxGroupSignalType* txGroupSignalPtr = &Com_ConfigStd->ComTxGroupSignal[groupSignalId];
                Com_SignalType signalType = txGroupSignalPtr->ComSignalType;
                uint16 invalidValueId = txGroupSignalPtr->ComSignalInvalidBuffRefId;
                if ((0xFFFFu) != invalidValueId)
                {
                    {
                        switch (signalType)
                        {
 
                        case COM_SINT8:
                        case COM_UINT8:
                        case COM_UINT8_N:
                            (void)Com_SendTxGroupSignalHandle(
                                groupSignalId,
                                &(Com_Signal8BitInvalidValue[invalidValueId]));
                            break;
                        case COM_SINT16:
                        case COM_UINT16:
                            (void)Com_SendTxGroupSignalHandle(
                                groupSignalId,
                                &(Com_Signal16BitInvalidValue[invalidValueId]));
                            break;
                        default:
                             
                            break;
                        }
                    }
                }
            }
            ret = Com_SendSignalGroup(SignalGroupId);
        }
    }
    return ret;
}

 









 
 
 Std_ReturnType
Com_TriggerIPDUSendHandle(PduIdType PduId)
{
    Std_ReturnType returnValue = 1U;
    PduIdType txIpduId = PduId - 118u;
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[txIpduId];

     
    uint8 activeEnable = txIpduStatePtr->TxIpduRTStFlag & 0x1u;
    if (0x1u == activeEnable)
    {
        uint8 Transmiting = txIpduStatePtr->TxIpduRTStFlag & 0x8u;
         
        if (
            (0x8u == Transmiting))
        {
            txIpduStatePtr->TxIpduRTStFlag |= 0x10u;
            returnValue = 0U;
        }
        else
        {
            returnValue = Com_TriggerIPDUSendInternalHandle(txIpduId);
        }
    }
    else
    {
    }
    return returnValue;
}


 









 
 
uint8 activeEnable_Test;
Com_TxIPduRunTimeStateType txIpduStatePtr_Test;
 void
Com_MainFunctionTxHandle(Com_MainFunctionType mainFunctionId)
{
    PduIdType txIpduId;
    const Com_TxIPduType* txIpduPtr;
    Com_TxIPduRunTimeStateType* txIpduStatePtr;
    uint8 activeEnable;

    for (txIpduId = ((mainFunctionId) == 0u) ? 0u : Com_ConfigStd->MainFunctionTxRange[(mainFunctionId)-1u]; txIpduId < Com_ConfigStd->MainFunctionTxRange[(mainFunctionId)];
         ++txIpduId)
    {
        txIpduStatePtr = &Com_TxIPduRunTimeState[txIpduId];
        activeEnable = txIpduStatePtr->TxIpduRTStFlag & 0x1u;
        Com_TxIPduRunTimeStateType txIpduStatePtr_Test = txIpduStatePtr[txIpduId];
        activeEnable_Test = activeEnable;
        if (0x1u == activeEnable)
        {
            txIpduPtr = &Com_ConfigStd->ComTxIPdu[txIpduId];
            boolean ipduMDTRun = 0u;
            boolean txSendFlag = 0u;
             
            uint8 TxConfirm = txIpduStatePtr->TxIpduRTStFlag & 0x2u;
            if (0x2u == TxConfirm)
            {
                 
                Com_ConfirmationProcess(txIpduPtr);
                txIpduStatePtr->TxIpduRTStFlag &= 0xFDu;
            }
             
            switch (txIpduStatePtr->ipduTxMode)
            {
            case COM_TX_MODE_DIRECT:
            case COM_TX_MODE_DIRECT_WITHOUT_REPETITION:
                txSendFlag = Com_MainFuncTxDirect(txIpduStatePtr, txIpduPtr, ipduMDTRun);
                break;
            case COM_TX_MODE_PERIODIC:
                txSendFlag = Com_MainFuncTxPeriod(txIpduStatePtr, txIpduPtr, ipduMDTRun);
                break;
            default:
                 
                break;
            }
            if (txSendFlag)
            {
                {
                    Com_MainFunction_SendPdu(txIpduId);
                }
            }
        }
    }
}
 









 
 
 Std_ReturnType
Com_TriggerTransmitHandle(PduIdType TxPduId, PduInfoType * PduInfoPtr)
{
    Std_ReturnType returnValue = 1U;
    PduIdType txIpduId = TxPduId - 118u;
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[txIpduId];
    uint16 txIPduLength = txIpduStatePtr->TxIpduLength;
    const Com_TxIPduType* txIpduPtr = &Com_ConfigStd->ComTxIPdu[txIpduId];
    Com_TxIpduBufIdType ipduBufferId = txIpduPtr->ComTxIPduBufIndex;
    uint8 activeEnable = txIpduStatePtr->TxIpduRTStFlag & 0x1u;

    if (0x1u == activeEnable)
    {
        if (txIPduLength <= PduInfoPtr->SduLength)
        {
            PduInfoType pduInfo;
            pduInfo.SduLength = txIPduLength;
            pduInfo.SduDataPtr = &Com_TxIPduRuntimeBuff[ipduBufferId];
            pduInfo.MetaDataPtr = ((void *)0);
            SchM_Enter_Com_Context();
             
            (void)ILib_memcpy(PduInfoPtr->SduDataPtr, pduInfo.SduDataPtr, txIPduLength);
             
            PduInfoPtr->SduLength = pduInfo.SduLength;
             
            SchM_Exit_Com_Context();

            txIpduStatePtr->TxIpduRTStFlag |= 0x8u;
            returnValue = 0U;
        }
    }
    else
    {
    }
    return returnValue;
}
 









 
 
 void
Com_TxConfirmationHandle(PduIdType TxPduId)
{
    PduIdType comTxPduId = TxPduId - 118u;
    const Com_TxIPduType* txIpduPtr = &Com_ConfigStd->ComTxIPdu[comTxPduId];
    Com_TxIPduRunTimeStateType* txIpduStatePtr = &Com_TxIPduRunTimeState[comTxPduId];
    uint8 activeEnable = txIpduStatePtr->TxIpduRTStFlag & 0x1u;

    if (0x1u == activeEnable)
    {
 

         
        if (txIpduStatePtr->RptNum > 0u)
        {
            (txIpduStatePtr->RptNum) -= 1u;
            if (0u == txIpduStatePtr->RptNum)
            {
                txIpduStatePtr->DMCnt = 0u;
                txIpduStatePtr->NTimeCnt = 0u;
            }
        }
         
        else
        {
            txIpduStatePtr->DMCnt = 0u;
        }
        if (0u == txIpduStatePtr->RptNum)
        {
            {
                 
                txIpduStatePtr->TxIpduRTStFlag |= 0x2u;
            }
        }
         
        if (((PduIdType)(~(PduIdType)0) == txIpduPtr->ComTxModeFalseRefId)
            && (COM_TX_MODE_NONE == txIpduPtr->ComTxTrueModeMode))
        {
            txIpduStatePtr->DMCnt = txIpduPtr->ComTxIpduDM;
        }
    }
    txIpduStatePtr->TxIpduRTStFlag &= 0xF7u;
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 
