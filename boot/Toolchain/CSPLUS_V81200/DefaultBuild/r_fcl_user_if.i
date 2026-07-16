








 



















 

 
 
 









 









 









 
 





 






 




 









 



















 









 







 



 








 



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





 




 


 


 




 




 



 
typedef struct R_FCL_DESCRIPTOR_T
{
    uint32    id_au32[4];                
    uint32    addrRam_u32;               
    uint16    frequencyCpuMHz_u16;       
} r_fcl_descriptor_t;




 
typedef enum R_FCL_STATUS_T
{
    R_FCL_OK,                              
    R_FCL_BUSY,                            
    R_FCL_SUSPENDED,                       
    R_FCL_ERR_FLMD0,                       
    R_FCL_ERR_PARAMETER,                   
    R_FCL_ERR_PROTECTION,                  
    R_FCL_ERR_REJECTED,                    
    R_FCL_ERR_FLOW,                        
    R_FCL_ERR_WRITE,                       
    R_FCL_ERR_ERASE,                       
    R_FCL_ERR_COMMAND,                     
    R_FCL_ERR_SUSPEND_FAILED,              
    R_FCL_CANCELLED,                       
    R_FCL_ERR_INTERNAL                     
} r_fcl_status_t;




 
typedef enum R_FCL_COMMAND_T
{
    R_FCL_CMD_PREPARE_ENV,                 
    R_FCL_CMD_ERASE,                       
    R_FCL_CMD_WRITE,                       
    R_FCL_CMD_SET_LOCKBIT,                 
    R_FCL_CMD_GET_LOCKBIT,                 
    R_FCL_CMD_ENABLE_LOCKBITS,             
    R_FCL_CMD_DISABLE_LOCKBITS,            
    R_FCL_CMD_SET_OTP,                     
    R_FCL_CMD_GET_OTP,                     
    R_FCL_CMD_SET_OPB,                     
    R_FCL_CMD_GET_OPB,                     
    R_FCL_CMD_SET_ID,                      
    R_FCL_CMD_GET_ID,                      
    R_FCL_CMD_SET_READ_PROTECT_FLAG,       
    R_FCL_CMD_GET_READ_PROTECT_FLAG,       
    R_FCL_CMD_SET_WRITE_PROTECT_FLAG,      
    R_FCL_CMD_GET_WRITE_PROTECT_FLAG,      
    R_FCL_CMD_SET_ERASE_PROTECT_FLAG,      
    R_FCL_CMD_GET_ERASE_PROTECT_FLAG,      
    R_FCL_CMD_SET_SERIAL_PROG_DISABLED,    
    R_FCL_CMD_GET_SERIAL_PROG_DISABLED,    
    R_FCL_CMD_SET_SERIAL_ID_ENABLED,       
    R_FCL_CMD_GET_SERIAL_ID_ENABLED,       
    R_FCL_CMD_SET_RESET_VECTOR,            
    R_FCL_CMD_GET_RESET_VECTOR,            
    R_FCL_CMD_GET_BLOCK_CNT,               
    R_FCL_CMD_GET_BLOCK_END_ADDR,          
    R_FCL_CMD_GET_DEVICE_NAME              
} r_fcl_command_t;




 
typedef volatile struct R_FCL_REQUEST_T
{
    r_fcl_command_t     command_enu;       
    uint32            bufferAdd_u32;     
    uint32            idx_u32;          




 
    uint16 cnt_u16;                     




 
    r_fcl_status_t status_enu;             
} r_fcl_request_t;



 




 












 



















 









 




 
 

 

 

 
 
 
 

 
 
 
 


 



 
typedef enum R_FCL_FLAG_T
{
    R_FCL_FALSE                 = 0x00u,                  
    R_FCL_TRUE                  = 0x01u                   
} r_fcl_flag_t;




 
typedef enum R_FCL_MODE_T
{
    R_FCL_READ_MODE             = 0x00u,                  
    R_FCL_WRITE_MODE            = 0x01u,                  
    R_FCL_CFG_WRITE_MODE        = 0x80u                   
} r_fcl_mode_t;




 
typedef enum R_FCL_INT_STATUS_T
{
    R_FCL_ISTAT_NOINIT,                                   
    R_FCL_ISTAT_INIT,                                     
    R_FCL_ISTAT_PREPARED,                                 
    R_FCL_ISTAT_BUSY,                                     
    R_FCL_ISTAT_SUSPENDED                                 
} r_fcl_int_status_t;




 
typedef enum R_FCL_OP_STATUS_T
{
    R_FCL_OP_IDLE_STATE,                                  
    R_FCL_OP_PREPARE_STATE,                              


 
    R_FCL_PREP_COPY_FW_STATE,                             
    R_FCL_PREP_RESET_FCU_STATE,                           
    R_FCL_PREP_FCURAM_CHKSUM_STATE,                      
 
    R_FCL_PREP_ID_CHECK_FREQ_SET_STATE,                  
 
    R_FCL_BUSY_CHECK_PE_MODE_SWITCH_STATE,               
 
    R_FCL_BUSY_START_OP_STATE,                           
 
    R_FCL_BUSY_START_WRITE_OP_STATE,                     
 
    R_FCL_BUSY_CHECK_RESULT_STATE,                       
 
    R_FCL_BUSY_SWITCH_READ_MODE_STATE,                    
    R_FCL_BUSY_CHECK_READ_MODE_SWITCH_STATE,             
 
    R_FCL_OP_FINISHED_STATE,                              
    R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE,           
 
    R_FCL_OP_INTERNAL_ERROR_CHECK_READ_STATE,            
 
    R_FCL_OP_INTERNAL_ERROR_STATE                         
} r_fcl_op_status_t;




 
typedef struct R_FCL_MULTIOP_T
{
    uint32_t            opAddr_u32;                       
    uint32_t            buffAddr_u32;                     
    uint16_t            opCnt_u16;                        
    r_fcl_op_status_t   opStatus_enu;                     
    r_fcl_status_t      opResult_enu;                     
} r_fcl_multiOp_t;




 
typedef struct R_FCL_SUSPENDINFO_T
{
    r_fcl_request_t *   reqSuspend_pstr;                  
    r_fcl_multiOp_t     opSuspend_str;                    
    r_fcl_flag_t        spdSpdRequest_enu;                
    r_fcl_flag_t        spdResRequest_enu;                
    r_fcl_flag_t        flagSuspended_enu;                
    uint16_t            matSel_u16;                       
} r_fcl_suspendInfo_t;




 
typedef struct R_FCL_DEVICEINFO_T
{
    uint32_t            cf1BlkCnt32kB_u32;
    uint32_t            cf2BlkCnt32kB_u32;
    uint32_t            usrBlkCnt32kB_u32;
    uint32_t            secureData_u32;
    uint16_t            fMin_u16;
    uint16_t            fMax_u16;
    uint16_t            fPClk_u16;
    uint16_t            blkCnt_u16;
    uint16_t            matSel_u16;
    uint8_t             deviceName_au08[16];
    uint8_t             cf1BlkCnt8kB_u8;
    uint8_t             fVersion_u8;
    uint8_t             fDivider_u8;
    r_fcl_flag_t        emulationMode_enu;
    r_fcl_flag_t        enableLockBits_enu;
    r_fcl_flag_t        accessExtendedUserArea_enu;
} r_fcl_deviceInfo_t;



 
typedef void (* r_fcl_fctPtr_t)(void);




 
typedef struct R_FCL_DATA_T
{
    const r_fcl_descriptor_t *  RTCfg_pstr;              
 
    r_fcl_request_t *           reqInt_pstr;              
    r_fcl_multiOp_t             opVar_str;                
    r_fcl_suspendInfo_t         suspendInfo_str;          
    r_fcl_int_status_t          intStatus_enu;            
    r_fcl_mode_t                flashMode_enu;            
    r_fcl_deviceInfo_t          deviceInfo_str;           
    r_fcl_fctPtr_t              executionPtr_p;           
    r_fcl_flag_t                waitAckModeSwitch_enu;    
    r_fcl_flag_t                cancelReq_enu;            
    uint32_t                    fcuramAddr_u32;           
    uint32_t                    firmAddr_u32;             
    uint8_t                     intBuf_au08[16];          
            r_fcl_fctPtr_t      handlerPtr_p;             
} r_fcl_data_t;



 
    #pragma section r0_disp32 "R_FCL_DATA"

