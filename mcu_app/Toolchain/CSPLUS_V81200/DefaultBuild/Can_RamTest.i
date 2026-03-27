 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 















 
 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 




 
 
 
 



 










 




 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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




 
 


 
 

   
   


 





























 
 
 Std_ReturnType Can_RamTest_Checker_Algorithm
                                      (uint8 LucTestedCellNumber, uint8 LucUnit)
 
{
   
  Std_ReturnType LenReturnVal;
  uint8 LucIndex;
   
  uint8 LucTestRun;
  uint32 LulValue;
  volatile uint32 * LpRCANRPGACCReg;
  volatile uint32 * LpRCANGLOCKKReg;
  volatile uint32 * LpRCANGTSTCTRReg;
  volatile uint32 * LpRCANGTSTCFGReg;

  LulValue = (uint32)0xAAAAAAAAUL;
  LenReturnVal = 0U;

  LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
  LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;
  LpRCANGTSTCFGReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG;
  {
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pFD->aaRPGACC[0];
  }
  {
  }

   
  { *(LpRCANGLOCKKReg) = (uint32)0x00007575UL; *(LpRCANGLOCKKReg) = (uint32)0x00008A8AUL; *(LpRCANGTSTCTRReg) = 0x00000004UL; }
   
   
  for (LucTestRun = (uint8)0;
        (LucTestRun < (uint8)2) && (0U == LenReturnVal);
                                                      LucTestRun++)
  {
     
    for (LucIndex = (uint8)0;
          LucIndex < LucTestedCellNumber; LucIndex++)
    {
       
      { { (*(LpRCANGTSTCFGReg)) = ((uint32)((uint32)(Can_GulPageID) << 16UL));} }
       
       
      *(LpRCANRPGACCReg + LucIndex) = LulValue;
       
       
      LulValue = ~LulValue;
    }
     
    if ((uint8)0 != (uint8)(LucTestedCellNumber & (uint8)1))
    {
      LulValue = ~LulValue;
    }
    else
    {
       
    }

     
    for (LucIndex = (uint8)0;
          (LucIndex < LucTestedCellNumber) && (0U == LenReturnVal);
                                                                    LucIndex++)
    {
       
      { { (*(LpRCANGTSTCFGReg)) = ((uint32)((uint32)(Can_GulPageID) << 16UL));} }
       
       
       
      if (*(LpRCANRPGACCReg + LucIndex) != LulValue)
       
      {
        LenReturnVal = 1U;
      }
      else
      {
         
      }
      LulValue = ~LulValue;
    }
    LulValue = ~((uint32)0xAAAAAAAAUL);
  }

  return (LenReturnVal);
}  






























 
 
 Std_ReturnType Can_RamTst_WalkPath_Algorithm
 (uint8 LucTestedCellNumber, uint8 LucUnit, Can_RamTestWalkType LenWalkPathType)
 
