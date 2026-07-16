



























 


 

 



























 


 











 






















 

 







 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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

 







 

 

 



extern uint8 CanTp_MainState;  


 




extern void CanTp_Init(const CanTp_ConfigType *CfgPtr);

extern void CanTp_MainFunction(void);  
extern Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr);




 



























 


 



 
extern volatile uint16 Comm_MainTick;


 
extern void CommF_DataCopy(void * des, void * src,uint32 srcSize);
extern uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length);
extern void CommF_DataSet(void * des, uint8 src,uint32 desSize);
extern uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length);
extern void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue);




























 


 


 



























 


 
 



























 


 



 
 
 
































 


 
 
 
 
 
 

 

 

 

 

 

 

 

 


 


 

 

 

 

 



 



 
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


 



























 


 
 



























 


 


 



 
typedef struct
{
    uint8    memType;
    uint32   sBlockAddr;
    uint32   eBlockAddr;
    uint32   BlockSize;
}
MemM_LBInfo_t;

typedef struct
{
    uint8          flagDrv;
    uint32         flagAddr;
    uint32         flagSize;
    uint32         flagData;
} MemM_FlagInfo_t;


 
extern uint8 MemM_LBIdGet(uint32 tagAddr,uint32 tagSize);

 





 


 

typedef struct
{
    uint8              DrvType;          
    uint16             Did;
    uint16             Size;
    uint8              RW_Permission;    
    uint32             Addr;             
}DIDInfo_t;



 





 
extern uint8 WriteDataF198[((uint16)0x0BU)];
extern uint8 WriteDataF187[((uint16)0x05U)];
extern uint8 WriteDataF18A[((uint16)0x05U)];
extern const DIDInfo_t DID_Infos[0x2FU];



 
extern void DID_Init(void);
extern Std_ReturnType DID_Write(uint8 * buf, const DIDInfo_t * ProdInfo);
extern Std_ReturnType DID_Read(uint8 * buf, const DIDInfo_t *  ProdInfo);




 
 















 



 

 






 



 

enum USERDATA_BLOCK0
{
    BLOCK_ID_IDX = 0,
    REPROGRAM_ADDR_IDX = BLOCK_ID_IDX + 2,
    RESET_ADDR_IDX = REPROGRAM_ADDR_IDX + 0x04u,
    SECURITY_ADDR_IDX = RESET_ADDR_IDX + 0x04u,
    NEGATIVERES_ADDR_IDX = SECURITY_ADDR_IDX + 0x04u,
    ALLOW_F187_WRITE_IDX = NEGATIVERES_ADDR_IDX + 0x04u,
    ALLOW_F190_WRITE_IDX = ALLOW_F187_WRITE_IDX + 0x01u,
    PROGRAM_CNT_ADDR_IDX = ALLOW_F190_WRITE_IDX + 0x01u,
    DID_F100_ADDR_IDX = PROGRAM_CNT_ADDR_IDX + 0x02U,
    DID_F110_ADDR_IDX = DID_F100_ADDR_IDX + ((uint16)0x06U),
    DID_F111_ADDR_IDX = DID_F110_ADDR_IDX + ((uint16)0x10U),
    DID_F112_ADDR_IDX = DID_F111_ADDR_IDX + ((uint16)0x10U),
    DID_F113_ADDR_IDX = DID_F112_ADDR_IDX + ((uint16)0x10U),
    DID_F114_ADDR_IDX = DID_F113_ADDR_IDX + ((uint16)0x10U),   
    DID_F115_ADDR_IDX = DID_F114_ADDR_IDX + ((uint16)0x10U),
    DID_F116_ADDR_IDX = DID_F115_ADDR_IDX + ((uint16)0x10U),
    DID_F117_ADDR_IDX = DID_F116_ADDR_IDX + ((uint16)0x10U),
    DID_F118_ADDR_IDX = DID_F117_ADDR_IDX + ((uint16)0x10U),
    DID_F119_ADDR_IDX = DID_F118_ADDR_IDX + ((uint16)0x10U),
    DID_F11A_ADDR_IDX = DID_F119_ADDR_IDX + ((uint16)0x10U),
    DID_F11B_ADDR_IDX = DID_F11A_ADDR_IDX + ((uint16)0x10U),
    DID_F11C_ADDR_IDX = DID_F11B_ADDR_IDX + ((uint16)0x10U),
    DID_F11D_ADDR_IDX = DID_F11C_ADDR_IDX + ((uint16)0x10U),
    DID_F11E_ADDR_IDX = DID_F11D_ADDR_IDX + ((uint16)0x10U), 
    DID_F11F_ADDR_IDX = DID_F11E_ADDR_IDX + ((uint16)0x10U),
    DID_F120_ADDR_IDX = DID_F11F_ADDR_IDX + ((uint16)0x10U),
    DID_F121_ADDR_IDX = DID_F120_ADDR_IDX + ((uint16)0x10U),
    DID_F183_ADDR_IDX = DID_F121_ADDR_IDX + ((uint16)0x10U),
    DID_F187_ADDR_IDX = DID_F183_ADDR_IDX + ((uint16)0x0AU),
    DID_F18A_ADDR_IDX = DID_F187_ADDR_IDX + ((uint16)0x05U),
    DID_F18B_ADDR_IDX = DID_F18A_ADDR_IDX + ((uint16)0x05U),
    DID_F18C_ADDR_IDX = DID_F18B_ADDR_IDX + ((uint16)0x03U),
    DID_F190_ADDR_IDX = DID_F18C_ADDR_IDX + ((uint16)0x10U),
    DID_F191_ADDR_IDX = DID_F190_ADDR_IDX + ((uint16)0x11U),
    DID_F192_ADDR_IDX = DID_F191_ADDR_IDX + ((uint16)0x05U),
    DID_F194_ADDR_IDX = DID_F192_ADDR_IDX + ((uint16)0x0AU),
    DID_F198_ADDR_IDX = DID_F194_ADDR_IDX + ((uint16)0x0AU),
    DID_F1A0_ADDR_IDX = DID_F198_ADDR_IDX + ((uint16)0x0BU),
    DID_F1A1_ADDR_IDX = DID_F1A0_ADDR_IDX + ((uint16)0x05U),
    DID_F1A2_ADDR_IDX = DID_F1A1_ADDR_IDX + ((uint16)0x05U),
    DID_F1A5_ADDR_IDX = DID_F1A2_ADDR_IDX + ((uint16)0x08U),
    DID_F1A8_ADDR_IDX = DID_F1A5_ADDR_IDX + ((uint16)0x03U),
    DID_F1A9_ADDR_IDX = DID_F1A8_ADDR_IDX + ((uint16)0x14U),
    DID_F1AA_ADDR_IDX = DID_F1A9_ADDR_IDX + ((uint16)0x05U),
    DID_F130_ADDR_IDX = DID_F1AA_ADDR_IDX + ((uint16)0x05U),
    DID_F1B5_ADDR_IDX = DID_F130_ADDR_IDX + ((uint16)0x20U),
    DID_F1B6_ADDR_IDX = DID_F1B5_ADDR_IDX + ((uint16)0x05U),
    DID_AFF1_ADDR_IDX = DID_F1B6_ADDR_IDX + ((uint16)0x05U),
    DID_AFF2_ADDR_IDX = DID_AFF1_ADDR_IDX + ((uint16)0x1CAU),
    DID_AFF5_ADDR_IDX = DID_AFF2_ADDR_IDX + ((uint16)0x01U),
    DID_AFFC_ADDR_IDX = DID_AFF5_ADDR_IDX + ((uint16)0x01U),
    DID_AFFD_ADDR_IDX = DID_AFFC_ADDR_IDX + ((uint16)0x02U),
    DID_AFFE_ADDR_IDX = DID_AFFD_ADDR_IDX + ((uint16)0x01U),
    DID_AFFF_ADDR_IDX = DID_AFFE_ADDR_IDX + ((uint16)0x01U),
    VSN_ADDR_IDX = DID_AFFF_ADDR_IDX + ((uint16)0x01U),
    VSN_ACTIVE_FLAG_IDX = VSN_ADDR_IDX + 0x20U,
    ALG_FLAG_IDX = VSN_ACTIVE_FLAG_IDX + 0x01U,
    SM4_KEY_IDX = ALG_FLAG_IDX + 0x01U,
    SM4_KEY_ACTIVE_FLAG_IDX = SM4_KEY_IDX + 0x20U,
    SM2_KEY_IDX = SM4_KEY_ACTIVE_FLAG_IDX + 0x01U,
    ECC256_KEY_IDX = SM2_KEY_IDX + 0x41U,
};



 
extern MemM_LBInfo_t       g_logicalBlocks[0x02u];
extern MemM_FlagInfo_t     g_FlagsInfo[0x0AU];






























 


 



 
 


 
typedef struct
{
    uint32   sAddr;
    uint32   size;
} DownSeg_t;


 
extern uint8 g_DownSegIdx;
extern uint8 g_CurLogicalBlockId;
extern DownSeg_t g_DownSeg[((uint8)20U)];
extern uint32 g_CrcAddrEnd[2];
extern uint8 g_DownBlockEnd[2];
extern uint8 g_DownBlockIdx;
extern uint16 Adc_VoltageValue;


 

