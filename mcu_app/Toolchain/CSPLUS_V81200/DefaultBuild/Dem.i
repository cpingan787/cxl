











 












 


 












 












 




 
 




















 
 


 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 













 












 




 
 




















 
 

 




 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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


 












 












 




 












 












 

 




















 
 

 




 



 



 



 
typedef  uint8   Dcm_SecLevelType;



 
typedef  uint8   Dcm_SesCtrlType;



  
typedef  uint8   Dcm_ProtocolType;



 
typedef  uint8   Dcm_NegativeResponseCodeType;
 
typedef  uint8   Dcm_ConfirmationStatusType;

typedef  uint8   Dcm_OpStatusType;

typedef  uint8   Dcm_EcuResetType;

typedef  uint8   Rte_ModeType_DcmEcuReset;

typedef  uint8   Rte_ModeType_DcmControlDTCSetting;


 




















 
 

 




















 
 




 



 



 











 




 






 
 
 


 
 


 



 

 
 
 
 
 
 
 
 
 



 
 
 
 
 


 




















 
 


 












 














 


 

 




















 
 



 


 



 
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


 




 



 

 
























 



 
 
 
 
 
 





 

typedef uint8 Dcm_SpecificCauseCodeType;

typedef uint8 Dcm_DidSupportedType;

typedef uint8 Dcm_CommunicationModeType;

typedef uint8 Dcm_EcuStartModeType;




 

 


 
 
 
 
 
 
typedef uint8 Dcm_StatusType;
 
typedef uint8 Dcm_ReturnReadMemoryType;
 
typedef uint8 Dcm_ReturnWriteMemoryType;
 
 




 
typedef enum
{
    DCM_P2TIMER_ON = 0,
    DCM_P2TIMER_OFF = 1
} Dcm_P2StateType;

typedef struct
{
    uint32 Dcm_P2CurTimer;
    uint32 Dcm_P2ExpiredTimer;
    uint8 PendingNum;
    Dcm_P2StateType Dcm_P2State;
} Dcm_P2CtrlType;



 
typedef enum
{
    DCM_CH_IDLE = 0,     
    DCM_CH_OCCUPIED = 1  
} Dcm_ChannelStateType;

typedef enum
{
    DCM_PENDING_REQUEST_NONE = 0,     
    DCM_PENDING_REQUEST_RECEIVE = 1,  
    DCM_PENDING_REQUEST_READY = 2,    
    DCM_PENDING_REQUEST_PROCESS = 3   
} Dcm_PendingRequestStateType;

typedef struct
{
    uint8 Dcm_ChannelCfgIndex;
     
    uint32 Dcm_BufferCunrentPosition;
    uint32 Dcm_BufferErasePosition;
    Dcm_ChannelStateType Dcm_ChannelRxState;  
    Dcm_ChannelStateType Dcm_ChannelTxState;  
} Dcm_ChannelCtrlType;


typedef struct
{
    uint8 Dcm_ConnectionCfgIndex;
    boolean Dcm_ConnectionActive;
} Dcm_ConnectionCtrlType;



 
typedef uint8 Dcm_MsgItemType;
typedef Dcm_MsgItemType* Dcm_MsgType;
typedef uint32 Dcm_MsgLenType;
typedef uint8 Dcm_IdContextType;

typedef struct
{
    uint8 ReqType;  
    boolean SuppressPosResponse;
     
    boolean CancelOperation;
     
} Dcm_MsgAddInfoType;

typedef struct
{
    Dcm_MsgType pReqData;       
    Dcm_MsgLenType ReqDataLen;  
     
    Dcm_MsgType pResData;       
    Dcm_MsgLenType ResDataLen;  
    Dcm_MsgAddInfoType MsgAddInfo;
     
    Dcm_MsgLenType ResMaxDataLen;  
    Dcm_IdContextType IdContext;
    PduIdType DcmRxPduId;  
} Dcm_MsgContextType;

typedef enum
{
    DCM_MSG_WAIT = 0,
    DCM_MSG_RECEIVED = 1,
    DCM_MSG_PROCESSED = 2,
    DCM_MSG_TRANSMISSION = 3,
    DCM_MSG_CONFIRMATION = 4
} Dcm_MsgStateType;

typedef enum
{
    DCM_POS_RSP = 0,          
    DCM_NEG_RSP = 1,          
    DCM_POS_RSP_SUPPRESS = 2  
} Dcm_RspType;

typedef struct
{
    uint8 SID;          
    uint8 Subfunction;  
    Dcm_NegativeResponseCodeType NRC;
     
    boolean SendFlag;  
    PduIdType DcmTxPduId;
    uint8 Dcm_RxCtrlChannelIndex;   
    uint8 Dcm_TxCtrlChannelIndex;   
    Dcm_RspType RspStyle;           
    Dcm_MsgContextType MsgContext;  
    Dcm_P2CtrlType Dcm_P2Ctrl;      
    Dcm_MsgStateType Dcm_MsgState;  
    Std_ReturnType Dcm_Ret;
    Dcm_OpStatusType Dcm_OpStatus;
} Dcm_MsgCtrlType;



 
typedef struct
{
    PduLengthType Length;
    uint8 Buffer[(64u)];
    boolean ConcurrentTesterFailed;
} Dcm_FunctionMessageType;

typedef enum
{
    DCM_EQUALS = 0,
    DCM_EQUALS_NOT,
    DCM_GREATER_OR_EQUAL,
    DCM_GREATER_THAN,
    DCM_LESS_OR_EQUAL,
    DCM_LESS_THAN
} Dcm_ConditionType;

typedef struct
{
    Dcm_ConditionType DcmConditionType;
     
} Dcm_ModeConditionCfgType;

typedef enum
{
    DCM_AND = 0,
    DCM_OR
} Dcm_LogicalOperatorType;

typedef struct
{
    Dcm_LogicalOperatorType DcmLogicalOperator;
    uint8 DcmModeRuleNrcValue;
} Dcm_ModeRuleCfgType;

typedef struct
{
    const Dcm_ModeConditionCfgType * DcmModeCondition;
    const Dcm_ModeRuleCfgType * DcmModeRule;
     
} Dcm_ProcessingConditionsCfgType;



 
typedef enum
{
    DCM_BIG_ENDIAN = 0,
    DCM_LITTLE_ENDIAN = 1,
    DCM_OPAQUE = 2
} Dcm_DspEndianType;

 
typedef Std_ReturnType (*Dcm_GetSeedFncType)(
    Dcm_OpStatusType OpStatus,
    uint8* Seed,
    Dcm_NegativeResponseCodeType* ErrorCode);
typedef Std_ReturnType (*Dcm_CompareKeyFncType)(
    const uint8 * key,
    Dcm_OpStatusType OpStatus,
    Dcm_NegativeResponseCodeType* ErrorCode);
typedef Std_ReturnType (*Dcm_GetSecurityAttemptCounterFncType)(
    Dcm_OpStatusType OpStatus,
    uint8* AttemptCounter);
typedef Std_ReturnType (*Dcm_SetSecurityAttemptCounterFncType)(
    Dcm_OpStatusType OpStatus,
    uint8 AttemptCounter);

 
typedef Std_ReturnType (*Dcm_ClearDTCCheckFncType)(
    uint32 GoDTC,
    Dcm_NegativeResponseCodeType* ErrorCode);

typedef struct
{
    Dcm_ClearDTCCheckFncType DcmDsp_ClearDTCCheckFnc;
} Dcm_DspClearDTCType;

 
typedef struct
{
    boolean DcmDspComControlAllChannelUsed;
    NetworkHandleType DcmDspComMChannelId;
} Dcm_DspComControlAllChannelType;

typedef struct
{
    uint8 idle;
} Dcm_DspComControlSettingType;

typedef struct
{
    boolean DcmDspComControlSpecificChannelUsed;
    uint8 DcmDspSubnetNumber;
    NetworkHandleType DcmDspSpecificComMChannelId;
} Dcm_DspComControlSpecificChannelType;

typedef struct
{
    uint16 DcmDspComControlSubNodeId;
    boolean DcmDspComControlSubNodeUsed;
    NetworkHandleType DcmDspComMSubNodeChannelId;
} Dcm_DspComControlSubNodeType;

typedef struct
{
    uint8 DcmDspComControlAllChannelNum;
    const Dcm_DspComControlAllChannelType * DcmDspComControlAllChannel;
    const Dcm_DspComControlSettingType * DcmDspComControlSetting;
    uint8 DcmDspComControlSpecificChannelNum;
    const Dcm_DspComControlSpecificChannelType *
    DcmDspComControlSpecificChannel;
    uint8 DcmDspComControlSubNodeNum;
    const Dcm_DspComControlSubNodeType * DcmDspComControlSubNode;
} Dcm_DspComControlType;

typedef struct
{
    uint8 DcmDspCommonAuthorizationSecurityLevelRefNum;
    const uint8 * DcmDspCommonAuthorizationSecurityLevelRef;
    uint8 DcmDspCommonAuthorizationSessionRefNum;
    const uint8 * DcmDspCommonAuthorizationSessionRef;
} Dcm_DspCommonAuthorizationType;

 
typedef struct
{
    boolean DcmSupportDTCSettingControlOptionRecord;
} Dcm_DspControlDTCSettingType;

typedef struct
{
    uint16 DcmDspDataScalingInfoSize;
} Dcm_DspDataInfoType;

typedef enum
{
    USE_ASYNCH_CLIENT_SERVER,
    USE_ASYNCH_FNC
} Dcm_DspSecurityUsePortType;

 
typedef struct
{
    uint8 DcmDspSecurityLevel;     
    uint8 DcmDspSecuritySeedSize;  
    uint8 DcmDspSecurityKeySize;   
    uint8 DcmDspSecurityADRSize;
     
    boolean DcmDspSecurityAttemptCounterEnabled;
    uint8 DcmDspSecurityNumAttDelay;
     
    uint16 DcmDspSecurityDelayTime;
     
    uint16 DcmDspSecurityDelayTimeOnBoot;  
    Dcm_GetSeedFncType Dcm_GetSeedFnc;
    Dcm_CompareKeyFncType Dcm_CompareKeyFnc;
    Dcm_GetSecurityAttemptCounterFncType Dcm_GetSecurityAttemptCounterFnc;
    Dcm_SetSecurityAttemptCounterFncType Dcm_SetSecurityAttemptCounterFnc;
    Dcm_DspSecurityUsePortType DcmDspSecurityUsePort;
} Dcm_DspSecurityRowType;

 
typedef struct
{
    const Dcm_DspSecurityRowType * pDcm_DspSecurityRow;
     
    uint8 DcmDspSecurityRow_Num;  
} Dcm_DspSecurityType;

typedef enum
{
    DCM_NO_BOOT,
    DCM_OEM_BOOT,
    DCM_OEM_BOOT_RESPAPP,
    DCM_SYS_BOOT,
    DCM_SYS_BOOT_RESPAPP
} Dcm_DspSessionForBootType;

 
 
typedef struct
{
    Dcm_DspSessionForBootType DcmDspSessionForBoot;
    uint8 DcmDspSessionLevel;  
    uint16 DcmDspSessionP2ServerMax;
     
    uint16 DcmDspSessionP2StarServerMax;
     
} Dcm_DspSessionRowType;

 
typedef struct
{
    const Dcm_DspSessionRowType * pDcmDspSessionRow;
     
    uint8 DcmDspSessionRow_Num;  
} Dcm_DspSessionType;

 

typedef enum
{
    DCM_BOOLEAN = 0,
    DCM_SINT16 = 1,
    DCM_SINT16_N = 2,
    DCM_SINT32 = 3,
    DCM_SINT32_N = 4,
    DCM_SINT8 = 5,
    DCM_SINT8_N = 6,
    DCM_UINT16 = 7,
    DCM_UINT16_N = 8,
    DCM_UINT32 = 9,
    DCM_UINT32_N = 10,
    DCM_UINT8 = 11,
    DCM_UINT8_DYN = 12,
    DCM_UINT8_N = 13,
    DCM_VARIABLE_LENGTH = 14  
} Dcm_DspDataEnumType;

typedef enum
{
    USE_BLOCK_ID = 0,
    USE_DATA_ASYNCH_CLIENT_SERVER = 1,
    USE_DATA_ASYNCH_CLIENT_SERVER_ERROR = 2,
    USE_DATA_ASYNCH_FNC = 3,
    USE_DATA_ASYNCH_FNC_ERROR = 4,
    USE_DATA_SENDER_RECEIVER = 5,
    USE_DATA_SENDER_RECEIVER_AS_SERVICE = 6,
    USE_DATA_SYNCH_CLIENT_SERVER = 7,
    USE_DATA_SYNCH_FNC = 8,
    USE_ECU_SIGNAL = 9
} Dcm_DspDataUsePortEnumType;

typedef enum
{
    DCM_CONTROLMASK_EXTERNAL = 0,
    DCM_CONTROLMASK_INTERNAL = 1,
    DCM_CONTROLMASK_NO = 2
} Dcm_DspDidControlMaskEnumType;

typedef struct
{
    uint8 DcmDspDidControlMaskBitPosition;
} Dcm_DspDidControlEnableMaskType;

typedef struct
{
    Dcm_DspDidControlMaskEnumType DcmDspDidControlMask;
    uint8 DcmDspDidControlMaskSize;
    uint8 DcmDspDidControlSecurityLevelRefNum;
     
    const uint8 * pDcmDspDidControlSecurityLevelRow;
     
    uint8 DcmDspDidControlSessionRefNum;
     
    const uint8 * pDcmDspDidControlSessionRow;
    uint8 DcmDspDidControlRoleRef_Num;
     
    const uint8 * DcmDspDidControlRoleRef;
    boolean DcmDspDidFreezeCurrentState;
    
 
    boolean DcmDspDidResetToDefault;
    
 
    boolean DcmDspDidShortTermAdjustement;
    
 
    const Dcm_DspDidControlEnableMaskType * DcmDspDidControlEnableMask;
    
 
} Dcm_DspDidControlType;

typedef struct
{
     
    uint8 DcmDspDidReadSecurityLevelRefNum;  
    const uint8 *
    pDcmDspDidReadSecurityLevelRow;                               
    uint8 DcmDspDidReadSessionRefNum;                             
    const uint8 * pDcmDspDidReadSessionRow;  
    uint8 DcmDspDidReadRoleRef_Num;
    const uint8 * DcmDspDidReadRoleRef;
} Dcm_DspDidReadType;

typedef struct
{
     
    uint8 DcmDspDidWriteSecurityLevelRefNum;  
    const uint8 *
    pDcmDspDidWriteSecurityLevelRow;                               
    uint8 DcmDspDidWriteSessionRefNum;                             
    const uint8 * pDcmDspDidWriteSessionRow;  
    uint8 DcmDspDidWriteRoleRef_Num;
    const uint8 * DcmDspDidWriteRoleRef;
} Dcm_DspDidWriteType;

 
typedef struct
{
    uint8 DcmDspDDDIDMaxElements;
    boolean DcmDspDidDynamicallyDefined;
    
 
    
 
    
 
    const Dcm_DspDidControlType * pDcmDspDidControl;
     
    const Dcm_DspDidReadType * pDcmDspDidRead;
     
    const Dcm_DspDidWriteType * pDcmDspDidWrite;
     
} Dcm_DspDidInfoType;

 
typedef Std_ReturnType (*Dcm_ConditionCheckReadFncType)(
    Dcm_OpStatusType OpStatus,
    Dcm_NegativeResponseCodeType * Nrc);
   
typedef Std_ReturnType (*Dcm_EcuSignalFncType)(uint8 action, uint8 signal);
typedef Std_ReturnType (*Dcm_ReadEcuSignalFncType)(uint8 * signal);
 
typedef Std_ReturnType (*Dcm_GetScalingInformationFncType)(
    uint8 * ScalingInfo,
    Dcm_NegativeResponseCodeType * ErrorCode);
typedef Std_ReturnType (*Dcm_PidReadDataFncType)(uint8 * Data);
typedef Std_ReturnType (*Dcm_ReadDataFncType)(
    Dcm_OpStatusType OpStatus,
    uint8 * Data,
    Dcm_NegativeResponseCodeType* ErrorCode);
typedef Std_ReturnType (*Dcm_ReadDataLengthFncType)(
    Dcm_OpStatusType OpStatus,
    uint16 * DidLength);

typedef Std_ReturnType (*Dcm_FreezeCurrentStateFncType)(
    Dcm_OpStatusType OpStatus,
    const uint8 * ControlEnableMaskRecord,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_ResetToDefaultFncType)(
    Dcm_OpStatusType OpStatus,
    const uint8 * ControlEnableMaskRecord,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_ReturnControlToECUFncType)(
    const uint8 * ControlEnableMaskRecord,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_ShortTermAdjustmentFncType)(
    const uint8 * ControlStateInfo,
    uint16 DataLength,
    Dcm_OpStatusType OpStatus,
    uint8 * ControlMask,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_WriteDataFncType)(
    const uint8 * data,
    uint16 dataLength,
    Dcm_OpStatusType OpStatus,
    Dcm_NegativeResponseCodeType * ErrorCode);
 
typedef Std_ReturnType (*Dcm_ReadDidRangeDataLengthFncType)(
    uint16 DID,
    Dcm_OpStatusType OpStatus,
    uint16 * DataLength);

typedef Std_ReturnType (*Dcm_IsDidAvailableFncType)(
    uint16 DID,
    Dcm_OpStatusType OpStatus,
    Dcm_DidSupportedType * supported);

