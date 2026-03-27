 




















 
 

   
 












 












 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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







 




 

 




















 
 

 




 



 



 



 
typedef  uint8   Dcm_SecLevelType;



 
typedef  uint8   Dcm_SesCtrlType;



  
typedef  uint8   Dcm_ProtocolType;



 
typedef  uint8   Dcm_NegativeResponseCodeType;
 
typedef  uint8   Dcm_ConfirmationStatusType;

typedef  uint8   Dcm_OpStatusType;

typedef  uint8   Dcm_EcuResetType;

typedef  uint8   Rte_ModeType_DcmEcuReset;

typedef  uint8   Rte_ModeType_DcmControlDTCSetting;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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

 




















 
 



 


struct aes_key_st
{
    unsigned int rd_key[4 * (14 + 1)];
    unsigned int rounds;
};

typedef struct aes_key_st AES_KEY; 

 

 
   
extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_CompareKey( const  uint8*  Key,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );

extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter( Dcm_OpStatusType  OpStatus,  uint8*  AttemptCounter );

extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_GetSeed(
        Dcm_OpStatusType OpStatus,uint8* Seed,Dcm_NegativeResponseCodeType* ErrorCode);

extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter( Dcm_OpStatusType  OpStatus,  uint8  AttemptCounter );
   
 

   
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );

extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );

extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
   
 
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE02_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       

extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF08_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0A_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAFF7_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE02_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE80_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0B_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF05_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF06_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF07_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       

extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF08_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF06_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF07_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   

 
extern Std_ReturnType RTE_PreConditonCheck(void);

extern Std_ReturnType SchM_PerformReset(Rte_ModeType_DcmEcuReset Reset);

