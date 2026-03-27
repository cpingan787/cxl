











 












 


 












 



 












 












 














 



 




 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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













 












 














 


 



 












 












 




 
 




















 
 




 



 

 

 


 


 

 



 


 

 

 





 

 

 


 




















 
 




 


 



 
 
typedef uint16 StbM_SynchronizedTimeBaseType;

 

typedef uint8 StbM_TimeBaseStatusType;


 
typedef struct
{
    StbM_TimeBaseStatusType timeBaseStatus;
    uint32 nanoseconds;
    uint32 seconds;
    uint16 secondsHi;
} StbM_TimeStampType;

 
typedef sint32 StbM_TimeDiffType;
 
typedef sint16 StbM_RateDeviationType;
 
typedef struct
{
    uint8 userDataLength;
    uint8 userByte0;
    uint8 userByte1;
    uint8 userByte2;
} StbM_UserDataType;
 
typedef uint16 StbM_CustomerIdType;
 
typedef struct
{
    uint8 SynchronizedTimeDomain;
    uint32 HWfrequency;
    uint32 HWprescaler;
} StbM_SyncRecordTableHeadType;
 
typedef struct
{
    uint8 OffsetTimeDomain;
} StbM_OffsetRecordTableHeadType;

 
typedef enum
{
    STBM_SYSTEM_WIDE_MASTER_DISABLED = 0x00,
    STBM_SYSTEM_WIDE_MASTER_ENABLED = 0x01
} StbM_MasterConfigType;



 



 




 

typedef enum
{
    CRC_IGNORED = 0u,
    CRC_NOT_VALIDATED,
    CRC_OPTIONAL,
    CRC_VALIDATED
} CrcValidatedType;

typedef enum
{
    CRC_NOT_SUPPORTED = 0u,
    CRC_SUPPORTED
} CrcSecuredType;

typedef enum
{
    STBM_TBTYPE_SYNCHRONIZED,
    STBM_TBTYPE_OFFSET,
    STBM_TBTYPE_PURELOCAL
} StbM_SynchronizedTimeBaseTypeType;

 
typedef struct
{
    uint32 GlbSeconds;
    uint32 GlbNanoSeconds;
    StbM_TimeBaseStatusType TimeBaseStatus;
    uint32 VirtualLocalTimeLow;
    StbM_RateDeviationType RateDeviation;
    uint32 LocSeconds;
    uint32 LocNanoSeconds;
    uint32 PathDelay;
} StbM_SyncRecordTableBlockType;

 
typedef struct
{
    uint32 GlbSeconds;
    uint32 GlbNanoSeconds;
    StbM_TimeBaseStatusType TimeBaseStatus;
} StbM_OffsetRecordTableBlockType;

 
typedef uint16 StbM_TimeBaseNotificationType;


typedef enum
{
    CALLBACK,
    CALLBACK_AND_SR_INTERFACE,
    NO_NOTIFICATION,
    SR_INTERFACE
} StbMNotificationInterfaceType;

typedef enum
{
    ETHTSYN_GLOBALTIME_DOMAIN,
    GPT_CHANNEL_CONFIGURATION,
    OS_COUNTER
} StbMLocalTimeHardwareCfgType;
 
typedef struct
{
    
 
    boolean AllowMasterRateCorrection;
    
 
    uint16 MasterRateDeviationMax;
    
 
    uint64 OffsetCorrectionAdaptionInterval;
    
 
    uint64 OffsetCorrectionJumpThreshold;
     
    uint64 RateCorrectionMeasurementDuration;
     
    uint16 RateCorrectionsPerMeasurementDuration;
} StbMTimeCorrectionCfgType;
 
typedef struct
{
     
    uint32 StbMClockFrequency;
    
 
    uint32 StbMClockPrescaler;
     
    uint8 StbMLocalTimeHardware;
    StbMLocalTimeHardwareCfgType StbMLocalTimeHardwareType;
    uint32 LocalTimeMax;
} StbM_LocalTimeClockCfgType;

 

typedef struct
{
    StbM_SynchronizedTimeBaseType timeBaseId;
    
 
    void (*StbMTimeNotificationCallback)(StbM_TimeDiffType deviationTime);
} StbMNotificationCustomerCfgType;


 
typedef struct
{
     
    uint16 StbMClearTimeleapCount;
    
 
    boolean StbMIsSystemWideGlobalTimeMaster;
     
    uint16 StbMSynchronizedTimeBaseIdentifier;
    
 
    uint64 StbMSyncLossTimeout;
    
 
    uint64 StbMTimeLeapFutureThreshold;
    
 
    uint64 StbMTimeLeapPastThreshold;
    
 
    const uint16* StbMOffsetTimeBase;
    const StbMTimeCorrectionCfgType* StbMTimeCorrection;
    const StbM_LocalTimeClockCfgType* StbMLocalTimeClock;
    
 
    uint16 StbMNotificationCustomerNum;
    const StbMNotificationCustomerCfgType* StbMNotificationCustomer;
    StbM_SynchronizedTimeBaseTypeType synchronizedTimeBaseType;
    boolean StbMisTimeGateway;
} StbM_SynchronizedTimeBaseCfgType;



 
typedef uint64 StbM_HwCounterType;
typedef uint64 StbM_LocalTimeType;

typedef struct
{
    uint64 GlobalTime;
    uint64 VirtualLocalTime;
} StbM_MainTimeTupleType;

typedef struct StbM_RateCorrectionTupleTag
{
    uint64 TGstart;
    uint64 TVstart;
} StbM_RateCorrectionTupleType;

typedef struct StbM_RateCorrectionTag
{
    StbM_RateCorrectionTupleType* Array;
    uint32 StartIndex;
    uint32 StopIndex;
} StbM_RateCorrectionType;

typedef struct
{
    StbM_HwCounterType preHwCounter;
    StbM_LocalTimeType localTimeFraction;
    StbM_LocalTimeType localTime;
} StbM_LocalClockTimeType;

typedef struct StbM_CurrentRateTag
{
    sint32 RrcValue;
    sint32 RocValue;
    boolean IsSet;
} StbM_CurrentRateType;


typedef enum
{
    RESERVED_NOT_ALLOWED,
    PURELOCAL_TIMEBASE_NOT_ALLOWED,
    OFFSET_TIMEBASE_NOT_ALLOWED,
    SYNC_TIMEBASE_NOT_ALLOWED,
    SYNC_AND_PURELOCAL_TIMEBASE_NOT_ALLOWED,
    OFFSET_AND_PURELOCAL_TIMEBASE_NOT_ALLOWED
} StbM_TimeBaseIdAllowedType;

typedef struct
{
    StbM_TimeBaseStatusType timeBaseStatus;
    uint8 StbMTimeBaseUpdateCounter;
    StbM_UserDataType UserData;
    StbM_TimeStampType Offset;
    StbM_MainTimeTupleType StbMMainTimeTuple;
    uint16 StbMClearTimeleapCount;
    StbM_TimeDiffType TimeLeap;
    boolean BusNotFirstSet;
    uint64 lastBusSettime;
    StbM_LocalClockTimeType localClockTime;
    StbM_CurrentRateType RateDeviation;

    StbM_RateCorrectionType RateCorrection;
} StbM_TimeBaseType;



























 
   
   
   



























 
   
   
   




























 
   
   
   
   


 

























 
 

































































































































































































































 


 




 












 











 


 


 


 













































 




 














 
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





























 
 

















































































































































 


 



 
 
 


typedef struct
{
    uint8 reserved;
} SchM_ConfigType;




 
 
