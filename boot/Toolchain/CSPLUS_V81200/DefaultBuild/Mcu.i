 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 
























































































































































































































































































































































































































































































































































































































































 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 




































































































































































 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 



















































 
 



 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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







 




 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






















 
 



 


 



 





 




 



 
 

 




 








 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 

 

 

 




 

 

 





 
 

 

 

 

 

 









 






 




 



 


 




 


 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
typedef uint8 Mcu_ClockType;

 
 
 
 
typedef uint32 Mcu_RawResetType;

 
 
 
 
typedef uint8 Mcu_ModeType;

 
 
typedef uint8 Mcu_SeqType;

 
 
 
 
typedef uint8 Mcu_RamSectionType;

 
 
 
 
 
 
 

 
typedef struct STag_Mcu_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  uint32 ulMainClockStabCount;
   
  uint32 ulLVIindicationReg;
   
  const void * pClockDomainOffset;
  uint8 ucClockSettingOffset;
  uint8 ucModeSettingOffset;


   

} Mcu_ConfigType;

 
 
 
 
typedef enum ETag_Mcu_PllStatusType
{
  MCU_PLL_LOCKED = 0,
  MCU_PLL_UNLOCKED,
  MCU_PLL_STATUS_UNDEFINED
} Mcu_PllStatusType;

 
 
 
 
 
typedef enum ETag_Mcu_ResetType
{
  MCU_SW_RESET = 1,
  MCU_WATCHDOG0_RESET,
  MCU_WATCHDOG1_RESET,
  MCU_CLM0_RESET,
  MCU_CLM1_RESET,
   
  MCU_CLM2_RESET,
  MCU_LVI_RESET,
  MCU_CVM_RESET,
  MCU_TERMINAL_RESET,
  MCU_POWER_ON_RESET,
  MCU_ISO_RESET,
  MCU_RESF11_RESET,
  MCU_RESF12_RESET,
  MCU_RESF13_RESET,
  MCU_CLM3_RESET,
  MCU_RESET_UNDEFINED,
  MCU_MULTIPLE_RESETS_OCCURED,
  MCU_RESET_UNKNOWN
} Mcu_ResetType;


 


 
 
typedef enum ETag_Mcu_SeqOperationType
{
  MCU_DIGITAL_INPUT = 1,
  MCU_ANALOG_INPUT,
  MCU_MIXED_INPUT
} Mcu_SeqOperationType;


 
typedef enum ETag_Mcu_RamWriteSizeType
{
  MCU_8BIT_SIZE = 1,
  MCU_16BIT_SIZE,
  MCU_32BIT_SIZE
} Mcu_RamWriteSizeType;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


































 
 



 


 



 





 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


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
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
extern volatile WPROTReg* const Mcu_WriteProtReg_BaseAddress; 

 
extern volatile LVIReg* const LviReg_BaseAddress; 

 
 

 
extern volatile unsigned long * const Mcu_IoHoldRegister_BaseAddress;

 
extern volatile RESFReg * const Mcu_ResfRegister_BaseAddress;

 
extern volatile ClkMntrReg* const Clma0Reg_BaseAddress;

 
extern volatile ClkMntrReg* const Clma1Reg_BaseAddress;

 
extern volatile ClkMntrReg* const Clma2Reg_BaseAddress;

 
 

 
extern volatile STBC0Reg* const Mcu_Stbc0Register_BaseAddress;

 
extern volatile WUFReg* const WufReg_BaseAddress;
extern volatile WUFReg* const WufIsoReg_BaseAddress;

 
extern volatile FEINTReg* const FEIntMsk_BaseAddress;
 
 
 
 

 
 
extern volatile ClkCntlReg* const Mcu_ClkCtrlReg_BaseAddress;

 
extern volatile unsigned short* const Mcu_ICCWEND_IMRAddress; 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 


 




 


 

 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




 
 
 

 

 





 
 
 





























 

 

 

 

 

 

 

 



 




 



 










































 

 
 





 



 
 



 

 
 
 
 
typedef struct STag_Mcu_ClockSetting
{
   
  const void * pCkscSel;
  uint8 ucCkscSelOffset;
   
  uint32 ulPLLControlValue;
   
  uint32 ulMainOscStabTime;
   
  uint16 usFoutDivReg;
   
  uint8 ucSelectedSrcClock;
   
  uint8 ucMosccRegValue;
   
  uint8 ucSelectedSTPMK;
   
  uint8 ucNoOfIsoCkscReg;
   
  uint8 ucNoOfAwoCkscReg;
   
  uint8 ucNoOfPllIsoCkscReg;
   
  uint8 ucNoOfPllAwoCkscReg;
   
  uint8 ucCkscPllIndexOffset;
   
  uint8 ucPllSelectedSrcClock;
   
  boolean blPllActCheck;
   
  uint16 usCLMA0CMPL;
   
  uint16 usCLMA0CMPH;
   
  uint16 usCLMA1CMPL;
   
  uint16 usCLMA1CMPH;
   
  uint16 usCLMA2CMPL;
   
  uint16 usCLMA2CMPH;
} Mcu_ClockSetting;

 
 
typedef struct STag_Mcu_CkscSetting
{
   
  uint8 ucCkscSourceSelRegNum;
   
  uint8 ucCkscDividerSelRegNum;
   
  uint16 usCkscStpmskSelRegNum;
   
  uint8 ucCkscSourceSelRegValue;
   
  uint8 ucCkscDividerSelRegValue;
   
  uint8 ucCkscControlval;

} Mcu_CkscSetting;



 

 
typedef struct STag_Mcu_PortGroupAddress
{
   
  volatile uint32 * pPortGroupAddress;
} Mcu_PortGroupAddress;



 

 
 
 
typedef struct STag_Mcu_ModeSetting
{
   
  uint32 ulPowerDownWakeupType0;
   
  uint32 ulPowerDownWakeupTypeISO0;
   
   
  uint8 ucModeType;
   
  boolean blModeTransitionReq;
   
  boolean blMcuMainOscOperation;
} Mcu_ModeSetting;

 
 
 
typedef struct STag_Mcu_TAUJUnitUserRegs
{
  uint8  volatile ucTAUJnTS;
 
  uint8  volatile aaReserved1[3];
 
  uint8  volatile ucTAUJnTT;
} Mcu_TAUJUnitUserRegs;

 
 
typedef struct STag_Mcu_TAUJUnitOsRegs
{
  uint16 volatile usTAUJnTPS;
  uint16 volatile usReserved1;
  uint8  volatile ucTAUJnBRS;
} Mcu_TAUJUnitOsRegs;

 
 
typedef struct STag_Mcu_TAUJUserRegs
{
  uint32 volatile ulTAUJnCDRm;
 
  uint32 volatile aaReserved1[3];
 
} Mcu_TAUJChannelUserRegs;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
 
extern const Mcu_CkscSetting Mcu_GstCkscSetting[];
 
 
 
extern const Mcu_ClockSetting Mcu_GstClockSetting[];
 
 
 