extern Std_ReturnType SchM_Switch_DcmControlDTCSetting(uint8 mode);
extern Std_ReturnType SchM_Switch_DcmDiagnosticSessionControl(uint8 mode);
extern Std_ReturnType SchM_Switch_DcmEcuReset(uint8 mode);













 












 




 












 












 




 
 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 

 




















 
 

 




 



 



 



 
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


 




 


 
static inline void OBD_BITS_SET(uint8* p, uint8 n)
{
    ((p)[(n) >> 3u] |= (uint8)(1u << ((n) & 7u)));
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 


 



 
 



 



 


 



 



 



 
 


 
 



 
extern Dcm_VINType Dcm_VIN;

extern Dcm_RoutineControlStateType Dcm_RoutineControlState[(11u)];

extern Dcm_CommCtrlType Dcm_CommCtrl[(1u)];
 

extern Dcm_SecCtrlType Dcm_SecCtrl;  

extern Dcm_SesCtrlCBType Dcm_SesCtrl;  

extern Dcm_ProtocolCtrlType Dcm_ProtocolCtrl[(1u)];
 

extern Dcm_ChannelCtrlType Dcm_ChannelCtrl[(2u)];
 

extern Dcm_MsgCtrlType Dcm_MsgCtrl[(1u)];
 

extern Dcm_ConnectionCtrlType Dcm_ConnectionCtrl[(1u)];

extern uint8 Dcm_Channel[(2048u)];


extern Dcm_FunctionMessageType Dcm_FunctionalMessage;
 

extern Dcm_OBDMessageType Dcm_OBDMessage;




 

 











 
 
extern  void Dcm_InterInit(void);

 














 
 
extern  void
    Dcm_InterDemTriggerOnDTCStatus(uint32 DTC, Dem_UdsStatusByteType DTCStatusOld, Dem_UdsStatusByteType DTCStatusNew);
 











 
 
extern  void Dcm_InterMainFunction(void);

 











 
 
extern  void Dcm_MainFunction_Pending2A(uint8 ProtocolCtrlId);

 











 
 
 
extern  void DspInternal_DcmConfirmation_0x27(uint8 ProtocolCtrlId);

 











 
 
extern  void DspInternal_DcmConfirmation_0x10(uint8 ProtocolCtrlId);

 











 
 
extern  void DspInternal_DcmConfirmation_0x11(uint8 ProtocolCtrlId);

 













 
 
extern  Std_ReturnType DsdInternal_ManufacturerIndication(uint8 ProtocolCtrlId);

 











 
 
extern  void DsdInternal_ManufacturerConfirmation(uint8 ProtocolCtrlId);

 











 
 
extern  Std_ReturnType DsdInternal_SupplierIndication(uint8 ProtocolCtrlId);

 











 
 
extern  void DsdInternal_SupplierConfirmation(uint8 ProtocolCtrlId);

 













 
 
extern  Std_ReturnType DsdInternal_SesCheck(uint16 SidTabIndex, uint16 SidTabServieCfgIndex);

 











 
 
extern  Std_ReturnType DsdInternal_SubSesCheck(
    uint8 ProtocolCtrlId,
    uint8 Sid,
    Dcm_NegativeResponseCodeType * ErrorCode);

 











 
 
extern  Std_ReturnType
    DsdInternal_DidSessionCheck(uint16 DidInfoCfgIndex, Dcm_NegativeResponseCodeType * pNrc);

 













 
 
extern  Std_ReturnType DsdInternal_SecurityCheck(uint16 SidTabIndex, uint16 SidTabServieCfgIndex);

 











 
 
extern  Std_ReturnType DsdInternal_SubSecurityCheck(
    uint8 ProtocolCtrlId,
    uint8 Sid,
    Dcm_NegativeResponseCodeType * ErrorCode);

 











 
 
extern  Std_ReturnType
    DsdInternal_DidSecurityCheck(uint16 DidInfoCfgIndex, Dcm_NegativeResponseCodeType * pNrc);


 











 
 
static inline  uint8 Dcm_GetMainConnectionNum(void)
{
    return (1u);
}


 











 
 
extern  void DslInternal_SetSecurityAccessStatus(Dcm_SecServiceStateType Status);

 











 
 
extern  Std_ReturnType
    DslInternal_GetSecurityCfgBySecLevel(Dcm_SecLevelType Dcm_SecLevel, uint8 * SecCfgIndex);



 
 











 
 
extern  void DslInternal_S3ServerStart(uint8 connectionId);

 











 
 
extern  void DslInternal_SesRefresh(Dcm_SesCtrlType NewSes);

 











 
 
extern  void DslInternal_InitConnectionCtrl(uint8 ConnectionCtrlId);

 











 
 
extern  void DslInternal_InitProtocolCtrl(uint8 ProtocolCtrlId);

 











 
 
extern  void DslInternal_ProtocolStartSession(void);

 











 
 
extern  uint8 Dcm_GetChannelNum(void);

 











 
 
extern  uint8 Dcm_GetProtocolMsgNum(void);

 











 
 
extern  void Dcm_RestartS3timer(uint8 connectionId);

 











 
 
extern  void Dcm_StopS3timer(void);

 











 
 
extern  uint32 Dcm_StartOfReception_GetLen(uint8 ServiceType, uint8 RxChannelCfgCtrlId);

 
















 
 
extern  BufReq_ReturnType Dcm_InterStartOfReception(
    PduIdType id,
    const PduInfoType * info,
    PduLengthType TpSduLength,
    PduLengthType * bufferSizePtr);

 



















 
 
extern  BufReq_ReturnType Dcm_CopyRxData_SessionDeal(
    const PduInfoType * info,
    uint8 ServiceType,
    uint8 * Sid,
    uint8 * SubFunction,
    uint8 ProtocolCfgId);

 











 
 
extern  Std_ReturnType Dcm_TpRxIndication_3E80(uint8 connectionId);

 











 
 
extern  void Dcm_TpRxIndication_SetTxPduId(
    uint8 MsgCtrlIndexx,
    const Dcm_DslConnectionType * pDslConnection);

 











 
 
extern  boolean Dcm_CheckUDS0x86_TxConfirmation(uint8 ProtocolCfgCtrlId);

 












 
 
extern  void Dcm_TxConfirmation_2A(PduIdType DcmTxPduId);


 











 
 
 uint8 Dcm_GetConnectionNum(void);



 

 











 
 
 void
OBD_CheckSupportedTIDs(uint8 Tid, uint32 * pDataBuf);



 











 
 
extern  void
    Dcm_FillTo4bytes(uint8 * pDataBuf, const uint32 * pData);

 
extern  Std_ReturnType Dcm_UDS0x10(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x11(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x27(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x28(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  void DspInternalUDS0x28_CheckNewSes(Dcm_SesCtrlType NewSes);


extern  Std_ReturnType Dcm_UDS0x3E(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x85(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);



extern  Std_ReturnType Dcm_UDS0x14(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x19(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x22(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);



extern  void Dcm_MainFunction_Scheduler_0x2A(uint8 ProtocolCtrlId);



extern  Std_ReturnType Dcm_UDS0x2E(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

extern  Std_ReturnType Dcm_UDS0x2F(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);


extern  Std_ReturnType Dcm_UDS0x31(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);
















 
extern void Rte_EnableAllDtcsRecord(void);

 











 
 
extern  uint8 Dcm_GetRxIdNum(void);

 











 
 
extern  uint8 Dcm_GetTxIdNum(void);













 












 
 








































































 


 












 












 

 
 

 
 




















 
 



 




 


 


 

 




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


 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const boolean DcmDspDIDcheckPerSourceDID = 1u;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspControlDTCSettingType Dcm_DspControlDTCSettingCfg =
{
    0u,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspComControlAllChannelType Dcm_DspComControlAllChannelCfg[1] =
{
    {
        1u,  
        0u,  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspComControlType Dcm_DspComControlCfg =
{
    1u,  
    &Dcm_DspComControlAllChannelCfg[0],  
    ((void *)0),  
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0)  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 CommonAuthorization_0_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 CommonAuthorization_1_SecRef[1] = {1u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 CommonAuthorization_1_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DspCommonAuthorizationType Dcm_DspCommonAuthorizationCfg[2] =
{
    {
        0u,      
        ((void *)0),  
        1u,  
        &CommonAuthorization_0_SesRef[0],  
    },
    {
        1u,      
        &CommonAuthorization_1_SecRef[0],  
        1u,  
        &CommonAuthorization_1_SesRef[0],  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDataType Dcm_DspDataCfg[132] =
{
    {
        Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData,  
        3u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData,  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData,  
        17u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData,  
        11u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData,  
        20u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData,  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        6u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData,  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        10u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        10u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        10u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        3u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData,  
        64u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData,  
        64u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData,  
        6u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData,  
        6u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData,  
        4u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData,  
        64u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData,  
        64u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData,  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData,  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData,  
        14u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData,  
        37u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData,  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData,  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData,  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData,  
        24u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData,  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData,  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        3u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        6u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        3u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        24u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        20u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        24u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        24u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        24u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        128u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        128u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        32u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        4u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        3u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        8u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        24u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        4u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        6u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        6u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        5u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        64u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        3u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        2u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        458u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        7u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        4u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        36u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        1u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        4u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    },
    {
        Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead,      
        1u,  
        ((void *)0),      
        ((void *)0),  
        DCM_OPAQUE,  
        ((void *)0),      
        ((void *)0),      
        ((void *)0),   
        Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData,  
        ((void *)0),  
        ((void *)0),  
        ((void *)0),  
        Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData,  
        16u,  
        DCM_UINT8_N,  
        USE_DATA_ASYNCH_CLIENT_SERVER,  
        0u,  
        0xffu,  
        ((void *)0),  
        ((void *)0)  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 


                                                                         












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DspDidReadType Dcm_DidInfo_0_ReadCfg =
{
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DspDidReadType Dcm_DidInfo_1_ReadCfg =
{
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DspDidReadType Dcm_DidInfo_2_ReadCfg =
{
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0),  
    0u,  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   




 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_DidInfo_0_Write_SecRefCfg[1] = {1u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_DidInfo_0_Write_SesRefCfg[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DspDidWriteType Dcm_DidInfo_0_WriteCfg=
{
    1u, 
    &Dcm_DidInfo_0_Write_SecRefCfg[0],     
    1u,     
    &Dcm_DidInfo_0_Write_SesRefCfg[0],  
    0u,     
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_DidInfo_2_Write_SesRefCfg[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DspDidWriteType Dcm_DidInfo_2_WriteCfg=
{
    0u, 
    ((void *)0),     
    1u,     
    &Dcm_DidInfo_2_Write_SesRefCfg[0],  
    0u,     
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   




     


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidInfoType Dcm_DspDidInfoCfg[3] =
{
    {
        0u,  
        0u,  
        ((void *)0),  
        &Dcm_DidInfo_0_ReadCfg,  
        &Dcm_DidInfo_0_WriteCfg,  
    },
    {
        0u,  
        0u,  
        ((void *)0),  
        &Dcm_DidInfo_1_ReadCfg,  
        ((void *)0),  
    },
    {
        0u,  
        0u,  
        ((void *)0),  
        &Dcm_DidInfo_2_ReadCfg,  
        &Dcm_DidInfo_2_WriteCfg,  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F130_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[0],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F18B_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[1],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F18C_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[2],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F190_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[3],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F198_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[4],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1A8_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[5],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1A9_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[6],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F100_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[7],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F110_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[8],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F111_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[9],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F112_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[10],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F113_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[11],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F114_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[12],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F115_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[13],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F116_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[14],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F117_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[15],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F118_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[16],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F119_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[17],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F11A_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[18],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F11B_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[19],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F11C_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[20],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F11D_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[21],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F11E_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[22],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F11F_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[23],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F120_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[24],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F121_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[25],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F131_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[26],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F183_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[27],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F187_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[28],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F18A_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[29],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F191_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[30],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F192_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[31],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F194_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[32],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1A0_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[33],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1A1_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[34],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1A2_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[35],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1A5_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[36],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1AA_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[37],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1B5_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[38],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F1B6_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[39],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C001_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[40],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C002_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[41],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C003_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[42],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C004_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[43],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C005_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[44],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C006_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[45],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C007_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[46],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C008_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[47],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C009_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[48],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C00A_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[49],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C00B_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[50],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C00C_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[51],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C00D_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[52],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C011_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[53],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C012_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[54],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C013_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[55],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C106_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[60],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C109_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[61],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C016_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[58],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C102_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[59],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C014_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[56],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C015_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[57],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_CA02_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[62],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_CA21_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[63],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C305_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[64],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C307_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[66],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C308_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[67],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C309_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[68],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C30A_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[69],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C30C_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[70],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_CE01_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[71],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_CE05_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[72],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_CE06_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[73],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_CF00_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[74],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C30D_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[75],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_C306_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[65],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_112_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[79],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_E101_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[80],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_10B_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[81],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_D002_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[83],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_E010_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[82],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_F186_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[84],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_D001_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[85],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B9C1_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[86],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B000_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[87],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B001_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[88],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B002_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[89],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B003_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[90],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B004_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[91],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B005_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[92],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B006_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[93],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B00C_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[94],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B082_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[95],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B083_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[96],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B100_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[97],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B101_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[98],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B102_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[99],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B103_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[100],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B104_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[101],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B105_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[102],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B180_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[103],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B181_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[104],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B182_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[105],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B183_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[106],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B185_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[107],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B186_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[108],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B187_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[109],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B200_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[110],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B201_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[111],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B202_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[112],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B210_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[113],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B211_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[114],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B230_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[115],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B302_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[116],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B931_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[117],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_B9E4_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[118],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_AFF1_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[119],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_AFF2_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[120],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_AFF5_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[121],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_AFF6_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[122],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE01_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[123],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE02_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[124],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE04_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[125],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE80_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[126],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE05_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[127],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE06_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[128],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_BE0A_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[129],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_D004_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[130],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidSignalType Dcm_Did_100_SignalCfg[1] =
{
    {
        0u,                    
        &Dcm_DspDataCfg[131],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspDidType Dcm_DspDidCfg[129] =
{
    {  
        0xF130u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F130_SignalCfg[0],      
    },
    {  
        0xF18Bu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F18B_SignalCfg[0],      
    },
    {  
        0xF18Cu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F18C_SignalCfg[0],      
    },
    {  
        0xF190u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F190_SignalCfg[0],      
    },
    {  
        0xF198u,      
        1u,      
        2u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F198_SignalCfg[0],      
    },
    {  
        0xF1A8u,      
        1u,      
        2u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1A8_SignalCfg[0],      
    },
    {  
        0xF1A9u,      
        1u,      
        2u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1A9_SignalCfg[0],      
    },
    {  
        0xF100u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F100_SignalCfg[0],      
    },
    {  
        0xF110u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F110_SignalCfg[0],      
    },
    {  
        0xF111u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F111_SignalCfg[0],      
    },
    {  
        0xF112u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F112_SignalCfg[0],      
    },
    {  
        0xF113u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F113_SignalCfg[0],      
    },
    {  
        0xF114u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F114_SignalCfg[0],      
    },
    {  
        0xF115u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F115_SignalCfg[0],      
    },
    {  
        0xF116u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F116_SignalCfg[0],      
    },
    {  
        0xF117u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F117_SignalCfg[0],      
    },
    {  
        0xF118u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F118_SignalCfg[0],      
    },
    {  
        0xF119u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F119_SignalCfg[0],      
    },
    {  
        0xF11Au,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F11A_SignalCfg[0],      
    },
    {  
        0xF11Bu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F11B_SignalCfg[0],      
    },
    {  
        0xF11Cu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F11C_SignalCfg[0],      
    },
    {  
        0xF11Du,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F11D_SignalCfg[0],      
    },
    {  
        0xF11Eu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F11E_SignalCfg[0],      
    },
    {  
        0xF11Fu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F11F_SignalCfg[0],      
    },
    {  
        0xF120u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F120_SignalCfg[0],      
    },
    {  
        0xF121u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F121_SignalCfg[0],      
    },
    {  
        0xF131u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F131_SignalCfg[0],      
    },
    {  
        0xF183u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F183_SignalCfg[0],      
    },
    {  
        0xF187u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F187_SignalCfg[0],      
    },
    {  
        0xF18Au,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F18A_SignalCfg[0],      
    },
    {  
        0xF191u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F191_SignalCfg[0],      
    },
    {  
        0xF192u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F192_SignalCfg[0],      
    },
    {  
        0xF194u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F194_SignalCfg[0],      
    },
    {  
        0xF1A0u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1A0_SignalCfg[0],      
    },
    {  
        0xF1A1u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1A1_SignalCfg[0],      
    },
    {  
        0xF1A2u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1A2_SignalCfg[0],      
    },
    {  
        0xF1A5u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1A5_SignalCfg[0],      
    },
    {  
        0xF1AAu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1AA_SignalCfg[0],      
    },
    {  
        0xF1B5u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1B5_SignalCfg[0],      
    },
    {  
        0xF1B6u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F1B6_SignalCfg[0],      
    },
    {  
        0xC001u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C001_SignalCfg[0],      
    },
    {  
        0xC002u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C002_SignalCfg[0],      
    },
    {  
        0xC003u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C003_SignalCfg[0],      
    },
    {  
        0xC004u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C004_SignalCfg[0],      
    },
    {  
        0xC005u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C005_SignalCfg[0],      
    },
    {  
        0xC006u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C006_SignalCfg[0],      
    },
    {  
        0xC007u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C007_SignalCfg[0],      
    },
    {  
        0xC008u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C008_SignalCfg[0],      
    },
    {  
        0xC009u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C009_SignalCfg[0],      
    },
    {  
        0xC00Au,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C00A_SignalCfg[0],      
    },
    {  
        0xC00Bu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C00B_SignalCfg[0],      
    },
    {  
        0xC00Cu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C00C_SignalCfg[0],      
    },
    {  
        0xC00Du,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C00D_SignalCfg[0],      
    },
    {  
        0xC011u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C011_SignalCfg[0],      
    },
    {  
        0xC012u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C012_SignalCfg[0],      
    },
    {  
        0xC013u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C013_SignalCfg[0],      
    },
    {  
        0xC106u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C106_SignalCfg[0],      
    },
    {  
        0xC109u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C109_SignalCfg[0],      
    },
    {  
        0xC016u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C016_SignalCfg[0],      
    },
    {  
        0xC102u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C102_SignalCfg[0],      
    },
    {  
        0xC014u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C014_SignalCfg[0],      
    },
    {  
        0xC015u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C015_SignalCfg[0],      
    },
    {  
        0xCA02u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_CA02_SignalCfg[0],      
    },
    {  
        0xCA21u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_CA21_SignalCfg[0],      
    },
    {  
        0xC305u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C305_SignalCfg[0],      
    },
    {  
        0xC307u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C307_SignalCfg[0],      
    },
    {  
        0xC308u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C308_SignalCfg[0],      
    },
    {  
        0xC309u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C309_SignalCfg[0],      
    },
    {  
        0xC30Au,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C30A_SignalCfg[0],      
    },
    {  
        0xC30Cu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C30C_SignalCfg[0],      
    },
    {  
        0xCE01u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_CE01_SignalCfg[0],      
    },
    {  
        0xCE05u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_CE05_SignalCfg[0],      
    },
    {  
        0xCE06u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_CE06_SignalCfg[0],      
    },
    {  
        0xCF00u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_CF00_SignalCfg[0],      
    },
    {  
        0xC30Du,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C30D_SignalCfg[0],      
    },
    {  
        0xC306u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_C306_SignalCfg[0],      
    },
    {  
        0x112u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_112_SignalCfg[0],      
    },
    {  
        0xE101u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_E101_SignalCfg[0],      
    },
    {  
        0x10Bu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_10B_SignalCfg[0],      
    },
    {  
        0xD002u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_D002_SignalCfg[0],      
    },
    {  
        0xE010u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_E010_SignalCfg[0],      
    },
    {  
        0xF186u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_F186_SignalCfg[0],      
    },
    {  
        0xD001u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_D001_SignalCfg[0],      
    },
    {  
        0xB9C1u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B9C1_SignalCfg[0],      
    },
    {  
        0xB000u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B000_SignalCfg[0],      
    },
    {  
        0xB001u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B001_SignalCfg[0],      
    },
    {  
        0xB002u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B002_SignalCfg[0],      
    },
    {  
        0xB003u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B003_SignalCfg[0],      
    },
    {  
        0xB004u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B004_SignalCfg[0],      
    },
    {  
        0xB005u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B005_SignalCfg[0],      
    },
    {  
        0xB006u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B006_SignalCfg[0],      
    },
    {  
        0xB00Cu,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B00C_SignalCfg[0],      
    },
    {  
        0xB082u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B082_SignalCfg[0],      
    },
    {  
        0xB083u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B083_SignalCfg[0],      
    },
    {  
        0xB100u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B100_SignalCfg[0],      
    },
    {  
        0xB101u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B101_SignalCfg[0],      
    },
    {  
        0xB102u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B102_SignalCfg[0],      
    },
    {  
        0xB103u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B103_SignalCfg[0],      
    },
    {  
        0xB104u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B104_SignalCfg[0],      
    },
    {  
        0xB105u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B105_SignalCfg[0],      
    },
    {  
        0xB180u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B180_SignalCfg[0],      
    },
    {  
        0xB181u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B181_SignalCfg[0],      
    },
    {  
        0xB182u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B182_SignalCfg[0],      
    },
    {  
        0xB183u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B183_SignalCfg[0],      
    },
    {  
        0xB185u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B185_SignalCfg[0],      
    },
    {  
        0xB186u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B186_SignalCfg[0],      
    },
    {  
        0xB187u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B187_SignalCfg[0],      
    },
    {  
        0xB200u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B200_SignalCfg[0],      
    },
    {  
        0xB201u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B201_SignalCfg[0],      
    },
    {  
        0xB202u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B202_SignalCfg[0],      
    },
    {  
        0xB210u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B210_SignalCfg[0],      
    },
    {  
        0xB211u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B211_SignalCfg[0],      
    },
    {  
        0xB230u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B230_SignalCfg[0],      
    },
    {  
        0xB302u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B302_SignalCfg[0],      
    },
    {  
        0xB931u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B931_SignalCfg[0],      
    },
    {  
        0xB9E4u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_B9E4_SignalCfg[0],      
    },
    {  
        0xAFF1u,      
        0u,      
        1u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_AFF1_SignalCfg[0],      
    },
    {  
        0xAFF2u,      
        0u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_AFF2_SignalCfg[0],      
    },
    {  
        0xAFF5u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_AFF5_SignalCfg[0],      
    },
    {  
        0xAFF6u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_AFF6_SignalCfg[0],      
    },
    {  
        0xBE01u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE01_SignalCfg[0],      
    },
    {  
        0xBE02u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE02_SignalCfg[0],      
    },
    {  
        0xBE04u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE04_SignalCfg[0],      
    },
    {  
        0xBE80u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE80_SignalCfg[0],      
    },
    {  
        0xBE05u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE05_SignalCfg[0],      
    },
    {  
        0xBE06u,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE06_SignalCfg[0],      
    },
    {  
        0xBE0Au,      
        1u,      
        0u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_BE0A_SignalCfg[0],      
    },
    {  
        0xD004u,      
        1u,      
        1u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_D004_SignalCfg[0],      
    },
    {  
        0x100u,      
        1u,      
        2u,      
        0u,      
        ((void *)0),      
        1u,  
        &Dcm_Did_100_SignalCfg[0],      
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xAF09_SignalCfg[2] =
{
    {
        DCM_OPAQUE,      
        2u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        2u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xAF0A_SignalCfg[3] =
{
    {
        DCM_OPAQUE,      
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,      
        2u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xAFF7_SignalCfg[1] =
{
    {
        DCM_OPAQUE,      
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xFE02_SignalCfg[3] =
{
    {
        DCM_OPAQUE,      
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        6u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xFE80_SignalCfg[2] =
{
    {
        DCM_OPAQUE,  
        2u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        6u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xFE0A_SignalCfg[2] =
{
    {
        DCM_OPAQUE,      
        114u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        3u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xFE0B_SignalCfg[3] =
{
    {
        DCM_OPAQUE,      
        2u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
    {
        DCM_OPAQUE,  
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutSignalType Dcm_Routine_0xAF05_SignalCfg[1] =
{
    {
        DCM_OPAQUE,  
        1u,  
        0u,  
        DCM_UINT8_N,  
        ((void *)0),  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xAF09_RequestRoutineResultsOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xAF09_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRequestRoutineResultsType Dcm_RoutineInfo_0xAF09_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF09_RequestResults,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    &Dcm_Routine_0xAF09_RequestRoutineResultsOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xAF0A_RequestRoutineResultsInCfg =
{
    1u,                                   
    &Dcm_Routine_0xAF0A_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xAF0A_RequestRoutineResultsOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xAF0A_SignalCfg[1],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRequestRoutineResultsType Dcm_RoutineInfo_0xAF0A_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    &Dcm_Routine_0xAF0A_RequestRoutineResultsInCfg,  
    &Dcm_Routine_0xAF0A_RequestRoutineResultsOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xAFF7_RequestRoutineResultsOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xAFF7_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRequestRoutineResultsType Dcm_RoutineInfo_0xAFF7_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    &Dcm_Routine_0xAFF7_RequestRoutineResultsOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE02_RequestRoutineResultsOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE02_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRequestRoutineResultsType Dcm_RoutineInfo_0xFE02_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE02_RequestResults,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    &Dcm_Routine_0xFE02_RequestRoutineResultsOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE0A_RequestRoutineResultsOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE0A_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRequestRoutineResultsType Dcm_RoutineInfo_0xFE0A_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    &Dcm_Routine_0xFE0A_RequestRoutineResultsOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE0B_RequestRoutineResultsOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE0B_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRequestRoutineResultsType Dcm_RoutineInfo_0xFE0B_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    &Dcm_Routine_0xFE0B_RequestRoutineResultsOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAF08_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF08_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     ((void *)0),  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAF09_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF09_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     ((void *)0),  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xAF0A_StartRoutineInCfg =
{
    1u,                                   
    &Dcm_Routine_0xAF0A_SignalCfg[2],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAF0A_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF0A_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     &Dcm_Routine_0xAF0A_StartRoutineInCfg,  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAFF7_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAFF7_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     ((void *)0),  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE02_StartRoutineInCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE02_SignalCfg[1],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE02_StartRoutineOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE02_SignalCfg[2],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xFE02_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE02_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     &Dcm_Routine_0xFE02_StartRoutineInCfg,  
     &Dcm_Routine_0xFE02_StartRoutineOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE80_StartRoutineInCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE80_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE80_StartRoutineOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE80_SignalCfg[1],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xFE80_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE80_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     &Dcm_Routine_0xFE80_StartRoutineInCfg,  
     &Dcm_Routine_0xFE80_StartRoutineOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE0A_StartRoutineInCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE0A_SignalCfg[1],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xFE0A_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE0A_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     &Dcm_Routine_0xFE0A_StartRoutineInCfg,  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE0B_StartRoutineInCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE0B_SignalCfg[1],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xFE0B_StartRoutineOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xFE0B_SignalCfg[2],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xFE0B_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE0B_Start,  
     &Dcm_DspCommonAuthorizationCfg[0],  
     0u,
     ((void *)0),
     &Dcm_Routine_0xFE0B_StartRoutineInCfg,  
     &Dcm_Routine_0xFE0B_StartRoutineOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType Dcm_Routine_0xAF05_StartRoutineOutCfg =
{
    1u,                                   
    &Dcm_Routine_0xAF05_SignalCfg[0],     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAF05_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF05_Start,  
     &Dcm_DspCommonAuthorizationCfg[1],  
     0u,
     ((void *)0),
     ((void *)0),  
     &Dcm_Routine_0xAF05_StartRoutineOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAF06_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF06_Start,  
     &Dcm_DspCommonAuthorizationCfg[1],  
     0u,
     ((void *)0),
     ((void *)0),  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStartRoutineType Dcm_RoutineInfo_0xAF07_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF07_Start,  
     &Dcm_DspCommonAuthorizationCfg[1],  
     0u,
     ((void *)0),
     ((void *)0),  
     ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStopRoutineType Dcm_RoutineInfo_0xAF08_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF08_Stop,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineInOutType    Dcm_Routine_0xAF09_StopRoutineOutCfg =
{
    1u,
    &Dcm_Routine_0xAF09_SignalCfg[1],
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStopRoutineType Dcm_RoutineInfo_0xAF09_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF09_Stop,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    &Dcm_Routine_0xAF09_StopRoutineOutCfg,  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStopRoutineType Dcm_RoutineInfo_0xFE0A_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE0A_Stop,  
    &Dcm_DspCommonAuthorizationCfg[0],  
    0u,
    ((void *)0),
    ((void *)0),  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStopRoutineType Dcm_RoutineInfo_0xAF06_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF06_Stop,  
    &Dcm_DspCommonAuthorizationCfg[1],  
    0u,
    ((void *)0),
    ((void *)0),  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspStopRoutineType Dcm_RoutineInfo_0xAF07_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF07_Stop,  
    &Dcm_DspCommonAuthorizationCfg[1],  
    0u,
    ((void *)0),
    ((void *)0),  
    ((void *)0),  
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspRoutineType Dcm_DspRoutineCfg[11] =
{
    {  
        0xAF08u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        ((void *)0),  
        &Dcm_RoutineInfo_0xAF08_StartCfg,  
        &Dcm_RoutineInfo_0xAF08_StopCfg,  
    },
    {  
        0xAF09u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        &Dcm_RoutineInfo_0xAF09_ResultsCfg,  
        &Dcm_RoutineInfo_0xAF09_StartCfg,  
        &Dcm_RoutineInfo_0xAF09_StopCfg,  
    },
    {  
        0xAF0Au,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        &Dcm_RoutineInfo_0xAF0A_ResultsCfg,  
        &Dcm_RoutineInfo_0xAF0A_StartCfg,  
        ((void *)0),  
    },
    {  
        0xAFF7u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        &Dcm_RoutineInfo_0xAFF7_ResultsCfg,  
        &Dcm_RoutineInfo_0xAFF7_StartCfg,  
        ((void *)0),  
    },
    {  
        0xFE02u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        &Dcm_RoutineInfo_0xFE02_ResultsCfg,  
        &Dcm_RoutineInfo_0xFE02_StartCfg,  
        ((void *)0),  
    },
    {  
        0xFE80u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        ((void *)0),  
        &Dcm_RoutineInfo_0xFE80_StartCfg,  
        ((void *)0),  
    },
    {  
        0xFE0Au,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        &Dcm_RoutineInfo_0xFE0A_ResultsCfg,  
        &Dcm_RoutineInfo_0xFE0A_StartCfg,  
        &Dcm_RoutineInfo_0xFE0A_StopCfg,  
    },
    {  
        0xFE0Bu,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[0],      
        &Dcm_RoutineInfo_0xFE0B_ResultsCfg,  
        &Dcm_RoutineInfo_0xFE0B_StartCfg,  
        ((void *)0),  
    },
    {  
        0xAF05u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[1],      
        ((void *)0),  
        &Dcm_RoutineInfo_0xAF05_StartCfg,  
        ((void *)0),  
    },
    {  
        0xAF06u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[1],      
        ((void *)0),  
        &Dcm_RoutineInfo_0xAF06_StartCfg,  
        &Dcm_RoutineInfo_0xAF06_StopCfg,  
    },
    {  
        0xAF07u,  
        0u,  
        1u,  
        1u,      
        &Dcm_DspCommonAuthorizationCfg[1],      
        ((void *)0),  
        &Dcm_RoutineInfo_0xAF07_StartCfg,  
        &Dcm_RoutineInfo_0xAF07_StopCfg,  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   
 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspSecurityRowType Dcm_DspSecurityRow[1] =
{
    {  
        1u,           
        4u,           
        4u,           
        0u,           
        1u,         
        2u,     
        10000u,   
        0u, 
        Rte_Call_SecurityAccess_Level_1_GetSeed,     
        Rte_Call_SecurityAccess_Level_1_CompareKey,     
        Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter,     
        Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter,     
        USE_ASYNCH_CLIENT_SERVER,     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspSecurityType Dcm_DspSecurity =
{
    &Dcm_DspSecurityRow[0],     
    1u,     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspSessionRowType Dcm_DspSessionRow[3] =
{
    {  
        DCM_NO_BOOT,     
        1u,     
        50u,     
        5000u,     
    },
    {  
        DCM_SYS_BOOT,     
        2u,     
        50u,     
        5000u,     
    },
    {  
        DCM_NO_BOOT,     
        3u,     
        50u,     
        5000u,     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspSessionType Dcm_DspSession =
{
    &Dcm_DspSessionRow[0],     
    3u,         
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DspCfgType Dcm_DspCfg =
{
    &DcmDspDIDcheckPerSourceDID,     
    DCM_BIG_ENDIAN,     
    0u, 
    10, 
    0xau, 
    0u, 
    BEFORE_RESET,     
    ((void *)0),         
    &Dcm_DspComControlCfg,         
    &Dcm_DspCommonAuthorizationCfg[0],         
    &Dcm_DspControlDTCSettingCfg,     
    &Dcm_DspDataCfg[0],         ((void *)0),     
    129u,     
    &Dcm_DspDidCfg[0],         
    3u,     
    &Dcm_DspDidInfoCfg[0],         
    0u,     
    ((void *)0),         
    ((void *)0),  

    ((void *)0),     

    11u,         
    &Dcm_DspRoutineCfg[0],     

    &Dcm_DspSecurity,   
    &Dcm_DspSession,   

    0xFFu,
    ((void *)0),

    ((void *)0),
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x10_3_SesRef[2] = {1u, 3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x10[3] =
{
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x2u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x3u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x10_3_SesRef[0],     
        2u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_1_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_2_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SecRef[1] = {1u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x31[3] =
{
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_1_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x2u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_2_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x3u,     
        1u,     
        ((void *)0),     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SecRef[0],     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x11[1] =
{
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_1_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_2_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x85[2] =
{
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_1_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x2u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_2_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_1_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_2_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x27[2] =
{
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_1_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x2u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_2_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_0_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_1_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_3_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x28[3] =
{
    {
        ((void *)0),     
        0x0u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_0_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_1_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x3u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_3_SesRef[0],     
        1u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x19[5] =
{
    {
        ((void *)0),     
        0x1u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x2u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x4u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0x6u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    },
    {
        ((void *)0),     
        0xAu,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdSubServiceCfgType Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x3E[1] =
{
    {
        ((void *)0),     
        0x0u,     
        1u,     
        ((void *)0),     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2E_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const uint8 Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2F_SesRef[1] = {3u};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
     
static  const Dcm_DsdServiceCfgType SRVTABLE_UDS_CAN_FD_Service[12] =
{
    {  
        1u,     
        Dcm_UDS0x10,     
        0x10u,     
        1u,     
        1u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        0u,     
        ((void *)0),     
        3u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x10[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x31,     
        0x31u,     
        1u,     
        0u,   
        DCM_PHYSICAL,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_SesRef[0],     
        3u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x31[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x11,     
        0x11u,     
        1u,     
        1u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        0u,     
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x11[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x22,     
        0x22u,     
        0u,     
        0u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x14,     
        0x14u,     
        0u,     
        0u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        0u,     
        ((void *)0),     
        0u,     
        ((void *)0),     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x85,     
        0x85u,     
        1u,     
        1u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_SesRef[0],     
        2u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x85[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x27,     
        0x27u,     
        1u,     
        0u,   
        DCM_PHYSICAL,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_SesRef[0],     
        2u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x27[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x28,     
        0x28u,     
        1u,     
        1u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_SesRef[0],     
        3u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x28[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x19,     
        0x19u,     
        1u,     
        0u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        0u,     
        ((void *)0),     
        5u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x19[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x2E,     
        0x2Eu,     
        0u,     
        0u,   
        DCM_PHYSICAL,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2E_SesRef[0],     
        0u,     
        ((void *)0),     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x3E,     
        0x3Eu,     
        1u,     
        1u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        0u,     
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x3E[0],     
        ((void *)0),     
        0u     
    },
    {  
        1u,     
        Dcm_UDS0x2F,     
        0x2Fu,     
        0u,     
        0u,   
        DCM_PHYANDFUNC,  
        ((void *)0),     
        0u,  
        ((void *)0),     
        1u,     
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2F_SesRef[0],     
        0u,     
        ((void *)0),     
        ((void *)0),     
        0u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DsdServiceTableCfgType Dcm_DsdServiceTable[(1u)]=
{
    {
        0x0u,     
        &SRVTABLE_UDS_CAN_FD_Service[0],     
        12u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 

 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DsdCfgType Dcm_DsdCfg =
{
    &Dcm_DsdServiceTable[0],     
    (1u)         
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static  const Dcm_DslBufferType Dcm_DslBufferCfg[(2u)] =
{
    { 
        0x0u,     
        1024u,     
        0u     
    },
    { 
        0x1u,     
        1024u,     
        1024u     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DslDiagRespType Dcm_DslDiagRespCfg =
{
    0u,         
    16u         
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static  const Dcm_DslCallbackDCMRequestServiceType Dcm_DslCallbackDCMRequestServiceCfg[1] =
{
    {
        ((void *)0),
        ((void *)0)
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslProtocolRxType Dsl_Protocol_Connection_RxCfg[(2u)]=
{
    {
        0x0u,               
        DCM_FUNCTIONAL,     
        0x0,        

    },
    {
        0x0u,               
        DCM_PHYSICAL,     
        0x1,        

    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslProtocolTxType Dsl_Protocol_Connection_TxCfg[(1u)]=
{
    {
        0x0u,             
        0x0,        
        31u,   
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslMainConnectionType Dsl_Protocol_MainConnectionCfg[(1u)] =
{
    {
        0x00000000u,                             
        ((void *)0),   
        0u,                                      

        ((void *)0),   
        &Dsl_Protocol_Connection_RxCfg[0],     
        2u,                                    
        &Dsl_Protocol_Connection_TxCfg[0],   
        1u                                     
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslConnectionType Dsl_Protocol_ConnectionCfg[(1u)]=
{
    {
        0x0u,                                 
        &Dsl_Protocol_MainConnectionCfg[0],     
        ((void *)0),                              
        ((void *)0)                               
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslProtocolRowType Dsl_ProtocolRowCfg[(1u)] =
{
    {
        ((Dcm_ProtocolType)0x03u),         
        0u,                     
        1u,                 
        DCM_PROTOCAL_TRAN_NOT_VALID,
        1u,                 
        0u,                      
        0u,                 
        &Dcm_DslBufferCfg[0], 
        &Dcm_DslBufferCfg[1], 
        0u,                  
        &Dsl_Protocol_ConnectionCfg[0],  
        0u,               
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslProtocolType Dcm_DslProtocol =
{
    &Dsl_ProtocolRowCfg[0],     
    (1u),     
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dcm_DslCfgType Dcm_DslCfg =
{
    (2u),         
    &Dcm_DslBufferCfg[0],     
    0u,                         
    &Dcm_DslCallbackDCMRequestServiceCfg[0],     
    &Dcm_DslDiagRespCfg,        
    &Dcm_DslProtocol,         
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
   
const Dcm_CfgType Dcm_Cfg =
 
{
    &Dcm_DslCfg,     
    &Dcm_DsdCfg,     
    &Dcm_DspCfg,     
    Dsl_Protocol_Connection_RxCfg,
    Dsl_Protocol_ConnectionCfg,
    Dsl_Protocol_MainConnectionCfg,
    Dsl_Protocol_Connection_TxCfg,
    ((void *)0),         
    ((void *)0),         
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   