extern  r_fcl_data_t   g_fcl_data_str;        

    #pragma section default



 
void            R_FCL_I_write_memory_u08          (const uint32_t addr_u32, const uint8_t val_u08);
void            R_FCL_Fct_CallFromRAM             (void);
void            R_FCL_FCUFct_PrepareEnvironment   (void);
void            R_FCL_FCUFct_HandleMultiOperation (void);
void            R_FCL_FCUFct_GetConfigArea        (void);
void            R_FCL_FCUFct_SetConfigArea        (void);
void            R_FCL_FCUFct_HandleLockBit        (void);
void            R_FCL_FCUFct_LockBitMode          (uint16_t mode_u16);
void            R_FCL_FCUFct_GetOTPBit            (void);
void            R_FCL_FCUFct_SetOTPBit            (void);
void            R_FCL_FCUFct_GetSecurityFlag      (void);
void            R_FCL_FCUFct_GetDeviceName        (void);
void            R_FCL_FCUFct_GetBlockEndAddr      (void);
void            R_FCL_FCUFct_GetBlockCnt          (void);
void            R_FCL_FCUFct_Erase                (void);
void            R_FCL_FCUFct_Write                (void);
void            R_FCL_Fct_CodeRam_CalcRange       (uint32_t * secStart_pu32, uint32_t * secSize_pu32);
void            R_FCL_Fct_CodeRomRam_CalcRange    (uint32_t * secStart_pu32, uint32_t * secSize_pu32);
void            R_FCL_Fct_CodeUsr_CalcRange       (uint32_t * secStart_pu32, uint32_t * secSize_pu32);
void            R_FCL_Fct_CodeUsrInt_CalcRange    (uint32_t * secStart_pu32, uint32_t * secSize_pu32);
void            R_FCL_Fct_CodeExProt_CalcRange    (uint32_t * secStart_pu32, uint32_t * secSize_pu32);
void            R_FCL_FCUFct_Switch_BFlash        (uint8_t mode_u08);
uint32_t        R_FCL_FCUFct_ChkReg               (uint32_t regAdd, uint32_t valMask, uint32_t val, uint32_t to);
uint32_t        R_FCL_FCUFct_Clear_Cache_Asm      (uint32_t add_u32, uint32_t timeout_u32);
uint32_t        R_FCL_Fct_PrgOffset               (void);
uint32_t        R_FCL_Fct_Copy_Code               (uint32_t src_u32, uint32_t dest_u32, uint32_t cnt_u32);
uint32_t        R_FCL_Fct_Get_PID_Asm             (void);
r_fcl_status_t  R_FCL_FCUFct_SwitchMode_Start     (r_fcl_mode_t mode_enu);
r_fcl_status_t  R_FCL_FCUFct_SwitchMode_Check     (void);
r_fcl_flag_t    R_FCL_FCUFct_CheckMode            (void);












 



















 









 




 




 




 




 
 