typedef Std_ReturnType (*Dcm_ReadDidDataFncType)(
    uint16 DID,
    uint8 * Data,
    Dcm_OpStatusType OpStatus,
    uint16 DataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_WriteDidDataFncType)(
    uint16 DID,
    const uint8 * Data,
    Dcm_OpStatusType OpStatus,
    uint16 DataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef enum
{
    LINEAR = 0,
    SCALE_LINEAR_AND_TEXTTABLE = 1,
    TEXTTABLE = 2
} Dcm_DspDataTypeCategoryType;

typedef struct
{
     
    uint8 idle;  
} Dcm_DspAlternativeDataInterfaceType;

typedef struct
{
    uint32 DcmDspDiagnosisRepresentationDataLowerRange;
    uint32 DcmDspDiagnosisRepresentationDataOffset;
    uint32 DcmDspDiagnosisRepresentationDataResolution;
    uint32 DcmDspDiagnosisRepresentationDataUpperRange;
} Dcm_DspLinearScaleType;

typedef struct
{
    uint32 DcmDspDiagnosisRepresentationDataValue;
    uint32 DcmDspInternalDataValue;
} Dcm_DspTextTableMappingType;

typedef struct
{
    const Dcm_DspDataTypeCategoryType * DcmDspDataTypeCategory;
    const Dcm_DspLinearScaleType * DcmDspLinearScale;
    const Dcm_DspTextTableMappingType * DcmDspTextTableMapping;
} Dcm_DspAlternativeDataPropsType;

typedef struct
{
     
    const Dcm_DspTextTableMappingType * DcmDspTextTableMapping;
} Dcm_DspAlternativeDataTypeType;

typedef struct
{
    const Dcm_DspAlternativeDataInterfaceType * DcmDspAlternativeDataInterface;
    const Dcm_DspAlternativeDataPropsType * DcmDspAlternativeDataProps;
    const Dcm_DspAlternativeDataTypeType * DcmDspAlternativeDataType;
} Dcm_DspDiagnosisScalingType;

typedef struct
{
    uint8 idle;
} Dcm_DspExternalSRDataElementClassType;

typedef struct
{
    Dcm_ConditionCheckReadFncType DcmDspDataConditionCheckReadFnc;
    
 
    boolean DcmConditionCheckReadFncUsed;
    Dcm_EcuSignalFncType DcmDspDataEcuSignalFnc;
    Dcm_ReadEcuSignalFncType DcmDspDataReadEcuSignalFnc;
    Dcm_DspEndianType DcmDspDataEndianness;
    Dcm_FreezeCurrentStateFncType DcmDspDataFreezeCurrentStateFnc;
    
 
    Dcm_GetScalingInformationFncType DcmDspDataGetScalingInfoFnc;
    
 
    Dcm_ReadDataLengthFncType DcmDspDataReadDataLengthFnc;
     
    Dcm_ReadDataFncType DcmDspDataReadFnc;
     
    Dcm_ResetToDefaultFncType DcmDspDataResetToDefaultFnc;
     
    Dcm_ReturnControlToECUFncType DcmDspDataReturnControlToECUFnc;
     
    Dcm_ShortTermAdjustmentFncType DcmDspDataShortTermAdjustmentFnc;
     
    Dcm_WriteDataFncType DcmDspDataWriteFnc;
     
    uint16 DcmDspDataSize;
    Dcm_DspDataEnumType DcmDspDataType;
    Dcm_DspDataUsePortEnumType DcmDspDataUsePort;
    uint16 DcmDspDataBlockId;
    uint8 DcmDspDataInfoIndex;
     
     
    const Dcm_DspDiagnosisScalingType * DcmDspDiagnosisScaling;
    const Dcm_DspExternalSRDataElementClassType *
    DcmDspExternalSRDataElementClass;
} Dcm_DspDataType;

typedef struct
{
    uint16 DcmDspDidDataPos;
    const Dcm_DspDataType * pDcmDspDidData;
} Dcm_DspDidSignalType;

typedef struct
{
    boolean DcmDspDidRangeHasGaps;
    uint16 DcmDspDidRangeIdentifierLowerLimit;
    uint16 DcmDspDidRangeIdentifierUpperLimit;
    Dcm_IsDidAvailableFncType DcmDspDidRangeIsDidAvailableFnc;
    Dcm_ReadDidRangeDataLengthFncType DcmDspDidRangeReadDataLengthFnc;
    Dcm_ReadDidDataFncType DcmDspDidRangeReadDidFnc;
    Dcm_WriteDidDataFncType DcmDspDidRangeWriteDidFnc;
    uint16 DcmDspDidRangeMaxDataLength;
    boolean DcmDspDidRangeUsePort;
    uint8 DcmDspDidRangeInfoIndex;
} Dcm_DspDidRangeType;

typedef struct DcmDspDid
{
    uint16 DcmDspDidId;  
    boolean DcmDspDidUsed;
    uint16 DcmDspDidInfoIndex;
     
    uint8 DcmDspRefDidNum;
     
    const uint16 * pDcmDspRefDidIdArray;
     
     
    
 
    uint16 DcmDspDidSignalNum;
    const Dcm_DspDidSignalType * pDcmDspDidSignal;
} Dcm_DspDidType;

 
typedef enum
{
    DCM_SERVICE_01 = 0,
    DCM_SERVICE_01_02 = 1,
    DCM_SERVICE_02 = 2
} Dcm_DspPidServiceEnumType;

typedef struct
{
    uint8 DcmDspPidSupportInfoLen;
    uint8 DcmDspPidSupportInfoPos;
} Dcm_DspPidSupportInfoType;

typedef struct
{
    Dcm_DspEndianType DcmDspPidDataEndianness;
    Dcm_PidReadDataFncType DcmDspPidDataReadFnc;
    Dcm_DspDataEnumType DcmDspPidDataType;
    Dcm_DspDataUsePortEnumType DcmDspPidDataUsePort;
} Dcm_DspPidService01Type;

typedef struct
{
    uint8 idle;
} Dcm_DspPidService02Type;

typedef struct
{
    uint8 DcmDspPidDataSupportInfoBit;
    const Dcm_DspPidSupportInfoType * DcmDspPidDataSupportInfoRef;
} Dcm_DspPidDataSupportInfoType;

typedef struct
{
    uint16 DcmDspPidDataPos; 

 
    uint16 DcmDspPidDataSize;
    const Dcm_DspPidDataSupportInfoType * pDcmDspPidDataSupportInfo;
    const Dcm_DspPidService01Type * DcmDspPidService01;
    const Dcm_DspPidService02Type * DcmDspPidService02;
} Dcm_DspPidDataType;

 
typedef struct
{
    uint8 DcmDspPidIdentifier;  
    Dcm_DspPidServiceEnumType DcmDspPidService;
    uint8 DcmDspPidSize;  
    boolean DcmDspPidUsed;
    uint8 DcmDspPidSupportInfoNum;
    const Dcm_DspPidSupportInfoType * DcmDspPidSupportInfo;
    uint8 pDcmDspPidDataNum;
    const Dcm_DspPidDataType * pDcmDspPidData;
} Dcm_DspPidType;

 
typedef struct
{
    uint8 DcmDspSupportedAddressAndLengthFormatIdentifier;
} Dcm_DspAddressAndLengthFormatIdentifierType;

typedef struct
{
    uint32 DcmDspReadMemoryRangeHigh;
    uint32 DcmDspReadMemoryRangeLow;
     
    uint8 DcmDspReadMemoryRangeSessionLevelRefNum;  
    const uint8 * pDcmDspReadMemoryRangeSessionLevelRow;
     
    uint8 DcmDspReadMemorySecurityLevelRefNum;  
    const uint8 * pDcmDspReadMemorySecurityLevelRow;
     
} Dcm_DspReadMemoryRangeInfoType;

typedef struct
{
    uint32 DcmDspWriteMemoryRangeHigh;
    uint32 DcmDspWriteMemoryRangeLow;
     
    uint8 DcmDspWriteMemoryRangeSessionLevelRefNum;  
    const uint8 * pDcmDspWriteMemoryRangeSessionLevelRow;
     
    uint8 DcmDspWriteMemorySecurityLevelRefNum;  
    const uint8 * pDcmDspWriteMemorySecurityLevelRow;
     
} Dcm_DspWriteMemoryRangeInfoType;

typedef struct
{
    uint8 DcmDspMemoryIdValue;
    uint8 DcmDspReadMemoryRangeInfoNum;
    const Dcm_DspReadMemoryRangeInfoType * DcmDspReadMemoryRangeInfo;
    uint8 DcmDspWriteMemoryRangeInfoNum;
    const Dcm_DspWriteMemoryRangeInfoType * DcmDspWriteMemoryRangeInfo;
} Dcm_DspMemoryIdInfoType;

typedef struct
{
    uint8 DcmDspAddressAndLengthFormatIdentifierNum;
    const Dcm_DspAddressAndLengthFormatIdentifierType *
    DcmDspAddressAndLengthFormatIdentifier;
    uint8 DcmDspMemoryIdInfoNum;
    const Dcm_DspMemoryIdInfoType * DcmDspMemoryIdInfo;
} Dcm_DspMemoryType;

 
 
typedef struct
{
    uint8 DcmDspRequestControlInBufferSize;
    uint8 DcmDspRequestControlOutBufferSize;
    uint8 DcmDspRequestControlTestId;  
} Dcm_DspRequestControlType;

typedef struct
{
    uint8 DcmRequestFileTransferFileSizeParameterLength;
    uint8 DcmRequestFileTransferLengthFormatIdentifier;
} Dcm_DspRequestFileTransferType;

 
typedef Std_ReturnType (*Dcm_StartRoutineFncType)(
    const uint8 * InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 * OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_StopRoutineFncType)(
    const uint8 * InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 * OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_RequestResultsRoutineFncType)(
    const uint8 * InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 * OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef struct
{
    uint8 idle;  
} Dcm_DspAlternativeArgumentDataType;

typedef struct
{
    const Dcm_DspAlternativeArgumentDataType * DcmDspAlternativeArgumentData;
    const Dcm_DspAlternativeDataPropsType * DcmDspAlternativeDataProps;
    const Dcm_DspAlternativeDataTypeType * DcmDspAlternativeDataType;
} Dcm_DspArgumentScalingType;

typedef struct
{
    Dcm_DspEndianType DcmDspRoutineSignalEndianness;
    uint16 DcmDspRoutineSignalLength;
    uint16 DcmDspRoutineSignalPos;
    Dcm_DspDataEnumType DcmDspRoutineSignalType;
    const Dcm_DspArgumentScalingType * DcmDspArgumentScaling;
} Dcm_DspRoutineInOutSignalType;
typedef struct
{
    uint8 RoutineInOutSignalNum;
    const Dcm_DspRoutineInOutSignalType * DcmDspRoutineInOutSignal;
} Dcm_DspRoutineInOutType;
typedef struct
{
    Dcm_RequestResultsRoutineFncType DcmDspRequestResultsRoutineFnc;
     
    const Dcm_DspCommonAuthorizationType *
    DcmDspRequestRoutineResultsCommonAuthorizationRef;
    uint8 DcmDspRequestRoutineResultsRoleRef_Num;
    const uint8 * DcmDspRequestRoutineResultsRoleRef;
    const Dcm_DspRoutineInOutType * DcmDspRequestRoutineResultsIn;
    const Dcm_DspRoutineInOutType * DcmDspRequestRoutineResultsOut;
} Dcm_DspRequestRoutineResultsType;

 
typedef struct
{
    Dcm_StartRoutineFncType DcmDspStartRoutineFnc;
     
    const Dcm_DspCommonAuthorizationType *
    DcmDspStartRoutineCommonAuthorizationRef;
    uint8 DcmDspStartRoutineRoleRef_Num;
    const uint8 * DcmDspStartRoutineRoleRef;
    const Dcm_DspRoutineInOutType * DcmDspStartRoutineIn;
    const Dcm_DspRoutineInOutType * DcmDspStartRoutineOut;
} Dcm_DspStartRoutineType;

typedef struct
{
    Dcm_StopRoutineFncType DcmDspRoutineStopFnc;
     
    const Dcm_DspCommonAuthorizationType *
    DcmDspStopRoutineCommonAuthorizationRef;
    uint8 DcmDspStopRoutineRoleRef_Num;
    const uint8 * DcmDspStopRoutineRoleRef;
    const Dcm_DspRoutineInOutType * DcmDspStopRoutineIn;
    const Dcm_DspRoutineInOutType * DcmDspStopRoutineOut;
} Dcm_DspStopRoutineType;

typedef struct
{
    uint16 DcmDspRoutineId;  
    uint8 DcmDspRoutineInfoByte;
    boolean DcmDspRoutineUsePort;
    boolean DcmDspRoutineUsed;
    const Dcm_DspCommonAuthorizationType * DcmDspCommonAuthorizationRef;
    const Dcm_DspRequestRoutineResultsType * DcmDspRequestRoutineResults;
    const Dcm_DspStartRoutineType * DcmDspStartRoutine;
    const Dcm_DspStopRoutineType * DcmDspStopRoutine;
} Dcm_DspRoutineType;

 
 
typedef Std_ReturnType (*Dcm_GetInfoTypeValueFncType)(Dcm_OpStatusType OpStatus, uint8* DataValueBuffer);
typedef struct
{
    uint8 DcmDspVehInfoDataOrder;
    uint8 DcmDspVehInfoDataSize;  
    boolean DcmDspVehInfoDataUsePort;
    Dcm_GetInfoTypeValueFncType DcmGetInfoTypeValueFnc;
     
} Dcm_DspVehInfoDataType;

typedef struct
{
    uint8 DcmDspVehInfoInfoType;  
    boolean DcmDspVehInfoNODIProvResp;
    

 
    


 
    uint8 DcmDspVehInfoDataNum;
    const Dcm_DspVehInfoDataType * DcmDspVehInfoData;
} Dcm_DspVehInfoType;

typedef enum
{
    AFTER_RESET = 0,
    BEFORE_RESET = 1
} Dcm_RespToEcuResetType;

typedef struct
{
    uint32 DcmDspPeriodicTransmissionFastRate;
    uint32 DcmDspPeriodicTransmissionMediumRate;
    uint32 DcmDspPeriodicTransmissionSlowRate;
} Dcm_DspPeriodicTransmissionTypes;

typedef enum
{
    DCM_ROE_CLEARED = 0,
    DCM_ROE_STOPPED = 1,
    DCM_ROE_STARTED = 2
} Dcm_RoeEventStatesTypes;

typedef struct
{
    uint16 DcmDspRoeDidRef;  
} Dcm_DspRoeOnChangeOfDataIdentifierType;

typedef struct
{
    uint8 DcmDspRoeDTCStatusMask;
} Dcm_DspRoeOnDTCStatusChangeType;

typedef struct
{
    const Dcm_DspRoeOnChangeOfDataIdentifierType * DspRoeOnChangeOfDataIdentifier;
    const Dcm_DspRoeOnDTCStatusChangeType * pDcmDspRoeOnDTCStatusChange;
} Dcm_DspRoeEventPropertiesType;

typedef struct
{
    uint8 DcmDspRoeEventId;
    Dcm_RoeEventStatesTypes DcmDspRoeInitialEventStatus;
    const Dcm_DspRoeEventPropertiesType * DspRoeEventProperties;
} Dcm_DspRoeEventType;

typedef enum
{
    DCM_ROE_EVENT_WINDOW_INFINITE = 2,
    DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE = 3,
    DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE = 4,
} Dcm_DspRoeEventWindowTimeType;

typedef struct
{
    Dcm_DspRoeEventWindowTimeType DspRoeEventWindowTime;
} Dcm_DspRoeEventWindowTimeTypes;

typedef struct
{
    uint16 DcmDspRoeInterMessageTime;
    uint8 DcmDspRoeEventNum;
    const Dcm_DspRoeEventType * DspRoeEvent;
    uint8 DcmDspRoeEventWindowTimeNum;
    const Dcm_DspRoeEventWindowTimeTypes * pDspRoeEventWindowTime;
} Dcm_DspRoeTypes;

typedef struct
{
    uint16 DcmDspAuthenticationEcuChallengeLength;
    uint8 DcmDspAuthenticationConnectionMainConnectionRef;
    uint32 DcmDspAuthenticationCertificatePublicKeyStoreJobRef;  
    uint32 DcmDspAuthenticationClientChallengeSignJobRef;        
    uint16 DcmDspAuthenticationConnectionCertificateRef;         
    const uint16 *
    DcmDspAuthenticationECUCertificateRef;                          
    uint16 DcmDspAuthenticationPublicKeyElementRef;                 
    uint32 DcmDspAuthenticationRandomJobRef;                        
    uint16 DcmDspAuthenticationRoleElementRef;                      
    uint32 DcmDspAuthenticationVerifyProofOfOwnerShipClientJobRef;  
    const uint16 *
    DcmDspAuthenticationWhiteListDIDElementRef;  
    const uint16 *
    DcmDspAuthenticationWhiteListRIDElementRef;              
    uint16 DcmDspAuthenticationWhiteListServicesElementRef;  
} Dcm_DspAuthenticationConnectionTypes;

typedef struct
{
    const uint32 * DcmDspAuthenticationDefaultSessionTimeOut;
    const uint8 * DcmDspAuthenticationGeneralNRC;
    uint8 DcmDspAuthenticationRoleSize;
    const uint8 * DcmDspAuthenticationWhiteListDIDMaxSize;
    const uint8 * DcmDspAuthenticationWhiteListRIDMaxSize;
    const uint8 * DcmDspAuthenticationWhiteListServicesMaxSize;
    const uint8 * DcmDspAuthenticationDeauthenticatedRoleRef;
    uint8 DcmDspAuthenticationDeauthenticatedRoleRefNum;
    const uint16 * DcmDspAuthenticationPersistRef;
    uint8 DcmDspAuthenticationConnectionNum;
    const Dcm_DspAuthenticationConnectionTypes *
    DcmDspAuthenticationConnection;
} Dcm_DspAuthenticationTypes;

typedef struct
{
    const boolean * DcmDspDDDIDcheckPerSourceDID;
    Dcm_DspEndianType DcmDspDataDefaultEndianness;
    boolean DcmDspEnableObdMirror;
    uint16 DcmDspMaxDidToRead;
    
 
    uint16 DcmDspMaxPeriodicDidToRead;
    uint8 DcmDspPowerDownTime;
    Dcm_RespToEcuResetType DcmResponseToEcuReset;

    const Dcm_DspClearDTCType * pDcmDspClearDTC;
    const Dcm_DspComControlType * pDcmDspComControl;
    const Dcm_DspCommonAuthorizationType * pDcmDspCommonAuthorization;
    const Dcm_DspControlDTCSettingType * pDcmDspControlDTCSetting;

    const Dcm_DspDataType * pDcmDspData;
    const Dcm_DspDataInfoType * pDcmDspDataInfo;

 
    uint16 DcmDspDidNum;  
    const Dcm_DspDidType * pDcmDspDid;
    uint8 DcmDspDidInfoNum;  
    const Dcm_DspDidInfoType * pDcmDspDidInfo;
    uint8 DcmDspDidRangeNum;
    const Dcm_DspDidRangeType * pDcmDspDidRange;

    const Dcm_DspMemoryType * pDcmDspMemory;

 

 
    const Dcm_DspRequestFileTransferType * DcmDspRequestFileTransfer;

 
    uint8 DcmDspRoutineNum;
    const Dcm_DspRoutineType * pDcmDspRoutine;
     
    const Dcm_DspSecurityType * pDcm_DspSecurity;
     
    const Dcm_DspSessionType * pDcm_DspSession;

 
    uint16 DcmDspMaxPeriodicDidScheduler;
    const Dcm_DspPeriodicTransmissionTypes * DspPeriodicTransmission;
    const Dcm_DspAuthenticationTypes * Dcm_DspAuthentication;
} Dcm_DspCfgType;



 
typedef Std_ReturnType (*Dcm_DiagnosticService)(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_DiagnosticService_SubService)(
    Dcm_OpStatusType OpStatus,
    const Dcm_MsgContextType * pMsgContext,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef struct
{
    const Dcm_DiagnosticService_SubService * DcmDsdSubServiceFnc;
    uint8 DcmDsdSubServiceId;
    boolean DcmDsdSubServiceUsed;
    const Dcm_ModeRuleCfgType * DcmDsdSubServiceModeRuleRef;
    const uint8 * DcmDsdSubServiceSecurityLevelRef;
     
    uint8 DcmDsdSubServiceSecurityLevel_Num;  
    const uint8 * DcmDsdSubServiceSessionLevelRef;
    uint8 DcmDsdSubServiceSessionLevel_Num;  
    const uint8 * DcmDsdSubServiceRoleRef;
    uint8 DcmDsdSubServiceRoleRef_Num;
} Dcm_DsdSubServiceCfgType;

typedef enum
{
    DCM_PHYSICAL = 0,
    DCM_FUNCTIONAL = 1,
    DCM_PHYANDFUNC = 2
} Dcm_DslProtocolRxAddrType;

 
typedef struct
{
    boolean DcmDsdServiceUsed;
    Dcm_DiagnosticService DcmDsdSidTabFnc;
    uint8 DcmDsdServiceId;  
    boolean DcmDsdSubfuncAvial;
    boolean DcmDsdSuppressPosRsp;
     
    Dcm_DslProtocolRxAddrType AddressingFormat;
    const Dcm_ModeRuleCfgType * DcmDsdModeRuleRef;
    uint8 DcmDsdSecurityLevel_Num;                               
    const uint8 * pDcmDsdSecurityLevelRef;  
    uint8 DcmDsdSessionLevel_Num;                                
    const uint8 * pDcmDsdSessionLevelRef;
    uint8 DcmDsdSubService_Num;
    const Dcm_DsdSubServiceCfgType * DcmDsdSubService;
    const uint8 * DcmDsdServiceRoleRef;
    uint8 DcmDsdServiceRoleRef_Num;
} Dcm_DsdServiceCfgType;

 
typedef struct
{
    uint8 DcmDsdSidTabId;  
    const Dcm_DsdServiceCfgType *
    pDcmDsdService;                 
    uint8 DcmDsdSidTab_ServiceNum;  
} Dcm_DsdServiceTableCfgType;


 
typedef struct
{
    const Dcm_DsdServiceTableCfgType * pDcmDsdServiceTable;
     
    uint16 DcmDsdServiceTable_Num;  
} Dcm_DsdCfgType;



 
 
typedef struct
{
    uint8 Dcm_DslBufferId;     
    uint32 Dcm_DslBufferSize;  
    uint32 offset;
} Dcm_DslBufferType;

 
 
typedef struct
{
    Std_ReturnType (*StartProtocol)(Dcm_ProtocolType ProtocolID);
    Std_ReturnType (*StopProtocol)(Dcm_ProtocolType ProtocolID);
} Dcm_DslCallbackDCMRequestServiceType;

 
typedef struct
{
    boolean DcmDslDiagRespOnSecondDeclinedRequest;
    
 
    uint8 DcmDslDiagRespMaxNumRespPend; 
 
     
} Dcm_DslDiagRespType;

 
typedef struct
{
    PduIdType DcmDslPeriodicTxConfirmationPduId;
    PduIdType DcmDslTxPduRPduId;
     
} Dcm_DslPeriodicConnectionType;

 
typedef struct
{
    const Dcm_DslPeriodicConnectionType * DcmDslPeriodicConnection;
    uint8 DcmPeriodicTxPduIdNum;
} Dcm_DslPeriodicTransmissionType;

 
typedef struct
{
    PduIdType DcmROETxPduId;
    uint8 DcmROETxPduIdNum;
     
} Dcm_DslResponseOnEventType;

 
typedef struct
{
    uint8 DcmDslParentConnectionCtrlId;  
    Dcm_DslProtocolRxAddrType DcmDslProtocolRxAddrType;
    PduIdType DcmDslProtocolRxPduId;
} Dcm_DslProtocolRxType;

typedef struct
{
    uint8 DcmDslParentConnectionCtrlId;  
    PduIdType DcmDslTxConfirmationPduId;
    PduIdType DcmDslTxPduRPduId;
} Dcm_DslProtocolTxType;

 
typedef struct
{
    uint16 DcmDslProtocolRxTesterSourceAddr;
    const Dcm_DslPeriodicTransmissionType * pDcmDslPeriodicTranmissionConRef;
    NetworkHandleType DcmDslProtocolComMChannelId;  
    const Dcm_DslProtocolTxType * pDcmDslROEConnectionRef;
     
    const Dcm_DslProtocolRxType * pDcmDslProtocolRx;
     
    uint8 DcmDslProtocolRx_Num;
     
    const Dcm_DslProtocolTxType * pDcmDslProtocolTx;
     
    uint8 DcmDslProtocolTx_Num;
     
} Dcm_DslMainConnectionType;
 
typedef struct
{
    uint8 DcmDslParentProtocolRowCtrlId;  
    const Dcm_DslMainConnectionType * pDcmDslMainConnection;
     
    const Dcm_DslPeriodicTransmissionType * pDcmDslPeriodicTransmission;
     
    const Dcm_DslResponseOnEventType * pDcmDslResponseOnEvent;
     
} Dcm_DslConnectionType;

typedef enum
{
    DCM_PROTOCOL_TRAN_TYPE1 = 0x00,
     
    DCM_PROTOCOL_TRAN_TYPE2 = 0x01,  
    DCM_PROTOCAL_TRAN_NOT_VALID = 0x02
} Dcm_DslProtocolTransType;

 
typedef struct
{
    Dcm_ProtocolType DcmDslProtocolID;  
    uint8 DcmDslProtocolPriority;
     
    boolean DcmDslProtocolRowUsed;
    
 
    Dcm_DslProtocolTransType DcmDslProtocolTransType;
     
    boolean DcmSendRespPendOnTransToBoot;
    

 
    uint16 DcmTimStrP2ServerAdjust;
    uint16 DcmTimStrP2StarServerAdjust;
    const Dcm_DslBufferType * DcmDslProtocolRxBufferRef;
    const Dcm_DslBufferType * DcmDslProtocolTxBufferRef;
    uint8 DcmDslServiceTableID;
     
    const Dcm_DslConnectionType * pDcmDslConnection;
    boolean DcmDslProtocolRequestQueued;
} Dcm_DslProtocolRowType;

typedef struct
{
    const Dcm_DslProtocolRowType * pDcmDslProtocolRow;
    uint8 DcmDslProtocolRow_Num;  
} Dcm_DslProtocolType;

 
 
typedef struct
{
    uint8 DcmChannelCfg_Num;                                        
    const Dcm_DslBufferType * pDcmChannelCfg;  
    uint8 DCMCallBackDcmRequest_PortNum;                            
    const Dcm_DslCallbackDCMRequestServiceType *
    pDcmDslCallback_DCMRequestService;
    const Dcm_DslDiagRespType * pDcmDslDiagRespCfg;
     
    const Dcm_DslProtocolType * pDcmDslProtocol;
     
} Dcm_DslCfgType;

typedef struct
{
    uint32 DcmPagedBufferTimeout;
     
} Dcm_PageBufferCfgType;

typedef struct
{
    const Dcm_DslCfgType * pDcmDslCfg;
    const Dcm_DsdCfgType * pDcmDsdCfg;
    const Dcm_DspCfgType * pDcmDspCfg;
    const Dcm_DslProtocolRxType * DslProtocolConnectionRxCfg;
    const Dcm_DslConnectionType * DslProtocolConnectionCfg;
    const Dcm_DslMainConnectionType * DslProtocolMainConnectionCfg;
    const Dcm_DslProtocolTxType * DslProtocolConnectionTxCfg;
    const Dcm_PageBufferCfgType * pDcmPageBufferCfg;
    const Dcm_ProcessingConditionsCfgType * pDcmProcessingConditionsCfg;
} Dcm_CfgType;

typedef struct
{
     
    uint32 DcmTaskTime;
 
    const Dcm_DspDidType * DcmVinRef;

 
} Dcm_GeneralCfgType;

typedef enum
{
    DCM_DSP_ROUTINE_INIT = 0,
    DCM_DSP_ROUTINE_ON = 1,
    DCM_DSP_ROUTINE_OFF = 2
} Dcm_RoutineControlStateType;

typedef enum
{
    DCM_ON = 1,
    DCM_OFF = 0
} Dcm_MkStateType;

typedef struct
{
    Dcm_SesCtrlType Dcm_ActiveSes;        
    Dcm_SecLevelType Dcm_ActiveSec;       
    Dcm_ProtocolType Dcm_ActiveProtocol;  
    uint8 Dcm_ActiveProtocolCfgCtrlId;
    Dcm_MkStateType Dcm_MkState;  
    NetworkHandleType Dcm_ActiveNetwork;
} Dcm_MkCtrlType;

typedef struct
{
    uint16 TesterSourceAddr;      
    uint8 ProtocolId;             
    uint8 Sid;                    
    uint8 SubFncId;               
    boolean ReprogramingRequest;  
    boolean ApplUpdated;          
    boolean ResponseRequired;
     
} Dcm_ProgConditionsType;

typedef struct
{
     
    uint32 address;

     
    uint8 blockId;

     
    uint8 Status;

     
    uint8 MemoryIdInfoIndex;

     
    uint32 BlockLength;

     
    uint32 MemorySize;

    boolean FirstFlag;

    uint8 reqBlockId;

    uint32 DcmLastloadSize;
} Dcm_DspProgramType;

typedef struct
{
    uint8 Subfunction;
    uint32 Data;
    uint16 Size;
} Dcm_DDDidElementsDataTypes;

typedef struct
{
    uint16 Did;
    uint8 SubFunction;
    uint8 Counter;
    uint16 Length;
    uint8 ProtocolCtrlId;
    boolean DDDid;
    uint8 Data[8];
} SchedulerQueueTypes;

typedef struct
{
    PduIdType PduId;
    boolean Transmit;
} SchedulerQueueTransmitTypes;



 
typedef struct
{
    boolean PagedBufferStarted;
    boolean PagedBufferCanceled;
    boolean BufferOverFlowed;
    boolean IsRecord;
    boolean IsFilled;
    boolean IsNextFilled;
    boolean IsBufferOccupied;
    uint8 PagedBuffer[(2048u)];
    uint32 FilledSize;
    uint32 NextFilledSize;
    uint32 TotalSize;
    uint16 IloopOne;
    uint32 ResOffset;
    uint32 ReqOffset;
    boolean TimerStart;
    boolean TimeOut;
    uint32 CurTimer;
    uint32 ExpiredTimer;
} Dcm_PageBufferDataType;

typedef struct
{
    uint8 DcmVIN[17];
    boolean Flag;
} Dcm_VINType;



 
typedef struct
{
    PduLengthType Length;
    uint8 Buffer[(64u)];
} Dcm_OBDMessageType;

typedef enum
{
    DCM_COMM_NO_COMMUNICATION = 0,      
    DCM_COMM_SILENT_COMMUNICATION = 1,  
    DCM_COMM_FULL_COMMUNICATION = 2     
} Dcm_CommStateType;

typedef enum
{
    DCM_COMM_ACTIVE = 0,
    DCM_COMM_NOT_ACTIVE = 1,
} Dcm_ActiveDiagnosticType;

typedef struct
{
    Dcm_CommStateType Dcm_CommState;
    Dcm_ActiveDiagnosticType Dcm_ActiveDiagnostic;
    NetworkHandleType DcmDslProtocolComMChannelId;
} Dcm_CommCtrlType;

 


 
typedef enum
{
    DCM_SECTIMER_ON = 1u,  
    DCM_SECTIMER_OFF = 0u  
} Dcm_SecTimerStateType;

typedef struct
{
    uint32 Dcm_SecCurTimer[(1u)];      
    uint32 Dcm_SecExpiredTimer[(1u)];  
    Dcm_SecTimerStateType Dcm_SecTimerState[(1u)];
} Dcm_SecTimerCtrlType;

typedef enum
{
    DCM_SERVICE_IDLE = 0u,  
    DCM_SERVICE_SEED = 1u,  
    DCM_SERVICE_KEY = 2u    
} Dcm_SecServiceStateType;

typedef struct
{
    uint8 Dcm_SubfunctionForSeed;  
    uint8 Dcm_FalseAcessCount[(1u)];
     
    Dcm_SecLevelType Dcm_ActiveSec;               
    Dcm_SecLevelType Dcm_NewSec;                  
    Dcm_SecServiceStateType Dcm_SecServiceState;  
    Dcm_SecTimerCtrlType Dcm_RunDlyCtrl;
     
    Dcm_OpStatusType Dcm_OpStatus;
    uint8 Dcm_SecFlag;
    uint8 Dcm_SecCfgIndex;
    uint16 Dcm_MaxReadoutTime;
} Dcm_SecCtrlType;


 
typedef enum
{
    DCM_S3TIMER_ON = 0,
    DCM_S3TIMER_OFF = 1
} Dcm_S3StateType;

typedef struct
{
    uint32 Dcm_S3CurTimer;
    uint32 Dcm_S3ExpiredTimer;    
    Dcm_S3StateType Dcm_S3State;  
    uint8 connectionId;
} Dcm_S3CtrlType;

typedef enum
{
    DCM_SESSION_DEFAULT = 0,   
    DCM_SESSION_UNDEFAULT = 1  
} Dcm_SesStateType;

typedef struct
{
    Dcm_SesCtrlType Dcm_ActiveSes;  
    Dcm_SesCtrlType Dcm_NewSes;
     
    Dcm_S3CtrlType Dcm_S3Ctrl;          
    Dcm_SesStateType Dcm_SessionState;  
} Dcm_SesCtrlCBType;



 
typedef enum
{
    DCM_PROTOCOL_VALID = 1,   
    DCM_PROTOCOL_INVALID = 0  
} Dcm_ProtocolStateType;

typedef struct
{
    Dcm_ProtocolType ProtocolId;              
    uint8 ProtocolPri;                        
    uint8 MsgCtrlIndex;                       
    uint32 P2ServerMax;                       
    uint32 P2ServerMin;                       
    uint32 P2StarServerMax;                   
    uint32 P2StarServerMin;                   
    uint32 S3Server;                          
    Dcm_ProtocolStateType Dcm_ProtocolState;  
} Dcm_ProtocolCtrlType;

typedef struct
{
    boolean UDSCall;
    uint8 SID;
    uint8 pid;
} OBD_ReadPidValuesTypes;

 
typedef enum Dcm_LinkControlStatus_t
{
    LINK_CONTROL_IDLE = 0,
    LINK_CONTROL_FBR_VERIFICATION = 1,
    LINK_CONTROL_FBR_TRANSITION = 2,
    LINK_CONTROL_SBR_VERIFICATION = 3,
    LINK_CONTROL_SBR_TRANSITION = 4
} Dcm_LinkControlStatusType;

 
typedef struct Dcm_LinkControlCtrlType_t
{
    Dcm_LinkControlStatusType linkCtrlStatus;
    uint8 fixedBaudrate;
    uint32 specialBaudrate;
} Dcm_LinkControlCtrlType;













 












 
 



















































































































 




 





































































































 



 












 












 













 












 



 



 
 

 

 

 

 

 

 

 

 

 

 

 




 

 


 

 

 

 

 

 


 

 

 

 


 

 


 









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






 

typedef struct
{
    uint8 DtcAbsTime;
    uint16 DtcRef;
} Dem_DTCReportByTimeOrderType;
 
typedef struct
{
    Dem_EventIdType FirstFailed;
    Dem_EventIdType MostRecentFailed;
    Dem_EventIdType FirstDtcConfirmed;
    Dem_EventIdType MostRecDtcConfirmed;
} Dem_DTCByOccurrenceTimeType;

 
typedef struct
{
     
    Dem_UdsStatusByteType DTCStatusMask;
    Dem_UdsStatusByteType RequestDTCStatusMask;
    Dem_DTCKindType DTCKind;
    Dem_DTCFormatType DTCFormat;
    Dem_DTCOriginType DTCOrigin;
    boolean FilterWithSeverity;
    Dem_DTCSeverityType DTCSeverityMask;
    boolean FilterForFaultDetectionCounter;
    boolean TimeOrder;
    Dem_DTCReportByTimeOrderType DemDTCReportByTimeOrder[59u];
    uint16 DemDTCTimeOrderNum;
    uint16 DemDemDTCReportNum;
    uint16 DemDTCReport[59u];

     
    boolean IsSet;
     
    uint16 NumberOfFilteredDTC;
    uint16 CurrentIndex;
} Dem_DTCFilterInfoType;

typedef uint8 Dem_FilterForFDCType;

typedef uint8 Dem_FilterWithSeverityType;

typedef uint8 Dem_ReturnSetDTCFilterType;

typedef Dem_ReturnGetNextFilteredElementType Dem_ReturnGetNextFilteredDTCType;

typedef uint8 Dem_ReturnGetDTCOfFreezeFrameRecordType;


typedef uint8 Dem_ReturnGetFreezeFrameDataIdentifierByDTCType;


typedef uint8 Dem_ReturnGetSizeOfFreezeFrameType;

typedef uint32 Dem_DTCGroupType;

typedef uint8 Dem_ReturnControlDTCStorageType;

typedef uint8 Dem_ReturnControlEventUpdateType;

typedef uint8 Dem_ReturnGetSizeOfExtendedDataRecordByDTCType;

extern Dem_DTCFilterInfoType DemDTCFilterInfo;

extern Dem_DTCByOccurrenceTimeType DemDTCByOccurrenceTimeInfo;

 










 
 
extern  Dem_DTCTranslationFormatType Dem_DcmGetTranslationType(void);

 











 
 
extern  Std_ReturnType
    Dem_DcmGetDTCStatusAvailabilityMask(Dem_UdsStatusByteType * DTCStatusMask);

 















 
 
extern  Dem_ReturnGetStatusOfDTCType
    Dem_DcmGetStatusOfDTC(uint32 DTC, Dem_DTCOriginType DTCOrigin, uint8 * DTCStatus);

 









 
 
extern  Dem_ReturnGetSeverityOfDTCType
    Dem_DcmGetSeverityOfDTC(uint32 DTC, Dem_DTCSeverityType * DTCSeverity);

 









 
 
extern  Dem_ReturnGetFunctionalUnitOfDTCType
    Dem_DcmGetFunctionalUnitOfDTC(uint32 DTC, uint8 * DTCFunctionalUnit);

 




















 
 
extern  Dem_ReturnSetFilterType Dem_DcmSetDTCFilter(
    Dem_UdsStatusByteType DTCStatusMask,
    Dem_DTCKindType DTCKind,
    Dem_DTCFormatType DTCFormat,
    Dem_DTCOriginType DTCOrigin,
    boolean FilterWithSeverity,
    Dem_DTCSeverityType DTCSeverityMask,
    boolean FilterForFaultDetectionCounter);

 









 
 
extern  Dem_ReturnGetNumberOfFilteredDTCType
    Dem_DcmGetNumberOfFilteredDTC(uint16 * NumberOfFilteredDTC);

 












 
 
extern  Dem_ReturnGetNextFilteredElementType Dem_DcmGetNextFilteredDTC(
    uint32 * DTC,
    Dem_UdsStatusByteType * DTCStatus);

 













 
 
extern  Dem_ReturnGetNextFilteredElementType Dem_DcmGetNextFilteredDTCAndFDC(
    uint32 * DTC,
    sint8 * DTCFaultDetectionCounter);

 


























 
 
extern  Dem_ReturnGetNextFilteredElementType Dem_DcmGetNextFilteredDTCAndSeverity(
    uint32 * DTC,
    Dem_UdsStatusByteType * DTCStatus,
    Dem_DTCSeverityType * DTCSeverity,
    uint8 * DTCFunctionalUnit);

 











 
 
extern  Dem_ReturnSetFilterType Dem_DcmSetFreezeFrameRecordFilter(
    Dem_DTCFormatType DTCFormat,
    uint16 * NumberOfFilteredRecords);

 














 
 
extern  Dem_ReturnGetNextFilteredElementType Dem_DcmGetNextFilteredRecord(
    uint32 * DTC,
    uint8 * RecordNumber);

 









 
 
extern  Dem_ReturnGetDTCByOccurrenceTimeType
    Dem_DcmGetDTCByOccurrenceTime(Dem_DTCRequestType DTCRequest, uint32 * DTC);

 










 
 
extern  void Dem_DcmControlDTCStatusChangedNotification(boolean TriggerNotification);



 
 















 
 
extern  Dem_ReturnDisableDTCRecordUpdateType
    Dem_DcmDisableDTCRecordUpdate(uint32 DTC, Dem_DTCOriginType DTCOrigin);

 










 
 
extern  Std_ReturnType Dem_DcmEnableDTCRecordUpdate(void);

 


















 
 
extern  Dem_ReturnGetFreezeFrameDataByDTCType Dem_DcmGetFreezeFrameDataByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 RecordNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 














 
 
extern  Dem_ReturnGetSizeOfDataByDTCType Dem_DcmGetSizeOfFreezeFrameByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 RecordNumber,
    uint16 * SizeOfFreezeFrame);

 


















 
 
extern  Dem_ReturnGetExtendedDataRecordByDTCType Dem_DcmGetExtendedDataRecordByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 ExtendedDataNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 















 
 
extern  Dem_ReturnGetSizeOfDataByDTCType Dem_DcmGetSizeOfExtendedDataRecordByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 ExtendedDataNumber,
    uint16 * SizeOfExtendedDataRecord);

 























 
 
extern  Dem_ReturnClearDTCType
    Dem_DcmCheckClearParameter(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin);

 


















 
 
 Dem_ReturnClearDTCType
Dem_DcmClearDTC(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin);

 















 
 
 Dem_ReturnControlDTCSettingType
Dem_DcmEnableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);

 












 
 