void SchM_Init (const SchM_ConfigType * ConfigPtr);
void SchM_Start (void);
void SchM_StartTiming (void);
void SchM_Deinit (void);



 



 

 

 

 


























 
   


 



 



 
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




 



 
typedef uint8 Rte_MetaData_IOCData_Type_1byte[1];
typedef uint8 Rte_MetaData_IOCData_Type_2byte[2];
typedef uint8 Rte_MetaData_IOCData_Type_4byte[4];
typedef uint8 Rte_MetaData_IOCData_Type_8byte[8];
typedef struct
{
    uint16 clientId;
    uint16 sequenceCounter;
} Rte_Cs_TransactionHandleType;
typedef uint8 * uint8_ptr;
typedef uint8 uint8_Cs;
typedef uint16 uint16_Cs;

typedef uint16 uint16_Mode;


 





















 



 












extern void StbM_MainFunction(void);               



 
extern void SchM_Enter_StbM_Context(void);
extern void SchM_Exit_StbM_Context(void);


















 

 
 
 
 
 
 
 
 

 


 
typedef struct
{
    const StbM_SynchronizedTimeBaseCfgType* StbMSynchronizedTimeBase;
} StbM_ConfigType;

 
typedef struct
{
    uint32 nanosecondsLo;
    uint32 nanosecondsHi;
} StbM_VirtualLocalTimeType;

 
typedef struct
{
    uint32 pathDelay;
} StbM_MeasurementType;


 
extern const StbM_ConfigType StbM_Config;



 










 
void StbM_Init(const StbM_ConfigType* ConfigPtr);












 
Std_ReturnType StbM_GetCurrentTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeStampType* timeStamp,
    StbM_UserDataType* userData);











 
Std_ReturnType StbM_GetCurrentVirtualLocalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_VirtualLocalTimeType* localTimePtr);















 
Std_ReturnType StbM_SetGlobalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* timeStamp,
    const StbM_UserDataType* userData);















 
Std_ReturnType StbM_UpdateGlobalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* timeStamp,
    const StbM_UserDataType* userData);













 
Std_ReturnType StbM_SetUserData(StbM_SynchronizedTimeBaseType timeBaseId, const StbM_UserDataType* userData);













 
Std_ReturnType StbM_SetOffset(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* timeStamp,
    const StbM_UserDataType* userData);












 
Std_ReturnType StbM_GetOffset(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeStampType* timeStamp,
    StbM_UserDataType* userData);















 
Std_ReturnType StbM_BusGetCurrentTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeStampType* globalTimePtr,
    StbM_VirtualLocalTimeType* localTimePtr,
    StbM_UserDataType* userDataPtr);
















 
Std_ReturnType StbM_BusSetGlobalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* globalTimePtr,
    const StbM_UserDataType* userDataPtr,
    const StbM_MeasurementType* measureDataPtr,
    const StbM_VirtualLocalTimeType* localTimePtr);











 
   
Std_ReturnType StbM_GetRateDeviation(StbM_SynchronizedTimeBaseType timeBaseId, StbM_RateDeviationType* rateDeviation);
   












 
Std_ReturnType StbM_SetRateCorrection(StbM_SynchronizedTimeBaseType timeBaseId, StbM_RateDeviationType rateDeviation);











 
Std_ReturnType StbM_GetTimeLeap(StbM_SynchronizedTimeBaseType timeBaseId, StbM_TimeDiffType* timeJump);














 
Std_ReturnType StbM_GetTimeBaseStatus(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeBaseStatusType* syncTimeBaseStatus,
    StbM_TimeBaseStatusType* offsetTimeBaseStatus);














 
Std_ReturnType StbM_TriggerTimeTransmission(StbM_SynchronizedTimeBaseType timeBaseId);












 
uint8 StbM_GetTimeBaseUpdateCounter(StbM_SynchronizedTimeBaseType timeBaseId);


 




















 
 



 

 
 




 












 












 


 




 



 




 



 



 













 

extern void CanTSyn_RxIndication(PduIdType RxPduId, const PduInfoType* PduInfoPtr);













 

extern void CanTSyn_TxConfirmation(
    PduIdType TxPduId
);




 
 

 


 

 

 

 

 

 



 

 
typedef enum
{
    CANTSYN_INITED = 0u,
    CANTSYN_UNINIT
} CanTSyn_InitStatusType;

 
typedef enum
{
    SYNC_REQUIRED = 0u,
    FUP_REQUIRED,
    SYNC_SENT,
    SYNC_NOT_REQUIRED
} CanTSyn_MasterStatusType;

 
typedef enum
{
    SYNC_EXPECTED = 0u,
    FUP_EXPECTED
} CanTSyn_SlaveStatusType;

 
typedef enum
{
    CANTSYN_TX_OFF = 0u,
    CANTSYN_TX_ON
} CanTSyn_TransmissionModeType;

 
typedef struct CanTSyn_DataIDListElement_T
{
    uint8 CanTSynGlobalTimeDataIDListIndex;
    uint8 CanTSynGlobalTimeDataIDListValue;
} CanTSyn_DataIDListElementType;

 
typedef struct CanTSyn_MasterTimeInfo_T
{
     
    uint32 T0SYNCns;
     
    uint64 T0VLT;
       
     
       
    uint64 T4;
     
    uint8 userByte2;
     
    StbM_TimeBaseStatusType timeBaseStatus;
     
    uint32 OfsTimeNSec;
     
    uint32 cyclicResumeCounter;
     
    uint32 debounceCounter;
     
    uint32 periodCounter;
     
    uint32 confirmationTimeoutCounter;
} CanTSyn_MasterTimeInfoType;

 
typedef struct CanTSynGlobalTimeMaster_T
{
     
    uint32 CanTSynCyclicMsgResumeTime;
     
    uint32 CanTSynGlobalTimeDebounceTime;
     
    CrcSecuredType CanTSynGlobalTimeTxCrcSecured;
     
    uint32 CanTSynGlobalTimeTxPeriod;
     
    boolean CanTSynImmediateTimeSync;
     
    uint32 CanTSynMasterConfirmationTimeout;
     
    PduIdType CanTSynGlobalTimePduId;
} CanTSynGlobalTimeMasterType;

 
typedef struct CanTSynGlobalTimeSlave_T
{
     
    uint32 CanTSynGlobalTimeFollowUpTimeout;
     
    uint8 CanTSynGlobalTimeSequenceCounterJumpWidth;
     
    CrcValidatedType CanTSynRxCrcValidated;
     
    PduIdType CanTSynGlobalTimePduId;
} CanTSynGlobalTimeSlaveType;

typedef struct CanTSyn_GlobalTimeDomain_T
{
     
    uint8 CanTSynGlobalTimeDomainId;
     
    boolean CanTSynUseExtendedMsgFormat;
     
    StbM_SynchronizedTimeBaseType CanTSynSynchronizedTimeBaseId;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeSyncDataIDList;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeFupDataIDList;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeOfsDataIDList;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeOfnsDataIDList;
     
    const CanTSynGlobalTimeMasterType* CanTSynGlobalTimeMaster;
     
    const CanTSynGlobalTimeSlaveType* CanTSynGlobalTimeSlave;
} CanTSyn_GlobalTimeDomainType;

 
typedef struct CanTSyn_SlaveTimeInfo_T
{
     
    uint32 T0SYNC;
     
    uint64 T2VLT;
     
    uint8 userByte0;
     
    uint8 userByte1;
     
    uint32 OfsTimeSec;
     
    uint8 sequenceCounter;
     
    boolean isCRC;
     
    uint32 receptionTimeoutCounter;
} CanTSyn_SlaveTimeInfoType;





 
typedef struct
{
    const CanTSyn_GlobalTimeDomainType* CanTSynGlobalTimeDomain;
} CanTSyn_ConfigType;



 

 

extern const CanTSyn_ConfigType CanTSyn_config;



 












 

extern void CanTSyn_Init(const CanTSyn_ConfigType* configPtr);












 
extern void CanTSyn_SetTransmissionMode(uint8 CtrlIdx, CanTSyn_TransmissionModeType Mode);

























 
   
   
   



























 
   
   
   