r_fcl_status_t  R_FCL_CopySections (void);

 
uint32_t        R_FCL_CalcFctAddr (uint32_t addFct_u32);

 
const uint8_t * R_FCL_GetVersionString (void);

 
r_fcl_status_t  R_FCL_Init (const r_fcl_descriptor_t * descriptor_pstr);

 
void            R_FCL_Execute (r_fcl_request_t * request_pstr);













 



















 









 




 


 












 




 
















 




 






 



 




 

 r_fcl_data_t g_fcl_data_str;

    #pragma section default



 
    static void R_FCL_Handler     (void);
    static void R_FCL_Fct_Handler (void);




 











 
 
        #pragma section text "R_FCL_CODE_ROM"
r_fcl_status_t R_FCL_CopySections (void)                                                            
{
    uint32_t curSrcAddr;
    uint32_t nextSrcAddr;
    uint32_t destAddr;
    uint32_t curSize;
    uint32_t nextSize;
    r_fcl_status_t ret;

    ret = R_FCL_ERR_FLOW;

     
    if (g_fcl_data_str.intStatus_enu == R_FCL_ISTAT_INIT)
    {
        if (g_fcl_data_str.RTCfg_pstr->addrRam_u32 != 0x00000000u)
        {
            destAddr = g_fcl_data_str.RTCfg_pstr->addrRam_u32;
            curSrcAddr = 0x00000000u;
            nextSrcAddr = 0x00000000u;
            curSize = 0x00u;
            nextSize = 0x00u;

             
            R_FCL_Fct_CodeUsrInt_CalcRange (&curSrcAddr, &curSize);
            R_FCL_Fct_CodeUsr_CalcRange (&nextSrcAddr, &nextSize);
            curSize = nextSrcAddr - curSrcAddr;
            destAddr = R_FCL_Fct_Copy_Code (curSrcAddr, destAddr, curSize);
            
             
            curSrcAddr = nextSrcAddr;
            R_FCL_Fct_CodeRam_CalcRange (&nextSrcAddr, &nextSize);
            curSize = nextSrcAddr - curSrcAddr;
            destAddr = R_FCL_Fct_Copy_Code (curSrcAddr, destAddr, curSize);
            
             
            curSrcAddr = nextSrcAddr;
            R_FCL_Fct_CodeRomRam_CalcRange (&nextSrcAddr, &nextSize);
            curSize = nextSrcAddr - curSrcAddr;
            destAddr = R_FCL_Fct_Copy_Code (curSrcAddr, destAddr, curSize);


             
            R_FCL_Fct_CodeExProt_CalcRange (&curSrcAddr, &curSize);
            (void)R_FCL_Fct_Copy_Code (curSrcAddr, destAddr, curSize);
            

            g_fcl_data_str.executionPtr_p =
                (r_fcl_fctPtr_t)R_FCL_CalcFctAddr ((uint32_t)(&R_FCL_FCUFct_GetConfigArea));        
            
                g_fcl_data_str.handlerPtr_p = (r_fcl_fctPtr_t)R_FCL_CalcFctAddr ((uint32_t)(&R_FCL_Fct_Handler));

            ret = R_FCL_OK;
        }

         
        else
        {
            ret = R_FCL_ERR_INTERNAL;
        }
    }

    return (ret);
}  


 



 






 
 
        #pragma section text "R_FCL_CODE_ROM"
