




 
 



























 


 
 



























 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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







 




 



 
extern volatile uint16 Comm_MainTick;


 
extern void CommF_DataCopy(void * des, void * src,uint32 srcSize);
extern uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length);
extern void CommF_DataSet(void * des, uint8 src,uint32 desSize);
extern uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length);
extern void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue);




























 


 




 



 
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






























 





























 


 
 
 
typedef void (*tWDTriggerFct) (void);          

typedef struct
{
    uint8 version_major;
    uint8 version_minor;
    uint8 version_patch;
    uint8 res;
    uint16 err_code;        
    uint32 err_addr;        

    uint32 addr;  
    uint32 len;      
    uint8* pbuf;     

     

} flsdrv_para_t;


typedef void (*flsdrv_func_t)(flsdrv_para_t*);

typedef struct
{
    uint8 type_mcu;              
    uint8 type_mask;             
    uint8 res;                   
    uint8 Interfaceversion;      

    flsdrv_func_t init;                  
    flsdrv_func_t deinit;                
    flsdrv_func_t erase;                 
    flsdrv_func_t write;                 
    flsdrv_func_t read;

    uint32 res1;
    uint32 res2;
} flsdrv_header_t;


 



























 


 
 
 


 
 
 


 
 
 
 




 

 

 
 

















 
 
 
typedef struct
{
 uint32 startaddress;
 uint32 length;
 uint32 sectorsize;
 uint32 pagesize;
}FlsIf_BlockType ;

 
 
 