extern const Mcu_ModeSetting Mcu_GstModeSetting[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_8"




 
 



 
 
 
extern const uint8 Mcu_GaaClockOffset[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section sbss=".MCU_CFG_BURAM_NO_INIT_32"




 
 



 
 
 
 
extern uint32 Mcu_GaaRamPortGroup[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section sbss=default
     #pragma ghs endsda





 
 



 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 
































































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 

















































 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 





 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






 


 


 



 
 

 




 








 

 














 



 
 

 


 



 

typedef uint8 Dem_EventStatusType;
typedef uint16 Dem_EventIdType;





 


extern void Dem_ReportErrorStatus
                    (Dem_EventIdType EventId, Dem_EventStatusType EventStatus);




 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 


 
 

 
 
 



















 




















 


















 
 


















 


 
 
 



















 
 



















 
 


















 
 


















 
 


















 
 

 
 


 




 



 



 
 


 



 
 

 
 
 
 
 
 
 
 
 
 
 
 



 



 



 

 
typedef enum ETag_Mcu_HWConsistencyCheckType
{
  MCU_HW_CONSIST_CHECK_STATIC,
  MCU_HW_CONSIST_CHECK_DYNAMIC
} Mcu_HWConsistencyCheckType;

typedef struct STag_Mcu_LPSRegMirror
{
  unsigned long ulSCTLR;                                 
  unsigned long ulDPSELR0;                               
  unsigned long ulDPSELRM;                               
  unsigned long ulDPSELRH;                               
  unsigned long ulDPDSR0;                                
  unsigned long ulDPDSRM;                                
  unsigned long ulDPDSRH;                                
  unsigned short usCNTVAL;                               
}Mcu_LPSRegMirror;

typedef struct STag_Mcu_ClkMntrReg0Mirror
  {
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg0Mirror;

typedef struct STag_Mcu_ClkMntrReg1Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg1Mirror;

typedef struct STag_Mcu_ClkMntrReg2Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg2Mirror;

typedef struct STag_Mcu_ClkMntrReg3Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg3Mirror;

typedef struct STag_Mcu_TAUJOsRegMirror
{
  unsigned short usTPS;                                  
  unsigned char ucBRS;                                   
}Mcu_TAUJOsRegMirror;

typedef struct STag_TAUJChRegMirror
{
  unsigned long ulCDR;                                   
  unsigned short usCMOR;                                 
}Mcu_TAUJChRegMirror;

typedef struct Stag_Mcu_ClkCntlRegMirror
{
  unsigned long ulROSCS;                                 
  unsigned long ulROSCSTPM;                              
  unsigned long ulMOSCE;                                 
  unsigned long ulMOSCC;                                 
  unsigned long ulMOSCST;                                
  unsigned long ulMOSCSTPM;                              
  unsigned long ulSOSCE;                                 
  unsigned long ulSOSCST;                                
  unsigned long ulCKSC_AWDTAD_CTL;                       
  unsigned long ulCKSC_AWDTAD_STPM;                      
  unsigned long ulCKSC_ATAUJS_CTL;                       
  unsigned long ulCKSC_ATAUJD_CTL;                       
  unsigned long ulCKSC_ATAUJD_STPM;                      
  unsigned long ulCKSC_ARTCAS_CTL;                       
  unsigned long ulCKSC_ARTCAD_CTL;                       
  unsigned long ulCKSC_ARTCAD_STPM;                      
  unsigned long ulCKSC_AADCAS_CTL;                       
  unsigned long ulCKSC_AADCAD_CTL;                       
  unsigned long ulCKSC_AADCAD_STPM;                      
  unsigned long ulCKSC_AFOUTS_CTL;                       
  unsigned long ulCKSC_AFOUTS_STPM;                      
  unsigned long ulFOUTDIV;                               
  unsigned long ulPLLE;                                  
  unsigned long ulPLLC;                                  
  unsigned long ulPLL0C;                                 
  unsigned long ulCKSC_CPUCLKS_CTL;                      
  unsigned long ulCKSC_PPLLCLKS_CTL;                     
  unsigned long ulCKSC_CPUCLKD_CTL;                      
  unsigned long ulCKSC_IPERI1S_CTL;                      
  unsigned long ulCKSC_IPERI2S_CTL;                      
  unsigned long ulCKSC_ILINS_CTL;                        
  unsigned long ulCKSC_IADCAS_CTL;                       
  unsigned long ulCKSC_IADCAD_CTL;                       
  unsigned long ulCKSC_PLL0IS_CTL;                       
  unsigned long ulCKSC_PLLIS_CTL;                        
  unsigned long ulCKSC_ILIND_CTL;                        
  unsigned long ulCKSC_ILIND_STPM;                       
  unsigned long ulCKSC_ICANS_CTL;                        
  unsigned long ulCKSC_ICANS_STPM;                       
  unsigned long ulCKSC_ICANOSCD_CTL;                     
  unsigned long ulCKSC_ICANOSCD_STPM;                    
  unsigned long ulCKSC_ICSIS_CTL;                        
  unsigned long ulCKSC_IIICS_CTL;                        
}Mcu_ClkCntlRegMirror;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"



 
 

 
extern const Mcu_ConfigType * Mcu_GpConfigPtr;

 
extern const Mcu_ClockSetting *
                                                             Mcu_GpClockSetting;

 
extern const Mcu_CkscSetting *
                                                             Mcu_GpCkscSetting;


 
extern Mcu_LPSRegMirror Mcu_GddLpsRegRamMirror;
extern Mcu_ClkMntrReg0Mirror Mcu_GddClkMntrReg0RamMirror;
extern Mcu_ClkMntrReg1Mirror Mcu_GddClkMntrReg1RamMirror;
extern Mcu_ClkMntrReg2Mirror Mcu_GddClkMntrReg2RamMirror;
extern Mcu_ClkMntrReg3Mirror Mcu_GddClkMntrReg3RamMirror;
extern Mcu_TAUJOsRegMirror Mcu_GddTaujOsRegRamMirror;
extern Mcu_TAUJChRegMirror Mcu_GddTaujChRegRamMirror;
extern Mcu_ClkCntlRegMirror Mcu_GddClkCntlRegRamMirror;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda

 
 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_1BIT"



 
 

 
extern boolean Mcu_GblDriverStatus;
 
extern boolean Mcu_GblWakeUpPreparation;

extern boolean Mcu_GblResetFlag;

 
extern boolean Mcu_GblPllActCheck;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sdata=default
   #pragma ghs endsda




 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 






 
 








 

 



















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 


 



 



 



 

extern void SchM_Enter_Mcu_MCU_PWR_MODE_PSC_PROTECTION(void);
extern void SchM_Exit_Mcu_MCU_PWR_MODE_PSC_PROTECTION(void);

extern void SchM_Enter_Mcu_MCU_REGISTER_PROTECTION(void);
extern void SchM_Exit_Mcu_MCU_REGISTER_PROTECTION(void);

extern void SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION(void);
extern void SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION(void);




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 


















 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 

































































 
 




 
 
 
 
 



 
 


 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 


 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 

 

 

 

 

 

 



 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 

 
 
 

 
 
 

 
 
 
 

 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

extern void MCU_FEINT_ENTRY(void);
extern void MCU_FEINT_LEAVE(void);

extern  void Mcu_Init
(const Mcu_ConfigType * ConfigPtr);

extern  Std_ReturnType Mcu_InitRamSection
(Mcu_RamSectionType RamSection);

 

extern  Std_ReturnType Mcu_InitClock
(Mcu_ClockType ClockSetting);


 

extern  Std_ReturnType Mcu_DistributePllClock (void);


extern  Mcu_PllStatusType Mcu_GetPllStatus (void);

extern  Mcu_ResetType Mcu_GetResetReason (void);

extern  Mcu_RawResetType Mcu_GetResetRawValue (void);

 
extern  void Mcu_PerformReset (void);

extern  void Mcu_SetMode (Mcu_ModeType McuMode);
extern  void Mcu_WakeUpFactor_Preparation
                                               (Mcu_ModeType McuMode);
 
 
 
extern  void Mcu_GetVersionInfo
       (Std_VersionInfoType * versioninfo);
 


 




extern  Std_ReturnType Mcu_CheckHWConsistency(
                            const Mcu_HWConsistencyCheckType CheckType);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
 
 
extern const Mcu_ConfigType Mcu_GstConfiguration[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 
 
 


 



 
 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 

 
 
 
typedef struct STag_Mcu_RamSetting
{
   
  void *pRamStartAddress;
   
  uint32 ulRamSectionSize;
   
  uint32  ulRamInitValue;
   
  Mcu_RamWriteSizeType enRamWriteSizeSel;
} Mcu_RamSetting;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_UNSPECIFIED"



 
 

 
 
extern const Mcu_RamSetting Mcu_GstRamSetting[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 



















































 
 




 



 



 



 



 


 
typedef unsigned int        uinteger;        



 


 



 











 













 













 













 













 













 











 












 











 













 













 













 













 













 













 











 











 










 












 




 



 

 


 




 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_8BIT"



 
 
 

 
 
 
static uint8 Mcu_GucSelectedSrcClock;
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda




 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_32BIT"



 
 
 
 
static uint32 Mcu_GulCpuClockSetting;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda




 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section sbss=".MCU_CFG_BURAM_NO_INIT_8"




 
 



 
 
 
 
 
static uint8 Mcu_GucClockSettingValue;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section sbss=default
     #pragma ghs endsda





 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_32BIT"



 
 
 
static Mcu_RawResetType Mcu_GulResetValue;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda




 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 


static  void Mcu_InitRamMirror(void);


static  Std_ReturnType Mcu_MainOscDefault(void);

static  Std_ReturnType Mcu_MainOscDisable(void);

static  Std_ReturnType Mcu_MainOscEnable(void);

static  Std_ReturnType Mcu_ResumeCpuClock(void);


static  Std_ReturnType
Mcu_CkscConfigure(uint8 ucCkscRegs, boolean blDomainType,
                                                      boolean blPllActiveCheck);

static  Std_ReturnType
Mcu_ReinitClockConfiguration(void);

static  boolean
Mcu_IsoCkscCheck(uint8 ucCkscRegs, boolean blPllActiveCheck);


static  void Mcu_ReloadClockDomainSTPM(uint16
                                         LusStopMaskId, uint8 LucStopMaskValue);


static  Std_ReturnType Mcu_ShiftClockDomain (boolean
                                       LblMainOscOff, boolean LblStopModeCheck);

static  Std_ReturnType Mcu_StandByPrepare(boolean
                                                              LblStopModeCheck);


static  Std_ReturnType Mcu_StartPLL(void);
static  Std_ReturnType Mcu_StopPLL(void);



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 



 






































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void Mcu_Init
(const Mcu_ConfigType * ConfigPtr)
 
{
  volatile uint32 LulLVICnt;
  volatile uint32 LulDelayCount;
  Std_ReturnType LddReturnValue;
  uint8 LucCount;
  uint32 LulResetValue;
  uint32 LulRedundantResetValue;
  boolean LblDemReported;
  LucCount = (uint8)5;
  LblDemReported = (boolean)0x00;
   
  LddReturnValue = 0U;
   
   
  if (((void *)0) == ConfigPtr)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x00, (uint8)0x0A);
  }
  else
  {
     
     
    if ((((uint32)59U << 22) | ((uint32)101U << 14) | ((uint32)1U << 8) | ((uint32)2U << 3)) == (ConfigPtr->ulStartOfDbToc))
     
    {
       
      Mcu_GpConfigPtr = ConfigPtr;

       
      Mcu_InitRamMirror();

       
      LulLVICnt = ConfigPtr->ulLVIindicationReg;
       
      if ((uint32)0x00000000UL != (LulLVICnt & (uint32)0x00000007UL))
      {
         
        LulLVICnt = (uint32)0x00000004UL;
         
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(LviReg_BaseAddress->ulLVICNT))) = (LulLVICnt); (*(&(LviReg_BaseAddress->ulLVICNT))) = (~(LulLVICnt)); (*(&(LviReg_BaseAddress->ulLVICNT))) = (LulLVICnt); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
         
        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                        (Dem_EventStatusType)0x01);
          LblDemReported = (boolean)0x01;
        }
        else
        {
           
        }
        if ((boolean)0x00 == LblDemReported)
        {
           
           
            FEIntMsk_BaseAddress->FMSK = (FEIntMsk_BaseAddress->FMSK |
                                  (uint32)0x00000001UL | (uint32)0x00008000UL);
           
          

 
          LucCount = (uint8)5;
          LulLVICnt = ((uint32)0x00000004UL | (ConfigPtr->ulLVIindicationReg &
                                                         (uint32)0x00000007UL));
          { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(LviReg_BaseAddress->ulLVICNT))) = (LulLVICnt); (*(&(LviReg_BaseAddress->ulLVICNT))) = (~(LulLVICnt)); (*(&(LviReg_BaseAddress->ulLVICNT))) = (LulLVICnt); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}

          if (1U == LddReturnValue)
          {
            


 
            Dem_ReportErrorStatus((Dem_EventIdType)2,
                                   (Dem_EventStatusType)0x01);
            LblDemReported = (boolean)0x01;
          }
          else
          {
             
          }
          if ( (uint32)0x00000000UL != ((LviReg_BaseAddress->ulLVICNT)
                                                            & (uint32)0x00000007UL))
          {
            LulDelayCount = (uint32)0x00000000UL;
            do
            {
               
              LulDelayCount++;
               
              }while (((uint32)(uint16)0x04FF) >= LulDelayCount);
               
            }
          else
          {
             
          }
           
          if ((uint32)0x00000004UL == (ConfigPtr->ulLVIindicationReg & (uint32)0x00000004UL))
          {
             
              FEIntMsk_BaseAddress->FMSK = (FEIntMsk_BaseAddress->FMSK &
                              (~((uint32)0x00000001UL | (uint32)0x00008000UL)));
          }
          else
          {
             
            LulLVICnt =
                  ((LviReg_BaseAddress->ulLVICNT) & (uint32)0xFFFFFFF3UL);
            LucCount = (uint8)5;
            { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(LviReg_BaseAddress->ulLVICNT))) = (LulLVICnt); (*(&(LviReg_BaseAddress->ulLVICNT))) = (~(LulLVICnt)); (*(&(LviReg_BaseAddress->ulLVICNT))) = (LulLVICnt); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}

            if (1U == LddReturnValue)
            {
              


 
              Dem_ReportErrorStatus((Dem_EventIdType)2,
                                   (Dem_EventStatusType)0x01);
              LblDemReported = (boolean)0x01;
            }
            else
            {
               
            }
          }
        }
        else
        {
           
        }
      }
      else
      {
         
      }
      if ((boolean)0x00 == LblDemReported)
      {
         
         
         if ((uint32)0x00000001UL == ((uint32)(*Mcu_IoHoldRegister_BaseAddress) &
                                                              (uint32)0x00000001UL))
          
         {
        }
        else
        {
           
        }

      }
      else
      {
         
      }
       
      Mcu_GucSelectedSrcClock = (uint8)0x00;
      if ((boolean)0x00 == LblDemReported)
      {
         
        Mcu_GblDriverStatus = (boolean)0x01;
        Mcu_GblWakeUpPreparation = (uint8)0x00;
       }
       else
       {
          
         (void)Det_ReportError(101U, 0U,
         (uint8)0x00, (uint8)0x11);
       }
          
      LulResetValue = (Mcu_ResfRegister_BaseAddress->ulRESF);
      LulRedundantResetValue = (Mcu_ResfRegister_BaseAddress->ulRESFR);
       
       
      LulResetValue = ((LulResetValue | LulRedundantResetValue) & (uint32)0x00000400UL);
      if((uint32)0x00000400UL != LulResetValue)
      {
        Mcu_GucClockSettingValue = (uint8)0x00;
      }
      else
      {
         
      }

       
       
      Mcu_GpClockSetting =
          (const Mcu_ClockSetting *)
           &Mcu_GstClockSetting[(Mcu_GpConfigPtr->ucClockSettingOffset) +
                               Mcu_GucClockSettingValue];
       
    }
    else
    {
       
      (void)Det_ReportError(101U, 0U, (uint8)0x00,
      (uint8)0xED);
    }
  }

}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 Std_ReturnType Mcu_InitRamSection
(Mcu_RamSectionType RamSection)
 