extern  Dem_ReturnControlDTCSettingType
    Dem_DcmDisableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);

 











 
 
extern  Dem_ReturnClearDTCType
    Dem_DcmGetDTCSeverityAvailabilityMask(Dem_DTCSeverityType * DTCSeverityMask);




 












 












 
 








































































 


 












 












 

 
 

 
 




















 
 



 




 


 


 

 




extern uint8 NvMBlockRamBuffer1[2];
extern uint8 NvMBlockRamBuffer2[5];
extern uint8 NvMBlockRamBuffer5[3];
extern uint8 NvMBlockRamBuffer6[16];
extern uint8 NvMBlockRamBuffer7[17];
extern uint8 NvMBlockRamBuffer8[11];
extern uint8 NvMBlockRamBuffer9[20];
extern uint8 NvMBlockRamBuffer10[32];
extern uint8 NvMBlockRamBuffer11[64];
extern uint8 NvMBlockRamBuffer12[32];
extern uint8 NvMBlockRamBuffer13[32];
extern uint8 NvMBlockRamBuffer14[64];
extern uint8 NvMBlockRamBuffer15[32];
extern uint8 NvMBlockRamBuffer16[32];
extern uint8 NvMBlockRamBuffer17[32];
extern uint8 NvMBlockRamBuffer18[32];
extern uint8 NvMBlockRamBuffer19[6];
extern uint8 NvMBlockRamBuffer20[32];
extern uint8 NvMBlockRamBuffer21[6];
extern uint8 NvMBlockRamBuffer22[4];
extern uint8 NvMBlockRamBuffer23[2];
extern uint8 NvMBlockRamBuffer24[64];
extern uint8 NvMBlockRamBuffer25[32];
extern uint8 NvMBlockRamBuffer26[32];
extern uint8 NvMBlockRamBuffer27[64];
extern uint8 NvMBlockRamBuffer28[32];
extern uint8 NvMBlockRamBuffer29[32];
extern uint8 NvMBlockRamBuffer30[2];
extern uint8 NvMBlockRamBuffer31[8];
extern uint8 NvMBlockRamBuffer32[14];
extern uint8 NvMBlockRamBuffer33[37];
extern uint8 NvMBlockRamBuffer34[1];
extern uint8 NvMBlockRamBuffer35[2];
extern uint8 NvMBlockRamBuffer36[1];
extern uint8 NvMBlockRamBuffer37[2];
extern uint8 NvMBlockRamBuffer38[8];
extern uint8 NvMBlockRamBuffer39[8];
extern uint8 NvMBlockRamBuffer40[2];
extern uint8 NvMBlockRamBuffer41[8];
extern uint8 NvMBlockRamBuffer42[2];
extern uint8 NvMBlockRamBuffer43[1];
extern uint8 NvMBlockRamBuffer44[1];
extern uint8 NvMBlockRamBuffer45[24];
extern uint8 NvMBlockRamBuffer46[2];
extern uint8 NvMBlockRamBuffer47[254];
extern uint8 NvMBlockRamBuffer48[254];
extern uint8 NvMBlockRamBuffer49[254];
extern uint8 NvMBlockRamBuffer50[1];
extern uint8 NvMBlockRamBuffer51[4];
extern uint8 NvMBlockRamBuffer52[16];
extern uint8 NvMBlockRamBuffer53[16];