{
   
   
  uint8 LucCellnumber;
   
  uint8 LucBaseCell;
   
  uint8 LucBaseBit;
   
  uint32 LulTotalbits;
   
  uint32 LulIndex;
   
  volatile uint32 * LpRCANRPGACCReg;
  volatile uint32 * LpRCANGLOCKKReg;
  volatile uint32 * LpRCANGTSTCTRReg;
  volatile uint32 * LpRCANGTSTCFGReg;
   
  uint32 LulBackGroundVariable;
  Can_RamTestFillType LenRamFillType;

  Std_ReturnType LenReturnVal = 0U;
  LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
  LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;
  LpRCANGTSTCFGReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG;
  {
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pFD->aaRPGACC[0];
  }
  {
  }

  if (CAN_RAMTEST_WALK_0 == LenWalkPathType)
  {
    LulBackGroundVariable = (uint32)0xFFFFFFFFUL;
    LenRamFillType = CAN_RAMTEST_FILL_1;
  }
  else
  {
    LulBackGroundVariable = (uint32)0x00000000UL;
    LenRamFillType = CAN_RAMTEST_FILL_0;
  }
   
  Can_RamTst_Set_RAMData(LucTestedCellNumber, LucUnit, LenRamFillType);
  LulTotalbits = (uint32)LucTestedCellNumber << (uint32)0x00000005UL;

   
  { *(LpRCANGLOCKKReg) = (uint32)0x00007575UL; *(LpRCANGLOCKKReg) = (uint32)0x00008A8AUL; *(LpRCANGTSTCTRReg) = 0x00000004UL; }
   

    
  for (LulIndex = (uint32)(uint8)0; (LulIndex < LulTotalbits) &&
                                            (0U == LenReturnVal); LulIndex++)
  {
    LucBaseCell = (uint8)(LulIndex >> (uint32)0x00000005UL);
    LucBaseBit = (uint8)(LulIndex & ((uint8)0x20 - (uint8)1));

     
    { { (*(LpRCANGTSTCFGReg)) = ((uint32)((uint32)(Can_GulPageID) << 16UL));} }
     
     
     
    ((*(LpRCANRPGACCReg + LucBaseCell)) ^= (uint32)((0x0001UL) << (LucBaseBit)));
     
     

     
    for (LucCellnumber = (uint8)0;
      (LucCellnumber < LucTestedCellNumber) && (0U == LenReturnVal);
                                                                LucCellnumber++)
    {
       
      { { (*(LpRCANGTSTCFGReg)) = ((uint32)((uint32)(Can_GulPageID) << 16UL));} }
       
       
      if (LucCellnumber == LucBaseCell)
      {
         
        if (*(LpRCANRPGACCReg + LucBaseCell) !=
                      (LulBackGroundVariable ^ ((uint32)(uint8)1 << LucBaseBit)))
         
        {
          LenReturnVal = 1U;
        }
        else
        {
           
        }
      }
       
       
      else if (*(LpRCANRPGACCReg + LucCellnumber) != LulBackGroundVariable)
       
      {
        LenReturnVal = 1U;
      }
      else
      {
         
      }
    }
     
    { { (*(LpRCANGTSTCFGReg)) = ((uint32)((uint32)(Can_GulPageID) << 16UL));} }
     
     
     
    ((*(LpRCANRPGACCReg + LucBaseCell)) ^= (uint32)((0x0001UL) << (LucBaseBit)));
     
     
  }

  return (LenReturnVal);
}  





























 
 
 void Can_RamTst_Set_RAMData
  (uint8 LucTestedCellNumber, uint8 LucUnit, Can_RamTestFillType LenRAMFillType)
 
{
   
  volatile uint32 * LpRCANRPGACCReg;
  volatile uint32 * LpRCANGLOCKKReg;
  volatile uint32 * LpRCANGTSTCTRReg;
  volatile uint32 * LpRCANGTSTCFGReg;
  uint32 LulRamInitData;
   
  uint8 LucCellnumber;

  LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
  LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;
  LpRCANGTSTCFGReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG;
  {
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pFD->aaRPGACC[0];
  }
  {
  }

   
  if (CAN_RAMTEST_FILL_1 == LenRAMFillType)
  {
    LulRamInitData = (uint32)0xFFFFFFFFUL;
  }
  else
  {
    LulRamInitData = (uint32)0x00000000UL;
  }
   
  { *(LpRCANGLOCKKReg) = (uint32)0x00007575UL; *(LpRCANGLOCKKReg) = (uint32)0x00008A8AUL; *(LpRCANGTSTCTRReg) = 0x00000004UL; }
   

   
  for (LucCellnumber = (uint8)0;
    LucCellnumber < LucTestedCellNumber; LucCellnumber++)
  {
     
    { { (*(LpRCANGTSTCFGReg)) = ((uint32)((uint32)(Can_GulPageID) << 16UL));} }
     
     
    *(LpRCANRPGACCReg + LucCellnumber) = LulRamInitData;
     
     
  }
}  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 
 


 
