 



























 
 



























 

 



























 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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

 


 
 
 












 
 
 
extern uint8  EEIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_DeInit(void);
extern void   EEIf_Init(void);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


























 
 



 


 



 



 



 




 

 
extern void SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION(void);
extern void SchM_Enter_Fls_FLS_REGISTER_PROTECTION(void);

 
extern void SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION(void);
extern void SchM_Exit_Fls_FLS_REGISTER_PROTECTION(void);




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






































































 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




































 
 



 


 


 







 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 





 
 




 



 

 

 



 



 

 
typedef enum
{
  MEMIF_UNINIT = 0,
  MEMIF_IDLE,
  MEMIF_BUSY,
  MEMIF_BUSY_INTERNAL
} MemIf_StatusType;

 
typedef enum
{
  MEMIF_JOB_OK = 0,
  MEMIF_JOB_FAILED,
  MEMIF_JOB_PENDING,
  MEMIF_JOB_CANCELED,
  MEMIF_BLOCK_INCONSISTENT,
  MEMIF_BLOCK_INVALID
} MemIf_JobResultType;

 
typedef enum
{
  MEMIF_MODE_SLOW = 0,
  MEMIF_MODE_FAST
} MemIf_ModeType;



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


typedef struct Stag_PortRegisters
{
    uint16       usP;                        

    uint8        ucDummy1[254];              

    uint32       ulPSR;                      

    uint8        ucDummy2[252];              

    uint16       usPPR;                      

    uint8        ucDummy3[254];              

    uint16       usPM;                       

    uint8        ucDummy4[254];              

    uint16       usPMC;                      

    uint8        ucDummy5[254];              

    uint16       usPFC;                      

    uint8        ucDummy6[254];              

    uint16       usPFCE;                     

    uint8        ucDummy7[254];              

    uint16       usPNOT;                     

    uint8        ucDummy8[254];              

    uint32       ulPMSR;                     

    uint8        ucDummy9[252];              

    uint32       ulPMCSR;                    

    uint8        ucDummy10[252];             

    uint16       usPFCAE;                    

    uint8        ucDummy11[13822];           

    uint16       usPIBC;                     

    uint8        ucDummy12[254];             

    uint16       usPBDC;                     

    uint8        ucDummy13[254];             

    uint16       usPIPC;                     

    uint8        ucDummy14[254];             

    uint16       usPU;                       

    uint8        ucDummy15[254];             

    uint16       usPD;                       

    uint8        ucDummy16[254];             

    uint32       ulPODC;                     

    uint8        ucDummy17[252];             

    uint32       ulPDSC;                     

    uint8        ucDummy18[252];             

    uint16       usPIS;                      

    uint8        ucDummy19[1022];            

    uint32       ulPPROTS;                   

    uint8        ucDummy20[252];             

    uint32       ulPPCMD;                    
}PortReg;

typedef struct STag_IPortRegisters
{                                                      
    uint16       usIPPR;                     

    uint8        ucDummy21[15870];           

    uint16       usIPIBC;                    
}IPortReg;

typedef struct STag_JPortRegisters
{
    uint8        ucJP;                       

    uint8        ucDummy22[15];              

    uint32       ulJPSR;                     

    uint8        ucDummy23[12];              

    uint8        ucJPPR;                     

    uint8        ucDummy24[15];              

    uint8        ucJPM;                      

    uint8        ucDummy25[15];              

    uint8        ucJPMC;                     

    uint8        ucDummy26[15];              

    uint8        ucJPFC;                     

    uint8        ucDummy27[15];              

    uint8        ucJPFCE;                    

    uint8        ucDummy28[15];              

    uint8        ucJPNOT;                    

    uint8        ucDummy29[15];              

    uint32       ulJPMSR;                    

    uint8        ucDummy30[9];               

    uint32       ulJPMCSR;                   

    uint8        ucDummy31[876];             

    uint8        ucJPIBC;                    

    uint8        ucDummy32[15];              

    uint8        ucJPBDC;                    

    uint8        ucDummy33[31];              

    uint8        ucJPU;                      

    uint8        ucDummy34[15];              

    uint8        ucJPD;                      

    uint8        ucDummy35[15];              

    uint32       ulJPODC;                    

    uint8        ucDummy36[12];              

    uint32       ulJPDSC;                    

    uint8        ucDummy37[12];              

    uint8        ucJPIS;                     

    uint8        ucDummy38[47];              

    uint8        ucJPISA;                    

    uint8        ucDummy39[15];              

    uint32       ulJPPROTS;                  

    uint8        ucDummy40[12];              

    uint32       ulJPPCMD;                   
}JPortReg;

typedef struct Stag_AnalogPortReg
{
    uint16       usAP;                       

    uint8        ucDummy41[254];             

    uint32       ulAPSR;                     

    uint8        ucDummy42[252];             

    uint16       usAPPR;                     

    uint8        ucDummy43[254];             

    uint16       usAPM;                      

    uint8        ucDummy44[1022];            

    uint16       usAPNOT;                    

    uint8        ucDummy45[254];             

    uint32       ulAPMSR;                    

    uint8        ucDummy46[14332];           

    uint16       usAPIBC;                    

    uint8        ucDummy47[254];             

    uint16       usAPBDC;                    
}APortReg;

typedef struct Stag_FCLA0_Registers
{
    uint8         ucCTLn_SIG[137];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}FCLAReg;

typedef struct Stag_DNFA_Registers
{
    uint8        ucCTL;                      

    uint8        ucDummy70[3];               

    uint16       usEN;                       
}DNFAReg;

typedef struct Stag_RESF_Registers
{                                                      
    const uint32 ulRESF;                     

    uint8        ucDummy90[4];               

    uint32       ulRESFC;                    

    uint8        ucDummy91[244];             

    const uint32 ulRESFR;                    

    uint8        ucDummy92[4];               

    uint32       ulRESFCR;                   

    uint8        ucDummy93[408];             

    uint32       ulSWRESA;                   

    uint8        ucDummy94[11256];           

    uint32       ulCYCRBASE;                 
} RESFReg;

typedef struct Stag_LVI_Registers
{                                                      
    const uint32 ulVLVF;                     

    uint8        ucDummy95[4];               

    uint32       ulVLVFC;                    

    uint8        ucDummy96[116];             

    uint32       ulLVICNT;                   

    uint8        ucDummy97[9980];            

    uint32       ulCVMF;                     

    const uint32 ulCVMDE;                    

    uint8        ucDummy98[12];              

    uint32       ulCVMDIAG;                  

    uint8        ucDummy99[232];             

    uint32       ulPROTCMDCVM;               

    const uint32 ulPROTSCVM;                 
} LVIReg;
 
