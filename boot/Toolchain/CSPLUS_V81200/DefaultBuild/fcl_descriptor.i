





 



















 









 




 









 



















 









 







 



 








 



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



 




 









 



















 









 




 



 




 
extern r_fcl_descriptor_t sampleApp_fclConfig_enu;  




 






 




 




 
 
r_fcl_descriptor_t sampleApp_fclConfig_enu = 
{
    {0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF},       
    0xFEDD0000,                          
    (120)                          
};



 