extern uint32 NvMCrcBuf_NvMBlock_ConfigID[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF1A9[1];
extern uint32 NvMCrcBuf_NvMBlock_All_EventEntry[1];
extern uint32 NvMCrcBuf_NvMBlock_UDS_InternalData[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF18B[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF18C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF190[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF198[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF1A8[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF130[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC001[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC002[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC003[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC004[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC005[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC006[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC007[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC008[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC009[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00A[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00B[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00D[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC011[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC012[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC013[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC014[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC015[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC016[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC102[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC106[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC109[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCA02[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCA21[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC305[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC306[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC307[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC308[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC309[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30A[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE01[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE05[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE06[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCF00[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30D[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block0[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block1[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block2[1];
extern uint32 NvMCrcBuf_NvMBlock_27Key_error_count[1];
extern uint32 NvMCrcBuf_NvMBlock_SecOc_count[1];
extern uint32 NvMCrcBuf_NvMBlock_SecOc_Key[1];
extern uint32 NvMCrcBuf_NvMBlock_DID0100[1];



 

 




















 
 




 





 
typedef enum
{
     
    NVM_REQ_OK,
     
    NVM_REQ_NOT_OK,
     
    NVM_REQ_PENDING,
    


 
    NVM_REQ_INTEGRITY_FAILED,
    
 
    NVM_REQ_BLOCK_SKIPPED,
     
    NVM_REQ_NV_INVALIDATED,
     
    NVM_REQ_CANCELED,
     
    NVM_REQ_REDUNDANCY_FAILED,
     
    NVM_REQ_RESTORED_FROM_ROM
} NvM_RequestResultType;

typedef uint16 NvM_BlockIdType;      

typedef enum
{
     
    NVM_INIT_READ_BLOCK,
     
    NVM_INIT_RESTORE_BLOCK_DEFAULTS,
     
    NVM_INIT_READ_ALL_BLOCK,
     
    NVM_INIT_FIRST_INIT_ALL
} NvM_InitBlockRequestType;

typedef enum
{
     
    NVM_READ_BLOCK,
     
    NVM_WRITE_BLOCK,
     
    NVM_RESTORE_BLOCK_DEFAULTS,
     
    NVM_ERASE_NV_BLOCK,
     
    NVM_INVALIDATE_NV_BLOCK,
     
    NVM_READ_ALL_BLOCK
} NvM_BlockRequestType;




 

 

 
typedef enum
{
    NVM_CRC_NOT_USED,
    NVM_CRC8,
    NVM_CRC16,
    NVM_CRC32
} NvM_BlockCRCType;

 
typedef enum
{
    NVM_BLOCK_NATIVE = 1,
    NVM_BLOCK_REDUNDANT,
    NVM_BLOCK_DATASET
} NvM_BlockManagementType;

 
typedef enum
{
    NVM_BLOCK_DESC_WRITEBLOCKONCE,
    NVM_BLOCK_DESC_WRITEPROT,
    NVM_BLOCK_DESC_CALCRAMBLOCKCRC,
    NVM_BLOCK_DESC_RESISTANTTOCHANGEDSW,
    NVM_BLOCK_DESC_SELECTBLOCKFORREADALL,
    NVM_BLOCK_DESC_SELECTBLOCKFORWRITEALL,
    NVM_BLOCK_DESC_STATICBLOCKIDCHECK,
    NVM_BLOCK_DESC_WRITEVERIFICATION,
    NVM_BLOCK_DESC_AUTOVALIDATION,
    NVM_BLOCK_DESC_CRCCOMPMECHANISM,
    NVM_BLOCK_DESC_SETRAMSTATUS,
    NVM_BLOCK_DESC_SYNCMECHANISM,
    NVM_BLOCK_DESC_BSWBLOCKSTATUSINFO
} NvM_BlockDescrptorFlagType;

 
typedef enum
{
    NVM_MEMIF_REQ_READ,
    NVM_MEMIF_REQ_WRITE,
    NVM_MEMIF_REQ_ERASE,
    NVM_MEMIF_REQ_INVALID
} NvM_MemIfReqType;

typedef enum
{
    NVM_READ_ALL,         
    NVM_WRITE_ALL,        
    NVM_VALIDATE_ALL,     
    NVM_FIRST_INIT_ALL,   
    NVM_CANCEL_WRITE_ALL  
} NvM_MultiBlockRequestType;







 
typedef Std_ReturnType (*NvM_InitBlockCallbackType)(
    NvM_InitBlockRequestType InitBlockRequest);  







 
typedef Std_ReturnType (*NvM_SingleBlockCallbackType)(
    NvM_BlockRequestType BlockRequest,
    NvM_RequestResultType JobResult);
 







 
typedef Std_ReturnType (*NvM_ReadRamBlockFromNvmCallbackType)(const void* NvMBuffer);
 







 
typedef Std_ReturnType (*NvM_WriteRamBlockToNvmCallbackType)(void* NvMBuffer);
 




 
typedef void (*NvM_MultiBlockCallbackType)(
    NvM_MultiBlockRequestType MultiBlockRequest,
    NvM_RequestResultType JobResult);
 



 
typedef void (*NvM_VoidFuncVoidPtr)(void);




 




 
typedef enum
{
    NVM_INIT_SERV_ID = 0x0,
    NVM_SET_DATA_INDEX_SERV_ID,
    NVM_GET_DATA_INDEX_SERV_ID,
    NVM_SET_BLOCK_PROTECTION_SERV_ID,
    NVM_GET_ERROR_STATUS_SERV_ID,
    NVM_SET_RAM_BLOCK_STATUS_SERV_ID,
    NVM_READ_BLOCK_SERV_ID,
    NVM_WRITE_BLOCK_SERV_ID,
    NVM_RESTORE_BLOCK_DEFAULTS_SERV_ID,
    NVM_ERASE_NV_BLOCK_SERV_ID,
    NVM_CANCEL_WRITE_ALL_SERV_ID,
    NVM_INVALIDATE_NV_BLOCK_SERV_ID,
    NVM_READ_ALL_SERV_ID,
    NVM_WRITE_ALL_SERV_ID,
    NVM_CANCEL_JOBS_SERV_ID = 0x10,
    NVM_SET_BLOCK_LOCK_STATUS_SERV_ID = 0x13,
    NVM_READ_PRAM_BLOCK_SERV_ID = 0x16,
    NVM_WRITE_PRAM_BLOCK_SERV_ID,
    NVM_RESTORE_PRAM_BLOCK_DEFAULTS_SERV_ID,
    NVM_VALIDATE_ALL_SERV_ID,
    NVM_NONE_SERV_ID
} NvM_ServiceIdType;

 
typedef enum
{
    NVM_ATOMJOB_READBLOCK,
    NVM_ATOMJOB_WRITEBLOCK,
    NVM_ATOMJOB_READROM,
    NVM_ATOMJOB_CALCCRC,
    NVM_ATOMJOB_WRITEVERIFICATION,
    NVM_ATOMJOB_MAX_NONE
} NvM_AtomJobEType;

 
typedef enum
{
    NVM_JOB_TYPE_SINGLE_NORMAL,
    NVM_JOB_TYPE_MULTI,
    NVM_JOB_TYPE_NONE
} NvM_JobTypeType;

 
typedef enum
{
    NVM_JOB_STEP_READ_1ST_NV,
    NVM_JOB_STEP_READ_2ND_NV,
    NVM_JOB_STEP_WRITE_1ST_NV,
    NVM_JOB_STEP_WRITE_2ND_NV,
    NVM_JOB_STEP_ERASE_1ST_NV,
    NVM_JOB_STEP_ERASE_2ND_NV,
    NVM_JOB_STEP_INVALID_1ST_NV,
    NVM_JOB_STEP_INVALID_2ND_NV,
    NVM_JOB_STEP_READ_ROM,
    NVM_JOB_STEP_CALC_CRC_READ_1ST_NV,
    NVM_JOB_STEP_CALC_CRC_READ_2ND_NV,
    NVM_JOB_STEP_CALC_CRC,
    NVM_JOB_STEP_IDLE,  
    NVM_JOB_STEP_PENDING,
    NVM_JOB_STEP_CANCEL,
    NVM_JOB_STEP_COPY,
    NVM_JOB_STEP_WRITE_VERIFICATION,
    NVM_JOB_STEP_CHECK
} NvM_JobStepType;

 
typedef enum
{
    NVM_MEMIF_JOB_IDLE,
    NVM_MEMIF_JOB_ASYNC_READY,
    NVM_MEMIF_JOB_ASYNC_PENDING
} NvM_MemIfStateType;

 
typedef enum
{
    NVM_RUNTIME_NONE,
    NVM_RUNTIME_EXTENDED,
    NVM_RUNTIME_NORMAL
} NvM_RuntimeType;

 
typedef struct
{
    uint8 Init;
    NvM_JobTypeType CurrentJobType;
    NvM_RuntimeType RuntimeType;
    NvM_MemIfStateType MemIfJobState;
    NvM_JobStepType JobStep;
} NvM_ModuleType;

 
typedef struct
{
    uint8 Enqueue;
    NvM_ServiceIdType ServiceId;
    uint8 CancelWriteAll;
    uint8 ID1WriteMark;
    NvM_RequestResultType ReqResult;
} NvM_MultiJobType;

 
typedef struct
{
    uint8 Count;
    NvM_AtomJobEType ReqId[NVM_ATOMJOB_MAX_NONE];
} NvM_AtomJobType;

 
typedef struct
{
    NvM_BlockIdType BlockId;
    NvM_BlockIdType StaticId;
    NvM_BlockIdType BlockIdIndex;
    uint8 DeviceId;
    NvM_ServiceIdType ServiceId;
    uint8 Index;
    uint8 NvNum;
    uint8 RomNum;
    uint16 AdminFlagGroup;
    uint8 ReadRetryCounter;
    uint8 WriteTimesCounter;
    uint8 RepeatMirrorCounter;
    NvM_RequestResultType ESingleReqResult;
    NvM_RequestResultType EMultiReqResult;
    NvM_BlockManagementType ManagementType;
    NvM_BlockCRCType CRCType;
    uint16 BaseNumber;
    uint16 Length;
    uint16 VerificationSize;
    uint16 VerificationCounter;
    uint8 * RamAddr;
    uint8 * RomAddr;
    uint8 CrcFlag;
    uint8 * CrcAddr;
    uint16 CrcLength;
    uint32 Crc;
    uint32 TempCrc;
    NvM_ReadRamBlockFromNvmCallbackType NvM_ReadRamBlockFromNvm;
    NvM_WriteRamBlockToNvmCallbackType NvM_WriteRamBlockToNvm;
    NvM_InitBlockCallbackType InitCallback;
    NvM_SingleBlockCallbackType SingleCallback;
} NvM_CurRunningType;

 
typedef struct
{
    uint16 FlagGroup;
    uint8 CurrentIndex;
    NvM_ServiceIdType ServiceID;
    NvM_RequestResultType SingleReqResult;
    boolean ReadReq;
} NvM_AdminBlockType;


 
typedef struct
{
    uint8 Count;
    uint8 HeadIndex;
    uint8 TailIndex;
} NvM_RoundRobinQueueManageType;

 
typedef struct
{
    NvM_BlockIdType BlockId;
    NvM_ServiceIdType ServiceId;
    uint8 * DestSrcPtr;
} NvM_StandQueueType;

typedef struct
{
    uint8 NvmNvramDeviceId;
    NvM_BlockManagementType NvmBlockManagementType;
    NvM_BlockIdType RepaireIndex;
    













 
    uint16 FlagGroup;
    NvM_BlockCRCType NvmBlockCRCType;
    uint16 NvmNvBlockBaseNumber;
    uint16 NvmNvBlockLength;
    uint8 NvmNvBlockNum;
    uint8 NvmRomBlockNum;
    uint8 NvMMaxNumOfReadRetries;
    uint8 NvMMaxNumOfWriteRetries;
    uint16 NvMWriteVerificationDataSize;
    uint32 * NvmBlockCrcBuffAddress;
    uint8 * NvmRamBlockDataAddress;
    uint8 * NvmRomBlockDataAddress;
    NvM_InitBlockCallbackType NvmInitBlockCallback;
    NvM_SingleBlockCallbackType NvmSingleBlockCallback;
    NvM_ReadRamBlockFromNvmCallbackType NvM_ReadRamBlockFromNvm;
    NvM_WriteRamBlockToNvmCallbackType NvM_WriteRamBlockToNvm;
} NvM_BlockDescriptorType;

 
typedef enum
{
    NVM_CRC_REMAIN,
    NVM_CRC_DELETE,
    NVM_CRC_UPDATE
} NvM_CrcChangeType;

 
typedef enum
{
    NVM_CRC_STATICID_NO_USE,
    NVM_CRC_STATICID_NOT_OK,
    NVM_CRC_STATICID_OK
} NvM_CrcStaticIdStatusType;

typedef struct
{
    uint8 idle;  
} NvM_ConfigType;


 

   
 










































 

 

 

extern const NvM_BlockDescriptorType NvM_BlockDescriptor[53U];

extern const NvM_MultiBlockCallbackType NvmMultiBlockCallback;


 











 
 
extern  void NvM_Init(const NvM_ConfigType* ConfigPtr);


 











 
 
extern  void NvM_CancelWriteAll(void);

 











 
 
extern  void NvM_ReadAll(void);
 











 
 
extern  void NvM_WriteAll(void);

 













 
 
extern  Std_ReturnType NvM_WritePRAMBlock(NvM_BlockIdType BlockId);

 













 
 
extern  Std_ReturnType NvM_RestorePRAMBlockDefaults(NvM_BlockIdType BlockId);

 











 
 
extern  void NvM_SetBlockLockStatus(NvM_BlockIdType BlockId, boolean BlockLocked);

 














 
 
extern  Std_ReturnType NvM_SetDataIndex(NvM_BlockIdType BlockId, uint8 DataIndex);

 













 
 
extern  Std_ReturnType
    NvM_GetDataIndex(NvM_BlockIdType BlockId, uint8 * DataIndexPtr);

 













 
 
extern  Std_ReturnType NvM_ReadPRAMBlock(NvM_BlockIdType BlockId);

 













 
 
extern  Std_ReturnType NvM_ReadBlock(NvM_BlockIdType BlockId, void* NvM_DstPtr);

 














 
 
extern  Std_ReturnType NvM_WriteBlock(NvM_BlockIdType BlockId, const void* NvM_SrcPtr);

 













 
 
extern  Std_ReturnType NvM_RestoreBlockDefaults(NvM_BlockIdType BlockId, void* NvM_DestPtr);

 













 
 
extern  Std_ReturnType
    NvM_GetErrorStatus(NvM_BlockIdType BlockId, NvM_RequestResultType* RequestResultPtr);

 













 
 
extern  Std_ReturnType NvM_CancelJobs(NvM_BlockIdType BlockId);

 











 
 
extern  void NvM_ValidateAll(void);


 















 
 
extern  Std_ReturnType NvM_SetBlockProtection(NvM_BlockIdType BlockId, boolean ProtectionEnabled);

 













 
 
extern  Std_ReturnType NvM_InvalidateNvBlock(NvM_BlockIdType BlockId);

 













 
 
extern  Std_ReturnType NvM_EraseNvBlock(NvM_BlockIdType BlockId);


 



 
 


static inline Dem_EventIdType Dem_GetEventInternalId(Dem_EventIdType ExtId)
{
    return ((ExtId)-1u);
}
static inline Dem_EventIdType Dem_GetEventExternalId(Dem_EventIdType ExtId)
{
    return ((ExtId) + 1u);
}

 
static inline uint8 DEM_GET_BIT(uint8 status, uint8 i)
{
    return (((status & i) == i) ? 1u : 0u);
}

 

static inline uint8 DEM_FLAGS_ISSET(uint8 status, uint8 val)
{
    return ((status) & (val));
}

 
 
static inline void DEM_BITS_SET(uint8* p, uint32 n)
{
    ((p)[((n) >> 3u)] |= ((uint8)(1u << ((n) & 7u))));
}
static inline void DEM_BITS_CLR(uint8* p, uint32 n)
{
    ((p)[((n) >> 3u)] &= ((uint8)(~((uint8)(1u << ((n) & 7u))))));
}
static inline boolean DEM_BITS_ISSET(const uint8* p, uint32 n)
{
    return (0x0u != ((p)[((n) >> 3u)] & ((uint8)(1u << ((n) & 7u)))));
}

static inline boolean DEM_BITS_ISNSET(const uint8* p, uint32 n)
{
    return (0x0u == ((p)[((n) >> 3u)] & ((uint8)(1u << ((n) & 7u)))));
}

 

 


 

static inline void DEM_DET_REPORT(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportError(54U, 1U, (ApiId), (ErrorId));
}





 
typedef void (*Dem_ProcessEventPtr)(Dem_EventRelateInformationType* pEvent);


 
extern const Dem_ConfigType * DemPbCfgPtr;

extern boolean Dem_Pending;

extern Dem_StateType Dem_InitState;

extern FDCInfoType FDCInfo[59u];

extern Dem_ClearDTCInfoType DemClearDTCInfo;

extern Dem_MemDestInfoType DemMemDestInfo[1u];

extern Dem_EventRelateInformationType DemEventRelateInformation[59u];

extern Dem_DTCGeneralStatusType DemDTCGeneralStatus[59u];


extern boolean Dem_DTCStatusChangedInd;

extern Dem_ClearLockStatus Dem_ClearDTCLock;

extern Dem_IndicatorStatusType OBDMilStatus;



extern Dem_ClearNonvolatileStatusType Dem_ClearNonvolatileStatus;


extern Dem_DTCSettingInfoType DemDTCSettingInfo;

extern Dem_FreezeFrameRecordFilterInfoType DemFreezeFrameRecordFilterInfo;


extern Dem_EventMemEntryType DemEventMemoryEntryStorage[(59u)];

extern Dem_EventRelateInformationStorageType DemEventRelateInformationStorage;




 
 









 
 
static inline  void Dem_MemSet(uint8 * Dest, uint8 Val, uint32 Size)
{
    uint32 iloop;
    for (iloop = 0; iloop < Size; iloop++)
    {
        Dest[iloop] = Val;
    }
}

 









 
 
static inline  void Dem_MemCopy(uint8* Dest, const uint8* Src, uint32 Size)
{
    for (uint32 iloop = 0; iloop < Size; iloop++)
    {
        Dest[iloop] = Src[iloop];
    }
}

 









 
 
static inline  const Dem_DTCAttributesType *
    Dem_EventDTCAttributesCfg(Dem_EventIdType IntId)
{
    uint16 Ref;
    const Dem_DTCAttributesType* pRes = ((void *)0);

     
    Ref = DemPbCfg.pDemEventParameter[IntId].DemDTCRef;
    if (Ref != 0xFFFFu)
    {
         
        Ref = DemPbCfg.DemCfgDTC[Ref].DemDTCAttributesRef;
        pRes = &DemPbCfg.pDemDTCAttributes[Ref];
    }
    return pRes;
}
 









 
 
static inline  void Dem_ResetDemClearDTCInfo(void)
{
    Dem_ClearDTCInfoType* pClr = &DemClearDTCInfo;
    pClr->DTCIndex = 0xFFFFu;
    pClr->DTCGroupIndex = 0xFFu;
    pClr->ClearAllGroup = 0u;
    Dem_ClearDTCLock = DEM_CLEAR_NOT_LOCK;
}

 









 
 
extern  void Dem_UpdateCombinedDtcStatus(Dem_EventIdType IntId);

 









 
 
extern  void Dem_SetOccurrenceEvent(Dem_EventIdType IntId, uint8 Status);

 









 
 
extern  Std_ReturnType Dem_CheckEntryAlreadyAllocated(
    Dem_EventIdType IntId,
    uint8 memDest,
    Dem_EventMemEntryType * * pEntry);

 









 
 
extern  Dem_EventMemEntryType *
    Dem_EventDisplacementProcess(Dem_EventIdType InternalId, uint8 memDest);

 









 
 
extern  void Dem_ClearDTCProcess(void);

 









 
 
extern  void
    Dem_GetEventDTC(uint16 DTCRef, Dem_DTCFormatType DTCFormat, uint32 * DTC);

 









 
 
extern  uint16 Dem_GetDTCIndex(uint32 DTC, Dem_DTCFormatType DTCFormat);

 









 
 
extern  void Dem_UpdateFDC(Dem_EventIdType IntId);

 









 
 
static inline  uint8 Dem_GetDTCGroupIndex(uint32 DTCGroup)
{
    uint8 ret = 0xFFu;
    (void)(DTCGroup);
    return ret;
}




 


 
 









 
 
extern  Dem_EventMemEntryType *
    Dem_CheckEventMemEntryExistsAlready(Dem_EventIdType IntId);

 









 
 
extern  Dem_EventRelateInformationType *
    Dem_GetEventInfo(Dem_EventIdType IntId);

 









 
 
extern  void Dem_EventTestFailed(Dem_EventIdType IntId);

 









 
 
extern  void Dem_EventTestPassed(Dem_EventIdType IntId);

 









 
 
static inline  Dem_EventMemEntryType *
    Dem_MemEntryGet(Dem_EventIdType ExtId, uint8 memDest)
{
    Dem_EventMemEntryType* pEntry = ((void *)0);
    uint8 iloop;
    Dem_EventMemEntryType* pEntryList = DemMemDestCfg[memDest].EntryList;
    const uint8 EntryNum = DemMemDestCfg[memDest].EntryNum;
     
    for (iloop = 0; iloop < EntryNum; iloop++)
    {
        if (pEntryList[iloop].EventId == ExtId)
        {
            pEntry = &pEntryList[iloop];
            break;
        }
    }
    return pEntry;
}

 









 
 
static inline  boolean Dem_CheckCondictionFulfilled(
    const uint8 * cond,
    const uint8 * group,
    uint8 len)
{
    boolean res = 1u;
    uint8 iloop;
    for (iloop = 0; (iloop < len) && (res != 0u); iloop++)
    {
        if ((cond[iloop] & group[iloop]) != group[iloop])
        {
            res = 0u;
        }
    }
    return res;
}

 









 
 
extern  void Dem_IntWriteNvRAM(void);

 









 
 
extern  void
    Dem_Clear(Dem_EventRelateInformationType * pEvent, uint8 memDest);

 









 
 
extern  Dem_EventMemEntryType *
    Dem_MemEntryAllocate(Dem_EventIdType IntId, uint8 memDest);



 


 









 
 
extern  Std_ReturnType Dem_EventQueueAdd(Dem_EventIdType ExtId, Dem_EventStatusType Status);


 









 
 
extern  void Dem_SetDTCSettingProcess(void);



 









 
 
 Dem_EventStatusType
Dem_DebounceProcessCounter(Dem_EventIdType ExtId, Dem_EventStatusType Status);



 


























 
   
   
   


























 




























 
   


 



 



 
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








extern void Dem_MainFunction(void);


 
extern void SchM_Enter_Dem_ExclusiveArea(void);
extern void SchM_Exit_Dem_ExclusiveArea(void);













   
   


 




 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const Dem_ConfigType * DemPbCfgPtr = ((void *)0);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
boolean Dem_Pending = 0u;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section

 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_ClearDTCInfoType DemClearDTCInfo;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_ClearNonvolatileStatusType
Dem_ClearNonvolatileStatus = DEM_ClEAR_NONVOLATILE_INIT;    












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_ClearLockStatus Dem_ClearDTCLock = DEM_CLEAR_NOT_LOCK;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   














 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_StateType Dem_InitState = DEM_STATE_UNINIT;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_MemDestInfoType DemMemDestInfo[1u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static uint8 Dem_AgingCycle = 0xFFu;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_EventMemEntryType DemEventMemoryEntryStorage[(59u)];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Dem_EventRelateInformationStorageType DemEventRelateInformationStorage;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   














 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static uint8 Dem_ClearCnt = 0u;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 









 
 
static  void Dem_SubInit(Std_ReturnType NvmResult);

 









 
 
static  void Dem_ClearOneDTC(uint8 memDest, uint16 DTCIndex);

 









 
 
static  void Dem_OperationCycleStart(uint8 OpId, boolean IsRestart);

 









 
 
static  void Dem_OperationCycleEnd(uint16 OpId);

 









 
 
static inline  uint8 Dem_GetEventPriority(Dem_EventIdType IntId);

 









 
 
static  void Dem_DeleteDisplacementEntry(
    Dem_EventMemEntryType * pResEntry,
    uint8 memDest);

 









 
 
static  void
    Dem_EventAgingProcess(Dem_EventRelateInformationType * pEvent, uint16 OpId);

 









 
 
static  void
    Dem_EventHealingProcess(Dem_EventRelateInformationType * pEvent, uint8 OpId);

 









 
 
static  void Dem_EventQueueProcess(void);

 









 
 
static  void
    Dem_MemEntryDelete(Dem_EventMemEntryType * pEntry, uint8 memDest);

 









 
 
static  Std_ReturnType Dem_IntReadNvRAM(void);
 









 
 
static  void Dem_ClearNonvolatile(void);


 
 




 
 
 void Dem_PreInit(void)
{
    Dem_InterPreInit();
     
     
    Dem_DebounceInit();
    Dem_InitState = DEM_STATE_PRE_INIT;
}

 









 
 
 void Dem_Init(const Dem_ConfigType * ConfigPtr)
{
    if (((void *)0) == ConfigPtr)
    {
        DEM_DET_REPORT(0x02u, 0x11u);
    }
    else
    {
        uint16 iloop;
        uint16 CycleNum;
        const Dem_OperationCycleType* pDemOperationCycle;
        Std_ReturnType NvmResult
            ;
        Dem_EventMemEntryType* pEntry;
        uint16 index;
        DemPbCfgPtr = ConfigPtr;
         
        Dem_DTCStatusChangedInd = 1u;
        DemDTCSettingInfo.AllGroupIsEnabled = 1u;
        Dem_MemSet((uint8*)&DemDTCFilterInfo, 0x00u, sizeof(Dem_DTCFilterInfoType));
        Dem_MemSet((uint8*)&DemFreezeFrameRecordFilterInfo, 0x00u, sizeof(Dem_FreezeFrameRecordFilterInfoType));
        DemDTCByOccurrenceTimeInfo.FirstDtcConfirmed = 0xFFFFu;
        DemDTCByOccurrenceTimeInfo.FirstFailed = 0xFFFFu;
        DemDTCByOccurrenceTimeInfo.MostRecDtcConfirmed = 0xFFFFu;
        DemDTCByOccurrenceTimeInfo.MostRecentFailed = 0xFFFFu;
        DemClearDTCInfo.ClearAllGroup = 0u;
        DemClearDTCInfo.DTCGroupIndex = 0xFFu;
        DemClearDTCInfo.DTCIndex = 0xFFFFu;
        DemClearDTCInfo.memDest = 0xFFu;
        NvmResult = Dem_IntReadNvRAM();
        if (NvmResult == 1U)
        {
            for (iloop = 0u; iloop < 1u; iloop++)
            {
                for (index = 0u; index < DemMemDestCfg[iloop].EntryNum; index++)
                {
                    pEntry = &DemMemDestCfg[iloop].EntryList[index];
                    Dem_MemEntryDelete(pEntry, (uint8)iloop);
                }
            }
        }
        Dem_SubInit(NvmResult);
         
        CycleNum = DemPbCfgPtr->DemOperationCycleNum;
        pDemOperationCycle = DemPbCfgPtr->OperationCycle;
        for (iloop = 0u; iloop < CycleNum; iloop++)
        {
            if (pDemOperationCycle[iloop].DemOperationCycleAutostart == 1u)
            {
                {
                     
                    DEM_BITS_SET(DemOperationCycleStatus, iloop);
                    Dem_OperationCycleStart((uint8)iloop, 0u);
                }
            }
        }
        if (NvmResult == 1U)
        {
            Dem_MemSet((uint8*)DemMemDestInfo, 0x00u, (sizeof(Dem_MemDestInfoType) * 1u));
        }
        Dem_InterInit();
        Dem_ResetDemClearDTCInfo();
        Dem_InitState = DEM_STATE_INIT;
    }
}

 









 
 
 void
Dem_GetVersionInfo(Std_VersionInfoType * versionInfo)
{
    if (((void *)0) == (versionInfo))
    {
        DEM_DET_REPORT(0x00u, 0x11u);
    }
    else
    {
        versionInfo->vendorID = 62U;
        versionInfo->moduleID = 54U;
        versionInfo->sw_major_version = 2U;
        versionInfo->sw_minor_version = 1U;
        versionInfo->sw_patch_version = 16U;
    }
}

 









 
 
 void Dem_Shutdown(void)
{
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x03u, 0x20u);
    }
    else
    {
        uint16 iloop;
        uint16 CycleNum = DemPbCfgPtr->DemOperationCycleNum;
         
        for (iloop = 0; iloop < CycleNum; iloop++)
        {
            if (DEM_BITS_ISSET(DemOperationCycleStatus, iloop))
            {
                 
                Dem_OperationCycleEnd(iloop);
                DEM_BITS_CLR(DemOperationCycleStatus, iloop);
            }
        }
        Dem_IntWriteNvRAM();
        Dem_InitState = DEM_STATE_SHUTDOWN;
    }
}

 













 
 
 void Dem_ReportErrorStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus)
{
    if (Dem_InitState == DEM_STATE_UNINIT)
    {
        DEM_DET_REPORT(0x0fu, 0x20u);
    }
    else if ((EventId > DemPbCfg.DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x0fu, 0x10u);
    }
    else
    {
        boolean doadd = 0u;
        Dem_EventIdType IntId = Dem_GetEventInternalId(EventId);
        const Dem_EventParameterType* pEventCfg = &DemPbCfg.pDemEventParameter[IntId];
        const Dem_EventRelateInformationType* pEvent = Dem_GetEventInfo(IntId);
        if ((pEventCfg->DemEventKind != 0u)
            || ((pEventCfg->AlgorithmType == 2u) && (EventStatus != 0x01u)
                && (EventStatus != 0x00u))
            || ((Dem_InitState == DEM_STATE_PRE_INIT) && (pEventCfg->DemReportBehavior != 1u)))
        {
            DEM_DET_REPORT(0x0fu, 0x10u);
        }
         
        else if (
            (Dem_InitState != DEM_STATE_INIT)
            && (DemPbCfg.DebounceCounterBasedClass[pEventCfg->AlgorithmRef].DemDebounceCounterStorage == 1u))
        {
            DEM_DET_REPORT(0x0fu, 0x40u);
        }
        
 
        else if (
            ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x01u))
             && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x10u))
             && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u)))
            && (EventStatus == 0x00u))
        {
             
        }
         
        else if (Dem_InitState != DEM_STATE_PRE_INIT)
        {
            if (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x04u))
            {
                 
                Dem_DebounceFreeze(IntId);
            }
            else
            {
                 
                if (((DEM_BITS_ISNSET(DemOperationCycleStatus, pEventCfg->DemOperationCycleRef))
                     && (DemPbCfg.OperationCycle[pEventCfg->DemOperationCycleRef].DemOperationCycleType
                         != 1u))
                    || (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x01u))
                    || (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x10u)))
                {
                     
                }
                else
                {
                    doadd = 1u;
                }
            }
        }
        else
        {
            doadd = 1u;
        }
        if (1u == doadd)
        {
            Dem_EventStatusType Status = EventStatus;
            Status = Dem_DebounceProcessCounter(EventId, Status);
            if (!((0u == pEventCfg->AlgorithmType)
                  && ((0x02u == Status) || (0x03u == Status))))
            {
                (void)Dem_EventQueueAdd(EventId, Status);
            }
        }
    }
}

 












 
 
 
 Std_ReturnType
Dem_SetEventAvailable(Dem_EventIdType EventId, boolean AvailableStatus)
{
    Dem_EventRelateInformationType* pEvent;
    uint16 dtcIndex;
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;

    if (Dem_InitState == DEM_STATE_UNINIT)
    {
        DEM_DET_REPORT(0x37u, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x37u, 0x10u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
         
        if ((((void *)0) != Dem_CheckEventMemEntryExistsAlready(IntId))
            || (DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x01u) == 0x01u))
        {
             
        }
        else
        {
            const Dem_EventParameterType* pEventParameter = DemPbCfgPtr->pDemEventParameter;
            dtcIndex = pEventParameter[IntId].DemDTCRef;
            if (AvailableStatus == 1u)
            {
                (pEvent->Status) |= (0x10u);
                 
                (pEvent->UdsStatus) |= (0x10u | 0x40u);
                DemDTCGeneralStatus[dtcIndex].SuppressionStatus = 0u;
            }
            else
            {
                const Dem_DTCType* pDemDTC = &DemPbCfgPtr->DemCfgDTC[dtcIndex];
                const Dem_EventIdType EventRefStart = pDemDTC->EventRefStart;
                const Dem_EventIdType* pDTCMapping = &DemPbCfgPtr->DTCMapping[EventRefStart];
                (pEvent->Status) &= (uint8)(~(0x10u));
                 
                pEvent->UdsStatus = 0x00;
                 
                {
                    if (DEM_FLAGS_ISSET(DemEventRelateInformation[*pDTCMapping].Status, 0x10u)
                        != 0x00u)
                    {
                        dtcIndex = 0xFFFFu;
                    }
                }
                if (dtcIndex != 0xFFFFu)
                {
                    DemDTCGeneralStatus[dtcIndex].SuppressionStatus = 1u;
                }
            }
            ret = 0U;
        }
    }
    return ret;
}

 












 
 
   
 Std_ReturnType
Dem_SetEventStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus)
 
{
    const Dem_EventParameterType* pEventCfg;
    const Dem_EventRelateInformationType* pEvent;
    uint8 OperationCycleId;
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x04u, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x04u, 0x10u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEventCfg = &DemPbCfgPtr->pDemEventParameter[IntId];
        pEvent = Dem_GetEventInfo(IntId);
        if (pEventCfg->DemEventKind != 1u)
        {
            DEM_DET_REPORT(0x04u, 0x10u);
        }
        else if (
            (pEventCfg->AlgorithmType == 2u) && (EventStatus != 0x01u)
            && (EventStatus != 0x00u))
        {
            DEM_DET_REPORT(0x04u, 0x10u);
        }
        
 
        else if (
            ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x01u))
             && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x10u))
             && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u)))
            && (EventStatus == 0x00u))
        {
             
            ret = 0U;
        }

        else if (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x04u))
        {
            
 
            Dem_DebounceFreeze(IntId);
        }
        else
        {
            ret = Dem_InterSetEventStatus(&IntId, EventStatus);
            if (ret == 0U)
            {
                OperationCycleId = pEventCfg->DemOperationCycleRef;
                 
                if (((DEM_BITS_ISNSET(DemOperationCycleStatus, OperationCycleId))
                     && (DemPbCfgPtr->OperationCycle[OperationCycleId].DemOperationCycleType != 1u))
                    || (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x01u))
                    || (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x10u)))
                {
                    ret = 1U;
                }
                else
                {
                    Dem_EventStatusType Status = EventStatus;
                    Status = Dem_DebounceProcessCounter(EventId, Status);
                    if (!((0u == pEventCfg->AlgorithmType)
                          && ((0x02u == Status) || (0x03u == Status))))
                    {
                        ret = Dem_EventQueueAdd(EventId, Status);
                    }
                }
            }
        }
    }
    return ret;
}

 












 
 
 Std_ReturnType
Dem_ResetEventDebounceStatus(Dem_EventIdType EventId, Dem_DebounceResetStatusType DebounceResetStatus)
{
    const Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;

    if (Dem_InitState < DEM_STATE_PRE_INIT)
    {
        DEM_DET_REPORT(0x09u, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x09u, 0x10u);
    }
     
    else
    {
         
        IntId = Dem_GetEventInternalId(EventId);
        if ((Dem_InitState != DEM_STATE_INIT)
            && (DemPbCfgPtr->DebounceCounterBasedClass[DemPbCfgPtr->pDemEventParameter[IntId].AlgorithmRef]
                    .DemDebounceCounterStorage
                == 1u))
        {
            DEM_DET_REPORT(0x09u, 0x40u);
        }
        else
        {
            pEvent = Dem_GetEventInfo(IntId);
            if (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
            {
                 
            }
            else
            {
                Dem_InterResetEventDebounceStatus(IntId, DebounceResetStatus);
                ret = 0U;
            }
        }
    }
    return ret;
}

 












 
 
 Std_ReturnType Dem_ResetEventStatus(Dem_EventIdType EventId)
{
    Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;

    if (Dem_InitState < DEM_STATE_PRE_INIT)
    {
        DEM_DET_REPORT(0x05u, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x05u, 0x10u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
         
        if ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
            || (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x10u)))
        {
             
        }
        else
        {
             
            (pEvent->UdsStatus) &= (uint8)(~(0x01u));
             
            Dem_UpdateCombinedDtcStatus(IntId);
            Dem_ResponseOnDtcStatusChange(IntId);
            Dem_DebounceReset(IntId);
            ret = 0U;
        }
    }
    return ret;
}

 










 
 
 Std_ReturnType Dem_PrestoreFreezeFrame(Dem_EventIdType EventId)
{
    Std_ReturnType ret = 1U;
    (void)(EventId);
    return ret;
}

 










 
 
 Std_ReturnType Dem_ClearPrestoredFreezeFrame(Dem_EventIdType EventId)
{
    Std_ReturnType ret = 1U;
    (void)(EventId);
    return ret;
}

 












 
 
 Std_ReturnType
Dem_SetOperationCycleState(uint8 OperationCycleId, Dem_OperationCycleStateType CycleState)
{
    boolean IsRestart = 0u;
    Std_ReturnType ret = 1U;
    if (Dem_InitState == DEM_STATE_UNINIT)
    {
        DEM_DET_REPORT(0x08u, 0x20u);
    }
    else if (OperationCycleId >= DemPbCfgPtr->DemOperationCycleNum)
    {
        DEM_DET_REPORT(0x08u, 0x10u);
    }
    else
    {
        if (CycleState == 0x00u)
        {
             
            if (DEM_BITS_ISSET(DemOperationCycleStatus, OperationCycleId))
            {
                 
                IsRestart = 1u;
            }
            else
            {
                DEM_BITS_SET(DemOperationCycleStatus, OperationCycleId);
            }
            Dem_OperationCycleStart(OperationCycleId, IsRestart);
        }
        else
        {
             
            if (DEM_BITS_ISSET(DemOperationCycleStatus, OperationCycleId))
            {
                Dem_OperationCycleEnd(OperationCycleId);
                DEM_BITS_CLR(DemOperationCycleStatus, OperationCycleId);
            }
        }
        ret = 0U;
    }
    return ret;
}

 











 
 
 Std_ReturnType
Dem_GetOperationCycleState(
    uint8 OperationCycleId,
    Dem_OperationCycleStateType * CycleState)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState == DEM_STATE_UNINIT)
    {
        DEM_DET_REPORT(0x9eu, 0x20u);
    }
    else if (OperationCycleId >= DemPbCfgPtr->DemOperationCycleNum)
    {
        DEM_DET_REPORT(0x9eu, 0x10u);
    }
    else if (CycleState == ((void *)0))
    {
        DEM_DET_REPORT(0x9eu, 0x11u);
    }
    else
    {
        if (DEM_BITS_ISNSET(DemOperationCycleStatus, OperationCycleId))
        {
            *CycleState = 0x01u;
        }
        else
        {
            *CycleState = 0x00u;
        }
        ret = 0U;
    }
    return ret;
}

 










 
 
 Std_ReturnType Dem_SetAgingCycleState(uint8 OperationCycleId)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState == DEM_STATE_UNINIT)
    {
        DEM_DET_REPORT(0x11u, 0x20u);
    }
    else if (OperationCycleId >= DemPbCfgPtr->DemOperationCycleNum)
    {
        DEM_DET_REPORT(0x11u, 0x10u);
    }
    else
    {
        Dem_AgingCycle = OperationCycleId;
        ret = 0U;
    }
    return ret;
}

 












 
 
 Std_ReturnType Dem_SetWIRStatus(Dem_EventIdType EventId, boolean WIRStatus)
{
    Std_ReturnType ret = 1U;
    Dem_EventRelateInformationType* pEvent;
    Dem_EventIdType IntId;
    if (Dem_InitState < DEM_STATE_PRE_INIT)
    {
        DEM_DET_REPORT(0x7au, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x7au, 0x10u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
         
        if ((0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
            || (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x01u)))
        {
             
        }
        else
        {
            if (WIRStatus == 1u)
            {
                 
                (pEvent->UdsStatus) |= (0x80u);
            }
            else
            {
                 
                (pEvent->UdsStatus) &= (uint8)(~(0x80u));
            }
             
            Dem_UpdateCombinedDtcStatus(IntId);
            Dem_ResponseOnDtcStatusChange(IntId);
            ret = 0U;
        }
    }
    return ret;
}

 










 
 
 Std_ReturnType
Dem_GetComponentFailed(Dem_ComponentIdType ComponentId, boolean * ComponentFailed)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x2au, 0x20u);
    }
    else
    {
        ret = Dem_InterGetComponentFailed(ComponentId, ComponentFailed);
    }
    return ret;
}

 










 
 
 Std_ReturnType
Dem_GetEventStatus(Dem_EventIdType EventId, Dem_UdsStatusByteType * EventStatusByte)
{
    const Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x0au, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x0au, 0x10u);
    }
    else if (EventStatusByte == ((void *)0))
    {
        DEM_DET_REPORT(0x0au, 0x11u);
    }
    else
    {
        pEvent = Dem_GetEventInfo(Dem_GetEventInternalId(EventId));
         
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            *EventStatusByte = pEvent->UdsStatus;
            ret = 0U;
        }
    }
    return ret;
}

 










 
 
 Std_ReturnType
Dem_GetEventFailed(Dem_EventIdType EventId, boolean * EventFailed)
{
    const Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x0bu, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x0bu, 0x10u);
    }
    else if (EventFailed == ((void *)0))
    {
        DEM_DET_REPORT(0x0bu, 0x11u);
    }
    else
    {
        pEvent = Dem_GetEventInfo(Dem_GetEventInternalId(EventId));
         
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            if (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x01u))
            {
                *EventFailed = 0u;
            }
            else
            {
                *EventFailed = 1u;
            }
            ret = 0U;
        }
    }
    return ret;
}

 











 
 
 Std_ReturnType
Dem_GetEventTested(Dem_EventIdType EventId, boolean * EventTested)
{
    const Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x0cu, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x0cu, 0x10u);
    }
    else if (EventTested == ((void *)0))
    {
        DEM_DET_REPORT(0x0cu, 0x11u);
    }
    else
    {
        pEvent = Dem_GetEventInfo(Dem_GetEventInternalId(EventId));
         
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            if (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
            {
                *EventTested = 1u;
            }
            else
            {
                *EventTested = 0u;
            }
            ret = 0U;
        }
    }
    return ret;
}

 










 
 
 Std_ReturnType
Dem_GetDebouncingOfEvent(
    Dem_EventIdType EventId,
    Dem_DebouncingStateType * DebouncingState)
{
    sint8 FDC = 0;
    const Dem_EventRelateInformationType* pEvent;
    Dem_EventIdType IntId;
    Std_ReturnType ret = 1U;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x9fu, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x9fu, 0x10u);
    }
    else if (DebouncingState == ((void *)0))
    {
        DEM_DET_REPORT(0x9fu, 0x11u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
         
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            ret = Dem_GetInteralFDC(IntId, &FDC);
            *DebouncingState = 0x00;
            if (ret == 0U)
            {
                 
                if ((FDC < 127) && (FDC > 0))
                {
                    *DebouncingState |= 0x01u;
                }
                if (FDC == 127)
                {
                    *DebouncingState |= 0x02u;
                }
                if ((FDC < 0) && (FDC > -128))
                {
                    *DebouncingState |= 0x04u;
                }
                if ((FDC == -128) || (FDC == 127))
                {
                    *DebouncingState |= 0x08u;
                }
                if ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
                    && ((0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x04u))
                        || (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x08u))))
                {
                    *DebouncingState |= 0x10u;
                }
            }
        }
    }
    return ret;
}

 













 
 
 Std_ReturnType
