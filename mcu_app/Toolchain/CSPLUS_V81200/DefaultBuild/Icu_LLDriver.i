 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


















































































































































































































































 
 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 



















































 
 




 



 



 



 



 


 
typedef unsigned int        uinteger;        



 


 



 











 













 













 













 













 













 











 












 











 













 













 













 













 













 













 











 











 










 












 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 



 
 

 

 



 


 



 



 



 




 



 



 


 
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







 
 








 

 



















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








































 
 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


void __LDSR(int regID, int selID, unsigned int val);

unsigned int __STSR(int regID, int selID);







 



 




 






 


 



 


 



 



 

 
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







 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 



















 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















 
 



 


 


 







 



 




 

 

 




 

 






 



 

 

 

 
 

 

 

 

 

 

 
 
 
 
 
 
 
 

 
 
 

 
 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 
 
 

 

 
 
 
 
 

 

 
 
 

 
 
 

 
 
 

 

 

 
 
 

 
 
 

 

 


 

 

 


 


 


 

 


 

 


 


 


 


 

 

 

 

 

 
 

 

 
 

 
 

 
 

 
 

 
 

 
 

 
 

 

 




 
 


 
 



 

 

 
 
 

 
 




 



 




 



 
 

 

 

 
 
 
 
 
 
 
 
typedef struct STag_Icu_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  const void * pChannelConfig;
   
  const void * pTimerChannelConfig;
   
  const void * pHWUnitConfig;

   
   
   
  void * pRamAddress;
   
  void * pSignalMeasureAddress;
   
  void * pTimeStampAddress;
   
  void * pEdgeCountRamAddress;
} Icu_ConfigType;


 
 
 
 
typedef enum ETag_Icu_ModeType
{
  ICU_MODE_NORMAL,
  ICU_MODE_SLEEP
} Icu_ModeType;


 
 
typedef enum ETag_Icu_HWConsistencyModeType
{
  ICU_STATIC = 0,
  ICU_DYNAMIC
}Icu_HWConsistencyModeType;




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


















 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 


 


 







 




 












 












 
 



















































































































 




 





































































































 



 












 












 













 












 



 
 




















 
 


 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 













 












 




 
 




















 
 

 




 



 



 



 
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






 



 

 

 




 



 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_APPL_CODE_ROM"




 
 



 

 
 
extern  void Icu_Edge_Detect_KL30 (void);
 
 
extern  void Icu_Edge_Detect_NAD (void);
 
 
extern  void Icu_Edge_Detect_EcallBtn (void);
 
 
extern  void Icu_Edge_Detect_Imu_Int1 (void);
 
 
extern  void Icu_Edge_Detect_Imu_int2 (void);
 
 
extern  void Icu_Edge_Detect_Rtc_Int (void);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 




 

 
 




 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 



 
 


 
 
 
 
 


















 
 
 
 

















 
 
 

















 
 
 


















 
 
 
 
 
 


















 
 


















 
 


















 
 



















 
 
 
 




















 
 
 
 


















 
 



















 
 
 
 



















 
 



















 
 
 
 




 

 
 
 
 












 












 



 



 



 












 












 



 



 


 
 




















 
 




 



 
 
 
 



 

 
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

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 











 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 

























































































 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








































 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 











 
 



 


 


 







 



 




 

 

 



 
 









 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".ICU_CFG_DATA_UNSPECIFIED"




 
 



 

 
extern volatile TAUDBOsReg* const
                      Icu_GaaTAUDBOsReg_BaseAddress[0x1U];

 

 

 
extern volatile TAUDBUserReg* const
                  Icu_GaaTAUDBUserReg_BaseAddress[0x1U];

 

 

 
extern volatile TAUDBChReg* const
                      Icu_GaaTAUDBChReg_BaseAddress[0x2U];

 
 

 
extern volatile  FCLAReg* const Icu_GpfclaReg_BaseAddress;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 



 




 




 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 


 
 

 



 
 
 
 
 

 
 

 
 
 
 
 

 
 

 
 
 

 

 
 

 
 
 
 

 
 
 
 
 

 
 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 
   
   




 



 
 



 
 
typedef struct STag_Icu_TAUUnitConfigType
{
  uint8 ucTAUUserCntlRegIndx;

  uint8 ucTAUOsCntlRegIndx;


   
  uint16 usPrescaler;
  



 
  uint8  ucIcuUnitType;
   
  uint16 usTAUSyncMaskValue;
  boolean blConfigurePrescaler:1;
} Icu_TAUUnitConfigType;



 
 



 
 
typedef struct STag_Icu_ChannelRamDataType
{
  uinteger uiChannelStatus:1;
  uinteger uiWakeupEnable:1;
  uinteger uiNotificationEnable:1;
  uinteger uiChannelMeasurementRunning:1;
  uinteger uiResultComplete:1;
} Icu_ChannelRamDataType;



 
 
typedef struct STag_Icu_EdgeCountChannelRamDataType
{
  uinteger uiTimerOvfFlag:1;
  uint16 usIcuEdgeCount;
} Icu_EdgeCountChannelRamDataType;



 
 
 
 
 
typedef struct STag_Icu_TimeStampChannelRamDataType
{
  uint32 * pBufferPointer;
  uint16 usBufferSize;
  uint16 usTimestampIndex;
  uint16 usTimestampsCounter;
  uint16 usNotifyInterval;
} Icu_TimeStampChannelRamDataType;



 
 
typedef struct STag_Icu_SignalMeasureChannelRamDataType
{
  uint32 ulSignalActiveTime;
  uint32 ulSignalPeriodTime;
  uint32 ulPrevSignalActiveTime;
} Icu_SignalMeasureChannelRamDataType;



 
 
typedef struct STag_Icu_TimerChannelConfigType
{

  uint16 usChannelModeOSRegSettings;
  











 
  uint8 ucChannelModeUserRegSettings;
   
  uint8 ucTimerUnitIndex;
   
  uint8 ucRamDataIndex;
  
























 
   
   
   
   
   
   
   

  uint8 ucChannelProperties;

} Icu_TimerChannelConfigType;



 
 
typedef struct STag_Icu_TAUDBChannelRegMirror
{
  uint8 ucMirrorTAUDBnCMURm;
} Icu_TAUDBChannelRegMirror;




 




 
 
typedef struct STag_Icu_FclaRegsMirror
{
  uint8 ucMirrorFCLA0CTLm;
} Icu_FclaRegsMirror;




 
 
typedef struct STag_Icu_ChannelConfigType
{
   
   
   
  void (*pIcuNotificationPointer)(void);

  uint8 ucCntlRegsIndx;

   
  volatile uint16 * pLevelReadPprAddress;

   
  volatile uint16 * pIntrCntlAdress;
   
   
   
   
   
   

  EcuM_WakeupSourceType ddEcuMChannelWakeupInfo;

   
  uint16 usChannelMaskValue;

   
  uint16  usPortMaskValue;
   
  

 
  uint8 ucIcuPortType;

  


 
   
   
   
   
  uinteger uiIcuMeasurementMode:2;
   
  


 
    
    
  uinteger uiIcuDefaultStartEdge:2;
   
  



 
  uinteger uiIcuChannelType:2;
   
   
  uinteger uiIcuWakeupCapability:1;
   
  uinteger uiIcuDisableEcumWakeupNotification :1;
  uinteger uiIcuSyncStartReq:1;
} Icu_ChannelConfigType;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".ICU_CFG_DATA_UNSPECIFIED"




 
 



 

 
 
 
extern const Icu_ChannelConfigType Icu_GstChannelConfig[];
 

 
 
 
extern const Icu_TimerChannelConfigType
                                                Icu_GstTimerChannelConfig[];
 
 

 
 
 
extern const Icu_TAUUnitConfigType Icu_GstTAUUnitConfig[];
 

 

extern volatile uint8 * const
                                   Icu_GaaReg_8bit[(uint8)7];
extern volatile uint8 * const
                             Icu_GaaRegMirror_8bit[(uint8)7];

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"



 

 
 
 
extern Icu_ChannelRamDataType Icu_GstChannelRamData[];
 

 
 
 
extern Icu_TimeStampChannelRamDataType
                                                     Icu_GstTimestampRamData[];
 

 
 
 
extern Icu_SignalMeasureChannelRamDataType
                                                 Icu_GstSignalMeasureRamData[];
 

 
 
 
