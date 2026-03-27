 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






























 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 















 
 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 




 
 
 
 



 










 




 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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



 



 
 



 



 

 



 

 
 
 
 
 
 
 
 
 
 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
typedef struct STag_Can_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  const void * pHWUnitInfo;
   
  const void *
    pControllerPCConfig;
   
  const void *
    pControllerPBConfig;
   
  const void * pHohConfig;
   
  const void * pPhysicalControllerToIndex;
} Can_ConfigType;

 
typedef enum ETag_Can_SelfTestType
{
   
  CAN_T_SELF_OFF = 0,
   
  CAN_T_SELF_EXTERNAL,
   
  CAN_T_SELF_INTERNAL
} Can_SelfTestType;



 
 
typedef enum ETag_Can_HWConsistencyModeType
{
   
  CAN_STATIC = 0,
   
  CAN_DYNAMIC
}Can_HWConsistencyModeType;

 
 
typedef struct STag_Can_MirrorGlobalType
{
   
  uint32 ulGCTR;
} Can_MirrorGlobalType;

  
 
typedef struct STag_Can_MirrorChannelType
{
   
  uint32 ulCFG;
   
  uint32 ulCTR;
   
  uint32 ulFDCFG;
   
  uint32 ulDCFG;
} Can_MirrorChannelType;

 
 
typedef struct STag_Can_MirrorHohType
{
   
  uint32 ulRFCC;
   
  uint32 ulTXQCC;
   
  uint32 ulCFCC;
} Can_MirrorHohType;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".CAN_CFG_DBTOC_UNSPECIFIED"




 
 


 
 
 
 
extern const Can_ConfigType Can_GaaConfig[];
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PUBLIC_CODE_ROM"




 
 


 
 

 
extern  void Can_Init
(const Can_ConfigType * Config);

 
extern  Std_ReturnType Can_ChangeBaudrate(
  uint8 Controller, const uint16 Baudrate);

 
extern  Std_ReturnType Can_CheckBaudrate(
  uint8 Controller, const uint16 Baudrate);

 
extern  Std_ReturnType Can_SetBaudrate(
  uint8 Controller, uint16 BaudRateConfigID);

 
extern  Can_ReturnType Can_SetControllerMode(
  uint8 Controller, Can_StateTransitionType Transition);

 
extern  void Can_DisableControllerInterrupts(
  uint8 Controller);

 
extern  void Can_EnableControllerInterrupts(
  uint8 Controller);

 
extern  Can_ReturnType Can_Write(
  Can_HwHandleType Hth,
  const Can_PduType * PduInfo);

 
extern  void Can_MainFunction_Write(void);
extern  void Can_MainFunction_Write_0(void);
 
extern  void Can_MainFunction_Read(void);
extern  void Can_MainFunction_Read_0(void);
 
extern  void Can_MainFunction_BusOff(void);
 
extern  void Can_MainFunction_Wakeup(void);
 
extern  void Can_MainFunction_Mode(void);

extern  void Can_GetVersionInfo(
  Std_VersionInfoType * versioninfo);

extern  Can_ReturnType Can_CheckWakeup(
  uint8 Controller);

extern  Std_ReturnType Can_CheckHWConsistency
                               (Can_HWConsistencyModeType LenHWConsistencyMode);

extern  Std_ReturnType Can_RAMTest(
  uint32 LulPageID);

 
extern  Std_ReturnType Can_SelfTestChannel
                    (uint8 LucController, Can_SelfTestType LenTest_Transition);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_APPL_CODE_ROM"




 
 


 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 

































 
 




 



 
 

 



 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 

 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 

 
 
 

 

 

 
 

 
 
 

 
 
 

 

 

 

 

 
 

 
 
 

 
 
 
 
 

 
 
 
 
 
 
 
 

 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 

 

 
 
 

 
 
 

 

 
 
 

 
 
 
 

 
 
 
 
 
 
 

 

 
 
 
 
 
 
 

 

 

 

 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 

 

 
 
 

 

 

 
 
 
 
 

 
 
 

 

 
 
 
 

 
 

 
 


 
 
typedef struct STag_Can_ChRegType
{
 
  uint32 ulCFG;                                   
 
  uint32 ulCTR;                                   
 
  uint32 ulSTS;                                   
 
  uint32 ulERFL;                                  
} Can_ChRegType;

 
typedef struct STag_Can_FDChRegType
{
   
  uint32 ulDCFG;                             
   
  uint32 ulFDCFG;                            
   
  uint32 ulFDCTR;                            
   
  uint32 ulFDSTS;                            
   
  uint32 ulFDCRC;                            
   
   
  uint32 aaReserved[3];                      
   
} Can_FDChRegType;
 
