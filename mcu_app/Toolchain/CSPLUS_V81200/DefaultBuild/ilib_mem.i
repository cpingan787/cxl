











 











 



 










 

 









 



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







 




 




 














 
void* ILib_memcpy(void*  dstptr, const void*  srcptr, uint32 length);








 
void* ILib_memset(void*  dstptr, uint8 val, uint32 n);








 
uint8 ILib_memcmp(const void*  str1ptr, const void*  str2ptr, uint32 n);




 









 
uint8 ILib_MemHeapInit(void* ram, uint32 size);







 
void* ILib_MemHeapMalloc(void* ram, uint32 size);








 
void* ILib_MemHeapCalloc(void* ram, uint32 count, uint32 size);







 
uint8 ILib_MemHeapFree(void* ram, void* ptr);







 
uint8 ILib_MemHeapGetManageSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetRealMaxSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetUsedSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetCurFreeMaxBlockSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetMaxMallocSize(const void* ram, uint32* size);







 



 

 
 
 
   


 
 
 
 

 

 

 

 

 








 
static uint8 ILib_endMemcmp(const void* dst, const void* src, const void* dstLast);








 
static void ILib_endMemcpy(void* dst, const void* src, const void* dstLast);








 
static void ILib_endMemset(void* dst, uintptr_t vlu, const void* dstLast);
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 







 

   

void* ILib_memcpy(void*  dstptr, const void*  srcptr, uint32 length)
 
{
    const uintptr_t* src = srcptr;                        
    uintptr_t* dst = dstptr;                              
    const uint8* dst_last = &((uint8*)dstptr)[length];    
    const uint8* dst_tmp;
     
    if (!(((uintptr_t)(dst) << 30u) == 0u))
    {
        dst_tmp = (const uint8*)(((uintptr_t)(((uintptr_t)(dst) + sizeof(uintptr_t) - 1u)) >> 2u) << 2u);
        if ((uintptr_t)dst_tmp > (uintptr_t)dst_last)
        {
            ILib_endMemcpy(dst, src, dst_last);
            return dstptr;
        }
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            *(uint8*)dst = *(const uint8*)src;
            dst = (uintptr_t*)((uintptr_t)dst + 1u);
            src = (const uintptr_t*)((uintptr_t)src + 1u);
        }
    }
     
    if ((((uintptr_t)(src) << 30u) == 0u))
    {
        dst_tmp = (uint8*)(((uintptr_t)(dst_last) > (sizeof(uintptr_t) << 2u)) ? ((uintptr_t)(dst_last) - (sizeof(uintptr_t) << 2u)) : 0u);
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            dst[0] = src[0];
            dst[1] = src[1];
            dst[2] = src[2];
            dst[3] = src[3];
            src = &src[4uL];
            dst = &dst[4uL];
        }
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) >> 2u) << 2u);
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            *dst = *src;
            dst++;
            src++;
        }
    }
    else
    {

        uintptr_t offset_vlu = (((uintptr_t)(src) << 30u) >> 30u);
        uintptr_t right_shift = ((((uintptr_t)(src) << 30u) >> 30u) << 3u);
        uintptr_t left_shift = ((sizeof(uintptr_t) - ((((uintptr_t)(src) << 30u) >> 30u))) << 3u);
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) > (sizeof(uintptr_t) << 2u)) ? ((uintptr_t)(dst_last) - (sizeof(uintptr_t) << 2u)) : 0u);
        src = (const uintptr_t*)(((uintptr_t)(src) >> 2u) << 2u);

        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            dst[0] = (src[0] >> right_shift) | (src[1] << left_shift);
            dst[1] = (src[1] >> right_shift) | (src[2] << left_shift);
            dst[2] = (src[2] >> right_shift) | (src[3] << left_shift);
            dst[3] = (src[3] >> right_shift) | (src[4] << left_shift);

            src = &src[4uL];
            dst = &dst[4uL];
        }
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) >> 2u) << 2u);
        for (; (uintptr_t)dst < (uintptr_t)dst_tmp; dst++)
        {
            *dst = (src[0] >> right_shift) | (src[1] << left_shift);
            src++;
        }
        src = (const uintptr_t*)((uintptr_t)src + offset_vlu);
    }
     
    ILib_endMemcpy(dst, src, dst_last);

    return dstptr;
}
 








 

   

void* ILib_memset(void*  dstptr, uint8 val, uint32 n)
 
{
    uintptr_t vlu = val;
    uintptr_t* dst = dstptr;                         
    const uint8* dst_last = &((uint8*)dstptr)[n];    
    const uint8* dst_tmp;
    if (n >= sizeof(uintptr_t))
    {
         
        for (uintptr_t i = 0u; i < sizeof(uintptr_t); i++)
        {
            vlu <<= 8u;
            vlu |= (uintptr_t)val;
        }
    }
    if (!(((uintptr_t)(dst) << 30u) == 0u))
    {
         
        dst_tmp = (uint8*)(((uintptr_t)(((uintptr_t)(dst) + sizeof(uintptr_t) - 1u)) >> 2u) << 2u);
        if ((uintptr_t)dst_tmp > (uintptr_t)dst_last)
        {
            ILib_endMemset(dst, vlu, dst_last);
            return dstptr;
        }
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            *(uint8*)dst = (uint8)vlu;
            dst = (uintptr_t*)((uintptr_t)dst + 1u);
        }
    }
     
    dst_tmp = (uint8*)(((uintptr_t)(dst_last) > (sizeof(uintptr_t) << 2u)) ? ((uintptr_t)(dst_last) - (sizeof(uintptr_t) << 2u)) : 0u);
    while ((uintptr_t)dst < (uintptr_t)dst_tmp)
    {
        dst[0] = vlu;
        dst[1] = vlu;
        dst[2] = vlu;
        dst[3] = vlu;
        dst = &dst[4uL];
    }
    dst_tmp = (uint8*)(((uintptr_t)(dst_last) >> 2u) << 2u);
    while ((uintptr_t)dst < (uintptr_t)dst_tmp)
    {
        *dst = vlu;
        dst++;
    }
     
    ILib_endMemset(dst, vlu, dst_last);
    return dstptr;
}
 








 
   