Dem_GetDTCOfEvent(
    Dem_EventIdType EventId,
    Dem_DTCFormatType DTCFormat,
    uint32 * DTCOfEvent)
{
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;
    const Dem_EventParameterType* pEventCfg;
    const Dem_EventRelateInformationType* pEvent;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x0du, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x0du, 0x10u);
    }
    else if (DTCOfEvent == ((void *)0))
    {
        DEM_DET_REPORT(0x0du, 0x11u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
         
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            *DTCOfEvent = 0x00u;
            pEventCfg = &DemPbCfgPtr->pDemEventParameter[IntId];
            uint16 DTCRef = pEventCfg->DemDTCRef;
            if (DTCRef != 0xFFFFu)
            {
                uint16 ObdDTCRef = DemPbCfgPtr->DemCfgDTC[DTCRef].DemObdDTCRef;
                 
                ret = 0x02u;
                switch (DTCFormat)
                {
                case 0x00u:
                    if ((ObdDTCRef != 0xFFFFu)
                        && (DemPbCfgPtr->ObdDTC[ObdDTCRef].DemDtcValue != 0xFFFFu))
                    {
                        *DTCOfEvent = DemPbCfgPtr->ObdDTC[ObdDTCRef].DemDtcValue;
                        ret = 0U;
                    }
                    break;
                case 0x01u:
                    if (0xFFFFFFu != DemPbCfgPtr->DemCfgDTC[DTCRef].DemDtcValue)
                    {
                        *DTCOfEvent = DemPbCfgPtr->DemCfgDTC[DTCRef].DemDtcValue;
                    }
                    ret = 0U;
                    break;
                case 0x02u:
                    if ((ObdDTCRef != 0xFFFFu)
                        && (DemPbCfgPtr->ObdDTC[ObdDTCRef].DemJ1939DTCValue != 0xFFFFFFu))
                    {
                        *DTCOfEvent = DemPbCfgPtr->ObdDTC[ObdDTCRef].DemJ1939DTCValue;
                        ret = 0U;
                    }
                    break;
                default:
                     
                    break;
                }
            }
        }
    }
    return ret;
}

 













 
 
 Std_ReturnType