{
  const Mcu_RamSetting * LpRamSetting;
  uint32 * LpRamStartAddressFourByte;
  uint16 * LpRamStartAddressTwoByte;
  uint8 * LpRamStartAddressOneByte;
  Std_ReturnType LddReturnValue;
  uint32 LulNoOfByte;
  uint8 LucNoOfByteWritten;
   
  LddReturnValue = 0U;
  LpRamStartAddressFourByte = ((void *)0);
  LpRamStartAddressTwoByte  = ((void *)0);
  LpRamStartAddressOneByte  = ((void *)0);
  LucNoOfByteWritten = (uint8)0x01;
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x01, (uint8)0x0F);
    LddReturnValue = 1U;
  }
  else
  {
     
  }
   
  if ((Mcu_RamSectionType)1 <= RamSection)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x01, (uint8)0x0D);
    LddReturnValue = 1U;
  }
  else
  {
     
  }
   
  if (0U == LddReturnValue)
  {
     
    LpRamSetting = &Mcu_GstRamSetting[RamSection];
     
    LulNoOfByte = LpRamSetting->ulRamSectionSize;
    switch (LpRamSetting->enRamWriteSizeSel)
    {
    case MCU_8BIT_SIZE:
       
       
      LpRamStartAddressOneByte = (uint8 *) LpRamSetting->pRamStartAddress;
       
      LucNoOfByteWritten = (uint8)0x01;
      if ((uint32)0x00000001UL > LulNoOfByte)
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      break;
    case MCU_16BIT_SIZE:
       
       
      LpRamStartAddressTwoByte = (uint16 *) LpRamSetting->pRamStartAddress;
       
      LucNoOfByteWritten = (uint8)0x02;
      if (((uint32)0x00000002UL > LulNoOfByte ) || ((uint32)0x00000000UL !=
                                           (LulNoOfByte % LucNoOfByteWritten)))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      break;
    case MCU_32BIT_SIZE:
       
       
      LpRamStartAddressFourByte = (uint32 *) LpRamSetting->pRamStartAddress;
       
      LucNoOfByteWritten = (uint8)0x04;
      if (((uint32)0x00000004UL > LulNoOfByte ) ||
           ((uint32)0x00000000UL != (LulNoOfByte % LucNoOfByteWritten)))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      break;
    default: LddReturnValue = 1U;
      break;
    }
     
    if (0U == LddReturnValue)
    {
      while ((uint32)0x00000000UL != LulNoOfByte)
      {
        switch (LpRamSetting->enRamWriteSizeSel)
        {
        case MCU_8BIT_SIZE:
           
          if ( ((void *)0)  !=  LpRamStartAddressOneByte)
          {
            *LpRamStartAddressOneByte =(uint8) LpRamSetting->ulRamInitValue;
             
             
            LpRamStartAddressOneByte++;
          }
          else
          {
             
          }
           
          break;
        case MCU_16BIT_SIZE:
           
          if (((void *)0) != LpRamStartAddressTwoByte)
          {
            *LpRamStartAddressTwoByte = (uint16) LpRamSetting->ulRamInitValue;
             
             
            LpRamStartAddressTwoByte++;
             
          }
          else
          {
             
          }
          break;
        case MCU_32BIT_SIZE:
           
          if (((void *)0) != LpRamStartAddressFourByte)
          {
            *LpRamStartAddressFourByte = (uint32)LpRamSetting->ulRamInitValue;
             
             
            LpRamStartAddressFourByte++;
             
          }
          else
          {
             
          }
          break;
         
        default:
           
          break;
        }
         
         
        LulNoOfByte = (uint32)(LulNoOfByte - (uint32)LucNoOfByteWritten);
      }
    }
    else
    {
       
    }
  }
  else
  {
     
  }
  return (LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 









































 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 Std_ReturnType Mcu_InitClock (Mcu_ClockType ClockSetting)
 
{
  uint32 LulMainClockStabCount;
  uint32 LulMOSCSTPM;
  uint32 LulROSCSTPM;

  Std_ReturnType LddReturnValue;

  uint8 LucNoOfCkscReg;
  boolean blPllActiveCheck;
  uint8 LucSelectedSrcClk;
  uint8 LucCount;
  uint32 LulPllSrcClk;
  uint32 LulPllPLLC;
  LddReturnValue = 0U;
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x02, (uint8)0x0F);
    LddReturnValue = 1U;
  }
   
  else
  {
    if (0x01U <= ClockSetting)
    {
       
      (void)Det_ReportError(101U, 0U,
      (uint8)0x02, (uint8)0x0B);
      LddReturnValue = 1U;
    }
    else
    {
       
    }
  }
   
  if (0U == LddReturnValue)
  {
     
     
     
    Mcu_GpClockSetting =
        (const Mcu_ClockSetting *)
         &Mcu_GstClockSetting[(Mcu_GpConfigPtr->ucClockSettingOffset) +
                                                                 ClockSetting];
     
     

     
    Mcu_GucClockSettingValue = ClockSetting;

     
    LucSelectedSrcClk = Mcu_GpClockSetting->ucSelectedSrcClock;
     
    Mcu_GucSelectedSrcClock = LucSelectedSrcClk;

     
    { (*(&Mcu_ClkCtrlReg_BaseAddress->ulFOUTDIV)) = ((uint32)0x00000000UL); (*(&Mcu_GddClkCntlRegRamMirror . ulFOUTDIV)) = ((uint32)0x00000000UL); };
    { }

     
    if ((uint8)0x01 ==
                             (uint8)(LucSelectedSrcClk & (uint8)0x01))
    {
       
      if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
                                                           & (uint32)0x00000004UL))
      {
         
        { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCC)) = (((uint32)(Mcu_GpClockSetting->ucMosccRegValue) | (uint32)0x00000004UL)); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCC)) = (((uint32)(Mcu_GpClockSetting->ucMosccRegValue) | (uint32)0x00000004UL)); };
        { }

         
        { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCST)) = (Mcu_GpClockSetting->ulMainOscStabTime); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCST)) = (Mcu_GpClockSetting->ulMainOscStabTime); };
        { }

         

        LucCount = (uint8)5;
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = ((uint32)0x00000001UL); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = (~((uint32)0x00000001UL)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = ((uint32)0x00000001UL); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}

        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                   (Dem_EventStatusType)0x01);
        }
        else
        {
           
        }
         
        LulMainClockStabCount = Mcu_GpConfigPtr->ulMainClockStabCount;

        while (((uint32)0x00000000UL == ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
                & (uint32)0x00000004UL)) &&
                                   ((uint32)0x00000000UL < LulMainClockStabCount))
        {
          LulMainClockStabCount--;
        }
        if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
                                                         & (uint32)0x00000004UL))
        {
           
          Dem_ReportErrorStatus((Dem_EventIdType)2, (Dem_EventStatusType)0x01);
          LddReturnValue = 1U;
        }
        else
        {
           
        }
      }
      else
      {
         
      }
       
      if ((uint8)0x01 ==
         (uint8)(Mcu_GpClockSetting->ucSelectedSTPMK & (uint8)0x01))
      {
        LulMOSCSTPM = Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM;
         
        { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM)) = ((LulMOSCSTPM | (uint32)0x00000001UL)); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCSTPM)) = ((LulMOSCSTPM | (uint32)0x00000001UL)); };
        { }
      }
      else
      {
         
        { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM)) = ((uint32)0x00000002UL); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCSTPM)) = ((uint32)0x00000002UL); };
        { }

      }
    }
    else
    {
       
    }
    


 
    


 

    if ( 0U ==  LddReturnValue )
    {
       
       
       
      { (*(&Mcu_GddClkCntlRegRamMirror . ulROSCS)) = (Mcu_ClkCtrlReg_BaseAddress->ulROSCS); }
       
      if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulROSCS)
              & (uint32)0x00000004UL))
      {

           
          Dem_ReportErrorStatus((Dem_EventIdType)2, (Dem_EventStatusType)0x01);
          LddReturnValue = 1U;
      }
      else
      {
           
      }

      if ((uint8)0x04 ==
         (uint8)(Mcu_GpClockSetting->ucSelectedSTPMK & (uint8)0x04))
      {
        LulROSCSTPM = Mcu_ClkCtrlReg_BaseAddress->ulROSCSTPM;
         
        { (*(&Mcu_ClkCtrlReg_BaseAddress->ulROSCSTPM)) = (((LulROSCSTPM) | (uint32)0x00000001UL)); (*(&Mcu_GddClkCntlRegRamMirror . ulROSCSTPM)) = (((LulROSCSTPM) | (uint32)0x00000001UL)); };
        { }
      }
      else
      {
         
        { (*(&Mcu_ClkCtrlReg_BaseAddress->ulROSCSTPM)) = ((uint32)0x00000002UL); (*(&Mcu_GddClkCntlRegRamMirror . ulROSCSTPM)) = ((uint32)0x00000002UL); };
        { }
      }
    }
    else
    {
       
    }
    


 

    if ((0U == LddReturnValue ) &&
       ((uint8)0x08 ==
       ((uint8)(LucSelectedSrcClk & (uint8)0x08))))
    {
       
      if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL))
      {
         
        LucCount = (uint8)5;
         
        LulPllSrcClk = (uint32) Mcu_GpClockSetting->ucPllSelectedSrcClock;
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL))) = (LulPllSrcClk); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL))) = (~(LulPllSrcClk)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL))) = (LulPllSrcClk); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
         
        { (*(&Mcu_GddClkCntlRegRamMirror . ulCKSC_PLLIS_CTL)) = (LulPllSrcClk); }
        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                                  (Dem_EventStatusType)0x01);

        }
        else
        {
          LddReturnValue = Mcu_StartPLL();
        }

      }
      else
      {
         
        LulPllSrcClk = (uint32) Mcu_GpClockSetting->ucPllSelectedSrcClock;
        LulPllPLLC = (uint32) Mcu_GpClockSetting->ulPLLControlValue;
        if ((LulPllSrcClk != (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_ACT))||
              (LulPllPLLC != (Mcu_ClkCtrlReg_BaseAddress->ulPLLC
                                                 & (uint32)0x0000183FUL)))
        {
          LddReturnValue = Mcu_StandByPrepare((boolean)0x00);
          if (0U == LddReturnValue )
          {
             
            LucCount = (uint8)5;
             
            { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL))) = (LulPllSrcClk); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL))) = (~(LulPllSrcClk)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL))) = (LulPllSrcClk); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
             
            { (*(&Mcu_GddClkCntlRegRamMirror . ulCKSC_PLLIS_CTL)) = (LulPllSrcClk); }
            if (1U == LddReturnValue)
            {
              


 
               Dem_ReportErrorStatus((Dem_EventIdType)2,
                                                      (Dem_EventStatusType)0x01);
            }
            else
            {

            }
             
            if (0U == LddReturnValue )
            {
               
              LddReturnValue = Mcu_StartPLL();
            }
            else
            {
               
            }
          }
          else
          {
             
          }
        }
        else
        {
          
 
        }
      }
    }
    else
    {
      if(0U == LddReturnValue)
      {
        if ((uint32)0x00000004UL == ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL))
        {
          LddReturnValue = Mcu_StandByPrepare((boolean)0x00);
        }
        else
        {
           
        }
      }
      else
      {
         
      }
    }
     
    if ((0U == LddReturnValue ) && ((uint8)0x01 !=
                            (uint8)(LucSelectedSrcClk & (uint8)0x01)))
    {
      if ((uint32)0x00000004UL == ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
                                                      & (uint32)0x00000004UL))

      {
          

         LddReturnValue = Mcu_ShiftClockDomain( (boolean)0x01, (boolean)0x00);
          
         if(0U == LddReturnValue)
         {
             

             if (((uint32)0x00000004UL ==
                ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) &  (uint32)0x00000004UL))
                 &&( (uint32)0x00000001UL  ==
                 (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL
                  & (uint32)0x00000001UL)))
             {

               LddReturnValue = Mcu_StopPLL();
             }
             else
             {
                  
             }

              
          }
          else
          {
            
          }
        if (0U == LddReturnValue )
        {
            LddReturnValue = Mcu_MainOscDisable();
        }
        else
        {
             
        }
      }
      else
      {
         
      }
    }
    else
    {
       
    }
     
     
    Mcu_GpCkscSetting =
    ((const Mcu_CkscSetting *)
    Mcu_GpClockSetting->pCkscSel);
     
     
    if (0U == LddReturnValue )
    {
       
      LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfIsoCkscReg;
       
      blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
       
      blPllActiveCheck = Mcu_IsoCkscCheck(LucNoOfCkscReg, blPllActiveCheck);
       
      LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x01,
                                                              blPllActiveCheck);
      if (0U == LddReturnValue )
      {
         
         
        
        Mcu_GpCkscSetting =
        (((const Mcu_CkscSetting *)
        Mcu_GpClockSetting->pCkscSel) + Mcu_GpClockSetting->ucNoOfIsoCkscReg);
         
         
         
        LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfAwoCkscReg;
         
        blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
         
        LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x00,
                                                              blPllActiveCheck);
      }
      else
      {
         
      }
    }
    else
    {
       
    }
    if (0U == LddReturnValue )
    {
       
      { (*(&Mcu_ClkCtrlReg_BaseAddress->ulFOUTDIV)) = (((uint32)Mcu_GpClockSetting->usFoutDivReg)); (*(&Mcu_GddClkCntlRegRamMirror . ulFOUTDIV)) = (((uint32)Mcu_GpClockSetting->usFoutDivReg)); };
      { }

    }
    else
    {
       
    }
     
    if ((0U == LddReturnValue ) && ((uint8)0x00 ==
                      (uint8)((uint8)(Clma0Reg_BaseAddress->ucCTL0)
                            & (uint8)0x01)))
    {
      


 
      { (*(&Clma0Reg_BaseAddress->usCMPH)) = (Mcu_GpClockSetting->usCLMA0CMPH); (*(&Mcu_GddClkMntrReg0RamMirror . usCMPH)) = (Mcu_GpClockSetting->usCLMA0CMPH); };
      { }

       


 
        { (*(&(Clma0Reg_BaseAddress->usCMPL))) = (Mcu_GpClockSetting->usCLMA0CMPL); (*(&Mcu_GddClkMntrReg0RamMirror . usCMPL)) = (Mcu_GpClockSetting->usCLMA0CMPL); };
        { }

      LucCount = (uint8)5;
       
       
      { do { (*(&(Clma0Reg_BaseAddress->ucPCMD))) = (uint32)0x000000A5; (*(&(Clma0Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (*(&(Clma0Reg_BaseAddress->ucCTL0))) = (~((uint8)0x01)); (*(&(Clma0Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Clma0Reg_BaseAddress->ucPS))))); if ((uint32)0x00000001UL == (*(&(Clma0Reg_BaseAddress->ucPS)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
       
       
       
      { (*(&Mcu_GddClkMntrReg0RamMirror . ucCTL0)) = ((uint8)0x01); }
      if (1U == LddReturnValue)
      {
        


 
        Dem_ReportErrorStatus((Dem_EventIdType)2,
        (Dem_EventStatusType)0x01);
      }
      else
      {
         
      }
    }
    else
    {
       
    }
     
    if ((0U == LddReturnValue ) &&
              ((uint8)0x00 == ((uint8)((Clma1Reg_BaseAddress->ucCTL0)
                                                & (uint8)0x01))))
    {
      


 
      { (*(&(Clma1Reg_BaseAddress->usCMPH))) = (Mcu_GpClockSetting->usCLMA1CMPH); (*(&Mcu_GddClkMntrReg1RamMirror . usCMPH)) = (Mcu_GpClockSetting->usCLMA1CMPH); };
      { }

      


 
      { (*(&(Clma1Reg_BaseAddress->usCMPL))) = (Mcu_GpClockSetting->usCLMA1CMPL); (*(&Mcu_GddClkMntrReg1RamMirror . usCMPL)) = (Mcu_GpClockSetting->usCLMA1CMPL); };
      { }

      LucCount = (uint8)5;
       
       
      { do { (*(&(Clma1Reg_BaseAddress->ucPCMD))) = (uint32)0x000000A5; (*(&(Clma1Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (*(&(Clma1Reg_BaseAddress->ucCTL0))) = (~((uint8)0x01)); (*(&(Clma1Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Clma1Reg_BaseAddress->ucPS))))); if ((uint32)0x00000001UL == (*(&(Clma1Reg_BaseAddress->ucPS)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
       
       
       
      { (*(&Mcu_GddClkMntrReg1RamMirror . ucCTL0)) = ((uint8)0x01); }
      if (1U == LddReturnValue)
      {
        


 
        Dem_ReportErrorStatus((Dem_EventIdType)2,
        (Dem_EventStatusType)0x01);
      }
      else
      {
         
      }
    }
    else
    {
       
    }
  }
  else
  {
     
  }

  return (LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 Std_ReturnType Mcu_DistributePllClock (void)
{
  Std_ReturnType LddReturnValue;
  uint8 LucNoOfCkscReg;
  uint8 LucCkscSettingOffset;
  boolean blPllActiveCheck;
  uint8 LucCount;
  Mcu_PllStatusType LddPllLockStatus;
   
  LddReturnValue = 0U;
   
  LucCount = (uint8)5;
   
  LddPllLockStatus = Mcu_GetPllStatus();
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x03, (uint8)0x0F);
    LddReturnValue = 1U;
  }
   
  else if (MCU_PLL_UNLOCKED == LddPllLockStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x03, (uint8)0x0E);
    LddReturnValue = 1U;
  }
   
  else
  {
     
     
    Mcu_GpCkscSetting =
    ((const Mcu_CkscSetting *)
    &Mcu_GstCkscSetting[Mcu_GpClockSetting->ucCkscSelOffset
                                  + Mcu_GpClockSetting->ucCkscPllIndexOffset]);
     
     
    LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfPllIsoCkscReg;
     
    blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
     
    blPllActiveCheck = Mcu_IsoCkscCheck(LucNoOfCkscReg, blPllActiveCheck);
     
    LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x01,
                                                            blPllActiveCheck);
    if (0U == LddReturnValue )
    {
      LucCkscSettingOffset = Mcu_GpClockSetting->ucCkscPllIndexOffset
                                 + Mcu_GpClockSetting->ucNoOfPllIsoCkscReg
                                 + Mcu_GpClockSetting->ucCkscSelOffset;
       
      Mcu_GpCkscSetting =
      ((const Mcu_CkscSetting *)
      &Mcu_GstCkscSetting[LucCkscSettingOffset]);
       
      LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfPllAwoCkscReg;
       
      blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
       
      LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x00,
                                                              blPllActiveCheck);
    }
    else
    {
       
    }
    if (0U == LddReturnValue )
    {
       
      { (*(&Mcu_ClkCtrlReg_BaseAddress->ulFOUTDIV)) = (((uint32)Mcu_GpClockSetting->usFoutDivReg)); (*(&Mcu_GddClkCntlRegRamMirror . ulFOUTDIV)) = (((uint32)Mcu_GpClockSetting->usFoutDivReg)); };
      { }

    }
    else
    {
       
    }
     
    if ((0U == LddReturnValue ) &&
              ((uint8)0x00 == ((uint8)((Clma2Reg_BaseAddress->ucCTL0)
                                                & (uint8)0x01))))
    {
      


 
      { (*(&(Clma2Reg_BaseAddress->usCMPH))) = (Mcu_GpClockSetting->usCLMA2CMPH); (*(&Mcu_GddClkMntrReg2RamMirror . usCMPH)) = (Mcu_GpClockSetting->usCLMA2CMPH); };
      { }

      


 
      { (*(&(Clma2Reg_BaseAddress->usCMPL))) = (Mcu_GpClockSetting->usCLMA2CMPL); (*(&Mcu_GddClkMntrReg2RamMirror . usCMPL)) = (Mcu_GpClockSetting->usCLMA2CMPL); };
      { }

      LucCount = (uint8)5;
       
       
      { do { (*(&(Clma2Reg_BaseAddress->ucPCMD))) = (uint32)0x000000A5; (*(&(Clma2Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (*(&(Clma2Reg_BaseAddress->ucCTL0))) = (~((uint8)0x01)); (*(&(Clma2Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Clma2Reg_BaseAddress->ucPS))))); if ((uint32)0x00000001UL == (*(&(Clma2Reg_BaseAddress->ucPS)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
       
       
       
      { (*(&Mcu_GddClkMntrReg2RamMirror . ucCTL0)) = ((uint8)0x01); }
      if (1U == LddReturnValue)
      {
        


 
        Dem_ReportErrorStatus((Dem_EventIdType)2,
        (Dem_EventStatusType)0x01);
      }
      else
      {
         
      }
    }
    else
    {
       
    }



  }

  return (LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 Mcu_PllStatusType Mcu_GetPllStatus (void)
{
  Mcu_PllStatusType LddPllLockStatus;
   
  boolean LblPllSelectFlag;
   
  uint8 LucSelectedSrcClk;
   
  LddPllLockStatus = MCU_PLL_LOCKED;
   
  LblPllSelectFlag = (boolean)0x00;
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x04, (uint8)0x0F);
     
    LddPllLockStatus = MCU_PLL_STATUS_UNDEFINED;
    LblPllSelectFlag = (boolean)0x01;
  }
  else
  {
    


 
    LucSelectedSrcClk = Mcu_GucSelectedSrcClock;
     
    if ((uint8)0x08 ==
                            (uint8)(LucSelectedSrcClk & (uint8)0x08))
    {
      LblPllSelectFlag = (boolean)0x01;
       
       
      if ((uint32)0x00000004UL !=
                ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL))
       
      {
         
        LddPllLockStatus = MCU_PLL_UNLOCKED;
      }
      else
      {
         
      }
    }
    else
    {
       
    }
  }
   
   
  if ((boolean)0x01 != LblPllSelectFlag)
   
   
  {
    LddPllLockStatus = MCU_PLL_UNLOCKED;
  }
  else
  {
     
  }
  return(LddPllLockStatus);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 Mcu_ResetType Mcu_GetResetReason (void)
{
  uint32 LulResetValue;
  uint32 LulRedundantResetValue;
  Mcu_ResetType LddResetSource;
  boolean LblTriggerDemError;
  LblTriggerDemError = (boolean)0x00;
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x05, (uint8)0x0F);
     
    LddResetSource = MCU_RESET_UNDEFINED;
  }
  else
  {
    SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION();
    if (1U == Mcu_GblResetFlag)
    {
       
      Mcu_GulResetValue = (Mcu_ResfRegister_BaseAddress->ulRESF);
      Mcu_GblResetFlag = 0U;
      LulRedundantResetValue = (Mcu_ResfRegister_BaseAddress->ulRESFR);
       
      if ((uint32)Mcu_GulResetValue != LulRedundantResetValue)
      {
         LblTriggerDemError = (boolean)0x01;
          
         Mcu_GulResetValue = (uint32)Mcu_GulResetValue | LulRedundantResetValue;
      }
      else
      {
         
      }
    }
    else
    {
       
    }
    LulResetValue = (uint32)Mcu_GulResetValue;
    SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION();
    if ((boolean)0x01 == LblTriggerDemError)
    {
       
      Dem_ReportErrorStatus((Dem_EventIdType)2,
                                          (Dem_EventStatusType)0x01);

    }
    else
    {
         
    }

    switch ( LulResetValue )
    {
    case (uint32)0x00000200UL :
       
      LddResetSource = MCU_POWER_ON_RESET;
      break;
    case (uint32)0x00000001UL :
       
      LddResetSource = MCU_SW_RESET;
      break;
    case (uint32)0x00000002UL :
       
      LddResetSource = MCU_WATCHDOG0_RESET;
      break;
    case (uint32)0x00000004UL :
       
      LddResetSource = MCU_WATCHDOG1_RESET;
      break;
       
    case (uint32)0x00000008UL : LddResetSource = MCU_CLM0_RESET;
      break;
    case (uint32)0x00000010UL :
       
      LddResetSource = MCU_CLM1_RESET;
      break;
    case (uint32)0x00000020UL :
       
       
      LddResetSource = MCU_CLM2_RESET;
      break;
    case (uint32)0x00000040UL :
       
      LddResetSource = MCU_LVI_RESET;
      break;
    case (uint32)0x00000080UL :
       
      LddResetSource = MCU_CVM_RESET;
      break;
    case (uint32)0x00000100UL :
       
      LddResetSource = MCU_TERMINAL_RESET;
      break;
    case (uint32)0x00000400UL :
       
      LddResetSource = MCU_ISO_RESET;
      break;
       
    default:
       
       
      if ((uint32)0xFFFFFFFFUL == LulResetValue)
      {
        LddResetSource = MCU_RESET_UNDEFINED;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000200UL))
      {
        LddResetSource = MCU_POWER_ON_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000100UL))
      {
        LddResetSource = MCU_TERMINAL_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000002UL))
      {
        LddResetSource = MCU_WATCHDOG0_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000004UL))
      {
        LddResetSource = MCU_WATCHDOG1_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000008UL))
      {
        LddResetSource = MCU_CLM0_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000010UL))
      {
        LddResetSource = MCU_CLM1_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000020UL))
      {
        LddResetSource = MCU_CLM2_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000080UL))
      {
        LddResetSource = MCU_CVM_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000040UL))
      {
        LddResetSource = MCU_LVI_RESET;
      }
       
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000001UL))
      {
        LddResetSource = MCU_SW_RESET;
      }
      else if ((uint32)0x00000000UL != (LulResetValue & (uint32)0x00000400UL))
      {
        LddResetSource = MCU_ISO_RESET;
      }
      else
      {
        LddResetSource = MCU_RESET_UNKNOWN;
      }
       
      break;
    }
    SchM_Enter_Mcu_MCU_REGISTER_PROTECTION();
     
    { (*(&Mcu_ResfRegister_BaseAddress->ulRESFC)) = ((uint32)0x000007FFUL); }
    { }

     
    { (*(&Mcu_ResfRegister_BaseAddress->ulRESFCR)) = ((uint32)0x000007FFUL); }
    { }

    SchM_Exit_Mcu_MCU_REGISTER_PROTECTION();
  }


  return (LddResetSource);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 Mcu_RawResetType Mcu_GetResetRawValue (void)
{
  uint32 LulRedundantResetValue;
  Mcu_RawResetType LddResetValue;
  boolean LblTriggerDemError;
  LblTriggerDemError = (boolean)0x00;
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x06, (uint8)0x0F);
     
    LddResetValue = (uint32)0xFFFFFFFFUL;
  }
  else
  {
    SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION();
    if (1U == Mcu_GblResetFlag)
    {
       
      Mcu_GulResetValue = (Mcu_ResfRegister_BaseAddress->ulRESF);
      Mcu_GblResetFlag = 0U;
      LulRedundantResetValue = (Mcu_ResfRegister_BaseAddress->ulRESFR);
       
      if ((uint32)Mcu_GulResetValue != LulRedundantResetValue)
      {
        LblTriggerDemError = (boolean)0x01;
         
        Mcu_GulResetValue = (uint32)Mcu_GulResetValue | LulRedundantResetValue ;
      }
      else
      {
           
      }
    }
    else
    {
       
    }
    SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION();
    if ((boolean)0x01 == LblTriggerDemError)
    {
       
      Dem_ReportErrorStatus((Dem_EventIdType)2,
                                          (Dem_EventStatusType)0x01);

    }
    else
    {
         
    }

     
    LddResetValue = (Mcu_RawResetType) Mcu_GulResetValue;
    SchM_Enter_Mcu_MCU_REGISTER_PROTECTION();
     
    { (*(&Mcu_ResfRegister_BaseAddress->ulRESFC)) = ((uint32)0x000007FFUL); }
    { }

     
    { (*(&Mcu_ResfRegister_BaseAddress->ulRESFCR)) = ((uint32)0x000007FFUL); }
    { }

    SchM_Exit_Mcu_MCU_REGISTER_PROTECTION();
  }

  return(LddResetValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 void Mcu_PerformReset (void)
{
  uint8 LucSWRESCount;
  Std_ReturnType LddReturnValue;
  LucSWRESCount = (uint8)5;
   
  LddReturnValue = 0U;
   
   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U, (uint8)0x07,
    (uint8)0x0F);
  }
  else
  {
    SchM_Enter_Mcu_MCU_REGISTER_PROTECTION();
     
    { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(Mcu_ResfRegister_BaseAddress->ulSWRESA))) = ((uint32)0x00000001UL); (*(&(Mcu_ResfRegister_BaseAddress->ulSWRESA))) = (~((uint32)0x00000001UL)); (*(&(Mcu_ResfRegister_BaseAddress->ulSWRESA))) = ((uint32)0x00000001UL); (LucSWRESCount)= (LucSWRESCount) - (uint8)0x01; } while (((uint8)0x00 < (LucSWRESCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
     
    SchM_Exit_Mcu_MCU_REGISTER_PROTECTION();

    if (1U == LddReturnValue)
    {
      


 
      Dem_ReportErrorStatus((Dem_EventIdType)2,
                                                  (Dem_EventStatusType)0x01);
    }
    else
    {
       
    }
  }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 







































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void Mcu_SetMode (Mcu_ModeType McuMode)
 
{
  const Mcu_ModeSetting * LpModeSetting;
  uint32 LulPowermode;
  Std_ReturnType LddReturnValue;
  uint8 LucMode;
  uint8 LucCount;
  uint8 LucSelectedSrcClk;
  boolean LblMcuMainOscOperation;
  uint16 LusSafetyCounterPll;
   
  boolean LblPLL0Started;
  boolean LblPLLStarted;
   
  LblPLL0Started = (boolean)0x00;
  LblPLLStarted = (boolean)0x00;
   
  LucCount = (uint8)5;
  LddReturnValue = 0U;
   
   
  if ( (uint8)0x00 == Mcu_GblWakeUpPreparation )
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x08, (uint8)0xEF);
    LddReturnValue = 1U;
  }
  else
  {
     
  }

  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
     
    (void)Det_ReportError(101U, 0U,
    (uint8)0x08, (uint8)0x0F);
    LddReturnValue = 1U;
  }
   
  else
  {
    if (0x02U < McuMode)
    {
       
      (void)Det_ReportError(101U, 0U,
      (uint8)0x08, (uint8)0x0C);
      LddReturnValue = 1U;
    }
    else
    {
       
    }
  }
   
  if (0U == LddReturnValue)
  {
    LpModeSetting =
       ((const Mcu_ModeSetting *)
       (&Mcu_GstModeSetting[((Mcu_GpConfigPtr->ucModeSettingOffset) +
                                                                    McuMode)]));

    LucMode = LpModeSetting->ucModeType;

    LblMcuMainOscOperation = LpModeSetting->blMcuMainOscOperation;
     
    if ((boolean)0x00 == LblMcuMainOscOperation)
    {
      LddReturnValue = Mcu_ShiftClockDomain((boolean)0x01, (boolean)0x00);

       
      if ((uint32)0x00000004UL == ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS) &
                                                       (uint32)0x00000004UL))
       
      {
         
        if(0U == LddReturnValue)
        {
          if (((uint32)0x00000004UL ==
              ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL)) &&
              ((uint8)0x01 ==
              (uint8)(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_ACT)))
          {
            LddReturnValue = Mcu_StopPLL();
          }
          else
          {
             
          }
        }
        else
        {
           
        }

         

        if(0U == LddReturnValue)
        {
          LddReturnValue = Mcu_MainOscDisable();
        }
        else
        {
           
        }
      }
      else
      {
         
      }
    }
    else
    {
      if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS) &
                                                         (uint32)0x00000004UL))
      {
        LddReturnValue = Mcu_MainOscEnable();
      }
      else
      {
         
      }
    }
     
    if (0U == LddReturnValue )
    {
      switch (LucMode)
      {
      case (Mcu_ModeType)0x03:
        if ((boolean)0x01 == LpModeSetting->blModeTransitionReq)
        {
           
           
           
           
          __halt();
           
           
           
          __nop();
          __nop();
          __nop();
          __nop();
          __nop();
        }
        else
        {
           
        }
        break;
      case (Mcu_ModeType)0x01:
        if ((boolean)0x01 == LpModeSetting->blModeTransitionReq)
        {
          if ((uint8)0x08 ==
             (Mcu_GpClockSetting->ucSelectedSrcClock & (uint8)0x08))
          {
             
            if ((boolean)0x00 == LblMcuMainOscOperation)
            {
              LddReturnValue = Mcu_ShiftClockDomain((boolean)0x01, (boolean)0x01);
            }
            else
            {
              LddReturnValue = Mcu_ShiftClockDomain((boolean)0x00, (boolean)0x00);
            }
          }
          else
          {
             
          }
           
          if ((0U == LddReturnValue)&&
            ((uint32)0x00000004UL == ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS)& (uint32)0x00000004UL)))
          {
             
              LddReturnValue = Mcu_StopPLL();
          }
          else
          {
             
          }
           
          if(0U == LddReturnValue)
           
          {
            LucCount = (uint8)5;
             
            LulPowermode = (uint32)0x00000001UL;

            { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(Mcu_Stbc0Register_BaseAddress->ulSTPT))) = (LulPowermode); (*(&(Mcu_Stbc0Register_BaseAddress->ulSTPT))) = (~(LulPowermode)); (*(&(Mcu_Stbc0Register_BaseAddress->ulSTPT))) = (LulPowermode); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}

            if (1U == LddReturnValue)
            {
              


 
              Dem_ReportErrorStatus((Dem_EventIdType)2,
                (Dem_EventStatusType)0x01);
            }
            else
            {
              do
              {
              


 
              }while ((uint32)0x00000001UL ==
              ((Mcu_Stbc0Register_BaseAddress->ulSTPT) & (uint32)0x00000001UL));
            }
            if (0U == LddReturnValue)
            {
              LblMcuMainOscOperation = LpModeSetting->blMcuMainOscOperation;
              if ((boolean)0x00 == LblMcuMainOscOperation)
              {
                LucSelectedSrcClk = Mcu_GpClockSetting->ucSelectedSrcClock;
                if ((uint8)0x01 ==
                           (uint8)(LucSelectedSrcClk & (uint8)0x01))
                {
                   
                  
 
                  if ((uint32)0x00000004UL !=((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
                                                           & (uint32)0x00000004UL))
                  {
                     
                    LddReturnValue = Mcu_MainOscEnable();
                  }
                  else
                  {
                       
                  }
                   
                }
                else
                {
                     
                }
              }
              else
              {
                   
                   
                   
              }
            }
            else
            {
             
            }
            if (0U == LddReturnValue)
            {
              LucSelectedSrcClk = Mcu_GpClockSetting->ucSelectedSrcClock;
              if ((uint8)0x08 ==
                          (uint8)(LucSelectedSrcClk & (uint8)0x08))
              {
                 
                 
                if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) &
                                      (uint32)0x00000004UL))
                {
                   
                  LddReturnValue = Mcu_StartPLL();
                  LblPLLStarted = (boolean)0x01;
                }
                else
                {
                   
                }
                 
              }
              else
              {
                 
              }
              if (((boolean)0x01 == LblPLLStarted) || ((boolean)0x01 == LblPLL0Started))
              {
                LusSafetyCounterPll = (uint16)0x41ABU;
                while (((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS)
                                                             & (uint32)0x00000004UL))
                               && ((uint16)(uint8)0x00 < LusSafetyCounterPll))
                {
                   
                  LusSafetyCounterPll--;
                   
                }

                if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS)
                                                         & (uint32)0x00000004UL))
                {
                   
                  Dem_ReportErrorStatus((Dem_EventIdType)2,
                                                      (Dem_EventStatusType)0x01);
                   
                }
                else
                {
                   
                   
                   
                }
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
            if (0U == LddReturnValue)
            {
               
              LddReturnValue = Mcu_ReinitClockConfiguration();
              if(0U == LddReturnValue)
              {
                 
                LddReturnValue = Mcu_ResumeCpuClock();
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
          }
          else
          {
             
          }
        }
        else
        {
            
        }
        break;
      case (Mcu_ModeType)0x02:
         
        LddReturnValue = Mcu_StandByPrepare((boolean)0x00);
        if (0U == LddReturnValue )
        {
           
          { (*(&Mcu_ResfRegister_BaseAddress->ulRESFC)) = ((uint32)0x000007FFUL); }
          { }
            
           { (*(&Mcu_ResfRegister_BaseAddress->ulRESFCR)) = ((uint32)0x000007FFUL); }
           { }

          if ((boolean)0x01 == LpModeSetting->blModeTransitionReq)
          {
            LucCount = (uint8)5;
             
            LulPowermode = (uint32)0x00000002UL;

            { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(Mcu_Stbc0Register_BaseAddress->ulPSC))) = (LulPowermode); (*(&(Mcu_Stbc0Register_BaseAddress->ulPSC))) = (~(LulPowermode)); (*(&(Mcu_Stbc0Register_BaseAddress->ulPSC))) = (LulPowermode); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}

            if (1U == LddReturnValue)
            {
              


 
              Dem_ReportErrorStatus((Dem_EventIdType)2,
              (Dem_EventStatusType)0x01);
            }
            else
            {
              do
              {
                


 
                __nop();
                __nop();
                __nop();
                __nop();
                __nop();
               
              }while ( (uint8)0x01 == (uint8)0x01 );
               
            }
          }
          else
          {
            

 
          }
        }
        else
        {
           
        }
        break;
           
      default:
        break;
      }
       
       
    }
    else
    {
       
    }
  }
  else
  {
     
  }

}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 































 
 
 
































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_CkscConfigure(uint8 ucCkscRegs,
boolean blDomainType,boolean blPllActiveCheck)
 