extern void   ADC_Update_Value(void);
extern void   Diag_WdgFeed(void);
extern void   Diag_NRC78Send(void);
extern uint8  Diag_FlagRead(uint8 flagId, uint8* ReadData);
extern uint8  Diag_FlagCompare(uint8 flagId);
extern uint32 Diag_GetAddrFlagVal(uint8 flagId);
extern uint8  Diag_FlagWrite(uint8 flagId, uint8* WriteData);
extern uint8  Diag_FlagClear(uint8 flagId);
extern void   APPAddr_Init(void);





























 


 


 


 
extern Std_ReturnType RequestDownload(uint32 addr, uint32 size);





























 


 


 


 
extern uint8 TransData_WriteMemory(uint32 addr, uint32 size, uint8 * buf);
extern void TransData_ClrSequenceBuffer(void);
extern void TransData_Copy2SequenceBuffer(uint8 * data);
extern uint8 TransData_CheckSequenceBuffer(uint8 * data);





























 


 


 


 
extern void ResetService_EcuReset(uint8 type);





























 



 


 


 



 
extern uint8 g_DownBlockStart[2];

extern uint8 RC_EraseMem_Preprocess(uint8* buf, uint16 len);
extern uint8 RC_EraseMemory(void);
extern uint8 RC_ChecksumVerify(uint8* crcValue);
extern uint8 RC_CheckDependency(void);
extern uint8 RC_ActivationAndRollback(void);
extern uint8 RC_CheckSVN (void);





























 


 


 


 
extern Std_ReturnType Calculate36blockCRC16(uint8 * checksum);





 










 



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


















 
typedef struct {
    uint8_t certificateFormat;     
    uint8_t productModuleNumber[8];   
    uint8_t customParameters[16];     
    uint8_t certificateExpiryDate[3];  
    uint32_t certificateSerialNumber;  
    uint8_t signatureAlgorithm;    
    uint8_t publicKeyCurveParameter;  
    uint8_t hashAlgorithm;         
    uint8_t rootKeyIndex;          
    uint8_t signatureCertificatePublicKey[64];  
    uint8_t certificateSignature[64];  
} SignerInfoType;








 

 
typedef struct {
     
    uint16_t ModuleID;       
    
     
    uint16_t NBID;

     
    uint16_t moduleCount;   
} SignatureHeaderPrefixType;

 
typedef struct {
    uint32_t startAddress;   
    uint32_t length;         
} ModuleAddressInfoType;

 
typedef struct {
     
    SignerInfoType SignerInfoNational;
    
     
    uint8_t MessageDigestNational[32];
    
     
    uint8_t SignatureNational[64];
    
     
    SignerInfoType SignerInfoInternational;
    
     
    uint8_t MessageDigestInternational[32];
    
     
    uint8_t SignatureInternational[64];
} SignatureHeaderSuffixType;




 
typedef struct {
     
    SignatureHeaderPrefixType *pPrefix;
    
     
    ModuleAddressInfoType *pModuleAddressInfo;
    
     
    SignatureHeaderSuffixType *pSuffix;
} SignatureHeaderType;

 

 

 

 

 

 

 

 

 

 

 
extern SignatureHeaderType g_pSignatureHeader;

 
extern uint32_t ModuleAddressInfoSize;






 
extern uint8_t g_cryptoTypeFlag;




 
uint8_t SignatureHeader_Init(void);





























 


 


 



 
extern uint8 g_SA_FAC;
extern uint8 g_SA_FAC_Last;
extern uint16 g_SA_DelayTimer;


 
extern void SecurityAccess_SeedGet(uint8 IsSame, uint8 * buf);
extern Std_ReturnType SecurityAccess_KeyVerify( uint8 * key,uint8 Level);


 



 
 
static uint8 Dcm_SduBuffer[(((uint16)0x0402U) + 0x10U)];
static uint8                  Dcm_NegativeResCode;
static uint16                 Dcm_ReqDataIndex;
static uint16                 Dcm_ResDataIndex;
static uint16                 Dcm_ReqDataLength;
static uint16                 Dcm_ResDataLength;
static uint16                 TransDataBlockSeqCounter;
static uint16                 TransDataTotalNumofBlock;
static uint16                 TransDataLastBlockSize;
static uint32         TransDataNumofTransmittedData;
static uint32      ProgramStartAddr;   
static uint32         ProgramMemorySize;
uint8             Dcm_ResponseFlag;
PduInfoType  Dcm_TxSduInfo;
 
uint8             gDCM_FunReq_Flag;
uint8             Dcm_S3TimerStartFlag;
uint16            Dcm_S3Timer;
uint8             Dcm_P2TimerStartFlag;
uint16            Dcm_P2Timer;
DcmState_t       DcmState;
uint8        	 ServerIdPost ;
uint8        	 ServerPostCount;
uint16           CurrentProgramCnt;


 

