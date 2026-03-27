 




















 
 



 


 
 




















 
 



 
 




















 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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
    ALL16BIT = 0u,
    ALTERNATING8BIT,
    LOWER12BIT,
    LOWER8BIT,
    NOTUSED
} DataIdModeType;

typedef enum
{
    CUSTOM = 0u,
    SAFETY,
    SECURITY,
    SERIALIZER
} TransformerClassType;

typedef enum
{
    PRE_R4_2 = 0u,
    R4_2
} ProfileBehaviorType;

typedef struct
{
    const uint16 counterOffset;
    const uint16 crcOffset;
    const DataIdModeType dataIdMode;
    const uint16 dataIdNibbleOffset;
    const uint8 maxDeltaCounter;
    const uint8 maxErrorStateInit;
    const uint8 maxErrorStateInvalid;
    const uint8 maxErrorStateValid;
    const uint8 maxNoNewOrRepeatedData;
    const uint8 minOkStateInit;
    const uint8 minOkStateInvalid;
    const uint8 minOkStateValid;
    const ProfileBehaviorType profileBehavior;
    const char *profileName;
    const uint8 syncCounterInit;
    const uint16 upperHeaderBitsToShift;
    const uint8 windowSizeInit;
    const uint8 windowSizeValid;
    const uint8 windowSizeInvalid;
    const boolean clearFromValidToInvalid;
} EndToEndTransformationDescriptionType_PROFILE_01;

typedef struct
{
    const uint16 dataId;
    const uint16 dataLength;
} EndToEndTransformationISignalPropsType_PROFILE_01;

typedef struct
{
    const boolean disabelEndToEndCheck;
    const uint32 maxDeltaCounter;
    const uint8 maxErrorStateInit;
    const uint8 maxErrorStateInvalid;
    const uint8 maxErrorStateValid;
    const uint8 maxNoNewOrRepeatedData;
    const uint8 minOkStateInit;
    const uint8 minOkStateInvalid;
    const uint8 minOkStateValid;
    const uint8 syncCounterInit;
    const uint8 windowSizeInit;
    const uint8 windowSizeValid;
    const uint8 windowSizeInvalid;
    const boolean clearFromValidToInvalid;
} EndToEndTransformationComSpecPropsType;

typedef struct
{
    const uint16 headerLength;
    const boolean inPlace;
} BufferProperytType;

typedef struct
{
    const BufferProperytType bufferProperty;
    const boolean needsOriginalData;
    const char *protocol;
    const EndToEndTransformationDescriptionType_PROFILE_01*E2EXfDescription;
    const TransformerClassType transformerClass;
    const char *version;
} TransformationTechnologyType_PROFILE_01;

typedef struct
{
    const TransformationTechnologyType_PROFILE_01 *E2EXfTechnology;
    const EndToEndTransformationISignalPropsType_PROFILE_01 *E2EXfISignalProps;
    const EndToEndTransformationComSpecPropsType *E2EXfComSpecProps;
} E2EXf_ConfigType_PROFILE_01;

typedef struct
{
    const E2EXf_ConfigType_PROFILE_01* E2EXf_Config_PROFILE_01;
}E2EXf_ConfigType;


 


 

 




















 
 



 
 




















 
 



 













 













 



 


 












 












 


 










 


 



 

























 












 












 


 













 


 












 
 



 
 




















 
 



 
 

 

 

 

 

 

 

 


      


   


   


   


   

 
 



 


 












 
 



 
 
 




















 
 
 

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




 
 
 











 

typedef uint8 E2E_PCheckStatusType;
 
 

 

 

 
 

typedef uint8 E2E_SMStateType;
 
 
 

 
 
 
 

 
 
 


 
typedef struct
{
     
    uint8 WindowSizeValid;
    

 
    uint8 MinOkStateInit;
    
 
    uint8 MaxErrorStateInit;
    
 
    uint8 MinOkStateValid;
    
 
    uint8 MaxErrorStateValid;
    
 
    uint8 MinOkStateInvalid;
    
 
    uint8 MaxErrorStateInvalid;
     
    uint8 WindowSizeInit;
     
    uint8 WindowSizeInvalid;
     
    boolean ClearToInvalid;
} E2E_SMConfigType;