typedef struct Stag_ClkCntl_Registers
{                                                      

    uint32       ulROSCE;                    

    const uint32 ulROSCS;                    

    uint8        ucDummy100[16];             

    uint32       ulROSCSTPM;                 

    uint32       ulROSCUT;                   

    uint8        ucDummy101[224];            

    uint32       ulMOSCE;                    

    const uint32 ulMOSCS;                    

    uint32       ulMOSCC;                    

    uint32       ulMOSCST;                   

    uint8        ucDummy102[8];              

    uint32       ulMOSCSTPM;                 

    uint32       ulMOSCM;                    

    uint8        ucDummy103[224];            

    uint32       ulSOSCE;                    

    const uint32 ulSOSCS;                    

    uint8        ucDummy104[4];              

    uint32       ulSOSCST;                   

    uint8        ucDummy105[3568];           

    uint32       ulCKSC_AWDTAD_CTL;          

    uint8        ucDummy106[4];              

    const uint32 ulCKSC_AWDTAD_ACT;          

    uint8        ucDummy107[12];             

    uint32       ulCKSC_AWDTAD_STPM;         

    uint8        ucDummy108[228];            

    uint32       ulCKSC_ATAUJS_CTL;          

    uint8        ucDummy109[4];              

    const uint32 ulCKSC_ATAUJS_ACT;          

    uint8        ucDummy110[244];            

    uint32       ulCKSC_ATAUJD_CTL;          

    uint8        ucDummy111[4];              

    const uint32 ulCKSC_ATAUJD_ACT;          

    uint8        ucDummy112[12];             

    uint32       ulCKSC_ATAUJD_STPM;         

    uint8        ucDummy113[228];            

    uint32       ulCKSC_ARTCAS_CTL;          

    uint8        ucDummy114[4];              

    const uint32 ulCKSC_ARTCAS_ACT;          

    uint8        ucDummy115[244];            

    uint32       ulCKSC_ARTCAD_CTL;          

    uint8        ucDummy116[4];              

    const uint32 ulCKSC_ARTCAD_ACT;          

    uint8        ucDummy117[12];             

    uint32       ulCKSC_ARTCAD_STPM;         

    uint8        ucDummy118[228];            

    uint32       ulCKSC_AADCAS_CTL;          

    uint8        ucDummy119[4];              

    const uint32 ulCKSC_AADCAS_ACT;          

    uint8        ucDummy120[244];            

    uint32       ulCKSC_AADCAD_CTL;          

    uint8        ucDummy121[4];              

    const uint32 ulCKSC_AADCAD_ACT;          

    uint8        ucDummy122[12];             

    uint32       ulCKSC_AADCAD_STPM;         

    uint8        ucDummy123[228];            

    uint32       ulCKSC_AFOUTS_CTL;          

    uint8        ucDummy124[4];              

    const uint32 ulCKSC_AFOUTS_ACT;          

    uint8        ucDummy125[12];             

    uint32       ulCKSC_AFOUTS_STPM;         

    uint8        ucDummy126[228];            

    uint32       ulFOUTDIV;                  

    const uint32 ulFOUTSTAT;                 

    uint8        ucDummy127[26616];          

    uint32       ulPLLE;                     

    const uint32 ulPLLS;                     

    uint32       ulPLLC;                     

    uint8        ucDummy128[4084];           

    uint32       ulCKSC_CPUCLKS_CTL;         

    uint8        ucDummy129[4];              

    const uint32 ulCKSC_CPUCLKS_ACT;         

    uint8        ucDummy130[4];              

    uint32       ulCKSC_PPLLCLKS_CTL;        

    uint8        ucDummy131[4];              

    const uint32 ulCKSC_PPLLCLKS_ACT;        

    uint8        ucDummy132[228];            

    uint32       ulCKSC_CPUCLKD_CTL;         

    uint8        ucDummy133[4];              

    const uint32 ulCKSC_CPUCLKD_ACT;         

    uint8        ucDummy134[244];            

    uint32       ulCKSC_IPERI1S_CTL;         

    uint8        ucDummy135[4];              

    const uint32 ulCKSC_IPERI1S_ACT;         

    uint8        ucDummy136[244];            

    uint32       ulCKSC_IPERI2S_CTL;         

    uint8        ucDummy137[4];              

    const uint32 ulCKSC_IPERI2S_ACT;         

    uint8        ucDummy138[244];            

    uint32       ulCKSC_ILINS_CTL;           

    uint8        ucDummy139[4];              

    const uint32 ulCKSC_ILINS_ACT;           

    uint8        ucDummy140[244];            

    uint32       ulCKSC_IADCAS_CTL;          

    uint8        ucDummy141[4];              

    const uint32 ulCKSC_IADCAS_ACT;          

    uint8        ucDummy142[244];            

    uint32       ulCKSC_IADCAD_CTL;          

    uint8        ucDummy143[4];              

    const uint32 ulCKSC_IADCAD_ACT;          

    uint8        ucDummy144[244];            

    uint32       ulCKSC_PLLIS_CTL;           

    uint8        ucDummy145[4];              

    const uint32 ulCKSC_PLLIS_ACT;           

    uint8        ucDummy146[244];            

    uint32       ulCKSC_ILIND_CTL;           

    uint8        ucDummy147[4];              

    const uint32 ulCKSC_ILIND_ACT;           

    uint8        ucDummy148[12];             

    uint32       ulCKSC_ILIND_STPM;          

    uint8        ucDummy149[228];            

    uint32       ulCKSC_ICANS_CTL;           

    uint8        ucDummy150[4];              

    const uint32 ulCKSC_ICANS_ACT;           

    uint8        ucDummy151[12];             

    uint32       ulCKSC_ICANS_STPM;          

    uint8        ucDummy152[228];            

    uint32       ulCKSC_ICANOSCD_CTL;        

    uint8        ucDummy153[4];              

    const uint32 ulCKSC_ICANOSCD_ACT;        

    uint8        ucDummy154[12];             

    uint32       ulCKSC_ICANOSCD_STPM;       

    uint8        ucDummy155[228];            

    uint32       ulCKSC_ICSIS_CTL;           

    uint8        ucDummy156[4];              

    const uint32 ulCKSC_ICSIS_ACT;           

    uint8        ucDummy157[244];            

    uint32       ulCKSC_IIICS_CTL;           

    uint8        ucDummy158[4];              

    const uint32 ulCKSC_IIICS_ACT;           
} ClkCntlReg;
 
typedef struct Stag_ClkMntr_Register
{                                                      
    uint8        ucCTL0;                     

    uint8        ucDummy159[7];              

    uint16       usCMPL;                     

    uint8        ucDummy160[2];              

    uint16       usCMPH;                     

    uint8        ucDummy161[2];              

    uint8        ucPCMD;                     

    uint8        ucDummy162[3];              

    const uint8  ucPS;                       

    uint8        ucDummy163[3];              

    uint8        ucEMU0;                     
} ClkMntrReg;

typedef struct Stag_CmnClkMntr_Register
{                                                      
    uint32       ulTEST;                     

    const uint32 ulTESTS;                    

    uint8        ucDummy164[248];            

    uint32       ulPROTCMDCLMA;              

    const uint32 ulPROTSCLMA;                
} CmnClkMntrReg;

typedef struct Stag_STBC0_Registers
{                                                      
    uint32       ulPSC;                      

    uint8        ucDummy165[12];             

    uint32       ulSTPT;                     
} STBC0Reg;

typedef struct Stag_WUF_Registers
{                                                      
    const uint32 ulWUF0;                     

    uint32       ulWUFMSK0;                  

    uint32       ulWUFC0;                    
} WUFReg;

typedef struct Stag_LPS_Registers                      
{
    uint32       ulSCTLR;                    

    uint32       ulEVFR;                     

    uint32       ulDPSELR0;                  

    uint32       ulDPSELRM;                  

    uint32       ulDPSELRH;                  

    uint32       ulDPDSR0;                   

    uint32       ulDPDSRM;                   

    uint32       ulDPDSRH;                   

    const uint32 ulDPDIMR0;                  

    const uint8  ucDPDIMR1;                  

    uint8        ucDummy166[3];              

    const uint8  ucDPDIMR2;                  

    uint8        ucDummy167[3];              

    const uint8  ucDPDIMR3;                  

    uint8        ucDummy168[3];              

    const uint8  ucDPDIMR4;                  

    uint8        ucDummy169[3];              

    const uint8  ucDPDIMR5;                  

    uint8        ucDummy170[3];              

    const uint8  ucDPDIMR6;                  

    uint8        ucDummy171[3];              

    const uint8  ucDPDIMR7;                  

    uint8        ucDummy172[3];              

    uint16       usCNTVAL;                   

    uint8        ucDummy173[2];              

    const uint8  ucSOSTR;                    
} LPSReg;

typedef struct Stag_WriteProt_Registers
{                                                      
    uint32       ulPROTCMD0;                 

    const uint32 ulPROTS0;                   

    uint8        ucDummy174[32760];          

    uint32       ulPROTCMD1;                 

    const uint32 ulPROTS1;                   
} WPROTReg;

typedef struct Stag_CANController_Registers
{
    uint32       ulGCFG;                     

    uint32       ulGCTR;                     

    uint32       ulGSTS;                     

    uint32       ulGERFL;                    

    uint32       ulGTSC;                     

    uint32       ulGAFLECTR;                 

    uint32       ulGAFLCFG0;                 

    uint32       ulGAFLCFG1;                 

    uint32       ulRMNB;                     

    uint8        ucdummy175[952];            

    uint32       ulGTINTSTS0;                

    uint32       ulGTINTSTS1;                

    uint32       ulGTSTCFG;                  

    uint32       ulGTSTCTR;                  

    uint8        ucdummy289[4];              

    uint32       ulGFDCFG;                   

    uint8        ucdummy290[4];              

    uint32       ulGLOCKK;                   

    uint8        ucdummy291[124];            

    uint32       ulGRMCFG;                   

}CANGblReg;

typedef struct Stag_CANChannel_Registers
{
    uint32       ulCFG;                      

    uint32       ulCTR;                      

    uint32       ulSTS;                      

    uint32       ulERFL;                     
}CANChReg;

typedef struct Stag_CANTXQ_Registers
{
    uint32       ulTXQCC;                    

    uint8        ucdummy178[28];             

    uint32       ulTXQSTS;                   

    uint8        ucdummy179[28];             

    uint32       ulTXQPCTR;                  
}CANTxqReg;

typedef struct Stag_CANTHL_Registers
{
    uint32       ulTHLCC;                    

    uint8        ucdummy181[28];             

    uint32       ulTHLSTS;                   

    uint8        ucdummy182[28];             

    uint32       ulTHLPCTR;                  

    uint8        ucdummy183[5052];           

    uint32       ulTHLACC;                   

    uint8        ucdummy184[18428];          

    uint32       ulFDTHLACC;                 
}CANThlReg;