Dem_SetEnableCondition(uint8 EnableConditionID, boolean ConditionFulfilled)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x39u, 0x20u);
    }
    else
    {
        ret = Dem_InterSetEnableCondition(EnableConditionID, ConditionFulfilled);
    }
    return ret;
}

 














 
 
 Std_ReturnType
Dem_SetStorageCondition(uint8 StorageConditionID, boolean ConditionFulfilled)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x38u, 0x20u);
    }
    else
    {
        ret = Dem_InterSetStorageCondition(StorageConditionID, ConditionFulfilled);
    }
    return ret;
}

 















 
 
 Std_ReturnType
Dem_GetFaultDetectionCounter(Dem_EventIdType EventId, sint8 * FaultDetectionCounter)
{
    const Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x3eu, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x3eu, 0x10u);
    }
    else if (FaultDetectionCounter == ((void *)0))
    {
        DEM_DET_REPORT(0x3eu, 0x11u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
         
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            ret = Dem_GetInteralFDC(IntId, FaultDetectionCounter);
        }
    }
    return ret;
}

 









 
 
 Std_ReturnType
Dem_GetIndicatorStatus(uint8 IndicatorId, Dem_IndicatorStatusType * IndicatorStatus)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x29u, 0x20u);
    }
    else
    {
        ret = Dem_InterGetIndicatorStatus(IndicatorId, IndicatorStatus);
    }
    return ret;
}
 











 
 
 Std_ReturnType
Dem_SetIndicatorStatus(uint8 IndicatorId, const Dem_IndicatorStatusType * IndicatorStatus)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0xa1u, 0x20u);
    }
    else
    {
        ret = Dem_InterSetIndicatorStatus(IndicatorId, IndicatorStatus);
    }
    return ret;
}

 


























 
 
 Std_ReturnType
Dem_GetEventFreezeFrameDataEx(
    Dem_EventIdType EventId,
    uint8 RecordNumber,
    uint16 DataId,
    uint8 * DestBuffer,
    uint16* BufSize)
{
    const Dem_EventRelateInformationType* pEvent;
    Std_ReturnType ret = 1U;
    Dem_EventIdType IntId;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x6eu, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x6eu, 0x10u);
    }
    else if (DestBuffer == ((void *)0))
    {
        DEM_DET_REPORT(0x6eu, 0x11u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            ret = Dem_InterGetEventFreezeFrameDataEx(EventId, RecordNumber, DataId, DestBuffer, BufSize);
        }
    }
    return ret;
}

 

















 
 
 Std_ReturnType
Dem_GetEventExtendedDataRecordEx(
    Dem_EventIdType EventId,
    uint8 RecordNumber,
    uint8 * DestBuffer,
    uint16* BufSize)
{
    Std_ReturnType ret = 1U;
    const Dem_EventRelateInformationType* pEvent;
    Dem_EventIdType IntId;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x6du, 0x20u);
    }
    else if ((EventId > DemPbCfgPtr->DemEventNum) || (EventId == 0u))
    {
        DEM_DET_REPORT(0x6du, 0x10u);
    }
    else if (DestBuffer == ((void *)0))
    {
        DEM_DET_REPORT(0x6du, 0x11u);
    }
    else
    {
        IntId = Dem_GetEventInternalId(EventId);
        pEvent = Dem_GetEventInfo(IntId);
        if (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
        {
            ret = Dem_InterGetEventExtendedDataRecordEx(IntId, RecordNumber, DestBuffer, BufSize);
        }
    }
    return ret;
}

 












 
 
 Std_ReturnType
Dem_GetEventMemoryOverflow(Dem_DTCOriginType DTCOrigin, boolean * OverflowIndication)
{
    Std_ReturnType ret = 1U;
    uint8 memDest;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x32u, 0x20u);
    }
    else if (OverflowIndication == ((void *)0))
    {
        DEM_DET_REPORT(0x32u, 0x11u);
    }
    else
    {
        memDest = Dem_GetInternalMemDest(DTCOrigin);
        if (memDest == 0xFFu)
        {
            DEM_DET_REPORT(0x32u, 0x10u);
        }
        else
        {
             
            *OverflowIndication = DemMemDestInfo[memDest].OverFlow;
            ret = 0U;
        }
    }
    return ret;
}

 












 
 
 Std_ReturnType
Dem_GetNumberOfEventMemoryEntries(
    Dem_DTCOriginType DTCOrigin,
    uint8 * NumberOfEventMemoryEntries)
{
    uint8 memDest;
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x35u, 0x20u);
    }
    else if (NumberOfEventMemoryEntries == ((void *)0))
    {
        DEM_DET_REPORT(0x35u, 0x11u);
    }
    else
    {
        memDest = Dem_GetInternalMemDest(DTCOrigin);
        if (memDest == 0xFFu)
        {
            DEM_DET_REPORT(0x35u, 0x10u);
        }
        else
        {
             
            *NumberOfEventMemoryEntries = DemMemDestInfo[memDest].RecordNum;
            ret = 0U;
        }
    }
    return ret;
}

 











 
 
 Std_ReturnType
Dem_SetComponentAvailable(Dem_ComponentIdType ComponentId, boolean AvailableStatus)
{
    Std_ReturnType ret = 1U;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x2bu, 0x20u);
    }
    else
    {
        ret = Dem_InterSetComponentAvailable(ComponentId, AvailableStatus);
    }
    return ret;
}

 













 
 
 Std_ReturnType