extern  const FlsIf_BlockType    FlsIf_Block[3];

 
 
 
extern uint8  FlsIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  FlsIf_Erase(uint32 sAddr, uint32 size);
extern uint8  FlsIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  FlsIf_DeInit(void);
extern uint8  FlsIf_Init(void);
 



























 


 
 
 












 
 
 
extern uint8  EEIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_DeInit(void);
extern void   EEIf_Init(void);
 



























 


 
 



























 


 



 
 
 
















 














 


 

 




















 
 



 


 



 
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





 










 
uint8 DcmSessionValue = 0U;
const DIDInfo_t DID_Infos[0x2FU] =
{
    {
        2U, 
        0xF100, 
        ((uint16)0x06U), 
        0x01U, 
        DID_F100_ADDR_IDX, 
    },
    {
        2U, 
        0xF110, 
        ((uint16)0x10U), 
        0x03U, 
        DID_F110_ADDR_IDX, 
    },
    {
        2U, 
        0xF111, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F111_ADDR_IDX, 
    },
    {
        2U, 
        0xF112, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F112_ADDR_IDX, 
    },
    {
        2U, 
        0xF113, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F113_ADDR_IDX, 
    },
    {
        2U, 
        0xF114, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F114_ADDR_IDX, 
    },
    {
        2U, 
        0xF115, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F115_ADDR_IDX, 
    },
    {
        2U, 
        0xF116, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F116_ADDR_IDX, 
    },
    {
        2U, 
        0xF117, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F117_ADDR_IDX, 
    },
    {
        2U, 
        0xF118, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F118_ADDR_IDX, 
    },
    {
        2U, 
        0xF119, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F119_ADDR_IDX, 
    },
    {
        2U, 
        0xF11A, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F11A_ADDR_IDX, 
    },
    {
        2U, 
        0xF11B, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F11B_ADDR_IDX, 
    },
    {
        2U, 
        0xF11C, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F11C_ADDR_IDX, 
    },
    {
        2U, 
        0xF11D, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F11D_ADDR_IDX, 
    },
    {
        2U, 
        0xF11E, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F11E_ADDR_IDX, 
    },
    {
        2U, 
        0xF11F, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F11F_ADDR_IDX, 
    },
    {
        2U, 
        0xF120, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F120_ADDR_IDX, 
    },
    {
        2U, 
        0xF121, 
        ((uint16)0x10U), 
        0x03U, 
        DID_F121_ADDR_IDX, 
    },
    {
        2U, 
        0xF183, 
        ((uint16)0x0AU), 
        0x01U, 
        DID_F183_ADDR_IDX, 
    },
    {
        0U, 
        0xF186, 
        1, 
        0x01U, 
        (uint32)&DcmSessionValue, 
    },
    {
        2U, 
        0xF187, 
        ((uint16)0x05U), 
        0x03U, 
        DID_F187_ADDR_IDX, 
    },
    {
        2U, 
        0xF18A, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F18A_ADDR_IDX, 
    },
    {
        2U, 
        0xF18B, 
        ((uint16)0x03U), 
        0x01U, 
        DID_F18B_ADDR_IDX, 
    },
    {
        2U, 
        0xF18C, 
        ((uint16)0x10U), 
        0x01U, 
        DID_F18C_ADDR_IDX, 
    },
    {
        2U, 
        0xF190, 
        ((uint16)0x11U), 
        0x01U, 
        DID_F190_ADDR_IDX, 
    },
    {
        2U, 
        0xF191, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F191_ADDR_IDX, 
    },
    {
        2U, 
        0xF192, 
        ((uint16)0x0AU), 
        0x01U, 
        DID_F192_ADDR_IDX, 
    },
    {
        2U, 
        0xF194, 
        ((uint16)0x0AU), 
        0x01U, 
        DID_F194_ADDR_IDX, 
    },
    {
        2U, 
        0xF198, 
        ((uint16)0x0BU), 
        0x01U, 
        DID_F198_ADDR_IDX, 
    },
    {
        2U, 
        0xF1A0, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F1A0_ADDR_IDX, 
    },
    {
        2U, 
        0xF1A1, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F1A1_ADDR_IDX, 
    },
    {
        2U, 
        0xF1A2, 
        ((uint16)0x08U), 
        0x01U, 
        DID_F1A2_ADDR_IDX, 
    },
    {
        2U, 
        0xF1A5, 
        ((uint16)0x03U), 
        0x01U, 
        DID_F1A5_ADDR_IDX, 
    },
    {
        2U, 
        0xF1A8, 
        ((uint16)0x14U), 
        0x01U, 
        DID_F1A8_ADDR_IDX, 
    },
    {
        2U, 
        0xF1A9, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F1A9_ADDR_IDX, 
    },
    {
        2U, 
        0xF1AA, 
        ((uint16)0x05U), 
        0x03U, 
        DID_F1AA_ADDR_IDX, 
    },
    {
        2U, 
        0xF130, 
        ((uint16)0x20U), 
        0x01U, 
        DID_F130_ADDR_IDX, 
    },
    {
        2U, 
        0xF1B5, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F1B5_ADDR_IDX, 
    },
    {
        2U, 
        0xF1B6, 
        ((uint16)0x05U), 
        0x01U, 
        DID_F1B6_ADDR_IDX, 
    },
    {
        2U, 
        0xAFF1, 
        ((uint16)0x1CAU), 
        0x03U, 
        DID_AFF1_ADDR_IDX, 
    },
    {
        2U, 
        0xAFF2, 
        ((uint16)0x01U), 
        0x01U, 
        DID_AFF2_ADDR_IDX, 
    },
    {
        2U, 
        0xAFF5, 
        ((uint16)0x01U), 
        0x01U, 
        DID_AFF5_ADDR_IDX, 
    },
    {
        2U, 
        0xAFFC, 
        ((uint16)0x02U), 
        0x01U, 
        DID_AFFC_ADDR_IDX, 
    },
    {
        2U, 
        0xAFFD, 
        ((uint16)0x01U), 
        0x01U, 
        DID_AFFD_ADDR_IDX, 
    },
    {
        2U, 
        0xAFFE, 
        ((uint16)0x01U), 
        0x01U, 
        DID_AFFE_ADDR_IDX, 
    },
    {
        2U, 
        0xAFFF, 
        ((uint16)0x01U), 
        0x01U, 
        DID_AFFF_ADDR_IDX, 
    }
};

 
uint8 WriteDataF198[((uint16)0x0BU)] =
{
    0x42, 0x44, 0x55, 0x20, 0x24, 0x03, 0x13, 0x30, 0x30, 0x35
};

 
uint8 WriteDataF187[((uint16)0x05U)] =
{
    0x42, 0x44, 0x30, 0x36, 0x30
};

 
uint8 WriteDataF18A[((uint16)0x05U)] =
{
    0x56, 0x31, 0x30, 0x37, 0x38
};




 













 
void DID_Init(void)
{

    
    
    uint8 ReadDat_retValue = 0;
    uint8 IsValid_retValue = 0;








    
    
    
    
    
    

    
    
    
    
    
    
}












 
Std_ReturnType DID_Write(uint8 * buf, const DIDInfo_t* ProdInfo)
{
    Std_ReturnType retValue = 1U;

    switch(ProdInfo->DrvType)
    {
        case 0U:
        {
            CommF_DataCopy((void *)ProdInfo->Addr, (void *)buf, ProdInfo->Size);
            retValue = 0U;
            break;
        }
        case 1U:
        {
            retValue = FlsIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        case 2U:
        {
            if(ProdInfo->Did == 0xF187)
            {
                uint8 AllowWrite = 0x00;
                Diag_FlagRead(0x08u, &AllowWrite);
                if(AllowWrite)
                {
                    retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
                    AllowWrite = 0x00;
                    Diag_FlagWrite(0x08u, &AllowWrite);
                }
                else
                {
                    retValue = 1U;
                }
            }
            else
            {
                retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            }
            break;
        }
        default:
        {
             
            break;
        }
    }

    return retValue;
}













 
Std_ReturnType DID_Read(uint8 * buf, const DIDInfo_t * ProdInfo)
{
    Std_ReturnType retValue = 1U;

    switch(ProdInfo->DrvType)
    {
        case 0U:
        {
            if(ProdInfo->Addr == (uint32)&DcmSessionValue)
            {
                DcmSessionValue = (DcmState . State . Session);
            }
            CommF_DataCopy((void *)buf, (void *)ProdInfo->Addr, ProdInfo->Size);
            retValue = 0U;
            break;
        }
        case 1U:
        {
            retValue = FlsIf_Read(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        case 2U:
        {
            retValue = EEIf_Read(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        default:
        {
             
            break;
        }
    }

    return retValue;
}





