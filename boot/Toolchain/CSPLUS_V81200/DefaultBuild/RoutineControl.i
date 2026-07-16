



























 


 




























 



 
 



























 


 
 



























 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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

 



 


 



 
extern uint8 g_DownBlockStart[2];

extern uint8 RC_EraseMem_Preprocess(uint8* buf, uint16 len);
extern uint8 RC_EraseMemory(void);
extern uint8 RC_ChecksumVerify(uint8* crcValue);
extern uint8 RC_CheckDependency(void);
extern uint8 RC_ActivationAndRollback(void);
extern uint8 RC_CheckSVN (void);

 



























 


 
 



























 


 



 
 
 
















 














 


 

 




















 
 



 


 



 
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



 



























 



 




























 


 


 






 
extern uint32 SecM_ReverseBit_32(uint32 data);


 


struct aes_key_st
{
    unsigned int rd_key[4 * (14 + 1)];
    unsigned int rounds;
};

typedef struct aes_key_st AES_KEY; 

 




 
extern void SecM_Init(void);
extern void SecM_RandomSeedGet(uint8 * random, uint32 len);
extern void SecM_AccessKeyGet(uint32 seedlen, uint8* accSeed, uint8 level, uint32 len, uint8* accKey);
extern void SecM_ChecksumPreprocess(void);
extern void SecM_ChecksumProcess(const uint8 * data,uint32 size);
extern void SecM_ChecksumFinish(uint8 * crcdata, uint32 crclen);
extern void SecM_Crc32Preprocess(void);
extern void SecM_Crc32Process(const uint8 * data,uint32 size);
extern void SecM_Crc32Finish(uint8 * checksum);
extern void SecM_HSE_Process(uint8 temp);
extern uint32 genKeyByCode(unsigned char* seed, unsigned char* longKey, unsigned char* accKey);