typedef struct STag_Can_RRuleRegType
{                                          
   
  uint32 ulGAFLID;                         
   
  uint32 ulGAFLM;                          
   
   
  uint32 aaGAFLP[2];                       
   
} Can_RRuleRegType;

   
typedef struct STag_Can_HrhRegType
{
   
  uint32 ulRMID;                                  
   
  uint32 ulRMPTR;                                 
   
   
  uint32 aaRMDF[2];                               
   
} Can_HrhRegType;

 
typedef struct STag_Can_FDHrhRegType
{
   
  uint32 ulFDRMID;                                
   
  uint32 ulFDRMPTR;                               
   
  uint32 ulFDRMFDSTS;                             
   
   
  uint32 aaFDRMDF[5];                             
   
} Can_FDHrhRegType;

 
typedef struct STag_Can_HRTFIFORegType
{
   
  uint32 ulRFID;                                  
   
  uint32 ulRFPTR;                                 
   
   
  uint32 aaRFDF[2];                               
   
} Can_HRTFIFORegType;

 
typedef struct STag_Can_FDHRTFIFORegType
{
   
  uint32 ulFDRFID;                                
   
  uint32 ulFDRFPTR;                               
   
  uint32 ulFDRFFDSTS;                             
   
   
  uint32 aaFDRFDF[29];                            
   
} Can_FDHRTFIFORegType;

 
typedef struct STag_Can_CFIFORegType
{
   
  uint32 ulCFID;                                  
   
  uint32 ulCFPTR;                                 
   
   
  uint32 aaCFDF[2];                               
   
} Can_CFIFORegType;

 
typedef struct STag_Can_FDCFIFORegType
{
   
  uint32 ulFDCFID;                           
   
  uint32 ulFDCFPTR;                          
   
  uint32 ulFDCSTS;                           
   
   
  uint32 aaFDCFDF[29];                       
   
} Can_FDCFIFORegType;

 
typedef struct STag_Can_HthRegType
{
   
  uint32 ulTMID;                                  
   
  uint32 ulTMPTR;                                 
   
   
  uint32 aaTMDF[2];                               
   
} Can_HthRegType;

 
typedef struct STag_Can_FDHthRegType
{
   
  uint32 ulFDTMID;                                
   
  uint32 ulFDTMPTR;                               
   
  uint32 ulFDTMFDCTR;                             
   
   
  uint32 aaFDTMDF[5];                             
   
} Can_FDHthRegType;

 
typedef struct STag_Can_FDTHLRegType
{
   
  uint32 aaTHLACC0;                            
   
  uint32 aaTHLACC1;                            
} Can_FDTHLRegType;

 
typedef struct STag_Can_CommonRegType
{
   
   
  Can_ChRegType aaChReg[8];                       
   
   
  uint32 ulReserved0;                             
   
  uint32 ulGCFG;                                  
   
  uint32 ulGCTR;                                  
   
  uint32 ulGSTS;                                  
   
  uint32 ulGERFL;                                 
   
  uint32 ulGTSC;                                  
   
  uint32 ulGAFLECTR;                              
   
   
  uint32 aaGAFLCFG[2];                            
   
   
  uint32 ulRMNB;                                  
   
   
  uint32 aaRMND[4];                               
   
   
   
  uint32 aaRFCC[8];                               
   
   
   
  uint32 aaRFSTS[8];                              
   
   
   
  uint32 aaRFPCTR[8];                             
   
   
   
  uint32 aaCFCC[24];                              
   
   
   
  uint32 aaCFSTS[24];                             
   
   
   
  uint32 aaCFPCTR[24];                            
   
   
  uint32 ulFESTS;                                 
   
  uint32 ulFFSTS;                                 
   
  uint32 ulFMSTS;                                 
   
  uint32 ulRFISTS;                                
   
  uint32 ulCFRISTS;                               
   
  uint32 ulCFTISTS;                               

   
   
  uint8 aaTMC[128];                               
   
   
   
  uint8 aaTMSTS[128];                             
   
   
   
  uint32 aaTMTRSTS[4];                            
   
   
   
  uint32 aaTMTARSTS[4];                           
   
   
   
  uint32 aaTMTCSTS[4];                            
   
   
   
  uint32 aaTMTASTS[4];                            
   
   
   
  uint32 aaTMIEC[4];                              
   
   
   
  uint32 aaTXQCC[8];                              
   
   
   
  uint32 aaTXQSTS[8];                             
   
   
   
  uint32 aaTXQPCTR[8];                            
   
   
   
  uint32 aaTHLCC[8];                              
   
   
   
  uint32 aaTHLSTS[8];                             
   
   
   
  uint32 aaTHLPCTR[8];                            
   
   
  union                                           
  {
     
    uint32 aaW[2];                                
     
     
    uint8  aaB[8];                                
     
  } unGINTSTS;
   
  uint32 ulGTSTCFG;                               
   
  uint32 ulGTSTCTR;                               
   
  uint32 ulReserved3;                             
   
  uint32 ulGFDCFG;                                
   
  uint32 ulGCRCCFG;                               
   
  uint32 ulGLOCKK;                                
   
   
  uint32 aaReserved3[4];                          
   
   
  uint32 ulCDTCT;                                 
   
  uint32 ulCDTSTS;                                
   
   
  uint32 aaReserved4[25];                         
   
   
  uint32 ulGRMCFG;                                
   
   
   
  Can_RRuleRegType aaRRReg[16];                   
   
   
   
  Can_HrhRegType aaHrhReg[128];                   
   
   
   
  Can_HRTFIFORegType aaRFReg[8];                  
   
   
   
  Can_CFIFORegType aaCFReg[24];                   
   
   
   
  Can_HthRegType aaHthReg[128];                   
   
   
   
  uint32 aaTHLACC[16];                            
   
   
   
  uint32 aaReserved5[48];                         
   
   
   
  uint32 aaRPGACC[64];                            
   
} Can_CommonRegType;

 
typedef struct STag_Can_FDRegType
{
   
   
  Can_FDChRegType aaFDChReg[16];                  
   
   
   
  uint32 aaReserved0[576];                        
   
   
   
  Can_RRuleRegType aaRRReg[16];                   
   
   
   
  uint32 aaReserved1[960];                        
   
   
   
  Can_FDHrhRegType aaHrhReg[128];                 
   
   
   
  Can_FDHRTFIFORegType aaRFReg[8];                
   
   
   
  Can_FDCFIFORegType aaCFReg[24];                 
   
   
   
  Can_FDHthRegType aaHthReg[128];                 
   
   
   
  uint32 aaReserved2[1024];                       
   
   
   
  uint32 aaTHLACC[16];                            
   
   
   
  uint32 aaReserved3[240];                        
   
   
   
  uint32 aaRPGACC[64];                            
   
} Can_FDRegType;



 




 












 












 



 



 



 












 












 



 



 


 
 




















 
 




 



 
 
 
 



 

 
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




 
 

 



 
 
 
 
 
 
 
 
 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 

 



 

 
typedef enum ETag_Can_MacroType
{
   
  CAN_MACRO_RSCAN,
   
  CAN_MACRO_RSCANFD
} Can_MacroType;

 
typedef enum ETag_Can_SubStatusType
{
   
  CAN_NO_PENDING_TRANSITION,

   
  CAN_TENTATIVE_TRANSITION,

   
  CAN_PENDING_START_WAIT_RESET,
   
  CAN_PENDING_START_WAIT_COM,

   
  CAN_PENDING_STOP_WAIT_HALT,
   
  CAN_PENDING_STOP_WAIT_RESET,

   
  CAN_PENDING_SLEEP_WAIT_STOP,
   
  CAN_PENDING_SLEEP_WAIT_GLOBALRESET,
   
  CAN_PENDING_SLEEP_WAIT_GLOBALSTOP,

   
  CAN_PENDING_WAKEUP_REQUESTED,
   
  CAN_PENDING_WAKEUP_WAIT_GLOBALCHANGE,
   
  CAN_PENDING_WAKEUP_WAIT_GLOBALRESET,
   
  CAN_PENDING_WAKEUP_WAIT_GLOBALOP,
   
  CAN_PENDING_WAKEUP_WAIT_RESET
} Can_SubStatusType;

 
typedef struct STag_Can_RegisterSetType
{
   
  Can_MacroType enMacroType;
   
  volatile Can_CommonRegType * pCmn;
   
  volatile Can_RRuleRegType * pRR;
   
  volatile Can_FDRegType * pFD;
   
  volatile uint16 * pICRxFIFO;
   
  volatile uint32 * pWUF0Reg;
   
  volatile uint32 * pWUFC0Reg;
} Can_RegisterSetType;

 
typedef struct STag_Can_ControllerPCConfigType
{
   
  boolean blActivation;
   
  uint8 ucUnitIndex;
   
  uint8 ucChannelOffset;
   
  uint8 ucIntEnable;
   
  uint32 ulCTR;
   
  uint32 ulTHLCC;
   
  uint8 ucWakeupSourceId;
   
  volatile uint16 * pICRec;
   
  volatile uint16 * pICTx;
   
  volatile uint16 * pICErr;
   
  volatile uint16 * pICWakeup;
   
  volatile uint16 * pDNFAReg;
   
  volatile uint8 * pFCLAReg;
  uint32 ulWUFMask;
} Can_ControllerPCConfigType;

 
typedef struct STag_Can_ControllerStateType
{
   
  Can_StateTransitionType enMode;
   
  Can_SubStatusType enSubState;
   
  boolean blBusOff;
   
  boolean blWakeupEventOccurred;
   
  boolean blWakeupByHW;
   
  uint32 ulBaudrateIndex;
   
  uint32 ulIntCount;
} Can_ControllerStateType;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".CAN_CFG_DATA_UNSPECIFIED"




 
 


 
 

extern const Can_RegisterSetType
  Can_GaaRegs[1U];

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 


 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".CAN_CFG_DATA_8BIT"




 
 


 
 

 

 
extern const uint8
  Can_GaaPhysicalUnitToIndex[];
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda



 
 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 





 
 




 



 
 

 



 

 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 


 
 

 
 

 
 



 
 
typedef struct STag_Can_FilterType
{
   
  uint32 ulGAFLID;
   
  uint32 ulGAFLM;
   
   
  uint32 aaGAFLP[2];
   
} Can_FilterType;

 
typedef struct STag_Can_HWUnitInfoType
{
   
  uint8 ucNoOfTMIEC;
   
  uint8 ucNoOfGAFLCFG;
   
  uint16 usNoOfFilters;
   
  uint32 ulRMNB;
   
  uint32 ulGCFG;
   
   
  uint32 aaGAFLCFG[2];
   
   
  const uint32 * pTMIEC;
   
  const Can_FilterType * pFilterConfig;
  uint32 ulRxFIFOWUFMask;
} Can_HWUnitInfoType;



 
 
typedef enum ETag_Can_HohType
{
   
  CAN_HOH_HRH,
   
  CAN_HOH_HTH
} Can_HohType;

 
typedef enum ETag_Can_BufferType
{
   
  CAN_BUFFERTYPE_BUFFER,
   
  CAN_BUFFERTYPE_TXRXFIFO,
   
  CAN_BUFFERTYPE_GATEWAY,
   
  CAN_BUFFERTYPE_RXFIFO,
   
  CAN_BUFFERTYPE_TXQUEUE
} Can_BufferType;

 
typedef struct STag_Can_HohConfigType
{
   
  Can_HohType enHoh;
   
  uint8 ucMainFunctionRIndex;
   
  uint8 ucController;
   
  uint8 ucTMDLC;
   
  uint16 usHohId;
   
  Can_BufferType enBufferType;
   
  uint8 ucBufferIndex;
   
  uint8 ucPaddingValue;
   
  uint32 ulXXCCRegValue;
} Can_HohConfigType;



 
 