typedef struct Stag_CAN_ReceiveRule
{
    uint32       ulGAFLID;                   

    uint32       ulGAFLM;                    

    uint32       ulGAFLP0;                   

    uint32       ulGAFLP1;                   
}CANRRuleReg;

typedef struct Stag_CAN_ComFIFO1
{
    uint32       ulCFCC;                     

    uint8        ucdummy184[92];             

    uint32       ulCFSTS;                    

    uint8        ucdummy185[92];             

    uint32       ulCFPCTR;                   
}CANCFIFOReg1;

typedef struct Stag_CAN_ComFIFO2
{
    uint32       ulCFID;                     

    uint32       ulCFPTR;                    

    uint32       ulCFDF0;                    

    uint32       ulCFDF1;                    
}CANCFIFOReg2;

 
typedef struct Stag_CAN_FIFOStatus
{
    uint32       ulFESTS;                    

    uint32       ulFFSTS;                    

    uint32       ulFMSTS;                    

    uint32       ulRFISTS;                   

    uint32       ulCFRISTS;                  

    uint32       ulCFTISTS;                  
}CANFIFOStatusReg;

typedef struct Stag_CAN_HrhFIFO
{
    uint32       ulRFCC;                     

    uint8        ucdummy287[28];             

    uint32       ulRFSTS;                    

    uint8        ucdummy288[28];             

    uint32       ulRFPCTR;                   


}CANHRTFIFOReg1;

typedef struct Stag_CAN_HrhFIFO2
{
    uint32       ulRFID;                     

    uint32       ulRFPTR;                    

    uint32       ulRFDF0;                    

    uint32       ulRFDF1;                    

}CANHRTFIFOReg2;


typedef struct Stag_CAN_FIFODMA
{
    uint32       ulCDTCT;                    
    uint32       ulCDTSTS;                   
}CANFIFIODMAReg;

typedef struct Stag_CAN_TransmitBuffControl
{
    uint32       TMTRSTS;                    

    uint32       TMTARSTS;                   

    uint32       TMTCSTS;                    

    uint32       TMTASTS;                    
}CANTransmitBuffControlReg;

typedef struct STag_CAN_Hrh
{
    uint32       ulRMID;                     

    uint32       ulRMPTR;                    

    uint32       ulRMDF0;                    

    uint32       ulRMDF1;                    
}CANHrhReg;

typedef struct STag_CAN_Hth1
{
    uint8        ucTMC;                      

    uint8        ucdummy190[127];            

    uint8        ucTMSTS;                    
}CANHthReg1;

typedef struct STag_CAN_Hth2
{
    uint32       ulTMID;                     

    uint32       ulTMPTR;                    

    uint32       ulTMDF0;                    
}CANHthReg2;

 

typedef struct STag_CAN_FDChannel
{
    uint32        ulDCFG;

    uint32        ulFDCFG;

    uint32        ulFDCTR;

    uint32        ulFDSTS;

    uint32        ulFDCRC;
}CANFDChReg;

typedef struct STag_CANRamTstReg
{
    uint32       ulRPGACC[64];               
}CANRamTstReg;

typedef struct Stag_CANFD_ReceiveRule
{
    uint32       ulFDGAFLID;                 

    uint32       ulFDGAFLM;                  

    uint32       ulFDGAFLP0;                 

    uint32       ulFDGAFLP1;                 
}CANFDRRuleReg;

typedef struct STag_CANFD_Hrh
{
    uint32       ulFDRMID;                   

    uint32       ulFDRMPTR;                  

    uint32       ulFDRMSTS;                  

    uint32       ulFDRMDF0;                  

    uint32       ulFDRMDF1;                  

    uint32       ulFDRMDF2;                  

    uint32       ulFDRMDF3;                  

    uint32       ulFDRMDF4;                  
}CANFDHrhReg;

typedef struct Stag_CANFD_HrhFIFO
{
    uint32       ulFDRFID;                   

    uint32       ulFDRFPTR;                  

    uint32       ulRFFDSTS;                  

    uint32       ulFDRFDF0;                  

    uint32       ulFDRFDF1;                  

    uint32       ulFDRFDF2;                  

    uint32       ulFDRFDF3;                  

    uint32       ulFDRFDF4;                  

    uint32       ulFDRFDF5;                  

    uint32       ulFDRFDF6;                  

    uint32       ulFDRFDF7;                  

    uint32       ulFDRFDF8;                  

    uint32       ulFDRFDF9;                  

    uint32       ulFDRFDF10;                 

    uint32       ulFDRFDF11;                 

    uint32       ulFDRFDF12;                 

    uint32       ulFDRFDF13;                 

    uint32       ulFDRFDF14;                 

    uint32       ulFDRFDF15;                 
}CANFDHRTFIFOReg;

typedef struct Stag_CANFD_ComFIFO
{
    uint32       ulFDCFID;                   

    uint32       ulFDCFPTR;                  

    uint32       ulFDCSTS;                   

    uint32       ulFDCFDF0;                  

    uint32       ulFDCFDF1;                  

    uint32       ulFDCFDF2;                  

    uint32       ulFDCFDF3;                  

    uint32       ulFDCFDF4;                  

    uint32       ulFDCFDF5;                  

    uint32       ulFDCFDF6;                  

    uint32       ulFDCFDF7;                  

    uint32       ulFDCFDF8;                  

    uint32       ulFDCFDF9;                  

    uint32       ulFDCFDF10;                 

    uint32       ulFDCFDF11;                 

    uint32       ulFDCFDF12;                 

    uint32       ulFDCFDF13;                 

    uint32       ulFDCFDF14;                 

    uint32       ulFDCFDF15;                 
}CANFDCFIFOReg;

typedef struct STag_CANFD_Hth
{
    uint32       ulFDTMID;                   

    uint32       ulFDTMPTR;                  

    uint32       ulTMFDCTR;                  

    uint32       ulFDTMDF0;                  

    uint32       ulFDTMDF1;                  

    uint32       ulFDTMDF2;                  

    uint32       ulFDTMDF3;                  

    uint32       ulFDTMDF4;                  
}CANFDHthReg;

typedef struct STag_TAUDBUnitUserReg
{
    uint16       usTOL;                      

    uint8        ucdummy192[2];              

    uint16       usRDT;                      

    uint8        ucdummy193[2];              

    uint16       usRSF;                      

    uint8        ucdummy272[2];              

    uint16       usTRO;                      

    uint8        ucdummy194[2];              

    uint16       usTME;                      

    uint8        ucdummy195[2];              

    uint16       usTDL;                      

    uint8        ucdummy196[2];              

    uint16       usTO;                       

    uint8        ucdummy197[2];              

    uint16       usTOE;                      

    uint8        ucdummy198[354];            

    uint16       usTE;                       

    uint8        ucdummy199[2];              

    uint16       usTS;                       

    uint8        ucdummy200[2];              

    uint16       usTT;                       

}TAUDBUserReg;

typedef struct STag_TAUDBUnitOsReg
{
    uint16       usTPS;                      

    uint8        ucdummy201[2];              

    uint8        ucBRS;                      

    uint8        ucdummy202[3];              

    uint16       usTOM;                      

    uint8        ucdummy203[2];              

    uint16       usTOC;                      

    uint8        ucdummy204[2];              

    uint16       usTDE;                      

    uint8        ucdummy205[2];              

    uint16       usTDM;                      

    uint8        ucdummy206[2];              

    uint16       usTRE;                      

    uint8        ucdummy207[2];              

    uint16       usTRC;                      

    uint8        ucdummy208[2];              

    uint16       usRDE;                      

    uint8        ucdummy209[2];              

    uint16       usRDM;                      

    uint8        ucdummy210[2];              

    uint16       usRDS;                      

    uint8        ucdummy211[2];              

    uint16       usRDC;                      
}TAUDBOsReg;

typedef struct STag_TAUJUnitUserReg
{
    uint8        ucTE;                       

    uint8        ucdummy212[3];              

    uint8        ucTS;                       

    uint8        ucdummy213[3];              

    uint8        ucTT;                       

    uint8        ucdummy214[3];              

    uint8        ucTO;                       

    uint8        ucdummy215[3];              

    uint8        ucTOE;                      

    uint8        ucdummy216[3];              

    uint8        ucTOL;                      

    uint8        ucdummy217[3];              

    uint8        ucRDT;                      

    uint8        ucdummy267[3];              

    uint8        ucRSF;                      

    uint8        ucdummy275[16];             

}TAUJUserReg;

typedef struct STag_TAUJUnitOsRegs
{
    uint16       usTPS;                      

    uint8        ucdummy218[2];              

    uint8        ucBRS;                      

    uint8        ucdummy219[3];              

    uint8        ucTOM;                      

    uint8        ucdummy220[3];              

    uint8        ucTOC;                      

    uint8        ucdummy221[3];              

    uint8        ucRDE;                      

    uint8        ucdummy222[3];              

    uint8        ucRDM;                      
}TAUJOsReg;