extern void SecM_Crc16Preprocess(void);
extern void SecM_Crc16Process(const uint8 * data,uint32 size);
extern void SecM_Crc16Finish(uint8 * checksum);






























 



 



 


 



 
extern uint8 g_BootM_SIBTimeout;
extern uint8 g_BootM_SIBData[(3u)];


 
extern uint8 BootM_GetFlag(void);
extern uint8 BootM_FlagHandle(uint8 Flag);
extern uint8 BootM_IsAllLBA_Valid(void);
extern uint8 BootM_IsAllLBB_Valid(void);
extern void BootM_ReprogramRespond(void);



 


 
uint32 g_CrcAddr[2] = {0};
uint32 g_CrcAddrEnd[2] = {0};
uint8 g_DownBlockStart[2] = {0};
uint8 g_DownBlockEnd[2] = {0};
uint8 g_DownBlockIdx = 0;


 
static void ChecksumCompute(uint32 sAddr, uint32 size, uint8 method, uint8 drvId);
static uint8 ChecksumVerifyDependencies(void);


 



















 
static void ChecksumCompute(uint32 sAddr, uint32 size, uint8 method, uint8 drvId)
{
    uint32 readCnt;
    uint32 dataAddr;
    uint32 dataSize;
    uint8 dataBuf[((uint16)128U)];
    uint8 retValue = 0U;

    dataAddr = sAddr;
    dataSize = size;

    for (readCnt = (dataSize / ((uint16)128U)); readCnt > 0; readCnt--)
    {
        if(drvId == 1U)
        {
             
            retValue = FlsIf_Read(dataAddr, ((uint16)128U), dataBuf);
        }
        else if(drvId == 0U)
        {
            CommF_DataCopy(dataBuf, (void *)dataAddr, ((uint16)128U));
            retValue = 0U;
        }
        else
        {
            retValue = 1U;
            break;
        }

        if (0U == retValue)
        {
             
            SecM_Crc32Process(dataBuf,((uint16)128U));
        }
        else
        {
            break;
        }
         
        dataAddr += ((uint16)128U);

        Diag_NRC78Send();
         
        Diag_WdgFeed();
    }

    if(0U == retValue)
    {
        dataSize %= ((uint16)128U);
        if (dataSize != 0)
        {
            if(drvId == 1U)
            {
                 
                retValue = FlsIf_Read(dataAddr, dataSize, dataBuf);
            }
            else 
            {
                CommF_DataCopy(dataBuf, (void *)dataAddr, dataSize);
            }

            if (0U == retValue)
            {
                SecM_Crc32Process(dataBuf,dataSize);
            }
        }
    }

    Diag_NRC78Send();
     
    Diag_WdgFeed();
}

















 
uint8 RC_ChecksumVerify(uint8 * checksum)
{
    uint8 retValue = 1U;
    uint8 LBType;
    uint8 drvId;
    uint8 idxInit = 0;
    uint8 idxCnt = 0;
    uint8 index;
    uint8 crc[0x04U] = {0};

    if ((g_DownSegIdx >= ((uint8)20U))
        || (g_CurLogicalBlockId == ((uint8)0xFFU)))
    {
         
        return retValue;
    }
     
    LBType = (((g_CurLogicalBlockId) < (0x02u)) ? (g_logicalBlocks[g_CurLogicalBlockId]. memType) : (((uint8)0xFFU)));

     
    SecM_Crc32Preprocess();

    if(LBType == 0U)
    {
        idxInit = 0;
        idxCnt = 1;
        drvId = 0U;
    }
    else
    {
        idxInit = g_DownBlockStart[g_DownBlockIdx - 1U];
        idxCnt = 1U + g_DownBlockEnd[g_DownBlockIdx - 1U];
        drvId = 1U;
    }

    for(index = idxInit; index < idxCnt; index++)
    {
        ChecksumCompute(g_DownSeg[index].sAddr, g_DownSeg[index].size, (1U), drvId);
    }

    SecM_Crc32Finish(&crc[0]);

    if(CommF_DataCompare(checksum, crc, 0x04U) == 0U)
    {
        if (0U == LBType)
        {
            retValue = FlsIf_Init();
        }
        else
        {
            retValue = 0U ;
        }
    }

    return retValue;
}

















 
static uint8 ChecksumVerifyDependencies(void)
{
    uint8 block;
    uint8 blockNum;
    uint8 idxInit = 0;
    uint8 idxCnt = 0;
    uint8 index;
    uint32 addr,size;
    uint8 retValue = 0U;
    uint8 crcRef[0x04U]={0};
    uint8 crcValue[0x04U]={0};

    blockNum = g_DownBlockIdx;

    for(block = 0;block < blockNum;block++)
    {
         
        FlsIf_Read(g_CrcAddr[block], (4U), crcRef);
         
        g_DownBlockIdx = block + 1U;
        CommF_DataSet(crcValue, 0, (4U));
        SecM_Crc32Preprocess();

        idxInit = g_DownBlockStart[block];
        idxCnt = 1U + g_DownBlockEnd[block];
        for(index = idxInit; index < idxCnt; index++)
        {
            addr = g_DownSeg[index].sAddr;
            size = g_DownSeg[index].size;
            if(addr == g_CrcAddrEnd[block])
            {
                size = size - (4U);
            }
            ChecksumCompute(addr, size, (0U), 1U);
        }

        SecM_Crc32Finish(&crcValue[0]);
         
        if(CommF_DataCompare(crcValue, crcRef, 0x04U) != 0U)
        {
            retValue = 1U;
            break;
        }
    }

    return retValue;
}

















 
uint8 RC_CheckDependency(void)
{
    uint8 retValue = 0U;

    Diag_NRC78Send();

    retValue = ChecksumVerifyDependencies();

    if(0U == retValue)
    {
        if((DcmState . State . AppACrc == 1U))
        {
            retValue = Diag_FlagWrite(0x04u, (uint8*)&g_FlagsInfo[0x04u].flagData);
        }

        if((DcmState . State . CalCrc == 1U))
        {
            retValue = 0U;
        }

         
        if(0U == retValue)
        {
            retValue = 0U;
        }
        retValue = FlsIf_DeInit();
       
        g_DownSegIdx = ((uint8)0xFFU);       
        g_CurLogicalBlockId = ((uint8)0xFFU);
    }

    return retValue;
}




















 
uint8 RC_EraseMem_Preprocess(uint8* buf, uint16 len)
{
    uint8 AddressFormat;
    uint8 SizeFormat;
    uint32 MemoryAddress=0;
    uint32 MemorySize=0;
    uint8 Ret = 0x00U;
    uint8 LBId;

     
    AddressFormat = buf[0] & (uint8)0x0Fu;
     
    SizeFormat=(uint8)(buf[0]>>(uint8)0x04u);

     
    if((len!=(5U +0x04U + 0x04U)) ||
        (AddressFormat != 0x04U) ||
        (SizeFormat != 0x04U))
    {
        Ret = 0x01U;
    }
    else
    {
         
        MemoryAddress = CommF_GetUint32DataValue(&buf[1],0x04U);
         
        MemorySize = CommF_GetUint32DataValue(&buf[0x04U+1U],0x04U);
         
        LBId = MemM_LBIdGet(MemoryAddress,MemorySize);
         
        if (LBId != ((uint8)0xFFU))
        {
            g_CurLogicalBlockId = LBId;
            g_CrcAddr[g_DownBlockIdx] = MemoryAddress + MemorySize - (4U);
            g_DownBlockStart[g_DownBlockIdx] = g_DownSegIdx + 1U;
            g_DownBlockIdx++;
        }
        else
        {
            Ret = 0x02U;
        }
    }

    return Ret;
}

















 
uint8 RC_EraseMemory(void)
{
    uint8 retValue = 0U;
    uint32 sAddr;
    uint32 size;

     
    Diag_NRC78Send();

    sAddr = (((g_CurLogicalBlockId) < (0x02u)) ? (g_logicalBlocks[g_CurLogicalBlockId]. sBlockAddr) : (((uint32)0xFFFFFFFFUL))) - (0x200U);
    size = (((g_CurLogicalBlockId) < (0x02u)) ? (g_logicalBlocks[g_CurLogicalBlockId]. BlockSize) : (((uint32)0xFFFFFFFFUL)));

     
    retValue = FlsIf_Erase(sAddr, size);

    if (1U == retValue)
    {
         
        g_CurLogicalBlockId = ((uint8)0xFFU);
        g_DownSegIdx = ((uint8)0xFFU);
    }

    return retValue;
}



















 
uint8 RC_ActivationAndRollback(void)
{
    uint8 retValue = 0U;

   
    return retValue;
}


















 
uint8 RC_CheckSVN(void)
{
    uint8 retValue = 0U;

   
    return retValue;
}