extern Icu_EdgeCountChannelRamDataType
                                                     Icu_GstEdgeCountRamData[];
 

 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda

 
 
 



 



 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 



 

 
 
 
 
 
 
 
 
 
 
 
 


 




 
 

 
 
 



 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"



 

 
extern const Icu_ChannelConfigType *
                                                        Icu_GpChannelConfig;

 
extern const Icu_TimerChannelConfigType *
                                                   Icu_GpTimerChannelConfig;

 
extern const Icu_TAUUnitConfigType *
                                                        Icu_GpTAUUnitConfig;

 

 

 
extern Icu_ChannelRamDataType *
                                                       Icu_GpChannelRamData;

 
extern Icu_EdgeCountChannelRamDataType * Icu_GpEdgeCountData;

 
extern Icu_TimeStampChannelRamDataType * Icu_GpTimeStampData;

 
extern Icu_SignalMeasureChannelRamDataType * Icu_GpSignalMeasurementData;

 
extern Icu_TAUDBChannelRegMirror
                                Icu_GaaTAUDBChannelRegMirror[8U];


 
extern Icu_FclaRegsMirror
                                Icu_GaaFclaRegsMirror[8U];


 
extern Icu_ModeType Icu_GenModuleMode;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda

 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_32BIT"



 
 
extern EcuM_WakeupSourceType Icu_GulWakeupSource;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_1BIT"



 
 
extern boolean Icu_GblDriverStatus;

 
extern boolean Icu_GblSyncInitStatus;

 
extern boolean Icu_GblSyncStartStatus;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sdata=default
   #pragma ghs endsda




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_8BIT"



 

 
extern uint8 Icu_GaaChannelMeasureStatus[8U];

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda




 



 




 



 
 

 



 



 




 



 
 
 
 
 
 

 

 



 



 

 

 
 
 
 
 
 
 
 
 
 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 


 
 



 

 
 



 

 
 

 
 

 



 

 
 

 



 

 



 

 
 



 

 



 

 



 

 



 

 



 

 



 

 



 

 


 






 
 
 
 
typedef uint8 Icu_ChannelType;

 
 
 
typedef enum ETag_Icu_InputStateType
{
  ICU_ACTIVE,
  ICU_IDLE
} Icu_InputStateType;

 
 
 
typedef enum ETag_Icu_LevelType
{
  ICU_LOW = 0,
  ICU_HIGH
} Icu_LevelType;

 
 
 
typedef enum ETag_Icu_ActivationType
{
  ICU_FALLING_EDGE,
  ICU_RISING_EDGE,
  ICU_BOTH_EDGES
} Icu_ActivationType;

 
 
 
typedef uint32 Icu_ValueType;

 
 
 
typedef struct STag_Icu_DutyCycleType
{
  Icu_ValueType ActiveTime;
  Icu_ValueType PeriodTime;
} Icu_DutyCycleType;

 
 
 
typedef uint16 Icu_IndexType;

 
 
 
typedef uint16 Icu_EdgeNumberType;

 
 
 
typedef uint32 Icu_CounterValueType;

 
 
 
typedef enum ETag_Icu_MeasurementModeType
{
  ICU_MODE_SIGNAL_EDGE_DETECT,
  ICU_MODE_SIGNAL_MEASUREMENT,
  ICU_MODE_TIMESTAMP,
  ICU_MODE_EDGE_COUNTER
} Icu_MeasurementModeType;

 
 
 
typedef enum ETag_Icu_SignalMeasurementPropertyType
{
  ICU_LOW_TIME,
  ICU_HIGH_TIME,
  ICU_PERIOD_TIME,
  ICU_DUTY_CYCLE
} Icu_SignalMeasurementPropertyType;

 
 
 
typedef enum ETag_Icu_TimestampBufferType
{
  ICU_LINEAR_BUFFER,
  ICU_CIRCULAR_BUFFER
} Icu_TimestampBufferType;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PUBLIC_CODE_ROM"




 
 



 

extern  void Icu_Init
(const Icu_ConfigType * ConfigPtr);

extern  void Icu_DeInit(void);

extern  void Icu_SetMode(Icu_ModeType Mode);

extern  void Icu_DisableWakeup(Icu_ChannelType Channel);

extern  void Icu_EnableWakeup(Icu_ChannelType Channel);

extern  void Icu_CheckWakeup
(EcuM_WakeupSourceType WakeupSource);

extern  void Icu_SetActivationCondition
(Icu_ChannelType Channel, Icu_ActivationType Activation);

extern  void Icu_DisableNotification
(Icu_ChannelType Channel);

extern  void Icu_EnableNotification
(Icu_ChannelType Channel);

 
 
extern  Icu_InputStateType Icu_GetInputState
(Icu_ChannelType Channel);

extern  Icu_LevelType Icu_GetInputLevel
(Icu_ChannelType Channel);

extern  void Icu_StartTimestamp(Icu_ChannelType Channel,
Icu_ValueType *BufferPtr,
uint16 BufferSize, uint16 NotifyInterval);

extern  void Icu_StopTimestamp (Icu_ChannelType Channel);

extern  Icu_IndexType Icu_GetTimestampIndex
(Icu_ChannelType Channel);

extern  void Icu_ResetEdgeCount(Icu_ChannelType Channel);

extern  void Icu_EnableEdgeCount(Icu_ChannelType Channel);

extern  void Icu_DisableEdgeCount
(Icu_ChannelType Channel);

extern  Icu_EdgeNumberType Icu_GetEdgeNumbers
(Icu_ChannelType Channel);

extern  void Icu_EnableEdgeDetection
(Icu_ChannelType Channel);

extern  void Icu_DisableEdgeDetection
(Icu_ChannelType Channel);

extern  void Icu_StartSignalMeasurement
(Icu_ChannelType Channel);

extern  void Icu_StopSignalMeasurement
(Icu_ChannelType Channel);

extern  Icu_ValueType Icu_GetTimeElapsed
(Icu_ChannelType Channel);

extern  void
Icu_GetDutyCycleValues(Icu_ChannelType Channel,
Icu_DutyCycleType * DutyCycleValues);

extern  Icu_CounterValueType Icu_GetTAUInCountValue
(Icu_ChannelType Channel);

extern  void Icu_SynchronousInit (void);
extern  void Icu_SynchronousStart (void);
extern  void Icu_SynchronousStop (void);
extern  void Icu_SynchronousDeInit (void);

extern  Std_ReturnType Icu_CheckHWConsistency
                                  (Icu_HWConsistencyModeType HWConsistencyMode);

extern  void Icu_GetVersionInfo
       (Std_VersionInfoType * versioninfo);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".ICU_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
extern const Icu_ConfigType Icu_GstConfiguration[];
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 

















 
 

 


 

 
 
 
 
 
 
 
 
 
 
 
 


 
 



 
 

 
 
 



 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 

 
extern  void Icu_HW_EdgeCountingInit
(const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig);

 
extern  void Icu_HW_TimestampInit
(const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig);

 
extern  void Icu_HW_SignalMeasurementInit
(const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig);

 
extern  void Icu_HW_Init(void);

 
extern  void Icu_HW_SetActivation
(Icu_ChannelType Channel, Icu_ActivationType ActiveEdge, uint8 LucSid);

 
extern  void Icu_HW_DeInit(void);

 
extern  void Icu_HW_SynchronousInit (void);
 
extern  void Icu_HW_SynchronousStart (void);
 
extern  void Icu_HW_SynchronousStop (void);
 
extern  void Icu_HW_SynchronousDeInit (void);

 
extern  void Icu_HW_SetMode(Icu_ModeType Mode);

 
extern  void
Icu_HW_ResetEdgeCount(Icu_ChannelType Channel);

 
extern  void Icu_HW_StartCountMeasurement
(Icu_ChannelType Channel, uint8 LucSid);

 
extern  void Icu_HW_StopCountMeasurement
(Icu_ChannelType Channel, uint8 LucSid);

 
extern  void Icu_HW_GetEdgeNumbers
(Icu_ChannelType Channel);

 
extern  void Icu_HW_EnableEdgeDetection
(Icu_ChannelType Channel);

 
extern  void Icu_HW_DisableEdgeDetection
(Icu_ChannelType Channel);


 
extern  Icu_LevelType Icu_HW_GetInputLevel
(Icu_ChannelType Channel);

 
extern  Icu_CounterValueType Icu_HW_GetTAUInCountValue
(Icu_ChannelType Channel);


 
extern  Std_ReturnType Icu_HWCheckConsistency
(Icu_HWConsistencyModeType HWConsistencyMode);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_FAST_CODE_ROM"




 
 



 

 
extern  void Icu_ServiceSignalMeasurement
(Icu_ChannelType Channel);

 
extern  void Icu_ServiceTimestamp
(Icu_ChannelType Channel, uint32 LulCapturedTimestampVal);

 
extern  void Icu_TimerIsr(Icu_ChannelType Channel);

 
extern  void Icu_ExternalInterruptIsr
(Icu_ChannelType Channel);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
 
 
 




 
 
   #pragma ghs section text=default

 
 
 



 



 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 



 



 



 



 



 



 