{
   
  volatile uint32 * LpVal;
   
  volatile const uint32 * LpValAct;
   
  uint32 LulCkscSourceRegValue;
   
  uint32 LulActiveRegValue;
   
  uint32 LulCkscDividerRegValue;
  uint16 LusStopMaskId;
  uint16 LusSafetyCount;
  uint8 LucStopMaskValue;
   
  uint8 LucNoOfCkscReg;
  uint8 LucCount;
  Std_ReturnType LddReturnValue;
  Std_ReturnType LddReturnCheck;
  volatile uint32 * LpValMirror;
  LpValMirror = ((void *)0);
  LddReturnValue = 0U;
  LddReturnCheck = 0U;
  LucNoOfCkscReg = ucCkscRegs;
   
  LulCkscSourceRegValue = (uint32)0x00000001UL;
   
  while (((uint8)0x00 < LucNoOfCkscReg) && (0U == LddReturnValue))
  {
     
     
    LusStopMaskId = Mcu_GpCkscSetting->usCkscStpmskSelRegNum;
    LucStopMaskValue = Mcu_GpCkscSetting->ucCkscControlval;
     
    Mcu_ReloadClockDomainSTPM(LusStopMaskId,LucStopMaskValue);


    

 
    switch (Mcu_GpCkscSetting->ucCkscSourceSelRegNum)
    {
    case (uint8)4:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJS_CTL;
      break;

    case (uint8)9:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_ACT);
        LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_ACT);
        LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAS_CTL;

      break;

    case (uint8)14:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAS_CTL;
      break;

    case (uint8)19:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_CTL;
      break;

    case (uint8)22:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKS_CTL;
      break;

    case (uint8)49:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_PPLLCLKS_CTL;
      break;

    case (uint8)26:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI1S_CTL;
      break;

    case (uint8)28:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI2S_CTL;
      break;

    case (uint8)30:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ILINS_CTL;
      break;

    case (uint8)32:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_ACT);
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAS_CTL;
      break;

    case (uint8)39:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_ACT);
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_CTL;
      break;

    case (uint8)45:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_ACT);
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_ICSIS_CTL;
      break;

    case (uint8)47:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_ACT);

      LulActiveRegValue = (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_ACT);
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_IIICS_CTL;
      break;

    default:
      LulActiveRegValue = (uint32)0xFFFFFFFFUL;
      break;
    }


     
    if (((uint8)0x01 ==
       ((uint8)(Mcu_GpCkscSetting->ucCkscControlval & (uint8)0x01))) &&
       ((uint8)0 != Mcu_GpCkscSetting->ucCkscSourceSelRegNum) &&
       ((uint32)0xFFFFFFFFUL != LulActiveRegValue))
    {
      LulCkscSourceRegValue =
                             (uint32)Mcu_GpCkscSetting->ucCkscSourceSelRegValue;
       
      if ((volatile uint32 *)0xfff8A000UL == LpVal)
       
      {
        Mcu_GulCpuClockSetting = LulCkscSourceRegValue;
      }
      else
      {
         
      }
      LucCount = (uint8)5;
       
      if ((boolean)0x01 == blDomainType)
      {
         
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(*LpVal))) = (LulCkscSourceRegValue); (*(&(*LpVal))) = (~(LulCkscSourceRegValue)); (*(&(*LpVal))) = (LulCkscSourceRegValue); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
         
         
        { (*(LpValMirror)) = (LulCkscSourceRegValue); }
        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                                  (Dem_EventStatusType)0x01);
        }
        else
        {
           
        }
      }
      else
      {
         
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(*LpVal))) = (LulCkscSourceRegValue); (*(&(*LpVal))) = (~(LulCkscSourceRegValue)); (*(&(*LpVal))) = (LulCkscSourceRegValue); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
         
        { (*(LpValMirror)) = (LulCkscSourceRegValue); }
        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                                      (Dem_EventStatusType)0x01);
        }
        else
        {
           
        }
      }
      LusSafetyCount = (uint16)0x41ABU;
       
       
      while (((*LpValAct) != LulCkscSourceRegValue)
                                         && ((uint16)(uint8)0x00 < LusSafetyCount))
        
      {
          LusSafetyCount--;
      }
      if((Mcu_GpCkscSetting->ucCkscSourceSelRegNum == (uint8)49)
                                  &&(blPllActiveCheck == (boolean)0x00))
      {
        LulCkscSourceRegValue = (uint32)0x00000000UL;
        Mcu_GblPllActCheck = (boolean)0x00;
      }
      else
      {
         Mcu_GblPllActCheck = (boolean)0x01;
      }
       
      if ((*LpValAct) != LulCkscSourceRegValue)
      {
         
        Dem_ReportErrorStatus((Dem_EventIdType)2, (Dem_EventStatusType)0x01);
        LddReturnValue = 1U;
      }
      else
      {
         
      }
    }
    else
    {
       
    }

    

 

    switch (Mcu_GpCkscSetting->ucCkscDividerSelRegNum)
    {
    case (uint8)1:
      if (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_CTL !=
          Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_ACT)
      {
        


 
        Dem_ReportErrorStatus((Dem_EventIdType)2,
        (Dem_EventStatusType)0x01);

         
        LulActiveRegValue = (uint32)0xFFFFFFFFUL;
        LddReturnValue = 1U;
      }
      else
      {
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_ACT);
        LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_ACT;
        LpValMirror = (volatile uint32 *)
           &Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_CTL;
      }
      break;

    case (uint8)6:
      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_ACT);
      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_CTL;
      break;

    case (uint8)11:
      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_ACT);
      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_CTL;
      break;

    case (uint8)16:
      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_ACT);
      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_CTL;
      break;

    case (uint8)24:
      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKD_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKD_ACT);
      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKD_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKD_CTL;
      break;

    case (uint8)34:
      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAD_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAD_ACT);
      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAD_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAD_CTL;
      break;

    case (uint8)42:

      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_ACT);

      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_CTL;
      break;

    case (uint8)36:
      LpVal = (volatile uint32 *)
             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_ACT);
      LulActiveRegValue = Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_ACT;
      LpValMirror = (volatile uint32 *)
         &Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_CTL;
      break;

    default:
      LulActiveRegValue = (uint32)0xFFFFFFFFUL;
      break;
    }

     
    if (((uint8)0x02 ==
       ((uint8)(Mcu_GpCkscSetting->ucCkscControlval & (uint8)0x02))) &&
       ((uint8)0 != Mcu_GpCkscSetting->ucCkscDividerSelRegNum) &&
       ((uint32)0xFFFFFFFFUL != LulActiveRegValue))
    {
      LulCkscDividerRegValue =
      (uint32)Mcu_GpCkscSetting->ucCkscDividerSelRegValue;
      LucCount = (uint8)5;
       
      if ((boolean)0x01 == blDomainType )
      {
         
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(*LpVal))) = (LulCkscDividerRegValue); (*(&(*LpVal))) = (~(LulCkscDividerRegValue)); (*(&(*LpVal))) = (LulCkscDividerRegValue); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnCheck)) = 1U; } else { (*(&LddReturnCheck)) = 0U; }}
         
        { (*(LpValMirror)) = (LulCkscDividerRegValue); }
        if (1U == LddReturnCheck)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
          (Dem_EventStatusType)0x01);
          LddReturnValue = 1U;
        }
        else
        {
           
        }
      }
      else
      {
         
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(*LpVal))) = (LulCkscDividerRegValue); (*(&(*LpVal))) = (~(LulCkscDividerRegValue)); (*(&(*LpVal))) = (LulCkscDividerRegValue); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnCheck)) = 1U; } else { (*(&LddReturnCheck)) = 0U; }}
         
        { (*(LpValMirror)) = (LulCkscDividerRegValue); }
        if (1U == LddReturnCheck)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
          (Dem_EventStatusType)0x01);
          LddReturnValue = 1U;
        }
        else
        {
           
        }
      }
      LusSafetyCount = (uint16)0x41ABU;
      
      while (((*LpValAct) != LulCkscDividerRegValue)
                                         && ((uint16)(uint8)0x00 < LusSafetyCount))
      {
          LusSafetyCount--;
      }
      if ((*LpValAct) != LulCkscDividerRegValue)
      {
         
        Dem_ReportErrorStatus((Dem_EventIdType)2, (Dem_EventStatusType)0x01);
        LddReturnValue = 1U;
      }
      else
      {
         
      }
    }
    else
    {
       
    }

     
    Mcu_GpCkscSetting++;
     
     
    LucNoOfCkscReg--;
  }
  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 


































 































 































 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_StopPLL(void)
{
  Std_ReturnType LddReturnValue;
  uint16 LusSafetyExitCounterPll;
  uint8 LucCount;
   
  LddReturnValue = 0U;
   

   
  LucCount = (uint8)5;
   
   
  { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulPLLE))) = ((uint32)0x00000002UL); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulPLLE))) = (~((uint32)0x00000002UL)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulPLLE))) = ((uint32)0x00000002UL); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
   

  if (1U == LddReturnValue)

  {
    


 
    Dem_ReportErrorStatus((Dem_EventIdType)2,
                          (Dem_EventStatusType)0x01);
  }
  else
  {
     
  }
  LusSafetyExitCounterPll = (uint16)0x41ABU;
  while (((uint32)0x00000000UL != ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) &
                (uint32)0x00000004UL)) &&
                                   ((uint16)(uint8)0x00 < LusSafetyExitCounterPll))
  {
    LusSafetyExitCounterPll--;
  }
  if ((uint32)0x00000000UL != ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL))
  {
    Dem_ReportErrorStatus((Dem_EventIdType)2,
                              (Dem_EventStatusType)0x01);
  }
  else
  {
     
  }
  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_StartPLL(void)
{
  Std_ReturnType LddReturnValue;
  uint8 LucCount;
   
  LddReturnValue = 0U;
   
   
   
  { (*(&Mcu_ClkCtrlReg_BaseAddress->ulPLLC)) = (((Mcu_ClkCtrlReg_BaseAddress->ulPLLC & (~(uint32)0x0000183FUL)) | Mcu_GpClockSetting->ulPLLControlValue)); (*(&Mcu_GddClkCntlRegRamMirror . ulPLLC)) = (((Mcu_ClkCtrlReg_BaseAddress->ulPLLC & (~(uint32)0x0000183FUL)) | Mcu_GpClockSetting->ulPLLControlValue)); };
  { }

  LucCount = (uint8)5;
   
  { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulPLLE))) = ((uint32)0x00000001UL); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulPLLE))) = (~((uint32)0x00000001UL)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulPLLE))) = ((uint32)0x00000001UL); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
   

  if (1U == LddReturnValue)
  {
    


 
    Dem_ReportErrorStatus((Dem_EventIdType)2,
       (Dem_EventStatusType)0x01);
  }
  else
  {
     
  }
  return LddReturnValue;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 




























 

































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_StandByPrepare (boolean
                                                               LblStopModeCheck)
{
  Std_ReturnType LddReturnValue;
  LddReturnValue = Mcu_ShiftClockDomain( (boolean)0x00, LblStopModeCheck);
   
  {
    if ((0U == LddReturnValue ) &&
        ((uint32)0x00000004UL == ((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL)))
    {
      LddReturnValue = Mcu_StopPLL();
    }
    else
    {
       
    }
  }
  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 


































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_MainOscDisable(void)
{
  uint16 LusSafetyExitCounterMainOsc;
  uint8 LucCount;
  Std_ReturnType LddReturnValue;

  LddReturnValue = 0U;

   
  LucCount = (uint8)5;

  { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM)) = ((uint32)0x00000002UL); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCSTPM)) = ((uint32)0x00000002UL); };
  { }

   
  { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = ((uint32)0x00000002UL); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = (~((uint32)0x00000002UL)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = ((uint32)0x00000002UL); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}

  if (1U == LddReturnValue)
  {
    


 
    Dem_ReportErrorStatus((Dem_EventIdType)2,
      (Dem_EventStatusType)0x01);
  }
  else
  {
     
  }
  LusSafetyExitCounterMainOsc = (uint16)0x41ABU;
  while (((uint32)0x00000000UL != ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
        & (uint32)0x00000004UL)) &&
        ((uint16)(uint8)0x00 < LusSafetyExitCounterMainOsc))
  {
    LusSafetyExitCounterMainOsc--;
  }
  if ((uint32)0x00000000UL != ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS)
      & (uint32)0x00000004UL))
  {
    Dem_ReportErrorStatus((Dem_EventIdType)2,
      (Dem_EventStatusType)0x01);
    LddReturnValue = 1U;
  }
  else
  {
     
  }

  return (LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
static  void Mcu_ReloadClockDomainSTPM(
                                 uint16 LusStopMaskId, uint8 LucStopMaskValue)
 
{
  volatile uint32 * LpVal;
  volatile uint32 * LpValMirror;
  LpValMirror = ((void *)0);
  LpVal = ((void *)0);


   
  if ((uint16)0xFFFF != LusStopMaskId)
  {
    

 
     
    switch (LusStopMaskId)
    {
    case (uint8)3:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_STPM;
      break;

    case (uint8)8:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_STPM;
      break;

    case (uint8)13:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_STPM;
      break;

    case (uint8)18:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_STPM;
      break;

    case (uint8)21:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_STPM;
      break;

    case (uint8)38:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_STPM;
      break;

    case (uint8)41:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_STPM;
      break;

    case (uint8)44:
      LpVal = (volatile uint32 *)
          &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_STPM;
      LpValMirror = (volatile uint32 *)
          &Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_STPM;
      break;
     
    default:
       
      break;
    }
     
     
     
     
    if ((((void *)0) != LpVal) && (((void *)0) != LpValMirror))
     
    {
      if ((uint8)0x04 ==
         (uint8)(LucStopMaskValue & (uint8)0x04))
      {
         
        { (*(LpVal)) = ((uint32)0x00000003UL); (*(LpValMirror)) = ((uint32)0x00000003UL); };
        { }
      }
      else
      {
         
        { (*(LpVal)) = ((uint32)0x00000002UL); (*(LpValMirror)) = ((uint32)0x00000002UL); };
        { }

      }
    }
    else
    {
       
    }
  }
  else
  {
     
  }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_ShiftClockDomain (boolean
                                        LblMainOscOff, boolean LblStopModeCheck)
 
{
  volatile uint32 * LpVal;
  volatile const uint32 * LpValAct;
  volatile uint32 * LpProtectRegPtr;
  volatile const uint32 *
                                                     LpProtectRegStatusPtr;
  volatile uint32 * LpValTmp1;
  volatile uint32 * LpValTmp2;
   
  uint32 LulCkscSourceRegValue;
  uint32 LulValue;
  uint32 LulValueTmp1;
  uint32 LulValueTmp2;
  const uint8 * LpOffset;
  uint16 LusStopMaskId;
  uint16 LusSafetyCount;
  uint8 LucOffSet;
  uint8 LucStopMaskValue;
  uint8 LucCountClockDomain;
  uint8 LucCount;
   
  uint8 LucNoOfCkscReg;
  uint8 LucIndex;
  Std_ReturnType LddReturnValue;
  Std_ReturnType LddRegWriteResult;
  volatile uint32 * LpValMirror;
   
  LpValMirror = ((void *)0);
   
   
   
  LpOffset = (const uint8 *)
                                         (Mcu_GpConfigPtr->pClockDomainOffset);
   
   
  LpVal  = ((void *)0);
  LpProtectRegPtr = ((void *)0);
  LpProtectRegStatusPtr = ((void *)0);
  LddReturnValue = 0U;
  LddRegWriteResult = 0U;
  LulValue = (uint32)0x00000000UL;
  LulCkscSourceRegValue = (uint32)0x00000000UL;
   
   

   
   
   
   
  Mcu_GpCkscSetting =
  ((const Mcu_CkscSetting *)
  Mcu_GpClockSetting->pCkscSel);
   
   

   
  LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfIsoCkscReg +
                   Mcu_GpClockSetting->ucNoOfAwoCkscReg +
                   Mcu_GpClockSetting->ucNoOfPllIsoCkscReg +
                   Mcu_GpClockSetting->ucNoOfPllAwoCkscReg;

  for (LucIndex = (uint8)0x00 ;LucIndex < LucNoOfCkscReg; LucIndex++)
  {
     
    LusStopMaskId = Mcu_GpCkscSetting->usCkscStpmskSelRegNum;
    LucStopMaskValue = Mcu_GpCkscSetting->ucCkscControlval;
     
    Mcu_ReloadClockDomainSTPM(LusStopMaskId,LucStopMaskValue);

     
    Mcu_GpCkscSetting++;
     
  }

   
   
  for (LucCountClockDomain = (uint8)0x00 ;
               (uint32)0x00000000UL != LpOffset[LucCountClockDomain];
                                                          LucCountClockDomain++)
   
   
  {

     
    LucOffSet = LpOffset[LucCountClockDomain];
      

     
    switch (LucOffSet)
    {
    case (uint8)4 :
         
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS0);
        LpVal =(volatile uint32 *)
                         &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_ACT);
        LulValue = (uint32)(*LpVal);
         

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
            if ((uint32)0x00000002UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else if ((uint32)0x00000004UL == LulValue)
            {
              if ((uint32)0x00000002UL == LulValueTmp1)
              {
                LulCkscSourceRegValue = (uint32)0x00000001UL;
              }
              else if (((uint32)0x00000003UL == LulValueTmp1)
                  && ((uint32)0x00000001UL == LulValueTmp2))
              {
                LulCkscSourceRegValue = (uint32)0x00000001UL;
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
          }
           
          else
          {
            if (((uint32)0x00000002UL == LulValue)
                || ((uint32)0x00000004UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else
            {
               
            }
          }
        }
         
        else
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
             
          }
           
          else
          {
            if ((uint32)0x00000004UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else
            {
               
            }
          }
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJS_CTL;
      break;
    case (uint8)9 :
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS0);
        LpVal =(volatile uint32 *)
                         &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_ACT);
        LulValue = (uint32)(*LpVal);
        if (((boolean)0x01 == LblMainOscOff) && ((uint32)0x00000002UL == LulValue))
        {
          LulCkscSourceRegValue = (uint32)(uint8)0x03;
        }
        else
        {
          LulCkscSourceRegValue = LulValue;
        }
        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAS_CTL;
      break;
    case (uint8)14:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS0);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
            if ((uint32)0x00000002UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else if ((uint32)0x00000003UL == LulValue)
            {
              if ((uint32)0x00000002UL == LulValueTmp1)
              {
                LulCkscSourceRegValue = (uint32)0x00000001UL;
              }
              else if (((uint32)0x00000003UL == LulValueTmp1)
                  && ((uint32)0x00000001UL == LulValueTmp2))
              {
                LulCkscSourceRegValue = (uint32)0x00000001UL;
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
          }
           
          else
          {
            if (((uint32)0x00000002UL == LulValue)
                || ((uint32)0x00000003UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else
            {
               
            }
          }
        }
         
        else
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
             
          }
           
          else
          {
            if ((uint32)0x00000003UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else
            {
               
            }
          }
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAS_CTL;
      break;
    case (uint8)19:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS0);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
            if ((uint32)0x00000001UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000002UL;
            }
            else if (((uint32)0x00000005UL == LulValue)
                || ((uint32)0x00000006UL == LulValue))
            {
              if ((uint32)0x00000002UL == LulValueTmp1)
              {
                LulCkscSourceRegValue = (uint32)0x00000002UL;
              }
              else if (((uint32)0x00000003UL == LulValueTmp1)
                  && ((uint32)0x00000001UL == LulValueTmp2))
              {
                LulCkscSourceRegValue = (uint32)0x00000002UL;
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
          }
           
          else
          {
            if (((uint32)0x00000001UL == LulValue)
              || ((uint32)0x00000005UL == LulValue)
              || ((uint32)0x00000006UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000002UL;
            }
            else
            {
               
            }
          }
        }
         
        else
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
             
          }
           
          else
          {
            if (((uint32)0x00000005UL == LulValue)
                || ((uint32)0x00000006UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000002UL;
            }
            else
            {
               
            }
          }
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_CTL;
      break;
    case (uint8)22:
      LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
      LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
      LpVal =(volatile uint32 *)
                            &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_ACT);
      LulValue = (uint32)(*LpVal);
      if ((((boolean)0x01 == LblMainOscOff) &&
                                  ( (uint32)0x00000002UL == LulValue))||
                                              ((uint32)0x00000003UL == LulValue))
      {
        LulCkscSourceRegValue = (uint32)0x00000001UL;
      }
      else
      {
        LulCkscSourceRegValue = LulValue;
      }
      LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKS_CTL;
      break;
    case (uint8)49:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_ACT);
          LulValue = (uint32)(*LpVal);
        if ((((boolean)0x01 == LblMainOscOff) &&
                                   ( (uint32)0x00000002UL == LulValue))
                                           || ((uint32)0x00000003UL == LulValue))
        {
          LulCkscSourceRegValue = (uint32)0x00000001UL;
        }
        else
        {
          LulCkscSourceRegValue = LulValue;
        }
        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_PPLLCLKS_CTL;
      break;
    case (uint8)26:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
          if (((uint32)0x00000001UL == LulValue)
              || ((uint32)0x00000002UL == LulValue))
          {
            if ((uint32)0x00000002UL == LulValueTmp1)
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else if (((uint32)0x00000003UL == LulValueTmp1)
                && ((uint32)0x00000001UL == LulValueTmp2))
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else
            {
               
            }
          }
          else
          {
             
          }
        }
         
        else
        {
           
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI1S_CTL;
      break;
    case (uint8)28:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                             &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
          if (((uint32)0x00000001UL == LulValue)
              || ((uint32)0x00000002UL == LulValue))
          {
            if ((uint32)0x00000002UL == LulValueTmp1)
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else if (((uint32)0x00000003UL == LulValueTmp1)
                && ((uint32)0x00000001UL == LulValueTmp2))
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else
            {
               
            }
          }
          else
          {
             
          }
        }
         
        else
        {
           
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI2S_CTL;
      break;
    case (uint8)30:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
            if ((uint32)0x00000002UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000004UL;
            }
            else if (((uint32)0x00000001UL == LulValue)
                || ((uint32)0x00000003UL == LulValue))
            {
              if ((uint32)0x00000002UL == LulValueTmp1)
              {
                LulCkscSourceRegValue = (uint32)0x00000004UL;
              }
              else if (((uint32)0x00000003UL == LulValueTmp1)
                  && ((uint32)0x00000001UL == LulValueTmp2))
              {
                LulCkscSourceRegValue = (uint32)0x00000004UL;
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
          }
           
          else
          {
            if (((uint32)0x00000001UL == LulValue)
                || ((uint32)0x00000002UL == LulValue)
                || ((uint32)0x00000003UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000004UL;
            }
            else
            {
               
            }
          }
        }
         
        else
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
             
          }
           
          else
          {
            if (((uint32)0x00000001UL == LulValue)
                || ((uint32)0x00000003UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000004UL;
            }
            else
            {
               
            }
          }
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ILINS_CTL;
      break;
    case (uint8)32 :
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
          if ((uint32)0x00000002UL == LulValue)
          {
            LulCkscSourceRegValue = (uint32)0x00000001UL;
          }
          else if ((uint32)0x00000003UL == LulValue)
          {
            if ((uint32)0x00000002UL == LulValueTmp1)
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else if (((uint32)0x00000003UL == LulValueTmp1)
                && ((uint32)0x00000001UL == LulValueTmp2))
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else
            {
               
            }
          }
          else
          {
             
          }
        }
         
        else
        {
           
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAS_CTL;
      break;
    case (uint8)39 :
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
            if ((uint32)0x00000001UL == LulValue)
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else if (((uint32)0x00000002UL == LulValue)
                || ((uint32)0x00000003UL == LulValue))
            {
              if ((uint32)0x00000002UL == LulValueTmp1)
              {
                LulCkscSourceRegValue = (uint32)0x00000000UL;
              }
              else if (((uint32)0x00000003UL == LulValueTmp1)
                  && ((uint32)0x00000001UL == LulValueTmp2))
              {
                LulCkscSourceRegValue = (uint32)0x00000000UL;
              }
              else
              {
                 
              }
            }
            else
            {
               
            }
          }
           
          else
          {
            LulCkscSourceRegValue = (uint32)0x00000000UL;
          }
        }
         
        else
        {
           
          if ((boolean)0x01 == LblStopModeCheck)
          {
             
          }
           
          else
          {
            if (((uint32)0x00000002UL == LulValue)
                || ((uint32)0x00000003UL == LulValue))
            {
              LulCkscSourceRegValue = (uint32)0x00000001UL;
            }
            else
            {
               
            }
          }
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_CTL;
      break;
    case (uint8)45:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
          if (((uint32)0x00000001UL == LulValue)
              || ((uint32)0x00000002UL == LulValue))
          {
            if ((uint32)0x00000002UL == LulValueTmp1)
            {
              LulCkscSourceRegValue = (uint32)0x00000004UL;
            }
            else if (((uint32)0x00000003UL == LulValueTmp1)
                && ((uint32)0x00000001UL == LulValueTmp2))
            {
              LulCkscSourceRegValue = (uint32)0x00000004UL;
            }
            else
            {
               
            }
          }
          else if ((uint32)0x00000003UL == LulValue)
          {
            LulCkscSourceRegValue = (uint32)0x00000004UL;
          }
          else
          {
             
          }
        }
         
        else
        {
           
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ICSIS_CTL;
      break;
    case (uint8)47:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

         
        LpValTmp2 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
        LulValueTmp2 = (uint32)(*LpValTmp2);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
          if (((uint32)0x00000001UL == LulValue)
              || ((uint32)0x00000002UL == LulValue))
          {
            if ((uint32)0x00000002UL == LulValueTmp1)
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else if (((uint32)0x00000003UL == LulValueTmp1)
                && ((uint32)0x00000001UL == LulValueTmp2))
            {
              LulCkscSourceRegValue = (uint32)0x00000000UL;
            }
            else
            {
               
            }
          }
          else
          {
             
          }
        }
         
        else
        {
           
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_IIICS_CTL;
      break;
    case (uint8)42:
        LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1);
        LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS1);
        LpVal =(volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_CTL;
        LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_ACT);
        LulValue = (uint32)(*LpVal);

         
        LpValTmp1 = (volatile uint32 *)
                        &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_CTL;
        LulValueTmp1 = (uint32)(*LpValTmp1);

        LulCkscSourceRegValue = LulValue;

         
        if ((boolean)0x01 == LblMainOscOff)
        {
          if (((uint32)0x00000001UL == LulValue)
              || ((uint32)0x00000002UL == LulValue))
          {
            LulCkscSourceRegValue = (uint32)0x00000000UL;
          }
          else
          {
             
          }
        }
         
        else
        {
          if ((uint32)0x00000001UL == LulValueTmp1)
          {
            LulCkscSourceRegValue = (uint32)0x00000002UL;
          }
          else
          {
             
          }
        }

        LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_CTL;
      break;
    default :
      LpProtectRegPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0);
      LpProtectRegStatusPtr = &(Mcu_WriteProtReg_BaseAddress->ulPROTS0);
      LpVal =(volatile uint32 *)
                           &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_CTL;
      LpValAct = &(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_ACT);
      LulValue = (uint32)(*LpVal);
      LulCkscSourceRegValue = LulValue;
      LpValMirror = (volatile uint32 *)&Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJS_CTL;
      break;
    }

    if ((LulCkscSourceRegValue != LulValue) &&
         (((void *)0) != LpProtectRegStatusPtr) && (((void *)0) != LpProtectRegPtr))
    {
      LucCount = (uint8)5;

       
      { do { (*(&(*LpProtectRegPtr))) = (uint32)0x000000A5; (*(&(*LpVal))) = (LulCkscSourceRegValue); (*(&(*LpVal))) = (~(LulCkscSourceRegValue)); (*(&(*LpVal))) = (LulCkscSourceRegValue); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(*LpProtectRegStatusPtr))))); if ((uint32)0x00000001UL == (*(&(*LpProtectRegStatusPtr)))) { (*(&LddRegWriteResult)) = 1U; } else { (*(&LddRegWriteResult)) = 0U; }}
       

       
      { (*(LpValMirror)) = (LulCkscSourceRegValue); }
      if (1U == LddRegWriteResult)
      {
        


 
        Dem_ReportErrorStatus((Dem_EventIdType)2,
                                  (Dem_EventStatusType)0x01);
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      LusSafetyCount = (uint16)0x41ABU;
       
       
      while (((*LpValAct) != LulCkscSourceRegValue)
                                         && ((uint16)(uint8)0x00 < LusSafetyCount))
       
      {
        LusSafetyCount--;
      }
      if((LucOffSet == (uint8)49) &&
                                              (Mcu_GblPllActCheck == (boolean)0x00))
      {
        LulCkscSourceRegValue = (uint32)0x00000000UL;
      }
       else
      {
         
      }
       
      if ((*LpValAct) != LulCkscSourceRegValue)
      {
         
        Dem_ReportErrorStatus((Dem_EventIdType)2, (Dem_EventStatusType)0x01);
        LddReturnValue = 1U;
      }
      else
      {
         
      }
    }
    else
    {
       
    }
  }

  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 

































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
static  Std_ReturnType Mcu_ReinitClockConfiguration(void)
{
  Std_ReturnType LddReturnValue;
  uint8 LucNoOfCkscReg;
  uint8 LucCkscSettingOffset;
  boolean blPllActiveCheck;

  LddReturnValue = (Std_ReturnType)0U;

   
   
  Mcu_GpCkscSetting =
  ((const Mcu_CkscSetting *)
  Mcu_GpClockSetting->pCkscSel);
   

   
  LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfIsoCkscReg;
   
  blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
   
  blPllActiveCheck = Mcu_IsoCkscCheck(LucNoOfCkscReg, blPllActiveCheck);
   
  LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x01,
                                                              blPllActiveCheck);
  if (0U == LddReturnValue )
  {
     
     
     
    Mcu_GpCkscSetting =
    (((const Mcu_CkscSetting *)
    Mcu_GpClockSetting->pCkscSel) + Mcu_GpClockSetting->ucNoOfIsoCkscReg);
     
     
     
    LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfAwoCkscReg;
     
    blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
     
    LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x00,
                                                             blPllActiveCheck);
    if (0U == LddReturnValue )
    {
       
      Mcu_GpCkscSetting =
      ((const Mcu_CkscSetting *)
      &Mcu_GstCkscSetting[Mcu_GpClockSetting->ucCkscSelOffset
                                 + Mcu_GpClockSetting->ucCkscPllIndexOffset]);
       
      LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfPllIsoCkscReg;
       
      blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
       
      blPllActiveCheck = Mcu_IsoCkscCheck(LucNoOfCkscReg, blPllActiveCheck);
       
      LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x01,
                                                              blPllActiveCheck);
      if (0U == LddReturnValue )
      {
        LucCkscSettingOffset = Mcu_GpClockSetting->ucCkscPllIndexOffset
                              + Mcu_GpClockSetting->ucNoOfPllIsoCkscReg
                              + Mcu_GpClockSetting->ucCkscSelOffset;
         
        Mcu_GpCkscSetting =
        ((const Mcu_CkscSetting *)
        &Mcu_GstCkscSetting[LucCkscSettingOffset]);
         
        LucNoOfCkscReg = Mcu_GpClockSetting->ucNoOfPllAwoCkscReg;
         
        blPllActiveCheck = Mcu_GpClockSetting->blPllActCheck;
         
        LddReturnValue = Mcu_CkscConfigure(LucNoOfCkscReg, (boolean)0x00,
                                                             blPllActiveCheck);
      }
      else
      {
         
      }
    }
    else
    {
       
    }
  }
  else
  {
     
  }
  return LddReturnValue;
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_MainOscEnable(void)
{
  uint8 LucSelectedSrcClk;
  Std_ReturnType LddReturnValue;
  uint32 LulMainClockStabCount;
  uint32 LulMOSCSTPM;
  uint8 LucCount;
   
  LddReturnValue = 0U;
   
     
     
    LucSelectedSrcClk = Mcu_GpClockSetting->ucSelectedSrcClock;
     
     
    if ((uint8)0x01 ==
                             (uint8)(LucSelectedSrcClk & (uint8)0x01))
    {
       
      { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCC)) = (((uint32)(Mcu_GpClockSetting->ucMosccRegValue) | (uint32)0x00000004UL)); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCC)) = (((uint32)(Mcu_GpClockSetting->ucMosccRegValue) | (uint32)0x00000004UL)); };
      { }

       
      { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCST)) = (Mcu_GpClockSetting->ulMainOscStabTime); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCST)) = (Mcu_GpClockSetting->ulMainOscStabTime); };
      { }
       

       
      LddReturnValue = Mcu_MainOscDefault();
       
      if(0U == LddReturnValue)
      {
        if ((uint8)0x01 ==
           (uint8)(Mcu_GpClockSetting->ucSelectedSTPMK & (uint8)0x01))
        {
          LulMOSCSTPM = Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM;
           
          { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM)) = ((LulMOSCSTPM | (uint32)0x00000001UL)); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCSTPM)) = ((LulMOSCSTPM | (uint32)0x00000001UL)); };
          { }
        }
        else
        {
           
          { (*(&Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM)) = ((uint32)0x00000002UL); (*(&Mcu_GddClkCntlRegRamMirror . ulMOSCSTPM)) = ((uint32)0x00000002UL); };
          { }
        }
         
         
        LulMainClockStabCount = Mcu_GpConfigPtr->ulMainClockStabCount;
         
        while (((uint32)0x00000000UL  ==
          ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS) & (uint32)0x00000004UL)) &&
                                   ((uint32)0x00000000UL < LulMainClockStabCount))
        {
          LulMainClockStabCount--;
        }
        if ((uint32)0x00000004UL != ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS) &
                                                             (uint32)0x00000004UL))
        {
           
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                             (Dem_EventStatusType)0x01);
          LddReturnValue = 1U;
        }
        else
        {
           
        }
      }
      else
      {
         
      }
       
       
      if ((0U == LddReturnValue) &&
          ((uint8)0x00 == (uint8)(Clma1Reg_BaseAddress->ucCTL0 & (uint8)0x01)))
       
      {
        


 
        { (*(&Clma1Reg_BaseAddress->usCMPH)) = (Mcu_GpClockSetting->usCLMA1CMPH); (*(&Mcu_GddClkMntrReg1RamMirror . usCMPH)) = (Mcu_GpClockSetting->usCLMA1CMPH); };
        { }

        


 
        { (*(&Clma1Reg_BaseAddress->usCMPL)) = (Mcu_GpClockSetting->usCLMA1CMPL); (*(&Mcu_GddClkMntrReg1RamMirror . usCMPL)) = (Mcu_GpClockSetting->usCLMA1CMPL); };
        { }

        LucCount = (uint8)5;
         
         
        { do { (*(&(Clma1Reg_BaseAddress->ucPCMD))) = (uint32)0x000000A5; (*(&(Clma1Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (*(&(Clma1Reg_BaseAddress->ucCTL0))) = (~((uint8)0x01)); (*(&(Clma1Reg_BaseAddress->ucCTL0))) = ((uint8)0x01); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Clma1Reg_BaseAddress->ucPS))))); if ((uint32)0x00000001UL == (*(&(Clma1Reg_BaseAddress->ucPS)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
         
         
         
        { (*(&Mcu_GddClkMntrReg1RamMirror . ucCTL0)) = ((uint8)0x01); }
        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                    (Dem_EventStatusType)0x01);
        }
        else
        {
           
        }
      }
      else
      {
         
      }
    }
    else
    {
      LddReturnValue = Mcu_MainOscDefault();
    }
  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
