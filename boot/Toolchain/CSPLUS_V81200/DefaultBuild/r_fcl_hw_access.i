








 



















 

 
 
 









 









 






 






 





 








 








 



 









 



















 









 







 



 








 



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












 



















 









 




 


 












 




 
















 




 






 




 




 




 
static uint8_t        R_FCL_I_read_memory_u08            (const uint32_t addr_u32);
static uint16_t       R_FCL_I_read_memory_u16            (const uint32_t addr_u32);
static uint32_t       R_FCL_I_read_memory_u32            (const uint32_t addr_u32);
static void           R_FCL_I_write_memory_u16           (const uint32_t addr_u32, const uint16_t val_u16);
static void           R_FCL_I_write_memory_u32           (const uint32_t addr_u32, const uint32_t val_u32);
static void           R_FCL_I_write_unaligned_memory_u32 (const uint32_t addr_u32, const uint32_t val_u32);
static uint32_t       R_FCL_I_GetCPUCorePid              (void);
static r_fcl_status_t R_FCL_FCUFct_Clear_Cache           (void);
static r_fcl_status_t R_FCL_FCUFct_Chk_DBFull            (void);
static r_fcl_status_t R_FCL_FCUFct_ForcedStop            (void);
static void           R_FCL_FCUFct_RestoreLastState      (void);
static void           R_FCL_FCUFct_ClearStatus           (void);
static void           R_FCL_FCUFct_GetDeviceInfo         (void);
static r_fcl_status_t R_FCL_FCUFct_VerifyID              (void);
static void           R_FCL_FCUFct_SetFrequency          (void);
static r_fcl_status_t R_FCL_FCUFct_GetResult             (r_fcl_flag_t cmdSpdExec_enu);
static r_fcl_flag_t   R_FCL_FCUFct_ChkSuspended          (void);
static void           R_FCL_FCUFct_HandleMultiOperation_IntErr (r_fcl_op_status_t opState);
static void           R_FCL_FCUFct_PrepareEnvironment_IntErr (r_fcl_op_status_t opState);



 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static uint32_t R_FCL_I_read_memory_u32 (const uint32_t addr_u32)
{
        return ( *( (volatile uint32_t *)(addr_u32) ) );                                           
}


 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static uint16_t R_FCL_I_read_memory_u16 (const uint32_t addr_u32)
{
        return ( *( (volatile uint16_t *)(addr_u32) ) );                                           
}


 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static uint8_t R_FCL_I_read_memory_u08 (const uint32_t addr_u32)
{
        return ( *( (volatile uint8_t *)(addr_u32) ) );                                            
}


 




 






 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_I_write_unaligned_memory_u32 (const uint32_t addr_u32, const uint32_t val_u32)
{
    R_FCL_I_write_memory_u08 (addr_u32,       (uint8_t)val_u32);
    R_FCL_I_write_memory_u08 ((addr_u32 + 1u), (uint8_t)(val_u32 >> 8));
    R_FCL_I_write_memory_u08 ((addr_u32 + 2u), (uint8_t)(val_u32 >> 16));
    R_FCL_I_write_memory_u08 ((addr_u32 + 3u), (uint8_t)(val_u32 >> 24));
}


 




 






 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_I_write_memory_u32 (const uint32_t addr_u32, const uint32_t val_u32)
{
        ( *( (volatile uint32_t *)(addr_u32) ) ) = val_u32;                                        
}


 




 






 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_I_write_memory_u16 (const uint32_t addr_u32, const uint16_t val_u16)
{
        ( *( (volatile uint16_t *)(addr_u32) ) ) = val_u16;                                        
}


 




 






 
 
        #pragma section text "R_FCL_CODE_RAM"
void R_FCL_I_write_memory_u08 (const uint32_t addr_u32, const uint8_t val_u08)
{
        ( *( (volatile uint8_t *)(addr_u32) ) ) = val_u08;                                         
}


 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static uint32_t R_FCL_I_GetCPUCorePid (void)
{
    uint32_t pid;

     
    pid = R_FCL_Fct_Get_PID_Asm();

    pid &= (0x000000E0u);     

    return (pid);
}


 

 


 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_Fct_CallFromRAM (void)                                                                   
{
    if (0x00000000u != g_fcl_data_str.executionPtr_p)
    {
        (*g_fcl_data_str.executionPtr_p)();
    }
    else
    {
        R_FCL_FCUFct_GetConfigArea ();
    }
}


 




 










 
 
        #pragma section text "R_FCL_CODE_RAM"
static r_fcl_status_t R_FCL_FCUFct_VerifyID ( void )
{
    uint32_t       result;
    r_fcl_status_t ret;

    ret = R_FCL_OK;

    R_FCL_I_write_memory_u32 (((0xFFA08000u) + 0x000u), (g_fcl_data_str.RTCfg_pstr->id_au32[0]));   
    R_FCL_I_write_memory_u32 (((0xFFA08000u) + 0x004u), (g_fcl_data_str.RTCfg_pstr->id_au32[1]));
    R_FCL_I_write_memory_u32 (((0xFFA08000u) + 0x008u), (g_fcl_data_str.RTCfg_pstr->id_au32[2]));
    R_FCL_I_write_memory_u32 (((0xFFA08000u) + 0x00cu), (g_fcl_data_str.RTCfg_pstr->id_au32[3]));

     
    (void) R_FCL_I_read_memory_u32 (((0xFFA08000u) + 0x00cu));

     
    result = R_FCL_I_read_memory_u32 (((0xFFA08000u) + 0x010u));
    if ((0x00000001u) == result)
    {
        ret = R_FCL_ERR_PROTECTION;
    }

    return (ret);
}  


 



 






 
 
        #pragma section text "R_FCL_CODE_RAM"
static r_fcl_status_t R_FCL_FCUFct_Clear_Cache (void)
{
    uint32_t bwc;
    uint32_t pid;
    uint32_t res;
    r_fcl_status_t ret;

    pid = R_FCL_I_GetCPUCorePid ();

     
    if ((0x00000020u) == pid)
    {
        bwc = (0xFFBC0700u);
    }

     
    else if ((0x000000a0u) == pid)
    {
        bwc = (0xFFC5B000u);
    }

     
    else
    {
        bwc = 0x00000000u;
    }

    ret = R_FCL_OK;
    res = R_FCL_FCUFct_Clear_Cache_Asm (bwc, ( ( (40u * (uint32_t)(g_fcl_data_str . RTCfg_pstr->frequencyCpuMHz_u16)) + ((3u) - 1u) ) / (3u) ));
    if (0x00000000u != res)
    {
        ret = R_FCL_ERR_INTERNAL;
    }

    return (ret);
}


 



 






 
 
        #pragma section text "R_FCL_CODE_RAM"
static r_fcl_status_t R_FCL_FCUFct_Chk_DBFull (void)
{
    r_fcl_status_t ret;
    uint32_t res;
    
     
    res = R_FCL_FCUFct_ChkReg (((0xFFA10000u) + 0x080u),
                               (0x00000400u),
                               0x00000000u,                 
                               ( ( (40u * (uint32_t)(g_fcl_data_str . RTCfg_pstr->frequencyCpuMHz_u16)) + ((19u) - 1u) ) / (19u) ));


     
    if (0x00000000u == res)
    {
        ret = R_FCL_OK;
    }
    
     
    else
    {
        ret = R_FCL_ERR_INTERNAL;
    }

    return (ret);
}


 
 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_FCUFct_SetFrequency  (void)
{
    uint16_t       ffcu;

     
    if (g_fcl_data_str.deviceInfo_str.fVersion_u8 != 0xffu)
    {
        ffcu = g_fcl_data_str.RTCfg_pstr->frequencyCpuMHz_u16;                              
       
         
         
         
         
         
        if ((g_fcl_data_str.deviceInfo_str.fMin_u16 > ffcu) ||
            (g_fcl_data_str.deviceInfo_str.fMax_u16 < ffcu))
        {
            g_fcl_data_str.opVar_str.opResult_enu = R_FCL_ERR_PARAMETER;
        }
        else
        {
        
             
            if (g_fcl_data_str.deviceInfo_str.fDivider_u8 == 0xFFu)
            {
                ffcu = g_fcl_data_str.deviceInfo_str.fPClk_u16;
            }
            else
            {
                if (g_fcl_data_str.deviceInfo_str.fDivider_u8 > 0u)
                {
                    

 
                     
                     
                     
                     
                     
                     
                     
                    ffcu = ( (ffcu + g_fcl_data_str.deviceInfo_str.fDivider_u8) - 1u) /
                            g_fcl_data_str.deviceInfo_str.fDivider_u8;
                     
                }
            }

            R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x0E4u), (0x1E00u) + (uint16_t)ffcu);
            g_fcl_data_str.opVar_str.opResult_enu = R_FCL_OK;
        }
    }
    
     
    else
    {
        g_fcl_data_str.opVar_str.opResult_enu = R_FCL_OK;
    }
}  


 




 










 
 
        #pragma section text "R_FCL_CODE_RAM"