uint32_t R_FCL_CalcFctAddr (uint32_t addFct_u32)                                                    
{
    uint32_t secAdd;
    uint32_t secSize;
    uint32_t nextSecAdd;
    uint32_t nextSecSize;
    uint32_t destAdd;
    uint32_t exeOff;

    R_FCL_Fct_CodeUsrInt_CalcRange (&secAdd, &secSize);

    destAdd = g_fcl_data_str.RTCfg_pstr->addrRam_u32;

     
    if ((addFct_u32 >= secAdd) && (addFct_u32 < (secAdd+secSize)))
    {
        destAdd += (addFct_u32 - secAdd);
    }
    else
    {
        R_FCL_Fct_CodeUsr_CalcRange (&nextSecAdd, &nextSecSize);

         
        secSize = nextSecAdd - secAdd;
        destAdd += secSize;

        secAdd  = nextSecAdd;
        secSize = nextSecSize;

         
        if ((addFct_u32 >= secAdd) && (addFct_u32 < (secAdd+secSize)))
        {
            destAdd += (addFct_u32 - secAdd);
        }
        else
        {
            R_FCL_Fct_CodeRam_CalcRange (&nextSecAdd, &nextSecSize);

             
            secSize = nextSecAdd - secAdd;
            destAdd += secSize;

            secAdd  = nextSecAdd;
            secSize = nextSecSize;

             
            if ((addFct_u32 >= secAdd) && (addFct_u32 < (secAdd+secSize)))
            {
                destAdd += (addFct_u32 - secAdd);
            }
            else
            {
                {
                     
                    destAdd = 0x00000000u;
                }
            }
        }
    }

     
    if (destAdd != 0x00000000u)
    {
        exeOff = R_FCL_Fct_PrgOffset ();
        destAdd -= exeOff;
    }

    return (destAdd);
}  


 



 






 
 
        #pragma section text "R_FCL_CODE_ROM"
        #pragma section const "R_FCL_CONST"
const uint8_t *R_FCL_GetVersionString (void)                                                        
{
        static const uint8_t fcl_ver_str[] = "SH850T01xxxxxxV213";

    return (&fcl_ver_str[0]);
}  




 



 












 
 
        #pragma section text "R_FCL_CODE_ROM"
