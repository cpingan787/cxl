 




















 
 



 











 
 



















 


 


 
   
 
 




















 
 



 


 


 
 




















 
 



 













 













 



 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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


 


 



 
 


 


 


 

 




















 
 



 


 


 


 
   
extern const EndToEndTransformationDescriptionType_PROFILE_01 EndToEndTransformationDescription_0;
   
extern const E2EXf_ConfigType E2EXf_Config;



 
 




















 
 



 


 
   
   


 


 

extern const TransformationTechnologyType_PROFILE_01 E2E_PROFILE_01;



 



 
 
 


 


 



 
 












 
 
 
extern  void
E2EXf_Init
(
    const E2EXf_ConfigType * config
);
 












 
 
extern  void
E2EXf_DeInit(void);

 

















 
 

 uint8
E2EXf_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx      
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx        
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx       
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);

 

















 
 

 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);
 



















 
 
extern  uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40         
(
    uint8 * buffer,   
    uint32 * bufferLength,   
    const uint8 * inputBuffer,
    uint32  inputBufferLength
);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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


 


 


 
 


 


 

 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40(void);
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   


 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
   #pragma section





 

 
   
 
static boolean E2EXf_InitFlag = 0u;
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section


 



 

 
   
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
   #pragma section





 

 
   
 
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35;
static E2E_P01ConfigType E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35;
static E2E_SMConfigType  E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40;
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13 = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34 = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35 = {0xFF};
static E2E_P01ProtectStateType E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40 = {0xFF};
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35;
static E2E_P01CheckStateType E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35;
static E2E_SMCheckStateType  E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40;
static E2E_PCheckStatusType  E2E_PCheckStatus;
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section





 

 
   


 

 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section





 

 
   
static const E2EXf_ConfigType * E2EXf_ConfigPtr = ((void *)0);
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
   #pragma section





 

 
   


 
 












 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 void
E2EXf_Init
(
    const E2EXf_ConfigType * config
)
{
    if(((void *)0) == config)
    {
        (void)Det_ReportError(176u, 0u, 0x01u, 4u);
        E2EXf_InitFlag = 0u;
    }
    else
    {
        Std_ReturnType initRet;
        E2EXf_ConfigPtr = config;
                 
        E2EXf_ConfigDataInit_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx();
        E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35();
        E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40();
        E2EXf_SMConfigDataInit_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx();
        E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35();
        E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40();
        initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx);
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01ProtectInit(&E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40);
        }
        if(0U == initRet)
        {
            initRet = E2E_P01CheckInit(&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx,&E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx,&E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,&E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,&E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,&E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,&E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,&E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,&E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,&E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,&E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,&E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,&E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,&E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,&E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,&E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,&E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,&E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,&E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,&E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,&E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,&E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,&E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,&E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx,&E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx,&E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35);
        }
        if(0U == initRet)
        {
            initRet = E2E_SMCheckInit(&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40);
        }
        if(0U == initRet)
        {
             
            E2EXf_InitFlag = 1u;
        }
      }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 void