extern void SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION(void);
extern void SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION(void);

extern void SchM_Enter_Icu_ICU_TIMESTAMP_DATA_PROTECTION(void);
extern void SchM_Exit_Icu_ICU_TIMESTAMP_DATA_PROTECTION(void);

extern void SchM_Enter_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION(void);
extern void SchM_Exit_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION(void);

extern void SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION(void);
extern void SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION(void);




 




 
 

 



 







 
 

 






 

 

 
 
 
 
 
 
 
 
 

 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 

 
 
 
 
 
 
 
 
 
 
 

 

 
 
 
 
 
 
 
 
 

 

 
 
 
 
 
 
 
 
 
 

 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 



 




































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 

 
 void Icu_HW_Init(void)
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

   
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;
   
   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;
   
   
  TAUDBOsReg volatile *
  LpTAUDBUnitOsReg;
   

   
  TAUDBChReg volatile *
  LpTAUDBChannelReg;


   

   
  Icu_ActivationType LenDefaultActivation;
   
  Icu_MeasurementModeType LenMeasurementMode;
  uint8 LucCnt;

   
  LpChannelConfig = Icu_GpChannelConfig;

  


 
  LpTimerChannelConfig = Icu_GpTimerChannelConfig;
   
   
  LpTAUUnitConfig = Icu_GpTAUUnitConfig;
   
    
    
  for (LucCnt = (uint8)0x00; LucCnt < 1U; LucCnt++)
  {
     
     
    if (((uint8)0x01 == LpTAUUnitConfig->ucIcuUnitType) ||
                           ((uint8)0x02 == LpTAUUnitConfig->ucIcuUnitType))
     
    {
     
      


 
        
      if ((boolean)0x01 == LpTAUUnitConfig->blConfigurePrescaler)
        
      {
        LpTAUDBUnitOsReg =
            Icu_GaaTAUDBOsReg_BaseAddress[LpTAUUnitConfig->ucTAUOsCntlRegIndx];

         
         
        { (*(&LpTAUDBUnitOsReg->usTPS)) = (LpTAUUnitConfig->usPrescaler); }
         
         
        { if ((LpTAUUnitConfig->usPrescaler) != ((*(&LpTAUDBUnitOsReg->usTPS)) & ((uint16)0xFFFF))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

      }  
      else
      {
         
      }
    } 


 
    else  
    {
     

    }  

     
     
     
    LpTAUUnitConfig++;
     
     

  }  

   

   
   
    
    
  for (LucCnt = (uint8)0x00; LucCnt < 2U; LucCnt++)
  {
     

     
     
     
    LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
     
     
     
    if (((uint8)0x01 == LpChannelConfig->uiIcuChannelType) ||
                             ((uint8)0x02 == LpChannelConfig->uiIcuChannelType))
     
    {

      


 
      LpTAUDBChannelReg =
                Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];

       
       
      { (*(&LpTAUDBChannelReg->usCMOR)) = (LpTimerChannelConfig->usChannelModeOSRegSettings); }
       
       
      { if ((LpTimerChannelConfig->usChannelModeOSRegSettings) != ((*(&LpTAUDBChannelReg->usCMOR)) & ((uint16)0xFFFF))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

       
      { { (*(&LpTAUDBChannelReg->ucCMUR)) = (LpTimerChannelConfig->ucChannelModeUserRegSettings); (*(&Icu_GaaTAUDBChannelRegMirror[LucCnt]. ucMirrorTAUDBnCMURm)) = (LpTimerChannelConfig->ucChannelModeUserRegSettings); } }
       
      { if ((LpTimerChannelConfig->ucChannelModeUserRegSettings) != ((*(&LpTAUDBChannelReg->ucCMUR)) & ((uint8) 0x03))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

       
      if (ICU_MODE_EDGE_COUNTER == LenMeasurementMode)
      {
         
        { (*(&LpTAUDBChannelReg->usCDR)) = ((uint16)0xFFFF); }
         
         
        { if (((uint16)0xFFFF) != ((*(&LpTAUDBChannelReg->usCDR)) & ((uint16)0xFFFF))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
         
      }  
      else if (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode)
      {
         
        { (*(&LpTAUDBChannelReg->ucCSC)) = ((uint8)0x01); }
         
         
        { if (((uint8)0x00) != ((*(&LpTAUDBChannelReg->ucCSR)) & ((uint8) 0x01))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
         
      }  
      else
      {
         
         
      }
       
       
      (*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))))|(((uint8)0x80U))));
       
    } 


 
     
    else if ((uint8)0x03 == LpChannelConfig->uiIcuChannelType)
     
    {
    }  

    else
    {
       
    }

     
    switch (LenMeasurementMode)
    {
       
       
      case ICU_MODE_EDGE_COUNTER:
      {
         
        Icu_HW_EdgeCountingInit(LpTimerChannelConfig);
        break;
      }
       
      case ICU_MODE_TIMESTAMP:
      {
         
        Icu_HW_TimestampInit(LpTimerChannelConfig);
        break;
      }
       
      case ICU_MODE_SIGNAL_MEASUREMENT:
      {
         
        Icu_HW_SignalMeasurementInit(LpTimerChannelConfig);
        break;
      }
      default:
       
      {
         
        break;
      }
    }  
     

     
     
    LpChannelConfig++;
     


     
     
     
    LpTimerChannelConfig++;
     
     
    


 
  }  
   
   
   
   
   
  for (LucCnt = 2U; LucCnt < 8U;
                                                                       LucCnt++)
   
   
   
  {
     
     
     
    LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
     
     

    if (ICU_MODE_SIGNAL_EDGE_DETECT == LenMeasurementMode)
    {
       
       
       
      LenDefaultActivation = (Icu_ActivationType)
        LpChannelConfig->uiIcuDefaultStartEdge;
       

       
       
      (*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))))|(((uint8)0x80U))));
       

       
      Icu_HW_SetActivation(LucCnt, LenDefaultActivation, (uint8)0x00);
    }
    else
    {
       
    }

     
     
     
    LpChannelConfig++;
     
     
  }  
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 void Icu_HW_DeInit(void)
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

   
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;

   
  TAUDBChReg volatile *
  LpTAUDBChannelReg;


   
  volatile uint16 * LpIntrCntlReg;

   
   
  Icu_MeasurementModeType LenMeasurementMode;
  uint8 LucCnt;

   
  LpChannelConfig = Icu_GpChannelConfig;

  LpTimerChannelConfig = Icu_GpTimerChannelConfig;

   

  for (LucCnt = (uint8)0x00; LucCnt < 8U; LucCnt++)
  {
     
     
    if (((uint8)0x01 == LpChannelConfig->uiIcuChannelType)
       || ((uint8)0x02 == LpChannelConfig->uiIcuChannelType))
     
     
    {
       
       
      LenMeasurementMode = (Icu_MeasurementModeType)
        (LpChannelConfig->uiIcuMeasurementMode);
       

      LpTAUDBChannelReg =
               Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];

       
      if (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode)
      {
         
         
         
         
        { (*(&LpTAUDBChannelReg->ucCSC)) = ((uint8)0x01); }
         
         
         
        { if (((uint8)0x00) != ((*(&LpTAUDBChannelReg->ucCSR)) & ((uint8) 0x01))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
         
      }
      else
      {
         
         
      }

       
      { (*(&LpTAUDBChannelReg->usCMOR)) = ((uint16)0x0000); }
       
       
      { if (((uint16)0x0000) != ((*(&LpTAUDBChannelReg->usCMOR)) & ((uint16)0xFFFF))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

       
      { (*(&LpTAUDBChannelReg->usCDR)) = ((uint16)0x0000); }
       
      { if (((uint16)0x0000) != ((*(&LpTAUDBChannelReg->usCDR)) & ((uint16)0xFFFF))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

       
      { { (*(&LpTAUDBChannelReg->ucCMUR)) = ((uint8)0x00); (*(&Icu_GaaTAUDBChannelRegMirror[LucCnt]. ucMirrorTAUDBnCMURm)) = ((uint8)0x00); } }
       
      { if (((uint8)0x00) != ((*(&LpTAUDBChannelReg->ucCMUR)) & ((uint8) 0x03))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
    } 


 
    else if ((uint8)0x03 == LpChannelConfig->uiIcuChannelType)
        
    {
    }  

    else
    {
       
    }
     
    LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
     

    (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))|(((uint8)0x80U))));
     

     
     
     
    LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
     
     
    if (ICU_MODE_SIGNAL_EDGE_DETECT == LenMeasurementMode)
    {
       
       
      { { (*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x00); (*(&Icu_GaaFclaRegsMirror[LucCnt]. ucMirrorFCLA0CTLm)) = ((uint8)0x00); } }
       
       
       
      { if (((uint8)0x00) != ((*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
    }  
       

    else
    {
       
    }

     
     
    LpChannelConfig++;
     


     
     
     
    LpTimerChannelConfig++;
     
     

  }  
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 void Icu_HW_EdgeCountingInit
(const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig)
 
{
   
  uint8 LucIndex;
   

  LucIndex = LpTimerChannelConfig->ucRamDataIndex;
   

   
   
   
   
  Icu_GpEdgeCountData[LucIndex].uiTimerOvfFlag = (boolean)0x00;
   
   
   

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 void Icu_HW_TimestampInit
(const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig)
 
{
   
  uint8 LucIndex;
   
   
  LucIndex = LpTimerChannelConfig->ucRamDataIndex;
   
   
   
   
  Icu_GpTimeStampData[LucIndex].usTimestampIndex = (uint8)0x00;
   
   
  Icu_GpTimeStampData[LucIndex].pBufferPointer = ((void *)0);
   
   
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 void Icu_HW_SignalMeasurementInit
(const Icu_TimerChannelConfigType *
                                                           LpTimerChannelConfig)
 
{
   
  uint8 LucIndex;

   
   
  LucIndex = LpTimerChannelConfig->ucRamDataIndex;
   

   
   
   
   
  Icu_GpSignalMeasurementData[LucIndex].ulSignalActiveTime =
                                                     (uint8)0x00;
   
   
  Icu_GpSignalMeasurementData[LucIndex].ulSignalPeriodTime =
                                                     (uint8)0x00;
   
  Icu_GpSignalMeasurementData[LucIndex].ulPrevSignalActiveTime =
                                                     (uint8)0x00;
   
   

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 void Icu_HW_SetActivation
(Icu_ChannelType Channel, Icu_ActivationType ActiveEdge, uint8 LucSid)
 
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

  Icu_MeasurementModeType LenMeasurementMode;
   
  TAUDBChReg volatile * LpTAUDBChannelReg;
   
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;
  uint8 LucIndex;
   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   
  


 
   
   
  


 
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];
   
   

   
   
   
  LenMeasurementMode =
               (Icu_MeasurementModeType)(LpChannelConfig->uiIcuMeasurementMode);
   
   
  if (ICU_MODE_SIGNAL_EDGE_DETECT == LenMeasurementMode)
  {
   
    if ((uint8)0x00 == LpChannelConfig->uiIcuChannelType)
   
    {
       
       
      { { (*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x00); (*(&Icu_GaaFclaRegsMirror[Channel]. ucMirrorFCLA0CTLm)) = ((uint8)0x00); } }
       
       
       
      { if (((uint8)0x00) != ((*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

      if (ICU_BOTH_EDGES == ActiveEdge)
      {
         
        { { (*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x03); (*(&Icu_GaaFclaRegsMirror[Channel]. ucMirrorFCLA0CTLm)) = ((uint8)0x03); } }
         
        { if (((uint8)0x03) != ((*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
      }  

      else if (ICU_FALLING_EDGE == ActiveEdge)
      {
         
        { { (*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x02); (*(&Icu_GaaFclaRegsMirror[Channel]. ucMirrorFCLA0CTLm)) = ((uint8)0x02); } }
         
        { if (((uint8)0x02) != ((*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
      }  

      else  
      {
         
        { { (*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x01); (*(&Icu_GaaFclaRegsMirror[Channel]. ucMirrorFCLA0CTLm)) = ((uint8)0x01); } }
         
        { if (((uint8)0x01) != ((*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
         
      }  
    }
    else
    {
       
       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
      LpTAUDBChannelReg =
                Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];
       
       
      { { (*(&LpTAUDBChannelReg->ucCMUR)) = ((uint8)ActiveEdge); (*(&Icu_GaaTAUDBChannelRegMirror[Channel]. ucMirrorTAUDBnCMURm)) = ((uint8)ActiveEdge); } }
       

       
      { if (((uint8)ActiveEdge) != ((*(&LpTAUDBChannelReg->ucCMUR)) & ((uint8) 0x03))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
       
       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
    }  
  }  

  else  
  {
    {
       
       
       
      SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION();
       
      LpTAUDBChannelReg =
                Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];
      if (ICU_MODE_EDGE_COUNTER == LenMeasurementMode)
      {
         
         
        LucIndex = LpTimerChannelConfig->ucRamDataIndex;
         

         

         
         
         
        if ((boolean)0x00 == Icu_GpEdgeCountData[LucIndex].uiTimerOvfFlag)
         
         
         
        {
           
          { { (*(&LpTAUDBChannelReg->ucCMUR)) = ((uint8)ActiveEdge); (*(&Icu_GaaTAUDBChannelRegMirror[Channel]. ucMirrorTAUDBnCMURm)) = ((uint8)ActiveEdge); } }

           
          { if (((uint8)ActiveEdge) != ((*(&LpTAUDBChannelReg->ucCMUR)) & ((uint8) 0x03))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
        }  
        else
        {
           
        }
      }  

      else  
      {
         
        { { (*(&LpTAUDBChannelReg->ucCMUR)) = ((uint8)ActiveEdge); (*(&Icu_GaaTAUDBChannelRegMirror[Channel]. ucMirrorTAUDBnCMURm)) = ((uint8)ActiveEdge); } }
         
        { if (((uint8)ActiveEdge) != ((*(&LpTAUDBChannelReg->ucCMUR)) & ((uint8) 0x03))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
      }  
       
       
       
      SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION();
       
    } 


 
    {
       
    }  


  } 

 

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 































 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 void Icu_HW_SetMode(Icu_ModeType Mode)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

   
  volatile uint16 * LpIntrCntlReg;
   
  uint8 LucWakeupStatus;
   
  uint8 LucChannelNo;
   
  uint8 LucNotifStatus;

  for (LucChannelNo = (uint8)0x00; LucChannelNo < 8U; LucChannelNo++)
  {
     
     
     
    LpChannelConfig = &Icu_GpChannelConfig[LucChannelNo];
     
    LucWakeupStatus = Icu_GpChannelRamData[LucChannelNo].uiWakeupEnable;
     
     
    LucNotifStatus = Icu_GpChannelRamData[LucChannelNo].uiNotificationEnable;
     

     
     
    LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
     
     
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     

     
    if ((boolean)0x00 == LucWakeupStatus)
    {
      if (ICU_MODE_SLEEP == Mode)
      {
         
         
        (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))|(((uint8)0x80U))));
         
      }  

      else  
      {
         
         
        if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
        {
           
           
           
           
           
          (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF)))); (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress)))); __syncp();
           
           
           
        }  
        else
        {
           
        }
        
 
        if ((boolean)0x01 == LucNotifStatus)
        {
          if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
          {
             
             
            (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))&(((uint8)0x7FU))));
             
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
       
    }
     
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     

  }  

   
  Icu_GenModuleMode = Mode;

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 




































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 void Icu_HW_StartCountMeasurement
(Icu_ChannelType Channel, uint8 LucSid)
 
 
{
   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;
    
  const Icu_ChannelConfigType * LpChannelConfig;
    
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;
   
  Icu_MeasurementModeType LenMeasurementMode;

   
  volatile uint16 * LpIntrCntlReg;
   
  TAUDBUserReg volatile *
  LpTAUDBUnitUserReg;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];

   
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];

   
   
  LpTAUUnitConfig =
                  &Icu_GpTAUUnitConfig[LpTimerChannelConfig->ucTimerUnitIndex];
   
   
   
   
   
   
  SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

   
   
  if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
   
  {
     
     
     
     
     
     
    (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF)))); (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress)))); __syncp();
     
     
     
    LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
    (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))&(((uint8)0x7FU))));
     
     
     
  }  
  else
  {
     
  }
   
   
  LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
   
   
   
   
  SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

  if (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode)
  {
     
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     

     
     
     
     
    Icu_GpChannelRamData[Channel].uiResultComplete = (uinteger)(boolean)0x00;
     
     
     

     
    Icu_GaaChannelMeasureStatus[Channel] = (uint8)0x01;

     
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
    


 
      
    if ((uint8)0x04 ==
    (LpTimerChannelConfig->ucChannelProperties&(uint8)0x04))
     
    {
       
       
       
       
      LpChannelConfig = &Icu_GpChannelConfig[Channel] + (uint8)0x01;
       

       
       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
       

      Icu_GpChannelRamData[Channel + (uint8)0x01].uiResultComplete =
                                                           (uinteger)(boolean)0x00;
       
       

       
      Icu_GaaChannelMeasureStatus[Channel + (uint8)0x01]
                                  = (uint8)0x01;

       
      if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
      {
         
         
         
         
         
         
        (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF)))); (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress)))); __syncp();
         
         
        LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
         
        (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))&(((uint8)0x7FU))));
         
         
         
      }  
      else
      {
         
      }
       
       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
    }
    else
    {
       
    }
  }
  else
  {
     
  }

  {
     
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
     
    LpTAUDBUnitUserReg =
        Icu_GaaTAUDBUserReg_BaseAddress[LpTAUUnitConfig->ucTAUUserCntlRegIndx];
     
    { (*(&LpTAUDBUnitUserReg->usTT)) = (LpChannelConfig->usChannelMaskValue); }
     
     
    { if (((uint16)0x0000) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

     
    { (*(&LpTAUDBUnitUserReg->usTS)) = (LpChannelConfig->usChannelMaskValue); }
     
    { if ((LpChannelConfig->usChannelMaskValue) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

     
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
  }
  {
     
  }

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 


































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 void Icu_HW_StopCountMeasurement
(Icu_ChannelType Channel, uint8 LucSid)
 
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
    
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;
   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;
   
  Icu_MeasurementModeType LenMeasurementMode;
   
  volatile uint16 * LpIntrCntlReg;
   
  TAUDBUserReg volatile *
  LpTAUDBUnitUserReg;


   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];

   
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];

   
   
  LpTAUUnitConfig =
                  &Icu_GpTAUUnitConfig[LpTimerChannelConfig->ucTimerUnitIndex];
   
   
   

   
   
   
  SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

   
   
  LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
  (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))|(((uint8)0x80U))));
   


   
   
  SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

   
   
  LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
   
  if (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode)
  {
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     

     
    Icu_GaaChannelMeasureStatus[Channel] = (uint8)0x00;

     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     

    


 
      
    if ((uint8)0x04 ==
    (LpTimerChannelConfig->ucChannelProperties&(uint8)0x04))
     
    {
       
       
       
       
      LpChannelConfig = &Icu_GpChannelConfig[Channel] + (uint8)0x01;
       
       
       

       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
       

       
      Icu_GaaChannelMeasureStatus[Channel + (uint8)0x01]
                                  = (uint8)0x00;

       
      LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
       
      (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))|(((uint8)0x80U)))) ;
       

       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
    }
    else
    {
       
    }
  }
  else
  {
     
  }

  {
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
     
    LpTAUDBUnitUserReg =
        Icu_GaaTAUDBUserReg_BaseAddress[LpTAUUnitConfig->ucTAUUserCntlRegIndx];
     
    { (*(&LpTAUDBUnitUserReg->usTT)) = (LpChannelConfig->usChannelMaskValue); }
     
     
    { if (((uint16)0x0000) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }

     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
  }
  {
  }

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 
 
 
 void Icu_HW_GetEdgeNumbers(Icu_ChannelType Channel)
 
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

  

 
  const Icu_TimerChannelConfigType *
                                                           LpTimerChannelConfig;

   
  Icu_EdgeCountChannelRamDataType *
                                                                LpEdgeCountData;

  TAUDBChReg volatile * LpTAUDBChannelReg;
  uint8 LucRamIndex;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];

   
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];

   
   
  LucRamIndex = LpTimerChannelConfig->ucRamDataIndex;
   
   
  LpEdgeCountData = &Icu_GpEdgeCountData[LucRamIndex];
   
   
   
  LpTAUDBChannelReg = Icu_GaaTAUDBChReg_BaseAddress
                                           [LpChannelConfig->ucCntlRegsIndx];
   
   
  SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

   
  LpEdgeCountData->usIcuEdgeCount =
                        LpTAUDBChannelReg->usCDR - LpTAUDBChannelReg->usCNT;
   

   
   
  SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 
 
 void Icu_HW_ResetEdgeCount(Icu_ChannelType Channel)
 