static  Std_ReturnType Mcu_ResumeCpuClock (void)
{
  boolean LblCpuClockFlag;
  uint8 LucCount;
  Std_ReturnType LddReturnValue;
  LblCpuClockFlag = (boolean)0x00;
  LddReturnValue = 0U;
   
   
  if (((uint32)0x00000000UL != WufReg_BaseAddress->ulWUF0) ||
    ((uint32)0x00000000UL !=  WufIsoReg_BaseAddress->ulWUF0)
     )
   
  {
     
    if ((uint32)Mcu_GulCpuClockSetting !=
               (uint32)((Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL)))
     
    {
      if ((uint32)0x00000002UL == (uint32)Mcu_GulCpuClockSetting)
      {
         
        if ((uint32)0x00000004UL == ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCS) &
                                                             (uint32)0x00000004UL))
        {
          LblCpuClockFlag = (boolean)0x01;
        }
        else
        {
           
        }
      }
      else if ((uint32)0x00000003UL == (uint32)Mcu_GulCpuClockSetting)
      {
         
        if ((uint32)0x00000004UL ==((Mcu_ClkCtrlReg_BaseAddress->ulPLLS) & (uint32)0x00000004UL))
        {
          LblCpuClockFlag = (boolean)0x01;
        }
        else
        {
           
        }
      }
      else
      {
        LblCpuClockFlag = (boolean)0x00;
      }
      if ((boolean)0x01 == LblCpuClockFlag)
      {
         
        LucCount = (uint8)5;

         
        { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD1))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL))) = ((uint32)(Mcu_GulCpuClockSetting)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL))) = (~((uint32)(Mcu_GulCpuClockSetting))); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL))) = ((uint32)(Mcu_GulCpuClockSetting)); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS1)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
         
         
        { (*(&Mcu_GddClkCntlRegRamMirror . ulCKSC_CPUCLKS_CTL)) = ((uint32)(Mcu_GulCpuClockSetting)); }

        if (1U == LddReturnValue)
        {
          


 
          Dem_ReportErrorStatus((Dem_EventIdType)2,
                                          (Dem_EventStatusType)0x01);
        }
        else
        {
           
        }
      }
      else
      {
         
      }
    }
    else
    {
      

 
    }
  }
  else
  {
     
  }
  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




























 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 
 
 
 
 
 
 