typedef struct STag_Can_BaudrateConfigType
{
   
  uint8 ucBaudrateConfigID;
   
  uint16 usBaudrateConfig;
   
  uint32 ulCFG;
   
  uint32 ulDCFG;
   
  uint32 ulFDCFG;
   
  boolean blBRS;
   
  boolean blFdConfigured;
} Can_ControllerBaudrateConfigType;

 
typedef struct STag_Can_ControllerPBConfigType
{
   
  uint8 ucMainFunctionWIndex;
   
  uint16 usNoOfBaudrate;
   
  const Can_ControllerBaudrateConfigType *
    pBaudrateConfig;
} Can_ControllerPBConfigType;



 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 



 




 
 
 




























 
 




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 


 




























 


 




























 


 




























 


 




























 


 

 


 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 


 



 



 



 
   



 



 



 



 



 



 



 



 
 



 
   
 



 



 



 
   



 
   
 



 
 



 



 



 



 



 


 




























 

 


 
 



 



 



 



 


 

























 
 

 

























 


 

 
 

  
  
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


































 

   


 


 



 

 



 
 

 




 
 

 


 



 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_FAST_CODE_ROM"




 
 


 
 

 
 

 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 

 
 
 




 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 








 
 


 












 












 
 



















































































































 




 





































































































 



 












 












 













 












 



 
 




















 
 


 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 













 












 




 
 




















 
 

 




 



 



 



 
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






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 




 
 
 
 



 









 




 



 




 





 




 




 




 





 



 



 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 



 



 

 

 
 
 

 

























 
 
 






















 
 
 


















 
   
   


















 
   
   



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 











 
 




 



 
 

 



 
 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_1BIT"


 
 

 
extern volatile boolean Can_GblInitialized;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sdata=default
   #pragma ghs endsda



 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_1BIT"


 
 

 
extern volatile boolean
  Can_GaaHwAccessFlag[4U];

 
extern volatile boolean
  Can_GaaGlobalStateTransition[1U];

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda



 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_32BIT"


 
 

 
extern volatile uint32
  Can_GaaActiveControllers[1U];

 
extern volatile uint32
  Can_GaaGlobalIntCount[1U];

 
extern uint32 Can_GulPageID;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda



 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"


 
 

 
extern const Can_ConfigType *
  volatile Can_GpConfig;
extern const Can_ControllerPCConfigType *
  volatile Can_GpPCController;
extern const Can_ControllerPBConfigType *
  volatile Can_GpPBController;
extern const Can_HohConfigType *
  volatile Can_GpHohConfig;
extern volatile Can_ControllerStateType
  Can_GaaCtrlState[1U];

extern volatile Can_MirrorGlobalType
  Can_GaaMirrorGlobalReg[1U];

extern volatile Can_MirrorChannelType
  Can_GaaMirrorChannelReg[1U];

extern volatile Can_MirrorHohType
  Can_GaaMirrorHohReg[4U];

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda

 
 
 


 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




 
 




 



 
 
 



 



 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 

extern  void Can_StartMode(
  const uint8 LucCtrlIndex, const uint8 LucApiId);
extern  void Can_StopMode(
  const uint8 LucCtrlIndex, const uint8 LucApiId);
extern  void Can_SleepMode(
  const uint8 LucCtrlIndex, const uint8 LucApiId);
extern  void Can_WakeupMode(
  const uint8 LucCtrlIndex, const uint8 LucApiId);

extern  Std_ReturnType Can_GlobalModeChange(
  const uint8 LucUnit, const uint32 LulMdBits,
  uint32 * const LpTimeoutDuration,
  const uint8 LucApiId);

extern  Std_ReturnType Can_ChannelModeChange(
  const uint8 LucUnit, const uint8 LucCtrlIndex, const uint32 LulMdBits,
  uint32 * const LpTimeoutDuration,
  const uint8 LucApiId);

extern  Std_ReturnType Can_WaitRegisterChange(
  volatile const uint32 * const LpReg,
  const uint32 LulMask, const uint32 LulBits,
  uint32 * const LpTimeoutDuration);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




 
 




 



 

 
 



 

 
 
 
 
 
 
 
 
 
 
 

 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 

 

 

 
 
 
 
 
 
 

 

 

 




 

 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_8BIT"


 
 

 
 
extern const uint8 Can_GaaDLCFromPayloadTable[65];
 
 
 
extern const uint8 Can_GaaPayloadFromDLCTable[16];
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda



 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 

extern  Can_ReturnType Can_CommonDetCheck(
  const uint8 LucSID, const uint8 LucController);

extern  void Can_TxConfirmationProcessing(
  const uint8 LucCtrlIndex);

extern  void Can_RxProcessing(
  const uint32 LulBufferBits, const uint32 LulMode, const uint8 LucIndex);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 





 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









 
 



 



 



 



 



 

extern void SchM_Enter_Can_CAN_RAM_DATA_PROTECTION(void);
extern void SchM_Exit_Can_CAN_RAM_DATA_PROTECTION(void);
extern void SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION(void);
extern void SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION(void);




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 



















































 
 




 



 



 



 



 


 
typedef unsigned int        uinteger;        



 


 



 











 













 













 













 













 













 











 












 











 













 













 













 













 













 













 











 











 










 












 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 







 
 


 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
typedef enum ETag_Can_RamTestWalkType
{
 
  CAN_RAMTEST_WALK_0 = 0,
 
  CAN_RAMTEST_WALK_1
} Can_RamTestWalkType;

 
typedef enum ETag_Can_RamTestFillType
{
 
  CAN_RAMTEST_FILL_0 = 0,
 
  CAN_RAMTEST_FILL_1
} Can_RamTestFillType;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 

extern  Std_ReturnType
        Can_RamTst_WalkPath_Algorithm (uint8 LucTestedCellNumber, uint8 LucUnit,
                                           Can_RamTestWalkType LenWalkPathType);
extern  Std_ReturnType
       Can_RamTest_Checker_Algorithm (uint8 LucTestedCellNumber, uint8 LucUnit);
extern  void Can_RamTst_Set_RAMData
 (uint8 LucTestedCellNumber, uint8 LucUnit, Can_RamTestFillType LenRAMFillType);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 




 



 
 

 



 




 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 


















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 

   
   

   
   
   
   

   
   



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 
 

 
static  void Can_SetStatus(
  const boolean LblStatus);
 
static  boolean Can_InitModule(
  const uint8 LucUnit);
 
static  boolean Can_InitController(
  const uint8 LucCtrlIndex);

 
static  uint32 Can_SearchBaudrate(
  const uint8 LucCtrlIndex, const uint16 LusBaudrate);

 
static  uint32 Can_SearchBaudrateID(
  const uint8 LucCtrlIndex, const uint16 LusBaudrateID);

 
static  Std_ReturnType Can_CheckConsistencyStatic(
  void);
 
