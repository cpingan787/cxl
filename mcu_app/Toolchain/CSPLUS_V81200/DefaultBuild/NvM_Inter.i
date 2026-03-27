











 












 

 

 












 












 



 






 




 






 
 




















 
 




 












 












 



 


 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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







 




 




 



 




 
typedef enum
{
     
    MEMIF_UNINIT = 0,
     
    MEMIF_IDLE = 1,
     
    MEMIF_BUSY = 2,
    
 
    MEMIF_BUSY_INTERNAL = 3
} MemIf_StatusType;




 
typedef enum
{
     
    MEMIF_JOB_OK = 0,
     
    MEMIF_JOB_FAILED = 1,
     
    MEMIF_JOB_PENDING = 2,
     
    MEMIF_JOB_CANCELED = 3,
     
    MEMIF_BLOCK_INCONSISTENT = 4,
     
    MEMIF_BLOCK_INVALID = 5
} MemIf_JobResultType;





 
typedef enum
{
     
    MEMIF_MODE_SLOW = 0,
     
    MEMIF_MODE_FAST = 1
} MemIf_ModeType;

 
 
typedef void (*MemIf_SetModeType)(MemIf_ModeType Mode);
typedef Std_ReturnType (*MemIf_ApiReadType)(uint16 BlockNumber, uint16 BlockOffset, uint8* DataBufferPtr, uint16 Length);
typedef Std_ReturnType (*MemIf_ApiWriteType)(uint16 BlockNumber, uint8 const* DataBufferPtr);
typedef Std_ReturnType (*MemIf_ApiEraseImmediateBlockType)(uint16 BlockNumber);
typedef Std_ReturnType (*MemIf_ApiInvalidateBlockType)(uint16 BlockNumber);
typedef void (*MemIf_ApiCancelType)(void);
typedef MemIf_StatusType (*MemIf_ApiGetStatusType)(void);
typedef MemIf_JobResultType (*MemIf_ApiGetJobResultType)(void);

 
typedef struct
{
    MemIf_SetModeType SetMode;
    MemIf_ApiReadType Read;
    MemIf_ApiWriteType Write;
    MemIf_ApiEraseImmediateBlockType EraseImmediateBlock;
    MemIf_ApiInvalidateBlockType InvalidateBlock;
    MemIf_ApiCancelType Cancel;
    MemIf_ApiGetStatusType GetStatus;
    MemIf_ApiGetJobResultType GetJobResult;
} MemIf_MemHwAApi_Type;




 


 


 

extern const MemIf_MemHwAApi_Type MemIf_MemHwaApis_at[(1u)];

 

 

                     

 

 

 




 

 










 
 
extern  MemIf_StatusType MemIf_GetStatus(uint8 DeviceIndex);

 




























 
   
   
   


























 




























 
   


 












 














 


 

 




















 
 



 


 



 
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










extern void NvM_MainFunction(void);
extern void Fee_MainFunction(void);
extern void SchM_Enter_NvM_Queue(void);
extern void SchM_Exit_NvM_Queue(void);
























 












 













 












 
 








































































 


 












 












 

 
 

 
 




















 
 



 




 


 


 

 




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


 

static inline void NVM_DET_REPORTRUNTIMEERROR(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportRuntimeError(20U, 0U, ApiId, ErrorId);
}

extern NvM_StandQueueType NvM_StandQueue[(0xau)];
extern NvM_AdminBlockType NvM_AdminBlock[53U];
extern NvM_ModuleType NvM_Module;
extern NvM_MultiJobType NvM_MultiJob;
extern NvM_AtomJobType NvM_AtomJob;
extern NvM_CurRunningType NvM_CurRunning;
extern NvM_RoundRobinQueueManageType NvM_StandQueueManage;
extern  Std_ReturnType NvM_JobEnqueue(
    NvM_BlockIdType BlockId,
    NvM_ServiceIdType ServiceId,
    uint8 * DestSrcPtr);
extern  void NvM_InterRestoreBlockDefaults(void);
extern  Std_ReturnType NvM_JobDequeue(void);
extern  void NvM_InterInvalidateNvBlock(void);
extern  void NvM_InterWriteVerification(void);
extern  void NvM_InterWriteAll(void);
extern  void NvM_InterReadAll(void);
extern  void NvM_InterWriteBlock(void);
extern  void NvM_InterReadBlock(void);
extern  void NvM_InterCalcCrc(void);
extern  void NvM_InterValidateAll(void);
extern  void NvM_SetWordBitState(uint16 * WordPtr, uint8 SetBit, uint8 OnOff);
extern  uint8 NvM_GetWordBitState(uint16 WordNum, uint8 GetBit);
extern  void NvM_InterReadRom(void);

 













 












 


 













 


 












 
 



 
 




















 
 



 
 

 

 

 

 

 

 

 


      


   


   


   


   

 
 



 


 












 
 



 
 
 




















 
 
 