{
   
  Icu_ChannelRamDataType * LpRamData;
   
  const Icu_ChannelConfigType * LpChannelConfig;
  

 
  const Icu_TimerChannelConfigType *
                                                           LpTimerChannelConfig;
  uint8 LucIndex;

   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;

   
  TAUDBUserReg volatile * LpTAUDBUnitUserReg;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];

  


 
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];
   
   

   
   
  LucIndex = LpTimerChannelConfig->ucRamDataIndex;
   

   
   
   
   
  Icu_GpEdgeCountData[LucIndex].uiTimerOvfFlag = (boolean)0x00;
   

   
  LpTAUUnitConfig =
                  &Icu_GpTAUUnitConfig[LpTimerChannelConfig->ucTimerUnitIndex];
   
   

   
   
  SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
   
   
  if (((uint8)0x01 == LpTAUUnitConfig->ucIcuUnitType) ||
                             ((uint8)0x02 == LpTAUUnitConfig->ucIcuUnitType))
   
  {
    LpTAUDBUnitUserReg =
       Icu_GaaTAUDBUserReg_BaseAddress[LpTAUUnitConfig->ucTAUUserCntlRegIndx];
     
     
     
    LpRamData = &Icu_GpChannelRamData[Channel];
     
     
     
     
    if ((boolean)0x01 == LpRamData->uiChannelMeasurementRunning)
     
    {
       
      { (*(&LpTAUDBUnitUserReg->usTS)) = (LpChannelConfig->usChannelMaskValue); }
       
       
      { if ((LpChannelConfig->usChannelMaskValue) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
       
      { (*(&LpTAUDBUnitUserReg->usTT)) = (LpChannelConfig->usChannelMaskValue); }
       
      { if (((uint16)0x0000) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
       
      { (*(&LpTAUDBUnitUserReg->usTS)) = (LpChannelConfig->usChannelMaskValue); }
       
      { if ((LpChannelConfig->usChannelMaskValue) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
    }
    else
    {
       
      { (*(&LpTAUDBUnitUserReg->usTS)) = (LpChannelConfig->usChannelMaskValue); }
       
      { if ((LpChannelConfig->usChannelMaskValue) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
       
      { (*(&LpTAUDBUnitUserReg->usTT)) = (LpChannelConfig->usChannelMaskValue); }
       
      { if (((uint16)0x0000) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpChannelConfig->usChannelMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
    }

  }
  else
  {
     
  }
   
   
  SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
   
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 
 
 void Icu_HW_EnableEdgeDetection
(Icu_ChannelType Channel)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
   
  volatile uint16 * LpIntrCntlReg;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   
   
   
  if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
   
  {
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     

     
     
     
     
     
    (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF)))); (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress)))); __syncp();
     
     
     
    LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
    (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))&(((uint8)0x7FU))));
     
     
     
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
  }  
  else
  {
     
  }
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 
 
 void Icu_HW_DisableEdgeDetection
(Icu_ChannelType Channel)
 

{
   
  const Icu_ChannelConfigType * LpChannelConfig;
   
  volatile uint16 * LpIntrCntlReg;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   
   
   
  SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
   

   
   
  LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
  (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))|(((uint8)0x80U))));
    
   
   
  SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
   
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 



































 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_FAST_CODE_ROM"




 
 



 
 
 

 
 void Icu_TimerIsr(Icu_ChannelType Channel)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

   
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;
   
  TAUDBChReg volatile *
  LpTAUDBChannelReg;
   
  EcuM_WakeupSourceType LulWakeupSourceVal;
  Icu_MeasurementModeType LenMeasurementMode;
  uint32 LulCapturedTimestampVal;
  uint8 LucIndex;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   
   
   
   
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];
   
   
   
   
   
  LenMeasurementMode =
              (Icu_MeasurementModeType)(LpChannelConfig->uiIcuMeasurementMode);
   
   

   
  if (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode)
  {
     
    Icu_ServiceSignalMeasurement(Channel);
     
     
     
    if ((uint8)0x02 == (LpTimerChannelConfig->ucChannelProperties & (uint8)0x03))
     
     
    {
       
      if ((uint8)0x01 == Icu_GaaChannelMeasureStatus[Channel])
      {
         
        Icu_GaaChannelMeasureStatus[Channel] = (uint8)0x02;
      }
       
      else if ((uint8)0x02 == Icu_GaaChannelMeasureStatus[Channel])
      {
         
         
        Icu_GpChannelRamData[Channel].uiChannelStatus = (uinteger)ICU_ACTIVE;
         
         
        Icu_GpChannelRamData[Channel].uiResultComplete = (uinteger)(boolean)0x01;
      }
      else
      {
         
      }
    }
    else
    {
       
      Icu_GpChannelRamData[Channel].uiChannelStatus = (uinteger)ICU_ACTIVE;
       
      Icu_GpChannelRamData[Channel].uiResultComplete = (uinteger)(boolean)0x01;
    }
  }
   
  else if (ICU_MODE_SIGNAL_EDGE_DETECT == LenMeasurementMode)
  {

     
     
     
    if ((uinteger)(boolean)0x01 ==
                        (Icu_GpChannelRamData[Channel].uiNotificationEnable))
     
    {
      

 
      if (((void *)0) != LpChannelConfig->pIcuNotificationPointer)
      {
         
        LpChannelConfig->pIcuNotificationPointer();
      }
      else
      {
         
      }
    }
    else
    {
       
    }

     
     
     
    Icu_GpChannelRamData[Channel].uiChannelStatus = (uinteger)ICU_ACTIVE;
     
     

  }
   
  else if (ICU_MODE_TIMESTAMP == LenMeasurementMode)
  {
    {
      LpTAUDBChannelReg =
               Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];


       
       
      LulCapturedTimestampVal =
                      ((uint32)(LpTAUDBChannelReg->usCDR)+(uint32)(uint8)0x01);
       


       
      Icu_ServiceTimestamp(Channel, LulCapturedTimestampVal);

    }
    {
    }
  }
  else  
  {
     
     
    LucIndex = LpTimerChannelConfig->ucRamDataIndex;
     

     
     
     
     
    Icu_GpEdgeCountData[LucIndex].uiTimerOvfFlag = (boolean)0x01;
     
     
     


    

 
    if (((void *)0) != LpChannelConfig->pIcuNotificationPointer)
    {
       
      LpChannelConfig->pIcuNotificationPointer();
    }
    else
    {
       
    }
  }

   
   
   
   
   
   
   
  if ( (ICU_MODE_SLEEP == Icu_GenModuleMode) &&
       ((boolean)0x00 == LpChannelConfig->uiIcuDisableEcumWakeupNotification) &&
       ((EcuM_WakeupSourceType) 0x00000000 != LpChannelConfig->ddEcuMChannelWakeupInfo) )
   
  {
     
     
    LulWakeupSourceVal = Icu_GpChannelConfig[Channel].ddEcuMChannelWakeupInfo;
     
     
    EcuM_CheckWakeup(LulWakeupSourceVal);

     
  }
  else
  {
     
  }

   
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
 
 
 




 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 

































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_FAST_CODE_ROM"




 
 



 
 
 

 void Icu_ServiceSignalMeasurement