E2EXf_DeInit(void)
{
     
    if(1u == E2EXf_InitFlag)
    {
         
        E2EXf_InitFlag = 0u;
        E2EXf_SMCheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.SMState = (E2E_SMStateType)0x01u;
        E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.SMState = (E2E_SMStateType)0x01u;
    }
    else
    {
         
        (void)Det_ReportError(176u, 0u, 0x02u, 1u);
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx, &E2EXf_ProtectState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx,&E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx,&E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx,&E2EXf_SMCheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx, &E2EXf_ProtectState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx,&E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx,&E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx,&E2EXf_SMCheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx, &E2EXf_ProtectState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,&E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,&E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,&E2EXf_SMCheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx, &E2EXf_ProtectState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,&E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,&E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,&E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,&E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx, &E2EXf_ProtectState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,&E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,&E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,&E2EXf_SMCheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx, &E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,&E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx, &E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,&E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx, &E2EXf_ProtectState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,&E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,&E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx, &E2EXf_ProtectState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,&E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,&E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,&E2EXf_SMCheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx, &E2EXf_ProtectState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,&E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,&E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,&E2EXf_SMCheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx, &E2EXf_ProtectState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,&E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,&E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,&E2EXf_SMCheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx, &E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,&E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx, &E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,&E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx, &E2EXf_ProtectState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,&E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,&E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx, &E2EXf_ProtectState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,&E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,&E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,&E2EXf_SMCheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx, &E2EXf_ProtectState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,&E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,&E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,&E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx, &E2EXf_ProtectState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,&E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,&E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,&E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx, &E2EXf_ProtectState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,&E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,&E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,&E2EXf_SMCheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx, &E2EXf_ProtectState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,&E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,&E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,&E2EXf_SMCheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx, &E2EXf_ProtectState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,&E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,&E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,&E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx, &E2EXf_ProtectState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,&E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,&E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,&E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx, &E2EXf_ProtectState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,&E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,&E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,&E2EXf_SMCheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx, &E2EXf_ProtectState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,&E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,&E2EXf_SMCheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx, &E2EXf_ProtectState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx,&E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx,&E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx,&E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx, &E2EXf_ProtectState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx,&E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx,&E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx,&E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
  

















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
         
        if( (((void *)0) == inputBuffer) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 4u);
            retVal = 0xFFu;
        }
         
        if( ((0U == retVal) || (((void *)0) != inputBuffer)) && (inputBufferLength < ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x03u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            uint32 offset;
            uint16 shiftLen = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u;
            uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
             
            for(offset = 0; offset < shiftLen; offset++)
            {
                buffer[offset] = inputBuffer[offset];
            }
            for(offset = 0; offset < (inputBufferLength - shiftLen); offset++)
            {
                buffer[len + offset] = inputBuffer[shiftLen + offset];
            }
        }
         
        if(0U == retVal)
        {
             
            *bufferLength = ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
            if(*bufferLength != ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfISignalProps->dataLength >> 3u))
            {
                retVal = 0xFFu;
            }
            else
            {
                 
                if((LOWER12BIT != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfTechnology->E2EXfDescription->dataIdMode)&&(16u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfTechnology->bufferProperty.headerLength))
                {
                     
                    buffer[(E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfTechnology->E2EXfDescription->counterOffset >> 3u) ] |= 0xF0u;
                }
                 
                retVal = E2E_P01Protect(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40, &E2EXf_ProtectState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40, buffer);
                if((E2E_SMStateType)0x00u != retVal)
                {
                     
                    retVal = 0xFFu;
                }
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
 



















 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
 uint8
E2EXf_Inv_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40
(
    uint8 * buffer,     
    uint32 * bufferLength,     
    const uint8 * inputBuffer,
    uint32  inputBufferLength
)
{
    uint8 retVal = 0U;
    uint32 E2E_dataLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
     
    if(0u == E2EXf_InitFlag)
    {
         
        (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 1u);
        retVal = 0xFFu;
    }
    if(0U == retVal)
    {
        Std_ReturnType checkRet = 1U;
        boolean profileBehavior;
         
        if(PRE_R4_2 == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfTechnology->E2EXfDescription->profileBehavior)
        {
            E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxDeltaCounter = E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxDeltaCounterInit;
            profileBehavior = 0u;
        }
        else
        {
            profileBehavior = 1u;
        }
         
         
        if( ((((void *)0) == inputBuffer) && (0u != inputBufferLength)) || (((void *)0) == bufferLength) || (((void *)0) == buffer) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 4u);
            retVal = 0xFFu;
        }

         
        if( (0U == retVal) && ((((void *)0) != inputBuffer) && (inputBufferLength < (((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u)))) )
        {
             
            (void)Det_ReportRuntimeError(176u, 0u, 0x04u, 3u);
            retVal = 0xFFu;
        }
        if(0U == retVal)
        {
            if(((void *)0) != E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfComSpecProps)
            {
                if(1u == E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfComSpecProps->disabelEndToEndCheck)
                {
                    checkRet = 2u;
                    if(0u ==inputBufferLength)
                    {
                        *bufferLength = 0;
                    }
                    else
                    {
                        *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                    }
                }
            }
            if(2u != checkRet)
            {
                if((((void *)0) == inputBuffer) && (0u == inputBufferLength))
                {
                    static uint8 bufTemp = 0;
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.NewDataAvailable = 0u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,&bufTemp);
                }
                else if(E2E_dataLength == ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43].E2EXfISignalProps->dataLength >> 3u))
                {
                    E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.NewDataAvailable = 1u;
                    checkRet = E2E_P01Check(&E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,&E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,inputBuffer);
                }
                else
                {
                    retVal = 0xFFu;
                }
            }
             
             
            if((0U == retVal) && (1U != checkRet) && (((void *)0) != inputBuffer))
            {
                uint16 shiftLen = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->E2EXfDescription->upperHeaderBitsToShift >> 3u);
                uint16 len = (E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->bufferProperty . headerLength >> 3u) + shiftLen;
                uint32 offset;
                for(offset = 0; offset < shiftLen; offset++)
                {
                    buffer[offset] = inputBuffer[offset];
                }
                for(offset = 0; offset < (inputBufferLength - len); offset++)
                {
                    buffer[shiftLen + offset] = inputBuffer[len + offset];
                }
            }
        }
        if((0U == retVal) && (2u != checkRet))
        {
            E2E_PCheckStatus = E2E_P01MapStatusToSM(checkRet,E2EXf_CheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.Status,profileBehavior);
             
            if((E2E_SMStateType)0x00u == E2E_SMCheck(E2E_PCheckStatus,&E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,&E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40) )
            {
                 
                retVal = (E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.SMState) << 4u;
                retVal |= E2E_PCheckStatus & 0x0Fu;
                 
                if( 0u == inputBufferLength )
                {
                    *bufferLength = 0;
                }
                else
                {
                    *bufferLength = inputBufferLength - ((uint32)E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43]. E2EXfTechnology->bufferProperty . headerLength >> 3u);
                }
            }
            else
            {
                 
                retVal = 0x77u;
            }
        }
    }
     
    return retVal;
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   



     
 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0];
    E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1];
    E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2];
    E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3];
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4];
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5];
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6];
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7];
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8];
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9];
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14];
    E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15];
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16];
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17];
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18];
    E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19];
    E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20];
    E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21];
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22];
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23];
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24];
    E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25];
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26];
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27];
    E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28];
    E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29];
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30];
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31];
    E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32];
    E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33];
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34];
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35];
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36];
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37];
    E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38];
    E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39];
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40];
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_ConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43];
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataID = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataId;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataLength = E2EXf_ConfigProfilePtr.E2EXfISignalProps->dataLength;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.CounterOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->counterOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.CRCOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->crcOffset;
    E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataIDNibbleOffset = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdNibbleOffset;
    if (ALL16BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataIDMode = E2E_P01_DATAID_BOTH;
    }
    if (ALTERNATING8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataIDMode = E2E_P01_DATAID_ALT;
    }
    if (LOWER8BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataIDMode = E2E_P01_DATAID_LOW;
    }
    if (LOWER12BIT == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataIDMode = E2E_P01_DATAID_NIBBLE;
    }
    if(NOTUSED == E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->dataIdMode)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.DataIDMode = E2E_P01_DATAID_NOUSED;
    }
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->syncCounterInit;
         
         
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxDeltaCounterInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxDeltaCounter - 1u;
    }
    else
    {
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxNoNewOrRepeatedData = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxNoNewOrRepeatedData;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.SyncCounterInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->syncCounterInit;
        E2EXf_ConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxDeltaCounterInit =(uint8)E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxDeltaCounter -1u;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[0];
    E2EXf_SMCheckState_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_CCU_PTCANFD_100ms_FrP02_0x317_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[1];
    E2EXf_SMCheckState_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ECM_ERCANFD_10ms_FrP00_0x84_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[2];
    E2EXf_SMCheckState_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[3];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP20_0x308_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[4];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_100ms_FrP32_0x331_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[5];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[6];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTCANFD_50ms_FrP14_0x211_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[7];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[8];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[9];
    E2EXf_SMCheckState_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[10];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[11];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[12];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[13];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[14];
    E2EXf_SMCheckState_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[15];
    E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[16];
    E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[17];
    E2EXf_SMCheckState_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[18];
    E2EXf_SMCheckState_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[19];
    E2EXf_SMCheckState_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[20];
    E2EXf_SMCheckState_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[21];
    E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[22];
    E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[23];
    E2EXf_SMCheckState_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[24];
    E2EXf_SMCheckState_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[25];
    E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[26];
    E2EXf_SMCheckState_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[27];
    E2EXf_SMCheckState_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[28];
    E2EXf_SMCheckState_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[29];
    E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[30];
    E2EXf_SMCheckState_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[31];
    E2EXf_SMCheckState_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[32];
    E2EXf_SMCheckState_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[33];
    E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[34];
    E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[35];
    E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[36];
    E2EXf_SMCheckState_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[37];
    E2EXf_SMCheckState_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[38];
    E2EXf_SMCheckState_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[39];
    E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP01_0x163_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[40];
    E2EXf_SMCheckState_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_SDM_CHCANFD_20ms_FrP02_0x187_Rx.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[41];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[42];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   

 








 
 
 
 




















 
 



 



 
 












 

   


 

























 




 



 

 
 
    #pragma section




 

 
   
static  void
E2EXf_SMConfigDataInit_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40(void)
{
    const E2EXf_ConfigType_PROFILE_01 E2EXf_ConfigProfilePtr = E2EXf_ConfigPtr->E2EXf_Config_PROFILE_01[43];
    E2EXf_SMCheckState_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.SMState = (E2E_SMStateType)0x01u;
    if(((void *)0) == E2EXf_ConfigProfilePtr.E2EXfComSpecProps)
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfTechnology->E2EXfDescription->maxErrorStateInvalid;
    }
    else
    {
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.WindowSizeInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.WindowSizeValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.WindowSizeInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->windowSizeInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.ClearToInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->clearFromValidToInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MinOkStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxErrorStateInit = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInit;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MinOkStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MinOkStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->minOkStateInvalid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxErrorStateValid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateValid;
        E2EXf_SMConfigData_E2ETransformer_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.MaxErrorStateInvalid = E2EXf_ConfigProfilePtr.E2EXfComSpecProps->maxErrorStateInvalid;
    }
}
 




















 
 



 



 
 












 

   


 

 
























 




 



 

 
 
   #pragma section




 

 
   
   