extern void CanTSyn_MainFunction(void);               



 
extern void SchM_Enter_CanTSyn_Context(void);
extern void SchM_Exit_CanTSyn_Context(void);




























 












 
























 



 




 












 












 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 
 




 
 
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


 


 



 



 



static inline uint8 CanTSyn_HiHiByte(uint32 x)
{
    return (uint8)(x >> 24);
}

static inline uint8 CanTSyn_HiLoByte(uint32 x)
{
    return (uint8)(x >> 16);
}

static inline uint8 CanTSyn_LoHiByte(uint32 x)
{
    return (uint8)(x >> 8);
}

static inline uint8 CanTSyn_LoLoByte(uint32 x)
{
    return (uint8)x;
}


 



 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 
static boolean CanTSyn_CheckGlobalTimeBaseBit(uint8 domainIdx);

 
static boolean CanTSyn_PassCRCMode(uint8 domainIdx, const PduInfoType* PduInfoPtr);

 
static void CanTSyn_MasterMain(uint8 domainIdx);

 
static void CanTSyn_DecrementCounter(
    uint32* counter,
    uint8 domainIdx,
    const CanTSyn_MasterStatusType* masterStatus,
    const CanTSyn_SlaveStatusType* slaveStatus);

 
static void CanTSyn_DealExtendedFormat(boolean useExtendedMsgFormat, PduInfoType* pduInfoPtr);

 

 
static void CanTSyn_TransmitSYNC(uint8 domainIdx, PduIdType pduId);

 
static void CanTSyn_TransmitFUP(uint8 domainIdx, PduIdType pduId);

 
static void CanTSyn_TransmitOFS(uint8 domainIdx, PduIdType pduId);

 
static void CanTSyn_TransmitOFNS(uint8 domainIdx, PduIdType pduId);

 
static void CanTSyn_RxSYNC(uint8 domainIdx, const PduInfoType* PduInfoPtr);

 
static void CanTSyn_RxFUP(uint8 domainIdx, const PduInfoType* PduInfoPtr);

 
static void CanTSyn_RxOFS(uint8 domainIdx, const PduInfoType* PduInfoPtr);

 
static void CanTSyn_RxOFNS(uint8 domainIdx, const PduInfoType* PduInfoPtr);

 
static void CanTSyn_RxOFSFD(uint8 domainIdx, const PduInfoType* PduInfoPtr);













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   



 



 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static CanTSyn_TransmissionModeType CanTSyn_TransmissionMode[1U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   



 



 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static CanTSyn_SlaveTimeInfoType CanTSyn_SlaveTimeInfo[1U];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static boolean CanTSyn_ImmediateSent[1U] = {0};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section

 



 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const CanTSyn_ConfigType* CanTSyn_configPtr = ((void *)0);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static CanTSyn_InitStatusType CanTSyn_InitStatus = CANTSYN_UNINIT;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static CanTSyn_MasterTimeInfoType CanTSyn_MasterTimeInfo[1U];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static uint8 CanTSyn_SequenceCounters[1U] = {0};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static uint8 CanTSyn_BaseCounterValues[1U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static CanTSyn_MasterStatusType CanTSyn_MasterStatus[1U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static CanTSyn_SlaveStatusType CanTSyn_SlaveStatus[1U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   



 












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
void CanTSyn_Init(const CanTSyn_ConfigType* configPtr)
{
    uint8 domainIdx;
     
    if (configPtr == ((void *)0))
    {

        ((void)Det_ReportError(161U, 0U, (((uint8)0x01)), (((uint8)0x03))));
    }
    else
    {
        CanTSyn_configPtr = configPtr;

         
        for (domainIdx = 0u; domainIdx < 1U; domainIdx++)
        {
            CanTSyn_BaseCounterValues[domainIdx] =
                StbM_GetTimeBaseUpdateCounter(CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynSynchronizedTimeBaseId);
            CanTSyn_MasterTimeInfo[domainIdx].cyclicResumeCounter = 0u;
            CanTSyn_MasterTimeInfo[domainIdx].debounceCounter = 0u;
            CanTSyn_MasterTimeInfo[domainIdx].periodCounter = 1u;
            CanTSyn_MasterTimeInfo[domainIdx].confirmationTimeoutCounter = 0u;
            CanTSyn_SlaveTimeInfo[domainIdx].receptionTimeoutCounter = 0u;
            CanTSyn_SlaveTimeInfo[domainIdx].sequenceCounter = 0u;
            CanTSyn_MasterStatus[domainIdx] = SYNC_NOT_REQUIRED;
            CanTSyn_SlaveStatus[domainIdx] = SYNC_EXPECTED;
            CanTSyn_TransmissionMode[domainIdx] = CANTSYN_TX_ON;
        }
        CanTSyn_InitStatus = CANTSYN_INITED;
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
void CanTSyn_SetTransmissionMode(uint8 CtrlIdx, CanTSyn_TransmissionModeType Mode)
{
 
    if ((Mode != CANTSYN_TX_OFF) && (Mode != CANTSYN_TX_ON))
    {
        ((void)Det_ReportError(161U, 0U, (((uint8)0x03)), (((uint8)0x05))));
    }
    else if (CtrlIdx >= 1U)  
    {
        ((void)Det_ReportError(161U, 0U, (((uint8)0x03)), (((uint8)0x06))));
    }
    else if (CanTSyn_InitStatus == CANTSYN_UNINIT)  
    {
        ((void)Det_ReportError(161U, 0U, (((uint8)0x03)), (((uint8)0x02))));
    }
    else
    {
        CanTSyn_TransmissionMode[CtrlIdx] = Mode;
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
void CanTSyn_MainFunction(void)
{
    uint8 domainIdx;
    CanTSyn_SlaveStatusType slaveStatus;

    if (CanTSyn_InitStatus == CANTSYN_INITED)  
    {
         
        for (domainIdx = 0u; domainIdx < 1U; domainIdx++)
        {
            const CanTSyn_GlobalTimeDomainType* globalTimeDomain = &CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
             
            if (globalTimeDomain->CanTSynGlobalTimeMaster != ((void *)0))
            {
                 
                CanTSyn_MasterMain(domainIdx);
            }

             
            if (globalTimeDomain->CanTSynGlobalTimeSlave != ((void *)0))
            {
                 
                if (CanTSyn_SlaveTimeInfo[domainIdx].receptionTimeoutCounter != 0u)
                {
                    slaveStatus = SYNC_EXPECTED;
                    CanTSyn_DecrementCounter(
                        &CanTSyn_SlaveTimeInfo[domainIdx].receptionTimeoutCounter,
                        domainIdx,
                        ((void *)0),
                        &slaveStatus);
                }
            }
        }
    }
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   










 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
   
void CanTSyn_RxIndication(PduIdType RxPduId, const PduInfoType* PduInfoPtr)
{
    SchM_Enter_CanTSyn_Context();  
    const CanTSyn_GlobalTimeDomainType* globalTimeDomain = ((void *)0);
    StbM_SynchronizedTimeBaseType timeBaseId;
    Std_ReturnType result = 0U;
    StbM_VirtualLocalTimeType localTimePtr;
    uint8 domainIdx;
    uint8 domainId;
    uint8 type;
    CanTSynGlobalTimeSlaveType timeSlave;
     
    if (PduInfoPtr == ((void *)0))
    {
        ((void)Det_ReportError(161U, 0U, (((uint8)0x42)), (((uint8)0x03))));
        SchM_Exit_CanTSyn_Context();  
    }
    else if (CanTSyn_InitStatus == CANTSYN_UNINIT)
    {
        ((void)Det_ReportError(161U, 0U, (((uint8)0x42)), (((uint8)0x02))));
        SchM_Exit_CanTSyn_Context();  
    }
    else
    {
        domainId = PduInfoPtr->SduDataPtr[2] >> 4;
        type = PduInfoPtr->SduDataPtr[0];

        if ((type == ((uint8)0x34)) || (type == ((uint8)0x44))
            || (type == ((uint8)0x54)) || (type == ((uint8)0x64))
            || (type == ((uint8)0x3C)) || (type == ((uint8)0x4C)))
        {
            domainId += 16u;
        }

         
        for (domainIdx = 0u; domainIdx < 1U; domainIdx++)
        {
            if (CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynGlobalTimeDomainId == domainId)
            {
                globalTimeDomain = &CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
                break;
            }
        }

        if ((globalTimeDomain != ((void *)0)) && (globalTimeDomain->CanTSynGlobalTimeSlave != ((void *)0)))
        {
            timeBaseId = globalTimeDomain->CanTSynSynchronizedTimeBaseId;
            timeSlave = *(globalTimeDomain->CanTSynGlobalTimeSlave);

            if (RxPduId != timeSlave.CanTSynGlobalTimePduId)
            {
                ((void)Det_ReportError(161U, 0U, (((uint8)0x42)), (((uint8)0x01))));
                SchM_Exit_CanTSyn_Context();  
            }
            else
            {
                 
                if ((type != ((uint8)0x10)) && (type != ((uint8)0x20))
                    && (type != ((uint8)0x34)) && (type != ((uint8)0x44)))
                {
                    SchM_Exit_CanTSyn_Context();  
                }
                else
                {
                    result = StbM_GetCurrentVirtualLocalTime(timeBaseId, &localTimePtr);
                    SchM_Exit_CanTSyn_Context();  
                }

                if ((result == 0U) && (globalTimeDomain->CanTSynGlobalTimeDomainId <= 31u))
                {
                    if (CanTSyn_PassCRCMode(domainIdx, PduInfoPtr) == 1u)
                    {
                        switch (type)
                        {
                        case ((uint8)0x10):
                        case ((uint8)0x20):
                             
                            CanTSyn_SlaveTimeInfo[domainIdx].receptionTimeoutCounter =
                                timeSlave.CanTSynGlobalTimeFollowUpTimeout;
                            CanTSyn_SlaveTimeInfo[domainIdx].T2VLT = localTimePtr.nanosecondsHi;
                            CanTSyn_SlaveTimeInfo[domainIdx].T2VLT = CanTSyn_SlaveTimeInfo[domainIdx].T2VLT << 32;
                            CanTSyn_SlaveTimeInfo[domainIdx].T2VLT += localTimePtr.nanosecondsLo;
                            CanTSyn_RxSYNC(domainIdx, PduInfoPtr);
                            break;
                        case ((uint8)0x18):
                        case ((uint8)0x28):
                             
                            if (CanTSyn_SlaveStatus[domainIdx] == FUP_EXPECTED)
                            {
                                 
                                CanTSyn_SlaveTimeInfo[domainIdx].receptionTimeoutCounter = 0u;
                                CanTSyn_SlaveStatus[domainIdx] = SYNC_EXPECTED;
                                CanTSyn_RxFUP(domainIdx, PduInfoPtr);
                            }
                            break;
                        case ((uint8)0x34):
                        case ((uint8)0x44):
                             
                            CanTSyn_RxOFS(domainIdx, PduInfoPtr);
                            break;
                        case ((uint8)0x3C):
                        case ((uint8)0x4C):
                             
                            if (CanTSyn_SlaveStatus[domainIdx] == FUP_EXPECTED)
                            {
                                CanTSyn_SlaveTimeInfo[domainIdx].receptionTimeoutCounter = 0u;
                                CanTSyn_SlaveStatus[domainIdx] = SYNC_EXPECTED;
                                CanTSyn_RxOFNS(domainIdx, PduInfoPtr);
                            }
                            break;
                        case ((uint8)0x54):
                        case ((uint8)0x64):
                             
                            if (CanTSyn_SlaveStatus[domainIdx] == SYNC_EXPECTED)
                            {
                                CanTSyn_RxOFSFD(domainIdx, PduInfoPtr);
                            }
                            break;
                        default:
                             
                            break;
                        }
                    }
                }
            }
        }
        else
        {
            SchM_Exit_CanTSyn_Context();  
        }
    }
}
 












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
void CanTSyn_TxConfirmation(
    PduIdType TxPduId
)
{
    SchM_Enter_CanTSyn_Context();  
    Std_ReturnType curResult;
    StbM_SynchronizedTimeBaseType timeBaseId;
    uint64 T1VLT;
    uint64 T4;
    StbM_VirtualLocalTimeType localTimePtr;
    CanTSynGlobalTimeMasterType timeMaster;

        if (TxPduId >= 1U)
        {
            ((void)Det_ReportError(161U, 0U, (((uint8)0x40)), (((uint8)0x01))));
            SchM_Exit_CanTSyn_Context();  
        }
        else if (CanTSyn_InitStatus == CANTSYN_UNINIT)
        {
            ((void)Det_ReportError(161U, 0U, (((uint8)0x40)), (((uint8)0x02))));
            SchM_Exit_CanTSyn_Context();  
        }
        else
        {
            CanTSyn_MasterTimeInfoType* masterTimeInfo = &CanTSyn_MasterTimeInfo[TxPduId];

            if ((((void *)0) != CanTSyn_configPtr->CanTSynGlobalTimeDomain[TxPduId].CanTSynGlobalTimeMaster)
                && (CanTSyn_MasterStatus[TxPduId] == SYNC_SENT))
            {
                const CanTSyn_GlobalTimeDomainType* globalTimeDomain = &CanTSyn_configPtr->CanTSynGlobalTimeDomain[TxPduId];
                timeMaster = *(globalTimeDomain->CanTSynGlobalTimeMaster);
                 
                if (globalTimeDomain->CanTSynGlobalTimeDomainId <= 15u)
                {
                    timeBaseId = globalTimeDomain->CanTSynSynchronizedTimeBaseId;
                    curResult = StbM_GetCurrentVirtualLocalTime(timeBaseId, &localTimePtr);
                    SchM_Exit_CanTSyn_Context();  

                    if (curResult == 0U)
                    {
                        T1VLT = localTimePtr.nanosecondsHi;
                        T1VLT = T1VLT << 32;
                        T1VLT += localTimePtr.nanosecondsLo;
                        T4 = masterTimeInfo->T0SYNCns + (T1VLT - masterTimeInfo->T0VLT);
                        masterTimeInfo->T4 = T4;
                    }
                }
                else
                {
                    SchM_Exit_CanTSyn_Context();  
                }

                 
                masterTimeInfo->periodCounter = timeMaster.CanTSynGlobalTimeTxPeriod;

                 
                masterTimeInfo->confirmationTimeoutCounter = 0u;

                 
                if (CanTSyn_ImmediateSent[TxPduId] == 1u)
                {
                    masterTimeInfo->cyclicResumeCounter = timeMaster.CanTSynCyclicMsgResumeTime;
                    CanTSyn_ImmediateSent[TxPduId] = 0u;
                    masterTimeInfo->periodCounter = 0u;
                }

                CanTSyn_MasterStatus[TxPduId] = FUP_REQUIRED;
                 
                masterTimeInfo->debounceCounter = timeMaster.CanTSynGlobalTimeDebounceTime;
            }
            else if (
                (CanTSyn_configPtr->CanTSynGlobalTimeDomain[TxPduId].CanTSynGlobalTimeMaster != ((void *)0))
                && (SYNC_SENT != CanTSyn_MasterStatus[TxPduId]))
            {
                SchM_Exit_CanTSyn_Context();
                 
                masterTimeInfo->confirmationTimeoutCounter = 0u;
                 
                CanTSyn_SequenceCounters[TxPduId] = (CanTSyn_SequenceCounters[TxPduId] + 1u) % 16u;
            }
            else
            {
                SchM_Exit_CanTSyn_Context();
            }
        }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   



 














 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static boolean CanTSyn_PassCRCMode(uint8 domainIdx, const PduInfoType* PduInfoPtr)
{
    const CanTSyn_GlobalTimeDomainType* globalTimeDomain = &CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    uint8 type = PduInfoPtr->SduDataPtr[0];
    CrcValidatedType CrcMode = globalTimeDomain->CanTSynGlobalTimeSlave->CanTSynRxCrcValidated;
    CanTSyn_DataIDListElementType element;
    boolean result = 1u;

    uint8 CRC;
    uint8 sequenceCounter = PduInfoPtr->SduDataPtr[2] & ((uint8)0x0F);

     
    if ((type == ((uint8)0x20)) || (type == ((uint8)0x28)) || (type == ((uint8)0x44))
        || (type == ((uint8)0x64)) || (type == ((uint8)0x4C)))
    {  
        if (CrcMode == CRC_NOT_VALIDATED)
        {
            result = 0u;
        }
        else
        {
             
        }
    }
    else
    {
        if (CrcMode == CRC_VALIDATED)
        {
            result = 0u;
        }
    }
    return result;
}











 
   
static void CanTSyn_MasterMain(uint8 domainIdx)
{
    boolean result;
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    CanTSynGlobalTimeMasterType timeMaster = *(timeDomain.CanTSynGlobalTimeMaster);
    uint8 baseCounterCurrValue;
    CanTSyn_MasterStatusType masterStatus;
    CanTSyn_MasterTimeInfoType* timeInfo = &CanTSyn_MasterTimeInfo[domainIdx];

     
    result = CanTSyn_CheckGlobalTimeBaseBit(domainIdx);
     
    if (result && (timeInfo->periodCounter != 0u))
    {
        masterStatus = SYNC_REQUIRED;
        CanTSyn_DecrementCounter(&timeInfo->periodCounter, domainIdx, &masterStatus, ((void *)0));
    }

     
    if (timeInfo->cyclicResumeCounter != 0u)
    {
        masterStatus = SYNC_REQUIRED;
        CanTSyn_DecrementCounter(&timeInfo->cyclicResumeCounter, domainIdx, &masterStatus, ((void *)0));
        if ((timeInfo->cyclicResumeCounter == 0u) && !result)
        {
            CanTSyn_MasterStatus[domainIdx] = SYNC_NOT_REQUIRED;
        }
    }

     
    if (timeInfo->confirmationTimeoutCounter != 0u)
    {
        masterStatus = SYNC_NOT_REQUIRED;
        CanTSyn_DecrementCounter(&timeInfo->confirmationTimeoutCounter, domainIdx, &masterStatus, ((void *)0));
        if (timeInfo->confirmationTimeoutCounter == 0u)
        {
            timeInfo->periodCounter = timeMaster.CanTSynGlobalTimeTxPeriod;
        }
    }

    switch (CanTSyn_MasterStatus[domainIdx])
    {
    case SYNC_REQUIRED: {
        if (CanTSyn_TransmissionMode[domainIdx] == CANTSYN_TX_ON)
        {
            CanTSyn_MasterStatus[domainIdx] = SYNC_SENT;

             
            if (timeDomain.CanTSynGlobalTimeDomainId <= 15u)
            {
                CanTSyn_TransmitSYNC(domainIdx, timeMaster.CanTSynGlobalTimePduId);
            }
            else
            {
                CanTSyn_TransmitOFS(domainIdx, timeMaster.CanTSynGlobalTimePduId);
            }

             
            timeInfo->confirmationTimeoutCounter = timeMaster.CanTSynMasterConfirmationTimeout;
        }
        break;
    }
    case FUP_REQUIRED: {
        if (timeInfo->debounceCounter > 10U)
        {
            timeInfo->debounceCounter -= 10U;
            break;
        }

        if (CanTSyn_TransmissionMode[domainIdx] == CANTSYN_TX_ON)
        {
            CanTSyn_MasterStatus[domainIdx] = SYNC_NOT_REQUIRED;

             
            timeInfo->confirmationTimeoutCounter = timeMaster.CanTSynMasterConfirmationTimeout;

             
            if (timeDomain.CanTSynGlobalTimeDomainId <= 15u)
            {
                CanTSyn_TransmitFUP(domainIdx, timeMaster.CanTSynGlobalTimePduId);
            }
            else if (timeDomain.CanTSynUseExtendedMsgFormat == 0u)
            {
                CanTSyn_TransmitOFNS(domainIdx, timeMaster.CanTSynGlobalTimePduId);
            }
            else
            {
                break;
            }
        }
        break;
    }
    case SYNC_NOT_REQUIRED: {
        if (timeMaster.CanTSynImmediateTimeSync == 1u)
        {
             
            baseCounterCurrValue = StbM_GetTimeBaseUpdateCounter(timeDomain.CanTSynSynchronizedTimeBaseId);
            if (baseCounterCurrValue != CanTSyn_BaseCounterValues[domainIdx])
            {
                CanTSyn_BaseCounterValues[domainIdx] = baseCounterCurrValue;

                 
                result = CanTSyn_CheckGlobalTimeBaseBit(domainIdx);
                if (result == 1u)
                {
                    CanTSyn_MasterStatus[domainIdx] = SYNC_REQUIRED;
                    CanTSyn_ImmediateSent[domainIdx] = 1u;
                }
            }
        }
        break;
    }
    default:
         
        break;
    }
}
 













 

static void CanTSyn_DecrementCounter(
    uint32* counter,
    uint8 domainIdx,
    const CanTSyn_MasterStatusType* masterStatus,
    const CanTSyn_SlaveStatusType* slaveStatus)
{
    if (*counter <= 10U)
    {
        if ((CanTSyn_MasterStatus[domainIdx] != FUP_REQUIRED) && (((void *)0) != masterStatus))
        {
            CanTSyn_MasterStatus[domainIdx] = *masterStatus;
            *counter = 0u;
        }
        if (((void *)0) != slaveStatus)
        {
            CanTSyn_SlaveStatus[domainIdx] = *slaveStatus;
        }
    }
    else
    {
        *counter -= 10U;
    }
}












 

static void CanTSyn_DealExtendedFormat(boolean useExtendedMsgFormat, PduInfoType* pduInfoPtr)
{
    uint8 extendedIdx;

    if (useExtendedMsgFormat == 1u)
    {
        pduInfoPtr->SduLength = 16u;
        for (extendedIdx = 8u; extendedIdx < 16u; extendedIdx++)
        {
            pduInfoPtr->SduDataPtr[extendedIdx] = 0u;
        }
    }
    else
    {
        pduInfoPtr->SduLength = 8u;
    }
}












 













 

static void CanTSyn_TransmitSYNC(uint8 domainIdx, PduIdType pduId)
{
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    Std_ReturnType result;
    StbM_TimeStampType globalTimePtr;
    StbM_VirtualLocalTimeType localTimePtr;
    StbM_UserDataType userData;
    uint8 userByte[3] = {0};
    uint8 SduData[16] = {0};
    PduInfoType pduInfo;

     
    result = StbM_BusGetCurrentTime(timeDomain.CanTSynSynchronizedTimeBaseId, &globalTimePtr, &localTimePtr, &userData);
    if (result == 0U)
    {
         
        if (userData.userDataLength >= 1u)
        {
            userByte[0] = userData.userByte0;
        }
        if (userData.userDataLength >= 2u)
        {
            userByte[1] = userData.userByte1;
        }
        if (userData.userDataLength == 3u)
        {
            userByte[2] = userData.userByte2;
        }

         
        SduData[0] = ((uint8)0x10);
        SduData[1] = userByte[1];
        SduData[2] = (timeDomain.CanTSynGlobalTimeDomainId << 4) + CanTSyn_SequenceCounters[domainIdx];
        SduData[3] = userByte[0];

         
        uint32 T0SYNC = globalTimePtr.seconds;

        SduData[4] = CanTSyn_HiHiByte(T0SYNC);
        SduData[5] = CanTSyn_HiLoByte(T0SYNC);
        SduData[6] = CanTSyn_LoHiByte(T0SYNC);
        SduData[7] = CanTSyn_LoLoByte(T0SYNC);

        pduInfo.SduDataPtr = SduData;

        CanTSyn_MasterTimeInfoType* masterTimeInfo = &CanTSyn_MasterTimeInfo[domainIdx];
         
        masterTimeInfo->T0SYNCns = globalTimePtr.nanoseconds;
        masterTimeInfo->T0VLT = localTimePtr.nanosecondsHi;
        masterTimeInfo->T0VLT = masterTimeInfo->T0VLT << 32;
        masterTimeInfo->T0VLT += localTimePtr.nanosecondsLo;
        masterTimeInfo->userByte2 = userByte[2];
        masterTimeInfo->timeBaseStatus = globalTimePtr.timeBaseStatus;

         
        CanTSyn_DealExtendedFormat(timeDomain.CanTSynUseExtendedMsgFormat, &pduInfo);
        (void)CanIf_Transmit(pduId, &pduInfo);
    }
}













 

static void CanTSyn_TransmitFUP(uint8 domainIdx, PduIdType pduId)
{
    uint8 OVS;
    uint64 T4 = CanTSyn_MasterTimeInfo[domainIdx].T4;
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    uint8 timeDomainId = timeDomain.CanTSynGlobalTimeDomainId;
    StbM_TimeBaseStatusType timeBaseStatus = CanTSyn_MasterTimeInfo[domainIdx].timeBaseStatus;
    uint8 SduData[16] = {0};
    PduInfoType pduInfo;

     
    OVS = (uint8)(T4 / ((uint32)1000000000U));
    T4 -= (uint64)OVS * (uint64)((uint32)1000000000U);

     
    if ((timeBaseStatus & ((uint8)0x04)) == 0u)  
    {
        SduData[3] = 0x00;
    }
    else  
    {
        SduData[3] = 0x04;
    }

     
    SduData[0] = ((uint8)0x18);
    SduData[1] = CanTSyn_MasterTimeInfo[domainIdx].userByte2;
    SduData[2] = (timeDomainId << 4) + CanTSyn_SequenceCounters[domainIdx];
    SduData[3] += OVS;
    SduData[4] = CanTSyn_HiHiByte((uint32)T4);
    SduData[5] = CanTSyn_HiLoByte((uint32)T4);
    SduData[6] = CanTSyn_LoHiByte((uint32)T4);
    SduData[7] = CanTSyn_LoLoByte((uint32)T4);

    pduInfo.SduDataPtr = SduData;
     
    CanTSyn_DealExtendedFormat(timeDomain.CanTSynUseExtendedMsgFormat, &pduInfo);

     
    (void)CanIf_Transmit(pduId, &pduInfo);
}













 

static void CanTSyn_TransmitOFS(uint8 domainIdx, PduIdType pduId)
{
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    StbM_SynchronizedTimeBaseType timeBaseId = timeDomain.CanTSynSynchronizedTimeBaseId;
    uint8 timeDomainId = timeDomain.CanTSynGlobalTimeDomainId;
    StbM_TimeBaseStatusType timeBaseStatus;
    StbM_TimeStampType timeStamp;
    StbM_UserDataType userData;
    uint8 userByte[3] = {0};
    Std_ReturnType result;
    uint8 SduData[16] = {0};
    PduInfoType pduInfo;
    uint32 OfsTimeSec;
    uint32 OfsTimeNSec;

    result = StbM_GetOffset(timeBaseId, &timeStamp, &userData);

    if (result == 0U)
    {
         
        if (userData.userDataLength >= 1u)
        {
            userByte[0] = userData.userByte0;
        }
        if (userData.userDataLength >= 2u)
        {
            userByte[1] = userData.userByte1;
        }
        if (userData.userDataLength == 3u)
        {
            userByte[2] = userData.userByte2;
        }

        OfsTimeSec = timeStamp.seconds;
        OfsTimeNSec = timeStamp.nanoseconds;
        timeBaseStatus = timeStamp.timeBaseStatus;

         
        if (timeDomain.CanTSynUseExtendedMsgFormat == 1u)
        {
            pduInfo.SduLength = 16u;

             
            if ((timeBaseStatus & ((uint8)0x04)) == 0u)  
            {
                SduData[3] = 0x00;
            }
            else  
            {
                SduData[3] = 0x01;
            }

             
            SduData[0] = ((uint8)0x54);
            SduData[1] = userByte[2];
            SduData[2] = (timeDomainId << 4) + CanTSyn_SequenceCounters[domainIdx];
            SduData[4] = userByte[0];
            SduData[5] = userByte[1];
            SduData[6] = 0u;
            SduData[7] = 0u;
            SduData[8] = CanTSyn_HiHiByte(OfsTimeSec);
            SduData[9] = CanTSyn_HiLoByte(OfsTimeSec);
            SduData[10] = CanTSyn_LoHiByte(OfsTimeSec);
            SduData[11] = CanTSyn_LoLoByte(OfsTimeSec);
            SduData[12] = CanTSyn_HiHiByte(OfsTimeNSec);
            SduData[13] = CanTSyn_HiLoByte(OfsTimeNSec);
            SduData[14] = CanTSyn_LoHiByte(OfsTimeNSec);
            SduData[15] = CanTSyn_LoLoByte(OfsTimeNSec);
        }
        else
        {
            pduInfo.SduLength = 8u;

             
            SduData[0] = ((uint8)0x34);
            SduData[1] = userByte[1];
            SduData[2] = (timeDomainId << 4) + CanTSyn_SequenceCounters[domainIdx];
            SduData[3] = userByte[0];
            SduData[4] = CanTSyn_HiHiByte(OfsTimeSec);
            SduData[5] = CanTSyn_HiLoByte(OfsTimeSec);
            SduData[6] = CanTSyn_LoHiByte(OfsTimeSec);
            SduData[7] = CanTSyn_LoLoByte(OfsTimeSec);

            CanTSyn_MasterTimeInfo[domainIdx].timeBaseStatus = timeBaseStatus;
            CanTSyn_MasterTimeInfo[domainIdx].OfsTimeNSec = OfsTimeNSec;
            CanTSyn_MasterTimeInfo[domainIdx].userByte2 = userByte[2];
        }

        pduInfo.SduDataPtr = SduData;

         
        (void)CanIf_Transmit(pduId, &pduInfo);
    }
}













 

static void CanTSyn_TransmitOFNS(uint8 domainIdx, PduIdType pduId)
{
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    uint8 timeDomainId = timeDomain.CanTSynGlobalTimeDomainId;
    StbM_TimeBaseStatusType timeBaseStatus = CanTSyn_MasterTimeInfo[domainIdx].timeBaseStatus;
    uint32 OfsTimeNSec = CanTSyn_MasterTimeInfo[domainIdx].OfsTimeNSec;
    uint8 SduData[16] = {0};
    PduInfoType pduInfo;

     
    if ((timeBaseStatus & ((uint8)0x04)) == 0u)  
    {
        SduData[3] = 0x00;
    }
    else  
    {
        SduData[3] = 0x01;
    }

    pduInfo.SduLength = 8u;

     
    SduData[0] = ((uint8)0x3C);
    SduData[1] = CanTSyn_MasterTimeInfo[domainIdx].userByte2;
    SduData[2] = (timeDomainId << 4) + CanTSyn_SequenceCounters[domainIdx];
    SduData[4] = CanTSyn_HiHiByte(OfsTimeNSec);
    SduData[5] = CanTSyn_HiLoByte(OfsTimeNSec);
    SduData[6] = CanTSyn_LoHiByte(OfsTimeNSec);
    SduData[7] = CanTSyn_LoLoByte(OfsTimeNSec);

    pduInfo.SduDataPtr = SduData;
     
    (void)CanIf_Transmit(pduId, &pduInfo);
}












 

static void CanTSyn_RxSYNC(uint8 domainIdx, const PduInfoType* PduInfoPtr)
{
    Std_ReturnType result;
    StbM_TimeBaseStatusType syncTimeBaseStatus;
    StbM_TimeBaseStatusType offsetTimeBaseStatus;
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    StbM_SynchronizedTimeBaseType timeBaseId = timeDomain.CanTSynSynchronizedTimeBaseId;
    uint32 T0SYNC;
    uint8 type = PduInfoPtr->SduDataPtr[0];
    uint8 sequenceCounter;
    uint8 maxJumpWidth = timeDomain.CanTSynGlobalTimeSlave->CanTSynGlobalTimeSequenceCounterJumpWidth;
    uint32 temp;

    result = StbM_GetTimeBaseStatus(timeBaseId, &syncTimeBaseStatus, &offsetTimeBaseStatus);
    if (result == 0U)
    {
         
        sequenceCounter = (PduInfoPtr->SduDataPtr[2]) & ((uint8)0x0F);
        CanTSyn_SlaveTimeInfoType* slaveTimeInfo = &CanTSyn_SlaveTimeInfo[domainIdx];
        if ((sequenceCounter <= slaveTimeInfo->sequenceCounter)
            || ((sequenceCounter - slaveTimeInfo->sequenceCounter) > maxJumpWidth))
        {
            if ((sequenceCounter != 0u) && ((syncTimeBaseStatus & ((uint8)0x01)) == 0u))
            {
                result = 1U;
            }
        }

        if (result == 0U)
        {
            CanTSyn_SlaveStatus[domainIdx] = FUP_EXPECTED;
             
            T0SYNC = PduInfoPtr->SduDataPtr[4];
            T0SYNC <<= 24;
            temp = PduInfoPtr->SduDataPtr[5];
            temp <<= 16;
            T0SYNC += temp;
            temp = PduInfoPtr->SduDataPtr[6];
            temp <<= 8;
            T0SYNC += temp;
            T0SYNC += PduInfoPtr->SduDataPtr[7];

             
            slaveTimeInfo->T0SYNC = T0SYNC;
            slaveTimeInfo->userByte0 = PduInfoPtr->SduDataPtr[3];
            slaveTimeInfo->sequenceCounter = sequenceCounter;

             
            if (type == ((uint8)0x10))
            {
                slaveTimeInfo->userByte1 = PduInfoPtr->SduDataPtr[1];
                slaveTimeInfo->isCRC = 0u;
            }
            else
            {
                slaveTimeInfo->isCRC = 1u;
            }
        }
    }
}












 

static void CanTSyn_RxFUP(uint8 domainIdx, const PduInfoType* PduInfoPtr)
{
    Std_ReturnType result;
    StbM_SynchronizedTimeBaseType timeBaseId = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynSynchronizedTimeBaseId;
    StbM_VirtualLocalTimeType localTimePtr;
    StbM_TimeStampType globalTimePtr;
    StbM_UserDataType userData;
    StbM_MeasurementType measurmentData;
    uint64 T5VLT;
    uint32 SyncTimeNSec;
    uint8 OVS;
    uint64 T3;
    uint32 T3Sec;
    uint8 type = PduInfoPtr->SduDataPtr[0];
    uint32 temp;

    measurmentData.pathDelay = 0u;

    CanTSyn_SlaveTimeInfoType* slaveTimeInfo = &CanTSyn_SlaveTimeInfo[domainIdx];
     
    if (((PduInfoPtr->SduDataPtr[2]) & ((uint8)0x0F)) == slaveTimeInfo->sequenceCounter)
    {
         
        result = StbM_BusGetCurrentTime(timeBaseId, &globalTimePtr, &localTimePtr, &userData);
        if (result == 0U)
        {

             
            SyncTimeNSec = PduInfoPtr->SduDataPtr[4];
            SyncTimeNSec <<= 24;
            temp = PduInfoPtr->SduDataPtr[5];
            temp <<= 16;
            SyncTimeNSec += temp;
            temp = PduInfoPtr->SduDataPtr[6];
            temp <<= 8;
            SyncTimeNSec += temp;
            SyncTimeNSec += PduInfoPtr->SduDataPtr[7];
            OVS = (PduInfoPtr->SduDataPtr[3] & ((uint8)0x03));

            if ((PduInfoPtr->SduDataPtr[3] & ~((uint8)0x03)) == 0x00u)
            {
                globalTimePtr.timeBaseStatus &= ~0x04u;
            }
            else
            {
                globalTimePtr.timeBaseStatus |= 0x04u;
            }

            userData.userByte0 = slaveTimeInfo->userByte0;
            userData.userDataLength = 1u;

            if (slaveTimeInfo->isCRC == 0u)
            {
                userData.userByte1 = slaveTimeInfo->userByte1;
                userData.userDataLength++;
            }

             
            if (type == ((uint8)0x18))
            {
                userData.userByte2 = PduInfoPtr->SduDataPtr[1];
                userData.userDataLength++;
            }

            (void)StbM_GetCurrentVirtualLocalTime(timeBaseId, &localTimePtr);

            T5VLT = localTimePtr.nanosecondsHi;
            T5VLT = T5VLT << 32;
            T5VLT += localTimePtr.nanosecondsLo;
            T3 = T5VLT - slaveTimeInfo->T2VLT;
            T3Sec = (uint32)(T3 / ((uint32)1000000000U));
            T3 -= (uint64)T3Sec * (uint64)((uint32)1000000000U);
            globalTimePtr.seconds =
                OVS + slaveTimeInfo->T0SYNC + T3Sec + ((SyncTimeNSec + (uint32)T3) / ((uint32)1000000000U));
            globalTimePtr.nanoseconds = (SyncTimeNSec + (uint32)T3) % ((uint32)1000000000U);

             
            (void)StbM_BusSetGlobalTime(timeBaseId, &globalTimePtr, &userData, &measurmentData, &localTimePtr);
        }
    }
    else
    {
        if (slaveTimeInfo->sequenceCounter == 0u)
        {
            slaveTimeInfo->sequenceCounter = 15;
        }
        else
        {
            slaveTimeInfo->sequenceCounter--;
        }
    }
}












 

static void CanTSyn_RxOFS(uint8 domainIdx, const PduInfoType* PduInfoPtr)
{
    CanTSyn_GlobalTimeDomainType timeDomain = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx];
    Std_ReturnType result;
    StbM_TimeBaseStatusType syncTimeBaseStatus;
    StbM_TimeBaseStatusType offsetTimeBaseStatus;
    uint32 OfsTimeSec;
    uint8 type = PduInfoPtr->SduDataPtr[0];
    uint8 sequenceCounter = (PduInfoPtr->SduDataPtr[2]) & ((uint8)0x0F);
    uint8 maxJumpWidth = timeDomain.CanTSynGlobalTimeSlave->CanTSynGlobalTimeSequenceCounterJumpWidth;
    uint32 temp;

     
    result = StbM_GetTimeBaseStatus(
        CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynSynchronizedTimeBaseId,
        &syncTimeBaseStatus,
        &offsetTimeBaseStatus);

    if (result == 0U)
    {
        CanTSyn_SlaveTimeInfoType* slaveTimeInfo = &CanTSyn_SlaveTimeInfo[domainIdx];
         
        if ((sequenceCounter <= slaveTimeInfo->sequenceCounter)
            || ((sequenceCounter - slaveTimeInfo->sequenceCounter) > maxJumpWidth))
        {
            if ((sequenceCounter != 0u) && ((offsetTimeBaseStatus & ((uint8)0x01)) == 0u))
            {
                result = 1U;
            }
        }

        if (result == 0U)
        {
            CanTSyn_SlaveStatus[domainIdx] = FUP_EXPECTED;
             
            OfsTimeSec = PduInfoPtr->SduDataPtr[4];
            OfsTimeSec <<= 24;
            temp = PduInfoPtr->SduDataPtr[5];
            temp <<= 16;
            OfsTimeSec += temp;
            temp = PduInfoPtr->SduDataPtr[6];
            temp <<= 8;
            OfsTimeSec += temp;
            OfsTimeSec += PduInfoPtr->SduDataPtr[7];

             
            slaveTimeInfo->OfsTimeSec = OfsTimeSec;
            slaveTimeInfo->userByte0 = PduInfoPtr->SduDataPtr[3];
            slaveTimeInfo->sequenceCounter = sequenceCounter;

             
            if (type == ((uint8)0x34))
            {
                slaveTimeInfo->userByte1 = PduInfoPtr->SduDataPtr[1];
                slaveTimeInfo->isCRC = 0u;
            }
            else
            {
                slaveTimeInfo->isCRC = 1u;
            }
        }
    }
}












 

static void CanTSyn_RxOFNS(uint8 domainIdx, const PduInfoType* PduInfoPtr)
{
    Std_ReturnType result;
    StbM_SynchronizedTimeBaseType timeBaseId = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynSynchronizedTimeBaseId;
    uint8 type = PduInfoPtr->SduDataPtr[0];
    StbM_TimeStampType timeStamp;
    StbM_UserDataType userData;
    uint32 OfsTimeNSec;
    uint32 temp;

    const CanTSyn_SlaveTimeInfoType* slaveTimeInfo = &CanTSyn_SlaveTimeInfo[domainIdx];
     
    if (((PduInfoPtr->SduDataPtr[2]) & ((uint8)0x0F)) == slaveTimeInfo->sequenceCounter)
    {
         
        result = StbM_GetOffset(timeBaseId, &timeStamp, &userData);
        if (result == 0U)
        {
             
            OfsTimeNSec = PduInfoPtr->SduDataPtr[4];
            OfsTimeNSec <<= 24;
            temp = PduInfoPtr->SduDataPtr[5];
            temp <<= 16;
            OfsTimeNSec += temp;
            temp = PduInfoPtr->SduDataPtr[6];
            temp <<= 8;
            OfsTimeNSec += temp;
            OfsTimeNSec += PduInfoPtr->SduDataPtr[7];

             
            timeStamp.secondsHi = 0u;
            timeStamp.seconds = slaveTimeInfo->OfsTimeSec;
            timeStamp.nanoseconds = OfsTimeNSec;
            if (PduInfoPtr->SduDataPtr[3] == 0x00u)
            {
                timeStamp.timeBaseStatus &= ~0x04u;
            }
            else
            {
                timeStamp.timeBaseStatus |= 0x04u;
            }

            userData.userByte0 = slaveTimeInfo->userByte0;
            userData.userDataLength = 1u;

             
            if (slaveTimeInfo->isCRC == 0u)
            {
                userData.userByte1 = slaveTimeInfo->userByte1;
                userData.userDataLength++;
            }
            if (type == ((uint8)0x3C))
            {
                userData.userByte2 = PduInfoPtr->SduDataPtr[1];
                userData.userDataLength++;
            }

             
            (void)StbM_SetOffset(timeBaseId, &timeStamp, &userData);
        }
    }
}












 

static void CanTSyn_RxOFSFD(uint8 domainIdx, const PduInfoType* PduInfoPtr)
{
    Std_ReturnType result;
    StbM_SynchronizedTimeBaseType timeBaseId = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynSynchronizedTimeBaseId;
    uint8 type = PduInfoPtr->SduDataPtr[0];
    uint32 OfsTimeSec;
    uint32 OfsTimeNSec;
    uint32 temp;
    StbM_VirtualLocalTimeType localTimePtr;
    StbM_TimeStampType globalTimePtr;
    StbM_UserDataType userData;
    uint8 sequenceCounter = (PduInfoPtr->SduDataPtr[2]) & ((uint8)0x0F);
    uint8 maxJumpWidth = CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynGlobalTimeSlave->CanTSynGlobalTimeSequenceCounterJumpWidth;

     
    result = StbM_BusGetCurrentTime(timeBaseId, &globalTimePtr, &localTimePtr, &userData);

    if (result == 0U)
    {
        CanTSyn_SlaveTimeInfoType* slaveTimeInfo = &CanTSyn_SlaveTimeInfo[domainIdx];
         
        if ((sequenceCounter <= slaveTimeInfo->sequenceCounter)
            || ((sequenceCounter - slaveTimeInfo->sequenceCounter) > maxJumpWidth))
        {
            if ((sequenceCounter != 0u) && ((globalTimePtr.timeBaseStatus & ((uint8)0x01)) == 0u))
            {
                result = 1U;
            }
        }

        if (result == 0U)
        {
            slaveTimeInfo->sequenceCounter = sequenceCounter;

             
            OfsTimeSec = PduInfoPtr->SduDataPtr[8];
            OfsTimeSec <<= 24;
            temp = PduInfoPtr->SduDataPtr[9];
            temp <<= 16;
            OfsTimeSec += temp;
            temp = PduInfoPtr->SduDataPtr[10];
            temp <<= 8;
            OfsTimeSec += temp;
            OfsTimeSec += PduInfoPtr->SduDataPtr[11];
            OfsTimeNSec = PduInfoPtr->SduDataPtr[12];
            OfsTimeNSec <<= 24;
            temp = PduInfoPtr->SduDataPtr[13];
            temp <<= 16;
            OfsTimeNSec += temp;
            temp = PduInfoPtr->SduDataPtr[14];
            temp <<= 8;
            OfsTimeNSec += temp;
            OfsTimeNSec += PduInfoPtr->SduDataPtr[15];

             
            globalTimePtr.seconds = OfsTimeSec;
            globalTimePtr.nanoseconds = OfsTimeNSec;
            if (PduInfoPtr->SduDataPtr[3] == 0x00u)
            {
                globalTimePtr.timeBaseStatus &= ~0x04u;
            }
            else
            {
                globalTimePtr.timeBaseStatus |= 0x04u;
            }
            userData.userByte0 = PduInfoPtr->SduDataPtr[4];
            userData.userByte1 = PduInfoPtr->SduDataPtr[5];
            userData.userDataLength = 2u;

             
            if (type == ((uint8)0x54))
            {
                userData.userByte2 = PduInfoPtr->SduDataPtr[1];
                userData.userDataLength++;
            }

             
            (void)StbM_SetOffset(timeBaseId, &globalTimePtr, &userData);
        }
    }
}












 

static boolean CanTSyn_CheckGlobalTimeBaseBit(uint8 domainIdx)
{
    Std_ReturnType ret;
    boolean result = 1u;
    StbM_TimeBaseStatusType syncTimeBaseStatus;
    StbM_TimeBaseStatusType offsetTimeBaseStatus;

     
    ret = StbM_GetTimeBaseStatus(
        CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynSynchronizedTimeBaseId,
        &syncTimeBaseStatus,
        &offsetTimeBaseStatus);
    if (ret == 0U)
    {
         
        if (CanTSyn_configPtr->CanTSynGlobalTimeDomain[domainIdx].CanTSynGlobalTimeDomainId <= 15u)
        {
            if ((syncTimeBaseStatus & ((uint8)0x08)) == 0u)
            {
                result = 0u;
            }
        }
        else  
        {
            if ((offsetTimeBaseStatus & ((uint8)0x08)) == 0u)
            {
                result = 0u;
            }
        }
    }
    else
    {
        result = 0u;
    }
    return result;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