static void Dsd_SuppressPositiveResponse(void);
static void Dsd_ProcessingDone( PduLengthType dataLength );
static void Dsp_DiagnosticSessionControl(void);
static void Dsp_EcuReset(void);
static void Dsp_ReadDataByIdentifier(void);
static void Dsp_SecurityAccess(void);
static void Dsp_SA_SeedProcess(void);
static void Dsp_SA_KeyProcess(void);
static void Dsp_CommunicationControl(void);
static void Dsp_WriteDataByIdentifier(void);
static void Dsp_RoutineControl(void);
static void Dsp_RC_CheckProgrammingPreConditions(void);
static void Dsp_RC_EraseMemory(void);
static void Dsp_RC_CheckProgrammingIntegrity(void);
static void Dsp_RC_CheckProgrammingDependencies(void);
static void Dsp_RequestDownload(void);
static uint8 Dsp_RD_SequenceCheck(void);
static void Dsp_TransferData(void);
static uint8 Dsp_TD_BlockSequenceProsess(void);
static void Dsp_RequestTransferExit(void);
static void Dsp_TesterPresent(void);
static void Dsp_ControlDTCSetting(void);
static void Dcm_ClearState(void) ;


 















 
static void Dcm_ClearState(void)
{
    uint8 i;
    for(i = 0 ; i < 4 ; i++)
    {
        DcmState.u8_arr[i] = 0;
    }
}
















 
void Dcm_Init(void)
{
    Dcm_ClearState();
    (DcmState . State . Session = ((uint8)0x01U));
    (Dcm_NegativeResCode = ((uint8)0x00u));     
    (Dcm_P2TimerStartFlag = 0U);
    (Dcm_S3TimerStartFlag = 0);
    (Dcm_ResponseFlag = 0);
    Dcm_ResDataIndex = 0;
    Dcm_ReqDataIndex = 0;
    Dcm_ResDataLength = 0;
    gDCM_FunReq_Flag = 0;

    g_CurLogicalBlockId = ((uint8)0xFFU);
    g_DownSegIdx = 0;
    g_DownBlockIdx = 0;
    ServerIdPost = 0xFF ;
    ServerPostCount = 0 ;
    EEIf_Read(PROGRAM_CNT_ADDR_IDX, 0x02U, &CurrentProgramCnt);
    (void)Diag_FlagRead(0x05u,(uint8*)&g_SA_FAC_Last);
    g_SA_FAC = g_SA_FAC_Last;
    (g_SA_DelayTimer = Comm_MainTick);
}

















 
void Dcm_MainFunction( void )
{
     
   if ((DcmState . State . ReceivedRequset == 1U))
   {
        
        (DcmState . State . ServiceInProgress = 1);
         
        (DcmState . State . ReceivedRequset = 0);
         
        (Dcm_NegativeResCode = ((uint8)0x00u));
         
        (Dcm_ResponseFlag = 0);

         
        switch (Dcm_SduBuffer[((uint8)0x00u)])
        {
            case ((uint8)0x10U):
                Dsd_SuppressPositiveResponse();
                Dsp_DiagnosticSessionControl();
                break;

            case ((uint8)0x11U):
                Dsd_SuppressPositiveResponse();
                Dsp_EcuReset();
                break;
            case ((uint8)0x27U):
                Dsp_SecurityAccess();
                break;
            case ((uint8)0x28U):
                Dsd_SuppressPositiveResponse();
                Dsp_CommunicationControl();
                break;
 
            case ((uint8)0x31U):
                Dsd_SuppressPositiveResponse();
                Dsp_RoutineControl();
                break;
                
            case ((uint8)0x34U):
                Dsp_RequestDownload();
                break;

            case ((uint8)0x36U):
                Dsp_TransferData();
                break;

            case ((uint8)0x37U):
                Dsp_RequestTransferExit();
                break;
                
            case ((uint8)0x3EU):
                Dsd_SuppressPositiveResponse();
                Dsp_TesterPresent();
                break;
                
            case ((uint8)0x85U):
                Dsd_SuppressPositiveResponse();
                Dsp_ControlDTCSetting();
                break;

            case ((uint8)0x2EU):
                Dsp_WriteDataByIdentifier();
                break;

            case ((uint8)0x22U):
                Dsp_ReadDataByIdentifier();
                break;
            default:
                (Dcm_NegativeResCode = (((uint8)0x11u)));

                break;
        }
        
        if (((Dcm_NegativeResCode) != ((uint8)0x00u))||((Dcm_ResponseFlag == 1U)))
        {
            Dsd_ProcessingDone((uint16)0U);
        }
        
        (DcmState . State . FunctionalRequest = 0);
        (DcmState . State . ServiceInProgress = 0);
    }
}

















 
void Dcm_MainFunction_Post( void )
{
     
	if(ServerIdPost != 0xFF)
	{
		if(ServerPostCount > 1)
		{
			switch (ServerIdPost)
			{
				case ((uint8)0x10U):
					  ResetService_EcuReset(0x10U);
					   break;
				case ((uint8)0x11U):
					   ResetService_EcuReset(0x10U);
					   break;
				case ((uint8)0x27U):
					   break;
				   case ((uint8)0x28U):
					   break;

				   case ((uint8)0x31U):
					   break;

				   case ((uint8)0x34U):
					   break;

				   case ((uint8)0x36U):
					   break;

				   case ((uint8)0x37U):
					   break;

				   case ((uint8)0x3EU):
					   break;

				   case ((uint8)0x85U):
					   break;

				   case ((uint8)0x2EU):
					   break;

				   case ((uint8)0x22U):
					   break;
				   default:

					   break;
			   }
			   ServerIdPost = 0xFF;
		}
		ServerPostCount ++ ;
	}
}

















 
void Dcm_TimerFunction(void)
{
    uint16 S3Timeout;
    uint16 SATimeout;

    
    if(g_SA_FAC >= (2U))
    {
        CommF_GetElapsedValue(&g_SA_DelayTimer, &SATimeout);
        if(SATimeout >= (10000U))
        {
            g_SA_FAC = (2U) - 1U;
            Diag_FlagWrite(0x05u, (uint8*)&g_SA_FAC);
        }
    }
    if((Dcm_S3TimerStartFlag == 1U))
    {
        CommF_GetElapsedValue(&Dcm_S3Timer, &S3Timeout);
        if(S3Timeout >= ((5000U)/(1U)))
        {
            (Dcm_S3TimerStartFlag = 0);
            (DcmState . State . Session = ((uint8)0x03U));
            
            
            Dcm_ClearState();
             
            ResetService_EcuReset(0x10U);
        }
    }
}


























 
BufReq_ReturnType Dcm_StartOfReception(PduIdType id, const PduInfoType* info, PduLengthType TpSduLength, PduLengthType* bufferSizePtr)
{
    BufReq_ReturnType BufReq_Return=BUFREQ_OK;

    {if((id) != 0U) { }};
    {if((info) != ((void *)0)) { }};

    if((DcmState . State . ReceivedRequset == 1U)||(DcmState . State . ServiceInProgress == 1U)  
       ||((!(Dcm_S3TimerStartFlag == 1U))&&((gDCM_FunReq_Flag == 1U))
       &&(((DcmState . State . Session) == ((uint8)0x02U))
       ||((DcmState . State . Session) == ((uint8)0x03U)))))
    {
        BufReq_Return=BUFREQ_E_NOT_OK;
    }
    else
    {
        if(TpSduLength > (((uint16)0x0402U) + 0x10U))
        {
            BufReq_Return=BUFREQ_E_OVFL;
        }
        else
        {
            Dcm_ReqDataIndex=0;
            Dcm_ReqDataLength=TpSduLength;
            if(((DcmState . State . Session) == ((uint8)0x02U))||
                ((DcmState . State . Session) == ((uint8)0x03U)))
            
            {
                (Dcm_S3TimerStartFlag = 0);
            }
            *bufferSizePtr = (((uint16)0x0402U) + 0x10U);
        }
    }
    return BufReq_Return;
}





















 
BufReq_ReturnType Dcm_CopyRxData(PduIdType id, const PduInfoType *info, PduLengthType* bufferSizePtr)
{
    uint8 i;
    BufReq_ReturnType BufReq_Return=BUFREQ_OK;

    {if((id) != 0U) { }};

    if((DcmState . State . ReceivedRequset == 1U)||(DcmState . State . ServiceInProgress == 1U))  
    {
        BufReq_Return=BUFREQ_E_BUSY;
    }
    else
    {
        for(i=0;i<info->SduLength;i++)
        {
           Dcm_SduBuffer[(PduLengthType)(Dcm_ReqDataIndex+i)]=info->SduDataPtr[i];
        }
        Dcm_ReqDataIndex += info->SduLength;
        *bufferSizePtr = (((uint16)0x0402U) + 0x10U) - info->SduLength;
    }
    return  BufReq_Return;
}





















 
void Dcm_RxIndication(PduIdType id, Std_ReturnType Result)
{
    {if((id) != 0U) { }};

    if(Result == 0x00)
    {
        if((gDCM_FunReq_Flag == 1U))
        {
            (gDCM_FunReq_Flag = 0x00);
            Dcm_FuncRxIndication();
        }
        else
        {
            (Dcm_NegativeResCode = ((uint8)0x00u));
            (Dcm_P2Timer = Comm_MainTick);
            (Dcm_P2TimerStartFlag = 1U);
            (DcmState . State . ReceivedRequset = 1);
        }
    }
    else
    {
        (DcmState . State . ReceivedRequset = 0);
        Dcm_ResDataIndex=0;
        Dcm_ReqDataIndex=0;
        CanTp_Init(((void *)0));
         
        if (((DcmState . State . Session) == ((uint8)0x02U))||
            ((DcmState . State . Session) == ((uint8)0x03U)))
        {
            (Dcm_S3TimerStartFlag = 1);
            (Dcm_S3Timer = Comm_MainTick);
        }
    }

}
















 
void Dcm_FuncRxIndication(void)
{
    if (!(DcmState . State . ServiceInProgress == 1U))
    {
        (Dcm_NegativeResCode = ((uint8)0x00u));
        (Dcm_P2Timer = Comm_MainTick);
        (Dcm_P2TimerStartFlag = 1U);
        (DcmState . State . ReceivedRequset = 1);
        (DcmState . State . FunctionalRequest = 1);
    }
}





















 
void Dcm_TxConfirmation(PduIdType id, Std_ReturnType Result)
{
    {if((id) != 0U) { }};

    switch(Result)
    {
       case 0x00:  
       {
           (DcmState . State . ServiceInProgress = 0);
           Dcm_ResDataIndex=0;
           if((!(DcmState . State . RcrRpInProgress == 1U))&&
           (((DcmState . State . Session) == ((uint8)0x02U))||
           ((DcmState . State . Session)== ((uint8)0x03U))))
           {
               (Dcm_S3TimerStartFlag = 1);
               (Dcm_S3Timer = Comm_MainTick);
           }
       }
       break;
       case 0x01:
       case 0x02:
       case 0x03:
       case 0x0A:
       case 0x06:
       {
           (DcmState . State . ServiceInProgress = 0);
           Dcm_ResDataIndex=0;
           CanTp_Init(((void *)0));

           if (((DcmState . State . Session) = ((uint8)0x02U))||
           ((DcmState . State . Session) == ((uint8)0x03U)))
           {
               (Dcm_S3TimerStartFlag = 1);
               (Dcm_S3Timer = Comm_MainTick);
           }
       }
       break;
       default:

       break;
   }
}


























 
BufReq_ReturnType Dcm_CopyTxData(PduIdType id, const PduInfoType *info, const RetryInfoType* retry, PduLengthType* availableDataPtr)
{
    uint8 i;

    {if((id) != 0U) { }};
    {if((retry) != ((void *)0)) { }};

    for(i=0;i<info->SduLength;i++)
    {
        info->SduDataPtr[i] = Dcm_SduBuffer[(PduLengthType)(Dcm_ResDataIndex+i)];
    }
    Dcm_ResDataIndex+=info->SduLength;

    *availableDataPtr = Dcm_TxSduInfo.SduLength;

    return BUFREQ_OK;
}
















 
static void Dsd_SuppressPositiveResponse(void)
{
    if((Dcm_SduBuffer[((uint8)0x01u)] & ((uint8)0x80U))!=0)
    {
        Dcm_SduBuffer[((uint8)0x01u)] &= (uint8)(~((uint8)0x80U));
        (Dcm_ResponseFlag = 1);
    }
}
















 
static void Dsd_ProcessingDone( PduLengthType dataLength )
{
    (DcmState . State . RcrRpInProgress = 0);
    (Dcm_P2TimerStartFlag = 0U);
 
    if ((Dcm_NegativeResCode) != ((uint8)0x00u)) 
    {
        Dcm_SduBuffer[((uint8)0x01u)]     = Dcm_SduBuffer[((uint8)0x00u)];
        Dcm_SduBuffer[((uint8)0x00u)]  = ((uint8)0x7FU);
        Dcm_SduBuffer[((uint8)(((uint8)0x01u)+1U))]  = (Dcm_NegativeResCode);
        Dcm_TxSduInfo.SduDataPtr=Dcm_SduBuffer;
        Dcm_TxSduInfo.SduLength=((uint8)0x03U);
        (Dcm_ResponseFlag = 0);

        if(!(DcmState . State . FunctionalRequest == 1U))        
        {
           (void)CanTp_Transmit(0, &Dcm_TxSduInfo);
        }
        else
        {
            if(((Dcm_NegativeResCode)!=((uint8)0x11u)) &&
               ((Dcm_NegativeResCode)!=((uint8)0x12u)) &&
               ((Dcm_NegativeResCode)!=((uint8)0x31u)) &&
               ((Dcm_NegativeResCode)!=((uint8)0x7Eu)) &&
               ((Dcm_NegativeResCode)!=((uint8)0x7Fu)))
            {
                (Dcm_NegativeResCode = ((uint8)0x00u));
                (void)CanTp_Transmit(0, &Dcm_TxSduInfo);
            }
            else  
            {
                Dcm_TxConfirmation(0U,0x00);
            }
        }
    }
    else  
    {
        if((Dcm_ResponseFlag == 1U))
        {
            (Dcm_ResponseFlag = 0);
            Dcm_TxConfirmation(0U,0x00);
        }
        else
        {
            Dcm_SduBuffer[((uint8)0x00u)] += 0x40;
            Dcm_TxSduInfo.SduDataPtr=Dcm_SduBuffer;
            Dcm_TxSduInfo.SduLength=dataLength;
            (void)CanTp_Transmit(0, &Dcm_TxSduInfo);
        }
    }
}

















 
void Dsd_Nrc78ResponseProcess( uint8 forceSend )
{
    uint16 P2Timeout;
    static uint8 TxNRC78Buf[8];
    if((Dcm_P2TimerStartFlag == 1U))
    {
        CommF_GetElapsedValue(&Dcm_P2Timer, &P2Timeout);
    }
    else
    {
        P2Timeout = (uint16)(5000u);
    }

     
    if(((!(DcmState . State . RcrRpInProgress == 1U))&&(P2Timeout > 40U))    || (((DcmState . State . RcrRpInProgress == 1U))&&(P2Timeout > (uint16)((uint16)(5000u)>>1U)))    || (forceSend == ((uint8)0x01)))
    {
        (Dcm_P2Timer = Comm_MainTick);
        TxNRC78Buf[0]= 0x03; 
        TxNRC78Buf[((uint8)0x00u)+1]= ((uint8)0x7FU);
        TxNRC78Buf[((uint8)0x01u)+1]   = Dcm_SduBuffer[((uint8)0x00u)];        
        TxNRC78Buf[((uint8)(((uint8)0x01u)+1U))+1]= ((uint8)0x78u);
        TxNRC78Buf[((uint8)(((uint8)0x01u)+1U))+2] = (0xAAu);
        TxNRC78Buf[((uint8)(((uint8)0x01u)+1U))+3] = (0xAAu);
        TxNRC78Buf[((uint8)(((uint8)0x01u)+1U))+4] = (0xAAu);
        TxNRC78Buf[((uint8)(((uint8)0x01u)+1U))+5] = (0xAAu);

        Dcm_TxSduInfo.SduDataPtr = TxNRC78Buf;
        Dcm_TxSduInfo.SduLength  = sizeof(TxNRC78Buf);
        (DcmState . State . RcrRpInProgress = 1);
        (void)CanIf_Transmit(0, &Dcm_TxSduInfo);

        Delay_Nms(5);
    }
}

















 
static void Dsp_DiagnosticSessionControl(void)
{
    uint8 l_SessionResetFlg = 0u;

    if(Dcm_ReqDataLength < ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u))); 
    }
    else if(Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x01U) &&
            Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x02U) &&
            Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x03U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength > ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u))); 
    }
    else
    {
        switch(Dcm_SduBuffer[((uint8)0x01u)])
        {
             
            case ((uint8)0x01U):
            {
                 
                (Dcm_S3TimerStartFlag = 0);
                 
                if(((DcmState . State . Session) == ((uint8)0x02U)) || 
                   ((DcmState . State . Session) == ((uint8)0x03U)))
              
                {
                    l_SessionResetFlg = 1u;
                }
                 
                (DcmState . State . Session = ((uint8)0x01U));
               
                (DcmState . State . SecurityKeyAllowed = 0);
                (DcmState . State . SecurityUnlock = 0);
            }
            break;
            case ((uint8)0x02U):
            {
                if((DcmState . State . FunctionalRequest == 1U))
                {
                    (Dcm_ResponseFlag = 1);
                }
                else if(((DcmState . State . Session) == ((uint8)0x03U))||
                        ((DcmState . State . Session) == ((uint8)0x02U)) ||
                        ((DcmState . State . Session) == ((uint8)0x01U)))
               
                {
                     
                     (DcmState . State . Session = ((uint8)0x02U));
                   
                   
                    (DcmState . State . SecurityKeyAllowed = 0);
                    (DcmState . State . SecurityUnlock = 0);

                     
                     
                }
                else
                {
                    (Dcm_NegativeResCode = (((uint8)0x7Eu)));
                }
            }
            break;
            case ((uint8)0x03U):
            {
                if(((DcmState . State . Session) == ((uint8)0x03U))||
                   ((DcmState . State . Session) == ((uint8)0x01U)))
               
                {
                     (DcmState . State . Session = ((uint8)0x03U));
                    
                    
                    (DcmState . State . SecurityKeyAllowed = 0);
                    (DcmState . State . SecurityUnlock = 0);
                     
                }
                else
                {
                    (Dcm_NegativeResCode = (((uint8)0x7Eu)));
                }
            }
            break;
        }

         
        if((Dcm_NegativeResCode) == ((uint8)0x00u))
        {
            Dcm_SduBuffer[((uint8)0x01u)+1U] = (uint16)(50U) >> (uint8)0x08u;
            Dcm_SduBuffer[((uint8)0x01u)+2U] = (uint16)(50U) & (uint8)0xFFu;
            Dcm_SduBuffer[((uint8)0x01u)+3U] = ((uint16)(5000u)/(10U)) >> (uint8)0x08u;
            Dcm_SduBuffer[((uint8)0x01u)+4U] = ((uint16)(5000u)/(10U)) & (uint8)0xFFu;
            Dsd_ProcessingDone(((uint8)0x06)); 
            if(l_SessionResetFlg == 1u)
            {
            ServerIdPost = ((uint8)0x10U) ;
            ServerPostCount = 0 ;
            }
        }

    }
}

















 
static void Dsp_EcuReset(void)
{
     
    if(Dcm_ReqDataLength < ((uint8)0x02U))
    {
         
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
        else if(Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x01U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength > ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u))); 
    }
    else
    {
        switch(Dcm_SduBuffer[((uint8)0x01u)])
        {
            case ((uint8)0x01U):
            {
                break;
            }
        }  

         
        if((Dcm_NegativeResCode)== ((uint8)0x00u))
        {
            Dsd_ProcessingDone(((uint8)0x02));
            ServerPostCount = 0 ;
            ServerIdPost = ((uint8)0x11U);
        }
    }
}
















 
static void Dsp_SecurityAccess(void)
{
    if((DcmState . State . FunctionalRequest == 1U))
    {
        (Dcm_ResponseFlag = 1);
    }
     
     else if((DcmState . State . Session) != ((uint8)0x02U))
   
    {
         
        (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
     
    else if(Dcm_ReqDataLength < ((uint8)0x02U))
    {
         
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else
    {
         
        switch (Dcm_SduBuffer[((uint8)0x01u)])
        {
            case ((uint8)0x5U) :
            {
                Dsp_SA_SeedProcess();
            }
            break;
            
            case ((uint8)0x6U):
            {    
                Dsp_SA_KeyProcess();
            }    
            break;
            case 0x01:
            case 0x02:
            {
                (Dcm_NegativeResCode = (((uint8)0x7Eu)));
            }
            break;
            
            default:
            { 
                 
                (Dcm_NegativeResCode = (((uint8)0x12u)));
            }
            break;
        }

        if(g_SA_FAC_Last != g_SA_FAC)
        {
            g_SA_FAC_Last = g_SA_FAC;
            (void)Diag_FlagWrite(0x05u,(uint8*)&g_SA_FAC_Last);
        }
        if(g_SA_FAC >= (2U))
        {
            (g_SA_DelayTimer = Comm_MainTick);
        }
    }
    
    if((Dcm_NegativeResCode)== ((uint8)0x00u))
    {
        Dsd_ProcessingDone(Dcm_ResDataLength);
    }
}
















 
static void Dsp_SA_SeedProcess(void)
{
    uint8 IsSameSeed = 0u;
     
    if (Dcm_ReqDataLength != ((uint8)0x02U))
    {
         
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
     
    else if(g_SA_FAC >= (2U))
    {
        (DcmState . State . SecurityKeyAllowed = 0);
        (Dcm_NegativeResCode = (((uint8)0x37u)));
    }
    else if((DcmState . State . SecurityUnlock == 1U))  
    {
        CommF_DataSet(&Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x01U))],0,(0x04U));
    }
    else
    {
        if((DcmState . State . SecurityKeyAllowed == 1U))  
        {
            IsSameSeed = 1u;
            g_SA_FAC++;
        }
         
        SecurityAccess_SeedGet(IsSameSeed, &Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x01U))]);
        (DcmState . State . SecurityKeyAllowed = 1);

        if(g_SA_FAC >= (2U))
        {
             
            (DcmState . State . SecurityKeyAllowed = 0);
            (Dcm_NegativeResCode = (((uint8)0x37u)));
        }
        else
        {
             
            Dcm_ResDataLength = ((uint8)(0x02 + (0x04U)));
        }
    }
}
















 
static void Dsp_SA_KeyProcess(void)
{
     
    if (Dcm_ReqDataLength != ((uint8)0x02U + (0x04U)))
    {
         
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if (!(DcmState . State . SecurityKeyAllowed == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x24u)));
    }
    else
    {
         
        (DcmState . State . SecurityUnlock = 0);
         
        (DcmState . State . SecurityKeyAllowed = 0);

        if (SecurityAccess_KeyVerify(&Dcm_SduBuffer[2], Dcm_SduBuffer[((uint8)0x01u)])!= 0U)
        {
            g_SA_FAC++;
            if(g_SA_FAC >= (2U))
            {
                (Dcm_NegativeResCode = (((uint8)0x36u)));
            }
            else
            {
                (Dcm_NegativeResCode = (((uint8)0x35u)));
            }
        }
        else
        {
            g_SA_FAC = 0;
            
	        FlsIf_Init();
             
            (DcmState . State . SecurityUnlock = 1);
             
            Dcm_ResDataLength = ((uint8)0x02);
        }
    }
}
















 
static void Dsp_CommunicationControl(void)
{
     
    if((DcmState . State . Session) != ((uint8)0x03U) )
    
    {
        (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
     
    else if(Dcm_ReqDataLength < ((uint8)0x03U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x00U)) &&
            (Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x03U)))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength > ((uint8)0x03U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u))); 
    }
    else
    {
        switch(Dcm_SduBuffer[((uint8)0x01u)])
        {
            case ((uint8)0x00U):
            case ((uint8)0x03U): 
                if(Dcm_SduBuffer[((uint8)0x01u)+1] != ((uint8)0x01U) &&
                   (Dcm_SduBuffer[((uint8)0x01u)+1] != ((uint8)0x02U)) &&
                   (Dcm_SduBuffer[((uint8)0x01u)+1] != ((uint8)0x03U)))
                {
                   (Dcm_NegativeResCode = (((uint8)0x31u)));
                }

            break;

            default:
            {
                (Dcm_NegativeResCode = (((uint8)0x12u)));
            }
            break;
        }
        if((Dcm_NegativeResCode)== ((uint8)0x00u))
        {
            Dsd_ProcessingDone(((uint8)0x02));
        }
    }
}

















 
static void Dsp_RoutineControl(void)
{
    uint16 RoutineId;

    if((DcmState . State . FunctionalRequest == 1U))
    {
        (Dcm_ResponseFlag = 1);
    }
    else if(((DcmState . State . Session) != ((uint8)0x03U)) && 
            ((DcmState . State . Session) != ((uint8)0x02U)))
   
    {
        (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
    else if(Dcm_ReqDataLength < ((uint8)0x04U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else
    {
       RoutineId=(((uint16)Dcm_SduBuffer[((uint8)0x01u)+1u]) << (uint8)0x08u)|                   ((uint16)Dcm_SduBuffer[((uint8)0x01u)+2u]);

        switch(RoutineId)
        {
            case ((uint16)0xDFFFU):
            {
                Dsp_RC_CheckProgrammingIntegrity();
                break;
            }

            case ((uint16)0xFF00U):
            {
                Dsp_RC_EraseMemory();
                break;
            }

            case ((uint16)0x0203U):
            {
                Dsp_RC_CheckProgrammingPreConditions();
                break;
            }

            case ((uint16)0xFF01U):
            {
                Dsp_RC_CheckProgrammingDependencies();
                break;
            }

            case ((uint16)0xDFFDU):
            {
                RC_ActivationAndRollback();
                break;
            }

            case ((uint16)0xDFFEU):
            {
                RC_CheckSVN();
                break;
            }

            default:
            {
                (Dcm_NegativeResCode = (((uint8)0x31u)));
                break;
            }
        }

        if((Dcm_NegativeResCode)== ((uint8)0x00u))
        {
            Dsd_ProcessingDone(((uint8)0x05));
        }
    }
}
















 
static void Dsp_RC_CheckProgrammingPreConditions(void)
{
    if((DcmState . State . Session) != ((uint8)0x03U))
    
    {
        (Dcm_NegativeResCode = (((uint8)0x7Eu)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)])!= ((uint8)0x01U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength != ((uint8)0x04U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if((((Adc_VoltageValue) > (0x4BFU)) ? (1U) : (1U)) == 0U)
    {
        (Dcm_NegativeResCode = (((uint8)0x92u)));
    }
    else if((((Adc_VoltageValue) < (0x26CU)) ? (1U) : (1U)) == 0U)
    {
        (Dcm_NegativeResCode = (((uint8)0x93u)));
    }
    else
    {
        Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))]=((uint8)0x00U);
    }
}
















 
static void Dsp_RC_EraseMemory(void)
{
    uint8 Ret = 0x00U;
    if((DcmState . State . Session) != ((uint8)0x02U))
    
    {
        (Dcm_NegativeResCode = (((uint8)0x7Eu)));
    }
    else if(!(DcmState . State . SecurityUnlock == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x33u)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)])!=((uint8)0x01U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else
    {
        Ret = RC_EraseMem_Preprocess(&Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))],Dcm_ReqDataLength);

        if(Ret == 0x01U)
        {
            (Dcm_NegativeResCode = (((uint8)0x13u)));
        }
        else if(Ret == 0x02U)
        {
            (Dcm_NegativeResCode = (((uint8)0x31u)));
        }
         
        else if(!(DcmState . State . DriverCrc))
        {
             (Dcm_NegativeResCode = (((uint8)0x24u)));
        }
        else
        {
            if(RC_EraseMemory()!= 0U)
            {
                Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))]=((uint8)0x01U);
            }
            else
            {
                Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))]=((uint8)0x00U);

                if(g_CurLogicalBlockId == 1U)
                {
                    (DcmState . State . EraseMemoryAppA = 1);
                }
                else if(g_CurLogicalBlockId == 2U)
                {
                    (DcmState . State . EraseMemoryAppB = 1);
                }
                else if(g_CurLogicalBlockId == 3U)
                {
                    (DcmState . State . EraseMemoryCal = 1);
                }
            }
        }
    }
}
















 
static void Dsp_RC_CheckProgrammingIntegrity(void)
{
    if((DcmState . State . Session) != ((uint8)0x02U))
    
    {
        (Dcm_NegativeResCode = (((uint8)0x7Eu)));
    }
    else if(!(DcmState . State . SecurityUnlock == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x33u)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)])!=((uint8)0x01U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength!=(((uint8)0x04U) + 0x04U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if(!(DcmState . State . RequestTransferExit == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x24u)));
    }
    else
    {
        if(RC_ChecksumVerify(&Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))]) != 0U)
        {
            Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))] = ((uint8)0x01U);
        }
        else
        {
            switch(g_CurLogicalBlockId)
            {
                case 0U:
                    (DcmState . State . DriverCrc = 1);
                    break;
                case 1U:
                    (DcmState . State . AppACrc = 1);
                    break;
                case 2U:
                    (DcmState . State . AppBCrc = 1);
                    break;
                case 3U:
                    (DcmState . State . CalCrc = 1);
                    break;
            }
            Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))] = ((uint8)0x00U);
        }
    }
}
















 
static void Dsp_RC_CheckProgrammingDependencies(void)
{
    if((DcmState . State . Session) != ((uint8)0x02U))
   
    {
        (Dcm_NegativeResCode = (((uint8)0x7Eu)));
    }
    else if(!(DcmState . State . SecurityUnlock == 1U))
    {
       (Dcm_NegativeResCode = (((uint8)0x33u)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)])!=((uint8)0x01U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength!=((uint8)0x04U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if(!(DcmState . State . AppACrc == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x24u)));
    }
    else
    {
        if((RC_CheckDependency()!= 0U) ||            (SecureProgram_CheckProgrammingIntegrity() != 0x00))
        {
             Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))] = ((uint8)0x01U);
        }
        else
        {
             Dcm_SduBuffer[((uint8)(((uint8)0x01u) + 0x03U))] = ((uint8)0x00U);
             uint8 AllowWrite = 0x01;
             Diag_FlagWrite(0x08u, &AllowWrite);
             Diag_FlagWrite(0x09u, &AllowWrite);
             CurrentProgramCnt++;
             EEIf_Write(PROGRAM_CNT_ADDR_IDX, 0x02U, &CurrentProgramCnt);
        }
    }
}

















 
static void Dsp_RequestDownload(void)
{
    uint8 DataFormat;
    uint8 AddressFormat;
    uint8 SizeFormat;
    uint8 i;

    DataFormat = Dcm_SduBuffer[((uint8)(((uint8)0x00u) + 1))];
    AddressFormat = (uint8)(Dcm_SduBuffer[((uint8)(((uint8)(((uint8)0x00u) + 1)) + 1))]&(uint8)0x0Fu);
    SizeFormat = (uint8)((uint8)Dcm_SduBuffer[((uint8)(((uint8)(((uint8)0x00u) + 1)) + 1))]>>(uint8)0x04u);
     
    ProgramStartAddr=CommF_GetUint32DataValue(&Dcm_SduBuffer[((uint8)(((uint8)(((uint8)(((uint8)0x00u) + 1)) + 1)) + 1))],0x04U);
     
    ProgramMemorySize=CommF_GetUint32DataValue(&Dcm_SduBuffer[((uint8)(((uint8)(((uint8)(((uint8)(((uint8)0x00u) + 1)) + 1)) + 1)) + 0x04U))],0x04U);

    if((DcmState . State . FunctionalRequest == 1U))
    {
        (Dcm_ResponseFlag = 1);
    }
    else if((DcmState . State . Session) != ((uint8)0x02U))
    
    {
         
       (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
    else if(Dcm_ReqDataLength < ((uint8)0x05U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if((DataFormat != 0x00U)||        
            (AddressFormat != 0x04U)||  
            (SizeFormat != 0x04U)||         
            (ProgramStartAddr < (0x00080000U + (0x200U)))||  
            (ProgramStartAddr > (0x0014FFFFU))||  
            (ProgramMemorySize > ((0x0014FFFFU) - (0x00080000U + (0x200U)) + 1))||  
            (CurrentProgramCnt >= 0x3E8U)  
    )
    {
        (Dcm_NegativeResCode = (((uint8)0x31u)));
    }
    else if(Dcm_ReqDataLength != ((uint8)0x03U + 0x04U + 0x04U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else
    {

        if (RequestDownload(ProgramStartAddr,ProgramMemorySize) == 0U)
        {
            if(!(DcmState . State . SecurityUnlock == 1U))
            {
                (Dcm_NegativeResCode = (((uint8)0x33u)));
            }
            else
            if(Dsp_RD_SequenceCheck() == 0U)
            {
                Dcm_SduBuffer[((uint8)(((uint8)0x00u) + 1))] = (uint8)(0x02U << 4U);

                for(i=0;i< 0x02U;i++)
                {
                    Dcm_SduBuffer[((uint8)(((uint8)0x00u) + 1))+1U+i]=(uint8)(((uint16)0x0402U)>>(uint8)(8U*(0x02U -i-1U)));
                }
                TransDataBlockSeqCounter = 0;
                TransDataNumofTransmittedData = 0;
                if((ProgramMemorySize % (((uint16)0x0402U)-2)) != 0)
                {
                    TransDataTotalNumofBlock = (uint16)(ProgramMemorySize/(((uint16)0x0402U)-2))+1;
                    TransDataLastBlockSize = (uint16)(ProgramMemorySize%(((uint16)0x0402U)-2))+2;
                }
                else
                {
                    TransDataTotalNumofBlock = (uint16)(ProgramMemorySize/(uint16)(((uint16)0x0402U)-2U));
                    TransDataLastBlockSize = ((uint16)0x0402U);
                }

                Dsd_ProcessingDone(((uint8)(0x02 + 0x02U)));
                (DcmState . State . AllowTransferData = 1);
                (DcmState . State . Service36_1stBlock = 1);
            }
        }
        else 
        {
            (Dcm_NegativeResCode = (((uint8)0x31u)));
        }
    }
    TransData_ClrSequenceBuffer();
}
















 
static uint8 Dsp_RD_SequenceCheck(void)
{
    uint8 ret = 0U;

    
    
    
    
    
    if((DcmState . State . AllowTransferData == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x24u)));
        (DcmState . State . AllowTransferData = 0);
    }
    else if(g_CurLogicalBlockId != 0U)
    {
        if(g_CurLogicalBlockId == 1U)
        {
            
            if(FlsIf_Erase(0x00080000U, (0x0014FFFFU) - 0x00080000U) != 0U)
            {
                (Dcm_NegativeResCode = (((uint8)0x70u)));
            }
        }
        else
        {
            (Dcm_NegativeResCode = (((uint8)0x70u)));
        }
    }
    else
    {
         
    }
    if((Dcm_NegativeResCode) != ((uint8)0x00u))
    {
        ret = 1U;
    }
    return ret;
}

















 
static void Dsp_TransferData(void)
{
    if((DcmState . State . FunctionalRequest == 1U))
    {
        (Dcm_ResponseFlag = 1);
    }
    else if((DcmState . State . Session) != ((uint8)0x02U))
    
    {
       (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
    else if(Dcm_ReqDataLength < ((uint8)0x03U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if(!(DcmState . State . SecurityUnlock == 1U))
    {
        (Dcm_NegativeResCode = (((uint8)0x33u)));
    }
    else if(!(DcmState . State . AllowTransferData == 1U))  
    {
        (Dcm_NegativeResCode = (((uint8)0x24u)));    
    }
    else if((((Adc_VoltageValue) > (0x4BFU)) ? (1U) : (1U)) == 0U)
    {
        (Dcm_NegativeResCode = (((uint8)0x92u)));
    }
    else if((((Adc_VoltageValue) < (0x26CU)) ? (1U) : (1U)) == 0U)
    {
        (Dcm_NegativeResCode = (((uint8)0x93u)));
    }
    else
    {
        if(Dsp_TD_BlockSequenceProsess() == 0U)
        {
            if(TransData_WriteMemory(ProgramStartAddr,(Dcm_ReqDataLength-2),&Dcm_SduBuffer[((uint8)(((uint8)(((uint8)0x01u))) + 1))])!= 0U)
            {
                (Dcm_NegativeResCode = (((uint8)0x72u)));
                (DcmState . State . TransferDataOver = 0);
            }
            else
            {
                TransData_Copy2SequenceBuffer(&Dcm_SduBuffer[((uint8)(((uint8)(((uint8)0x01u))) + 1))]);
                ProgramStartAddr += (uint16)(Dcm_ReqDataLength-2U);
            }
        }
        Dsd_ProcessingDone(((uint8)0x02));
    }
}


















 
static uint8 Dsp_TD_BlockSequenceProsess(void)
{
    uint8 ret = 0U;
    TransDataBlockSeqCounter++;
    TransDataNumofTransmittedData += (uint16)(Dcm_ReqDataLength-2U);
    if((uint8)(TransDataBlockSeqCounter & (uint8)0xFFu) != Dcm_SduBuffer[((uint8)(((uint8)0x01u)))])  
    {
        if(((uint8)(TransDataBlockSeqCounter & (uint8)0xFFu) == (Dcm_SduBuffer[((uint8)(((uint8)0x01u)))] + 1)) 
                && (TransData_CheckSequenceBuffer(&Dcm_SduBuffer[((uint8)(((uint8)(((uint8)0x01u))) + 1))]) == 0U))  
        {
            if((DcmState . State . Service36_1stBlock == 1U) && ((Dcm_SduBuffer[((uint8)(((uint8)0x01u)))]) == 0))
            {
                (Dcm_NegativeResCode = (((uint8)0x73u)));
                (DcmState . State . Service36_1stBlock = 0);
            }
            TransDataBlockSeqCounter-=1;
            TransDataNumofTransmittedData -= (uint16)(Dcm_ReqDataLength-2U);
            ret = 1U;  
        }
        else
        {
            (Dcm_NegativeResCode = (((uint8)0x73u)));
        }
    }
    else
    {
        if(TransDataBlockSeqCounter < TransDataTotalNumofBlock)
        {
            if(Dcm_ReqDataLength != ((uint16)0x0402U))
            {
                (Dcm_NegativeResCode = (((uint8)0x13u)));
            }
        }
        else if(TransDataBlockSeqCounter == TransDataTotalNumofBlock)
        {
            if(Dcm_ReqDataLength != TransDataLastBlockSize)
            {
                (Dcm_NegativeResCode = (((uint8)0x13u)));
            }
            
 
            else if(TransDataNumofTransmittedData != ProgramMemorySize)
            {
                (Dcm_NegativeResCode = (((uint8)0x71u)));
            }
            else
            {
                 
                (DcmState . State . TransferDataOver = 1);
            }
        }
        else
        {
            (Dcm_NegativeResCode = (((uint8)0x24u)));
        }
    }
    if(((DcmState . State . Service36_1stBlock == 1U)) && ((Dcm_SduBuffer[((uint8)(((uint8)0x01u)))]) != 1))
    {
        (DcmState . State . Service36_1stBlock = 0);
    }
    if((Dcm_NegativeResCode) != ((uint8)0x00u))
    {
        (DcmState . State . AllowTransferData = 0);
        ret = 1U;
    }
    return ret;
}

















 
static void Dsp_RequestTransferExit(void)
{
    if((DcmState . State . Session) != ((uint8)0x02U))
  
    {
       (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
    else if(Dcm_ReqDataLength < ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)] != 0x00)&&
            (Dcm_SduBuffer[((uint8)0x01u)] != 0x01))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(!(DcmState . State . TransferDataOver == 1U))  
    {
        (Dcm_NegativeResCode = (((uint8)0x24u)));
    }
    else
    { 
        if(Calculate36blockCRC16(&Dcm_SduBuffer[((uint8)0x01u)+1]) == 0U)
        {
            (DcmState . State . AllowTransferData = 0);
            (DcmState . State . RequestTransferExit = 1);
            Dsd_ProcessingDone(((uint8)0x04));
        }
        
    }
}

















 
static void Dsp_TesterPresent(void)
{
    if(Dcm_ReqDataLength < ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if(Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x00U))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength > ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u))); 
    }
    else
    {
        switch(Dcm_SduBuffer[((uint8)0x01u)])
        {
            case ((uint8)0x00U):
            break;
        }
        if((Dcm_NegativeResCode)== ((uint8)0x00u))
        {
            Dsd_ProcessingDone(((uint8)0x02));
        } 
    }
}

















 
static void Dsp_ControlDTCSetting(void)
{  
    if((DcmState . State . Session) != ((uint8)0x03U))
   
    {
        (Dcm_NegativeResCode = (((uint8)0x7Fu)));                 
    }
    else if(Dcm_ReqDataLength < ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else if((Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x01U)) &&
            (Dcm_SduBuffer[((uint8)0x01u)] != ((uint8)0x02U)))
    {
        (Dcm_NegativeResCode = (((uint8)0x12u)));
    }
    else if(Dcm_ReqDataLength > ((uint8)0x02U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u))); 
    }
    else
    {
        switch(Dcm_SduBuffer[((uint8)0x01u)])
        {
            case ((uint8)0x01U):
            case ((uint8)0x02U): 
            {
                 
                break;
            }

            default:
            {
                (Dcm_NegativeResCode = (((uint8)0x12u)));
            }
            break;
        }
        if((Dcm_NegativeResCode)== ((uint8)0x00u))
        {
            Dsd_ProcessingDone(((uint8)0x02)); 
        }
    }
}
















 
static void Dsp_WriteDataByIdentifier( void )
{
    uint16 WriteDidTemp=0;
    uint16 i = 0U ;
    WriteDidTemp= ((uint16)Dcm_SduBuffer[((uint8)0x01u)]<<(uint8)0x08u)|                    ((uint16)Dcm_SduBuffer[((uint8)0x01u)+1]);
    if(((DcmState . State . Session) != ((uint8)0x02U)) &&
       ((DcmState . State . Session) != ((uint8)0x03U)))
   
    {
        (Dcm_NegativeResCode = (((uint8)0x7Fu)));
    }
    else if(Dcm_ReqDataLength < ((uint8)0x04U))
    {
        (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else
    {
        for(i = 0U; i < 0x2FU; i++)
        {
            if(WriteDidTemp == DID_Infos[i].Did)
            {
                if((DID_Infos[i].RW_Permission & 0x02U) == 0x02U)
                {
                    if ((Dcm_ReqDataLength != (DID_Infos[i].Size + 3)))
                    {
                        (Dcm_NegativeResCode = (((uint8)0x13u)));
                    }
                    else if(!(DcmState . State . SecurityUnlock == 1U))
                    {
                        (Dcm_NegativeResCode = (((uint8)0x33u)));
                    }
                    else
                    {
                        if (DID_Write(&Dcm_SduBuffer[((uint8)0x01u) + 2], &DID_Infos[i]) == 0U)
                        {
                            Dsd_ProcessingDone(3);
                           
                            {
                                (DcmState . State . FingerPrint = 1);
                            }
                        }
                        else
                        {
                            if(WriteDidTemp == 0xF187U)
                            {
                                uint8 AllowF187WriteId = 0U;
                                Diag_FlagRead(0x08u,&AllowF187WriteId);
                                if(AllowF187WriteId == 0U)
                                {
                                    (Dcm_NegativeResCode = (((uint8)0x22u)));
                                }
                                else
                                {
                                    (Dcm_NegativeResCode = (((uint8)0x72u)));
                                }
                            }
                            else
                            {
                                (Dcm_NegativeResCode = (((uint8)0x72u)));
                            }
                        }
                    }
                    break;
                }
            }
        }
        if(i >= 0x2FU)
        {
            (Dcm_NegativeResCode = (((uint8)0x31u)));
        }
    }
}
















 
static void Dsp_ReadDataByIdentifier(void)
{
    uint16 ReadDidTemp=0;
    uint16 i = 0 ;
  
 
     
    if (Dcm_ReqDataLength != ((uint8)0x03U))
    {
         
         (Dcm_NegativeResCode = (((uint8)0x13u)));
    }
    else
    {
         
        ReadDidTemp= ((uint16)Dcm_SduBuffer[((uint8)0x01u)]<<(uint8)0x08u)|                        ((uint16)Dcm_SduBuffer[((uint8)0x01u)+1]);
         
        for(i = 0U; i < 0x2FU; i++)
        {
            if(ReadDidTemp == DID_Infos[i].Did)
            {
                 
                if((DID_Infos[i].RW_Permission & 0x01U) == 0x01U)
                {
                      
                       if (DID_Read(&Dcm_SduBuffer[((uint8)0x01u)+2], &DID_Infos[i])!= 0U)
                       {
                           (Dcm_NegativeResCode = (((uint8)0x72u)));
                       }
                       else
                       {
                           Dsd_ProcessingDone(DID_Infos[i].Size + 3);
                       }
                }
                break;
            }
        }
        if(i == 0x2FU)
        {
            (Dcm_NegativeResCode = (((uint8)0x31u)));
        }
    }
}
 