r_fcl_status_t R_FCL_Init (const r_fcl_descriptor_t * descriptor_pstr)                              
{
    uint32_t i;
    uint32_t fcl_addr;
    r_fcl_status_t ret;

     
    fcl_addr = (uint32_t)(&g_fcl_data_str);                                                         

    for (i = 0u; i < sizeof (g_fcl_data_str); i++)
    {
        R_FCL_I_write_memory_u08 (fcl_addr, 0u);
        fcl_addr++;
    }

    ret = R_FCL_OK;
    g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_NOINIT;


     
    if ((r_fcl_descriptor_t *)(0x00000000u) != descriptor_pstr)
    {
        g_fcl_data_str.reqInt_pstr  = (r_fcl_request_t *)(0x00000000u);

            g_fcl_data_str.handlerPtr_p = 0x00000000u;

        g_fcl_data_str.RTCfg_pstr = descriptor_pstr;
        g_fcl_data_str.deviceInfo_str.enableLockBits_enu = R_FCL_TRUE;
        
         
        g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_INIT;
    }
    
     
    else
    {
        ret = R_FCL_ERR_PARAMETER;
    }

    return (ret);
}  


 



 









 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_Handler (void)                                                          
{
    r_fcl_status_t ret;

     
    if (((r_fcl_request_t *)(0x00000000u) != g_fcl_data_str.suspendInfo_str.reqSuspend_pstr) &&
        (R_FCL_ISTAT_SUSPENDED == g_fcl_data_str.intStatus_enu))
    {
        if (g_fcl_data_str.suspendInfo_str.spdResRequest_enu == R_FCL_TRUE)
        {
        }
    }
     
    else if (((r_fcl_request_t *)(0x00000000u) != g_fcl_data_str.reqInt_pstr) &&
             (R_FCL_ISTAT_BUSY == g_fcl_data_str.intStatus_enu))
    {
         
    
         
        if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE)
        {
            (void)R_FCL_FCUFct_SwitchMode_Start (R_FCL_READ_MODE);
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_INTERNAL_ERROR_CHECK_READ_STATE;
        }
        
         
        else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_OP_INTERNAL_ERROR_CHECK_READ_STATE)
        {
            ret = R_FCL_FCUFct_SwitchMode_Check ();
            if (R_FCL_OK == ret)
            {
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_INTERNAL_ERROR_STATE;
            }
        }
        
         
        else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_OP_INTERNAL_ERROR_STATE)
        {
            g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_INTERNAL;
            g_fcl_data_str.opVar_str.opStatus_enu  = R_FCL_OP_IDLE_STATE;
            g_fcl_data_str.intStatus_enu           = R_FCL_ISTAT_NOINIT;
        }
        
         
        else
        {
            if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_PREPARE_ENV)
            {
                R_FCL_FCUFct_PrepareEnvironment ();
            }
            else
            {
                R_FCL_FCUFct_HandleMultiOperation ();
            }
        }
    }
    else
    {
         
    }
}  


 




 





 
 

        #pragma section text "R_FCL_CODE_RAM"
    static void R_FCL_Fct_Handler (void)                                                      
    {
         
        do
        {
            R_FCL_Handler ();
        }
        while (g_fcl_data_str.reqInt_pstr->status_enu == R_FCL_BUSY);
    }


 




 











 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_Execute (r_fcl_request_t * request_pstr)                                                 
{
     
    if ((r_fcl_request_t *)(0x00000000u) != request_pstr)
    {

         
        if ((g_fcl_data_str.intStatus_enu == R_FCL_ISTAT_INIT) &&
            (request_pstr->command_enu    == R_FCL_CMD_PREPARE_ENV))
        {
            if (R_FCL_FCUFct_CheckMode () == R_FCL_TRUE)
            {
                g_fcl_data_str.reqInt_pstr            = request_pstr;
                g_fcl_data_str.intStatus_enu          = R_FCL_ISTAT_BUSY;
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
                request_pstr->status_enu              = R_FCL_BUSY;
                     
                    while (R_FCL_BUSY == request_pstr->status_enu)
                    {
                        (*g_fcl_data_str.handlerPtr_p)();
                    }
            }
            else
            {
                request_pstr->status_enu = R_FCL_ERR_FLMD0;
            }
        }

        
 
        else if ((g_fcl_data_str.intStatus_enu == R_FCL_ISTAT_PREPARED) ||
                 (g_fcl_data_str.intStatus_enu == R_FCL_ISTAT_SUSPENDED))
        {
            g_fcl_data_str.reqInt_pstr = request_pstr;
            request_pstr->status_enu   = R_FCL_BUSY;

            if (request_pstr->command_enu == R_FCL_CMD_ERASE)
            {
                R_FCL_FCUFct_Erase ();
            }
            else if (request_pstr->command_enu == R_FCL_CMD_WRITE)
            {
                if (request_pstr->bufferAdd_u32 == 0x00000000u)
                {
                    request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                }
                else
                {
                    R_FCL_FCUFct_Write ();
                }
            }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_LOCKBIT)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_HandleLockBit ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_SET_LOCKBIT)
                {
                    R_FCL_FCUFct_HandleLockBit ();
                }
                else if (request_pstr->command_enu == R_FCL_CMD_ENABLE_LOCKBITS)
                {
                    R_FCL_FCUFct_LockBitMode ((0x0000u));
                }
                else if (request_pstr->command_enu == R_FCL_CMD_DISABLE_LOCKBITS)
                {
                    R_FCL_FCUFct_LockBitMode ((0x0001u));
                }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_OPB)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_Fct_CallFromRAM ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_SET_OPB)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_SetConfigArea ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_ID)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_Fct_CallFromRAM ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_SET_ID)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_SetConfigArea ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_RESET_VECTOR)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_Fct_CallFromRAM ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_SET_RESET_VECTOR)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_SetConfigArea ();
                    }
                }
                else if ((request_pstr->command_enu == R_FCL_CMD_SET_READ_PROTECT_FLAG) ||
                         (request_pstr->command_enu == R_FCL_CMD_SET_WRITE_PROTECT_FLAG) ||
                         (request_pstr->command_enu == R_FCL_CMD_SET_ERASE_PROTECT_FLAG) ||
                         (request_pstr->command_enu == R_FCL_CMD_SET_SERIAL_PROG_DISABLED) ||
                         (request_pstr->command_enu == R_FCL_CMD_SET_SERIAL_ID_ENABLED))
                {
                    R_FCL_FCUFct_SetConfigArea ();
                }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_DEVICE_NAME)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_GetDeviceName ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_BLOCK_CNT)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_GetBlockCnt ();
                    }
                }
                else if (request_pstr->command_enu == R_FCL_CMD_GET_BLOCK_END_ADDR)
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_GetBlockEndAddr ();
                    }
                }
                else if ((request_pstr->command_enu == R_FCL_CMD_GET_READ_PROTECT_FLAG) ||
                         (request_pstr->command_enu == R_FCL_CMD_GET_WRITE_PROTECT_FLAG) ||
                         (request_pstr->command_enu == R_FCL_CMD_GET_ERASE_PROTECT_FLAG) ||
                         (request_pstr->command_enu == R_FCL_CMD_GET_SERIAL_PROG_DISABLED) ||
                         (request_pstr->command_enu == R_FCL_CMD_GET_SERIAL_ID_ENABLED))
                {
                    if (request_pstr->bufferAdd_u32 == 0x00000000u)
                    {
                        request_pstr->status_enu = R_FCL_ERR_PARAMETER;
                    }
                    else
                    {
                        R_FCL_FCUFct_GetSecurityFlag ();
                    }
                }
            else if (request_pstr->command_enu == R_FCL_CMD_PREPARE_ENV)
            {
                request_pstr->status_enu = R_FCL_ERR_FLOW;
            }
            else
            {
                request_pstr->status_enu = R_FCL_ERR_COMMAND;
            }
                 
                while (R_FCL_BUSY == request_pstr->status_enu)
                {
                    (*g_fcl_data_str.handlerPtr_p)();
                }
        }
        
         
        else if (g_fcl_data_str.intStatus_enu == R_FCL_ISTAT_BUSY)
        {
            request_pstr->status_enu = R_FCL_ERR_REJECTED;
        }
        
         
        else
        {
            request_pstr->status_enu = R_FCL_ERR_FLOW;
        }
    }
}  


 




 
















 
 




 















 
 




 


















 
 

 