typedef struct STag_TAUDBUserReg
{
    uint16       usCDR;                      

    uint16       usDummy223[63];             

    uint16       usCNT;                      

    uint16       usDummy224[31];             

    uint8        ucCMUR;                     

    uint8        ucdummy225[127];            

    uint8        ucCSR;                      

    uint8        ucdummy270[63];             

    uint8        ucCSC;                      

    uint8        ucdummy268[127];            

    uint16       usCMOR;                     

}TAUDBChReg;

typedef struct STag_TAUJUserReg
{
    uint32       ulCDR;                      

    uint8        ucdummy226[12];             

    uint32       ulCNT;                      

    uint8        ucdummy227[12];             

    uint8        ucCMUR;                     

    uint8        ucdummy269[15];             

    uint8        ucCSR;                      

    uint8        ucdummy271[15];             

    uint8        ucCSC;                      

    uint8        ucdummy228[63];             

    uint16       usCMOR;                     
}TAUJChReg;

typedef struct STag_OSTMUnitUserRegs
{
    uint32       ulCMP;                      

    uint32       ulCNT;                      

    uint8        ucdummy229[8];              

    uint8        ucTE;                       

    uint8        ucdummy230[3];              

    uint8        ucTS;                       

    uint8        ucdummy231[3];              

    uint8        ucTT;                       

    uint8        ucdummy232[7];              

    uint8        ucCTL;                      

    uint8        ucdummy233[3];              

    uint8        ucEMU;                      
} OSTMReg;

typedef struct STag_Pwm_DiagClockDivRegs
{
    uint16       usBRS0;                     

    uint8        ucdummy232[2];              

    uint16       usBRS1;                     

    uint8        ucdummy233[2];              

    uint16       usBRS2;                     

    uint8        ucdummy234[2];              

    uint16       usBRS3;                     

    uint8        ucdummy235[2];              

    uint8        ucTE;                       

    uint8        ucdummy236[3];              

    uint8        ucTS;                       

    uint8        ucdummy237[3];              

    uint8        ucTT;                       
}PWBAReg;

typedef struct STag_Pwm_DiagGeneratorRegs
{
    uint16       usCSDR;                     

    uint8        ucdummy238[2];              

    uint16       usCRDR;                     

    uint8        ucdummy239[2];              

    uint16       usCTDR;                     

    uint8        ucdummy240[2];              

    uint8        ucRDT;                      

    uint8        ucdummy241[3];              

    uint8        ucRSF;                      

    uint8        ucdummy242[3];              

    uint16       usCNT;                      

    uint8        ucdummy243[10];             

    uint8        ucCTL;                      

    uint8        ucdummy244[3];              

    uint16       usCSBR;                     

    uint8        ucdummy245[2];              

    uint16       usCRBR;                     

    uint8        ucdummy246[2];              

    uint16       usCTBR;                     
}PWGAReg;

typedef struct STag_Pwm_PWSAReg
{
    uint8        ucCTL;                      

    uint8        ucdummy268[3];              

    uint8        ucSTR;                      

    uint8        ucdummy269[59];             

    uint32       ulPVCR[36];                 
}PWSAReg;

typedef struct STag_Pwm_SLPWGAReg
{
    uint32       ulSLPWGA0;                  

    uint32       ulSLPWGA1;                  

    uint32       ulSLPWGA2;                  
}SLPWGAReg;

typedef struct STag_RLin2_GblRegs
{
    uint8        ucGLWBR;                    

    uint8        ucGLBRP0;                   

    uint8        ucGLBRP1;                   

    uint8        ucGLSTC;                    
} Lin2GblReg;

typedef struct STag_RLin2_ChannelRegs
{
    uint8        ucLiMD;                     

    uint8        ucLiBFC;                    

    uint8        ucLiSC;                     

    uint8        ucLiWUP;                    

    uint8        ucLiIE;                     

    uint8        ucLiEDE;                    

    uint8        ucLiCUC;                    

    uint8        ucdummy247[1];              

    uint8        ucLiTRC;                    

    uint8        ucLiMST;                    

    uint8        ucLiST;                     

    uint8        ucLiEST;                    

    uint8        ucLiDFC;                    

    uint8        ucLiIDB;                    

    uint8        ucLiCBR;                    

    uint8        ucdummy248[1];              

    uint8        ucLiDBR[8];                 
} Lin2ChReg;

typedef struct STag_RLin3_UartRegs
{
    uint8        ucLWBR;                     

    uint8        ucLBRP0;                    

    uint8        ucLBRP1;                    

    uint8        ucLSTC;                     

    uint8        ucdummy249[3];              

    uint8        ucLMD;                      

    uint8        ucLBFC;                     

    uint8        ucLSC;                      

    uint8        ucLWUP;                     

    uint8        ucLIE;                      

    uint8        ucLEDE;                     

    uint8        ucLCUC;                     

    uint8        ucdummy250[1];              

    uint8        ucLTRC;                     

    uint8        ucLMST;                     

    uint8        ucLST;                      

    uint8        ucLEST;                     

    uint8        ucLDFC;                     

    uint8        ucLDB;                      

    uint8        ucLCBR;                     

    uint8        ucdummy251[1];              

    uint8        ucLDBR[8];                  
} Lin3UartReg;


typedef struct Stag_WDTA_Registers
{
    uint8        ucWDTE;                     

    uint8        ucdummy252[3];              

    uint8        ucEVAC;                     

    uint8        ucdummy253[3];              

    uint8        ucREF;                      

    uint8        ucdummy254[3];              

    uint8        ucMD;                       
}WDTAReg;

typedef struct STag_AdcConfigRegisters
{
    uint32       ulPWDVCR;                   

    uint8        ucdummy255[508];            

    uint32       ulPWDDIR;                   

    uint8        ucdummy256[8];              

    uint32       ulADHALTR;                  

    uint32       ulADCR;                     

    uint32       ulSGSTR;                    

    uint32       ulMPXCURR;                  

    uint8        ucdummy257[4];              

    uint32       ulTHSMPSTCR;                

    uint32       ulTHCR;                     

    uint32       ulTHAHLDSTCR;               

    uint32       ulTHBHLDSTCR;               

    uint32       ulTHACR;                    

    uint32       ulTHBCR;                    

    uint32       ulTHER;                     

    uint32       ulTHGSR;                    

    uint32       ulSFTCR;                    

    uint32       ulULLMTBR[3];               

    uint32       ulECR;                      

    uint32       ulULER;                     

    uint32       ulOWER;                     

    uint32       ulDGCTL0;                   

    uint32       ulDGCTL1;                   

    uint32       ulPDCTL1;                   

    uint32       ulPDCTL2;                   

    uint8        ucdummy258[32];             

    uint32       ulSMPCR;                    

    uint8        ucdummy259[388];            

    uint32       ulPWDSGCR;                  

    uint8        ucdummy260[12];             

    uint32       ulPWDSGSEFCR;               
}AdcConfReg;

typedef struct STag_DmaAddrRegs
{
    uint32       ulDSA;                      

    uint32       ulDDA;                      

    uint32       ulDTC;                      

    uint32       ulDTCT;                     

    uint32       ulDRSA;                     

    uint32       ulDRDA;                     

    uint32       ulDRTC;                     

    uint8        ucdummy261[4];              

    uint32       ulDCEN;                     

    uint32       ulDCST;                     

    uint32       ulDCSTS;                    

    uint32       ulDCSTC;                    

    uint32       ulDTFR;                     

    uint32       ulDTFRRQ;                   

    uint32       ulDTFRRQC;                  
}DmaReg;

typedef struct STag_DmaGlobalRegs
{

    uint32       ulDMACTL;                   

    uint8        ucdummy287[28];             

    uint32       ulDMACER;                   

    uint8        ucdummy288[12];             

    uint32       ulDM0CMV;                   
 
    uint32       ulDM1CMV;                   
 

    uint8        ucdummy289[4];              

    uint32       ulCMVC;                     
 

    uint8        ucdummy290[192];            

    uint32       ulDM00CM;                   

    uint32       ulDM01CM;                   

    uint32       ulDM02CM;                   

    uint32       ulDM03CM;                   

    uint32       ulDM04CM;                   

    uint32       ulDM05CM;                   

    uint32       ulDM06CM;                   

    uint32       ulDM07CM;                   

    uint32       ulDM10CM;                   

    uint32       ulDM11CM;                   

    uint32       ulDM12CM;                   

    uint32       ulDM13CM;                   

    uint32       ulDM14CM;                   

    uint32       ulDM15CM;                   

    uint32       ulDM16CM;                   

    uint32       ulDM17CM;                   

}DmaGlobalReg;
typedef struct STag_Adc_VirtualChReg
{
    uint32       ulVCR[50];                  

    uint8        ucdummy262[56];             

    uint16       usDR[50];                   

    uint8        ucdummy263[154];            

    uint32       ulDIR[50];                  
}AdcVirChReg;