static  Std_ReturnType Mcu_MainOscDefault(void)
{
  uint8 LucCount;
  Std_ReturnType LddReturnValue;
   
  LddReturnValue = 0U;
   
  LucCount = (uint8)5;
   
  { do { (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTCMD0))) = (uint32)0x000000A5; (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = ((uint32)0x00000001UL); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = (~((uint32)0x00000001UL)); (*(&(Mcu_ClkCtrlReg_BaseAddress->ulMOSCE))) = ((uint32)0x00000001UL); (LucCount)= (LucCount) - (uint8)0x01; } while (((uint8)0x00 < (LucCount)) && ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0))))); if ((uint32)0x00000001UL == (*(&(Mcu_WriteProtReg_BaseAddress->ulPROTS0)))) { (*(&LddReturnValue)) = 1U; } else { (*(&LddReturnValue)) = 0U; }}
   

  if (1U == LddReturnValue)
  {
    


 
    Dem_ReportErrorStatus((Dem_EventIdType)2,
                            (Dem_EventStatusType)0x01);
  }
  else
  {
     
  }
  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






























 































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 
 
 
 
 
 
 
 void Mcu_WakeUpFactor_Preparation
                                                     (Mcu_ModeType McuMode)
 
{
  const Mcu_ModeSetting * LpModeSetting;
  SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION();
   
  LpModeSetting = (const Mcu_ModeSetting *)&Mcu_GstModeSetting
             [(Mcu_GpConfigPtr->ucModeSettingOffset) + McuMode ];
   
  SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION();
  SchM_Enter_Mcu_MCU_REGISTER_PROTECTION();
   
   
  { (*(&WufReg_BaseAddress->ulWUFMSK0)) = ((uint32)0xFFFFFFFFUL); }
  { }
  { (*(&WufIsoReg_BaseAddress->ulWUFMSK0)) = ((uint32)0xFFFFFFFFUL); }
  { }

   
  { (*(&WufReg_BaseAddress->ulWUFC0)) = (((uint32)0x82FFFFE7UL)); }

  { (*(&WufIsoReg_BaseAddress->ulWUFC0)) = (((uint32)0x000001FEUL)); }
  { }
   
  { (*(&WufReg_BaseAddress->ulWUFMSK0)) = (LpModeSetting->ulPowerDownWakeupType0); }
  { }
  { (*(&WufIsoReg_BaseAddress->ulWUFMSK0)) = (LpModeSetting->ulPowerDownWakeupTypeISO0); }
  { }
   
  SchM_Exit_Mcu_MCU_REGISTER_PROTECTION();

  Mcu_GblWakeUpPreparation = (uint8)0x01;

}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 void Mcu_GetVersionInfo
       (Std_VersionInfoType * versioninfo)
 