r_fcl_status_t R_FCL_FCUFct_SwitchMode_Start (r_fcl_mode_t mode_enu)                                
{
    r_fcl_status_t ret;
    uint32_t       regFSTATR;
    uint16_t       regFENTRYR;

    ret = R_FCL_OK;

    if (R_FCL_READ_MODE == mode_enu)
    {
        regFSTATR = R_FCL_I_read_memory_u32 (((0xFFA10000u) + 0x080u));

         
        if ((0x00000000u) != ( regFSTATR & ((0x00002000u) +
                                                          (0x00001000u) +
                                                          (0x00004000u))))
        {
            R_FCL_FCUFct_ClearStatus ();
        }
    }
    else
    {
        regFENTRYR = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x084u));
         
        if ((regFENTRYR & (uint16_t)((0x0080u))) == (uint16_t)((0x0080u)))
        {
            ret = R_FCL_ERR_REJECTED;
        }
        
         
        else if ((regFENTRYR & (uint16_t)0x00FFu) == (uint16_t)mode_enu)
        {
            ret = R_FCL_ERR_REJECTED;
        }
        else
        {
             
            R_FCL_I_write_memory_u32 (((0xFFA10000u) + 0x030u), 0x00000000u);
            R_FCL_I_write_memory_u32 (((0xFFA10000u) + 0x034u), 0x00000000u);
        }
    }
    
    if (R_FCL_OK == ret)
    {
        R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x084u), (uint16_t)(mode_enu) + (0xAA00u));
        g_fcl_data_str.flashMode_enu = mode_enu;
    }
    
    return (ret);
}  


 




 







 
 
        #pragma section text "R_FCL_CODE_RAM"
r_fcl_status_t R_FCL_FCUFct_SwitchMode_Check ( void )
{
    r_fcl_status_t ret;
    uint16_t       regFENTRYR;

    ret = R_FCL_BUSY;

    regFENTRYR = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x084u));
    regFENTRYR &= (uint16_t)(((0x0080u)) + ((0x0001u)));
    if ((uint16_t)g_fcl_data_str.flashMode_enu == regFENTRYR)
    {
        ret = R_FCL_OK;
    }

    return (ret);
}  


 




 







 
 
        #pragma section text "R_FCL_CODE_RAM"
static r_fcl_status_t R_FCL_FCUFct_ForcedStop (void)                                           
{
    r_fcl_status_t ret;
    uint32_t res;

    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xB3u));


     
    res = R_FCL_FCUFct_ChkReg (((0xFFA10000u) + 0x080u),
                               (0x00008000u),
                               (0x00008000u),   
                               ( ( (40u * (uint32_t)(g_fcl_data_str . RTCfg_pstr->frequencyCpuMHz_u16)) + ((19u) - 1u) ) / (19u) ));


     
    if (0x00000000u == res)
    {
        ret = R_FCL_OK;
    }
    
     
    else
    {
        ret = R_FCL_ERR_INTERNAL;
    }
    
    return (ret);

}  


 




 







 
 
        #pragma section text "R_FCL_CODE_RAM"
static r_fcl_flag_t R_FCL_FCUFct_ChkSuspended (void)
{
    uint32_t        regFSTATR;
    r_fcl_flag_t    ret;

    ret = R_FCL_FALSE;

    regFSTATR = R_FCL_I_read_memory_u32 (((0xFFA10000u) + 0x080u));
    if (((0x00000100u) == (regFSTATR & (0x00000100u))) ||
        ((0x00000200u) == (regFSTATR & (0x00000200u))))
    {
        ret = R_FCL_TRUE;
    }
    
    return ret;
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_FCUFct_ClearStatus (void)
{
    uint32_t res32;
    uint8_t  res8;

    res32 = R_FCL_I_read_memory_u32 (((0xFFA10000u) + 0x080u));

     
    if ((0x00004000u) == ((0x00004000u) & res32))
    {
        res8 = R_FCL_I_read_memory_u08 (((0xFFA10000u) + 0x010u));
         
        if ((0x10u) != res8)
        {
            R_FCL_I_write_memory_u08 (((0xFFA10000u) + 0x010u), (0x10u));
        }
    }

    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x50u));
}  


 




 








 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_FCUFct_RestoreLastState (void)
{
    if (g_fcl_data_str.suspendInfo_str.flagSuspended_enu == R_FCL_FALSE)
    {
        g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_PREPARED;
    }
    else
    {
        g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_SUSPENDED;
    }
}  


 




 





 
 




 







 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
r_fcl_flag_t R_FCL_FCUFct_CheckMode (void)
{
    r_fcl_flag_t ret;
    uint8_t      regVal;

    ret = R_FCL_FALSE;

    regVal = R_FCL_I_read_memory_u08 (((0xFFA10000u)));
    if ((0x80u) == (regVal & (0x80u)))
    {
        ret = R_FCL_TRUE;
    }

    return (ret);
}  


 




 














 
 
        #pragma section text "R_FCL_CODE_RAM"