(Icu_ChannelType Channel)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;

   
  const Icu_TimerChannelConfigType *
                                                          LpTimerChannelConfig;
   
  Icu_SignalMeasureChannelRamDataType *
                                                          LpSignalMeasureData;
   
  TAUDBChReg volatile *
  LpTAUDBChannelReg;


  uint8 LucMeasureProperty;
  uint8 LucRamIndex;
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];

   
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];
   

   
   
  LucRamIndex = LpTimerChannelConfig->ucRamDataIndex;
   
   
   
  LpSignalMeasureData = &Icu_GpSignalMeasurementData[LucRamIndex];
   
   
  LucMeasureProperty = LpTimerChannelConfig->ucChannelProperties;

  {
     
    LpTAUDBChannelReg = Icu_GaaTAUDBChReg_BaseAddress
                                            [LpChannelConfig->ucCntlRegsIndx];
     

     
    if (((LucMeasureProperty&(uint8)0x03) == (uint8)0x01) ||
       ((LucMeasureProperty&(uint8)0x03) == (uint8)0x00))
     
     
    {
       
       
      LpSignalMeasureData->ulSignalActiveTime =
                          ((uint32)(LpTAUDBChannelReg->usCDR)+(uint32)(uint8)0x01);
       

    }
    else  
    {
      LpSignalMeasureData->ulPrevSignalActiveTime =
                                       LpSignalMeasureData->ulSignalActiveTime;

      LpSignalMeasureData->ulSignalPeriodTime =
                          ((uint32)(LpTAUDBChannelReg->usCDR)+(uint32)(uint8)0x01);

    }


  }
  {
  }

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
 
 
 




 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 

































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_FAST_CODE_ROM"




 
 



 
 

 
 void Icu_ServiceTimestamp
