




 






 










 



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

 


 
 
 












 
 
 
extern uint8  EEIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_DeInit(void);
extern void   EEIf_Init(void);
 



























 


 




 


 

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



 
SignatureHeaderType g_pSignatureHeader;

 
uint32_t ModuleAddressInfoSize = 0U;






 
uint8_t g_cryptoTypeFlag = 0xFF;






 
static uint8_t IsAllFF(const uint8_t *data, uint32_t length)
{
    for(uint32_t i = 0; i < length; i++)
    {
        if(data[i] != 0xFF)
        {
            return 0;
        }
    }
    return 1;
}





 
static uint8_t ValidateModuleID(uint16_t moduleID)
{
    uint8_t byte1 = (moduleID >> 8) & 0xFF;
    uint8_t byte2 = moduleID & 0xFF;
    
     
    if(byte1 != 0xA1)
    {
        return 0x02;
    }
    
     
    if(!((byte2 == 0x01) ||  
         (byte2 == 0x90) ||  
         (byte2 == 0x91) ||  
         ((byte2 >= 0x02) && (byte2 <= 0x40))  ))
    {
        return 0x02;
    }
    
    return 0x00;
}





 
static uint8_t ValidateSingleModuleAddressInfo(const ModuleAddressInfoType *moduleAddressInfo)
{
     
    if(moduleAddressInfo->startAddress > 0x1FFFFFFF)
    {
        return 0x02;
    }
    
     
    if((moduleAddressInfo->startAddress + moduleAddressInfo->length) > 0x1FFFFFFF)
    {
        return 0x02;
    }
    
    return 0x00;
}





 
static uint8_t ValidateSignerInfo(const SignerInfoType *pSignerInfo)
{
     
    if(pSignerInfo->certificateFormat != 0x20)
    {
        return 0x02;
    }
    
     
    for(uint8_t i = 0; i < 8; i++)
    {
        if(pSignerInfo->productModuleNumber[i] != 0)
        {
            return 0x02;
        }
    }
    
     
    for(uint8_t i = 0; i < 16; i++)
    {
        if(pSignerInfo->customParameters[i] != 0)
        {
            return 0x02;
        }
    }
    
     
    if(!(pSignerInfo->signatureAlgorithm == 0x04 ||
         pSignerInfo->signatureAlgorithm == 0x01))
    {
        return 0x04;
    }
    
     
    if(!(pSignerInfo->publicKeyCurveParameter == 0x11 ||
         pSignerInfo->publicKeyCurveParameter == 0x21))
    {
        return 0x02;
    }
    
     
    if(!(pSignerInfo->hashAlgorithm == 0x02 ||
         pSignerInfo->hashAlgorithm == 0x07))
    {
        return 0x02;
    }
    
     
    if(!((pSignerInfo->rootKeyIndex == 0x10) ||
         (pSignerInfo->rootKeyIndex == 0x11) ||
         (pSignerInfo->rootKeyIndex == 0x20) ||
         (pSignerInfo->rootKeyIndex == 0x21) ||
         (pSignerInfo->rootKeyIndex == 0x40) ||
         (pSignerInfo->rootKeyIndex == 0x41)))
    {
        return 0x02;
    }
    
    return 0x00;
}





 
uint8_t SignatureHeader_DetermineCryptoType(void)
{
    uint8_t result = 0x00;
    
     
    g_cryptoTypeFlag = 0xFF;
    
     
    result = ValidateModuleID(g_pSignatureHeader.pPrefix->ModuleID);
    if(result != 0x00)
    {
        return result;
    }
    
     
    if(g_pSignatureHeader.pPrefix->NBID != 0x0000)
    {
        result = 0x02;
        return result;
    }
    
     
    if(g_pSignatureHeader.pPrefix->moduleCount >= 10U)
    {
        result = 0x02;
        return result;
    }
    
     
    for(uint16_t i = 0; i < g_pSignatureHeader.pPrefix->moduleCount; i++)
    {
        result = ValidateSingleModuleAddressInfo(&g_pSignatureHeader.pModuleAddressInfo[i]);
        if(result != 0x00)
        {
            return result;
        }
    }

    
     
    if(!IsAllFF(g_pSignatureHeader.pSuffix->MessageDigestNational, 32))
    {
         
        if(!IsAllFF(g_pSignatureHeader.pSuffix->SignatureNational, 64))
        {
             
            if(ValidateSignerInfo(&g_pSignatureHeader.pSuffix->SignerInfoNational) == 0x00)
            {
                g_cryptoTypeFlag = 0x01;  
                result = 0x00;
                return result;
            }
            else
            {
                result = 0x02;
                return result;
            }
        }
        else
        {
            result = 0x02;
            return result;
        }
    }
    else
    {
        result = 0x02;
        return result;
    }

    
     
    if(!IsAllFF(g_pSignatureHeader.pSuffix->MessageDigestInternational, 32))
    {
         
        if(!IsAllFF(g_pSignatureHeader.pSuffix->SignatureInternational, 64))
        {
             
            if(ValidateSignerInfo(&g_pSignatureHeader.pSuffix->SignerInfoInternational) == 0x00)
            {
                g_cryptoTypeFlag = 0x02;  
                result = 0x00;
                return result;
            }
            else
            {
                result = 0x02;
                return result;
            }
        }else
        {
            result = 0x02;
            return result;
        }
    }
    else
    {
        result = 0x02;
        return result;
    }    
}




 
uint8_t SignatureHeader_Init(void)
{
    uint32_t BaseAddress = ((uint32_t)0x00080200U); 

     
    g_pSignatureHeader.pPrefix = (SignatureHeaderPrefixType *)BaseAddress;   
    uint16_t moduleCount = g_pSignatureHeader.pPrefix->moduleCount;

    
    g_pSignatureHeader.pModuleAddressInfo =                                             (ModuleAddressInfoType *)(                                                (uint8_t *)BaseAddress + sizeof(SignatureHeaderPrefixType)                                            );
    
    ModuleAddressInfoSize = sizeof(ModuleAddressInfoType) * moduleCount;

    
    g_pSignatureHeader.pSuffix = (SignatureHeaderSuffixType *)(                                    (uint8_t *)g_pSignatureHeader.pModuleAddressInfo                                     + ModuleAddressInfoSize                                );

           
    return SignatureHeader_DetermineCryptoType();
}