extern  uint8 Crc_CalculateCRC8(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint8 Crc_StartValue8,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint8 Crc_CalculateCRC8H2F(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint8 Crc_StartValue8H2F,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint16 Crc_CalculateCRC16(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint16 Crc_StartValue16,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint32 Crc_CalculateCRC32(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint32 Crc_StartValue32,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint32 Crc_CalculateCRC32P4(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint32 Crc_StartValue32,
    boolean Crc_IsFirstCall);



extern  uint64 Crc_CalculateCRC64(
    const uint8 * Crc_DataPtr,
    uint64 Crc_Length,
    uint64 Crc_StartValue64,
    boolean Crc_IsFirstCall);



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
    NvM_ReadStaticBlockID(const uint8 * Src, NvM_BlockCRCType crctype);
static  void NvM_MemCpyStep(void);
static  void NvM_WriteSequenceForManagementType(void);
static  void NVM_GetRepeatMirrorOperation(void);
static  void
    NvM_WriteStaticBlockID(uint8 * Dest, NvM_BlockCRCType crctype);
static  void
    NvM_ReadErrorHandle(NvM_CrcStaticIdStatusType CRCResult, NvM_CrcStaticIdStatusType StaticIDResult);
static  void NvM_MultiJobResultFeedBack(NvM_ServiceIdType ServiceId, NvM_RequestResultType Result);
static  void NvM_SingleJobResultFeedBack(NvM_BlockIdType BlockId, NvM_RequestResultType Result);
static  void NvM_GetRamAddress(uint8 QueueIndex);
static  Std_ReturnType NvM_MultiJobDispatch(void);
static  void NvM_RunTimeHandle(void);
static  void NvM_CopyCurBlockInfo(void);
static  void NvM_MemIfReadOk(void);
static  void NvM_MemIfReadFailed(void);
static  void NvM_MemIfWriteOk(void);
static  void NvM_MemIfWriteFailed(void);
static  void NvM_MemIfPending(void);
static  void NvM_MemIfCancelled(void);
static  void NvM_MemIfInconsistent(void);
static  void NvM_MemIfInvalid(void);

static  Std_ReturnType
    NvM_MemCpy(const uint8 * SrcAddrPtr, uint8 * DstAddrPtr);

static  void NvM_MemIfInvalidOk(void);
static  void NvM_MemIfInvalidFailed(void);

static  void NvM_AtomJobReq(NvM_AtomJobEType AtomJobReqId);
static  void NvM_JobOverSetFlag(NvM_RequestResultType SingleReqResult, NvM_CrcChangeType CrcChange);
static  void NvM_UpdateValidandChangeStatus(uint8 ValidStatus, uint8 ChangeStatus);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
NvM_ModuleType
NvM_Module = {
    0U,
    NVM_JOB_TYPE_NONE,
    NVM_RUNTIME_NONE,
    NVM_MEMIF_JOB_IDLE,
    NVM_JOB_STEP_IDLE};

NvM_MultiJobType
NvM_MultiJob = {
    0U,
    NVM_NONE_SERV_ID,
    0U,
    0U,
    NVM_REQ_OK};

NvM_AtomJobType
NvM_AtomJob = {
    0,
    {NVM_ATOMJOB_MAX_NONE, NVM_ATOMJOB_MAX_NONE, NVM_ATOMJOB_MAX_NONE, NVM_ATOMJOB_MAX_NONE, NVM_ATOMJOB_MAX_NONE}};

NvM_CurRunningType
NvM_CurRunning = {0,         0,        0,          0,          NVM_NONE_SERV_ID,
                  0,         0,        0,          0,          0,
                  0,         0,        NVM_REQ_OK, NVM_REQ_OK, NVM_BLOCK_NATIVE,
                  NVM_CRC16, 0,        0,          0,          0,
                  ((void *)0),  ((void *)0), 0,          ((void *)0),   0,
                  0,         0,        ((void *)0),   ((void *)0),   ((void *)0),
                  ((void *)0)};

NvM_RoundRobinQueueManageType NvM_StandQueueManage = {0x00u, 0x00u, 0x00u};












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const NvM_VoidFuncVoidPtr NvM_MemIfAsyncFuncTable[6][6] =
    {{
         &NvM_MemIfReadOk,   
         &NvM_MemIfWriteOk,  
         ((void *)0),           
         ((void *)0),  
         ((void *)0),            
         &NvM_MemIfInvalidOk  
     },
     {&NvM_MemIfReadFailed,
      &NvM_MemIfWriteFailed,
      ((void *)0),
      ((void *)0),  
      ((void *)0),
      &NvM_MemIfInvalidFailed
     },
     {&NvM_MemIfPending,
      &NvM_MemIfPending,
      ((void *)0),
      ((void *)0),  
      ((void *)0),
      &NvM_MemIfPending
     },
     {&NvM_MemIfCancelled,
      &NvM_MemIfCancelled,
      ((void *)0),
      ((void *)0),  
      ((void *)0),
      &NvM_MemIfCancelled
     },
     {&NvM_MemIfInconsistent,
      &NvM_MemIfInconsistent,
      ((void *)0),
      ((void *)0),  
      ((void *)0),
      &NvM_MemIfInconsistent
     },
     {&NvM_MemIfInvalid,
      &NvM_MemIfInvalid,
      ((void *)0),
      ((void *)0),  
      ((void *)0),
      &NvM_MemIfInvalid
     }};













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   














 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
NvM_StandQueueType NvM_StandQueue[(0xau)];
NvM_AdminBlockType NvM_AdminBlock[53U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   














 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static uint8 NvM_NvDataBuffer[2478U + 4U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   












 
static void NvM_MemIfReqSubDeal(NvM_MemIfReqType NvM_MemIfRequest)
{
    uint16 l_BlockNum;
    uint16 l_Length;
    uint8 StaicBlockIdCheck;
    NvM_BlockIdType CurBlockId = 0;

    l_BlockNum = (uint16)(NvM_CurRunning.BaseNumber << (0x8u)) + (uint16)NvM_CurRunning.Index;
    switch (NvM_MemIfRequest)
    {
    case NVM_MEMIF_REQ_READ:
        if (NVM_CRC16 == NvM_CurRunning.CRCType)
        {
            l_Length = NvM_CurRunning.Length + 2U;
        }
        else if (NVM_CRC32 == NvM_CurRunning.CRCType)
        {
            l_Length = NvM_CurRunning.Length + 4U;
        }
        else if (NVM_CRC8 == NvM_CurRunning.CRCType)
        {
            l_Length = NvM_CurRunning.Length + 1U;
        }
        else
        {
            l_Length = NvM_CurRunning.Length;  
        }
        if (NvM_CurRunning.BlockId >= 1u)
        {
            CurBlockId = NvM_CurRunning.BlockId - 1U;
        }
        StaicBlockIdCheck =
            NvM_GetWordBitState(NvM_BlockDescriptor[CurBlockId].FlagGroup, (uint8)NVM_BLOCK_DESC_STATICBLOCKIDCHECK);
        if ((uint8)1U == StaicBlockIdCheck)
        {
            l_Length = l_Length + 2U;
        }
        if ((Std_ReturnType)0U == MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. Read( (l_BlockNum), (0), (NvM_NvDataBuffer), (l_Length)))
        {
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_PENDING;
        }
        else
        {
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
        }
        break;
    case NVM_MEMIF_REQ_WRITE:
        if ((Std_ReturnType)0U == MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. Write((l_BlockNum),(NvM_NvDataBuffer)))
        {
            NvM_CurRunning.WriteTimesCounter--;
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_PENDING;
        }
        else
        {
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
        }
        break;
    case NVM_MEMIF_REQ_ERASE:
        if ((Std_ReturnType)0U == MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. EraseImmediateBlock(l_BlockNum))
        {
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_PENDING;
        }
        else
        {
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
        }
        break;
    case NVM_MEMIF_REQ_INVALID:
        if ((Std_ReturnType)0U == MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. InvalidateBlock(l_BlockNum))
        {
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_PENDING;
        }
        else
        {
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
        }
        break;
    default:
         
        break;
    }
}












 
static void NvM_MemIfReq(NvM_MemIfReqType NvM_MemIfRequest)
{
    if (NVM_MEMIF_JOB_ASYNC_READY == NvM_Module.MemIfJobState)
    {
        if (MEMIF_IDLE == MemIf_GetStatus(NvM_CurRunning.DeviceId))
        {
            NvM_MemIfReqSubDeal(NvM_MemIfRequest);
        }
    }
}












 
 void NvM_SetWordBitState(uint16 * WordPtr, uint8 SetBit, uint8 OnOff)
{
    if ((uint8)1U == OnOff)
    {
        (*WordPtr) |= (uint16)((uint16)0x01U << SetBit);
    }
    else
    {
        (*WordPtr) &= (uint16)(~(uint16)((uint16)0x01U << SetBit));
    }
}












 
 uint8
NvM_GetWordBitState(uint16 WordNum, uint8 GetBit)
{
    uint8 l_Number = 0U;

    if (0U != (WordNum & (uint16)((uint16)0x01U << GetBit)))
    {
        l_Number = 1;
    }
    return l_Number;
}












 
static  Std_ReturnType
    NvM_MemCpy(const uint8 * SrcAddrPtr, uint8 * DstAddrPtr)
{
    uint32 l_LengthLoop = 0;
    Std_ReturnType l_ReturnValue = 1U;
    uint8 MirrorOrNot;

    if ((SrcAddrPtr != ((void *)0)) && (DstAddrPtr != ((void *)0)))
    {
        MirrorOrNot =
            NvM_GetWordBitState(NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup, 8U);
        if ((uint8)1U == MirrorOrNot)
        {
            NvM_CurRunning.RepeatMirrorCounter--;
            if ((NVM_WRITE_BLOCK_SERV_ID == NvM_CurRunning.ServiceId)
                || (NVM_WRITE_PRAM_BLOCK_SERV_ID == NvM_CurRunning.ServiceId)
                || (NVM_WRITE_ALL_SERV_ID == NvM_CurRunning.ServiceId))
            {
                   
                if ((Std_ReturnType)0U == (*NvM_CurRunning.NvM_WriteRamBlockToNvm)((void*)SrcAddrPtr))
                 
                {
                     
                    for (; l_LengthLoop < NvM_CurRunning.Length; l_LengthLoop++)
                    {
                        DstAddrPtr[l_LengthLoop] = SrcAddrPtr[l_LengthLoop];
                    }
                    l_ReturnValue = 0U;
                    if ((NVM_SET_RAM_BLOCK_STATUS_SERV_ID != NvM_CurRunning.ServiceId)
                        && (NVM_VALIDATE_ALL_SERV_ID != NvM_CurRunning.ServiceId))
                    {
                         
                        NvM_SetWordBitState(
                            &NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup,
                            1U,
                            1U);
                        NvM_SetWordBitState(
                            &NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup,
                            2U,
                            1U);
                        NvM_UpdateValidandChangeStatus(1U, 1U);
                         
                    }
                }
                else
                {
                    l_ReturnValue = 1U;
                }
            }
             
            else if (
                (NVM_READ_BLOCK_SERV_ID == NvM_CurRunning.ServiceId)
                || (NVM_READ_ALL_SERV_ID == NvM_CurRunning.ServiceId)
                || (NVM_READ_PRAM_BLOCK_SERV_ID == NvM_CurRunning.ServiceId)
                || (NvM_Module.JobStep == NVM_JOB_STEP_READ_ROM))
            {
                 
                for (; l_LengthLoop < NvM_CurRunning.Length; l_LengthLoop++)
                {
                    DstAddrPtr[l_LengthLoop] = SrcAddrPtr[l_LengthLoop];
                }
                if (NVM_JOB_STEP_READ_ROM != NvM_Module.JobStep)
                {
                    NvM_SetWordBitState(
                        &NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup,
                        1U,
                        0U);
                    NvM_SetWordBitState(
                        &NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup,
                        2U,
                        0U);
                    NvM_UpdateValidandChangeStatus(0U, 0U);
                }
                l_ReturnValue = (*NvM_CurRunning.NvM_ReadRamBlockFromNvm)((void*)DstAddrPtr);
            }
            else
            {
                 
            }
        }
        else
        {
             
            for (; l_LengthLoop < NvM_CurRunning.Length; l_LengthLoop++)
            {
                DstAddrPtr[l_LengthLoop] = SrcAddrPtr[l_LengthLoop];
            }
            l_ReturnValue = 0U;
        }
    }
    return l_ReturnValue;
}












 
static  void NvM_AtomJobReq(NvM_AtomJobEType AtomJobReqId)
{
    NvM_AtomJob.Count++;
    NvM_AtomJob.ReqId[NvM_AtomJob.Count] = AtomJobReqId;
}












 
static  void NvM_RunTimeHandle(void)
{

    NvM_Module.RuntimeType = NVM_RUNTIME_NORMAL;
}












 
static  void NvM_CopyCurBlockInfo(void)
{
    uint8 SyncMechanism;
    NvM_BlockIdType CurBlockId = NvM_CurRunning.BlockId - 1U;
    NvM_CurRunning.ManagementType = NvM_BlockDescriptor[CurBlockId].NvmBlockManagementType;
    if (NVM_BLOCK_DATASET != NvM_CurRunning.ManagementType)
    {
        NvM_AdminBlock[CurBlockId].CurrentIndex = 0;
    }
     
    NVM_GetRepeatMirrorOperation();
    NvM_CurRunning.Index = NvM_AdminBlock[CurBlockId].CurrentIndex;
    NvM_CurRunning.StaticId = 0xFFFF;
    NvM_CurRunning.AdminFlagGroup = NvM_AdminBlock[CurBlockId].FlagGroup;
    if (NvM_BlockDescriptor[CurBlockId].NvmBlockCrcBuffAddress != ((void *)0))
    {
        NvM_CurRunning.Crc = NvM_BlockDescriptor[CurBlockId].NvmBlockCrcBuffAddress[NvM_CurRunning.Index];
    }
    NvM_CurRunning.ESingleReqResult = NvM_AdminBlock[CurBlockId].SingleReqResult;
    NvM_CurRunning.WriteTimesCounter = NvM_BlockDescriptor[CurBlockId].NvMMaxNumOfWriteRetries + 1U;  
    NvM_CurRunning.ReadRetryCounter = NvM_BlockDescriptor[CurBlockId].NvMMaxNumOfReadRetries;         
    NvM_CurRunning.VerificationSize = NvM_BlockDescriptor[CurBlockId].NvMWriteVerificationDataSize;
    NvM_CurRunning.VerificationCounter = 0;
    NvM_CurRunning.DeviceId = NvM_BlockDescriptor[CurBlockId].NvmNvramDeviceId;
    NvM_CurRunning.NvNum = NvM_BlockDescriptor[CurBlockId].NvmNvBlockNum;
    NvM_CurRunning.RomNum = NvM_BlockDescriptor[CurBlockId].NvmRomBlockNum;
    NvM_CurRunning.CRCType = NvM_BlockDescriptor[CurBlockId].NvmBlockCRCType;
    NvM_CurRunning.BaseNumber = NvM_BlockDescriptor[CurBlockId].NvmNvBlockBaseNumber;
    NvM_CurRunning.Length = NvM_BlockDescriptor[CurBlockId].NvmNvBlockLength;
    NvM_CurRunning.CrcFlag = 0;
     
    if (NVM_BLOCK_DATASET != NvM_CurRunning.ManagementType)
    {
        NvM_CurRunning.RomAddr = NvM_BlockDescriptor[CurBlockId].NvmRomBlockDataAddress;
    }
    else if (NvM_CurRunning.NvNum <= NvM_CurRunning.Index)
    {
        NvM_CurRunning.RomAddr = &NvM_BlockDescriptor[CurBlockId].NvmRomBlockDataAddress[(
            (NvM_CurRunning.Index - NvM_CurRunning.NvNum) * (uint8)NvM_CurRunning.Length)];
    }
    else
    {
         
    }
    SyncMechanism = NvM_GetWordBitState(NvM_BlockDescriptor[CurBlockId].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
    if ((uint8)1U == SyncMechanism)
    {
        NvM_CurRunning.NvM_WriteRamBlockToNvm = NvM_BlockDescriptor[CurBlockId].NvM_WriteRamBlockToNvm;
        NvM_CurRunning.NvM_ReadRamBlockFromNvm = NvM_BlockDescriptor[CurBlockId].NvM_ReadRamBlockFromNvm;
    }
     

    NvM_CurRunning.InitCallback = NvM_BlockDescriptor[CurBlockId].NvmInitBlockCallback;
    NvM_CurRunning.SingleCallback = NvM_BlockDescriptor[CurBlockId].NvmSingleBlockCallback;
}












 
static  Std_ReturnType NvM_MultiJobDispatch(void)
{
    Std_ReturnType l_ReturnValue = 1U;

    if (NVM_READ_ALL_SERV_ID == NvM_CurRunning.ServiceId)
    {
        NvM_CurRunning.BlockId++;
        if ((uint16)53U < NvM_CurRunning.BlockId)
        {
            NvM_MultiJob.Enqueue = 0U;
            if (NVM_REQ_NOT_OK == NvM_CurRunning.EMultiReqResult)
            {
                NvM_MultiJobResultFeedBack(NvM_CurRunning.ServiceId, NVM_REQ_NOT_OK);
            }
            else
            {
                NvM_MultiJobResultFeedBack(NvM_CurRunning.ServiceId, NVM_REQ_OK);
            }
            NvM_CurRunning.EMultiReqResult = NVM_REQ_OK;
            NvM_Module.CurrentJobType = NVM_JOB_TYPE_NONE;
        }
        else
        {
            NvM_CurRunning.ServiceId = NVM_READ_ALL_SERV_ID;
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].ServiceID = NVM_READ_ALL_SERV_ID;
            NvM_GetRamAddress(0U);
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_PENDING;
            NvM_CopyCurBlockInfo();
            l_ReturnValue = 0U;
        }
    }
    else if (NVM_VALIDATE_ALL_SERV_ID == NvM_CurRunning.ServiceId)
    {
        NvM_CurRunning.BlockId++;
        if ((uint16)53U < NvM_CurRunning.BlockId)
        {
            NvM_MultiJob.Enqueue = 0U;
            if (NVM_REQ_NOT_OK == NvM_CurRunning.EMultiReqResult)
            {
                NvM_MultiJobResultFeedBack(NvM_CurRunning.ServiceId, NVM_REQ_NOT_OK);
            }
            else
            {
                NvM_MultiJobResultFeedBack(NvM_CurRunning.ServiceId, NVM_REQ_OK);
            }
            NvM_CurRunning.EMultiReqResult = NVM_REQ_OK;
            NvM_Module.CurrentJobType = NVM_JOB_TYPE_NONE;
        }
        else
        {
            NvM_CurRunning.ServiceId = NVM_VALIDATE_ALL_SERV_ID;
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].ServiceID = NVM_VALIDATE_ALL_SERV_ID;
            NvM_GetRamAddress(0U);
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_PENDING;
            NvM_CopyCurBlockInfo();
            l_ReturnValue = 0U;
        }
    }
    else
    {
        NvM_CurRunning.BlockId++;
        if ((0x02U == NvM_CurRunning.BlockId)
            || (NVM_SET_RAM_BLOCK_STATUS_SERV_ID == NvM_CurRunning.ServiceId)
            || (((uint16)53U < NvM_CurRunning.BlockId) && ((uint8)0U == NvM_MultiJob.ID1WriteMark)))
        {
            NvM_MultiJob.Enqueue = 0U;
            if (NVM_REQ_NOT_OK == NvM_CurRunning.EMultiReqResult)
            {
                NvM_MultiJobResultFeedBack(NvM_CurRunning.ServiceId, NVM_REQ_NOT_OK);
            }
            else
            {
                NvM_MultiJobResultFeedBack(NvM_CurRunning.ServiceId, NVM_REQ_OK);
            }
            NvM_CurRunning.EMultiReqResult = NVM_REQ_OK;
            NvM_Module.CurrentJobType = NVM_JOB_TYPE_NONE;
        }
        else if (((uint16)53U < NvM_CurRunning.BlockId) && ((uint8)1U == NvM_MultiJob.ID1WriteMark))
        {
             
            NvM_CurRunning.BlockId = 1;
            NvM_MultiJob.ID1WriteMark = 0U;

            NvM_CurRunning.ServiceId = NVM_WRITE_ALL_SERV_ID;
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].ServiceID = NVM_WRITE_ALL_SERV_ID;

            NvM_GetRamAddress(0U);
            *(NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRamBlockDataAddress) =
                (uint8)(((uint16)((0xaabbu))) & 0x00ffU);
            *((NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRamBlockDataAddress) + 1U) =
                (uint8)(((uint16)((0xaabbu))) >> 8U);

            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_PENDING;
            NvM_CopyCurBlockInfo();
            l_ReturnValue = 0U;
        }
        else
        {
             
            NvM_CurRunning.ServiceId = NVM_WRITE_ALL_SERV_ID;
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].ServiceID = NVM_WRITE_ALL_SERV_ID;
            NvM_GetRamAddress(0U);
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_PENDING;
            NvM_CopyCurBlockInfo();
            l_ReturnValue = 0U;
        }
    }
    return l_ReturnValue;
}












 
 Std_ReturnType
NvM_JobEnqueue(NvM_BlockIdType BlockId, NvM_ServiceIdType ServiceId, uint8 * DestSrcPtr)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint16 BlockIdIndex;
    uint16 l_BlockIdLoop;
    BlockIdIndex = BlockId - 1U;
    if ((0xau) > NvM_StandQueueManage.Count)
    {
        SchM_Enter_NvM_Queue();
        NvM_StandQueue[NvM_StandQueueManage.TailIndex].BlockId = BlockId;
        NvM_StandQueue[NvM_StandQueueManage.TailIndex].ServiceId = ServiceId;
        NvM_StandQueue[NvM_StandQueueManage.TailIndex].DestSrcPtr = DestSrcPtr;
        NvM_StandQueueManage.TailIndex++;
         
        if ((0xau) <= NvM_StandQueueManage.TailIndex)
        {
            NvM_StandQueueManage.TailIndex = 0;
        }
        NvM_StandQueueManage.Count++;
        SchM_Exit_NvM_Queue();
        if ((NVM_READ_ALL_SERV_ID == ServiceId) || (NVM_WRITE_ALL_SERV_ID == ServiceId)
            || (NVM_VALIDATE_ALL_SERV_ID == ServiceId))
        {
            SchM_Enter_NvM_Queue();
             
            NvM_MultiJob.Enqueue = 1U;
            NvM_MultiJob.ServiceId = ServiceId;
            SchM_Exit_NvM_Queue();
            NvM_MultiJobResultFeedBack(ServiceId, NVM_REQ_PENDING);
            if (NVM_READ_ALL_SERV_ID == ServiceId)
            {
                SchM_Enter_NvM_Queue();
                for (l_BlockIdLoop = 0; l_BlockIdLoop < (uint16)53U; l_BlockIdLoop++)
                {
                    NvM_AdminBlock[l_BlockIdLoop].ReadReq = 1u;  
                }
                SchM_Exit_NvM_Queue();
            }
        }
        else
        {
            SchM_Enter_NvM_Queue();
             
            NvM_SetWordBitState(&NvM_AdminBlock[BlockIdIndex].FlagGroup, 0U, 1U);
            SchM_Exit_NvM_Queue();
            NvM_SingleJobResultFeedBack(BlockId, NVM_REQ_PENDING);
        }
        l_ReturnValue = 0U;
    }
    return l_ReturnValue;
}












 
 Std_ReturnType NvM_JobDequeue(void)
{
    Std_ReturnType l_ReturnValue;
    uint8 l_Index;

    if (NVM_JOB_TYPE_MULTI == NvM_Module.CurrentJobType)
    {
         
        l_ReturnValue = NvM_MultiJobDispatch();
    }
    else if (0U < NvM_StandQueueManage.Count)
    {
        SchM_Enter_NvM_Queue();
         
        l_Index = NvM_StandQueueManage.HeadIndex;
        NvM_CurRunning.ServiceId = NvM_StandQueue[l_Index].ServiceId;
        if ((NVM_READ_ALL_SERV_ID == NvM_CurRunning.ServiceId) || (NVM_WRITE_ALL_SERV_ID == NvM_CurRunning.ServiceId)
            || (NVM_VALIDATE_ALL_SERV_ID == NvM_CurRunning.ServiceId))
        {
            NvM_Module.CurrentJobType = NVM_JOB_TYPE_MULTI;
            if (NVM_READ_ALL_SERV_ID == NvM_CurRunning.ServiceId)
            {
                NvM_CurRunning.BlockId = 0x02U;
            }
            else
            {
                NvM_CurRunning.BlockId = 0x02U;
            }
            NvM_GetRamAddress(0);
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_PENDING;
             
        }
        else
        {
            NvM_Module.CurrentJobType = NVM_JOB_TYPE_SINGLE_NORMAL;
            NvM_CurRunning.BlockId = NvM_StandQueue[l_Index].BlockId;
            NvM_GetRamAddress(l_Index);
            NvM_SetWordBitState(&NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup, 0U, 0U);
        }
        NvM_CopyCurBlockInfo();
         
        NvM_StandQueueManage.HeadIndex++;
        if ((0xau) <= NvM_StandQueueManage.HeadIndex)
        {
             
            NvM_StandQueueManage.HeadIndex = 0;
        }
        NvM_StandQueueManage.Count--;
        SchM_Exit_NvM_Queue();
        l_ReturnValue = 0U;
    }
    else
    {
         
        l_ReturnValue = 1U;
    }
    return l_ReturnValue;
}



 











 
 
static  void NvM_GetRamAddress(uint8 QueueIndex)
{
    uint8 SyncMechanism;
    uint8 Repair;
    NvM_BlockIdType CurBlockId = NvM_CurRunning.BlockId - 1U;

    if (NvM_Module.CurrentJobType == NVM_JOB_TYPE_MULTI)
    {
        Repair = NvM_GetWordBitState(NvM_AdminBlock[CurBlockId].FlagGroup, 4U);
        if (((uint8)1U == Repair) && (NVM_WRITE_ALL_SERV_ID == NvM_CurRunning.ServiceId))
        {
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 5U, 0U);
             
        }
        else
        {
            SyncMechanism =
                NvM_GetWordBitState(NvM_BlockDescriptor[CurBlockId].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 5U, 1U);
            if ((uint8)1U == SyncMechanism)
            {
                NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 8U, 1U);
            }
            else
            {
                NvM_CurRunning.RamAddr = NvM_BlockDescriptor[CurBlockId].NvmRamBlockDataAddress;
                NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 8U, 0U);
            }
        }
    }
    else if (NvM_Module.CurrentJobType == NVM_JOB_TYPE_SINGLE_NORMAL)
    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[CurBlockId].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        if (((void *)0) != NvM_StandQueue[QueueIndex].DestSrcPtr)
        {
            NvM_CurRunning.RamAddr = NvM_StandQueue[QueueIndex].DestSrcPtr;
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 5U, 0U);
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 8U, 0U);
        }
        else if ((uint8)1U == SyncMechanism)
        {
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 5U, 1U);
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 8U, 1U);
        }
        else
        {
            NvM_CurRunning.RamAddr = NvM_BlockDescriptor[CurBlockId].NvmRamBlockDataAddress;
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 5U, 1U);
            NvM_SetWordBitState(&NvM_AdminBlock[CurBlockId].FlagGroup, 8U, 0U);
        }
    }
    else
    {
         
    }
}












 
static  void NvM_JobOverSetFlag(NvM_RequestResultType SingleReqResult, NvM_CrcChangeType CrcChange)
{
    uint8 WriteBlockOnce;
    NvM_BlockIdType l_Curindex;
    NvM_BlockIdType l_BlockIdIndex;
    boolean BlockFound = 0u;
    NvM_BlockIdType totalnum;

    totalnum = NvM_StandQueueManage.Count;
    l_BlockIdIndex = NvM_StandQueueManage.HeadIndex;

    for (l_Curindex = 0; l_Curindex < totalnum; l_Curindex++)
    {
        if (NvM_StandQueue[l_BlockIdIndex].BlockId == NvM_CurRunning.BlockId)
        {
             
            BlockFound = 1u;
            break;
        }
        l_BlockIdIndex++;
        if (l_BlockIdIndex > (0xau) - 1u)
        {
            l_BlockIdIndex = 0;
        }
    }

     
    if (1u == BlockFound)
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 0U, 1U);
    }
    else
    {
        NvM_SingleJobResultFeedBack(NvM_CurRunning.BlockId, SingleReqResult);
        NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].ServiceID = NVM_NONE_SERV_ID;
    }

    WriteBlockOnce = NvM_GetWordBitState(
        NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
        (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
     
    if (((uint8)1U == WriteBlockOnce)
        && (NVM_REQ_OK == NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult))
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 3U, 1U);
    }

    if (NVM_CRC_UPDATE == CrcChange)
    {
        uint8 index = NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].CurrentIndex;
        if (NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmBlockCrcBuffAddress != ((void *)0))
        {
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmBlockCrcBuffAddress[index] = NvM_CurRunning.Crc;
        }
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 9U, 1U);
    }
    else if (NVM_CRC_DELETE == CrcChange)
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 9U, 0U);
    }
    else
    {
         
    }
    NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup = NvM_CurRunning.AdminFlagGroup;

     
    if (((void *)0) != NvM_CurRunning.SingleCallback)
    {
        NvM_BlockRequestType BlockRequest;
        boolean NotiFlag = 1u;
        switch (NvM_CurRunning.ServiceId)
        {
        case NVM_READ_BLOCK_SERV_ID:
        case NVM_READ_PRAM_BLOCK_SERV_ID:
            BlockRequest = NVM_READ_BLOCK;
            break;
        case NVM_WRITE_BLOCK_SERV_ID:
        case NVM_WRITE_PRAM_BLOCK_SERV_ID:
            BlockRequest = NVM_WRITE_BLOCK;
            break;
        case NVM_RESTORE_BLOCK_DEFAULTS_SERV_ID:
        case NVM_RESTORE_PRAM_BLOCK_DEFAULTS_SERV_ID:
            BlockRequest = NVM_RESTORE_BLOCK_DEFAULTS;
            break;
        case NVM_ERASE_NV_BLOCK_SERV_ID:
            BlockRequest = NVM_ERASE_NV_BLOCK;
            break;
        case NVM_INVALIDATE_NV_BLOCK_SERV_ID:
            BlockRequest = NVM_INVALIDATE_NV_BLOCK;
            break;
        case NVM_READ_ALL_SERV_ID:
            BlockRequest = NVM_READ_ALL_BLOCK;
            break;
        default:
            NotiFlag = 0u;
            break;
        }
        if (NotiFlag == 1u)
        {
            (*NvM_CurRunning.SingleCallback)(BlockRequest, NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult);
        }
    }

    NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 7U, 0U);
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    NvM_Module.JobStep = NVM_JOB_STEP_IDLE;
    NvM_AtomJob.Count = 0;
}












 
static  void NvM_MemIfReadOk(void)
{
    uint8 StaicBlockIdCheck;
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;

    if (NVM_JOB_STEP_READ_2ND_NV == NvM_Module.JobStep)
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 7U, 1U);
    }
    else
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 4U, 0U);
         
    }
    StaicBlockIdCheck = NvM_GetWordBitState(
        NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
        (uint8)NVM_BLOCK_DESC_STATICBLOCKIDCHECK);
    if ((uint8)1U == StaicBlockIdCheck)
    {
        NvM_ReadStaticBlockID(NvM_NvDataBuffer, NvM_CurRunning.CRCType);
    }
    if (NVM_CRC_NOT_USED != NvM_CurRunning.CRCType)
    {
        NvM_CurRunning.CrcAddr = NvM_NvDataBuffer;
        if (NVM_JOB_STEP_READ_1ST_NV == NvM_Module.JobStep)
        {
            NvM_Module.JobStep = NVM_JOB_STEP_CALC_CRC_READ_1ST_NV;
        }
        else
        {
            NvM_Module.JobStep = NVM_JOB_STEP_CALC_CRC_READ_2ND_NV;
        }
        NvM_AtomJobReq(NVM_ATOMJOB_CALCCRC);
    }
    else if ((uint8)1U == StaicBlockIdCheck)
    {
        NvM_Module.JobStep = NVM_JOB_STEP_CHECK;
    }
    else
    {
        NvM_Module.JobStep = NVM_JOB_STEP_COPY;
    }
}












 
static  void NvM_MemIfReadFailed(void)
{
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;

    if (NVM_BLOCK_DATASET == NvM_CurRunning.ManagementType)
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);
        NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);  
    }
    else
        if (((NVM_BLOCK_NATIVE == NvM_CurRunning.ManagementType) || (NVM_JOB_STEP_READ_2ND_NV == NvM_Module.JobStep))
            && ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
                || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback)))
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);  
        NvM_CurRunning.ESingleReqResult = NVM_REQ_INTEGRITY_FAILED;
        NVM_GetRepeatMirrorOperation();
        NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
        NvM_AtomJobReq(NVM_ATOMJOB_READROM);
    }
    else if ((NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType) && (NVM_JOB_STEP_READ_1ST_NV == NvM_Module.JobStep))
    {
         
        NvM_Module.JobStep = NVM_JOB_STEP_READ_2ND_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
        NvM_CurRunning.Index = 1;
    }
    else
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);
        NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
    }
}












 
static  void NvM_MemIfPending(void)
{
     
     
}












 
static  void NvM_MemIfCancelled(void)
{
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    NvM_UpdateValidandChangeStatus(0U, 0U);
    NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
}












 
static  void NvM_MemIfInconsistent(void)
{
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    if (NVM_BLOCK_DATASET == NvM_CurRunning.ManagementType)
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);
        NvM_JobOverSetFlag(NVM_REQ_INTEGRITY_FAILED, NVM_CRC_DELETE);  
    }
    else if (
        ((NVM_BLOCK_NATIVE == NvM_CurRunning.ManagementType) || (NVM_JOB_STEP_READ_2ND_NV == NvM_Module.JobStep))
        && ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
            || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback)))
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);  
         
        NvM_CurRunning.ESingleReqResult = NVM_REQ_INTEGRITY_FAILED;
        NVM_GetRepeatMirrorOperation();
        NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
        NvM_AtomJobReq(NVM_ATOMJOB_READROM);
    }
    else if ((NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType) && (NVM_JOB_STEP_READ_1ST_NV == NvM_Module.JobStep))
    {

        NvM_Module.JobStep = NVM_JOB_STEP_READ_2ND_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;  
        NvM_CurRunning.Index = 1;
    }
    else
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);
        NvM_JobOverSetFlag(NVM_REQ_INTEGRITY_FAILED, NVM_CRC_DELETE);
    }
}












 
static  void NvM_MemIfInvalid(void)
{
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    if (NVM_BLOCK_DATASET == NvM_CurRunning.ManagementType)
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);
        NvM_JobOverSetFlag(NVM_REQ_NV_INVALIDATED, NVM_CRC_DELETE);
    }
    else
        if ((NVM_BLOCK_NATIVE == NvM_CurRunning.ManagementType) || (NVM_JOB_STEP_READ_2ND_NV == NvM_Module.JobStep))
    {
        NvM_CurRunning.ESingleReqResult = NVM_REQ_INTEGRITY_FAILED;
        NvM_UpdateValidandChangeStatus(0U, 0U);  
        if ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
            || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback))
        {
            NVM_GetRepeatMirrorOperation();
            NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
            NvM_AtomJobReq(NVM_ATOMJOB_READROM);
        }
        else
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_NV_INVALIDATED, NVM_CRC_DELETE);
        }
    }
    else
    {
        NvM_Module.JobStep = NVM_JOB_STEP_READ_2ND_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
        NvM_CurRunning.Index = 1;
    }
}












 
static  void NvM_MemIfWriteOk(void)
{
    uint8 WriteVerification;
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;

    if ((NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType) && (NVM_JOB_STEP_WRITE_2ND_NV == NvM_Module.JobStep))
    {
        NvM_CurRunning.ESingleReqResult = NVM_REQ_OK;
        NvM_Module.JobStep = NVM_JOB_STEP_WRITE_1ST_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
        NvM_CurRunning.Index = 0;
    }
    else
    {
        WriteVerification = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_WRITEVERIFICATION);
        if ((uint8)1U == WriteVerification)
        {
            NvM_Module.JobStep = NVM_JOB_STEP_READ_1ST_NV;
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
            NvM_AtomJobReq(NVM_ATOMJOB_WRITEVERIFICATION);
        }
        else
        {
            NvM_UpdateValidandChangeStatus(1U, 0U);
            if (NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType)
            {
                NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 4U, 0U);
            }
            NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);  
        }
    }
}












 
static  void NvM_MemIfWriteFailed(void)
{
    uint8 WriteVerification;
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    if (0U < NvM_CurRunning.WriteTimesCounter)
    {
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
    }
    else if (
        (NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType) && (NVM_JOB_STEP_WRITE_2ND_NV == NvM_Module.JobStep))
    {
        NvM_CurRunning.WriteTimesCounter = NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvMMaxNumOfWriteRetries;
        NvM_Module.JobStep = NVM_JOB_STEP_WRITE_1ST_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
        NvM_CurRunning.Index = 0;
        NVM_GetRepeatMirrorOperation();
    }
    else
    {
        if ((NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType) && (NVM_REQ_OK == NvM_CurRunning.ESingleReqResult))
        {
            WriteVerification = NvM_GetWordBitState(
                NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
                (uint8)NVM_BLOCK_DESC_WRITEVERIFICATION);
            if ((uint8)1U == WriteVerification)
            {
                NvM_Module.JobStep = NVM_JOB_STEP_READ_2ND_NV;  
                NvM_CurRunning.Index = 1;
                NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
                NvM_AtomJobReq(NVM_ATOMJOB_WRITEVERIFICATION);
            }
            else
            {
                NvM_UpdateValidandChangeStatus(1U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);
            }
        }
        else
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_DELETE);
        }
    }
}













 
static  void NvM_MemIfInvalidOk(void)
{
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    if (NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType)
    {
        if (NVM_JOB_STEP_INVALID_1ST_NV == NvM_Module.JobStep)
        {
            NvM_Module.JobStep = NVM_JOB_STEP_INVALID_2ND_NV;
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
            NvM_CurRunning.Index = 1;
        }
        else if (NVM_JOB_STEP_INVALID_2ND_NV == NvM_Module.JobStep)
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 4U, 0U);
             
            NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_DELETE);  
        }
        else
        {
             
        }
    }
    else
    {
        NvM_UpdateValidandChangeStatus(0U, 0U);
        NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_DELETE);
    }
}












 
static  void NvM_MemIfInvalidFailed(void)
{
    NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
    NvM_UpdateValidandChangeStatus(0U, 0U);
    NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_DELETE);  
}












 
 void NvM_InterReadRom(void)
{
    uint8 CalcRamBlockCrc;
    NvM_BlockIdType CurBlockId = NvM_CurRunning.BlockId - 1U;
    if (NVM_JOB_STEP_CALC_CRC == NvM_Module.JobStep)
    {
        NvM_UpdateValidandChangeStatus(1U, 1U);  
        if ((NvM_CurRunning.ESingleReqResult == NVM_REQ_INTEGRITY_FAILED)
            || (NvM_AdminBlock[CurBlockId].SingleReqResult == NVM_REQ_NV_INVALIDATED)
            || (NvM_AdminBlock[CurBlockId].SingleReqResult == NVM_REQ_NOT_OK))
        {
            NvM_JobOverSetFlag(NVM_REQ_RESTORED_FROM_ROM, NVM_CRC_DELETE);
        }
        else
        {
            NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_DELETE);
        }
    }
    else
    {
        if ((((void *)0) != NvM_BlockDescriptor[CurBlockId].NvmRomBlockDataAddress)
            && (NvM_CurRunning.RepeatMirrorCounter > 0U))
        {
            if ((Std_ReturnType)0U == NvM_MemCpy(NvM_CurRunning.RomAddr, NvM_CurRunning.RamAddr))
            {
                CalcRamBlockCrc = NvM_GetWordBitState(
                    NvM_BlockDescriptor[CurBlockId].FlagGroup,
                    (uint8)NVM_BLOCK_DESC_CALCRAMBLOCKCRC);
                if ((uint8)1U == CalcRamBlockCrc)
                {
                    NvM_CurRunning.CrcAddr = NvM_CurRunning.RamAddr;
                    NvM_Module.JobStep = NVM_JOB_STEP_CALC_CRC;
                    NvM_AtomJobReq(NVM_ATOMJOB_CALCCRC);  
                }
                else
                {
                    NvM_UpdateValidandChangeStatus(1U, 1U);
                    if ((NvM_CurRunning.ESingleReqResult == NVM_REQ_INTEGRITY_FAILED)
                        || (NvM_AdminBlock[CurBlockId].SingleReqResult == NVM_REQ_NV_INVALIDATED)
                        || (NvM_AdminBlock[CurBlockId].SingleReqResult == NVM_REQ_NOT_OK))
                    {
                        NvM_JobOverSetFlag(NVM_REQ_RESTORED_FROM_ROM, NVM_CRC_DELETE);
                    }
                    else
                    {
                        NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_DELETE);
                    }
                }
            }
        }
        else if (((void *)0) != NvM_CurRunning.InitCallback)
        {
            NvM_InitBlockRequestType InitBlockRequest = NVM_INIT_READ_BLOCK;
            switch (NvM_CurRunning.ServiceId)
            {
            case NVM_RESTORE_BLOCK_DEFAULTS_SERV_ID:
            case NVM_RESTORE_PRAM_BLOCK_DEFAULTS_SERV_ID:
                InitBlockRequest = NVM_INIT_RESTORE_BLOCK_DEFAULTS;
                break;
            case NVM_READ_ALL_SERV_ID:
                InitBlockRequest = NVM_INIT_READ_ALL_BLOCK;
                break;
            default:
                 
                break;
            }
            if ((Std_ReturnType)0U == (*NvM_CurRunning.InitCallback)(InitBlockRequest))
            {
                NvM_UpdateValidandChangeStatus(1U, 1U);
                if ((NvM_CurRunning.ESingleReqResult == NVM_REQ_INTEGRITY_FAILED)
                    || (NvM_AdminBlock[CurBlockId].SingleReqResult == NVM_REQ_NV_INVALIDATED)
                    || (NvM_AdminBlock[CurBlockId].SingleReqResult == NVM_REQ_NOT_OK))
                {
                    NvM_JobOverSetFlag(NVM_REQ_RESTORED_FROM_ROM, NVM_CRC_DELETE);
                }
                else
                {
                    NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_DELETE);
                }
            }
            else
            {
                NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
            }
        }
        else
        {
            NvM_AdminBlock[CurBlockId].SingleReqResult = (NvM_CurRunning.ESingleReqResult == NVM_REQ_INTEGRITY_FAILED)
                                                             ? NVM_REQ_INTEGRITY_FAILED
                                                             : NvM_AdminBlock[CurBlockId].SingleReqResult;
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NvM_AdminBlock[CurBlockId].SingleReqResult, NVM_CRC_DELETE);
        }
    }
}












 
 void NvM_InterCalcCrc(void)
{
    uint16 l_CrcLength;
    boolean NvM_CrcIsFirstCall;

    if (0U == NvM_CurRunning.CrcFlag)
    {
        NvM_CurRunning.CrcFlag = 1U;
        NvM_CurRunning.CrcLength = NvM_CurRunning.Length;
        NvM_CrcIsFirstCall = 1u;
    }
    else
    {
        NvM_CrcIsFirstCall = 0u;
    }
    if ((0x80u) < NvM_CurRunning.CrcLength)
    {
        l_CrcLength = (0x80u);
    }
    else
    {
        l_CrcLength = NvM_CurRunning.CrcLength;
        NvM_CurRunning.CrcFlag = 0U;
        if (0U != NvM_AtomJob.Count)
        {
            NvM_AtomJob.Count--;
        }
    }
    switch (NvM_CurRunning.CRCType)
    {
    case NVM_CRC16:
        NvM_CurRunning.Crc =
            Crc_CalculateCRC16(NvM_CurRunning.CrcAddr, l_CrcLength, (uint16)NvM_CurRunning.Crc, NvM_CrcIsFirstCall);
        break;
    default:
         
        break;
    }
    NvM_CurRunning.CrcLength -= l_CrcLength;
    NvM_CurRunning.CrcAddr = &NvM_CurRunning.CrcAddr[l_CrcLength];
}












 
static  void NvM_InterReadBlockSubDeal(void)
{
    uint32 l_TempCrc;
    NvM_CrcStaticIdStatusType l_TempCRCResult = NVM_CRC_STATICID_NO_USE;
    NvM_CrcStaticIdStatusType l_TempStaticIDResult = NVM_CRC_STATICID_NO_USE;
    uint8 StaicBlockIdCheck;

    if ((NVM_JOB_STEP_CALC_CRC_READ_1ST_NV == NvM_Module.JobStep)
        || (NVM_JOB_STEP_CALC_CRC_READ_2ND_NV == NvM_Module.JobStep))
    {
        if (NVM_CRC16 == NvM_CurRunning.CRCType)
        {
            l_TempCrc = NvM_NvDataBuffer[NvM_CurRunning.Length];
            l_TempCrc |= ((uint32)NvM_NvDataBuffer[NvM_CurRunning.Length + 1U]) << 8U;
        }
        else if (NVM_CRC32 == NvM_CurRunning.CRCType)
        {
            l_TempCrc = NvM_NvDataBuffer[NvM_CurRunning.Length];
            l_TempCrc |= ((uint32)NvM_NvDataBuffer[NvM_CurRunning.Length + 1U]) << 8U;
            l_TempCrc |= ((uint32)NvM_NvDataBuffer[NvM_CurRunning.Length + 2U]) << 16U;
            l_TempCrc |= ((uint32)NvM_NvDataBuffer[NvM_CurRunning.Length + 3U]) << 24U;
        }
        else
        {
            l_TempCrc = NvM_NvDataBuffer[NvM_CurRunning.Length];
        }
    }

    if (NVM_JOB_STEP_CHECK == NvM_Module.JobStep)
    {
        if (NvM_CurRunning.StaticId == NvM_CurRunning.BlockId)
        {
            l_TempStaticIDResult = NVM_CRC_STATICID_OK;
            NvM_Module.JobStep = NVM_JOB_STEP_COPY;
        }
        else
        {
            l_TempStaticIDResult = NVM_CRC_STATICID_NOT_OK;
        }
    }
    else if (
        (NVM_JOB_STEP_CALC_CRC_READ_1ST_NV == NvM_Module.JobStep)
        || (NVM_JOB_STEP_CALC_CRC_READ_2ND_NV == NvM_Module.JobStep))
    {
        if (NvM_CurRunning.Crc == l_TempCrc)
        {
            l_TempCRCResult = NVM_CRC_STATICID_OK;
        }
        else
        {
            l_TempCRCResult = NVM_CRC_STATICID_NOT_OK;
        }
        StaicBlockIdCheck = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_STATICBLOCKIDCHECK);
        if ((uint8)1U == StaicBlockIdCheck)
        {
            if (NvM_CurRunning.StaticId == NvM_CurRunning.BlockId)
            {
                l_TempStaticIDResult = NVM_CRC_STATICID_OK;
                if (NVM_CRC_STATICID_OK == l_TempCRCResult)
                {
                    NvM_Module.JobStep = NVM_JOB_STEP_COPY;
                }
            }
            else
            {
                l_TempStaticIDResult = NVM_CRC_STATICID_NOT_OK;
            }
        }
        else if (NVM_CRC_STATICID_OK == l_TempCRCResult)
        {
            NvM_Module.JobStep = NVM_JOB_STEP_COPY;
        }
        else
        {
             
        }
    }
    else
    {
         
    }

     
    NvM_ReadErrorHandle(l_TempCRCResult, l_TempStaticIDResult);
}












 
 void NvM_InterReadBlock(void)
{
    MemIf_JobResultType l_ReturnValue;
    if (NVM_JOB_STEP_COPY == NvM_Module.JobStep)
    {
        NvM_MemCpyStep();
    }
    else
    {
        NvM_InterReadBlockSubDeal();
        NvM_MemIfReq(NVM_MEMIF_REQ_READ);
        if (NVM_MEMIF_JOB_ASYNC_PENDING == NvM_Module.MemIfJobState)  
        {
            l_ReturnValue = MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. GetJobResult();
            (*NvM_MemIfAsyncFuncTable[l_ReturnValue][(uint8)NVM_READ_BLOCK_SERV_ID - 6U])();
        }
        if (NVM_JOB_STEP_PENDING == NvM_Module.JobStep)
        {
            if ((NVM_BLOCK_DATASET == NvM_CurRunning.ManagementType) && (NvM_CurRunning.NvNum <= NvM_CurRunning.Index))
            {
                NVM_GetRepeatMirrorOperation();
                NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
                NvM_AtomJobReq(NVM_ATOMJOB_READROM);
            }
            else
            {
                NvM_Module.JobStep = NVM_JOB_STEP_READ_1ST_NV;
                NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
            }
        }
    }
}












 
 void NvM_InterWriteBlock(void)
{
    MemIf_JobResultType l_ReturnValue;
    uint8 CalcRamBlockCrc;
    uint8 CrcCompMechanism;
    uint8 Repair;
    uint8 Valid;
    uint8 Result;
    uint8 StaicBlockIdCheck;
    boolean ProcessOn = 1u;

    NvM_MemIfReq(NVM_MEMIF_REQ_WRITE);
    if (NVM_MEMIF_JOB_ASYNC_PENDING == NvM_Module.MemIfJobState)
    {
        l_ReturnValue = MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. GetJobResult();
        (*NvM_MemIfAsyncFuncTable[l_ReturnValue][(uint8)NVM_WRITE_BLOCK_SERV_ID - 6U])();
    }

     
    if (NVM_JOB_STEP_PENDING == NvM_Module.JobStep)
    {
        if (NvM_CurRunning.RepeatMirrorCounter > 0U)
        {
            if ((Std_ReturnType)0U == NvM_MemCpy(NvM_CurRunning.RamAddr, NvM_NvDataBuffer))
            {
                NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 10U, 1U);
            }
            else
            {  
            }
        }
        else
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_DELETE);  
        }
    }

    Result = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 10U);
    if ((uint8)1U == Result)
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 10U, 0U);
         
        if (NVM_CRC_NOT_USED != NvM_CurRunning.CRCType)
        {
            NvM_CurRunning.TempCrc = NvM_CurRunning.Crc;
            NvM_CurRunning.CrcAddr = NvM_NvDataBuffer;
            NvM_Module.JobStep = NVM_JOB_STEP_CALC_CRC;
            NvM_AtomJobReq(NVM_ATOMJOB_CALCCRC);  
            ProcessOn = 0u;
        }
        else
        {
            StaicBlockIdCheck = NvM_GetWordBitState(
                NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
                (uint8)NVM_BLOCK_DESC_STATICBLOCKIDCHECK);
             
            if ((uint8)1U == StaicBlockIdCheck)
            {
                NvM_WriteStaticBlockID(NvM_NvDataBuffer, NvM_CurRunning.CRCType);
            }
            NvM_WriteSequenceForManagementType();
        }
    }

    if ((ProcessOn == 1u) && (NVM_JOB_STEP_CALC_CRC == NvM_Module.JobStep))
    {
        CalcRamBlockCrc = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_CALCRAMBLOCKCRC);
        CrcCompMechanism = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_CRCCOMPMECHANISM);
        Repair = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 4U);
        Valid = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 9U);
        if (((uint8)1U == CalcRamBlockCrc) && ((uint8)1U == CrcCompMechanism) && ((uint8)0U == Repair)
            && ((uint8)1U == Valid))  
        {
            if (NvM_CurRunning.Crc == NvM_CurRunning.TempCrc)
            {
                NvM_UpdateValidandChangeStatus(1U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_REMAIN);  
                ProcessOn = 0u;
            }
        }
        if (ProcessOn == 1u)
        {
            if (NVM_CRC16 == NvM_CurRunning.CRCType)
            {
                NvM_NvDataBuffer[NvM_CurRunning.Length] = (uint8)NvM_CurRunning.Crc;
                NvM_NvDataBuffer[NvM_CurRunning.Length + 1U] = (uint8)(NvM_CurRunning.Crc >> 8U);
            }
            else if (NVM_CRC32 == NvM_CurRunning.CRCType)
            {
                NvM_NvDataBuffer[NvM_CurRunning.Length] = (uint8)NvM_CurRunning.Crc;
                NvM_NvDataBuffer[NvM_CurRunning.Length + 1U] = (uint8)(NvM_CurRunning.Crc >> 8U);
                NvM_NvDataBuffer[NvM_CurRunning.Length + 2U] = (uint8)(NvM_CurRunning.Crc >> 16U);
                NvM_NvDataBuffer[NvM_CurRunning.Length + 3U] = (uint8)(NvM_CurRunning.Crc >> 24U);
            }
            else
            {
                NvM_NvDataBuffer[NvM_CurRunning.Length] = (uint8)(NvM_CurRunning.Crc);
            }
            StaicBlockIdCheck = NvM_GetWordBitState(
                NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
                (uint8)NVM_BLOCK_DESC_STATICBLOCKIDCHECK);
            if ((uint8)1U == StaicBlockIdCheck)
            {
                NvM_WriteStaticBlockID(NvM_NvDataBuffer, NvM_CurRunning.CRCType);
            }
            NvM_WriteSequenceForManagementType();
        }
    }
}













 
 void NvM_InterRestoreBlockDefaults(void)
{
    if (NVM_JOB_STEP_PENDING == NvM_Module.JobStep)
    {
        if ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
            || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback))
        {
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_PENDING;
            NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
            NvM_AtomJobReq(NVM_ATOMJOB_READROM);
        }
    }
}













 
 void NvM_InterInvalidateNvBlock(void)
{
    MemIf_JobResultType l_ReturnValue;

    if (NVM_JOB_STEP_PENDING == NvM_Module.JobStep)
    {
        NvM_Module.JobStep = NVM_JOB_STEP_INVALID_1ST_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
    }
    NvM_MemIfReq(NVM_MEMIF_REQ_INVALID);
    if (NVM_MEMIF_JOB_ASYNC_PENDING == NvM_Module.MemIfJobState)
    {
        l_ReturnValue = MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. GetJobResult();
        (*NvM_MemIfAsyncFuncTable[l_ReturnValue][(uint8)NVM_INVALIDATE_NV_BLOCK_SERV_ID - 6U])();
    }
}












 
 void NvM_InterReadAll(void)
{
    uint8 l_ResistentChangedSw;
    uint8 SelectBlockForReadAll = NvM_GetWordBitState(
        NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
        (uint8)NVM_BLOCK_DESC_SELECTBLOCKFORREADALL);
    uint8 Changed = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 2U);
    if (0x02U == NvM_CurRunning.BlockId)  
    {
        if (((uint8)1U == SelectBlockForReadAll) && ((uint8)0U == Changed)
            && (NVM_BLOCK_DATASET != NvM_CurRunning.ManagementType))
        {
            NvM_AtomJobReq(NVM_ATOMJOB_READBLOCK);
        }
        else
        {
             
            NvM_JobOverSetFlag(NVM_REQ_BLOCK_SKIPPED, NVM_CRC_REMAIN);
        }
    }
    else if (0x02U < NvM_CurRunning.BlockId)
    {
        if ((0x02U + 1U) == NvM_CurRunning.BlockId)
        {
            NvM_RunTimeHandle();
        }

        if (((uint8)1U == SelectBlockForReadAll) && ((uint8)0U == Changed)
            && (NVM_BLOCK_DATASET != NvM_CurRunning.ManagementType))
        {
            l_ResistentChangedSw = NvM_GetWordBitState(
                NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
                (uint8)NVM_BLOCK_DESC_RESISTANTTOCHANGEDSW);

            if ((NVM_RUNTIME_EXTENDED == NvM_Module.RuntimeType) && ((uint8)0U == l_ResistentChangedSw))
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);

                if ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
                    || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback))
                {
                    NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_NOT_OK;
                    NVM_GetRepeatMirrorOperation();
                    NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
                    NvM_AtomJobReq(NVM_ATOMJOB_READROM);
                }
                else
                {
                    NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
                }
            }
            else
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);
                NvM_Module.JobStep = NVM_JOB_STEP_PENDING;
                NvM_AtomJobReq(NVM_ATOMJOB_READBLOCK);
            }
        }
        else
        {
             
            NvM_JobOverSetFlag(NVM_REQ_BLOCK_SKIPPED, NVM_CRC_REMAIN);
        }
    }
    else
    {
         
    }
}












 
 void NvM_InterWriteAll(void)
{
    uint8 l_RamValid;
    uint8 l_RamChanged;
    uint8 l_NvProt;
    uint8 l_NvRepair;
    uint8 l_NvLock;
    uint8 l_NvSelect;
    uint8 Used;

    if ((uint8)1U == NvM_MultiJob.CancelWriteAll)
    {
        NvM_BlockIdType blockId = NvM_CurRunning.BlockId;
        while ((uint16)53U >= blockId)
        {
             
            NvM_UpdateValidandChangeStatus(1U, 0U);
            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 0U, 0U);
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult = NVM_REQ_CANCELED;
            NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].ServiceID = NVM_NONE_SERV_ID;
            blockId++;
            NvM_CurRunning.BlockId++;
        }
        if ((uint8)1U == NvM_MultiJob.ID1WriteMark)
        {
            NvM_AdminBlock[0].SingleReqResult = NVM_REQ_CANCELED;
        }
         
        NvM_MultiJob.CancelWriteAll = 0U;
        NvM_MultiJob.Enqueue = 0U;
        NvM_MultiJobResultFeedBack(NVM_CANCEL_WRITE_ALL_SERV_ID, NVM_REQ_CANCELED);
        NvM_MultiJob.ServiceId = NVM_NONE_SERV_ID;
        NvM_Module.CurrentJobType = NVM_JOB_TYPE_NONE;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
        NvM_Module.JobStep = NVM_JOB_STEP_IDLE;
    }
    else
    {
         
         
        NvM_UpdateValidandChangeStatus(1U, 1U);
         
        if ((1U == NvM_CurRunning.BlockId)
            && (NvM_CurRunning.RamAddr == NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRamBlockDataAddress))
        {
            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 1U, 1U);
            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 2U, 1U);
        }
        l_RamValid = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 1U);
        l_RamChanged = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 2U);
        l_NvProt = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 3U);
        l_NvLock = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 6U);
        l_NvRepair = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 4U);
        l_NvSelect = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_SELECTBLOCKFORWRITEALL);

         
        if (((uint8)1U == l_NvRepair)
            || (((uint8)1U == l_RamValid) && ((uint8)1U == l_RamChanged) && ((uint8)0U == l_NvProt)
                && ((uint8)0U == l_NvLock) && ((uint8)1U == l_NvSelect)
                && (NvM_CurRunning.Index < NvM_CurRunning.NvNum)))
        {
            if ((NVM_BLOCK_DATASET == NvM_CurRunning.ManagementType) && (NvM_CurRunning.NvNum <= NvM_CurRunning.Index))
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
            }
            else
            {
                NvM_Module.JobStep = NVM_JOB_STEP_PENDING;
                NvM_AtomJobReq(NVM_ATOMJOB_WRITEBLOCK);
            }
        }
        else
        {
            Used = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 5U);
            if ((uint8)1U == Used)
            {
                NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 2U, 0U);
            }
            NvM_JobOverSetFlag(NVM_REQ_BLOCK_SKIPPED, NVM_CRC_REMAIN);
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   











 
static  void NvM_UpdateValidandChangeStatus(uint8 ValidStatus, uint8 ChangeStatus)
{
    uint8 Used = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 5U);
    if ((uint8)1U == Used)
    {
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 1U, ValidStatus);
        NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 2U, ChangeStatus);
    }
}












 
static  void NvM_WriteSequenceForManagementType(void)
{
    if (NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType)
    {
        NvM_Module.JobStep = NVM_JOB_STEP_WRITE_2ND_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;  
        NvM_CurRunning.Index = 1;
    }
    else
    {
        NvM_Module.JobStep = NVM_JOB_STEP_WRITE_1ST_NV;
        NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
    }
}












 
static  void NvM_MemCpyStep(void)
{
    uint8 MirrorOrNot =
        NvM_GetWordBitState(NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup, 8U);
    uint8 Loss;
    if ((uint8)1U == MirrorOrNot)
    {
        if (NvM_CurRunning.RepeatMirrorCounter > 0U)
        {
            if ((Std_ReturnType)0U == NvM_MemCpy(NvM_NvDataBuffer, NvM_CurRunning.RamAddr))
            {
                Loss = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 7U);
                if ((uint8)1U == Loss)
                {
                    NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 4U, 1U);
                }
                NvM_UpdateValidandChangeStatus(1U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);
            }
        }
        else
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);  
        }
    }
    else  
    {
        if ((Std_ReturnType)0U == NvM_MemCpy(NvM_NvDataBuffer, NvM_CurRunning.RamAddr))
        {
            Loss = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 7U);
            if ((uint8)1U == Loss)
            {
                NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 4U, 1U);
            }
            NvM_UpdateValidandChangeStatus(1U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);
        }
        else
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_REMAIN);
        }
    }
}












 
static  void NvM_SuboneInterWriteVerification(void)
{
    Std_ReturnType l_TempStatus = 0U;
    uint16 l_Counter;

    for (l_Counter = 0; l_Counter < NvM_CurRunning.VerificationSize; l_Counter++)
    {
        if (NvM_CurRunning.RamAddr[NvM_CurRunning.VerificationCounter + l_Counter]
            != NvM_NvDataBuffer[l_Counter + NvM_CurRunning.VerificationCounter])
        {
            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 9U, 0U);
            l_TempStatus = 1U;
            NvM_CurRunning.VerificationCounter = 0;
            if (NvM_CurRunning.WriteTimesCounter > 0U)
            {
                NvM_Module.JobStep = NVM_JOB_STEP_PENDING;
                NvM_SetWordBitState(
                    &NvM_CurRunning.AdminFlagGroup,
                    10U,
                    1U);  
                NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
                NvM_AtomJob.Count--;
            }
            else
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_DELETE);
            }
            break;
        }
    }
    if ((Std_ReturnType)0U == l_TempStatus)
    {
        NvM_CurRunning.VerificationCounter = NvM_CurRunning.VerificationCounter + NvM_CurRunning.VerificationSize;
    }
}












 
static  void NvM_SubtwoInterWriteVerification(void)
{
    uint16 l_Counter;
    for (l_Counter = 0; l_Counter < (NvM_CurRunning.Length - NvM_CurRunning.VerificationCounter); l_Counter++)
    {
        if (NvM_CurRunning.RamAddr[NvM_CurRunning.VerificationCounter + l_Counter]
            != NvM_NvDataBuffer[l_Counter + NvM_CurRunning.VerificationCounter])
        {
            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 9U, 0U);
            if (NvM_CurRunning.WriteTimesCounter > 0U)
            {
                NvM_Module.JobStep = NVM_JOB_STEP_PENDING;
                NvM_AtomJob.Count--;
                NvM_SetWordBitState(
                    &NvM_CurRunning.AdminFlagGroup,
                    10U,
                    1U);  
                NvM_Module.MemIfJobState = NVM_MEMIF_JOB_IDLE;
            }
            else
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_DELETE);
            }
            break;
        }
    }
    NvM_CurRunning.VerificationCounter = 0;
}












 
 void NvM_InterWriteVerification(void)
{
    MemIf_JobResultType l_ReturnValue;

    NvM_MemIfReq(NVM_MEMIF_REQ_READ);
    if ((NvM_Module.JobStep == NVM_JOB_STEP_READ_1ST_NV) || (NvM_Module.JobStep == NVM_JOB_STEP_READ_2ND_NV))
    {
        if (NVM_MEMIF_JOB_ASYNC_PENDING == NvM_Module.MemIfJobState)
        {
            l_ReturnValue = MemIf_MemHwaApis_at[NvM_CurRunning . DeviceId]. GetJobResult();
            if (MEMIF_JOB_OK == l_ReturnValue)
            {
                if ((NvM_CurRunning.VerificationCounter < NvM_CurRunning.Length)
                    && (NvM_CurRunning.VerificationSize != 0u))
                {
                    if ((NvM_CurRunning.Length - NvM_CurRunning.VerificationCounter) >= NvM_CurRunning.VerificationSize)
                    {
                        NvM_SuboneInterWriteVerification();
                    }
                    else
                    {
                        NvM_SubtwoInterWriteVerification();
                    }
                }
                else
                {
                    if (NVM_BLOCK_REDUNDANT == NvM_CurRunning.ManagementType)
                    {
                        if (NVM_JOB_STEP_READ_2ND_NV != NvM_Module.JobStep)
                        {
                            NvM_SetWordBitState(&NvM_CurRunning.AdminFlagGroup, 4U, 0U);
                        }
                        NvM_UpdateValidandChangeStatus(1U, 0U);
                        NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);
                    }
                    else
                    {
                        NvM_UpdateValidandChangeStatus(1U, 0U);
                        NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);
                    }
                }
            }
            else if (MEMIF_JOB_PENDING != l_ReturnValue)
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);
                NvM_JobOverSetFlag(NVM_REQ_NOT_OK, NVM_CRC_DELETE);  
            }
            else
            {
                 
            }
        }
    }
}












 
static  void NVM_GetRepeatMirrorOperation(void)
{
    uint8 SyncMechanism = NvM_GetWordBitState(
        NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
        (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
    if ((uint8)1U == SyncMechanism)
    {
        NvM_CurRunning.RepeatMirrorCounter = (0x5u);
    }
    else
    {
        NvM_CurRunning.RepeatMirrorCounter = 1;
    }
}












 
static  void
    NvM_WriteStaticBlockID(uint8 * Dest, NvM_BlockCRCType crctype)
{
    if (NVM_CRC_NOT_USED == crctype)
    {
        Dest[NvM_CurRunning.Length] = (uint8)(NvM_CurRunning.BlockId >> 8U);
        Dest[NvM_CurRunning.Length + 1U] = (uint8)NvM_CurRunning.BlockId;
    }
    else if (NVM_CRC8 == crctype)
    {
        Dest[NvM_CurRunning.Length + 1U] = (uint8)(NvM_CurRunning.BlockId >> 8U);
        Dest[NvM_CurRunning.Length + 2U] = (uint8)NvM_CurRunning.BlockId;
    }
    else if (NVM_CRC16 == crctype)
    {
        Dest[NvM_CurRunning.Length + 2U] = (uint8)(NvM_CurRunning.BlockId >> 8U);
        Dest[NvM_CurRunning.Length + 3U] = (uint8)NvM_CurRunning.BlockId;
    }
    else
    {
        Dest[NvM_CurRunning.Length + 4U] = (uint8)(NvM_CurRunning.BlockId >> 8U);
        Dest[NvM_CurRunning.Length + 5U] = (uint8)NvM_CurRunning.BlockId;
    }
}












 
static  void
    NvM_ReadStaticBlockID(const uint8 * Src, NvM_BlockCRCType crctype)
{
    if (NVM_CRC_NOT_USED == crctype)
    {
        NvM_CurRunning.StaticId =
            (uint16)((uint16)Src[NvM_CurRunning.Length] << 8U) | (uint16)(Src[NvM_CurRunning.Length + 1U]);
    }
    else if (NVM_CRC8 == crctype)
    {
        NvM_CurRunning.StaticId =
            (uint16)((uint16)Src[NvM_CurRunning.Length + 1U] << 8U) | (uint16)(Src[NvM_CurRunning.Length + 2U]);
    }
    else if (NVM_CRC16 == crctype)
    {
        NvM_CurRunning.StaticId =
            (uint16)((uint16)Src[NvM_CurRunning.Length + 2U] << 8U) | (uint16)(Src[NvM_CurRunning.Length + 3U]);
    }
    else
    {
        NvM_CurRunning.StaticId =
            (uint16)((uint16)Src[NvM_CurRunning.Length + 4U] << 8U) | (uint16)(Src[NvM_CurRunning.Length + 5U]);
    }
}












 
static  void
    NvM_ReadErrorHandleRedundant(NvM_CrcStaticIdStatusType CRCResult, NvM_CrcStaticIdStatusType StaticIDResult)
{
    if ((NVM_JOB_STEP_CALC_CRC_READ_1ST_NV == NvM_Module.JobStep) || (NVM_JOB_STEP_CHECK == NvM_Module.JobStep))
    {
        if (NvM_CurRunning.ReadRetryCounter > 0U)
        {
            NvM_CurRunning.ReadRetryCounter--;
            NvM_Module.JobStep = NVM_JOB_STEP_READ_1ST_NV;
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
        }
        else
        {
            NvM_CurRunning.ReadRetryCounter = NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvMMaxNumOfReadRetries;
             
            NvM_Module.JobStep = NVM_JOB_STEP_READ_2ND_NV;
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;  
            NvM_CurRunning.Index = 1;
        }
    }
    else
    {
        if (NvM_CurRunning.ReadRetryCounter > 0U)
        {
            NvM_CurRunning.ReadRetryCounter--;
            NvM_Module.JobStep = NVM_JOB_STEP_READ_2ND_NV;
            NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;
        }
        else if (
            (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
            || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback))
        {
            NvM_UpdateValidandChangeStatus(0U, 0U);  
            NvM_CurRunning.ESingleReqResult = NVM_REQ_INTEGRITY_FAILED;
            if (NVM_CRC_STATICID_NOT_OK == CRCResult)
            {
            }
            if (NVM_CRC_STATICID_NOT_OK == StaticIDResult)
            {
            }
            NVM_GetRepeatMirrorOperation();
            NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
            NvM_AtomJobReq(NVM_ATOMJOB_READROM);  
        }
        else
        {
            if (NVM_CRC_STATICID_NOT_OK == CRCResult)
            {
            }
            if (NVM_CRC_STATICID_NOT_OK == StaticIDResult)
            {
            }
            NvM_UpdateValidandChangeStatus(0U, 0U);
            NvM_JobOverSetFlag(NVM_REQ_INTEGRITY_FAILED, NVM_CRC_DELETE);
        }
    }
}












 
static  void
    NvM_ReadErrorHandle(NvM_CrcStaticIdStatusType CRCResult, NvM_CrcStaticIdStatusType StaticIDResult)
{
    if ((NVM_JOB_STEP_CHECK == NvM_Module.JobStep) || (NVM_JOB_STEP_CALC_CRC_READ_1ST_NV == NvM_Module.JobStep)
        || (NVM_JOB_STEP_CALC_CRC_READ_2ND_NV == NvM_Module.JobStep))
    {
         
        if (NVM_BLOCK_DATASET == NvM_CurRunning.ManagementType)
        {
            if (NvM_CurRunning.ReadRetryCounter > 0U)
            {
                NvM_CurRunning.ReadRetryCounter--;
                NvM_Module.JobStep = NVM_JOB_STEP_READ_1ST_NV;
                NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;  
            }
            else
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);
                if (NVM_CRC_STATICID_NOT_OK == CRCResult)
                {
                }
                if (NVM_CRC_STATICID_NOT_OK == StaticIDResult)
                {
                }
                NvM_JobOverSetFlag(NVM_REQ_INTEGRITY_FAILED, NVM_CRC_DELETE);
            }
        }
         
        else if (NVM_BLOCK_NATIVE == NvM_CurRunning.ManagementType)
        {
            if (NvM_CurRunning.ReadRetryCounter > 0U)
            {
                NvM_CurRunning.ReadRetryCounter--;
                NvM_Module.JobStep = NVM_JOB_STEP_READ_1ST_NV;
                NvM_Module.MemIfJobState = NVM_MEMIF_JOB_ASYNC_READY;  
            }
            else
            {
                NvM_UpdateValidandChangeStatus(0U, 0U);  
                NvM_CurRunning.ESingleReqResult = NVM_REQ_INTEGRITY_FAILED;
                if (NVM_CRC_STATICID_NOT_OK == CRCResult)
                {
                }
                if (NVM_CRC_STATICID_NOT_OK == StaticIDResult)
                {
                }

                if ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRomBlockDataAddress)
                    || (((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmInitBlockCallback))
                {
                    NVM_GetRepeatMirrorOperation();
                    NvM_Module.JobStep = NVM_JOB_STEP_READ_ROM;
                    NvM_AtomJobReq(NVM_ATOMJOB_READROM);  
                }
                else
                {
                    NvM_JobOverSetFlag(NVM_REQ_INTEGRITY_FAILED, NVM_CRC_DELETE);
                }
            }
        }
         
        else
        {
            NvM_ReadErrorHandleRedundant(CRCResult, StaticIDResult);
        }
    }
}












 
static  void NvM_SingleJobResultFeedBack(NvM_BlockIdType BlockId, NvM_RequestResultType Result)
{
     
    NvM_AdminBlock[BlockId - 1U].SingleReqResult = Result;
}












 
static  void NvM_MultiJobResultFeedBack(NvM_ServiceIdType ServiceId, NvM_RequestResultType Result)
{
    NvM_MultiBlockRequestType NotiServiceId = NVM_READ_ALL;
    NvM_MultiJob.ReqResult = Result;
    switch (ServiceId)
    {
    case NVM_WRITE_ALL_SERV_ID:
        NotiServiceId = NVM_WRITE_ALL;
        break;
    case NVM_VALIDATE_ALL_SERV_ID:
        NotiServiceId = NVM_VALIDATE_ALL;
        break;
    case NVM_CANCEL_WRITE_ALL_SERV_ID:
        NotiServiceId = NVM_CANCEL_WRITE_ALL;
        break;
    default:
         
        break;
    }
    if (((void *)0) != NvmMultiBlockCallback)
    {
         
        (*NvmMultiBlockCallback)(NotiServiceId, Result);
    }
}












 
 void NvM_InterValidateAll(void)
{
    uint8 Repair = NvM_GetWordBitState(NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup, 4U);
    uint8 AutoValidation;
    uint8 Valid;
    uint8 SyncMechanism;
    uint8 CalcRamBlockCrc;
    if (NVM_JOB_STEP_CALC_CRC == NvM_Module.JobStep)
    {
        if ((uint8)1U == Repair)
        {
            NvM_SetWordBitState(&NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup, 4U, 0U);
        }
        NvM_UpdateValidandChangeStatus(1U, 1U);
        NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_UPDATE);
    }
    else
    {
        AutoValidation = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_AUTOVALIDATION);
        Valid = NvM_GetWordBitState(NvM_CurRunning.AdminFlagGroup, 1U);
        SyncMechanism = NvM_GetWordBitState(
            NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
            (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        if (((uint8)1U == AutoValidation) && ((uint8)1U == Valid)
            && ((((void *)0) != NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].NvmRamBlockDataAddress)
                || ((uint8)1U == SyncMechanism)))
        {
            CalcRamBlockCrc = NvM_GetWordBitState(
                NvM_BlockDescriptor[NvM_CurRunning.BlockId - 1U].FlagGroup,
                (uint8)NVM_BLOCK_DESC_CALCRAMBLOCKCRC);
            if ((uint8)0U == CalcRamBlockCrc)
            {
                Repair =
                    NvM_GetWordBitState(NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup, 4U);
                if ((uint8)1U == Repair)
                {
                    NvM_SetWordBitState(
                        &NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].FlagGroup,
                        4U,
                        0U);
                }
                NvM_UpdateValidandChangeStatus(1U, 1U);
                NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_REMAIN);
            }
            else if (NvM_CurRunning.RepeatMirrorCounter > 0U)
            {
                if ((Std_ReturnType)0U == NvM_MemCpy(NvM_CurRunning.RamAddr, NvM_NvDataBuffer))
                {
                    NvM_CurRunning.CrcAddr = NvM_NvDataBuffer;
                     
                    NvM_Module.JobStep = NVM_JOB_STEP_CALC_CRC;
                    NvM_AtomJobReq(NVM_ATOMJOB_CALCCRC);
                }
            }
            else
            {
                NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_REMAIN);
            }
        }
        else
        {
            NvM_JobOverSetFlag(NVM_REQ_OK, NVM_CRC_REMAIN);
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
 