static r_fcl_status_t R_FCL_FCUFct_GetResult (r_fcl_flag_t cmdSpdExec_enu)
{
    r_fcl_status_t ret;
    uint32_t       regFSTATR;
    uint16_t       regFPESTAT;

    regFSTATR = R_FCL_I_read_memory_u32 (((0xFFA10000u) + 0x080u));

     
    if ((0x00008000u) == (regFSTATR & (0x00008000u)))
    {
        
         
        if (((0x00000002u) == (regFSTATR & (0x00000002u))) ||
            ((0x00000008u)   == (regFSTATR & (0x00000008u)))   ||
            ((0x00000020u)  == (regFSTATR & (0x00000020u)))  ||
            ((0x00000080u)    == (regFSTATR & (0x00000080u)))    ||
            ((0x00020000u)   == (regFSTATR & (0x00020000u))))
        {
            ret = R_FCL_ERR_INTERNAL;
        }
        
         
        else if ((0x00004000u) == (regFSTATR & (0x00004000u)))
        {
            if (R_FCL_FALSE == cmdSpdExec_enu)
            {
                ret = R_FCL_ERR_INTERNAL;
            }
            else
            {
                ret = R_FCL_ERR_SUSPEND_FAILED;
            }
        }
        
         
        else if ((0x00000040u) == (regFSTATR & (0x00000040u)))
        {
            ret = R_FCL_ERR_PROTECTION;
        }
        
         
        else if ((0x00002000u) == (regFSTATR & (0x00002000u)))
        {
            regFPESTAT = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x0C0u));
            if ((0x0011u) != (regFPESTAT & (0x0011u)))
            {
                ret = R_FCL_ERR_ERASE;
            }
            else
            {
                ret = R_FCL_ERR_PROTECTION;
            }
            
        }
        
         
        else if ((0x00001000u) == (regFSTATR & (0x00001000u)))
        {
            regFPESTAT = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x0C0u));
            if ((0x0001u) != (regFPESTAT & (0x0001u)))
            {
                ret = R_FCL_ERR_WRITE;
            }
            else
            {
                ret = R_FCL_ERR_PROTECTION;
            }
        }
        
         
        else
        {
            ret = R_FCL_OK;
        }
    }
    
     
    else
    {
        ret = R_FCL_BUSY;
    }


    return (ret);
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
void R_FCL_FCUFct_GetConfigArea (void)                                                                 
{
    uint16_t data;
    uint16_t i;
    uint32_t bufAddr;
    uint32_t readAddr;
    uint32_t cnt;
    r_fcl_status_t ret;
    r_fcl_status_t ret1;

    R_FCL_FCUFct_Switch_BFlash (0x01u);
    ret = R_FCL_FCUFct_Clear_Cache ();

     
    if (R_FCL_OK == ret)
    {
         
        if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_OPB)                              
        {
            readAddr = ((0xFF300000u) + 0x70u);
            cnt = (2u * (0x08u));
        }
        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_ID)
        {
            readAddr = ((0xFF300000u) + 0x50u);
            cnt = ((0x08u));
        }
        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_OTP)
        {
            readAddr = g_fcl_data_str.opVar_str.opAddr_u32;
            cnt = ((0x08u));
        }
        
         
        else
        {
            readAddr = ((0xFF300000u) + 0x60u);
            cnt = ((0x08u));
        }

        bufAddr = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;

         
        for (i = 0u; i < (2u * cnt); i++)
        {
            data = R_FCL_I_read_memory_u08 (readAddr);
            R_FCL_I_write_memory_u08 (bufAddr, (uint8_t)data);
            bufAddr++;
            readAddr++;
        }
    }  
    
    R_FCL_FCUFct_Switch_BFlash (0x00u);
    ret1 = R_FCL_FCUFct_Clear_Cache ();

     
    if (R_FCL_OK == ret)
    {
        ret = ret1;
    }

     
    if (R_FCL_OK != ret)
    {
        g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_NOINIT;
    }

    g_fcl_data_str.reqInt_pstr->status_enu = ret;
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_SetConfigArea (void)
{
    uint32_t flag;
    uint8_t  i;

    if (R_FCL_FCUFct_CheckMode () == R_FCL_FALSE)
    {
         
        g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_FLMD0;                                   
    }
    else
    {
         
        if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_OPB)
        {
            g_fcl_data_str.opVar_str.buffAddr_u32 = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;
            g_fcl_data_str.opVar_str.opAddr_u32   = ((0xFF300000u) + 0x70u);
            g_fcl_data_str.opVar_str.opCnt_u16    = (2u * (0x08u));
        }
        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_OTP)
        {
            g_fcl_data_str.opVar_str.opCnt_u16 = ((0x08u));
        }
        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_ID)
        {
            g_fcl_data_str.opVar_str.buffAddr_u32 = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;
            g_fcl_data_str.opVar_str.opAddr_u32   = ((0xFF300000u) + 0x50u);
            g_fcl_data_str.opVar_str.opCnt_u16    = ((0x08u));
        }
        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_RESET_VECTOR)
        {
            g_fcl_data_str.opVar_str.buffAddr_u32 = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;
            g_fcl_data_str.opVar_str.opAddr_u32   = ((0xFF300000u) + 0x60u);
            g_fcl_data_str.opVar_str.opCnt_u16    = ((0x08u));
        }

         
        else
        {
            flag = g_fcl_data_str.deviceInfo_str.secureData_u32;
            g_fcl_data_str.opVar_str.opAddr_u32 = ((0xFF300000u) + 0x40u);
            g_fcl_data_str.opVar_str.opCnt_u16  = (0x08u);

            if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_READ_PROTECT_FLAG)
            {
                flag = flag & ~(1u << (0x1Fu));
            }
            else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_WRITE_PROTECT_FLAG)
            {
                flag = flag & ~(1u << (0x1Eu));
            }
            else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_ERASE_PROTECT_FLAG)
            {
                flag = flag & ~(1u << (0x1Du));
            }
            else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_SERIAL_PROG_DISABLED)
            {
                flag = flag & ~(1u << (0x1Bu));
            }
            else
            {
                flag = flag & ~(1u << (0x1Fu));
                flag = flag & ~(1u << (0x1Du));
                flag = flag & ~(1u << (0x1Eu));
                flag = flag & ~(1u << (0x18u));
            }
            flag = flag & 0xfffffff0u;

             
            g_fcl_data_str.intBuf_au08[0] = (uint8_t)flag;
            g_fcl_data_str.intBuf_au08[1] = (uint8_t)(flag >> 8u);
            g_fcl_data_str.intBuf_au08[2] = (uint8_t)(flag >> 16u);
            g_fcl_data_str.intBuf_au08[3] = (uint8_t)(flag >> 24u);
            for (i = 4u; i < (2u*(0x08u)); i++)
            {
                g_fcl_data_str.intBuf_au08[i] = (uint8_t)0xffu;
            }
            g_fcl_data_str.opVar_str.buffAddr_u32 = (uint32_t)(&g_fcl_data_str.intBuf_au08[0]);     
        }
        g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_BUSY;
        g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
    }
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_GetSecurityFlag (void)                                                            
{
    uint32_t data;

     
    if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_READ_PROTECT_FLAG)                 
    {
        data = (((~g_fcl_data_str.deviceInfo_str.secureData_u32) & (0x80000000u)) >> (0x1Fu));
    }
    else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_WRITE_PROTECT_FLAG)
    {
        data = (((~g_fcl_data_str.deviceInfo_str.secureData_u32) & (0x40000000u)) >> (0x1Eu));
    }
    else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_ERASE_PROTECT_FLAG)
    {
        data = (((~g_fcl_data_str.deviceInfo_str.secureData_u32) & (0x20000000u)) >> (0x1Du));
    }
    else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_SERIAL_PROG_DISABLED)
    {
        data = (((~g_fcl_data_str.deviceInfo_str.secureData_u32) & (0x08000000u)) >> (0x1Bu));
    }
    else
    {
        data = (((~g_fcl_data_str.deviceInfo_str.secureData_u32) & (0x01000000u)) >> (0x18u));
    }

    R_FCL_I_write_unaligned_memory_u32 (g_fcl_data_str.reqInt_pstr->bufferAdd_u32, data);

    g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_OK;
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_GetBlockCnt (void)                                                                
{
    R_FCL_I_write_unaligned_memory_u32 (g_fcl_data_str.reqInt_pstr->bufferAdd_u32,
                                        (uint32_t)g_fcl_data_str.deviceInfo_str.blkCnt_u16);

    g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_OK;
}


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_GetDeviceName (void)                                                              
{
    uint32_t bufAddr;
    uint8_t  i;

    bufAddr = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;                                            

    for (i = 0u; i < 16u; i++)
    {
        R_FCL_I_write_memory_u08 (bufAddr, g_fcl_data_str.deviceInfo_str.deviceName_au08[i]);
        bufAddr += 1u;
    }
    g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_OK;
}


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_GetBlockEndAddr (void)                                                            
{
    uint32_t blk;
    uint32_t data;

                                                                    
    if ((0x80000000u) == (g_fcl_data_str.reqInt_pstr->idx_u32 & (0x80000000u)))
    {
         
        if ( ((g_fcl_data_str.reqInt_pstr->idx_u32 & (0x7FFFFFFFu)) <
               g_fcl_data_str.deviceInfo_str.usrBlkCnt32kB_u32)
           && (g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu != R_FCL_FALSE) )
        {
            blk = ((g_fcl_data_str.reqInt_pstr->idx_u32 & (0x7FFFFFFFu)) + 1u);
            data = (blk * (0x8000u)) - 1u;
            data = data + (0x01000000u);
            R_FCL_I_write_unaligned_memory_u32 (g_fcl_data_str.reqInt_pstr->bufferAdd_u32, data);
            g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_OK;
        }
        else
        {
            g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
        }
    }
    
     
    else
    {
         
        if (g_fcl_data_str.reqInt_pstr->idx_u32 < g_fcl_data_str.deviceInfo_str.blkCnt_u16)
        {
             
            if (g_fcl_data_str.reqInt_pstr->idx_u32 < g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8)
            {
                blk = (g_fcl_data_str.reqInt_pstr->idx_u32 + 1u);
                data = (blk * (0x2000u)) - 1u;
                R_FCL_I_write_unaligned_memory_u32 (g_fcl_data_str.reqInt_pstr->bufferAdd_u32, data);
            }
            
             
            else
            {
                 
                if (g_fcl_data_str.reqInt_pstr->idx_u32 <
                   (g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8 +
                    g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32))
                {
                    blk  = (g_fcl_data_str.reqInt_pstr->idx_u32 + 1u) -
                             g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8;
                    data = (((uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8) * (0x2000u)) +
                            (blk * (0x8000u))) - 1u;
                    R_FCL_I_write_unaligned_memory_u32 (g_fcl_data_str.reqInt_pstr->bufferAdd_u32, data);
                }
                else
                {
                     
                    blk  = (g_fcl_data_str.reqInt_pstr->idx_u32 + 1u) -
                            (g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8 +
                             g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32);
                    data = ((0x00800000u) + (blk * (0x8000u))) - 1u;
                    R_FCL_I_write_unaligned_memory_u32 (g_fcl_data_str.reqInt_pstr->bufferAdd_u32, data);
                }
            }
            g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_OK;
        }
        else
        {
            g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
        }
    }
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_FCUFct_PrepareEnvironment_IntErr (r_fcl_op_status_t opState)
{
     
    R_FCL_I_write_memory_u08 (((0xFFA10000u) + 0x014u), (0x99u));

    g_fcl_data_str.opVar_str.opStatus_enu = opState;
}




 









 
 
        #pragma section text "R_FCL_CODE_RAM"
void R_FCL_FCUFct_PrepareEnvironment (void)
{
    r_fcl_status_t ret;
    uint16_t regFENTRYR;

     
    if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_OP_PREPARE_STATE)
    {
         
        regFENTRYR = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x084u));
        if ((0x0000u) == regFENTRYR)
        {
            g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;

             
            R_FCL_I_write_memory_u08 (((0xFFA10000u) + 0x014u), (0x88u));

             
            R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x054u), (0x0001u) +
                                      (0x0002u) + (0xC400u));

                 
                R_FCL_FCUFct_GetDeviceInfo ();

            
 
            R_FCL_FCUFct_Switch_BFlash (0x01u);
            ret = R_FCL_FCUFct_Clear_Cache ();


             
            if (R_FCL_OK != ret)
            {
                R_FCL_FCUFct_Switch_BFlash (0x00u);
                (void)R_FCL_FCUFct_Clear_Cache ();      

                R_FCL_FCUFct_PrepareEnvironment_IntErr (R_FCL_OP_INTERNAL_ERROR_STATE);
            }
            else
            {
                
 
                g_fcl_data_str.deviceInfo_str.secureData_u32 = R_FCL_I_read_memory_u32 (((0xFF300000u) + 0x40u));

                    

 
                    g_fcl_data_str.fcuramAddr_u32 = ((0xFFA12000u) + (0x00001000u));
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_PREP_COPY_FW_STATE;


            }
        }
        else
        {
            g_fcl_data_str.opVar_str.opResult_enu = R_FCL_ERR_REJECTED;
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
        }
    }

     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_PREP_COPY_FW_STATE)
    {

         
        if (g_fcl_data_str.fcuramAddr_u32 >= ((0xFFA12000u) + (0x00001000u)))
        {
             
            R_FCL_FCUFct_Switch_BFlash (0x00u);
            ret = R_FCL_FCUFct_Clear_Cache ();

             
            if (R_FCL_OK != ret)
            {
                R_FCL_FCUFct_PrepareEnvironment_IntErr (R_FCL_OP_INTERNAL_ERROR_STATE);
            }

             
            else
            {
                 
                R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x054u),
                                          (0x0000u) + (0xC400u));

                ret = R_FCL_FCUFct_SwitchMode_Start (R_FCL_CFG_WRITE_MODE);
                 

                if (R_FCL_OK == ret)
                {
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_PREP_RESET_FCU_STATE;
                }
                else
                {
                     
                    R_FCL_I_write_memory_u08 (((0xFFA10000u) + 0x014u), (0x99u));

                    g_fcl_data_str.opVar_str.opResult_enu = ret;
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
                }
            }  
        }
        else
        {
            (void)R_FCL_Fct_Copy_Code (g_fcl_data_str.firmAddr_u32, g_fcl_data_str.fcuramAddr_u32,
                                       ((0x00001000u) / 8u));
        }
    }

     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_PREP_RESET_FCU_STATE)
    {
         
        ret = R_FCL_FCUFct_SwitchMode_Check ();
        if (R_FCL_OK == ret)
        {
            ret = R_FCL_FCUFct_ForcedStop ();
            
             
            if (R_FCL_OK != ret)
            {
                R_FCL_FCUFct_PrepareEnvironment_IntErr (R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE);
            }
            else
            {
                R_FCL_FCUFct_ClearStatus ();

                (void)R_FCL_FCUFct_SwitchMode_Start (R_FCL_READ_MODE);

                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_PREP_FCURAM_CHKSUM_STATE;
            }

             
            R_FCL_I_write_memory_u08 (((0xFFA10000u) + 0x014u), (0x99u));
        }
    }
    
     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_PREP_FCURAM_CHKSUM_STATE)
    {
         
        ret = R_FCL_FCUFct_SwitchMode_Check ();
        if (R_FCL_OK == ret)
        {
             
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_PREP_ID_CHECK_FREQ_SET_STATE;

        }
    }
    
     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_PREP_ID_CHECK_FREQ_SET_STATE)
    {
         
        ret = R_FCL_FCUFct_VerifyID ();
        if (R_FCL_OK == ret)
        {
            R_FCL_FCUFct_SetFrequency ();
        }
        else
        {
            g_fcl_data_str.opVar_str.opResult_enu = ret;
        }
        g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
    }
    
     
    else  
    {
         
        g_fcl_data_str.reqInt_pstr->status_enu = g_fcl_data_str.opVar_str.opResult_enu;             
        if (g_fcl_data_str.reqInt_pstr->status_enu == R_FCL_OK)
        {
            g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_PREPARED;
        }
        else
        {
            g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_INIT;
        }
        g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_IDLE_STATE;

        g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu = R_FCL_OP_IDLE_STATE;
        g_fcl_data_str.suspendInfo_str.reqSuspend_pstr = (r_fcl_request_t *)(0x00000000u);
        g_fcl_data_str.suspendInfo_str.flagSuspended_enu = R_FCL_FALSE;
        g_fcl_data_str.cancelReq_enu = R_FCL_FALSE;
    }
}  


 




 















 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_FCUFct_GetDeviceInfo (void)                                                 
{
    uint32_t data;
    uint32_t dataAddr;

     
    g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu = R_FCL_TRUE;
    
     
    g_fcl_data_str.deviceInfo_str.fVersion_u8 = R_FCL_I_read_memory_u08 (((0x01030000u) + 0x219u));

     
    dataAddr = R_FCL_I_read_memory_u32 (((0x01030000u) + 0x270u));

     
    data = R_FCL_I_read_memory_u32 (dataAddr + (0xC0u));
    g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32 = ((data & 0xffff0000u) >> 16) / 32u;
    g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8 = (uint8_t)((data & 0x0000ffffu) / 8u);

     
    data = R_FCL_I_read_memory_u32 (dataAddr + (0xC4u));
    g_fcl_data_str.deviceInfo_str.cf2BlkCnt32kB_u32 = (data & 0x0000ffffu) / 32u;

     
    data = (((0x01007FFFu) + 1u) - (0x01000000u));
    g_fcl_data_str.deviceInfo_str.usrBlkCnt32kB_u32 = data / (0x8000u);


    data = R_FCL_I_read_memory_u32 (dataAddr + (0xCCu));

     
    if ((data & 0x000000ffu) == 0x55u)                                                              
    {
        g_fcl_data_str.deviceInfo_str.emulationMode_enu = R_FCL_TRUE;
    }
    else
    {
        g_fcl_data_str.deviceInfo_str.emulationMode_enu = R_FCL_FALSE;
    }

     
    data = R_FCL_I_read_memory_u32 (dataAddr + (0xD0u));
    g_fcl_data_str.deviceInfo_str.deviceName_au08[0]  = (uint8_t)(data & 0x000000ffu);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[1]  = (uint8_t)((data & 0x0000ff00u) >> 8);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[2]  = (uint8_t)((data & 0x00ff0000u) >> 16);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[3]  = (uint8_t)((data & 0xff000000u) >> 24);
    data = R_FCL_I_read_memory_u32 (dataAddr + (0xD4u));
    
     
    if (g_fcl_data_str.deviceInfo_str.fVersion_u8 != 0xffu)
    {
         
        if (g_fcl_data_str.deviceInfo_str.fVersion_u8 < (0x04u))
        {
            g_fcl_data_str.deviceInfo_str.fDivider_u8 =
                R_FCL_I_read_memory_u08 (((0x01030000u) + 0x264u));
            g_fcl_data_str.deviceInfo_str.fPClk_u16 =
                (uint16_t)(R_FCL_I_read_memory_u32 (((0x01030000u) + 0x274u)) / 1000000u);
            
             
            if (  ((data & 0x00FFFFFFu) == (0x00323130u))
               || ((data & 0x00FFFFFFu) == (0x005A3130u)) )                              
            {
                g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu = R_FCL_FALSE;
            }
        }
        else
        {
             
            g_fcl_data_str.deviceInfo_str.fDivider_u8 =
                R_FCL_I_read_memory_u08 (((0x01030000u) + 0x265u));
            g_fcl_data_str.deviceInfo_str.fPClk_u16 =
                (uint16_t)(R_FCL_I_read_memory_u32 (((0x01030000u) + 0x278u)) / 1000000u);

             
            if (0u == R_FCL_I_read_memory_u08 (((0x01030000u) + 0x21Eu)))                 
            {
                g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu = R_FCL_FALSE;
            }
        }

         
        if ((0x000000a0u) == R_FCL_I_GetCPUCorePid ())
        {
            g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu = R_FCL_TRUE;
        }

         
        g_fcl_data_str.deviceInfo_str.fMax_u16 =
            (uint16_t)(R_FCL_I_read_memory_u32 (((0x01030000u) + 0x234u)) / 1000000u);
        g_fcl_data_str.deviceInfo_str.fMin_u16 =
            (uint16_t)(R_FCL_I_read_memory_u32 (((0x01030000u) + 0x238u)) / 1000000u);
    }

    g_fcl_data_str.deviceInfo_str.deviceName_au08[4]  = (uint8_t)(data & 0x000000ffu);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[5]  = (uint8_t)((data & 0x0000ff00u) >> 8);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[6]  = (uint8_t)((data & 0x00ff0000u) >> 16);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[7]  = (uint8_t)((data & 0xff000000u) >> 24);
    data = R_FCL_I_read_memory_u32 (dataAddr + (0xD8u));
    g_fcl_data_str.deviceInfo_str.deviceName_au08[8]  = (uint8_t)(data & 0x000000ffu);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[9]  = (uint8_t)((data & 0x0000ff00u) >> 8);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[10] = (uint8_t)((data & 0x00ff0000u) >> 16);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[11] = (uint8_t)((data & 0xff000000u) >> 24);
    data = R_FCL_I_read_memory_u32 (dataAddr + (0xDCu));
    g_fcl_data_str.deviceInfo_str.deviceName_au08[12] = (uint8_t)(data & 0x000000ffu);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[13] = (uint8_t)((data & 0x0000ff00u) >> 8);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[14] = (uint8_t)((data & 0x00ff0000u) >> 16);
    g_fcl_data_str.deviceInfo_str.deviceName_au08[15] = (uint8_t)((data & 0xff000000u) >> 24);

     
    g_fcl_data_str.deviceInfo_str.blkCnt_u16 = (uint16_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8 +
                                                              g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32 +
                                                              g_fcl_data_str.deviceInfo_str.cf2BlkCnt32kB_u32);

}  


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_Erase (void)
{
    uint32_t blockCnt;

     
    if (R_FCL_FCUFct_CheckMode () == R_FCL_FALSE)
    {
        
        g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_FLMD0;                                   
    }
    else
    {
    
         
        if ((0x80000000u) == (g_fcl_data_str.reqInt_pstr->idx_u32 & (0x80000000u)))
        {
            blockCnt = (g_fcl_data_str.reqInt_pstr->idx_u32 & (0x7FFFFFFFu));

             
            if (  ((blockCnt + g_fcl_data_str.reqInt_pstr->cnt_u16) <=
                    g_fcl_data_str.deviceInfo_str.usrBlkCnt32kB_u32)
               && (g_fcl_data_str.reqInt_pstr->cnt_u16 > 0u)
               && (g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu != R_FCL_FALSE))
            {
                 
                g_fcl_data_str.opVar_str.opCnt_u16 = g_fcl_data_str.reqInt_pstr->cnt_u16;
                g_fcl_data_str.opVar_str.opAddr_u32 = (0x01000000u) +
                                                        ((g_fcl_data_str.reqInt_pstr->idx_u32 &
                                                          (0x7FFFFFFFu)) * (0x8000u));
                g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_BUSY;
                g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
            }
            
             
            else
            {
                g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
            }
        }
        
         
        else
        {
             
            blockCnt = g_fcl_data_str.reqInt_pstr->idx_u32;

             
            if (  ((blockCnt + g_fcl_data_str.reqInt_pstr->cnt_u16) <= g_fcl_data_str.deviceInfo_str.blkCnt_u16)
               && (g_fcl_data_str.reqInt_pstr->cnt_u16 > 0u))
            {
                 
                g_fcl_data_str.opVar_str.opCnt_u16 = g_fcl_data_str.reqInt_pstr->cnt_u16;
                
                 
                if (g_fcl_data_str.reqInt_pstr->idx_u32  < g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8)
                {
                    g_fcl_data_str.opVar_str.opAddr_u32 =
                        g_fcl_data_str.reqInt_pstr->idx_u32 * (0x2000u);
                }
                
                 
                else if ( g_fcl_data_str.reqInt_pstr->idx_u32 <
                          (g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8  +
                           g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32)
                        )
                {
                    g_fcl_data_str.opVar_str.opAddr_u32 =
                       ((uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8) * (0x2000u)) +
                       ((g_fcl_data_str.reqInt_pstr->idx_u32 - g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8)
                        * (0x8000u));
                }
                
                 
                else
                {
                    g_fcl_data_str.opVar_str.opAddr_u32 = (0x00800000u) +
                        ((g_fcl_data_str.reqInt_pstr->idx_u32 - g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8
                          - g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32) * (0x8000u));
                }
                g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_BUSY;
                g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
            }
            
             
            else
            {
                g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
            }
        }
    }
}  


 




 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_Write (void)
{
    uint32_t startAddr;

     
    if (R_FCL_FCUFct_CheckMode () == R_FCL_FALSE)
    {
        g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_FLMD0;                                   
    }
    else
    {
         
        startAddr = g_fcl_data_str.reqInt_pstr->idx_u32;

         
        if ((((startAddr + ((uint32_t)(g_fcl_data_str.reqInt_pstr->cnt_u16) * (2u * (0x80u)))) <=
             (((uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8) * (0x2000u)) +
              (g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32 * (0x8000u)))) ||
            (((startAddr + ((uint32_t)(g_fcl_data_str.reqInt_pstr->cnt_u16) * (2u * (0x80u)))) <=
              ((0x00800000u) + (g_fcl_data_str.deviceInfo_str.cf2BlkCnt32kB_u32 * (0x8000u)))) &&
              (g_fcl_data_str.reqInt_pstr->idx_u32 >= (0x00800000u)))) &&
             ((g_fcl_data_str.reqInt_pstr->idx_u32 % (2u * (0x80u))) == 0u) &&
              (g_fcl_data_str.reqInt_pstr->cnt_u16 > 0u))
        {
            g_fcl_data_str.opVar_str.buffAddr_u32 = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;
            g_fcl_data_str.opVar_str.opCnt_u16    = g_fcl_data_str.reqInt_pstr->cnt_u16;
            g_fcl_data_str.opVar_str.opAddr_u32   = g_fcl_data_str.reqInt_pstr->idx_u32;
            g_fcl_data_str.intStatus_enu          = R_FCL_ISTAT_BUSY;
            g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
        }
        
         
        else if ((((startAddr + ((uint32_t)(g_fcl_data_str.reqInt_pstr->cnt_u16) * (2u * (0x80u)))) <=
                   ((0x01000000u) +
                   (g_fcl_data_str.deviceInfo_str.usrBlkCnt32kB_u32 * (0x8000u)))) &&
                  ((g_fcl_data_str.reqInt_pstr->idx_u32 % (2u * (0x80u))) == 0u)) &&
                   (g_fcl_data_str.reqInt_pstr->cnt_u16 > 0u) &&
                   (g_fcl_data_str.reqInt_pstr->idx_u32 >= (0x01000000u)) &&
                   (g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu != R_FCL_FALSE))
        {
            g_fcl_data_str.opVar_str.buffAddr_u32 = g_fcl_data_str.reqInt_pstr->bufferAdd_u32;
            g_fcl_data_str.opVar_str.opCnt_u16    = g_fcl_data_str.reqInt_pstr->cnt_u16;
            g_fcl_data_str.opVar_str.opAddr_u32   = g_fcl_data_str.reqInt_pstr->idx_u32;
            g_fcl_data_str.intStatus_enu          = R_FCL_ISTAT_BUSY;
            g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
        }
        
         
        else
        {
            g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
        }
    }
}  


 



 





 
 
        #pragma section text "R_FCL_CODE_RAM"