{

  
  if (((void *)0) == versioninfo)
  {
     
    (void)Det_ReportError(101U, 0U,
                                  (uint8)0x09,(uint8)0x10);
  }
  else
  {
     
    versioninfo->vendorID = (uint16)59U;
     
    versioninfo->moduleID = (uint16)101U;
     
    versioninfo->sw_major_version = 1U;
     
    versioninfo->sw_minor_version = 2U;
     
    versioninfo->sw_patch_version = 6U;
  }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 



































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 
 

 
 
 
 
 
 
 
 Std_ReturnType Mcu_CheckHWConsistency(
                      const Mcu_HWConsistencyCheckType CheckType)
{
   
  Std_ReturnType LddReturnValue = 0U;
  SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION();

   
  if ((boolean)0x00 ==  Mcu_GblDriverStatus)
  {
    (void)Det_ReportError(101U, 0U,
                          (uint8)0x10, (uint8)0x0F);
    LddReturnValue = 1U;
  }
  else
  {
    if (MCU_HW_CONSIST_CHECK_STATIC == CheckType)
    {
       
    }
    else if (MCU_HW_CONSIST_CHECK_DYNAMIC == CheckType)
    {
       
      if ((Clma0Reg_BaseAddress->usCMPH
              != Mcu_GddClkMntrReg0RamMirror.usCMPH) ||
              (Clma0Reg_BaseAddress->usCMPL
              != Mcu_GddClkMntrReg0RamMirror.usCMPL) ||
              (Clma0Reg_BaseAddress->ucCTL0
              != Mcu_GddClkMntrReg0RamMirror.ucCTL0))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      if ((Clma1Reg_BaseAddress->usCMPH
              != Mcu_GddClkMntrReg1RamMirror.usCMPH) ||
              (Clma1Reg_BaseAddress->usCMPL
              != Mcu_GddClkMntrReg1RamMirror.usCMPL) ||
              (Clma1Reg_BaseAddress->ucCTL0
              != Mcu_GddClkMntrReg1RamMirror.ucCTL0))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      if ((Clma2Reg_BaseAddress->usCMPH
              != Mcu_GddClkMntrReg2RamMirror.usCMPH) ||
              (Clma2Reg_BaseAddress->usCMPL
              != Mcu_GddClkMntrReg2RamMirror.usCMPL) ||
              (Clma2Reg_BaseAddress->ucCTL0
              != Mcu_GddClkMntrReg2RamMirror.ucCTL0))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      if (Mcu_ClkCtrlReg_BaseAddress->ulFOUTDIV
             != Mcu_GddClkCntlRegRamMirror.ulFOUTDIV)
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      if ((Mcu_ClkCtrlReg_BaseAddress->ulMOSCC
              != Mcu_GddClkCntlRegRamMirror.ulMOSCC) ||
              (Mcu_ClkCtrlReg_BaseAddress->ulMOSCST
              != Mcu_GddClkCntlRegRamMirror.ulMOSCST) ||
              (Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM
              != Mcu_GddClkCntlRegRamMirror.ulMOSCSTPM))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }

      if (Mcu_ClkCtrlReg_BaseAddress->ulROSCS
              != Mcu_GddClkCntlRegRamMirror.ulROSCS)
      {
        LddReturnValue = 1U;
      }
      else if (Mcu_ClkCtrlReg_BaseAddress->ulROSCSTPM
              != Mcu_GddClkCntlRegRamMirror.ulROSCSTPM)
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      if ((Mcu_ClkCtrlReg_BaseAddress->ulPLLC
              != Mcu_GddClkCntlRegRamMirror.ulPLLC) ||
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_PLLIS_CTL))
      {
        LddReturnValue = 1U;
      }
      else
      {
         
      }
      if ((((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_STPM)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_STPM) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_STPM
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_STPM)))
      {
        LddReturnValue = 1U;
      }
      else if ((((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKD_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAD_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_CTL)))
      {
        LddReturnValue = 1U;
      }
      else if ((((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_PPLLCLKS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_PPLLCLKS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI1S_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI1S_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI2S_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI2S_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ILINS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ILINS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_ICSIS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_CTL
              != Mcu_GddClkCntlRegRamMirror.ulCKSC_ICSIS_CTL)) ||
              (((uint32)0x00000000UL !=
              Mcu_GddClkCntlRegRamMirror.ulCKSC_IIICS_CTL) &&
              (Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_CTL
               != Mcu_GddClkCntlRegRamMirror.ulCKSC_IIICS_CTL)))
      {
         LddReturnValue = 1U;
      }
      else
      {
         
      }
     
    }
    else
    {
       
    }
  }
  SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION();

  return(LddReturnValue);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 
 
static  void Mcu_InitRamMirror(void)
{



 
 Mcu_GddClkMntrReg0RamMirror.usCMPH = Clma0Reg_BaseAddress->usCMPH;
 
 Mcu_GddClkMntrReg0RamMirror.usCMPL = Clma0Reg_BaseAddress->usCMPL;
 Mcu_GddClkMntrReg0RamMirror.ucCTL0 = Clma0Reg_BaseAddress->ucCTL0;
 
 Mcu_GddClkMntrReg1RamMirror.usCMPH = Clma1Reg_BaseAddress->usCMPH;
 
 Mcu_GddClkMntrReg1RamMirror.usCMPL = Clma1Reg_BaseAddress->usCMPL;
 Mcu_GddClkMntrReg1RamMirror.ucCTL0 = Clma1Reg_BaseAddress->ucCTL0;
 
 Mcu_GddClkMntrReg2RamMirror.usCMPH = Clma2Reg_BaseAddress->usCMPH;
 
 Mcu_GddClkMntrReg2RamMirror.usCMPL = Clma2Reg_BaseAddress->usCMPL;
 Mcu_GddClkMntrReg2RamMirror.ucCTL0 = Clma2Reg_BaseAddress->ucCTL0;

 
 Mcu_GddClkCntlRegRamMirror.ulFOUTDIV = Mcu_ClkCtrlReg_BaseAddress->ulFOUTDIV;
 

 Mcu_GddClkCntlRegRamMirror.ulMOSCC = Mcu_ClkCtrlReg_BaseAddress->ulMOSCC;
 Mcu_GddClkCntlRegRamMirror.ulMOSCST = Mcu_ClkCtrlReg_BaseAddress->ulMOSCST;
 Mcu_GddClkCntlRegRamMirror.ulMOSCSTPM =
  Mcu_ClkCtrlReg_BaseAddress->ulMOSCSTPM;

 Mcu_GddClkCntlRegRamMirror.ulROSCS = Mcu_ClkCtrlReg_BaseAddress->ulROSCS;
 Mcu_GddClkCntlRegRamMirror.ulROSCSTPM =
  Mcu_ClkCtrlReg_BaseAddress->ulROSCSTPM;
 Mcu_GddClkCntlRegRamMirror.ulPLLC = Mcu_ClkCtrlReg_BaseAddress->ulPLLC;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_PLLIS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PLLIS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_STPM =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_STPM;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AWDTAD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AWDTAD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ILIND_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILIND_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANOSCD_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANOSCD_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ATAUJS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ATAUJS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ARTCAS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ARTCAS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AADCAS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AADCAS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_AFOUTS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_AFOUTS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_CPUCLKS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_CPUCLKS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_PPLLCLKS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_PPLLCLKS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI1S_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_IPERI2S_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ILINS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_IADCAS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ICANS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_ICSIS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_CTL;
 Mcu_GddClkCntlRegRamMirror.ulCKSC_IIICS_CTL =
  Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_CTL;
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
static  boolean Mcu_IsoCkscCheck(uint8 ucCkscRegs,
boolean blPllActiveCheck)
 
{
  const Mcu_CkscSetting * LpCkscSetting;
  volatile uint32 * LpVal;
  boolean blPllActiveFlag;
  uint8 LucCkscCheckBit;
  uint8 LucCkscCheckVal;
  uint8 LucIndex;
  uint8 LucNoOfCkscReg;
  uint32 LulValue;

   
  LpVal = ((void *)0);
   
  blPllActiveFlag = (boolean)0x00;
   
  LucCkscCheckBit = (uint8)0x00;
   
  LucCkscCheckVal = (uint8)0x7F;
  LucNoOfCkscReg = ucCkscRegs;
   
  LulValue = (uint32)0x00000001UL;
   

  LpCkscSetting = Mcu_GpCkscSetting;

  if (blPllActiveCheck == (boolean)0x00)
  {
    while ((uint8)0x00 < LucNoOfCkscReg)
    {
       
       
      switch (LpCkscSetting->ucCkscSourceSelRegNum)
       
      {
      case (uint8)26:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x01)));
        break;
      case (uint8)28:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x02)));
        break;
      case (uint8)30:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x04)));
        break;
      case (uint8)32:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x08)));
        break;
      case (uint8)39:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x10)));
        break;
      case (uint8)45:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x20)));
        break;
      case (uint8)47:
        LucCkscCheckVal = (LucCkscCheckVal & ((uint8)(~(uint8)0x40)));
        break;
       
      default:
         
        break;
      }
       
       
      LpCkscSetting++;
       
       
      LucNoOfCkscReg--;
    }

    for (LucIndex = (uint8)0x00 ;LucIndex < (uint8)0x07; LucIndex++)
    {
      LucCkscCheckBit = LucCkscCheckVal & ((uint8)((uint8)0x01 << LucIndex));
      switch (LucCkscCheckBit)
      {
      case (uint8)0x01:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI1S_CTL;
        LulValue = (uint32)(*LpVal);
         
        if ((LulValue == (uint32)0x00000001UL) || (LulValue == (uint32)0x00000002UL))
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
      case (uint8)0x02:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IPERI2S_CTL;
        LulValue = (uint32)(*LpVal);
         
        if ((LulValue == (uint32)0x00000001UL) || (LulValue == (uint32)0x00000002UL))
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
      case (uint8)0x04:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ILINS_CTL;
        LulValue = (uint32)(*LpVal);
         
        if ((LulValue == (uint32)0x00000001UL) ||
           (LulValue == (uint32)0x00000003UL))
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
      case (uint8)0x08:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IADCAS_CTL;
        LulValue = (uint32)(*LpVal);
         
        if (LulValue == (uint32)0x00000003UL)
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
      case (uint8)0x10:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICANS_CTL;
        LulValue = (uint32)(*LpVal);
         
        if ((LulValue == (uint32)0x00000002UL) ||
          (LulValue == (uint32)0x00000003UL))
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
      case (uint8)0x20:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_ICSIS_CTL;
        LulValue = (uint32)(*LpVal);
         
        if ((LulValue == (uint32)0x00000001UL) || (LulValue == (uint32)0x00000002UL))
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
      case (uint8)0x40:
         
         
        LpVal = (volatile uint32 *)
               &Mcu_ClkCtrlReg_BaseAddress->ulCKSC_IIICS_CTL;
        LulValue = (uint32)(*LpVal);
         
        if ((LulValue == (uint32)0x00000001UL) || (LulValue == (uint32)0x00000002UL))
        {
          blPllActiveFlag = (boolean)0x01;
        }
        else
        {
           
        }
        break;
       
      default:
         
        break;
      }
       
    }
  }
  else
  {
    blPllActiveFlag = (boolean)0x01;
  }

  return(blPllActiveFlag);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




 