static  Std_ReturnType Can_CheckConsistencyDynamic(
  void);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PUBLIC_CODE_ROM"




 
 


 
 
 




























 
 
 
 void Can_GetVersionInfo(
  Std_VersionInfoType * versioninfo)
 
 
{
   
   
  if(((void *)0) == versioninfo)
  {
     
    (void)Det_ReportError(80U, (uint8)0x00,
                            (uint8)0x07, (uint8)0x01);
     
  }
  else
  {
     
    versioninfo->vendorID = 59U;
     
    versioninfo->moduleID = 80U;
     
    versioninfo->sw_major_version = 1U;
     
    versioninfo->sw_minor_version = 0U;
     
    versioninfo->sw_patch_version = 6U;
  }
}












































 
 
 
 void Can_Init(
  const Can_ConfigType * Config)
 
 
{
   
  uint8 LucIndex;
  uint16 LusHohIndex;
  boolean LblErrFlag;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;

  LblErrFlag = (boolean)0x00;
   
   
  if ((boolean)0x01 == Can_GblInitialized)
   
  {
    (void)Det_ReportError(80U, (uint8)0x00, (uint8)0x00,
      (uint8)0x06);
     
  }
  else
   
  if (((void *)0) == Config)
  {
    (void)Det_ReportError(80U, (uint8)0x00, (uint8)0x00,
      (uint8)0x01);
     
  }
   
  else if ((((uint32)59U << 22) | ((uint32)80U << 14) | ((uint32)1U << 8) | ((uint32)0U << 3)) != Config->ulStartOfDbToc)
  {
    (void)Det_ReportError(80U, (uint8)0x00,
      (uint8)0x00, (uint8)0xEF);
     
  }
  else
  {
    

 
     
    Can_GpConfig = Config;
     
     
    Can_GpPCController =
      (const Can_ControllerPCConfigType *)
      Config->pControllerPCConfig;
     
     
     
    Can_GpPBController =
      (const Can_ControllerPBConfigType *)
      Config->pControllerPBConfig;
     
     
     
    Can_GpHohConfig =
      (const Can_HohConfigType *)
      Config->pHohConfig;
     
     

    

 
     
    for (LucIndex = (uint8) 0U;
      (LucIndex < (uint8) 1U) && ((boolean)0x00 == LblErrFlag);
      LucIndex++)
     
    {
       
      Can_GaaActiveControllers[LucIndex] = 0UL;
       
      Can_GaaGlobalStateTransition[LucIndex] = (boolean)0x00;
       
       
      Can_GaaGlobalIntCount[LucIndex] = 0UL;
       
       
      LblErrFlag = Can_InitModule((uint8) LucIndex);
    }

    

 
     
    for (LucIndex = (uint8) 0U;
      (LucIndex < (uint8) 1U)
            && ((boolean)0x00 == LblErrFlag);
            LucIndex++)
     
    {
       
      Can_GaaCtrlState[LucIndex].enMode = CAN_T_STOP;
       
      Can_GaaCtrlState[LucIndex].enSubState = CAN_NO_PENDING_TRANSITION;
       
      Can_GaaCtrlState[LucIndex].blBusOff = (boolean)0x00;
       
      Can_GaaCtrlState[LucIndex].ulBaudrateIndex = 0U;
       
      Can_GaaCtrlState[LucIndex].ulIntCount = 0U;
       
      Can_GaaCtrlState[LucIndex].blWakeupEventOccurred = (boolean)0x00;
       

       
      if ((boolean)0x01 == Can_GpPCController[LucIndex].blActivation)
       
      {
         
        LblErrFlag = Can_InitController((uint8) LucIndex);
      }
      else
      {
         
      }
    }

    

 
    for (LusHohIndex = 0U; (LusHohIndex < 4U); LusHohIndex++)
    {
       
      Can_GaaHwAccessFlag[LusHohIndex] = (boolean)0x00;
       
    }

    

 
     
    for (LucIndex = (uint8) 0U;
      (LucIndex < (uint8) 1U) && ((boolean)0x00 == LblErrFlag);
      LucIndex++)
     
    {
       
      LulTimeoutDuration = 5UL;
      LucTimeoutResult = Can_GlobalModeChange(
        (uint8) LucIndex, 0x00000000UL, &LulTimeoutDuration, (uint8)0x00);
       
      if (0U != LucTimeoutResult)
      {
        Dem_ReportErrorStatus((Dem_EventIdType)1,
          0x01u);
         
        LblErrFlag = (boolean)0x01;
      }
      else
      {
         
      }
    }

     
    if ((boolean)0x00 == LblErrFlag)
    {
      Can_SetStatus((boolean)0x01);
    }
    else
    {
       
    }
  }
}

































 
 
 
 Std_ReturnType Can_ChangeBaudrate(
  uint8 Controller, const uint16 Baudrate)
 
 
{
   
  Std_ReturnType LucReturnValue;
  const Can_ControllerBaudrateConfigType *
    LpBaudrateConfig;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulBaudrateIndex;

  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck((uint8)0x0D, Controller);
  if (CAN_OK != LenCommonResult)
  {
    LucReturnValue = 1U;
  }
   
  else if (CAN_T_STOP != Can_GaaCtrlState[Controller].enMode)
  {
    (void)Det_ReportError(80U, (uint8)0x00,
                          (uint8)0x0D, (uint8)0x06);
     
    LucReturnValue = 1U;
  }
  else
  {
     
    LulBaudrateIndex = Can_SearchBaudrate(Controller, (uint16)Baudrate);
     
    if ((uint32)0xFFFFFFFFUL == LulBaudrateIndex)
    {
      (void)Det_ReportError(80U, (uint8)0x00,
                    (uint8)0x0D, (uint8)0x08);
       
      LucReturnValue = 1U;
    }
    else
    {
       
      LpBaudrateConfig =
        &Can_GpPBController[Controller].pBaudrateConfig[LulBaudrateIndex];
       
       
      LucUnit = Can_GpPCController[Controller].ucUnitIndex;
       
       
      LucCh = Can_GpPCController[Controller].ucChannelOffset;
       
       
      Can_GaaCtrlState[Controller].ulBaudrateIndex = LulBaudrateIndex;
       
       
       
      { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaChReg[LucCh]. ulCFG)) = (LpBaudrateConfig->ulCFG);} { (*(&Can_GaaMirrorChannelReg[Controller]. ulCFG)) = (LpBaudrateConfig->ulCFG); } }
       
       
      {
         
        { { (*(&Can_GaaRegs[LucUnit]. pFD->aaFDChReg[LucCh]. ulDCFG)) = (LpBaudrateConfig->ulDCFG);} { (*(&Can_GaaMirrorChannelReg[Controller]. ulDCFG)) = (LpBaudrateConfig->ulDCFG); } }
         
         
         
        { { (*(&Can_GaaRegs[LucUnit]. pFD->aaFDChReg[LucCh]. ulFDCFG)) = (LpBaudrateConfig->ulFDCFG);} { (*(&Can_GaaMirrorChannelReg[Controller]. ulFDCFG)) = (LpBaudrateConfig->ulFDCFG); } }
         
         
      }
      {
         
      }

       
      if ((boolean)0x01 == Can_GaaCtrlState[Controller].blWakeupEventOccurred)
      {
         
        Can_GaaCtrlState[Controller].blWakeupEventOccurred = (boolean)0x00;
         
         
         
         
        EcuM_SetWakeupEvent((EcuM_WakeupSourceType)(uint32)0x00000001UL <<
                (Can_GpPCController[Controller].ucWakeupSourceId));
         
         
      }
      else
      {
         
      }
      LucReturnValue = 0U;
    }
  }
  return LucReturnValue;
}






























 
 
 
 Std_ReturnType Can_CheckBaudrate(
  uint8 Controller, const uint16 Baudrate)
 
 
{
   
  Std_ReturnType LucReturnValue;
  uint32 LulBaudrateIndex;

  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck((uint8)0x0E, Controller);
  if (CAN_OK != LenCommonResult)
  {
    LucReturnValue = 1U;
  }
  else
  {
     
    LulBaudrateIndex = Can_SearchBaudrate(Controller, (uint16)Baudrate);
    if ((uint32)0xFFFFFFFFUL != LulBaudrateIndex)
    {
      LucReturnValue = 0U;
    }
    else
    {
       
      (void)Det_ReportError(80U, (uint8)0x00,
        (uint8)0x0E, (uint8)0x08);
       
      LucReturnValue = 1U;
    }
  }

  return(LucReturnValue);
}

































 
 
 
 Std_ReturnType Can_SetBaudrate(
  uint8 Controller, uint16 BaudRateConfigID)
 
 
{
   
  Std_ReturnType LucReturnValue;
  const Can_ControllerBaudrateConfigType *
    LpBaudrateConfig;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulBaudrateIndex;

  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck((uint8)0x0F, Controller);
  if (CAN_OK != LenCommonResult)
  {
    LucReturnValue = 1U;
  }
   
  else if ((CAN_T_STOP != Can_GaaCtrlState[Controller].enMode) ||
    (CAN_NO_PENDING_TRANSITION != Can_GaaCtrlState[Controller].enSubState))
  {
     
    (void)Det_ReportError(80U, (uint8)0x00,
                          (uint8)0x0F, (uint8)0x06);
     
     
    LucReturnValue = 1U;
  }
  else
  {
     
    LulBaudrateIndex = Can_SearchBaudrateID(
      Controller, (uint16)BaudRateConfigID);
     
    if ((uint32)0xFFFFFFFFUL == LulBaudrateIndex)
    {
       
      (void)Det_ReportError(80U, (uint8)0x00,
                    (uint8)0x0F, (uint8)0x08);
       
      LucReturnValue = 1U;
    }
    else
    {
       
      LpBaudrateConfig =
        &Can_GpPBController[Controller].pBaudrateConfig[LulBaudrateIndex];
       
       
      LucUnit = Can_GpPCController[Controller].ucUnitIndex;
       
       
      LucCh = Can_GpPCController[Controller].ucChannelOffset;
       
       
      Can_GaaCtrlState[Controller].ulBaudrateIndex = LulBaudrateIndex;
       
       
       
      { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaChReg[LucCh]. ulCFG)) = (LpBaudrateConfig->ulCFG);} { (*(&Can_GaaMirrorChannelReg[Controller]. ulCFG)) = (LpBaudrateConfig->ulCFG); } }
       
       
      {
         
        { { (*(&Can_GaaRegs[LucUnit]. pFD->aaFDChReg[LucCh]. ulDCFG)) = (LpBaudrateConfig->ulDCFG);} { (*(&Can_GaaMirrorChannelReg[Controller]. ulDCFG)) = (LpBaudrateConfig->ulDCFG); } }
         
         
         
        { { (*(&Can_GaaRegs[LucUnit]. pFD->aaFDChReg[LucCh]. ulFDCFG)) = (LpBaudrateConfig->ulFDCFG);} { (*(&Can_GaaMirrorChannelReg[Controller]. ulFDCFG)) = (LpBaudrateConfig->ulFDCFG); } }
         
         
      }
      {
         
      }
      LucReturnValue = 0U;
    }
  }

  return LucReturnValue;
}


































 
 
 
 void Can_DisableControllerInterrupts(
  uint8 Controller)
 
 
{
   
  const Can_ControllerPCConfigType *
    LpPCController;

  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck((uint8)0x04, Controller);
  if (CAN_OK != LenCommonResult)
  {
     
  }
  else
  {
     
    LpPCController = &Can_GpPCController[Controller];
     

    
 
    if (0x00U != LpPCController->ucIntEnable)
    {
      
 
      SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
       

      if (0UL != Can_GaaCtrlState[Controller].ulIntCount)
      {
         
      }
      else
      {
         
         
         
        (*((volatile uint8*)(Can_GaaRegs[LpPCController->ucUnitIndex]. pICRxFIFO)) = ((*((volatile uint8*)(Can_GaaRegs[LpPCController->ucUnitIndex]. pICRxFIFO)))|((uint8)(uint16)0x0080U)));
         
         
         
         
        Can_GaaGlobalIntCount[LpPCController->ucUnitIndex]++;
         
         
         
         
        (*((volatile uint8*)(LpPCController->pICErr)) = ((*((volatile uint8*)(LpPCController->pICErr)))|((uint8)(uint16)0x0080U)));
         
         
         
         
         
        (*((volatile uint8*)(LpPCController->pICRec)) = ((*((volatile uint8*)(LpPCController->pICRec)))|((uint8)(uint16)0x0080U)));
         
         
         
         
         
        (*((volatile uint8*)(LpPCController->pICTx)) = ((*((volatile uint8*)(LpPCController->pICTx)))|((uint8)(uint16)0x0080U)));
         
         
         
        if (((void *)0) != LpPCController->pICWakeup)
        {
          
 
          (*((volatile uint8*)(LpPCController->pICWakeup)) = ((*((volatile uint8*)(LpPCController->pICWakeup)))|((uint8)(uint16)0x0080U)));
           
        }
        else
        {
           
        }
        
 
        (*((volatile uint16*)(LpPCController->pICTx)));
         
        __syncp();
         
      }
       
      Can_GaaCtrlState[Controller].ulIntCount++;
       

      SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
       
    }
    else
    {
       
    }
  }
}



































 
 
 
 void Can_EnableControllerInterrupts(
  uint8 Controller)
 
 
{
   
  const Can_ControllerPCConfigType *
    LpPCController;

  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck((uint8)0x05, Controller);
  if (CAN_OK != LenCommonResult)
  {
     
  }
  else
  {
     
    LpPCController = &Can_GpPCController[Controller];
     

    
 
    if (0x00U != LpPCController->ucIntEnable)
    {
       
      SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
       

      if (0UL == Can_GaaCtrlState[Controller].ulIntCount)
      {
         
      }
      else
      {
         
        Can_GaaCtrlState[Controller].ulIntCount--;
         

        if (0UL != Can_GaaCtrlState[Controller].ulIntCount)
        {
           
        }
        else
        {
           
          Can_GaaGlobalIntCount[LpPCController->ucUnitIndex]--;
           
           
          if (0UL == Can_GaaGlobalIntCount[LpPCController->ucUnitIndex])
          {
            (*((volatile uint8*)(Can_GaaRegs[LpPCController->ucUnitIndex]. pICRxFIFO)) = ((*((volatile uint8*)(Can_GaaRegs[LpPCController->ucUnitIndex]. pICRxFIFO)))&((uint8)(~(uint16)0x0080U))));
             
          }
          else
          {
             
          }
           
          (*((volatile uint8*)(LpPCController->pICErr)) = ((*((volatile uint8*)(LpPCController->pICErr)))&((uint8)(~(uint16)0x0080U))));
           
          (*((volatile uint8*)(LpPCController->pICRec)) = ((*((volatile uint8*)(LpPCController->pICRec)))&((uint8)(~(uint16)0x0080U))));
           
          (*((volatile uint8*)(LpPCController->pICTx)) = ((*((volatile uint8*)(LpPCController->pICTx)))&((uint8)(~(uint16)0x0080U))));
           
           
          if ((CAN_T_SLEEP == Can_GaaCtrlState[Controller].enMode) &&
            (CAN_NO_PENDING_TRANSITION ==
              Can_GaaCtrlState[Controller].enSubState) &&
            (0U != (LpPCController->ucIntEnable & 0x08U)) &&
            (((void *)0) != LpPCController->pICWakeup))
          {
            
 
            (*((volatile uint8*)(LpPCController->pICWakeup)) = ((*((volatile uint8*)(LpPCController->pICWakeup)))&((uint8)(~(uint16)0x0080U))));
             
          }
          else
          {
             
          }
          

 
        }
      }
       
      SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
       
    }
    else
    {
       
    }
  }
}





























 
 
 
 
 Can_ReturnType Can_CheckWakeup(uint8 Controller)
 
 
 