typedef struct
{
    
 
    uint8 ProfileStatusWindow[16];
     
    uint8 WindowTopIndex;
    
 
    uint8 OkCount;
    
 
    uint8 ErrorCount;
     
    E2E_SMStateType SMState;
} E2E_SMCheckStateType;



 


 












 

extern  Std_ReturnType E2E_SMCheck(
    E2E_PCheckStatusType ProfileStatus,
    const E2E_SMConfigType * ConfigPtr,
    E2E_SMCheckStateType * StatePtr);











 

extern  Std_ReturnType E2E_SMCheckInit(
    E2E_SMCheckStateType * StatePtr,
    const E2E_SMConfigType * ConfigPtr);


    

 
    static inline uint8 E2E_P01_Min(uint8 a, uint8 b)
    {
        return (((a) <= (b)) ? (a) : (b));
    }
    

 
    

 
     
    typedef enum
    {
        
 
        E2E_P01_DATAID_BOTH,
        
 
        E2E_P01_DATAID_ALT,
         
        E2E_P01_DATAID_LOW,
        


 
        E2E_P01_DATAID_NIBBLE,
         
        E2E_P01_DATAID_NOUSED
    } E2E_P01DataIDMode;

    
 
    typedef struct
    {
        
 
        uint16 CounterOffset;
        
 
        uint16 CRCOffset;
         
        uint16 DataID;
        


 
        uint16 DataIDNibbleOffset;
        
 
        E2E_P01DataIDMode DataIDMode;
         
        uint16 DataLength;
        
 
        uint8 MaxDeltaCounterInit;
        
 
        uint8 MaxNoNewOrRepeatedData;
        

 
        uint8 SyncCounterInit;
    } E2E_P01ConfigType;

    typedef struct
    {
         
        uint8 Counter;
    } E2E_P01ProtectStateType;

    typedef enum
    {
        


 
        E2E_P01STATUS_OK = 0x00,
        

 
        E2E_P01STATUS_NONEWDATA = 0x01,
        


 
        E2E_P01STATUS_WRONGCRC = 0x02,
        


 
        E2E_P01STATUS_SYNC = 0x03,
        

 
        E2E_P01STATUS_INITIAL = 0x04,
        

 
        E2E_P01STATUS_REPEATED = 0x08,
        

 
        E2E_P01STATUS_OKSOMELOST = 0x20,
        

 
        E2E_P01STATUS_WRONGSEQUENCE = 0x40
    } E2E_P01CheckStatusType;

    typedef struct
    {
         
        uint8 LastValidCounter;
        
 
        uint8 MaxDeltaCounter;
        
 
        boolean WaitForFirstData;
        
 
        boolean NewDataAvailable;
        
 
        uint8 LostData;
         
        E2E_P01CheckStatusType Status;
        

 
        uint8 SyncCounter;
        
 
        uint8 NoNewOrRepeatedDataCounter;
    } E2E_P01CheckStateType;
    

 
    

 
    











 

    extern  Std_ReturnType E2E_P01Protect(
        const E2E_P01ConfigType * ConfigPtr,
        E2E_P01ProtectStateType * StatePtr,
        uint8 * DataPtr);

    









 

    extern  Std_ReturnType
        E2E_P01ProtectInit(E2E_P01ProtectStateType * StatePtr);

    











 

    extern  Std_ReturnType E2E_P01Check(
        const E2E_P01ConfigType * Config,
        E2E_P01CheckStateType * State,
        const uint8 * Data);

    









 

    extern  Std_ReturnType
        E2E_P01CheckInit(E2E_P01CheckStateType * State);

    








 

    extern  E2E_PCheckStatusType
        E2E_P01MapStatusToSM(Std_ReturnType CheckReturn, E2E_P01CheckStatusType Status, boolean ProfileBehavior);



 
 


 


 


 



 


 


 
   
extern const EndToEndTransformationDescriptionType_PROFILE_01 EndToEndTransformationDescription_0;
   
extern const E2EXf_ConfigType E2EXf_Config;



 


 
   
   


 


 

extern const TransformationTechnologyType_PROFILE_01 E2E_PROFILE_01;



 



 


 


 


 


 


 

 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
   #pragma section





 

 
   
const TransformationTechnologyType_PROFILE_01 E2E_PROFILE_01 =
{
    {
        12,             
        0u             
    },
    0u,                 
    "E2E",             
    &EndToEndTransformationDescription_0,
    SAFETY,             
    "1.0.0",             
};
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section





 

 
   



 
