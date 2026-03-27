






 
 







 
 








 



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;

typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef signed long int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef signed long int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef signed long long int_fast64_t;
typedef unsigned long long uint_fast64_t;

typedef int intptr_t;
typedef unsigned int uintptr_t;

typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;

















 

 
 
typedef enum {
    CONFIG_ITEM_SVIF,
    CONFIG_ITEM_F111,
    CONFIG_ITEM_F112,
    CONFIG_ITEM_F113,
    CONFIG_ITEM_F114,
    CONFIG_ITEM_F115,
    CONFIG_ITEM_F116,
    CONFIG_ITEM_F117,
    CONFIG_ITEM_F118,
    CONFIG_ITEM_F119,
    CONFIG_ITEM_F11A,
    CONFIG_ITEM_F11B,
    CONFIG_ITEM_F11C,
    CONFIG_ITEM_F11D,
    CONFIG_ITEM_F11E,
    CONFIG_ITEM_F11F,
    CONFIG_ITEM_F120,
    CONFIG_ITEM_BOOTLOADER_SW_VERSION,
    CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER,
    CONFIG_ITEM_ECU_SERIAL_NUMBER,
    CONFIG_ITEM_ECU_HW_NUMBER,
    CONFIG_ITEM_ECU_HW_REF_NUMBER,
    CONFIG_ITEM_ECU_SW_REF_NUMBER,
    CONFIG_ITEM_ECU_APP_SW_VERSION,
    CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION,
    CONFIG_ITEM_ECU_NCF_REF_NUMBER,
    CONFIG_ITEM_ECU_INDEX_INFORMATION,
    
    CONFIG_ITEM_ECU_THIRD_APP_SW,
    
    CONFIG_ITEM_ICCID_VALUE_INT,
    CONFIG_ITEM_MODEM_SW_VERSION,
    CONFIG_ITEM_MCU_SW_VERSION,
    CONFIG_ITEM_NAD_IMEI,
    CONFIG_ITEM_NAD_SW_VERSION,
    
    
    CONFIG_ITEM_SIGNATURE_PUBLIC_KEY,
    CONFIG_ITEM_HSMID,
    CONFIG_ITEM_ENCRYPTION_ALGORITHM_FLAG,

    CONFIG_ITEM_SOFTWARE_NUMBER,
    CONFIG_ITEM_HARDWARE_NUMBER,
    CONFIG_ITEM_SOFTWARE_VERSION,



    CONFIG_ITEM_MAX
} ConfigItemType_e;
 







 
int16_t ProjectConfig_GetItemData(ConfigItemType_e itemType, uint8_t *pData, uint32_t *pLength);


 






 
static int16_t GetSVIF(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF111Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF112Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF113Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF114Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF115Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF116Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF117Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF118Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF119Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF11AData(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF11BData(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF11CData(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF11DData(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF11EData(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF11FData(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetF120Data(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetBootloaderSWVersion(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetSystemSupplierIdentifier(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuSerialNumber(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuHWNumber(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuHWRefNumber(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuSWRefNumber(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuAppSWVersion(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuCalibrationSWVersion(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuNCFRefNumber(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEcuIndexInformation(uint8_t *pVersion,uint32_t *pLength);







 








 
static int16_t GetEcuThirdAppSW(uint8_t *pVersion,uint32_t *pLength);







 








 
static int16_t GetICCIDValueInt(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetModemSWVersion(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetMcuSWVersion(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetNadIMEI(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetNadSWVersion(uint8_t *pVersion,uint32_t *pLength);

























 
static int16_t GetSignaturePublicKey(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetHSMID(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetEncryptionAlgorithmFlag(uint8_t *pVersion,uint32_t *pLength);







 
static int16_t GetSoftwareNumber(uint8_t *pData, uint32_t *pLength);







 
static int16_t GetHardwareNumber(uint8_t *pData, uint32_t *pLength);







 
static int16_t GetSoftwareVersion(uint8_t *pData, uint32_t *pLength);

int16_t ProjectConfigSetMpuVersion(const uint8_t *pMpuVersion, uint16_t versionLen);









 


 










 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;





extern	void *memcpy(void *, const void *, size_t);
extern	void *memmove(void *, const void *, size_t);
extern	char *strcpy(char *, const char *);
extern	char *strncpy(char *, const char *, size_t);

extern	char *strcat(char *, const char *);
extern	char *strncat(char *, const char *, size_t);

extern	int memcmp(const void *, const void *, size_t);
extern	int strcmp(const char *, const char *);
extern	int strncmp(const char *, const char *, size_t);

extern	void *memchr(const void *, int, size_t);
extern	char *strchr(const char *, int);
extern	size_t strcspn(const char *, const char *);
extern	char *strpbrk(const char *, const char *);
extern	char *strrchr(const char *, int);
extern	size_t strspn(const char *, const char *);
extern	char *strstr(const char *, const char *);
extern	char *strtok(char *, const char *);

extern	void *memset(void *, int, size_t);
extern	char *strerror(int);
extern	size_t strlen(const char *);














 












 
 








































































 


 












 












 

 
 

 
 




















 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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


 

 
 
 
typedef int16_t (*ConfigGetFunc_t)(uint8_t *pData, uint32_t *pLength);

 
typedef struct {
    ConfigItemType_e type;          
    ConfigGetFunc_t getFunc;        
} ConfigTableEntry_t;

 
static const uint8_t g_SVIF[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F111[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F112[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F113[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F114[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F115[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F116[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F117[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F118[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F119[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F11A[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F11B[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F11C[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F11D[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F11E[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F11F[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_F120[] = {0x00, 0x00, 0xAA, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_bootloaderSWNumber[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01};
static const uint8_t g_systemSupplierIdentifier[] = {0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_ecuSerialNumber[] = "0000000000000000";
static const uint8_t g_ecuHWNumber[] = {0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_ecuHWRefNumber[] = "0000000000";
static const uint8_t g_ecuSWRefNumber[] = "0000000000";
static const uint8_t g_ecuAppSWVersion[] = {0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_ecuCalibrationSWVersion[] = {0x00, 0x00, 0x00, 0x00, 0x00};
static const uint8_t g_ecuNCFRefNumber[] = "00000000";
static const uint8_t g_ecuIndexInformation[] = {0x00, 0x00, 0x00};

static const uint8_t g_ecuThirdAppSW[] = {0x00, 0x00, 0x00, 0x00, 0x00};

static const uint8_t g_ICCIDValueInt[] = "89860000000000000000";
static const uint8_t g_modemSWVersion[] = "112200000000000000000000";
static const uint8_t g_mcuSWVersion[] = "11220000000000000000000";
static const uint8_t g_NadIMEI[] = "869900000000000000000000";
static const uint8_t g_NadSWVersion[] = "112200";


static const uint8_t g_SignaturePublicKey[] = "00";
static const uint8_t g_HSMID[] = "000012120000000";

 
static uint8_t g_softWareNumber[] = "000000000" "001";
static const uint8_t g_hardwareNumber[] = "87H6ADE060  H.000";
static const uint8_t g_customSWVersionD[] = "8786ADE060  S.002"; 




static const ConfigTableEntry_t configTable[CONFIG_ITEM_MAX] = {
    [CONFIG_ITEM_SVIF]                        = {CONFIG_ITEM_SVIF,                        GetSVIF                           },
    [CONFIG_ITEM_F111]                        = {CONFIG_ITEM_F111,                        GetF111Data                       },
    [CONFIG_ITEM_F112]                        = {CONFIG_ITEM_F112,                        GetF112Data                       },
    [CONFIG_ITEM_F113]                        = {CONFIG_ITEM_F113,                        GetF113Data                       },
    [CONFIG_ITEM_F114]                        = {CONFIG_ITEM_F114,                        GetF114Data                       },
    [CONFIG_ITEM_F115]                        = {CONFIG_ITEM_F115,                        GetF115Data                       },
    [CONFIG_ITEM_F116]                        = {CONFIG_ITEM_F116,                        GetF116Data                       },
    [CONFIG_ITEM_F117]                        = {CONFIG_ITEM_F117,                        GetF117Data                       },
    [CONFIG_ITEM_F118]                        = {CONFIG_ITEM_F118,                        GetF118Data                       },
    [CONFIG_ITEM_F119]                        = {CONFIG_ITEM_F119,                        GetF119Data                       },
    [CONFIG_ITEM_F11A]                        = {CONFIG_ITEM_F11A,                        GetF11AData                       },
    [CONFIG_ITEM_F11B]                        = {CONFIG_ITEM_F11B,                        GetF11BData                       },
    [CONFIG_ITEM_F11C]                        = {CONFIG_ITEM_F11C,                        GetF11CData                       },
    [CONFIG_ITEM_F11D]                        = {CONFIG_ITEM_F11D,                        GetF11DData                       },
    [CONFIG_ITEM_F11E]                        = {CONFIG_ITEM_F11E,                        GetF11EData                       },
    [CONFIG_ITEM_F11F]                        = {CONFIG_ITEM_F11F,                        GetF11FData                       },
    [CONFIG_ITEM_F120]                        = {CONFIG_ITEM_F120,                        GetF120Data                       },
    [CONFIG_ITEM_BOOTLOADER_SW_VERSION]       = {CONFIG_ITEM_BOOTLOADER_SW_VERSION,       GetBootloaderSWVersion            },
    [CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER]  = {CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER,  GetSystemSupplierIdentifier       },
    [CONFIG_ITEM_ECU_SERIAL_NUMBER]           = {CONFIG_ITEM_ECU_SERIAL_NUMBER,           GetEcuSerialNumber                },
    [CONFIG_ITEM_ECU_HW_NUMBER]               = {CONFIG_ITEM_ECU_HW_NUMBER,               GetEcuHWNumber                    },
    [CONFIG_ITEM_ECU_HW_REF_NUMBER]           = {CONFIG_ITEM_ECU_HW_REF_NUMBER,           GetEcuHWRefNumber                 },
    [CONFIG_ITEM_ECU_SW_REF_NUMBER]           = {CONFIG_ITEM_ECU_SW_REF_NUMBER,           GetEcuSWRefNumber                 },
    [CONFIG_ITEM_ECU_APP_SW_VERSION]          = {CONFIG_ITEM_ECU_APP_SW_VERSION,          GetEcuAppSWVersion                },
    [CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION]  = {CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION,  GetEcuCalibrationSWVersion        },
    [CONFIG_ITEM_ECU_NCF_REF_NUMBER]          = {CONFIG_ITEM_ECU_NCF_REF_NUMBER,          GetEcuNCFRefNumber                },
    [CONFIG_ITEM_ECU_INDEX_INFORMATION]       = {CONFIG_ITEM_ECU_INDEX_INFORMATION,       GetEcuIndexInformation            },
    
    [CONFIG_ITEM_ECU_THIRD_APP_SW]            = {CONFIG_ITEM_ECU_THIRD_APP_SW,            GetEcuThirdAppSW                  },
    
    [CONFIG_ITEM_ICCID_VALUE_INT]             = {CONFIG_ITEM_ICCID_VALUE_INT,             GetICCIDValueInt                  },
    [CONFIG_ITEM_MODEM_SW_VERSION]            = {CONFIG_ITEM_MODEM_SW_VERSION,            GetModemSWVersion                 },
    [CONFIG_ITEM_MCU_SW_VERSION]              = {CONFIG_ITEM_MCU_SW_VERSION,              GetMcuSWVersion                   },
    [CONFIG_ITEM_NAD_IMEI]                    = {CONFIG_ITEM_NAD_IMEI,                    GetNadIMEI                        },
    [CONFIG_ITEM_NAD_SW_VERSION]              = {CONFIG_ITEM_NAD_SW_VERSION,              GetNadSWVersion                   },
    
    
    [CONFIG_ITEM_SIGNATURE_PUBLIC_KEY]        = {CONFIG_ITEM_SIGNATURE_PUBLIC_KEY,        GetSignaturePublicKey             },
    [CONFIG_ITEM_HSMID]                       = {CONFIG_ITEM_HSMID,                       GetHSMID                          },
    [CONFIG_ITEM_ENCRYPTION_ALGORITHM_FLAG]   = {CONFIG_ITEM_ENCRYPTION_ALGORITHM_FLAG,   GetEncryptionAlgorithmFlag        },

    [CONFIG_ITEM_SOFTWARE_NUMBER]             = {CONFIG_ITEM_SOFTWARE_NUMBER,             GetSoftwareNumber},
    [CONFIG_ITEM_HARDWARE_NUMBER]             = {CONFIG_ITEM_HARDWARE_NUMBER,             GetHardwareNumber},
    [CONFIG_ITEM_SOFTWARE_VERSION]            = {CONFIG_ITEM_SOFTWARE_VERSION,            GetSoftwareVersion},



};

 







 
int16_t ProjectConfig_GetItemData(ConfigItemType_e itemType, uint8_t *pData, uint32_t *pLength)
{
    int16_t ret = -1;
    
     
    if ((pData == ((void *) 0)) || (pLength == ((void *) 0)) || (itemType >= CONFIG_ITEM_MAX))
    {
        return -1;
    }
    
     
    ConfigGetFunc_t getFunc = configTable[itemType].getFunc;
    if (getFunc != ((void *) 0))
    {
        ret = getFunc(pData, pLength);
    }
    
    return ret;
}







 
int16_t GetSVIF(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_SVIF,sizeof(g_SVIF));
    *pLength = sizeof(g_SVIF);
    return 0;
}







 
int16_t GetF111Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F111,sizeof(g_F111));
    *pLength = sizeof(g_F111);
    return 0;
}







 
int16_t GetF112Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F112,sizeof(g_F112));
    *pLength = sizeof(g_F112);
    return 0;
}







 
int16_t GetF113Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F113,sizeof(g_F113));
    *pLength = sizeof(g_F113);
    return 0;
}







 
int16_t GetF114Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F114,sizeof(g_F114));
    *pLength = sizeof(g_F114);
    return 0;
}







 
int16_t GetF115Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F115,sizeof(g_F115));
    *pLength = sizeof(g_F115);
    return 0;
}







 
int16_t GetF116Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F116,sizeof(g_F116));
    *pLength = sizeof(g_F116);
    return 0;
}







 
int16_t GetF117Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F117,sizeof(g_F117));
    *pLength = sizeof(g_F117);
    return 0;
}







 
int16_t GetF118Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F118,sizeof(g_F118));
    *pLength = sizeof(g_F118);
    return 0;
}







 
int16_t GetF119Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F119,sizeof(g_F119));
    *pLength = sizeof(g_F119);
    return 0;
}







 
int16_t GetF11AData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F11A,sizeof(g_F11A));
    *pLength = sizeof(g_F11A);
    return 0;
}







 
int16_t GetF11BData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F11B,sizeof(g_F11B));
    *pLength = sizeof(g_F11B);
    return 0;
}







 
int16_t GetF11CData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F11C,sizeof(g_F11C));
    *pLength = sizeof(g_F11C);
    return 0;
}







 
int16_t GetF11DData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F11D,sizeof(g_F11D));
    *pLength = sizeof(g_F11D);
    return 0;
}







 
int16_t GetF11EData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F11E,sizeof(g_F11E));
    *pLength = sizeof(g_F11E);
    return 0;
}







 
int16_t GetF11FData(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F11F,sizeof(g_F11F));
    *pLength = sizeof(g_F11F);
    return 0;
}







 
int16_t GetF120Data(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_F120,sizeof(g_F120));
    *pLength = sizeof(g_F120);
    return 0;
}







 
int16_t GetBootloaderSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_bootloaderSWNumber,sizeof(g_bootloaderSWNumber));
    *pLength = sizeof(g_bootloaderSWNumber);
    return 0;
}







 
int16_t GetSystemSupplierIdentifier(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_systemSupplierIdentifier,sizeof(g_systemSupplierIdentifier));
    *pLength = sizeof(g_systemSupplierIdentifier);
    return 0;
}







 
int16_t GetEcuSerialNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuSerialNumber,sizeof(g_ecuSerialNumber));
    *pLength = sizeof(g_ecuSerialNumber) - 1;
    return 0;
}







 
int16_t GetEcuHWNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuHWNumber,sizeof(g_ecuHWNumber));
    *pLength = sizeof(g_ecuHWNumber);
    return 0;
}







 
int16_t GetEcuHWRefNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuHWRefNumber,sizeof(g_ecuHWRefNumber));
    *pLength = sizeof(g_ecuHWRefNumber) - 1;
    return 0;
}







 
int16_t GetEcuSWRefNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuSWRefNumber,sizeof(g_ecuSWRefNumber));
    *pLength = sizeof(g_ecuSWRefNumber) - 1;
    return 0;
}







 
int16_t GetEcuAppSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuAppSWVersion,sizeof(g_ecuAppSWVersion));
    *pLength = sizeof(g_ecuAppSWVersion);
    return 0;
}







 
int16_t GetEcuCalibrationSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuCalibrationSWVersion,sizeof(g_ecuCalibrationSWVersion));
    *pLength = sizeof(g_ecuCalibrationSWVersion);
    return 0;
}







 
int16_t GetEcuNCFRefNumber(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuNCFRefNumber,sizeof(g_ecuNCFRefNumber));
    *pLength = sizeof(g_ecuNCFRefNumber) - 1;
    return 0;
}







 
int16_t GetEcuIndexInformation(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuIndexInformation,sizeof(g_ecuIndexInformation));
    *pLength = sizeof(g_ecuIndexInformation);
    return 0;
}







 

















 
int16_t GetEcuThirdAppSW(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ecuThirdAppSW,sizeof(g_ecuThirdAppSW));
    *pLength = sizeof(g_ecuThirdAppSW);
    return 0;
}







 

















 
int16_t GetICCIDValueInt(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_ICCIDValueInt,sizeof(g_ICCIDValueInt));
    *pLength = sizeof(g_ICCIDValueInt) - 1;
    return 0;
}







 
int16_t GetModemSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_modemSWVersion,sizeof(g_modemSWVersion));
    *pLength = sizeof(g_modemSWVersion) - 1;
    return 0;
}







 
int16_t GetMcuSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_mcuSWVersion,sizeof(g_mcuSWVersion));
    *pLength = sizeof(g_mcuSWVersion) - 1;
    return 0;
}







 
int16_t GetNadIMEI(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_NadIMEI,sizeof(g_NadIMEI));
    *pLength = sizeof(g_NadIMEI) - 1;
    return 0;
}







 
int16_t GetNadSWVersion(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_NadSWVersion,sizeof(g_NadSWVersion));
    *pLength = sizeof(g_NadSWVersion) - 1;
    return 0;
}











































 
int16_t GetSignaturePublicKey(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_SignaturePublicKey,sizeof(g_SignaturePublicKey));
    *pLength = sizeof(g_SignaturePublicKey) - 1;
    return 0;
}







 
int16_t GetHSMID(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }
    memcpy(pVersion,g_HSMID,sizeof(g_HSMID));
    *pLength = sizeof(g_HSMID) - 1;
    return 0;
}







 
int16_t GetEncryptionAlgorithmFlag(uint8_t *pVersion,uint32_t *pLength)
{
    if(pVersion == ((void *) 0) || pLength == ((void *) 0))
    {
        return -1;
    }

    if(NvM_ReadBlock(10U,NvMBlockRamBuffer10) == 1U)
    {
        return -1;
    }

    if(NvMBlockRamBuffer10[31] == 0x00)
    {
        pVersion[0] = 0x02;
    }
    else
    {
        pVersion[0] = 0x01;
    }
    *pLength = 1;
    
    return 0;
}







 
static int16_t GetSoftwareNumber(uint8_t *pData, uint32_t *pLength)
{

         
    memcpy(pData, g_softWareNumber, sizeof(g_softWareNumber));
    *pLength = sizeof(g_softWareNumber) - 1;
    
    return 0;
}







 
static int16_t GetHardwareNumber(uint8_t *pData, uint32_t *pLength)
{
    if ((pData == ((void *) 0)) || (pLength == ((void *) 0)))
    {
        return -1;
    }
    
    memcpy(pData, g_hardwareNumber, sizeof(g_hardwareNumber));
    *pLength = sizeof(g_hardwareNumber) - 1;
    
    return 0;
}







 
static int16_t GetSoftwareVersion(uint8_t *pData, uint32_t *pLength)
{
    if ((pData == ((void *) 0)) || (pLength == ((void *) 0)))
    {
        return -1;
    }
    
    memcpy(pData, g_customSWVersionD, sizeof(g_customSWVersionD));
    *pLength = sizeof(g_customSWVersionD) - 1;
    
    return 0;
}






 
int16_t ProjectConfigSetMpuVersion(const uint8_t *pMpuVersion, uint16_t versionLen)
{
    int16_t result = 0;
    uint8_t mpuVersionLen = strlen((const char *)"000000000");
    uint8_t mcuVersionLen = strlen((const char *)"001");
    uint8_t totalVersionLen = mpuVersionLen + mcuVersionLen;

    
    if (pMpuVersion == ((void *) 0) || versionLen != totalVersionLen)
    {
        result = -1;
    }
    else
    {
        
        memcpy(g_softWareNumber, pMpuVersion, mpuVersionLen);

        
        memcpy(g_softWareNumber + mpuVersionLen, "001", mcuVersionLen + 1); 
    }

    return result;
}