Dem_SetDTCSuppression(uint32 DTC, Dem_DTCFormatType DTCFormat, boolean SuppressionStatus)
{
    Std_ReturnType ret = 1U;
    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x33u, 0x20u);
    }
    else
    {
        uint16 DTCRef = Dem_GetDTCIndex(DTC, DTCFormat);
        if (DTCRef == 0xFFFFu)
        {
            DEM_DET_REPORT(0x33u, 0x31u);
        }
        else
        {
            const Dem_DTCType* pDemDTC = &DemPbCfgPtr->DemCfgDTC[DTCRef];
            const Dem_EventIdType EventRefStart = pDemDTC->EventRefStart;
            const Dem_EventIdType* pDTCMapping = &DemPbCfgPtr->DTCMapping[EventRefStart];
            ret = 0U;
            {
                
                
                
                
            }
            if (0U == ret)
            {
                DemDTCGeneralStatus[DTCRef].SuppressionStatus = SuppressionStatus;
            }
        }
    }
    return ret;
}

 


















 
 
 Dem_ReturnClearDTCType
Dem_ClearDTC(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin)
{
    Dem_ClearDTCInfoType* pClr = &DemClearDTCInfo;
    Dem_ReturnClearDTCType ret = 0x03u;
    boolean ProcessOn = 1u;
    uint8 memDest;

    if (Dem_InitState != DEM_STATE_INIT)
    {
        DEM_DET_REPORT(0x23u, 0x20u);
    }
    else
    {
        if (Dem_ClearDTCLock == DEM_CLEAR_LOCK)
        {
            if ((pClr->SaveDTCIndex == Dem_GetDTCIndex(DTC, DTCFormat)) && (pClr->SaveDTCFormat == DTCFormat)
                && (pClr->SaveDTCOrigin == DTCOrigin) && (pClr->SID == 0x23u))
            {
                 
                ret = 0x04u;
                ProcessOn = 0u;
            }
            else
            {
                 
                ret = 0x05u;
                ProcessOn = 0u;
            }
        }
        else if (Dem_ClearDTCLock == DEM_CLEAR_NOT_LOCK)
        {
             
            Dem_ClearDTCLock = DEM_CLEAR_LOCK;
            pClr->DTCIndex = Dem_GetDTCIndex(DTC, DTCFormat);
            pClr->DTCFormat = DTCFormat;
            pClr->DTCOrigin = DTCOrigin;
            pClr->SaveDTCIndex = Dem_GetDTCIndex(DTC, DTCFormat);
            pClr->SaveDTCFormat = DTCFormat;
            pClr->SaveDTCOrigin = DTCOrigin;
            pClr->SID = 0x23u;
        }
        else
        {
             
        }

         
        if (ProcessOn == 1u)
        {
            memDest = Dem_GetInternalMemDest(DTCOrigin);
            if (memDest == 0xFFu)
            {
                Dem_ResetDemClearDTCInfo();
                ret = 0x02u;
            }
            else
            {
                if ((DTC & 0xFFFFFFUL) == 0xFFFFFFUL)
                {
                    pClr->ClearAllGroup = 1u;
                }
                else
                {
                    pClr->ClearAllGroup = 0u;
                    pClr->DTCGroupIndex = Dem_GetDTCGroupIndex(DTC);
                    if (pClr->DTCGroupIndex == 0xFFu)
                    {
                        pClr->DTCIndex = Dem_GetDTCIndex(DTC, DTCFormat);
                        if (pClr->DTCIndex == 0xFFFFu)
                        {
                            Dem_ResetDemClearDTCInfo();
                            ret = 0x01u;
                            ProcessOn = 0u;
                        }
                    }
                }
                if (ProcessOn == 1u)
                {
                    pClr->memDest = memDest;
                    Dem_Pending = 1u;
                    Dem_ClearDTCProcess();
                     
                    Dem_ClearNonvolatileStatus = DEM_CLEAR_NONVOLATILE_START;
                    ret = 0x04u;
                }
            }
        }
    }
    return ret;
}

 









 
 
static  void Dem_ClearNonvolatile(void)
{
    uint8 blockIndex;
    NvM_RequestResultType RequestResult;

    if (Dem_ClearNonvolatileStatus == DEM_CLEAR_NONVOLATILE_START)
    {
         
        Dem_IntWriteNvRAM();
        Dem_ClearNonvolatileStatus = DEM_CLEAR_NONVOLATILE_PROCESSING;
    }
    if (Dem_ClearNonvolatileStatus == DEM_CLEAR_NONVOLATILE_PROCESSING)
    {
        for (blockIndex = Dem_ClearCnt; blockIndex < 2; blockIndex++)
        {
            NvM_GetErrorStatus(DemNvRamBlockId[blockIndex], &RequestResult);
            if (RequestResult == NVM_REQ_OK)
            {
                Dem_ClearCnt++;
            }
            else if (RequestResult == NVM_REQ_PENDING)
            {
                break;
            }
            else
            {
                Dem_ClearCnt = 0u;
                Dem_ClearNonvolatileStatus = DEM_ClEAR_NONVOLATILE_FAILED;
                break;
            }
        }
        if (Dem_ClearCnt == 2)
        {
            Dem_ClearCnt = 0u;
            Dem_ClearNonvolatileStatus = DEM_ClEAR_NONVOLATILE_FINISHED;
        }
    }
}

 
 









 
 
 void Dem_MainFunction(void)
{
    if (Dem_InitState == DEM_STATE_INIT)
    {
        Dem_SetEnableCondictionProcess();
        Dem_SetStorageCondictionProcess();
        Dem_DebounceTimerMain();
        Dem_EventQueueProcess();
        Dem_ClearNonvolatile();
    }
}

 



 
 









 
 
static  void Dem_SubInit(Std_ReturnType NvmResult)
{
    uint16 iloop;
    Dem_EventRelateInformationType* pEvent;
    uint16 dtcRef;
    uint16 EventNum = DemPbCfgPtr->DemEventNum;
    const Dem_EventParameterType* pEventParameter = DemPbCfgPtr->pDemEventParameter;

    for (iloop = 0u; iloop < EventNum; iloop++)
    {
        pEvent = &DemEventRelateInformation[iloop];
        pEvent->IntId = iloop;
        const Dem_EventParameterType* pEventCfg = &pEventParameter[iloop];
         
        (pEvent->UdsStatus) &= (uint8)(~(0x01u));

        pEvent->OldUdsStatus = pEvent->UdsStatus;
        dtcRef = pEventCfg->DemDTCRef;
        (pEvent->Status) |= (0x01u);
        if (pEventCfg->DemEventAvailable == 1u)
        {
            (pEvent->Status) |= (0x10u);
        }
        if (0xFFFFu != dtcRef)
        {
            if (pEventCfg->DemEventAvailable == 1u)
            {
                DemDTCGeneralStatus[dtcRef].SuppressionStatus = 0u;
            }
            else
            {
                DemDTCGeneralStatus[dtcRef].SuppressionStatus = 1u;
                 
                const Dem_EventParameterType* lEventParameter = DemPbCfgPtr->pDemEventParameter;
                const Dem_DTCType* pDemDTC = &DemPbCfgPtr->DemCfgDTC[dtcRef];
                const Dem_EventIdType EventRefStart = pDemDTC->EventRefStart;
                const Dem_EventIdType* pDTCMapping = &DemPbCfgPtr->DTCMapping[EventRefStart];
                {
                    if (lEventParameter[*pDTCMapping].DemEventAvailable == 1u)
                    {
                        DemDTCGeneralStatus[dtcRef].SuppressionStatus = 0u;
                    }
                }
            }
            Dem_UpdateCombinedDtcStatus(iloop);
        }
        if (1U == NvmResult)
        {
            Dem_ClearEventRelateInformation(pEvent);
        }
        (pEvent->Status) &= (uint8)(~(0x40u));
        (pEvent->Status) &= (uint8)(~(0x02u));
        (pEvent->Status) &= (uint8)(~(0x20u));
    }
}
 









 
 
static  void Dem_ClearOneDTC(uint8 memDest, uint16 DTCIndex)
{
    const Dem_DTCType* pDemDTC = &DemPbCfgPtr->DemCfgDTC[DTCIndex];
    const Dem_EventIdType EventRefStart = pDemDTC->EventRefStart;
    const Dem_EventIdType* pDTCMapping = &DemPbCfgPtr->DTCMapping[EventRefStart];
    {
        Dem_EventRelateInformationType* pEvent = Dem_GetEventInfo(*pDTCMapping);
        Dem_Clear(pEvent, memDest);
    }
     
    if (DemMemDestInfo[memDest].RecordNum == 0u)
    {
        DemMemDestInfo[memDest].OverFlow = 0u;
    }
}

 









 
 
static  void Dem_EventQueueProcess(void)
{
    Dem_EventQueueType* pQueue = &DemEventQueue;
    Dem_EventDataBufferType* pBuffer = &(pQueue->Queue[pQueue->ReadIndex]);
    Dem_EventIdType IntId;
    uint8 OperationCycleId;
    const Dem_EventRelateInformationType* pEvent;
     
    while ((pBuffer->ExtId != 0x00u)
    )
    {
        IntId = Dem_GetEventInternalId(pBuffer->ExtId);
        pEvent = Dem_GetEventInfo(IntId);
        OperationCycleId = DemPbCfgPtr->pDemEventParameter[IntId].DemOperationCycleRef;
        if ((0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x01u))
            && (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x10u))
            && (0x00u != DEM_FLAGS_ISSET(pEvent->Status, 0x04u)))
        {
             
            if (DEM_BITS_ISSET(DemOperationCycleStatus, OperationCycleId))
            {
                {
                     
                    switch (Dem_DebounceProcess(*pBuffer))
                    {
                    case 0x00u:
                        Dem_EventTestPassed(IntId);
                        break;
                    case 0x01u:
                        Dem_EventTestFailed(IntId);
                        break;
                    default:
                         
                        break;
                    }
                }
            }
            else
            {
                Dem_EventQueueProcessWithDebounce(IntId);
            }
        }
         
        pBuffer->ExtId = 0x00;
        pBuffer->Status = 0x00;

         
        pQueue->ReadIndex++;
        if (pQueue->ReadIndex >= 58u)
        {
            pQueue->ReadIndex = 0x00;
        }
        pBuffer = &(pQueue->Queue[pQueue->ReadIndex]);
    }
}

 









 
 
static  void
    Dem_OperationCycleCounterProcess(Dem_EventRelateInformationType * pEvent)
{
    if (0x00u != DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x02u))
    {
        if (pEvent->FailureCounter < 0xFFu)
        {
            pEvent->FailureCounter++;  
        }
    }
}

 









 
 
 void Dem_UpdateCombinedDtcStatus(Dem_EventIdType IntId)
{
    uint16 dtcRef = DemPbCfg.pDemEventParameter[IntId].DemDTCRef;
    if (dtcRef != 0xFFFFu)
    {
        uint8 CbUdsStatus;
        Dem_DTCGeneralStatusType* pDTCGeneralStatus = &DemDTCGeneralStatus[dtcRef];
        const Dem_DTCType* pDemDTC = &DemPbCfg.DemCfgDTC[dtcRef];
        const Dem_EventIdType EventRefStart = pDemDTC->EventRefStart;
        const Dem_EventIdType* pDTCMapping = &DemPbCfg.DTCMapping[EventRefStart];
        pDTCGeneralStatus->CbUdsStatus = 0;

         
        {
             
            DemDTCGeneralStatus[dtcRef].CbUdsStatus |= DemEventRelateInformation[*pDTCMapping].UdsStatus;
        }
         
        CbUdsStatus = ~((DemDTCGeneralStatus[dtcRef].CbUdsStatus & 0x20u) >> 1u);
        DemDTCGeneralStatus[dtcRef].CbUdsStatus &= CbUdsStatus;
         
        CbUdsStatus = (uint8)(~(uint8)((DemDTCGeneralStatus[dtcRef].CbUdsStatus & 0x02u) << 5u));
        DemDTCGeneralStatus[dtcRef].CbUdsStatus &= CbUdsStatus;
    }
}

 









 
 
static  void Dem_OperationCycleStart(uint8 OpId, boolean IsRestart)
{
    const Dem_EventParameterType* pEventCfg;
    Dem_EventRelateInformationType* pEvent;
    uint16 iloop;

    for (iloop = 0; iloop < DemPbCfgPtr->DemEventNum; iloop++)
    {
        pEventCfg = &DemPbCfgPtr->pDemEventParameter[iloop];
        pEvent = &DemEventRelateInformation[iloop];
         
        Dem_EventHealingProcess(pEvent, OpId);
        if (IsRestart == 1u)
        {
            Dem_EventAgingProcess(pEvent, OpId);
            if ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
                && (0x00u != DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x04u))
                && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x02u)))
            {
                (pEvent->UdsStatus) &= (uint8)(~(0x04u));
            }
        }
        if (pEventCfg->DemOperationCycleRef == OpId)
        {
             
            if (pEventCfg->DemCallbackInitMForE != ((void *)0))
            {
                pEventCfg->DemCallbackInitMForE(0x02u);
            }
            (pEvent->Status) &= (uint8)(~(0x02u));
            (pEvent->EventStatusFlag) &= (uint8)(~(0x01u));
            if (IsRestart == 1u)
            {
                 
                Dem_OperationCycleCounterProcess(pEvent);
            }
             
            (pEvent->UdsStatus) &= (uint8)(~(0x02u));
             
            (pEvent->UdsStatus) |= (0x40u);
             
            Dem_InterOperationCycleStart(iloop);
            uint16 DemDTCRef = pEventCfg->DemDTCRef;
            if (DemDTCRef != 0xFFFFu)
            {
                 
                FDCInfo[DemDTCRef].MaxFDCDuringCurrentCycle = 0;
            }
        }
         
        Dem_UpdateCombinedDtcStatus(iloop);
         
        if (Dem_InitState != DEM_STATE_PRE_INIT)
        {
            Dem_ResponseOnDtcStatusChange(iloop);
        }
    }
    if (Dem_AgingCycle == OpId)
    {
        Dem_AgingCycle = 0xFFu;
    }
}

 









 
 
static  void Dem_OperationCycleEnd(uint16 OpId)
{
    const Dem_EventParameterType* pEventCfg;
    Dem_EventRelateInformationType* pEvent;
    uint16 iloop;

    for (iloop = 0; iloop < DemPbCfgPtr->DemEventNum; iloop++)
    {
        pEventCfg = &DemPbCfgPtr->pDemEventParameter[iloop];
        pEvent = &DemEventRelateInformation[iloop];
        if (pEventCfg->DemOperationCycleRef == OpId)
        {
             
             
            Dem_OperationCycleCounterProcess(pEvent);
        }
        Dem_EventAgingProcess(pEvent, OpId);
        if ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
            && (0x00u != DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x04u))
            && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x02u)))
        {
            (pEvent->UdsStatus) &= (uint8)(~(0x04u));
        }
         
        Dem_UpdateCombinedDtcStatus(iloop);
         
        Dem_ResponseOnDtcStatusChange(iloop);
    }
    if (Dem_AgingCycle == OpId)
    {
        Dem_AgingCycle = 0xFFu;
    }
}

 









 
 
static  void Dem_CopyInfoFromEntry(
    Dem_EventRelateInformationType * Info,
    const Dem_EventMemEntryType * Entry)
{
    Info->UdsStatus = Entry->UdsStatus;
    Info->AgingCounter = Entry->AgingCounter;
    Info->OccurrenceCounter = Entry->OccurrenceCounter;
    Info->HealingCounter = Entry->HealingCounter;
    Info->FailureCounter = Entry->FailureCounter;
    Info->AgedCounter = Entry->AgedCounter;
}

 









 
 
   
static  Std_ReturnType Dem_IntReadNvRAM(void)
 
{
    Std_ReturnType retVal = 0U;
    uint16 iloop;
    uint16 tempEventId = 0;
    uint16 blockIndex = 0;
    uint16 blockRef;
    NvM_RequestResultType RequestResultPtr;
    uint8 DemMemDestindex;
     
    blockRef = DemNvRamBlockId[blockIndex];
    blockIndex++;
    (void)NvM_GetErrorStatus(blockRef, &RequestResultPtr);
    if (RequestResultPtr == NVM_REQ_OK)
    {
        for (iloop = 0; iloop < 59u; iloop++)
        {
            for (DemMemDestindex = 0; DemMemDestindex < 1u; DemMemDestindex++)
            {
                if (DemMemDestCfg[DemMemDestindex].ExtId == 0x01u)
                {
                    DemMemDestCfg[DemMemDestindex].EntryList[iloop] = DemEventMemoryEntryStorage[iloop];
                    tempEventId = DemMemDestCfg[DemMemDestindex].EntryList[iloop].EventId;
                    break;
                }
            }
            if ((tempEventId != 0u) && (tempEventId <= DemPbCfgPtr->DemEventNum))
            {
                tempEventId = tempEventId - 1u;
                Dem_CopyInfoFromEntry(&DemEventRelateInformation[tempEventId], &DemEventMemoryEntryStorage[iloop]);
                DemMemDestInfo[DemMemDestindex].RecordNum++;
            }
            else
            {
                DemEventMemoryEntryStorage[iloop].EventId = 0u;
            }
        }
    }
    else
    {
        retVal = 1U;
    }
    blockRef = DemNvRamBlockId[blockIndex];
    (void)NvM_GetErrorStatus(blockRef, &RequestResultPtr);
    if (RequestResultPtr == NVM_REQ_OK)
    {
        for (iloop = 0; iloop < DemPbCfgPtr->DemEventNum; iloop++)
        {
            DemEventRelateInformation[iloop].UdsStatus = DemEventRelateInformationStorage.UdsStatus[iloop];
            DemEventRelateInformation[iloop].AgedCounter = DemEventRelateInformationStorage.AgedCounter[iloop];
            Dem_InterIntReadNvRAM(iloop, &DemEventRelateInformationStorage);
        }
        DemDTCByOccurrenceTimeInfo.FirstDtcConfirmed = DemEventRelateInformationStorage.FirstDtcConfirmed;
        DemDTCByOccurrenceTimeInfo.FirstFailed = DemEventRelateInformationStorage.FirstFailed;
        DemDTCByOccurrenceTimeInfo.MostRecDtcConfirmed = DemEventRelateInformationStorage.MostRecDtcConfirmed;
        DemDTCByOccurrenceTimeInfo.MostRecentFailed = DemEventRelateInformationStorage.MostRecentFailed;
    }
    else
    {
        retVal = 1U;
    }


    return retVal;
}

 









 
 