static void R_FCL_FCUFct_HandleMultiOperation_IntErr (r_fcl_op_status_t opState)
{
     
    R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x020u),
                              g_fcl_data_str.deviceInfo_str.matSel_u16 + (0x3B00u));

    g_fcl_data_str.opVar_str.opStatus_enu = opState;
}



 







 
 
        #pragma section text "R_FCL_CODE_RAM"
void R_FCL_FCUFct_HandleMultiOperation (void)
{
    r_fcl_status_t ret;
    r_fcl_status_t res;
    uint32_t       regFSTATR;
    uint16_t       data;
    uint32_t       i;
    uint32_t       readData;
    r_fcl_flag_t   skipCode;
    r_fcl_flag_t   isCmdSpdExec;

     
    if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_OP_PREPARE_STATE)
    {
        g_fcl_data_str.deviceInfo_str.matSel_u16  = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x020u));

         
        if (R_FCL_FALSE == g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu)
        {

             
            if ((g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_LOCKBIT) ||               
                (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_LOCKBIT) ||
                (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_ERASE) ||
                (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_WRITE))
            {
                ret = R_FCL_FCUFct_SwitchMode_Start (R_FCL_WRITE_MODE);
            }
            
             
            else
            {
                ret = R_FCL_FCUFct_SwitchMode_Start (R_FCL_CFG_WRITE_MODE);
            }

             
            if (ret == R_FCL_OK)
            {
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_PE_MODE_SWITCH_STATE;
                g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
            }
            else
            {
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
                g_fcl_data_str.opVar_str.opResult_enu = ret;
            }
        }
        else
        {
            g_fcl_data_str.suspendInfo_str.matSel_u16 = g_fcl_data_str.deviceInfo_str.matSel_u16;
            g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu = g_fcl_data_str.opVar_str.opStatus_enu;
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
        }
    }
    
     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_CHECK_PE_MODE_SWITCH_STATE)
    {
         
        ret = R_FCL_FCUFct_SwitchMode_Check();
        if (R_FCL_OK == ret)
        {
             
            if (R_FCL_FALSE == g_fcl_data_str.cancelReq_enu)
            {

                 
                if (R_FCL_FALSE == g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu)
                {
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_START_OP_STATE;
                }
                else
                {
                    g_fcl_data_str.suspendInfo_str.matSel_u16 = g_fcl_data_str.deviceInfo_str.matSel_u16;
                    g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                }
            }
            
             
            else
            {
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                
                ret = R_FCL_FCUFct_ForcedStop ();
            
                 
                if (R_FCL_OK != ret)
                {
                    R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE);
                }
            }
        }
    }
    
     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_START_OP_STATE)
    {

         
        if (R_FCL_FALSE == g_fcl_data_str.cancelReq_enu)
        {

             
            if (R_FCL_FALSE == g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu)
            {

                 
                if ((g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_LOCKBIT) ||
                    (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_LOCKBIT) ||
                    (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_ERASE) ||
                    (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_WRITE))
                {

                     
                    if (g_fcl_data_str.deviceInfo_str.enableLockBits_enu == R_FCL_TRUE)
                    {
                        R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x088u),
                                                  (0x0000u) + (0x5500u));
                    }
                    else
                    {
                        R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x088u),
                                                  (0x0001u) + (0x5500u));
                    }

                     
                    if (g_fcl_data_str.opVar_str.opAddr_u32 < (0x01000000u))
                    {
                        R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x020u),
                                                  (0x0000u) + (0x3B00u));
                    }
                    else
                    {
                        R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x020u),
                                                  (0x0002u) + (0x3B00u));
                    }
                }
                
                R_FCL_I_write_memory_u32 (((0xFFA10000u) + 0x030u), g_fcl_data_str.opVar_str.opAddr_u32);
                
                 
                if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_ERASE)
                {
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x20u));
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xD0u));
                    g_fcl_data_str.opVar_str.opCnt_u16 -= 1u;
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_RESULT_STATE;
                }
                
                else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_WRITE)
                {
                     
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xE8u));
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x80u));

                     
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_START_WRITE_OP_STATE;

                     
                    ret = R_FCL_OK;
                    for (i = 0u; ( (i < (0x40u)) && (R_FCL_OK == ret) ); i++)
                    {
                         
                        data = (uint16_t)R_FCL_I_read_memory_u08 (g_fcl_data_str.opVar_str.buffAddr_u32 + 1u);
                        data <<= 8;
                        data += (uint16_t)R_FCL_I_read_memory_u08 (g_fcl_data_str.opVar_str.buffAddr_u32);
                        g_fcl_data_str.opVar_str.buffAddr_u32 += 2u;
                        R_FCL_I_write_memory_u16 ((0xFFA20000u), data);
                        
                        ret = R_FCL_FCUFct_Chk_DBFull ();

                         
                        if (R_FCL_OK != ret)
                        {
                            
 
                            R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_STATE);
                        }
                    }
                }
                else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_LOCKBIT)
                {
                     
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x71u));
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xD0u));
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_RESULT_STATE;
                }
                else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_LOCKBIT)
                {
                     
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x77u));
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xD0u));
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_RESULT_STATE;
                }
                
                 
                else
                {
                    if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_OTP)
                    {
                        R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x45u));
                    }
                    else
                    {
                        R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x40u));
                    }
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0x08u));

                     
                    for (i = 0u; i < (0x08u); i++)
                    {
                         
                        data = (uint16_t)R_FCL_I_read_memory_u08 (g_fcl_data_str.opVar_str.buffAddr_u32 + 1u);
                        data <<= 8;
                        data += (uint16_t)R_FCL_I_read_memory_u08 (g_fcl_data_str.opVar_str.buffAddr_u32);
                        g_fcl_data_str.opVar_str.buffAddr_u32 += 2u;
                        R_FCL_I_write_memory_u16 ((0xFFA20000u), data);
                    }
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xD0u));
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_RESULT_STATE;
                }
            }
            else
            {
                g_fcl_data_str.suspendInfo_str.matSel_u16 = g_fcl_data_str.deviceInfo_str.matSel_u16;
                g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
            }
        }
        
         
        else
        {
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;

            ret = R_FCL_FCUFct_ForcedStop();
            
             
            if (R_FCL_OK != ret)
            {
                R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE);
            }
        }
    }

     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_START_WRITE_OP_STATE)
    {
         
        ret = R_FCL_OK;
        for (i = (0x40u); ( (i < (0x80u)) &&
                                                  (R_FCL_OK == ret) ); i++)
        {
             
            data = (uint16_t)R_FCL_I_read_memory_u08 (g_fcl_data_str.opVar_str.buffAddr_u32 + 1u);
            data <<= 8;
            data += (uint16_t)R_FCL_I_read_memory_u08 (g_fcl_data_str.opVar_str.buffAddr_u32);
            g_fcl_data_str.opVar_str.buffAddr_u32 += 2u;
            R_FCL_I_write_memory_u16 ((0xFFA20000u), data);

            ret = R_FCL_FCUFct_Chk_DBFull ();
        }
        
         
        if (R_FCL_OK == ret)
        {
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_RESULT_STATE;
            R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xD0u));
        }
        
         
        else
        {
            
 
 
            R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_STATE);
        }
    }

     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_CHECK_RESULT_STATE)
    {

         
        if (R_FCL_FALSE == g_fcl_data_str.cancelReq_enu)
        {
            isCmdSpdExec = R_FCL_FALSE;

             
            if ( (R_FCL_TRUE == g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu) &&
                 (g_fcl_data_str.suspendInfo_str.reqSuspend_pstr == (r_fcl_request_t *)(0x00000000u)) )
            {
                g_fcl_data_str.suspendInfo_str.matSel_u16 = R_FCL_I_read_memory_u16 (((0xFFA10000u) + 0x020u));
                regFSTATR = R_FCL_I_read_memory_u32 (((0xFFA10000u) + 0x080u));

                 
                if ((0x00000800u) == (regFSTATR & (0x00000800u)))
                {
                    R_FCL_I_write_memory_u08 ((0xFFA20000u), (0xB0u));
                    g_fcl_data_str.suspendInfo_str.reqSuspend_pstr = g_fcl_data_str.reqInt_pstr;
                    isCmdSpdExec = R_FCL_TRUE;
                }
            }
        
            ret = R_FCL_FCUFct_GetResult (isCmdSpdExec);
            
             
            if (ret != R_FCL_BUSY)
            {

                 
                if ((g_fcl_data_str.suspendInfo_str.reqSuspend_pstr != (r_fcl_request_t *)(0x00000000u)) &&
                    (R_FCL_TRUE == g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu))
                {

                     
                    if (ret != R_FCL_OK)
                    {
                        g_fcl_data_str.opVar_str.opResult_enu = ret;
                        g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu = R_FCL_FALSE;
                    }
                    else
                    {
                        g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu = R_FCL_BUSY_CHECK_RESULT_STATE;
                    }
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                }
                
                 
                else
                {
                    g_fcl_data_str.opVar_str.opResult_enu = ret;
                    
                     
                    if (g_fcl_data_str.opVar_str.opResult_enu != R_FCL_OK)
                    {
                         
                        g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                    }
                    else
                    {

                         
                        if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_WRITE)
                        {
                             
                            readData = g_fcl_data_str.reqInt_pstr->idx_u32;
    
                             
                            if ((g_fcl_data_str.opVar_str.opAddr_u32 + (2u * (0x80u))) <
                                (readData + ((uint32_t)(g_fcl_data_str.reqInt_pstr->cnt_u16) * (2u * (0x80u)))))
                            {
                                g_fcl_data_str.opVar_str.opAddr_u32 += (2u * (0x80u));
                                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_START_OP_STATE;
                                g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
                            }
                            
                             
                            else
                            {
                                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                            }
                        }
                        
                         
                        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_ERASE)
                        {
                             
                            if (g_fcl_data_str.opVar_str.opCnt_u16 > 0u)
                            {
                                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_START_OP_STATE;
                                g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
                                 
                                readData = (g_fcl_data_str.reqInt_pstr->idx_u32 & (0x7FFFFFFFu));

                                 
                                if ((readData +
                                    ((uint32_t)(g_fcl_data_str.reqInt_pstr->cnt_u16) - (uint32_t)(g_fcl_data_str.opVar_str.opCnt_u16)))
                                     <= (uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8))
                                {
                                     
                                    g_fcl_data_str.opVar_str.opAddr_u32 += (0x2000u);
                                }
                             
                                 
                                else if ((readData +
                                     ((uint32_t)(g_fcl_data_str.reqInt_pstr->cnt_u16) - (uint32_t)(g_fcl_data_str.opVar_str.opCnt_u16)))
                                     == ((uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8) +
                                         g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32))
                                {
                                    
                                    g_fcl_data_str.opVar_str.opAddr_u32 = (0x00800000u);
                                }
                                
                                 
                                else
                                {
                                    g_fcl_data_str.opVar_str.opAddr_u32 += (0x8000u);
                                }
                            }
                            
                             
                            else
                            {
                                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                            }
                        }
                        
                         
                        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_GET_LOCKBIT)
                        {
                            readData = (uint32_t)R_FCL_I_read_memory_u08 (((0xFFA10000u) + 0x090u));
                            readData = ((~readData) & (uint32_t)0x01u);
                            R_FCL_I_write_unaligned_memory_u32(g_fcl_data_str.reqInt_pstr->bufferAdd_u32, readData);
                            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                        }
                        
                         
                        else if (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_LOCKBIT)
                        {
                             
                            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                        }

                         
                        else if ( (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_READ_PROTECT_FLAG) ||
                                  (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_WRITE_PROTECT_FLAG) ||
                                  (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_ERASE_PROTECT_FLAG) ||
                                  (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_SERIAL_PROG_DISABLED) ||
                                  (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_SET_SERIAL_ID_ENABLED) )
                        {
                             
                            g_fcl_data_str.deviceInfo_str.secureData_u32 =
                                    (uint32_t)g_fcl_data_str.intBuf_au08[0] +
                                ( ( (uint32_t)g_fcl_data_str.intBuf_au08[1] ) << 8 ) +
                                ( ( (uint32_t)g_fcl_data_str.intBuf_au08[2] ) << 16 ) +
                                ( ( (uint32_t)g_fcl_data_str.intBuf_au08[3] ) << 24 );
                            
                             
                            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                        }
                        
                         
                        else
                        {
                            g_fcl_data_str.opVar_str.opCnt_u16 -= (0x08u);

                             
                            if (g_fcl_data_str.opVar_str.opCnt_u16 > 0u)
                            {
                                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_START_OP_STATE;
                                g_fcl_data_str.opVar_str.opResult_enu = R_FCL_BUSY;
                                g_fcl_data_str.opVar_str.opAddr_u32 += (2u * (0x08u));
                            }
                            
                             
                            else
                            {
                                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;
                            }
                        }
                    }
                }
            }
        }

         
        else
        {
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_SWITCH_READ_MODE_STATE;

            ret = R_FCL_FCUFct_ForcedStop ();
        
             
            if (R_FCL_OK != ret)
            {
                R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE);
            }
        }
        
         
        if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_SWITCH_READ_MODE_STATE)
        {
            R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x020u),
                                      g_fcl_data_str.deviceInfo_str.matSel_u16 + (0x3B00u));
            R_FCL_FCUFct_ClearStatus ();
        }
    }
    
     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_SWITCH_READ_MODE_STATE)
    {
        (void)R_FCL_FCUFct_SwitchMode_Start (R_FCL_READ_MODE);
        g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_READ_MODE_SWITCH_STATE;
    }
    
     
    else if (g_fcl_data_str.opVar_str.opStatus_enu == R_FCL_BUSY_CHECK_READ_MODE_SWITCH_STATE)
    {
        ret = R_FCL_FCUFct_SwitchMode_Check ();
        if (R_FCL_OK == ret)
        {
            g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
        }
    }
    
     
    else  
    {

         
        if (R_FCL_FALSE == g_fcl_data_str.cancelReq_enu)
        {

             
            if (R_FCL_FALSE == g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu)
            {
                ret = R_FCL_OK;
                if ((g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_ERASE) ||
                    (g_fcl_data_str.reqInt_pstr->command_enu == R_FCL_CMD_WRITE)  )
                {
                    ret = R_FCL_FCUFct_Clear_Cache ();
                    
                     
                    if (R_FCL_OK != ret)
                    {
                         
                        R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_STATE);
                    }
                }
                
                if (R_FCL_OK == ret)
                {
                     
                    g_fcl_data_str.reqInt_pstr->status_enu = g_fcl_data_str.opVar_str.opResult_enu;
                    R_FCL_FCUFct_RestoreLastState ();
                    g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_IDLE_STATE;
                }
            }
            
             
            else
            {
                R_FCL_I_write_memory_u16 (((0xFFA10000u) + 0x020u),
                                          g_fcl_data_str.deviceInfo_str.matSel_u16 + (0x3B00u));

                 
                if ((g_fcl_data_str.suspendInfo_str.reqSuspend_pstr == (r_fcl_request_t *)(0x00000000u)) &&
                    (g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu == R_FCL_OP_IDLE_STATE))
                {
                    g_fcl_data_str.suspendInfo_str.opSuspend_str.opStatus_enu = R_FCL_OP_FINISHED_STATE;
                }
                g_fcl_data_str.suspendInfo_str.reqSuspend_pstr            = g_fcl_data_str.reqInt_pstr;
                g_fcl_data_str.suspendInfo_str.opSuspend_str.opAddr_u32   = g_fcl_data_str.opVar_str.opAddr_u32;
                g_fcl_data_str.suspendInfo_str.opSuspend_str.opCnt_u16    = g_fcl_data_str.opVar_str.opCnt_u16;
                g_fcl_data_str.suspendInfo_str.opSuspend_str.opResult_enu = g_fcl_data_str.opVar_str.opResult_enu;
                
                g_fcl_data_str.intStatus_enu                     = R_FCL_ISTAT_SUSPENDED;
                g_fcl_data_str.reqInt_pstr->status_enu           = R_FCL_SUSPENDED;
                g_fcl_data_str.suspendInfo_str.flagSuspended_enu = R_FCL_TRUE;
                g_fcl_data_str.suspendInfo_str.spdSpdRequest_enu = R_FCL_FALSE;
            }
        }
        
         
        else
        {
            skipCode = R_FCL_FALSE;
            ret      = R_FCL_CANCELLED;

             
            if ((r_fcl_request_t *)(0x00000000u) != g_fcl_data_str.suspendInfo_str.reqSuspend_pstr)
            {
 
                 
                if (R_FCL_FALSE != R_FCL_FCUFct_ChkSuspended())
                {
                    res = R_FCL_FCUFct_SwitchMode_Start (R_FCL_WRITE_MODE);
                    if (R_FCL_OK == res)
                    {
                        g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_BUSY_CHECK_PE_MODE_SWITCH_STATE;
                    }
                    else
                    {
                        R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_SWITCH_READ_STATE);
                    }
                    skipCode = R_FCL_TRUE;
                }
            }
        
             
            if (R_FCL_FALSE == skipCode)
            {
                res = R_FCL_FCUFct_Clear_Cache ();
                
                 
                if (R_FCL_OK != res)
                {
                    R_FCL_FCUFct_HandleMultiOperation_IntErr (R_FCL_OP_INTERNAL_ERROR_STATE);
                }
                else
                {
                    g_fcl_data_str.intStatus_enu           = R_FCL_ISTAT_PREPARED;
                    g_fcl_data_str.reqInt_pstr->status_enu = ret;
                    g_fcl_data_str.opVar_str.opStatus_enu  = R_FCL_OP_IDLE_STATE;
                    g_fcl_data_str.cancelReq_enu           = R_FCL_FALSE;
                    if ((r_fcl_request_t *)(0x00000000u) != g_fcl_data_str.suspendInfo_str.reqSuspend_pstr)
                    {
                        g_fcl_data_str.suspendInfo_str.reqSuspend_pstr->status_enu = ret;
                        g_fcl_data_str.suspendInfo_str.reqSuspend_pstr = (r_fcl_request_t *)(0x00000000u);
                        g_fcl_data_str.suspendInfo_str.flagSuspended_enu = R_FCL_FALSE;
                    }
                }  
            }  
        }  
    }  


}  


 






 





 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_HandleLockBit (void)                                                              
{
     
    if (R_FCL_FCUFct_CheckMode () == R_FCL_FALSE)
    {
        g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_FLMD0;                                   
    }
    else
    {

         
        if ((0x80000000u) == (g_fcl_data_str.reqInt_pstr->idx_u32 & (0x80000000u)))
        {
 
             
            if (  ((g_fcl_data_str.reqInt_pstr->idx_u32 & (0x7FFFFFFFu)) <
                    g_fcl_data_str.deviceInfo_str.usrBlkCnt32kB_u32)
               && (g_fcl_data_str.deviceInfo_str.accessExtendedUserArea_enu != R_FCL_FALSE) )
            {
                 
                g_fcl_data_str.opVar_str.opAddr_u32 = (0x01000000u) +
                                                        ((g_fcl_data_str.reqInt_pstr->idx_u32 &
                                                          (0x7FFFFFFFu)) * (0x8000u));
                g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_BUSY;
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
            }
            else
            {
                 
                g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
            }
        }

         
        else
        {

             
            if (g_fcl_data_str.reqInt_pstr->idx_u32 < g_fcl_data_str.deviceInfo_str.blkCnt_u16 )
            {

                 
                if (g_fcl_data_str.reqInt_pstr->idx_u32 < g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8)
                {
                    g_fcl_data_str.opVar_str.opAddr_u32 =
                        g_fcl_data_str.reqInt_pstr->idx_u32 * (0x2000u);
                }

                 
                else if ( g_fcl_data_str.reqInt_pstr->idx_u32 <
                          (g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8 +
                           g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32))
                {
                    g_fcl_data_str.opVar_str.opAddr_u32 =
                        ((uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8) * (0x2000u)) +
                        ( (g_fcl_data_str.reqInt_pstr->idx_u32 - (uint32_t)(g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8))
                          * (0x8000u));
                }
                else
                {
                     
                    g_fcl_data_str.opVar_str.opAddr_u32 = (0x00800000u) +
                       ((g_fcl_data_str.reqInt_pstr->idx_u32 - g_fcl_data_str.deviceInfo_str.cf1BlkCnt8kB_u8 -
                         g_fcl_data_str.deviceInfo_str.cf1BlkCnt32kB_u32) * (0x8000u));
                }
                g_fcl_data_str.intStatus_enu = R_FCL_ISTAT_BUSY;
                g_fcl_data_str.opVar_str.opStatus_enu = R_FCL_OP_PREPARE_STATE;
            }
            else
            {
                g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_ERR_PARAMETER;
            }
        }
    }
}  


 




 






 
 
        #pragma section text "R_FCL_CODE_ROMRAM"
void R_FCL_FCUFct_LockBitMode (uint16_t mode_u16)                                                   
{
    if (mode_u16 != (0x0001u))
    {
        g_fcl_data_str.deviceInfo_str.enableLockBits_enu = R_FCL_TRUE;
    }
    else
    {
        g_fcl_data_str.deviceInfo_str.enableLockBits_enu = R_FCL_FALSE;
    }
    g_fcl_data_str.reqInt_pstr->status_enu = R_FCL_OK;                                              
}  


 

 