{
   
  Can_ReturnType LenReturnValue;
  LenReturnValue = Can_CommonDetCheck((uint8)0x0B, Controller);
  if (CAN_OK != LenReturnValue)
  {
     
  }
  else
  {
     
    if ((boolean)0x01 == Can_GaaCtrlState[Controller].blWakeupEventOccurred)
    {
       
      Can_GaaCtrlState[Controller].blWakeupEventOccurred = (boolean)0x00;
       
       
       
       
      EcuM_SetWakeupEvent((EcuM_WakeupSourceType)(uint32)0x00000001UL <<
               (Can_GpPCController[Controller].ucWakeupSourceId));
       
       
      LenReturnValue = CAN_OK;
    }
    else
    {
       
      LenReturnValue = CAN_NOT_OK;
    }
  }
   
  return(LenReturnValue);
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 
 





























 
static  void Can_SetStatus(
  const boolean LblStatus)
{
   
  Can_GblInitialized = LblStatus;
   
}

































 
static  boolean Can_InitModule(
  const uint8 LucUnit)
{
   
  boolean LblErrFlag;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;
  uint32 LulCount;
  const Can_FilterType * LpFilter;
  uint32 LulRulePage;
  uint32 LulRuleIndex;
  const Can_HWUnitInfoType * LpHWInfo;

   
   
  LpHWInfo =
    (const Can_HWUnitInfoType *)
    Can_GpConfig->pHWUnitInfo;
   
   
  LpHWInfo = &LpHWInfo[LucUnit];
   

   
  LulTimeoutDuration = 5UL;
  LucTimeoutResult = Can_WaitRegisterChange(
    &Can_GaaRegs[LucUnit].pCmn->ulGSTS,
    0x00000008UL, 0UL, &LulTimeoutDuration);
   
  if (0U != LucTimeoutResult)
  {
    Dem_ReportErrorStatus((Dem_EventIdType)1, 0x01u);
     
    LblErrFlag = (boolean)0x01;
  }
  else
  {
    

 
     
    LulTimeoutDuration = 5UL;
    LucTimeoutResult = Can_GlobalModeChange(LucUnit,
      0x00000001UL, &LulTimeoutDuration, (uint8)0x00);
     
    if (0U != LucTimeoutResult)
    {
      Dem_ReportErrorStatus((Dem_EventIdType)1, 0x01u);
       
      LblErrFlag = (boolean)0x01;
    }
    else
    {
      {
         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGRMCFG)) = (0x00000001UL);} }
         
         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGFDCFG)) = (0x00000000UL);} }
         
      }
      {
         
      }

      

 
       
      { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulRMNB)) = (LpHWInfo->ulRMNB);} }
       
       
      { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGCFG)) = (LpHWInfo->ulGCFG);} }
       

       
      for (LulCount = (uint32) 0UL;
         LulCount < (uint32)LpHWInfo->ucNoOfTMIEC; LulCount++)
      {
         
         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaTMIEC[LulCount])) = (LpHWInfo->pTMIEC[LulCount]);} }
         
         
         
      }

      

 
       
      for (LulCount = (uint32) 0U;
          LulCount < (uint32) LpHWInfo->ucNoOfGAFLCFG; LulCount++)
      {
         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaGAFLCFG[LulCount])) = (LpHWInfo->aaGAFLCFG[LulCount]);} }
         
         
      }
      LulCount = (uint32)0U;
      LulRulePage = 0U;
       
      while (LulCount < (uint32)LpHWInfo->usNoOfFilters)
      {
         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGAFLECTR)) = (0x00000100UL | ((uint32)(LulRulePage)));} }
         

        LulRuleIndex = 0U;
         
        while (((uint32)16UL > LulRuleIndex) &&
          (LulCount < (uint32)LpHWInfo->usNoOfFilters))
        {
           
          LpFilter = &LpHWInfo->pFilterConfig[LulCount];
           
           
           
          { { (*(&Can_GaaRegs[LucUnit]. pRR[LulRuleIndex]. ulGAFLID)) = (LpFilter->ulGAFLID);} }
           
           
           
           
           
          { { (*(&Can_GaaRegs[LucUnit]. pRR[LulRuleIndex]. ulGAFLM)) = (LpFilter->ulGAFLM);} }
           
           
           
           
           
          { { (*(&Can_GaaRegs[LucUnit]. pRR[LulRuleIndex]. aaGAFLP[0U])) = (LpFilter->aaGAFLP[0U]);} }
           
           
           
           
           
          { { (*(&Can_GaaRegs[LucUnit]. pRR[LulRuleIndex]. aaGAFLP[1U])) = (LpFilter->aaGAFLP[1U]);} }
           
           
           
          LulRuleIndex++;
          LulCount++;
        }
         
        LulRulePage++;
      }
       
      { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGAFLECTR)) = (0x00000000UL);} }
       

      

 
       
      (*((volatile uint8*)(Can_GaaRegs[LucUnit]. pICRxFIFO)) = ((*((volatile uint8*)(Can_GaaRegs[LucUnit]. pICRxFIFO)))&((uint8)(~(uint16)0x0080U)))); (*((volatile uint8*)(Can_GaaRegs[LucUnit]. pICRxFIFO))); __syncp();
       
       
      LblErrFlag = (boolean)0x00;
    }
  }
  return LblErrFlag;
}

































 
static  boolean Can_InitController(
  const uint8 LucCtrlIndex)
{
   
  boolean LblErrFlag;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulHohIndex;
  const Can_HohConfigType * LpHoh;
  const Can_ControllerPCConfigType *
    LpPCController;
  const Can_ControllerPBConfigType *
    LpPBController;
  const Can_ControllerBaudrateConfigType *
    LpBaudrateConfig;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;

   
   
  LpPCController = &Can_GpPCController[LucCtrlIndex];
   
   
  LpPBController = &Can_GpPBController[LucCtrlIndex];
   

  LucUnit = LpPCController->ucUnitIndex;
  LucCh = LpPCController->ucChannelOffset;
   
  Can_GaaActiveControllers[LucUnit] |= (1UL << LucCtrlIndex);
   

  

 
  LulTimeoutDuration = 5UL;
  LucTimeoutResult =
    Can_ChannelModeChange(LucUnit, LucCtrlIndex, 0x00000001UL,
    &LulTimeoutDuration, (uint8)0x00);
  if (0U != LucTimeoutResult)
  {
    Dem_ReportErrorStatus((Dem_EventIdType)1, 0x01u);
     
    LblErrFlag = (boolean)0x01;
  }
  else
  {
    

 
     
    LpBaudrateConfig =
      &LpPBController->pBaudrateConfig[0U];
     
     
     
    { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaChReg[LucCh]. ulCFG)) = (LpBaudrateConfig->ulCFG);} { (*(&Can_GaaMirrorChannelReg[LucCtrlIndex]. ulCFG)) = (LpBaudrateConfig->ulCFG); } }
     
     

    {
       
       
      { { (*(&Can_GaaRegs[LucUnit]. pFD->aaFDChReg[LucCh]. ulFDCFG)) = (LpBaudrateConfig->ulFDCFG);} { (*(&Can_GaaMirrorChannelReg[LucCtrlIndex]. ulFDCFG)) = (LpBaudrateConfig->ulFDCFG); } }
       

       
       
       
      { { (*(&Can_GaaRegs[LucUnit]. pFD->aaFDChReg[LucCh]. ulDCFG)) = (LpBaudrateConfig->ulDCFG);} { (*(&Can_GaaMirrorChannelReg[LucCtrlIndex]. ulDCFG)) = (LpBaudrateConfig->ulDCFG); } }
       
       
    }
    {
       
    }

    

 
    for (LulHohIndex = (uint32) 0U;
      LulHohIndex < (uint32) 4U; LulHohIndex++)
    {
       
      LpHoh = &Can_GpHohConfig[LulHohIndex];
       
      if (LpHoh->ucController == LucCtrlIndex)
      {
        switch (LpHoh->enBufferType)
        {
         
        case CAN_BUFFERTYPE_RXFIFO:
          { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaRFCC[LpHoh->ucBufferIndex])) = (LpHoh->ulXXCCRegValue);} { (*(&Can_GaaMirrorHohReg[LulHohIndex]. ulRFCC)) = (LpHoh->ulXXCCRegValue); } }
         
           
          break;
         
         
        default:
          { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaCFCC[LpHoh->ucBufferIndex])) = (LpHoh->ulXXCCRegValue);} { (*(&Can_GaaMirrorHohReg[LulHohIndex]. ulCFCC)) = (LpHoh->ulXXCCRegValue); } }
           
          break;
        }
         
         
      }
      else
      {
         
      }
    }

    

 
     
    { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaTHLCC[LucCh])) = (LpPCController->ulTHLCC);} }
     
     

    

 
     
     
    { { (*(&Can_GaaRegs[LucUnit]. pCmn->aaChReg[LucCh]. ulCTR)) = (LpPCController->ulCTR | 0x00000001UL);} { (*(&Can_GaaMirrorChannelReg[LucCtrlIndex]. ulCTR)) = (LpPCController->ulCTR | 0x00000001UL); } }
     
     

    

 
     
    (*((volatile uint8*)(LpPCController->pICErr)) = ((*((volatile uint8*)(LpPCController->pICErr)))&((uint8)(~(uint16)0x0080U))));
     
    (*((volatile uint8*)(LpPCController->pICRec)) = ((*((volatile uint8*)(LpPCController->pICRec)))&((uint8)(~(uint16)0x0080U))));
     
    (*((volatile uint8*)(LpPCController->pICTx)) = ((*((volatile uint8*)(LpPCController->pICTx)))&((uint8)(~(uint16)0x0080U))));
     
     
    (*((volatile uint16*)(LpPCController->pICTx)));
     
    __syncp();
     

    LblErrFlag = (boolean)0x00;
  }

  return LblErrFlag;
}






























 
static  uint32 Can_SearchBaudrate(
  const uint8 LucCtrlIndex, const uint16 LusBaudrate)
{
   
  const Can_ControllerBaudrateConfigType *
    LpBaudrateConfig;
  uint32 LulReturnValue;
  uint32 LulBaudrateConfigCount;
  uint32 LulCount;

   
  LpBaudrateConfig = Can_GpPBController[LucCtrlIndex].pBaudrateConfig;
   
   
  LulBaudrateConfigCount = Can_GpPBController[LucCtrlIndex].usNoOfBaudrate;
   
  LulReturnValue = (uint32) (uint32)0xFFFFFFFFUL;
  LulCount = 0UL;
   
  while ((LulCount < LulBaudrateConfigCount) &&
    ((uint32)0xFFFFFFFFUL == LulReturnValue))
  {
     
    if (LpBaudrateConfig[LulCount].usBaudrateConfig == LusBaudrate)
     
    {
       
      LulReturnValue = LulCount;
    }
    else
    {
       
    }
    LulCount++;
  }
  return(LulReturnValue);
}





























 
static  uint32 Can_SearchBaudrateID(
  const uint8 LucCtrlIndex, const uint16 LusBaudrateID)
{
   
  const Can_ControllerBaudrateConfigType *
    LpBaudrateConfig;
  uint32 LulReturnValue;
  uint32 LulBaudrateConfigCount;
  uint32 LulCount;

   
  LpBaudrateConfig = Can_GpPBController[LucCtrlIndex].pBaudrateConfig;
   
   
  LulBaudrateConfigCount = Can_GpPBController[LucCtrlIndex].usNoOfBaudrate;
   
  LulReturnValue = (uint32) (uint32)0xFFFFFFFFUL;
  LulCount = 0UL;
   
  while ((LulCount < LulBaudrateConfigCount) &&
    ((uint32)0xFFFFFFFFUL == LulReturnValue))
  {
     
    if (LpBaudrateConfig[LulCount].ucBaudrateConfigID == (uint8)LusBaudrateID)
     
    {
       
      LulReturnValue = LulCount;
    }
    else
    {
       
    }
    LulCount++;
  }
  return(LulReturnValue);
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 


































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PUBLIC_CODE_ROM"




 
 


 
 
 
 
 
 Std_ReturnType Can_RAMTest(uint32 LulPageID)
 
 
{
   
   
  uint8 LucNumTestCell;
  uint8 LucUnit;
   
  Std_ReturnType LucResult;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;
  uint8 LucNoOfController;
  uint8 LucCh;
   
  volatile uint32 * LpRCANGLOCKKReg;
  volatile uint32 * LpRCANGTSTCTRReg;
   
  LucResult = 0U;
   
  LulTimeoutDuration = 5UL;

   
  if (LulPageID > (uint32)0x00000053UL)
  {
     
    (void)Det_ReportError(80U, (uint8)0x00,
                                   (uint8)0x14, (uint8)0x0B);
     
    LucResult = 1U;
  }
  else
  {
    LucUnit = (uint8)0;
    LucNoOfController = (uint8)6U;
    
 
    if ((uint32)0x00000053UL == LulPageID)
    {
      LucNumTestCell = (uint8)0x10U;
    }
    else
    {
      LucNumTestCell = (uint8)0x40;
    }
     
     
    for (LucCh = (uint8) 0U;
          (LucCh < LucNoOfController) && (0U == LucResult); LucCh++)
     
    {
      
 
      if (0UL == (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS &
                    0x00000001UL))
      {
         
        (void)Det_ReportError(80U, (uint8)0x00,
                                (uint8)0x14, (uint8)0x0C);
         
        LucResult = 1U;
      }
      else
      {
         
      }
    }
  }
  if (1U != LucResult)
  {
     
    LucTimeoutResult = Can_GlobalModeChange(LucUnit, 0x00000001UL,
      &LulTimeoutDuration, (uint8)0x14);

     
    if (0U != LucTimeoutResult)
    {
      Dem_ReportErrorStatus((Dem_EventIdType)1, 0x01u);
       
      LucResult = 1U;
    }
    else
    {
      {
         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGRMCFG)) = (0x00000001UL);} }
         
      }
      {
         
      }
       
      LucTimeoutResult = Can_GlobalModeChange(LucUnit, 0x00000002UL,
        &LulTimeoutDuration, (uint8)0x14);

       
      if (0U != LucTimeoutResult)
      {
        Dem_ReportErrorStatus((Dem_EventIdType)1, 0x01u);
         
        LucResult = 1U;
      }
      else
      {
         
        LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
        LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;

         
        { *(LpRCANGLOCKKReg) = (uint32)0x00007575UL; *(LpRCANGLOCKKReg) = (uint32)0x00008A8AUL; *(LpRCANGTSTCTRReg) = 0x00000004UL; }

         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGTSTCFG)) = ((uint32)((uint32)(LulPageID) << 16UL));} }
         

         
        Can_GulPageID = LulPageID;
         

         
        Can_RamTst_Set_RAMData(LucNumTestCell, LucUnit, CAN_RAMTEST_FILL_0);

        LucResult = Can_RamTest_Checker_Algorithm(LucNumTestCell, LucUnit);
        if (0U == LucResult)
        {
          LucResult = Can_RamTst_WalkPath_Algorithm(LucNumTestCell, LucUnit,
                                                            CAN_RAMTEST_WALK_0);
          if (0U == LucResult)
          {
            LucResult = Can_RamTst_WalkPath_Algorithm(LucNumTestCell, LucUnit,
                                                            CAN_RAMTEST_WALK_1);
          }
          else
          {
             
          }
        }
        else
        {
           
        }

         
        Can_RamTst_Set_RAMData(LucNumTestCell, LucUnit, CAN_RAMTEST_FILL_0);

         
        { { (*(&Can_GaaRegs[LucUnit]. pCmn->ulGTSTCTR)) = (0x00000000UL);} }
         

         
        LucTimeoutResult = Can_GlobalModeChange(LucUnit, 0x00000001UL,
          &LulTimeoutDuration, (uint8)0x14);

         
        if (0U != LucTimeoutResult)
        {
          Dem_ReportErrorStatus((Dem_EventIdType)1, 0x01u);
           
          LucResult = 1U;
        }
        else
        {
           
          LucTimeoutResult = Can_GlobalModeChange(LucUnit, 0x00000004UL |
            0x00000001UL, &LulTimeoutDuration, (uint8)0x14);

           
          if (0U != LucTimeoutResult)
          {
            Dem_ReportErrorStatus((Dem_EventIdType)1,
                                    0x01u);
             
            LucResult = 1U;
          }
          else
          {
             
          }
        }
      }
    }
  }
  else
  {
     
  }
  Can_GulPageID = (uint32)(uint8)0;
   
  Can_GblInitialized = (boolean)0x00;
   
  return(LucResult);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 





































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PUBLIC_CODE_ROM"




 
 


 
 
 
 
 
 Std_ReturnType Can_CheckHWConsistency
                                (Can_HWConsistencyModeType LenHWConsistencyMode)
 
 
{
   
   
  Std_ReturnType LenRetConsistencyState;
  LenRetConsistencyState = 0U;
   
   
  if ((boolean)0x01 != Can_GblInitialized)
   
  {
     
    (void)Det_ReportError(80U, (uint8)0x00,
                            (uint8)0x11, (uint8)0x05);
     
     
    LenRetConsistencyState = 1U;
  }
  else
  {
     
  }
   
  if ((CAN_STATIC != LenHWConsistencyMode) &&
        (CAN_DYNAMIC != LenHWConsistencyMode))
  {
     
    (void)Det_ReportError(80U, (uint8)0x00,
                     (uint8)0x11, (uint8)0x0D);
     
    LenRetConsistencyState = 1U;
  }
  else
  {
     
  }

  if (1U != LenRetConsistencyState)
  {
     
    if (CAN_STATIC == LenHWConsistencyMode)
    {
      LenRetConsistencyState = Can_CheckConsistencyStatic();
    }
     
    else
    {
      LenRetConsistencyState = Can_CheckConsistencyDynamic();
    }
  }
  else
  {
     
  }
  return(LenRetConsistencyState);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 



































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PRIVATE_CODE_ROM"




 
 


 
 
 
static  Std_ReturnType
                                  Can_CheckConsistencyStatic (void)
{
   
  const Can_HWUnitInfoType * LpHWInfo;
  const Can_FilterType * LpFilter;
  uint32 LulPagesCount;
  uint32 LulRuleIndex;
  uint8 LucUnit;
  uint32 LulCount;
  Std_ReturnType LenRetValue;

   
  LenRetValue = 0U;
   
  LucUnit = (uint8)0U;
  do
  {
     
     
    LpHWInfo =
      (const Can_HWUnitInfoType *)
      Can_GpConfig->pHWUnitInfo;
     
     
    LpHWInfo = &LpHWInfo[LucUnit];
     

     
    if (Can_GaaRegs[LucUnit].pCmn->ulGCFG != LpHWInfo->ulGCFG)
    {
      LenRetValue = 1U;
    }
    else
    {
       
    }
     
    {
       
      if (0x00000001UL != Can_GaaRegs[LucUnit].pCmn->ulGRMCFG)
      {
        LenRetValue = 1U;
      }
      else
      {
         
        if (Can_GaaRegs[LucUnit].pCmn->ulGFDCFG !=
                  0x00000000UL)
        {
          LenRetValue = 1U;
        }
        else
        {
           
        }
      }
    }
    {
       
    }

     
    if (1U != LenRetValue)
    {
      for (LulCount = 0UL;
        LulCount < (uint32) LpHWInfo->ucNoOfGAFLCFG; LulCount++)
      {
        if (Can_GaaRegs[LucUnit].pCmn->aaGAFLCFG[LulCount] !=
                                                LpHWInfo->aaGAFLCFG[LulCount])
        {
          LenRetValue = 1U;
        }
        else
        {
           
        }
      }
      if ((Can_GaaRegs[LucUnit].pCmn->ulGAFLECTR & 0x00000100UL) !=
                0x00000000UL)
      {
        LenRetValue = 1U;
      }
      else
      {
         
      }

       
      LulCount = 0UL;
       
      LulPagesCount = 0UL;

       
      while (LulCount < (uint32)LpHWInfo->usNoOfFilters)
      {
         
        Can_GaaRegs[LucUnit].pCmn->ulGAFLECTR = ((uint32)(LulPagesCount));

        LulRuleIndex = 0UL;
         
        while ((16UL > LulRuleIndex) &&
          (LulCount < (uint32)LpHWInfo->usNoOfFilters))
        {
           
          LpFilter = &LpHWInfo->pFilterConfig[LulCount];
           
           
          if ((Can_GaaRegs[LucUnit].pRR[LulRuleIndex].ulGAFLID !=
                LpFilter->ulGAFLID) ||
              (Can_GaaRegs[LucUnit].pRR[LulRuleIndex].ulGAFLM !=
                LpFilter->ulGAFLM) ||
              (Can_GaaRegs[LucUnit].pRR[LulRuleIndex].
                aaGAFLP[0U] !=
                  LpFilter->aaGAFLP[0U]) ||
              (Can_GaaRegs[LucUnit].pRR[LulRuleIndex].
                aaGAFLP[1U] !=
                  LpFilter->aaGAFLP[1U]))
           
          {
            LenRetValue = 1U;
          }
          else
          {
             
          }
          LulRuleIndex++;
          LulCount++;
        }
        
       LulPagesCount++;
      }
    }
    else
    {
       
    }

     
    if (1U != LenRetValue)
    {
      

 
      if (Can_GaaRegs[LucUnit].pCmn->ulRMNB != LpHWInfo->ulRMNB)
      {
          LenRetValue = 1U;
      }
      else
      {
         
      }

       
      for (LulCount = 0UL;
            LulCount < (uint32)LpHWInfo->ucNoOfTMIEC; LulCount++)
      {
         
        if (Can_GaaRegs[LucUnit].pCmn->aaTMIEC[LulCount] !=
              LpHWInfo->pTMIEC[LulCount])
         
        {
          LenRetValue = 1U;
        }
        else
        {
           
        }
      }
    }
    else
    {
       
    }
     
     
    LucUnit++;
     
   
   
  }while (((uint8)1U) > LucUnit);
   
   

  return LenRetValue;
}






































 
static  Std_ReturnType
                                        Can_CheckConsistencyDynamic (void)
{
   
  const Can_HohConfigType * LpHoh;
  uint8 LucController;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulHohIndex;
  Std_ReturnType LenRetValue;

   
  LenRetValue = 0U;

   
   
  for (LucController = (uint8)0U;
    LucController < (uint8)1U; LucController++)
   
  {
     
    LucUnit = Can_GpPCController[LucController].ucUnitIndex;
     
     
    LucCh = Can_GpPCController[LucController].ucChannelOffset;
     
    
 
    SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
     
    if ((Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCFG !=
          Can_GaaMirrorChannelReg[LucController].ulCFG) ||
        (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR !=
          Can_GaaMirrorChannelReg[LucController].ulCTR))
    {
      LenRetValue = 1U;
    }
    else
    {
       
    }

     
    {
       
      if ((Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulFDCFG !=
            Can_GaaMirrorChannelReg[LucController].ulFDCFG) ||
          (Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulDCFG !=
            Can_GaaMirrorChannelReg[LucController].ulDCFG))
      {
        LenRetValue = 1U;
      }
      else
      {
         
      }
    }
    {
       
    }
    SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
     

     
    for (LulHohIndex = 0UL;
      (LulHohIndex < (uint32)4U) && (0U == LenRetValue);
                                                          LulHohIndex++)
    {
       
      LpHoh = &Can_GpHohConfig[LulHohIndex];
       
      
 
      SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
       
      if (LpHoh->ucController == LucController)
      {
        switch (LpHoh->enBufferType)
        {
        case CAN_BUFFERTYPE_RXFIFO:
          if (Can_GaaRegs[LucUnit].pCmn->aaRFCC[LpHoh->ucBufferIndex] !=
                Can_GaaMirrorHohReg[LulHohIndex].ulRFCC)
          {
            LenRetValue = 1U;
          }
          else
          {
             
          }
          break;
        default :
          if (Can_GaaRegs[LucUnit].pCmn->aaCFCC[LpHoh->ucBufferIndex] !=
                Can_GaaMirrorHohReg[LulHohIndex].ulCFCC)
          {
            LenRetValue = 1U;
          }
           
          else
          {
             
          }
          break;
        }
           
      }
      else
      {
         
      }
      SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
       
    }
  }

   
   
  for (LucUnit = (uint8)0U;
    (LucUnit < (uint8)1U) && (0U == LenRetValue);
                                                              LucUnit++)
   
  {
    
 
    SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
     
    if (Can_GaaRegs[LucUnit].pCmn->ulGCTR !=
          Can_GaaMirrorGlobalReg[LucUnit].ulGCTR)
    {
      LenRetValue = 1U;
    }
    else
    {
       
    }
    SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION();
     
  }

  return LenRetValue;
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 


 