static  void
    Dem_MemEntryDelete(Dem_EventMemEntryType * pEntry, uint8 memDest)
{
    if (pEntry != ((void *)0))
    {
        const Dem_MemDestConfigType* pMemDestCfg = &DemMemDestCfg[memDest];
        uint8 EntryNum = pMemDestCfg->EntryNum;
        uint8 AbsTime = pEntry->AbsTime;
        Dem_EventMemEntryType* pEntryList = pMemDestCfg->EntryList;

         
        for (uint8 index = 0; index < EntryNum; index++)
        {
            if (AbsTime < pEntryList[index].AbsTime)
            {
                pEntryList[index].AbsTime--;
            }
        }
        pEntry->AbsTime = 0;
        Dem_DeleteRelatedData(pEntry);
        pEntry->EventId = 0x00;
        if (DemMemDestInfo[memDest].RecordNum > 0u)
        {
            DemMemDestInfo[memDest].RecordNum--;
        }
    }
}

 









 
 
static inline  uint8 Dem_GetEventPriority(Dem_EventIdType IntId)
{
    uint8 res = 0xFF;
    uint16 ref = DemPbCfgPtr->pDemEventParameter[IntId].DemDTCRef;

    if (ref != 0xFFFFu)
    {
        res = DemPbCfgPtr->pDemDTCAttributes[DemPbCfgPtr->DemCfgDTC[ref].DemDTCAttributesRef].DemDTCPriority;
    }
    return res;
}

 









 
 
 Std_ReturnType
Dem_CheckEntryAlreadyAllocated(
    Dem_EventIdType IntId,
    uint8 memDest,
    Dem_EventMemEntryType * * pEntry)
{
    uint8 ret = 0U;
    Dem_EventIdType EventId = Dem_GetEventExternalId(IntId);

    *pEntry = Dem_MemEntryGet(EventId, memDest);
    return ret;
}

 









 
 
static  void Dem_DeleteDisplacementEntry(
    Dem_EventMemEntryType * pResEntry,
    uint8 memDest)
{
    Dem_EventIdType IntId = Dem_GetEventInternalId(pResEntry->EventId);
    Dem_EventRelateInformationType* NewpEvent = Dem_GetEventInfo(IntId);
        
        (NewpEvent->UdsStatus) &= (uint8)(~((0x04u | 0x08u)));
        Dem_ResponseOnDtcStatusChange(IntId);

     
    Dem_UpdateCombinedDtcStatus(IntId);
    Dem_MemEntryDelete(pResEntry, memDest);
}

 









 
 
 Dem_EventMemEntryType *
Dem_EventDisplacementProcess(Dem_EventIdType InternalId, uint8 memDest)
{
     
    Dem_EventMemEntryType* pResEntry = ((void *)0);
    const Dem_MemDestConfigType* pMemDestCfg = &DemMemDestCfg[memDest];
    Dem_EventMemEntryType* pEntry = pMemDestCfg->EntryList;
    uint8 EntryNum = pMemDestCfg->EntryNum;
    uint8 EventNewPriority = Dem_GetEventPriority(InternalId);
    const Dem_EventParameterType* pEventParameter = DemPbCfgPtr->pDemEventParameter;
    boolean PassiveFound = 0u;
    boolean LowPriorityFound = 0u;
    const Dem_MemDestInfoType* pMemDestInfo = &DemMemDestInfo[memDest];

    for (uint8 iloop = 0; iloop < EntryNum; iloop++)
    {
         
        uint16 TempEventIntId = Dem_GetEventInternalId(pEntry->EventId);
        uint8 EntryPriority = Dem_GetEventPriority(TempEventIntId);
        uint16 DTCRef = pEventParameter[TempEventIntId].DemDTCRef;
        const Dem_EventRelateInformationType* pEvent = Dem_GetEventInfo(TempEventIntId);
        EventNewPriority = (pResEntry != ((void *)0)) ? Dem_GetEventPriority(Dem_GetEventInternalId(pResEntry->EventId))
                                                   : EventNewPriority;

         
        if (DEM_BITS_ISSET(pMemDestInfo->DisableDTCRecordUpdate, DTCRef))
        {
            pEntry++;
        }
        else
        {
             
            if (EventNewPriority <= EntryPriority)
            {
                 
                if (0x00u == DEM_FLAGS_ISSET(pEvent->Status, 0x80u))
                {
                    if (PassiveFound == 0u)
                    {
                         
                        pResEntry = pEntry;
                        PassiveFound = 1u;
                    }
                    else
                    {
                         
                        if (pResEntry->AbsTime > pEntry->AbsTime)
                        {
                            pResEntry = pEntry;
                        }
                    }
                }
                 
                if (PassiveFound == 0u)
                {
                    if (EventNewPriority < EntryPriority)
                    {
                         
                        if (LowPriorityFound == 0u)
                        {
                            LowPriorityFound = 1u;
                            pResEntry = pEntry;
                        }
                         
                        if (pResEntry->AbsTime > pEntry->AbsTime)
                        {
                            pResEntry = pEntry;
                        }
                    }
                    else if (EventNewPriority == EntryPriority)    
                    {
                         
                         
                        if ((LowPriorityFound == 0u)
                            && (0x00u != DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
                            && ((pResEntry == ((void *)0)) || ((pResEntry->AbsTime > pEntry->AbsTime))))
                        {
                            pResEntry = pEntry;
                        }
                    }
                    else
                    {
                         
                    }
                }
            }
            pEntry++;
        }
    }
     
    if ((pResEntry != ((void *)0))
        && (pEventParameter[Dem_GetEventInternalId(pResEntry->EventId)].DemDTCRef != 0xFFFFu))
    {
        Dem_DeleteDisplacementEntry(pResEntry, memDest);
    }
    return pResEntry;
}

 









 
 
static  void
    Dem_EventAgingProcess(Dem_EventRelateInformationType * pEvent, uint16 OpId)
{
    const uint8* pMemDest;
    Dem_EventMemEntryType* pEntry = ((void *)0);
    const Dem_DTCAttributesType* pDTCAttrCfg = ((void *)0);
    const Dem_EventParameterType* pEventCfg = &DemPbCfgPtr->pDemEventParameter[pEvent->IntId];
    uint8 MemDestMaxNumOfDtc = Dem_GetMemDestMaxNumOfDtc();
    uint8 AgingCycleCounterThreshold;
    uint16 DemDTCRef = pEventCfg->DemDTCRef;

    Dem_Pending = 1u;
    if (DemDTCRef != 0xFFFFu)
    {
        pDTCAttrCfg = &DemPbCfgPtr->pDemDTCAttributes[DemPbCfgPtr->DemCfgDTC[DemDTCRef].DemDTCAttributesRef];
    }
    if (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x02u))
    {
        if ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x80u)) && (pDTCAttrCfg != ((void *)0)))
        {
             
            pMemDest = pDTCAttrCfg->DemMemoryDestinationRef;
            uint8 DemOperationCycleRef = pEventCfg->DemOperationCycleRef;
            for (uint8 iloop = 0; iloop < MemDestMaxNumOfDtc; iloop++)
            {
                if (pMemDest[iloop] != 0xFFu)
                {
                    pEntry = Dem_MemEntryGet(Dem_GetEventExternalId(pEvent->IntId), pMemDest[iloop]);
                }
                else
                {
                    pEntry = ((void *)0);
                }
                if ((pEntry != ((void *)0)))
                {
                    if (((pDTCAttrCfg->DemAgingCycleRef == OpId) || (Dem_AgingCycle == OpId)
                         || ((DemPbCfgPtr->OperationCycle[DemOperationCycleRef].DemOperationCycleType
                              == 1u)
                             && (DEM_BITS_ISNSET(DemOperationCycleStatus, DemOperationCycleRef))
                             && (DemPbCfgPtr->OperationCycle[OpId].DemOperationCycleType == 5u)))
                        && (pDTCAttrCfg->DemAgingAllowed == 1u)
                         
                        && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u))
                    )
                    {
                         
                        if (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x01u))
                        {
                             
                            pEvent->AgingCounter++;
                            AgingCycleCounterThreshold = pDTCAttrCfg->DemAgingCycleCounterThreshold;
                             

                             
                            if (pEvent->AgingCounter >= pDTCAttrCfg->DemAgingCycleCounterThreshold)
                            {
                                 
                                 
                                const Dem_DTCType* pDemDTC = &DemPbCfgPtr->DemCfgDTC[DemDTCRef];
                                const Dem_EventIdType EventRefStart = pDemDTC->EventRefStart;
                                const Dem_EventIdType* pDTCMapping = &DemPbCfgPtr->DTCMapping[EventRefStart];
                                if ((pEvent->AgedCounter < 0xFFu)
                                    && (0x00u != DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x08u)))
                                {
                                    pEvent->AgedCounter++;
                                }
                                {
                                    (DemEventRelateInformation[*pDTCMapping]. UdsStatus) &= (uint8)(~(0x08u));
                                }
                                 
                            }
                            if (pEvent->AgingCounter >= AgingCycleCounterThreshold)
                            {
                                if (pMemDest[iloop] != 0xFFu)
                                {
                                     
                                    Dem_MemEntryDelete(pEntry, pMemDest[iloop]);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    else
    {
        pEvent->HealingCounter = 0;
        pEvent->AgingCounter = 0;
    }
    Dem_Pending = 0u;
}

 









 
 
static  void
    Dem_EventHealingProcess(Dem_EventRelateInformationType * pEvent, uint8 OpId)
{
    const Dem_EventParameterType* pEventCfg = &DemPbCfgPtr->pDemEventParameter[pEvent->IntId];
    if ((0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x02u)) && (pEventCfg != ((void *)0)))
    {
        if (0x00u != DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x80u))
        {
             
            pEvent->AgingCounter = 0;
            uint8 DemOperationCycleRef = pEventCfg->DemOperationCycleRef;
            if (((DemOperationCycleRef == OpId)
                 || ((DemPbCfgPtr->OperationCycle[DemOperationCycleRef].DemOperationCycleType == 1u)
                     && (DEM_BITS_ISNSET(DemOperationCycleStatus, DemOperationCycleRef))
                     && (DemPbCfgPtr->OperationCycle[OpId].DemOperationCycleType == 5u)))
                && (0x00u == DEM_FLAGS_ISSET(pEvent->UdsStatus, 0x40u)))
            {
                pEvent->HealingCounter++;
                if (1u == Dem_CheckWIROff(pEvent, pEventCfg))
                {
                     
                    (pEvent->UdsStatus) &= (uint8)(~(0x80u));
                }
            }
        }
    }
    else
    {
        pEvent->HealingCounter = 0;
        pEvent->AgingCounter = 0;
    }
}



 

 









 
 
 void Dem_ClearDTCProcess(void)
{
    const Dem_ClearDTCInfoType* pClr = &DemClearDTCInfo;
    uint8 memDest = pClr->memDest;

     
    if (memDest != 0xFFu)
    {
        if (pClr->ClearAllGroup == 1u)
        {
            Dem_ClearAllDTC(memDest);
        }
        else
        {
            {
                uint16 DTCIndex = pClr->DTCIndex;
                if (DTCIndex != 0xFFFFu)
                {
                    Dem_ClearOneDTC(memDest, DTCIndex);
                }
            }
        }
        Dem_Pending = 0u;
    }
}

 









 
 
 uint16 Dem_GetDTCIndex(uint32 DTC, Dem_DTCFormatType DTCFormat)
{
    uint16 index;
    uint16 ret = 0xFFFFu;
    const Dem_DTCType* pDTC = DemPbCfg.DemCfgDTC;
    const DemObdDTCType* pObdDTC = DemPbCfg.ObdDTC;

    switch (DTCFormat)
    {
    case 0x01u:
        for (index = 0; index < 59u; index++)
        {
            if (pDTC[index].DemDtcValue == DTC)
            {
                ret = index;
                break;
            }
        }
        break;
    case 0x00u:
        for (index = 0; index < 59u; index++)
        {
            uint16 ObdDTCRef = pDTC->DemObdDTCRef;
            if ((ObdDTCRef != 0xFFFFu) && (pObdDTC[ObdDTCRef].DemDtcValue == DTC))
            {
                ret = index;
                break;
            }
            pDTC++;
        }
        break;
    case 0x02u:
        for (index = 0; index < 59u; index++)
        {
            uint16 ObdDTCRef = pDTC->DemObdDTCRef;
            if ((ObdDTCRef != 0xFFFFu) && (pObdDTC[ObdDTCRef].DemJ1939DTCValue == DTC))
            {
                ret = index;
                break;
            }
            pDTC++;
        }
        break;
    default:
         
        break;
    }
    return ret;
}

 









 
 
 void
Dem_Clear(Dem_EventRelateInformationType * pEvent, uint8 memDest)
{
    boolean allowed = 0u;
    boolean clear = 0u;
    Dem_EventMemEntryType* pEntry;
    Dem_EventIdType IntId = pEvent->IntId;
    const Dem_EventParameterType* pEventCfg = &DemPbCfgPtr->pDemEventParameter[IntId];
    const Dem_CallbackInitMForEType InitMForE = pEventCfg->DemCallbackInitMForE;
    const Dem_CallbackClearEventAllowedType* pClearEventAllowed = pEventCfg->DemCallbackClearEventAllowed;
    const Dem_IndicatorAttributeType * pWIRAttr;
    uint8 DemIndicatorRef;
    uint8 AttrNum = pEventCfg->AttrNum;


     
     
    if (InitMForE != ((void *)0))
    {
        (void)InitMForE(0x01u);
    }

    if ((pClearEventAllowed != ((void *)0)) && (pClearEventAllowed->ClearEventAllowed != ((void *)0)))
    {
        if (0U == pClearEventAllowed->ClearEventAllowed(&allowed))
        {
            if (allowed == 1u)
            {
                 
                pEvent->UdsStatus = 0x00;
                (pEvent->UdsStatus) |= (0x10u | 0x40u);
                 
            }
            else
            {
                clear = 1u;  
                if (pClearEventAllowed->DemClearEventAllowedBehavior == 1u)
                {
                    (pEvent->UdsStatus) |= (0x10u | 0x40u);  
                    (pEvent->UdsStatus) &= (uint8)(~(0x02u | 0x20u));    
                }
            }
        }
         
        else
        {
             
            pEvent->UdsStatus = 0x00;
            (pEvent->UdsStatus) |= (0x10u | 0x40u);  
        }
    }
    else
    {
         
        pEvent->UdsStatus = 0x00;  
        (pEvent->UdsStatus) |= (0x10u | 0x40u);  
    }
     
    Dem_UpdateCombinedDtcStatus(IntId);
    Dem_ResponseOnDtcStatusChange(IntId);
    if (clear == 0u)
    {
        uint16 DTCRef = pEventCfg->DemDTCRef;
         
        Dem_DebounceReset(IntId);
        if (DTCRef != 0xFFFFu)
        {
            FDCInfo[DTCRef].MaxFDCSinceLastClear = 0;  
            FDCInfo[DTCRef].MaxFDCDuringCurrentCycle = 0;
        }
         
        Dem_ClearDTRInfoByEventId(IntId);
        allowed = 1u;
        for (uint8 kloop = 0; (kloop < AttrNum) && (1u == allowed); kloop++)
        {
            pWIRAttr = &DemIndicatorAttribute[pEventCfg->AttrStartIndex + kloop];
            DemIndicatorRef = pWIRAttr->DemIndicatorRef;
            for (uint16 iloop = 0; (iloop < 59u) && (1u == allowed); iloop++)
            {
                const Dem_EventRelateInformationType* EventPtr = &DemEventRelateInformation[iloop];
                const Dem_EventParameterType *
                pEventCfg2 = &DemPbCfgPtr->pDemEventParameter[iloop];
                for (uint8 jloop = 0; (jloop < pEventCfg2->AttrNum) && (1u == allowed); jloop++)
                {
                    if ((0x00u != DEM_FLAGS_ISSET(EventPtr->UdsStatus, 0x80u))
                        && (DemIndicatorRef
                            == DemIndicatorAttribute[pEventCfg2->AttrStartIndex + jloop].DemIndicatorRef))
                    {
                        allowed = 0u;
                    }
                }
            }
            if (1u == allowed)
            {
                DemWIRStatus[DemIndicatorRef] = 0x00u;
            }
        }
         
        pEntry = Dem_MemEntryGet(Dem_GetEventExternalId(IntId), memDest);
        if (pEntry != ((void *)0))
        {
            Dem_MemEntryDelete(pEntry, memDest);  
        }
        pEvent->AgedCounter = 0;
    }
}


 









 
 
 Std_ReturnType Dem_EventQueueAdd(Dem_EventIdType ExtId, Dem_EventStatusType Status)
{
    Std_ReturnType ret = 1U;
    SchM_Enter_Dem_ExclusiveArea();
    Dem_EventQueueType* pQueue = &DemEventQueue;
    Dem_EventDataBufferType* pBuffer = &(pQueue->Queue[pQueue->WriteIndex]);

    if (pBuffer->ExtId == 0x00u)
    {
        pQueue->WriteIndex++;
        if (pQueue->WriteIndex >= 58u)
        {
            pQueue->WriteIndex = 0x00;
        }
        SchM_Exit_Dem_ExclusiveArea();
        pBuffer->Status = Status;
        pBuffer->ExtId = ExtId;
        ret = 0U;
    }
    else
    {
        SchM_Exit_Dem_ExclusiveArea();
    }
    return ret;
}

 









 
 
 Dem_EventRelateInformationType *
Dem_GetEventInfo(Dem_EventIdType IntId)
{
    return &DemEventRelateInformation[IntId];
}

 









 
 
 Dem_EventMemEntryType *
Dem_CheckEventMemEntryExistsAlready(Dem_EventIdType IntId)
{
    Dem_EventMemEntryType* ret = ((void *)0);
    const uint8* pMemDest;
    uint8 iloop;
    uint16 TempRef = DemPbCfgPtr->pDemEventParameter[IntId].DemDTCRef;
    Dem_EventMemEntryType* pEntry;
    uint8 MemDestMaxNumOfDtc = Dem_GetMemDestMaxNumOfDtc();

    if (TempRef != 0xFFFFu)
    {
        pMemDest =
            DemPbCfgPtr->pDemDTCAttributes[DemPbCfgPtr->DemCfgDTC[TempRef].DemDTCAttributesRef].DemMemoryDestinationRef;
        for (iloop = 0; iloop < MemDestMaxNumOfDtc; iloop++)
        {
            if (pMemDest[iloop] != 0xFFu)
            {
                pEntry = Dem_MemEntryGet(Dem_GetEventExternalId(IntId), pMemDest[iloop]);
                if (((void *)0) != pEntry)
                {
                    ret = pEntry;
                }
            }
        }
    }
    return ret;
}

 









 
 
 void Dem_SetOccurrenceEvent(Dem_EventIdType IntId, uint8 Status)
{
    switch (Status)
    {
    case 0x01u:
        if (DemDTCByOccurrenceTimeInfo.FirstFailed == 0xFFFFu)
        {
            DemDTCByOccurrenceTimeInfo.FirstFailed = IntId;
        }
        DemDTCByOccurrenceTimeInfo.MostRecentFailed = IntId;
        break;
    case 0x08u:
        if (DemDTCByOccurrenceTimeInfo.FirstDtcConfirmed == 0xFFFFu)
        {
            DemDTCByOccurrenceTimeInfo.FirstDtcConfirmed = IntId;
        }
        DemDTCByOccurrenceTimeInfo.MostRecDtcConfirmed = IntId;
        break;
    default:
         
        break;
    }
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