(Icu_ChannelType Channel, uint32 LulCapturedTimestampVal)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
  


 
  const Icu_TimerChannelConfigType *
                                                           LpTimerChannelConfig;
   
   
  Icu_TimeStampChannelRamDataType *
                                                                LpTimestampdata;
   
  uint8 LucRamIndex;
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   
   
   
   
  LpTimerChannelConfig = &Icu_GpTimerChannelConfig[Channel];
   
   
   
  LucRamIndex = LpTimerChannelConfig->ucRamDataIndex;
   

   
   
  LpTimestampdata = &Icu_GpTimeStampData[LucRamIndex];
   
   
   
   
   
  if ((LpTimestampdata->usTimestampIndex) < (LpTimestampdata->usBufferSize))
   
  {
     
    *(LpTimestampdata->pBufferPointer) = LulCapturedTimestampVal;
    (LpTimestampdata->usTimestampIndex)++;
    (LpTimestampdata->pBufferPointer)++;
     

    


 

     
    if ((uinteger)(boolean)0x01 ==
                          Icu_GpChannelRamData[Channel].uiNotificationEnable)
     
     
    {
      (LpTimestampdata->usTimestampsCounter)++;
       
      if ((LpTimestampdata->usTimestampsCounter) ==
         (LpTimestampdata->usNotifyInterval))
      {
         
         
        LpTimestampdata->usTimestampsCounter = (uint8)0x00;
         
        

 
         
         
        if (((void *)0) != LpChannelConfig->pIcuNotificationPointer)
             
        {
           
          LpChannelConfig->pIcuNotificationPointer();
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

     
    if ((LpTimestampdata->usTimestampIndex) >= (LpTimestampdata->usBufferSize))
    {
       
       
       
       
      if ((uint8)0x08 ==
      (LpTimerChannelConfig->ucChannelProperties&(uint8)0x08))
      {
         
        LpTimestampdata->usTimestampIndex = (uint8)0x00;
         
        LpTimestampdata->pBufferPointer =
               LpTimestampdata->pBufferPointer - LpTimestampdata->usBufferSize;
         
      }
      else
      {
         
        Icu_HW_StopCountMeasurement(Channel, (uint8)0x1F);
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

 
 
 



 



 




 
 
































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_FAST_CODE_ROM"




 
 



 
 

 
 void Icu_ExternalInterruptIsr (Icu_ChannelType Channel)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
   
  EcuM_WakeupSourceType LulWakeupSourceVal;
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   

   
   
   
  if ((uinteger)(boolean)0x01 ==
                     (Icu_GpChannelRamData[Channel].uiNotificationEnable))
   
   
  {
    

 
      
    if (((void *)0) != LpChannelConfig->pIcuNotificationPointer)
      
    {
       
      LpChannelConfig->pIcuNotificationPointer();
    }
    else
    {
       
    }
  }
  else
  {
     
     
  }
   


   
   
   
   
  Icu_GpChannelRamData[Channel].uiChannelStatus = (uinteger)ICU_ACTIVE;
   
   
   


   
   
   
   
   
   
   
   
   
  if ((ICU_MODE_SLEEP == Icu_GenModuleMode) &&
    ((boolean)0x00 == LpChannelConfig->uiIcuDisableEcumWakeupNotification) &&
    ((EcuM_WakeupSourceType) 0x00000000 != LpChannelConfig->ddEcuMChannelWakeupInfo))
     
     
  {
     
    LulWakeupSourceVal = Icu_GpChannelConfig[Channel].ddEcuMChannelWakeupInfo;
     
     
    EcuM_CheckWakeup(LulWakeupSourceVal);

     
  }
  else
  {
     
  }
   

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
 
 
 




 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 
 
 Icu_LevelType Icu_HW_GetInputLevel
(Icu_ChannelType Channel)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
   
  Icu_LevelType LenInputLevel;
  LenInputLevel = ICU_LOW;
   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   
   

  if (((void *)0) !=  LpChannelConfig->pLevelReadPprAddress)
     
  {
     
    if ((uint8)0x00 == LpChannelConfig->ucIcuPortType)
    {
       
      if ((*(LpChannelConfig->pLevelReadPprAddress) &
           (LpChannelConfig->usPortMaskValue)) ==
           (LpChannelConfig->usPortMaskValue))
      {
        LenInputLevel = ICU_HIGH;
      }
      else
      {
         
      }
    }
    else
    {
       
      if (((*(LpChannelConfig->pLevelReadPprAddress)
                        & (uint16)(uint8) 0xFF) &
           (LpChannelConfig->usPortMaskValue)) ==
           (LpChannelConfig->usPortMaskValue))
      {
        LenInputLevel = ICU_HIGH;
      }
      else
      {
         
      }
    }
  }  
  else
  {
     
  }

  return(LenInputLevel);

}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






























 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 
 
 Icu_CounterValueType Icu_HW_GetTAUInCountValue
(Icu_ChannelType Channel)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
   
  Icu_CounterValueType LddTAUInCounterValue;

   
  TAUDBChReg volatile *
  LpTAUDBChannelReg;

   
   
   
  LpChannelConfig = &Icu_GpChannelConfig[Channel];
   
   

  LddTAUInCounterValue = 0u;

     

  if (((uint8)0x01 == LpChannelConfig->uiIcuChannelType) ||
                           ((uint8)0x02 == LpChannelConfig->uiIcuChannelType))
     
  {
  LpTAUDBChannelReg =
                Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];
     
     
    LddTAUInCounterValue = (uint32)(LpTAUDBChannelReg->usCNT);
     
  }
  else
  {
     
  }

   
   
  return(LddTAUInCounterValue);
   
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 



































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 void Icu_HW_SynchronousInit (void)
{
     
  Icu_MeasurementModeType LenMeasurementMode;
   
  uint8 LucDefaultEdge;

   
  const Icu_ChannelConfigType * LpChannelConfig;
   
  volatile uint16 * LpIntrCntlReg;
  Icu_ChannelType LddChannel;

  for (LddChannel = (uint8)0x00 ; LddChannel < 8U; LddChannel++)
  {
     
     
     
    LpChannelConfig = &Icu_GpChannelConfig[LddChannel];
     
     

     
     
     
    LenMeasurementMode =
               (Icu_MeasurementModeType)(LpChannelConfig->uiIcuMeasurementMode);
     
     
    LucDefaultEdge = LpChannelConfig->uiIcuDefaultStartEdge;
    if (ICU_MODE_SIGNAL_EDGE_DETECT == LenMeasurementMode)
    {
     
      if (((boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq) &&
      ((uint8)0x00 == LpChannelConfig->uiIcuChannelType))
       
      {
         
         
        { { (*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x00); (*(&Icu_GaaFclaRegsMirror[LddChannel]. ucMirrorFCLA0CTLm)) = ((uint8)0x00); } }
         
         
         
        { if (((uint8)0x00) != ((*(&Icu_GpfclaReg_BaseAddress->ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
         
        if (ICU_BOTH_EDGES == (Icu_ActivationType)LucDefaultEdge)
         
         
        {
           
          { { (*(&Icu_GpfclaReg_BaseAddress-> ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x03); (*(&Icu_GaaFclaRegsMirror[LddChannel]. ucMirrorFCLA0CTLm)) = ((uint8)0x03); } }
           
           
          { if (((uint8)0x03) != ((*(&Icu_GpfclaReg_BaseAddress-> ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
        }  
           

        else if (ICU_FALLING_EDGE == (Icu_ActivationType)LucDefaultEdge)
          
          
        {
           
          { { (*(&Icu_GpfclaReg_BaseAddress-> ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x02); (*(&Icu_GaaFclaRegsMirror[LddChannel]. ucMirrorFCLA0CTLm)) = ((uint8)0x02); } }
           
           
          { if (((uint8)0x02) != ((*(&Icu_GpfclaReg_BaseAddress-> ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
        }  
        else  
        {
           
          { { (*(&Icu_GpfclaReg_BaseAddress-> ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) = ((uint8)0x01); (*(&Icu_GaaFclaRegsMirror[LddChannel]. ucMirrorFCLA0CTLm)) = ((uint8)0x01); } }
           
          { if (((uint8)0x01) != ((*(&Icu_GpfclaReg_BaseAddress-> ucCTLn_SIG[LpChannelConfig->ucCntlRegsIndx])) & ((uint8) 0x07))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
           
        }  
      }
      else
      {
         
      }
    }
    else
    {
       
    }
     
    if (((boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq) &&
                      ((uint8)0x00 != LpChannelConfig->uiIcuChannelType))
     
    {
       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
       
       
       
       
      Icu_GpChannelRamData[LddChannel].uiChannelStatus = (uinteger)ICU_IDLE;
       
       
       
       
      if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
      {
         
         
         
         
         
        (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF)))); (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress)))); __syncp();
         
         
        LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
         
        (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))&(((uint8)0x7FU))));
         
         
         
      }  
      else
      {
         
      }
       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
    }
    else
    {
       
    }
 }
}  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 







































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 void Icu_HW_SynchronousStart (void)
{
   
  TAUDBUserReg volatile *
  LpTAUDBUnitUserReg;


   
   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;
   
  Icu_MeasurementModeType LenMeasurementMode;

   
  const Icu_ChannelConfigType * LpChannelConfig;
  uint8 LucChannel;

   
  volatile uint16 * LpIntrCntlReg;

   
  uint8 LucCount;

   
  for (LucCount = (uint8)0x00;
                    LucCount < 1U; LucCount++)
  {
     
     
     
    LpTAUUnitConfig = &Icu_GpTAUUnitConfig[LucCount];
     
     
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
     

    if (((uint8)0x01 == LpTAUUnitConfig->ucIcuUnitType) ||
                               ((uint8)0x02 == LpTAUUnitConfig->ucIcuUnitType))
    {
      LpTAUDBUnitUserReg =
         Icu_GaaTAUDBUserReg_BaseAddress[LpTAUUnitConfig->ucTAUUserCntlRegIndx];
       
      { (*(&LpTAUDBUnitUserReg->usTS)) = (LpTAUUnitConfig->usTAUSyncMaskValue); }
       
       
      { if ((LpTAUUnitConfig->usTAUSyncMaskValue) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpTAUUnitConfig->usTAUSyncMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
      
 
    }
    else
    {
    }
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
  }

  for (LucChannel = (uint8)0x00; LucChannel < 8U; LucChannel++)
  {
     
     
    

 
    LpChannelConfig = &Icu_GpChannelConfig[LucChannel];
     
     
     
     
     
    LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
     
     
    


 
    if (((uinteger)(boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq) &&
        (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode))
    {
       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();

       
       
       
      Icu_GpChannelRamData[LucChannel].uiResultComplete = (uinteger)(boolean)0x00;
       
       

      


 
      Icu_GaaChannelMeasureStatus[LucChannel] = (uint8)0x01;

       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
    } 


 
    else
    {
       
    }
  } 


 

   
  for (LucChannel = (uint8)0x00; LucChannel < 8U; LucChannel++)
   
  {
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
     
     
     
    LpChannelConfig = &Icu_GpChannelConfig[LucChannel];
     
     
    Icu_GpChannelRamData[LucChannel].uiChannelStatus = (uinteger)ICU_IDLE;
     
     
     
     
     
     
    if ((boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq)
     
     
    {
       
       
      if ((uint8)0x00 == LpChannelConfig->uiIcuChannelType)
       
      {
         
        if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
        {
           
           
           
           
           
          (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF)))); (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress)))); __syncp();
           
           
          LpIntrCntlReg = LpChannelConfig->pIntrCntlAdress;
           
          (*((volatile uint8*)((LpIntrCntlReg))) = ((*((volatile uint8*)((LpIntrCntlReg))))&(((uint8)0x7FU))));
           
           
           
        }   
        else
        {
           
        }
      }
      else
      {
         
      }
       
       
       
      Icu_GpChannelRamData[LucChannel].uiNotificationEnable =
                                                           (uinteger)(boolean)0x01;
       
       
    }
    else
    {
       
    }
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
  }
}  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 void Icu_HW_SynchronousStop (void)
{
   
   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;
   
  Icu_MeasurementModeType LenMeasurementMode;
  uint8 LucCount;

   
  TAUDBUserReg volatile *
  LpTAUDBUnitUserReg;


   
  const Icu_ChannelConfigType * LpChannelConfig;
  uint8 LucChannel;

   
  for (LucCount = (uint8)0x00;
                    LucCount < 1U; LucCount++)
  {
     
     
     
    LpTAUUnitConfig = &Icu_GpTAUUnitConfig[LucCount];
     
     
     
     
    SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
     

    if (((uint8)0x01 == LpTAUUnitConfig->ucIcuUnitType) ||
                               ((uint8)0x02 == LpTAUUnitConfig->ucIcuUnitType))
     
    {
      LpTAUDBUnitUserReg =
        Icu_GaaTAUDBUserReg_BaseAddress[LpTAUUnitConfig->ucTAUUserCntlRegIndx];
       
       
      { (*(&LpTAUDBUnitUserReg->usTT)) = (LpTAUUnitConfig->usTAUSyncMaskValue); }
       
      { if (((uint16)0x0000) != ((*(&LpTAUDBUnitUserReg->usTE)) & (LpTAUUnitConfig->usTAUSyncMaskValue))) { Dem_ReportErrorStatus((Dem_EventIdType)1, (Dem_EventStatusType) (0x01u)); } else { } }
    }
    else
    {
    }
     
     
    SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
     
  }

  for (LucChannel = (uint8)0x00; LucChannel < 8U; LucChannel++)
  {
     
     
    

 
    LpChannelConfig = &Icu_GpChannelConfig[LucChannel];
     
     
     
     
     
    LenMeasurementMode = (Icu_MeasurementModeType)
                                        (LpChannelConfig->uiIcuMeasurementMode);
     
     
    


 
    if (((uinteger)(boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq) &&
        (ICU_MODE_SIGNAL_MEASUREMENT == LenMeasurementMode))
    {
       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();

       
      Icu_GaaChannelMeasureStatus[LucChannel] = (uint8)0x00;

       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
    } 


 
    else
    {
       
    }
  } 


 

   
  for (LucChannel = (uint8)0x00; LucChannel < 8U; LucChannel++)
   
  {
     
     
     
    LpChannelConfig = &Icu_GpChannelConfig[LucChannel];
     
     
     
     
     
    if ((boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq)
     
     
    {
       
     
      if ((uint8)0x00 == LpChannelConfig->uiIcuChannelType)
     
      {
         
         
        SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
         
         
         
         
         
        Icu_GpChannelRamData[LucChannel].uiChannelStatus = (uinteger)ICU_IDLE;
         
         
         
         
         
         
        SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
         

        if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
        {
           
           
           
           
          (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF))));

           
           
          (*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))))|(((uint8)0x80U))));
           
           
           
        }    
        else
        {
           
        }
      }
      else
      {
         
      }

       
       
      SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
       
       
       
      Icu_GpChannelRamData[LucChannel].uiNotificationEnable =
                                                          (uinteger)(boolean)0x00;
       
       
      SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION();
       
    }
     
     
    else
    {
      
    }
  }
}  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 

































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 

 void Icu_HW_SynchronousDeInit (void)
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
  Icu_ChannelType LddChannel;
  for (LddChannel = (uint8)0x00 ; LddChannel < 8U; LddChannel++)
  {
     
     
     
    LpChannelConfig = &Icu_GpChannelConfig[LddChannel];
     
     
     
     

    if (((boolean)0x01 == LpChannelConfig->uiIcuSyncStartReq) &&
                      ((uint8)0x00 != LpChannelConfig->uiIcuChannelType))
     
     
    {
       
       
       
       
      Icu_GpChannelRamData[LddChannel].uiChannelStatus = (uinteger)ICU_IDLE;
       
       
       
       
      if (((void *)0) != LpChannelConfig->pIntrCntlAdress)
      {
         
         
         
         
        (*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint16*)((LpChannelConfig->pIntrCntlAdress))))&(((uint16)0xEFFF))));
         
         
        (*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))) = ((*((volatile uint8*)((LpChannelConfig->pIntrCntlAdress))))|(((uint8)0x80U))));
         
         
         
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 






































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".ICU_PRIVATE_CODE_ROM"




 
 



 
 
 

 Std_ReturnType Icu_HWCheckConsistency
                                   (Icu_HWConsistencyModeType HWConsistencyMode)
 
{
   
  const Icu_ChannelConfigType * LpChannelConfig;
   
   
  const Icu_TAUUnitConfigType * LpTAUUnitConfig;
   
  TAUDBOsReg volatile * LpTAUDBUnitOsReg;
   
  TAUDBChReg volatile * LpTAUDBChannelReg;
   
   
  const Icu_TimerChannelConfigType *
                                                         LpTimerChannelConfig;
   

   
  Std_ReturnType LddRetConsistencyState;
  uint8 LucChIdx;

   

  LddRetConsistencyState = 0U;

   
  if (ICU_STATIC == HWConsistencyMode)
  {
     
     
       
       
      for (LucChIdx = (uint8)0x00; LucChIdx < 1U;
                                                                    LucChIdx++)
      {
         
         
         
        LpTAUUnitConfig = &Icu_GpTAUUnitConfig[LucChIdx];
         
         

           
           
           
          if ( ((uint8)0x01 == LpTAUUnitConfig->ucIcuUnitType) ||
               ((uint8)0x02 == LpTAUUnitConfig->ucIcuUnitType) )
           
          {
            LpTAUDBUnitOsReg =
             Icu_GaaTAUDBOsReg_BaseAddress[LpTAUUnitConfig->ucTAUOsCntlRegIndx];
             
             
            if (((boolean)0x01 == LpTAUUnitConfig->blConfigurePrescaler) &&
                (LpTAUUnitConfig->usPrescaler != LpTAUDBUnitOsReg->usTPS))
             
             
            {
              LddRetConsistencyState = 1U;
            }
            else
            {
               
               
            }
          }
          else
          {
             
          } 

 

      }  

     
     
       
       
      for (LucChIdx = (uint8)0x00; LucChIdx < 2U;
                                                                    LucChIdx++)
      {
         
         
        
 
        LpChannelConfig = &Icu_GpChannelConfig[LucChIdx];
        LpTimerChannelConfig = &Icu_GpTimerChannelConfig[LucChIdx];
         
         

           
         
         
         
          if ( ((uint8)0x01 == LpChannelConfig->uiIcuChannelType) ||
               ((uint8)0x02 == LpChannelConfig->uiIcuChannelType) )
         
         
         
          {
            LpTAUDBChannelReg =
              Icu_GaaTAUDBChReg_BaseAddress[LpChannelConfig->ucCntlRegsIndx];
               
            if (LpTimerChannelConfig->usChannelModeOSRegSettings !=
                LpTAUDBChannelReg->usCMOR)
               
            {
              LddRetConsistencyState = 1U;
            }
            else
            {
               
            }
             
             

            if ( (ICU_MODE_EDGE_COUNTER == (Icu_MeasurementModeType)
                  LpChannelConfig->uiIcuMeasurementMode) &&
                  ((uint16)0xFFFF != LpTAUDBChannelReg->usCDR) )
             
             
            {
              LddRetConsistencyState = 1U;
            }
            else
            {
               
            }

          }
      }  

       
  }  
  else if (ICU_DYNAMIC == HWConsistencyMode)
  {
     
    for (LucChIdx = (uint8)0x00; (LucChIdx < (uint8)7); LucChIdx++)
       
    {
      if (  (*(Icu_GaaReg_8bit[LucChIdx])) !=
            (*(Icu_GaaRegMirror_8bit[LucChIdx]))  )
      {
        LddRetConsistencyState = 1U;
      }
      else
      {
         
      }
    }
  }
  else
  {
     
  }

  return(LddRetConsistencyState);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 























 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 
 




 