typedef struct STag_Adc_ScanGroupReg
{
    uint32       ulSGSTCR;                   

    uint8        ucdummy264[4];              

    uint32       ulSGCR;                     

    uint32       ulSGVCSP;                   

    uint32       ulSGVCEP;                   

    uint32       ulSGMCYCR;                  

    uint32       ulSGSEFCR;                  

    uint32       ulSGTSEL;                   
}AdcSGReg;

typedef struct STag_Spi_MainReg
{
    uint8        ucCTL0;                     

    uint8        ucdummy280[3];              

    uint32       ulSTR0;                     

    uint16       usSTCR0;                    

    uint8        ucdummy265[6];              

    uint32       ulCTL1;                     

    uint16       usCTL2;                     
}SpiMainReg;

typedef struct STag_Spi_BRSReg
{
    uint16       usBRS;                      

    uint8        ucdummy[2];                 
}SpiBRSReg;

typedef struct STag_Spi_CSIHReg
{
    uint32       ulMCTL1;                    

    uint32       ulMCTL2;                    

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy281[2];              

    uint32       ulRX0W;                     

    uint16       usRX0H;                     

    uint8        ucdummy282[2];              

    uint32       ulMRWP0;                    

    uint8        ucdummy266[36];             

    uint16       usMCTL0;                    

    uint8        ucdummy283[2];              

    uint32       ulCFG[8];                   

    uint8        ucdummy267[4];              

    SpiBRSReg      stBRS[4];                 
}SpiCSIHReg;

typedef struct STag_Spi_ECCCSIHnTRC
{
    uint8         ucErdb;


    uint8         ucEcrd;

    uint8         ucHord;

    uint8         ucSynd;

}Spi_EccTrcReg;

typedef struct STag_Spi_CSIHECCReg
{
    uint16        usEccCTL;

    uint8         ucdummy[2];

    uint16        usEccTmc;

Spi_EccTrcReg stEccTrc;

    uint32        ulEccTed;

}SpiCSIHECCReg;

typedef struct STag_Spi_SELBREADTEST
{
    uint16        usSelfReadTest;

}SpiSelfReadTestReg;

typedef struct STag_Spi_CSIGReg
{
    uint8        ucBCTL0;                    

    uint8        ucdummy284[3];              

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy285[2];              

    uint16       usRX0;                      

    uint8        ucdummy286[2];              

    uint32       ulCFG0;                     
}SpiCSIGReg;

typedef struct STag_Fls_Reg
{
    uint32       DCNT;                       

    uint32       DPCMD;                      

    uint32       DPS;                        
}FlsReg;

typedef struct STag_FEINTReg
{                                                          
    const uint32 F;                          
    uint32       FMSK;                       
    uint32       FC;                         
} FEINTReg;

typedef uint16       CANnTMIECReg;
typedef uint32       CANnRMNDReg;

typedef struct STag_Fcu_Registers
{
    uint8         ucReserved1[16];

    uint8         ucFASTAT;

    uint8         ucReserved2[31];

    uint32        ulFSADDR;

    uint32        ulFEADDR;

    uint8         ucReserved3[28];

    uint16        usFCURAME;

    uint8         ucReserved4[42];

    uint32        ulFSTATR;

    uint16        usFENTRYR;

    uint8         ucReserved5[78];

    uint8         ucFBCSTAT;

    uint8         ucReserved6[3];

    uint32        ulFPSADDR;

    uint8         ucReserved7[8];

    uint16        usFPCKAR;

}FlsFACIReg;


typedef struct STag_Fcu_ECCReg
{
    uint16        usDFECCCTL;

    uint8         ucReserved8[2];

    uint8         ucDFERSTR;

    uint8         ucReserved9[3];

    uint8         ucDFERSTC;

    uint8         ucReserved10[11];

    uint8         ucDFERRINT;

    uint8         ucReserved11[7];

    uint16        usDFTSTCTL;
}FlsECCReg;




 

 

 



 
 






 

 
 


 

 
 
 
 

 
 

 
 

 
 

 
 
 
 
 

 
 

 
 

 
































































 

 

 
 

 
 
 


 

 

 

 
 

 

 

 
 

 
 

 
 

 
 

 
 
 

 

 
 
 
 


 


 

 

 

 



 


 



 

 
 


 

 

 


 

 




 

 




 


 



 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









 
 



 


 


 






 




 



 

 

 

 


 
 
 
 
 
 
 
 
 
 
 
 

 



 
 


 



 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".FLS_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
extern volatile FlsFACIReg* const FLS_GpFACIReg_BaseAddress;

 
extern volatile FlsECCReg* const FLS_GpECCReg_BaseAddress;

 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 






 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 































































 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 





























































































 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






































































 
 



 



 
 

 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 

 


 

 

 





 

 

 

 

 

 
 

 

 

 

 


 
 

 






 

 



 

 
 
 
 

 

 
 
 
 


 
 







 


 

 
 
 
 
 
 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_32BIT"



 
 
 
extern uint32 Fls_GulTempBuffer[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda




 



 



 

 


 
 

 



 
 
 

 
typedef enum ETag_Fls_FlashReadType
{
  FLS_MISALIGNED_READ = 0,
  FLS_ALIGNED_READ
} Fls_FlashReadType;

 
 
 
typedef enum ETag_Fls_CommandType
{
  FLS_COMMAND_NONE = 0,
  FLS_COMMAND_ERASE,
  FLS_COMMAND_WRITE,
  FLS_COMMAND_DMA_WRITE,
  FLS_COMMAND_READ,
  FLS_COMMAND_COMPARE,
  FLS_COMMAND_BLANKCHECK,
  FLS_COMMAND_READ_IMM
} Fls_CommandType;

 
 
 
typedef enum ETag_Fls_FcuStatusType
{
  FLS_FCU_OK = 0,
  FLS_FCU_BUSY ,
  FLS_FCU_SUSPENDED ,
  FLS_FCU_ERR_CONFIGURATION ,
  FLS_FCU_ERR_REJECTED  ,
  FLS_FCU_ERR_WRITE ,
  FLS_FCU_ERR_ERASE  ,
  FLS_FCU_ERR_BLANKCHECK ,
  FLS_FCU_ERR_ECC_SED ,
  FLS_FCU_ERR_ECC_DED  ,
  FLS_FCU_ERR_INTERNAL ,
  FLS_FCU_CANCELED
} Fls_FcuStatusType;

 
 
 
typedef struct Stag_Fls_FcuDataType
{
   
  uint16 usCpuFrequencyMHz;
   
  uint16 usDFPoolSize;
   
  uint32 ulFcuDfSize;
   
  uint32 ulFcuBaseAddrECC;
   
  uint32 ulFcuChksumEndAddr;
   
  uint32 ulFcuChksumVal;
   
  uint16 usFcuFlashMode;
} Fls_FcuDataType;

 
 
 
typedef struct STag_Fls_RegistersType
{
  uint8  volatile ucReserved1[16];
   
  uint8  volatile ucFASTAT;
  uint8  volatile ucReserved2[31];
   
  uint32 volatile ulFSADDR;
   
  uint32 volatile ulFEADDR;
  uint8  volatile ucReserved3[28];
   
  uint16 volatile usFCURAME;
  uint8  volatile ucReserved4[42];
   
  uint32 volatile ulFSTATR;
   
  uint16 volatile usFENTRYR;
  uint8  volatile ucReserved5[78];
   
  uint8  volatile ucFBCSTAT;
  uint8  volatile ucReserved6[3];
   
  uint32 volatile ulFPSADDR;
  uint8  volatile ucReserved7[8];
   
  uint16 volatile usFPCKAR;
}Fls_FACIRegType;

 


 
typedef struct STag_Fls_DmaUnitConfig
{
   
  uint16 usDmaDtfrRegValue;
   
  uint8 ucDmaRegIndex;
} Fls_DmaUnitConfig;

 
 
 
 
 
 
 
 
typedef struct STag_Fls_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  void (*pJobEndNotificationPointer)(void);
   
  void (*pJobErrorNotificationPointer)(void);
   
  void (*pEccSEDNotificationPointer)(uint32);
   
  void (*pEccDEDNotificationPointer)(uint32);
   
  uint32 ulFlsSlowModeMaxReadBytes;
   
  uint32 ulFlsFastModeMaxReadBytes;
   
  MemIf_ModeType ddDefaultMode;
   
  const Fls_DmaUnitConfig * pDmaUnitConfig;
} Fls_ConfigType;

 
typedef struct STag_Fls_GstVarProperties
{
   
  const uint8 * pBufferAddress;
   
  const uint8 * pTempBufferAddress;
   
  uint32 ulSrcDestAddress;
   
  uint32 ulReadAddress;
   
  uint32 ulJobStartAddress;
   
  uint32 ulJobEndAddress;
   
  uint32 ulCurrentLength;
   
  uint32 ulRequestedLength;
   
  uint8 ucOffset;
   
  Fls_FlashReadType enReadType;
   
  Fls_CommandType enCommand;
   
  Fls_FcuStatusType enDFStatus;

} Fls_GstVarProperties;




 




 


 
 
 
 
 

 
 

 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 



 

 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 

 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 



 

 
 
 


 