uint8 ILib_memcmp(const void*  str1ptr, const void*  str2ptr, uint32 n)
 
{
    const uintptr_t* src = str2ptr;                         
    const uintptr_t* dst = str1ptr;                         
    const uint8* dst_last = &((const uint8*)str1ptr)[n];    
    const uint8* dst_tmp;
    if (!(((uintptr_t)(dst) << 30u) == 0u))
    {
        dst_tmp = (const uint8*)(((uintptr_t)(((uintptr_t)(dst) + sizeof(uintptr_t) - 1u)) >> 2u) << 2u);
        if ((uintptr_t)dst_tmp > (uintptr_t)dst_last)
        {
            return ILib_endMemcmp(dst, src, dst_last);
        }
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            if (*(const uint8*)dst != *(const uint8*)src)
            {
                return 1u;
            }
            dst = (const uintptr_t*)((uintptr_t)dst + 1u);
            src = (const uintptr_t*)((uintptr_t)src + 1u);
        }
    }
     
    if ((((uintptr_t)(src) << 30u) == 0u))
    {
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) > (sizeof(uintptr_t) << 2u)) ? ((uintptr_t)(dst_last) - (sizeof(uintptr_t) << 2u)) : 0u);
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            if ((dst[0] != src[0]) || (dst[1] != src[1]) || (dst[2] != src[2]) || (dst[3] != src[3]))
            {
                return 1u;
            }
            src = &src[4uL];
            dst = &dst[4uL];
        }
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) >> 2u) << 2u);
        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            if (*(dst) != *(src))
            {
                return 1u;
            }
            dst++;
            src++;
        }
    }
    else
    {

        uintptr_t offset_vlu = (((uintptr_t)(src) << 30u) >> 30u);
        uintptr_t right_shift = ((((uintptr_t)(src) << 30u) >> 30u) << 3u);
        uintptr_t left_shift = ((sizeof(uintptr_t) - ((((uintptr_t)(src) << 30u) >> 30u))) << 3u);
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) > (sizeof(uintptr_t) << 2u)) ? ((uintptr_t)(dst_last) - (sizeof(uintptr_t) << 2u)) : 0u);
        src = (const uintptr_t*)(((uintptr_t)(src) >> 2u) << 2u);

        while ((uintptr_t)dst < (uintptr_t)dst_tmp)
        {
            if ((dst[0] != ((src[0] >> right_shift) | (src[1] << left_shift)))
                || (dst[1] != ((src[1] >> right_shift) | (src[2] << left_shift)))
                || (dst[2] != ((src[2] >> right_shift) | (src[3] << left_shift)))
                || (dst[3] != ((src[3] >> right_shift) | (src[4] << left_shift))))
            {
                return 1u;
            }
            src = &src[4uL];
            dst = &dst[4uL];
        }
        dst_tmp = (const uint8*)(((uintptr_t)(dst_last) >> 2u) << 2u);
        for (; (uintptr_t)dst < (uintptr_t)dst_tmp; dst++)
        {
            if (*dst != ((src[0] >> right_shift) | (src[1] << left_shift)))
            {
                return 1u;
            }
            src++;
        }
        src = (const uintptr_t*)((uintptr_t)src + offset_vlu);
    }
     
    return ILib_endMemcmp(dst, src, dst_last);
}


 
static uint8 ILib_endMemcmp(const void* dst, const void* src, const void* dstLast)
{
    uint8 Ret = 0u;
    const uintptr_t* pDst = (const uintptr_t*)dst;    
    const uintptr_t* pSrc = (const uintptr_t*)src;    
    const uint8* pDstLast = (const uint8*)dstLast;    

    while ((uintptr_t)pDst < (uintptr_t)pDstLast)
    {
        if (*(const uint8*)pDst != *(const uint8*)pSrc)
        {
            Ret = 1u;
            break;
        }
        pDst = (uintptr_t*)((uintptr_t)pDst + (uintptr_t)1uLL);
        pSrc = (const uintptr_t*)((uintptr_t)pSrc + 1);    
    }

    return Ret;
}

static void ILib_endMemcpy(void* dst, const void* src, const void* dstLast)
{
    uintptr_t* pDst = (uintptr_t*)dst;                
    const uintptr_t* pSrc = (const uintptr_t*)src;    
    const uint8* pDstLast = (const uint8*)dstLast;    

    while ((uintptr_t)pDst < (uintptr_t)pDstLast)
    {
        *(uint8*)pDst = *(const uint8*)pSrc;    
        pDst = (uintptr_t*)((uintptr_t)pDst + 1uL);
        pSrc = (const uintptr_t*)((uintptr_t)pSrc + 1uL);
    }
}

static void ILib_endMemset(void* dst, uintptr_t vlu, const void* dstLast)
{
    uintptr_t* pDst = (uintptr_t*)dst;                
    const uint8* pDstLast = (const uint8*)dstLast;    

    while ((uintptr_t)pDst < (uintptr_t)pDstLast)
    {
        *(uint8*)pDst = (uint8)vlu;
        pDst = (uintptr_t*)((uintptr_t)pDst + 1uL);
    }
}
 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 
