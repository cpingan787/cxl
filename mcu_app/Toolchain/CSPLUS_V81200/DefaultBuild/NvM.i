











 












 

 












 












 



 






 




 






 
 




















 
 




 












 












 



 


 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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












 
 

 
static  Std_ReturnType NvM_CancelJobInQueue(NvM_BlockIdType BlockId);
static  Std_ReturnType NvM_NormalQueueSort(NvM_BlockIdType BlockId);

 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   











 
 
 void
NvM_Init(const NvM_ConfigType* ConfigPtr)
{
    uint16 l_BlockIdLoop;
    uint8 WriteProt;


    for (l_BlockIdLoop = 0; l_BlockIdLoop < (uint16)53U; l_BlockIdLoop++)
    {
        NvM_AdminBlock[l_BlockIdLoop].FlagGroup = 0;
        NvM_AdminBlock[l_BlockIdLoop].CurrentIndex = 0;  
        NvM_AdminBlock[l_BlockIdLoop].ServiceID = NVM_NONE_SERV_ID;
        NvM_AdminBlock[l_BlockIdLoop].SingleReqResult = NVM_REQ_NOT_OK;
        NvM_AdminBlock[l_BlockIdLoop].ReadReq = 0u;  

        WriteProt = NvM_GetWordBitState(NvM_BlockDescriptor[l_BlockIdLoop].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEPROT);
        if ((uint8)1U == WriteProt)
        {
            NvM_SetWordBitState(&NvM_AdminBlock[l_BlockIdLoop].FlagGroup, 3U, 1U);
        }
        else
        {
            NvM_SetWordBitState(&NvM_AdminBlock[l_BlockIdLoop].FlagGroup, 3U, 0U);
        }
    }
    NvM_Module.JobStep = NVM_JOB_STEP_IDLE;
    NvM_Module.Init = 1U;

     
    (void)ConfigPtr;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

















 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
NvM_SetBlockProtection(NvM_BlockIdType BlockId, boolean ProtectionEnabled)  
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 EnQueue;
    uint8 WriteBlockOnce;
    uint8 Locked;

    {
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        WriteBlockOnce =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
        Locked = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U);
        if ((uint8)1U == EnQueue)
        {
        }
        else if ((uint8)1U == WriteBlockOnce)
        {
        }
        else if ((uint8)1U == Locked)
        {
        }
        else
        {
            if (1u == ProtectionEnabled)
            {
                NvM_SetWordBitState(
                    &NvM_AdminBlock[BlockId - 1U].FlagGroup,
                    3U,
                    1U);  
            }
            else
            {
                NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 3U, 0U);
            }
            l_ReturnValue = 0U;
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 
 Std_ReturnType
NvM_InvalidateNvBlock(NvM_BlockIdType BlockId)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 EnQueue;
    uint8 Locked;
    uint8 WrPro;
    uint8 WriteBlockOnce;

    {
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        Locked = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U);
        WrPro = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 3U);
        WriteBlockOnce =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
        if ((uint8)1U == EnQueue)
        {
        }
        else if ((uint8)1U == Locked)
        {
        }
        else if ((uint8)1U == WrPro)
        {
        }
        else if (((uint8)1U == WriteBlockOnce) && (NvM_AdminBlock[BlockId - 1U].ReadReq == 0u))
        {
        }
        else
        {
            if ((NVM_BLOCK_DATASET != NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
                || ((NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum > NvM_AdminBlock[BlockId - 1U].CurrentIndex)
                    && (NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)))
            {
                l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_INVALIDATE_NV_BLOCK_SERV_ID, ((void *)0));
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   














 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
NvM_EraseNvBlock(NvM_BlockIdType BlockId)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 EnQueue;
    uint8 Locked;
    uint8 WrPro;
    uint8 WriteBlockOnce;

    {
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        Locked = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U);
        WrPro = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 3U);
        WriteBlockOnce =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
        if ((uint8)1U == EnQueue)
        {
        }
        else if
            (0U == 0U)

        {
        }
        else if ((uint8)1U == Locked)
        {
        }
        else if ((uint8)1U == WrPro)
        {
        }
        else if (((uint8)1U == WriteBlockOnce) && (NvM_AdminBlock[BlockId - 1U].ReadReq == 0u))
        {
        }
        else
        {
            if ((NVM_BLOCK_DATASET != NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
                || ((NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum > NvM_AdminBlock[BlockId - 1U].CurrentIndex)
                    && (NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)))
            {
                l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_ERASE_NV_BLOCK_SERV_ID, ((void *)0));
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   














 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
NvM_GetErrorStatus(NvM_BlockIdType BlockId, NvM_RequestResultType* RequestResultPtr)  
{
    Std_ReturnType l_ReturnValue = 1U;

    {
        if (0U == BlockId)
        {
             
            *RequestResultPtr = NvM_MultiJob.ReqResult;  
        }
        else
        {
             
            *RequestResultPtr = NvM_AdminBlock[BlockId - 1U].SingleReqResult;  
        }
        l_ReturnValue = 0U;
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void
NvM_SetBlockLockStatus(NvM_BlockIdType BlockId, boolean BlockLocked)
{
    uint8 EnQueue;
    uint8 SyncMechanism;
    uint8 WriteBlockOnce;
    {
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        WriteBlockOnce =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
        if ((uint8)1U == EnQueue)
        {
        }
        else if ((uint8)1U == WriteBlockOnce)
        {
        }
        else
        {
            SyncMechanism =
                NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
            if (((((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)
                 || ((uint8)1U == SyncMechanism)))
            {
                if ((boolean)1u == BlockLocked)
                {
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U, 1U);
                }
                else
                {
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U, 0U);
                }
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   















 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
NvM_SetDataIndex(NvM_BlockIdType BlockId, uint8 DataIndex)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 EnQueue;

    {
        EnQueue = NvM_GetWordBitState((NvM_AdminBlock[BlockId - 1U].FlagGroup), 0U);
        if ((uint8)1U == EnQueue)
        {
        }
        else if (
            (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum + NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockNum)
            <= DataIndex)
        {
        }
        else
        {
            if (NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
            {
                NvM_AdminBlock[BlockId - 1U].CurrentIndex = DataIndex;  
                l_ReturnValue = 0U;
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 
 Std_ReturnType
NvM_GetDataIndex(NvM_BlockIdType BlockId, uint8 * DataIndexPtr)
{
    Std_ReturnType l_ReturnValue = 1U;

    {
        if (NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
        {
            *DataIndexPtr = NvM_AdminBlock[BlockId - 1U].CurrentIndex;  
            if ((NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum + NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockNum)
                > *DataIndexPtr)
            {
                l_ReturnValue = 0U;
            }
        }
        else
        {
            *DataIndexPtr = 0;  
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 
 Std_ReturnType
NvM_ReadBlock(NvM_BlockIdType BlockId, void* NvM_DstPtr)  
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 SyncMechanism;
    uint8 EnQueue;

    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        if ((((void *)0) == NvM_DstPtr) && (((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)
            && ((uint8)0U == SyncMechanism))
        {
        }
        else if ((uint8)1U == EnQueue)  
        {
        }
        else
        {
               
            l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_READ_BLOCK_SERV_ID, (uint8*)NvM_DstPtr);
             
            if ((Std_ReturnType)0U == l_ReturnValue)
            {
                if (((((void *)0) != NvM_DstPtr)
                     && (NvM_DstPtr == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress))
                    || ((((void *)0) == NvM_DstPtr)
                        && (((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)))
                {
                    NvM_SetWordBitState(
                        &NvM_AdminBlock[BlockId - 1U].FlagGroup,
                        1U,
                        0U);  
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 2U, 0U);
                }
                NvM_AdminBlock[BlockId - 1U].ReadReq = 1u;  
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 Std_ReturnType
NvM_ReadPRAMBlock(NvM_BlockIdType BlockId)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 SyncMechanism;
    uint8 EnQueue;

    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        if (((((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)
             && ((uint8)0U == SyncMechanism)))
        {
        }
        else if ((uint8)1U == EnQueue)  
        {
        }
        else
        {
            l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_READ_PRAM_BLOCK_SERV_ID, ((void *)0));
            if ((Std_ReturnType)0U == l_ReturnValue)
            {
                NvM_AdminBlock[BlockId - 1U].ReadReq = 1u;  
                if ((uint8)0U == SyncMechanism)
                {
                     
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 1U, 0U);
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 2U, 0U);
                }
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   














 
 
   
 Std_ReturnType
NvM_WriteBlock(NvM_BlockIdType BlockId, const void* NvM_SrcPtr)
 
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 SyncMechanism;
    uint8 EnQueue;
    uint8 WrPro;
    uint8 Locked;
    uint8 WriteBlockOnce;

    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        if ((((void *)0) == NvM_SrcPtr) && (((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)
            && ((uint8)0U == SyncMechanism))
        {
        }
        else if ((uint8)1U == EnQueue)
        {
        }
        else
        {
            WrPro = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 3U);
            Locked = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U);
            WriteBlockOnce =
                NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
             
            if ((NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
                && (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum <= NvM_AdminBlock[BlockId - 1U].CurrentIndex))
            {
                   
            }
            else if ((uint8)1U == WrPro)
            {
            }
            else if ((uint8)1U == Locked)
            {
            }
            else if (((uint8)1U == WriteBlockOnce) && (NvM_AdminBlock[BlockId - 1U].ReadReq == 0u))
            {
            }
            else
            {
                   
                l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_WRITE_BLOCK_SERV_ID, (uint8*)NvM_SrcPtr);
                 
                if ((Std_ReturnType)0U == l_ReturnValue)
                {
                     
                    if (((((void *)0) != NvM_SrcPtr)
                         && (NvM_SrcPtr == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress))
                        || ((((void *)0) == NvM_SrcPtr)
                            && (((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)))
                    {
                        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 1U, 1U);
                        NvM_SetWordBitState(
                            &NvM_AdminBlock[BlockId - 1U].FlagGroup,
                            2U,
                            1U);  
                    }
                }
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
   
 Std_ReturnType
NvM_WritePRAMBlock(NvM_BlockIdType BlockId)
 
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 SyncMechanism;
    uint8 EnQueue;
    uint8 WrPro;
    uint8 Locked;
    uint8 WriteBlockOnce;

    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        Locked = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 6U);
        WriteBlockOnce =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
        if ((((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress) && ((uint8)0U == SyncMechanism))
        {
        }
        else if ((uint8)1U == EnQueue)
        {
        }
        else if ((uint8)1U == Locked)
        {
        }
        else if (((uint8)1U == WriteBlockOnce) && (NvM_AdminBlock[BlockId - 1U].ReadReq == 0u))
        {
        }
        else
        {
            WrPro = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 3U);
            if (((NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
                 && (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum <= NvM_AdminBlock[BlockId - 1U].CurrentIndex)))
            {
                   
            }
            else if ((uint8)1U == WrPro)
            {
            }
            else
            {
                l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_WRITE_PRAM_BLOCK_SERV_ID, ((void *)0));
                if ((Std_ReturnType)0U == l_ReturnValue)
                {
                    if ((uint8)0U == SyncMechanism)
                    {
                         
                        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 1U, 1U);
                        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 2U, 1U);
                    }
                }
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 
 Std_ReturnType
NvM_RestoreBlockDefaults(NvM_BlockIdType BlockId, void* NvM_DestPtr)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 SyncMechanism;
    uint8 EnQueue;

    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        if (((((void *)0) == NvM_DestPtr)
             && ((((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)
                 && ((uint8)0U == SyncMechanism))))
        {
        }
        else if (
            (((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockDataAddress)
            && (((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmInitBlockCallback))
        {
        }
        else if ((uint8)1U == EnQueue)
        {
        }
        else
        {
            if ((((NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
                  && (NvM_AdminBlock[BlockId - 1U].CurrentIndex
                      < (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum
                         + NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockNum))
                  && (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum <= NvM_AdminBlock[BlockId - 1U].CurrentIndex))
                 || (NVM_BLOCK_DATASET != NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType))
                && ((((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockDataAddress)
                    || (((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmInitBlockCallback)))
            {
                   
                l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_RESTORE_BLOCK_DEFAULTS_SERV_ID, (uint8*)NvM_DestPtr);
                 
                 
                if ((Std_ReturnType)0U == l_ReturnValue)
                {
                    if (((((void *)0) != NvM_DestPtr)
                         && (NvM_DestPtr == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress))
                        || ((((void *)0) == NvM_DestPtr)
                            && ((((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress)
                                || ((uint8)1U == SyncMechanism))))
                    {
                        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 1U, 0U);
                         
                        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 2U, 0U);
                    }
                }
            }
        }
    }
    return l_ReturnValue;
     
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 
 Std_ReturnType
NvM_RestorePRAMBlockDefaults(NvM_BlockIdType BlockId)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 SyncMechanism;
    uint8 EnQueue;

    {
        SyncMechanism =
            NvM_GetWordBitState(NvM_BlockDescriptor[BlockId - 1U].FlagGroup, (uint8)NVM_BLOCK_DESC_SYNCMECHANISM);
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        if ((((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRamBlockDataAddress) && ((uint8)0U == SyncMechanism))
        {
        }
        else if (
            (((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockDataAddress)
            && (((void *)0) == NvM_BlockDescriptor[BlockId - 1U].NvmInitBlockCallback))
        {
        }
        else if ((uint8)1U == EnQueue)
        {
        }
        else
        {
            if ((((NVM_BLOCK_DATASET == NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType)
                  && (NvM_AdminBlock[BlockId - 1U].CurrentIndex
                      < (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum
                         + NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockNum))
                  && (NvM_BlockDescriptor[BlockId - 1U].NvmNvBlockNum <= NvM_AdminBlock[BlockId - 1U].CurrentIndex))
                 || (NVM_BLOCK_DATASET != NvM_BlockDescriptor[BlockId - 1U].NvmBlockManagementType))
                && ((((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmRomBlockDataAddress)
                    || (((void *)0) != NvM_BlockDescriptor[BlockId - 1U].NvmInitBlockCallback)))
            {
                 
                l_ReturnValue = NvM_JobEnqueue(BlockId, NVM_RESTORE_PRAM_BLOCK_DEFAULTS_SERV_ID, ((void *)0));
                if ((Std_ReturnType)0U == l_ReturnValue)
                {
                     
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 1U, 0U);
                    NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 2U, 0U);
                }
            }
        }
    }
    return l_ReturnValue;
     
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   











 
 void
NvM_ValidateAll(void)
{
    {
        if ((uint8)1U != NvM_MultiJob.Enqueue)
        {
            if ((Std_ReturnType)1U == NvM_JobEnqueue(0, NVM_VALIDATE_ALL_SERV_ID, ((void *)0)))
            {
                 
            }
        }
        else
        {
            NVM_DET_REPORTRUNTIMEERROR((uint8)NVM_VALIDATE_ALL_SERV_ID, (0xA0u));
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   













 
 Std_ReturnType
NvM_CancelJobs(NvM_BlockIdType BlockId)
{
    Std_ReturnType l_ReturnValue = 1U;
    uint8 EnQueue;

    {
        EnQueue = NvM_GetWordBitState(NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U);
        if ((uint8)1U == EnQueue)
        {

            if ((Std_ReturnType)0U == NvM_CancelJobInQueue(BlockId))
            {
                l_ReturnValue = 0U;
            }
        }
    }
    return l_ReturnValue;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType NvM_CancelJobInQueue(NvM_BlockIdType BlockId)
{
    Std_ReturnType ret = 1U;
    Std_ReturnType Normalret;
    Normalret = NvM_NormalQueueSort(BlockId);
    if ((Std_ReturnType)0U == Normalret)
    {
        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U, 0U);
        if (BlockId != NvM_CurRunning.BlockId)
        {
            NvM_AdminBlock[BlockId - 1U].SingleReqResult = NVM_REQ_CANCELED;
        }
        ret = 0U;
    }
    return ret;
}

static  Std_ReturnType NvM_NormalQueueSort(NvM_BlockIdType BlockId)
{
    uint8 l_Preindex;
    uint8 l_Curindex = 0;
    uint8 l_BlockIdIndex;
    uint8 l_QueueCounter = 0;
    Std_ReturnType ret = 0U;
    boolean l_BlockFind = 0u;

    for (; l_Curindex < (0xau); l_Curindex++)
    {
        if (NvM_StandQueue[l_Curindex].BlockId == BlockId)
        {
            l_BlockIdIndex = l_Curindex;
            break;
        }
    }

    if ((0xau) <= l_Curindex)
    {
         
        NvM_SetWordBitState(&NvM_AdminBlock[BlockId - 1U].FlagGroup, 0U, 0U);
         
        NvM_AdminBlock[BlockId - 1U].SingleReqResult =
            (BlockId != NvM_CurRunning.BlockId) ? NVM_REQ_CANCELED : NvM_AdminBlock[BlockId - 1U].SingleReqResult;
        ret = 1U;
    }
    else
    {
         
        if (((0u != NvM_StandQueueManage.TailIndex) && (l_BlockIdIndex == (NvM_StandQueueManage.TailIndex - 1u)))
            || ((0u == NvM_StandQueueManage.TailIndex) && (l_BlockIdIndex == ((0xau) - 1u))))
        {
            NvM_StandQueueManage.Count--;
            if (0U < l_BlockIdIndex)
            {
                NvM_StandQueueManage.TailIndex = l_BlockIdIndex;
            }
            else
            {
                NvM_StandQueueManage.TailIndex = 0U;
            }
        }
         
        else
        {
             
            l_Curindex = NvM_StandQueueManage.HeadIndex;
            for (; l_QueueCounter < NvM_StandQueueManage.Count; l_QueueCounter++)
            {
                if (NvM_StandQueue[l_Curindex].BlockId == BlockId)
                {
                    l_Preindex = l_Curindex;
                    NvM_StandQueueManage.Count--;
                    l_BlockFind = 1u;
                    break;
                }
                l_Curindex++;
                if ((0xau) <= l_Curindex)
                {
                    l_Curindex = 0;
                }
            }
            if (l_BlockFind == 1u)
            {
                 
                for (; l_QueueCounter < NvM_StandQueueManage.Count; l_QueueCounter++)
                {
                    l_Curindex++;
                    if ((0xau) <= l_Curindex)
                    {
                        l_Curindex = 0;
                    }
                    NvM_StandQueue[l_Preindex].BlockId = NvM_StandQueue[l_Curindex].BlockId;
                    NvM_StandQueue[l_Preindex].ServiceId = NvM_StandQueue[l_Curindex].ServiceId;
                    NvM_StandQueue[l_Preindex].DestSrcPtr = NvM_StandQueue[l_Curindex].DestSrcPtr;
                    l_Preindex = l_Curindex;
                }
                if (0u == NvM_StandQueueManage.TailIndex)
                {
                    NvM_StandQueueManage.TailIndex = (0xau) - 1u;
                }
                else
                {
                    NvM_StandQueueManage.TailIndex--;
                }
            }
            else
            {
                ret = 1U;
            }
        }
    }
    return ret;
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   











 
 
 void
NvM_CancelWriteAll(void)
{
    {
        if (((uint8)1U == NvM_MultiJob.Enqueue) && (NVM_WRITE_ALL_SERV_ID == NvM_MultiJob.ServiceId))
        {
            NvM_MultiJob.CancelWriteAll = 1U;
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   











 
 
 void
NvM_ReadAll(void)
{
    {
        if ((uint8)1U != NvM_MultiJob.Enqueue)
        {
            if ((Std_ReturnType)1U == NvM_JobEnqueue(0, NVM_READ_ALL_SERV_ID, ((void *)0)))
            {
                 
            }
        }
        else
        {
            NVM_DET_REPORTRUNTIMEERROR((uint8)NVM_READ_ALL_SERV_ID, (0xA0u));
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   











 
 
 void
NvM_WriteAll(void)
{
    uint16 l_BlockIdLoop;
    boolean flag = 0u;
    uint8 WriteBlockOnce;
    {
        for (l_BlockIdLoop = 0; ((l_BlockIdLoop < (uint16)53U) && (flag == 0u)); l_BlockIdLoop++)
        {
            WriteBlockOnce =
                NvM_GetWordBitState(NvM_BlockDescriptor[l_BlockIdLoop].FlagGroup, (uint8)NVM_BLOCK_DESC_WRITEBLOCKONCE);
            if (((uint8)1U == WriteBlockOnce) && (NvM_AdminBlock[l_BlockIdLoop].ReadReq == 0u))
            {
                flag = 1u;
            }
        }
        if (flag == 0u)
        {
            if ((uint8)1U != NvM_MultiJob.Enqueue)
            {
                if ((Std_ReturnType)0U == NvM_JobEnqueue(0, NVM_WRITE_ALL_SERV_ID, ((void *)0)))
                {
                     
                }
            }
            else
            {
                NVM_DET_REPORTRUNTIMEERROR((uint8)NVM_WRITE_ALL_SERV_ID, (0xA0u));
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   










 
 void
NvM_MainFunction(void)
{
    static const NvM_VoidFuncVoidPtr NvM_InterServFuncMatrix[] = {
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        &NvM_InterReadBlock,
        &NvM_InterWriteBlock,
        &NvM_InterRestoreBlockDefaults,
        ((void *)0),
        ((void *)0),
        &NvM_InterInvalidateNvBlock,
        &NvM_InterReadAll,
        &NvM_InterWriteAll,
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        &NvM_InterReadBlock,
        &NvM_InterWriteBlock,
        &NvM_InterRestoreBlockDefaults,
        &NvM_InterValidateAll,
    };

    static const NvM_VoidFuncVoidPtr NvM_AtomJobFuncMatrix[] =
        {&NvM_InterReadBlock, &NvM_InterWriteBlock, &NvM_InterReadRom, &NvM_InterCalcCrc, &NvM_InterWriteVerification};

    if ((uint8)1U == NvM_Module.Init)
    {
         
        if (NVM_JOB_STEP_IDLE == NvM_Module.JobStep)
        {
            if ((Std_ReturnType)0U == NvM_JobDequeue())
            {
                NvM_Module.JobStep = NVM_JOB_STEP_PENDING;
                 
                if (NVM_NONE_SERV_ID <= NvM_CurRunning.ServiceId)
                {
                    NvM_Module.JobStep = NVM_JOB_STEP_IDLE;
                }
            }
        }

        if ((NVM_JOB_STEP_IDLE != NvM_Module.JobStep) && (0U == NvM_AtomJob.Count))
        {
            (*NvM_InterServFuncMatrix[NvM_CurRunning.ServiceId])();
        }

        if (0U != NvM_AtomJob.Count)
        {

            (*NvM_AtomJobFuncMatrix[NvM_AtomJob.ReqId[NvM_AtomJob.Count]])();
        }

        if ((NVM_JOB_TYPE_MULTI == NvM_Module.CurrentJobType) && (NVM_JOB_STEP_IDLE == NvM_Module.JobStep)
            && (NVM_REQ_OK != NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult)
            && (NVM_REQ_BLOCK_SKIPPED != NvM_AdminBlock[NvM_CurRunning.BlockId - 1U].SingleReqResult))
        {
            if ((NvM_CurRunning.BlockId == 1U) && (NVM_READ_ALL_SERV_ID == NvM_CurRunning.ServiceId))
            {
                NvM_CurRunning.EMultiReqResult = NVM_REQ_OK;
            }

            else
            {
                NvM_CurRunning.EMultiReqResult = NVM_REQ_NOT_OK;
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   












 
 void
NvM_JobEndNotification(void)    
{
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   












 
 void
NvM_JobErrorNotification(void)    
{
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   

 