typedef uint32 Fls_AddressType;

 
 
 
typedef uint32 Fls_LengthType;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  void Fls_Init
(const Fls_ConfigType * ConfigPtr);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  Std_ReturnType Fls_Erase
        (Fls_AddressType TargetAddress, Fls_LengthType Length);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  Std_ReturnType Fls_Write
(Fls_AddressType TargetAddress,
const uint8 * SourceAddressPtr,
Fls_LengthType Length);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  Std_ReturnType Fls_Read
(Fls_AddressType SourceAddress, uint8 *
 TargetAddressPtr, Fls_LengthType Length);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  Std_ReturnType Fls_ReadImmediate
(Fls_AddressType SourceAddress, uint8 *
TargetAddressPtr, Fls_LengthType Length);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  Std_ReturnType Fls_Compare
(Fls_AddressType SourceAddress, const uint8 *
 TargetAddressPtr, Fls_LengthType Length);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  void Fls_Cancel(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  void Fls_SetMode(MemIf_ModeType LenMode);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  void Fls_MainFunction(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  MemIf_StatusType Fls_GetStatus(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  MemIf_JobResultType Fls_GetJobResult(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  Std_ReturnType Fls_Suspend(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".FLS_PUBLIC_CODE_ROM"




 
 



 
 
extern  void Fls_Resume(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".FLS_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
extern const Fls_ConfigType Fls_GstConfiguration[];
 
extern const Fls_DmaUnitConfig Fls_GstDmaUnitConfig[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 



 


 



 



 



 



 






 






 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 




 





 










 



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

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
































 
 



 




 

 
 
 
 
 
 
 
 
 
 

 


 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















 
 




 
 












 











 

 
 

 
 
 
 
 
typedef enum
{
     
    WDGIF_OFF_MODE = 0u,
     
    WDGIF_SLOW_MODE,
     
    WDGIF_FAST_MODE
} WdgIf_ModeType;

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 

















 
 


 


 



 







 




 



 

 


 




 






 


 

 
 
 
 
 

 

 

 

 


 

 
 

 

 

 

 

 

 

 

 


 

 




 
 

 
 

 


 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






 
 



 


 


 







 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 





 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






 


 


 



 
 

 




 








 

 














 



 
 

 


 



 

typedef uint8 Dem_EventStatusType;
typedef uint16 Dem_EventIdType;





 


extern void Dem_ReportErrorStatus
                    (Dem_EventIdType EventId, Dem_EventStatusType EventStatus);




 
 



 

 

 




 



 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".WDG59_B_APPL_CODE_ROM"




 
 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 

 

 
 
 
 



















 
 


















 

 



















 


 
 
 



















 
 
 



















 
 

















 
 

















 
 



 




 




 
 
 

 



 
 
 
 
 

typedef struct STag_Wdg_59_DriverB_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
   
  uint16 usInitTimerCountValue;
   
  uint16 usSlowTimeValue;
   
  uint16 usFastTimeValue;
   
  uint8 ucWdtamdSlowValue;
   
  uint8 ucWdtamdFastValue;
   
  uint8 ucWdtamdDefaultValue;
   
  WdgIf_ModeType ddWdtamdDefaultMode;
}Wdg_59_DriverB_ConfigType;




 
typedef enum ETag_Wdg_59_DriverB_HWConsistencyModeType
{
  WDG_59_DRIVERB_STATIC = 0,
  WDG_59_DRIVERB_DYNAMIC
}Wdg_59_DriverB_HWConsistencyModeType;





 
 
 
 




 
 

 
 


 



 
 



 




 




 







 




 



 
 




 

 
 

 

 





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".WDG59_B_PUBLIC_CODE_ROM"




 
 



 
 
 
 
extern  void Wdg_59_DriverB_Init
  (const Wdg_59_DriverB_ConfigType *
                                                                    ConfigPtr);
 
 
extern  Std_ReturnType Wdg_59_DriverB_SetMode
  (WdgIf_ModeType Mode);
 
 
 
extern  void
                          Wdg_59_DriverB_SetTriggerCondition(uint16 timeout);
 
 
extern  Std_ReturnType
Wdg_59_DriverB_CheckHWConsistency
          (Wdg_59_DriverB_HWConsistencyModeType HWConsistencyMode);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_B_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
extern const Wdg_59_DriverB_ConfigType
                                               Wdg_59_DriverB_GstConfiguration;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








































 
 

 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 















 


 


 


 






 




 
 



 

 

 




 






 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_B_CFG_DATA_UNSPECIFIED"




 
 



 

extern volatile WDTAReg* const WDG_59_DriverB_GpWDTAReg_BaseAddr;

extern  volatile unsigned long* const WDG_59_DriverB_GpICR_BaseAddr;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 




 


 
 
 
 
 
 
 

 
 

 



 

 

 
 
 
 
 
 
 
 
 

 



 
 

 

 




 

 
 

 

 

 

 



 



 




 
static uint16 DataReadByAddr(uint32 addr);
static uint8 DataEraseProcess(uint32 TargetAddress, uint32 Length);
static uint8 DataReadProcess(uint32 SourceAddress, uint8 * TargetAddressPtr,uint32 Length);
static uint8 DataReadBlockProcess(uint8* buf);
static uint8 DataWriteProcess(uint32 TargetAddress, const uint8 * SourceAddressPtr,uint32 Length);
static uint8 EEIf_CopyPreviousData(uint8* blockBuffer, uint32 newStartAddr, uint32 blockIndex);
static uint32 EEIf_DetermineLatestSector(void);
static uint32 EEIf_FindLatestAddress(uint8 findType);
uint32 ValidSectorAdd(uint32 Sector0,uint32 Sector1);




static uint16 DataReadByAddr(uint32 addr)
{
    uint32 retValue = 0xffff;
    uint8 ReadAppBuffer[2] = {0};
    
    Fls_Read(addr - (0xFF200000UL), ReadAppBuffer, 0x02);
    
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
      Fls_MainFunction();
    }

    retValue = (ReadAppBuffer[0] << 8) + (ReadAppBuffer[1]);

    return retValue;
} 

static uint8  DataReadProcess(uint32 SourceAddress,  uint8 * TargetAddressPtr,uint32 Length)
{
    uint8  tem = 0U;
    MemIf_StatusType fls_status;
    tem = Fls_Read(SourceAddress, TargetAddressPtr, Length);
    do
    {
        Fls_MainFunction();
        fls_status = Fls_GetStatus();
    } while (fls_status != MEMIF_IDLE);

    return tem;
}














 
static uint8 DataCompare(uint8 * des, uint8 * src, uint8 size)
{
    uint8 i;
    uint8 retValue = 0U;

    for(i = 0;i < size; i++)
    {
        if(des[i] != src[i])
        {
            retValue = 1U;
            break;
        }
    }
    return retValue;
}





















 
static uint8 EEIf_CheckNeedWrite(uint32 sAddr, uint32 size, uint8* buf,
                                  uint32 newStartAddr, uint8* blockBuffer,
                                  uint32 blockCount, uint8* needWrite)
{
    uint8  tem     = 1U;
    uint32 i;
    uint32 dataBlockCount = sAddr / ((64u) - (2u));
    uint32 dataInBlcokIndex = (sAddr % ((64u) - (2u))) + ((2u));
    uint32 logicStartOff     = sAddr % ((64u) - (2u));

    *needWrite = 0u;

    
    if(sAddr + size >= (dataBlockCount + 1u) * ((64u) - (2u)))
    {
        uint32 currentBlockCnt = dataBlockCount;
        do{
            uint32 loopStartIdx;
            uint32 loopEndIdx;
            uint32 bufStartIdx;

            
            tem = EEIf_CopyPreviousData(blockBuffer, newStartAddr, currentBlockCnt);
            if(tem != 0U)
            {
                return 1U;
            }

            




 
            if(currentBlockCnt == dataBlockCount)
            {
                
                loopStartIdx = dataInBlcokIndex;
                loopEndIdx   = (64u);
                bufStartIdx  = 0u;
            }
            else if(sAddr + size >= (currentBlockCnt + 1u) * ((64u) - (2u)))
            {
                
                loopStartIdx = ((2u));
                loopEndIdx   = (64u);
                bufStartIdx  = (currentBlockCnt - dataBlockCount) * ((64u) - (2u)) - logicStartOff;
            }
            else
            {
                
                loopStartIdx = ((2u));
                loopEndIdx   = size + dataInBlcokIndex - (currentBlockCnt - dataBlockCount) * ((64u) - (2u));
                bufStartIdx  = (currentBlockCnt - dataBlockCount) * ((64u) - (2u)) - logicStartOff;
            }

            
            for(i = loopStartIdx; i < loopEndIdx; i++)
            {
                if(blockBuffer[i] != buf[bufStartIdx + (i - loopStartIdx)])
                {
                    *needWrite = 1u;
                    break;
                }
            }

            
            if(*needWrite != 0u)
            {
                break;
            }

            
            if(sAddr + size < (currentBlockCnt + 1u) * ((64u) - (2u)))
            {
                break;
            }

            
            if(currentBlockCnt + 1u >= blockCount)
            {
                break;
            }

            currentBlockCnt++;

        }while(1u);
    }
    
    else
    {
        tem = EEIf_CopyPreviousData(blockBuffer, newStartAddr, dataBlockCount);
        if(tem != 0U)
        {
            return 1U;
        }
        for(i = dataInBlcokIndex; i < dataInBlcokIndex + size; i++)
        {
            if(blockBuffer[i] != buf[i - dataInBlcokIndex])
            {
                *needWrite = 1u;
                break;
            }
        }
    }

    return 0U;
}
















 
static uint8  DataEraseProcess(uint32 TargetAddress, uint32 Length)
{
    uint8  tem = 0U;
    MemIf_StatusType fls_status;
    tem = Fls_Erase(TargetAddress, Length);
    do
    {
        Wdg_59_DriverB_TriggerFunc((boolean)0x01);
        Fls_MainFunction();
        fls_status = Fls_GetStatus();
    } while (fls_status != MEMIF_IDLE);

    return tem;
}














 
static uint8 DataWriteProcess(uint32 TargetAddress, const uint8 * SourceAddressPtr,uint32 Length)
{
    uint8 tem = 0U;
    MemIf_StatusType fls_status;
    tem = Fls_Write(TargetAddress , SourceAddressPtr, Length);
    do
    {
        Wdg_59_DriverB_TriggerFunc((boolean)0x01);
        Fls_MainFunction();
        fls_status = Fls_GetStatus();
    } while (fls_status != MEMIF_IDLE);

    return tem ;
}














 
void EEIf_Init(void)
{
  
    Fls_Init((&Fls_GstConfiguration[0]));
	
  
}














 
uint8 EEIf_DeInit(void)
{
    
    uint8 tem = 0U;
    return tem;
}
















 
uint8 EEIf_Write(uint32 sAddr, uint32 size, uint8* buf)
{
    uint32 i, j;
    uint8 tem = 1U;
    uint32 startData = 0;
    uint32 newStartAddr = 0;
    uint8 blockBuffer[(64u)]; 
    uint32 blockCount = (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))) / (64u);
    uint8  iSWrite = 0u;
    
    
    newStartAddr = EEIf_FindLatestAddress((1u));
    
    
    if(newStartAddr == 0xFFFFFFFF)
    {
        
        return 1U;
    }

    
    if(buf == ((void *)0) || sAddr >= (2048u) || size > (2048u) - sAddr)
    {
        return 1U;
    }

    
    tem = EEIf_CheckNeedWrite(sAddr, size, buf, newStartAddr, blockBuffer, blockCount, &iSWrite);
    if(tem != 0U)
    {
        return 1U;
    }
    
    if(iSWrite == 1u)
    {
        
        for(i = 0; i < blockCount; i++)
        {
            
            tem = EEIf_CopyPreviousData(blockBuffer, newStartAddr, i);
            if(tem != 0U)
            {
                return 1U;
            }

            
            uint32 blockLogicStart = i * ((64u) - (2u));
            uint32 blockLogicEnd = blockLogicStart + ((64u) - (2u)) - 1;
            
            
            int dataOffset = (int)sAddr - (int)blockLogicStart;
            
            
            if(dataOffset >= 0 && dataOffset < ((64u) - (2u)))
            {
                
                uint32 bufferOffset = ((2u)) + dataOffset;
                
                
                uint32 copySize = size;
                if(copySize > ((64u) - (2u)) - dataOffset)
                {
                    copySize = ((64u) - (2u)) - dataOffset;
                }
                
                
                CommF_DataCopy(&blockBuffer[bufferOffset], buf, copySize);
                
                
                startData = DataReadByAddr(newStartAddr + i * (64u));
                if(startData != 0xFFFF)
                {
                    
                    tem = DataEraseProcess(((newStartAddr - (0xFF200000UL)) / (0x2000u) * (0x2000u)),  (0x2000u));
                    if(tem != 0U)
                    {
                        return tem;
                    }
                }

                
                tem = DataWriteProcess(newStartAddr - (0xFF200000UL) + i * (64u), blockBuffer, (64u));
                if(tem != 0U)
                {
                    return tem;
                }
                
                if(copySize < size)
                {
                    uint32 remainingSize = size - copySize;
                    uint32 nextBlockIndex = i + 1;
                    
                    
                    while(remainingSize > 0 && nextBlockIndex < blockCount)
                    {

                        
                        tem = EEIf_CopyPreviousData(blockBuffer, newStartAddr, nextBlockIndex);
                        if(tem != 0U)
                        {
                            return 1U;
                        }

                        
                        uint32 nextCopySize = remainingSize;
                        if(nextCopySize > ((64u) - (2u)))
                        {
                            nextCopySize = ((64u) - (2u));
                        }
                        
                        
                        CommF_DataCopy(&blockBuffer[((2u))], &buf[copySize], nextCopySize);
                        
                        
                        startData = DataReadByAddr(newStartAddr + nextBlockIndex * (64u));
                        if(startData != 0xFFFF)
                        {
                            
                            tem = DataEraseProcess(((newStartAddr - (0xFF200000UL)) / (0x2000u) * (0x2000u)),  (0x2000u));
                            if(tem != 0U)
                            {
                                return tem;
                            }
                        }
                        
                        
                        tem = DataWriteProcess(newStartAddr - (0xFF200000UL) + nextBlockIndex * (64u), blockBuffer, (64u));
                        if(tem != 0U)
                        {
                            return tem;
                        }
                        
                        
                        remainingSize -= nextCopySize;
                        copySize += nextCopySize;
                        nextBlockIndex++;
                        i++;
                    }
                }
            }
            else
            {
                
                startData = DataReadByAddr(newStartAddr + i * (64u));
                if(startData != 0xFFFF)
                {
                    
                    tem = DataEraseProcess(((newStartAddr - (0xFF200000UL)) / (0x2000u) * (0x2000u)),  (0x2000u));
                    if(tem != 0U)
                    {
                        return tem;
                    }
                }

                
                tem = DataWriteProcess(newStartAddr - (0xFF200000UL) + i * (64u), blockBuffer, (64u));
                if(tem != 0U)
                {
                    return tem;
                }
            }
        }
        
    }
    else
    {
        tem = 0U;
    }
    return tem;
}














 
static uint8 DataReadBlockProcess(uint8* buf)
{
    uint32 i, j;
    uint8 tem = 1U;
    uint32 startAddr = ((0xFF200000UL) + ((0x2000u) * 2)); 
    uint32 blockCount = (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))) / (64u);
    uint8 blockBuffer[(64u)]; 

    
    uint32 startData = DataReadByAddr(startAddr);
    if(startData == 0xFFFF)
    {
        return tem;
    }

    
    for(i = 0; i < blockCount; i++)
    {
        
        DataReadProcess(startAddr - (0xFF200000UL) + i * (64u), blockBuffer, (64u));

        
        uint16 checksum = (0xA532u) + i;
        if((blockBuffer[0] != ((checksum >> 8) & 0xff)) || (blockBuffer[1] != (checksum & 0xff)))
        {
            return 1U;
        }

        
        
        for(j = 0; j < ((64u) - (2u)); j++)
        {
            buf[i * ((64u) - (2u)) + j] = blockBuffer[((2u)) + j];
        }
    }

    tem = 0U;
    return tem;
}
















  
uint8 EEIf_Read(uint32 sAddr, uint32 size, uint8* buf)
{
    uint32 i, j;
    uint8 tem = 1U;
    uint32 startAddr = (0xFF200000UL);
    uint32 blockCount = (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))) / (64u);
    uint8 blockBuffer[(64u)]; 

    
    uint32 newStartAddr = EEIf_FindLatestAddress((0u));
    
    
    if(newStartAddr == 0xFFFFFFFF)
    {
        
        return 1U;
    }
    
    
    uint32 targetBlockIndex = sAddr / ((64u) - (2u));
    
    
    if(targetBlockIndex < blockCount)
    {
        
        DataReadProcess(newStartAddr - (0xFF200000UL) + targetBlockIndex * (64u), blockBuffer, (64u));
        
        
        uint16 checksum = (0xA532u) + targetBlockIndex;
        if((blockBuffer[0] == ((checksum >> 8) & 0xff)) && (blockBuffer[1] == (checksum & 0xff)))
        {
            
            uint32 offset = sAddr % ((64u) - (2u));
            uint32 bufferOffset = ((2u)) + offset;
            
            
            uint32 copySize = size;
            if(copySize > ((64u) - (2u)) - offset)
            {
                copySize = ((64u) - (2u)) - offset;
            }
            
            
            CommF_DataCopy(buf, &blockBuffer[bufferOffset], copySize);
            
            
            if(copySize < size)
            {
                uint32 remainingSize = size - copySize;
                uint32 nextBlockIndex = targetBlockIndex + 1;
                
                
                while(remainingSize > 0 && nextBlockIndex < blockCount)
                {
                    
                    DataReadProcess(newStartAddr - (0xFF200000UL) + nextBlockIndex * (64u), blockBuffer, (64u));
                    
                    
                    checksum = (0xA532u) + nextBlockIndex;
                    if((blockBuffer[0] == ((checksum >> 8) & 0xff)) && (blockBuffer[1] == (checksum & 0xff)))
                    {
                        
                        uint32 nextCopySize = remainingSize;
                        if(nextCopySize > ((64u) - (2u)))
                        {
                            nextCopySize = ((64u) - (2u));
                        }
                        
                        
                        CommF_DataCopy(&buf[copySize], &blockBuffer[((2u))], nextCopySize);
                        
                        
                        remainingSize -= nextCopySize;
                        copySize += nextCopySize;
                        nextBlockIndex++;
                    }
                    else
                    {
                        break;
                    }
                }
                
                
                if(remainingSize == 0)
                {
                    tem = 0U;
                }
            }
            else
            {
                
                tem = 0U;
            }
        }
    }

    return tem;
}















 
uint32 ValidSectorAdd(uint32 Sector0_Address,uint32 Sector1_Address)
{
    uint32 Addr = 0;
    uint16 sector0Data = DataReadByAddr(Sector0_Address);
    uint16 sector1Data = DataReadByAddr(Sector1_Address);


    if((sector0Data != 0xFFFF) && (sector1Data == 0xFFFF))
    {
        Addr = Sector0_Address;
    }
    else if((sector0Data == 0xFFFF) && (sector1Data != 0xFFFF))
    {
        Addr = Sector1_Address;
    }
    else
    {
        Addr = (0xFFFFFFFFu);
    }
    return Addr;
}
















 
static uint8 EEIf_CopyPreviousData(uint8* blockBuffer, uint32 newStartAddr, uint32 blockIndex)
{
    uint8 tem = 0U;
    uint32 j = 0;
    
    
    if(blockBuffer == ((void *)0))
    {
        return 1U;
    }
    
    
    uint32 latestReadAddr = newStartAddr - (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u)));
    
    
    uint32 activeSector = EEIf_DetermineLatestSector();
    
    
    if(activeSector == (0xFF200000UL))
    {
        
        if(latestReadAddr < (0xFF200000UL))
        {
            latestReadAddr = (0xFF200000UL);
        }
    }
    else if(activeSector == (0xFF202000UL))
    {
        
        if(latestReadAddr < (0xFF202000UL))
        {
            latestReadAddr = (0xFF202000UL);
        }
    }
    
    
    if(latestReadAddr >= (0xFF200000UL))
    {
        
        uint8 prevBlockBuffer[(64u)];
        uint8 readStatus = DataReadProcess(latestReadAddr - (0xFF200000UL) + blockIndex * (64u), prevBlockBuffer, (64u));
        if(readStatus == 0U)
        {
            
            
            uint16 expectedChecksum = (0xA532u) + blockIndex;
            
            uint16 actualChecksum = (prevBlockBuffer[0] << 8) | prevBlockBuffer[1];
            
            
            if(actualChecksum == expectedChecksum)
            {
                
                CommF_DataCopy(blockBuffer, prevBlockBuffer, (64u));
            }
            else
            {
                
                uint16 checksum = (0xA532u) + blockIndex;
                blockBuffer[0] = (checksum >> 8) & 0xff;
                blockBuffer[1] = checksum & 0xff;

                
                for(j = 2; j < (64u); j++)
                {
                    blockBuffer[j] = 0;
                }
            }
        }
        else
        {
            tem = 1U;
        }
    }
    else
    {
        

        
        uint16 checksum = (0xA532u) + blockIndex;
        blockBuffer[0] = (checksum >> 8) & 0xff;
        blockBuffer[1] = checksum & 0xff;

        
        for(j = 2; j < (64u); j++)
        {
            blockBuffer[j] = 0;
        }
    }
    
    return tem;
}
















 
static uint32 EEIf_DetermineLatestSector(void)
{
    uint16 sector0StartData = 0;
    uint16 sector0EndData = 0;
    uint16 sector1StartData = 0;
    uint16 sector1EndData = 0;
    uint8 sector0Empty = 0;
    uint8 sector1Empty = 0;
    
    
    sector0StartData = DataReadByAddr((0xFF200000UL));
    sector0EndData = DataReadByAddr((0xFF200000UL) + (0x2000u) - 2 * (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))));
    
    
    sector1StartData = DataReadByAddr((0xFF202000UL));
    sector1EndData = DataReadByAddr((0xFF202000UL) + (0x2000u) - 2 * (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))));
    
    
    if((sector0StartData == 0xFFFF) && (sector0EndData == 0xFFFF))
    {
        sector0Empty = 1;
    }
    
    
    if((sector1StartData == 0xFFFF) && (sector1EndData == 0xFFFF))
    {
        sector1Empty = 1;
    }
    
    
    if(sector0Empty && sector1Empty)
    {
        
        return (0xFF200000UL);
    }
    else if(sector0Empty && !sector1Empty)
    {
        
        return (0xFF202000UL);
    }
    else if(!sector0Empty && sector1Empty)
    {
        
        return (0xFF200000UL);
    }
    else
    {
        
        DataEraseProcess((0xFF200000UL), (0x2000u));
        DataEraseProcess((0xFF202000UL), (0x2000u));
        return (0xFF200000UL);
    }
}














 
static uint32 EEIf_FindLatestAddress(uint8 findType)
{
    uint32 latestSector = 0;
    uint32 latestAddress = 0;
    uint32 sectorStart = 0;
    uint32 sectorEnd = 0;
    uint16 data = 0;
    uint32 currentAddr = 0;
    uint32 nextSector = 0;
    
    
    latestSector = EEIf_DetermineLatestSector();
    
    
    if(latestSector == 0xFFFFFFFF)
    {
        
        return 0xFFFFFFFF;
    }
    
    
    if(latestSector == (0xFF200000UL))
    {
        sectorStart = (0xFF200000UL);
        sectorEnd = (0xFF200000UL) + (0x2000u);
        nextSector = (0xFF202000UL);
    }
    else if(latestSector == (0xFF202000UL))
    {
        sectorStart = (0xFF202000UL);
        sectorEnd = (0xFF202000UL) + (0x2000u);
        nextSector = (0xFF200000UL);
    }
    else
    {
        
        return 0xFFFFFFFF;
    }
    
    
    latestAddress = 0;
    currentAddr = sectorStart;
    while(currentAddr < sectorEnd)
    {
        data = DataReadByAddr(currentAddr);
        if(data == (0xA532u))
        {
            latestAddress = currentAddr;
        }
        
        currentAddr += (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u)));
    }
    
    
    if(latestAddress == 0)
    {
        
        if(findType == (0u))
        {
            uint8 buf[1] = {0};
            EEIf_Write(0, 1, buf);
        }
        return sectorStart;
    }
    
    
    if(findType == (0u))
    {
        
        return latestAddress;
    }
    else if(findType == (1u))
    {
        
        uint32 baseAddress = latestAddress + (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u)));
        
        
        if((sectorEnd - baseAddress) >= (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))))
        {
            
            return baseAddress;
        }
        else
        {
            
            
            uint32 blockCount = (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u))) / (64u);
            uint8 blockBuffer[(64u)];
            uint32 i;
            
            
            for(i = 0; i < blockCount; i++)
            {
                
                DataReadProcess(latestAddress - (0xFF200000UL) + i * (64u), blockBuffer, (64u));
                
                
                DataWriteProcess(nextSector - (0xFF200000UL) + i * (64u), blockBuffer, (64u));
            }
            
            
            DataEraseProcess(sectorStart - (0xFF200000UL), (0x2000u));
            
            
            return nextSector + (((2048u) % ((64u) - (2u)) == 0) ? (((2048u) / ((64u) - (2u))) * (64u)) : (((2048u) / ((64u) - (2u)) + 1) * (64u)));
        }
    }
    else
    {
        
        return 0xFFFFFFFF;
    }
}
