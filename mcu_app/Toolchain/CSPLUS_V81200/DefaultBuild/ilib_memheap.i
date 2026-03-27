











 











 



 









 

 













 











 


 


 


 













































 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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












 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;






 



 



 

 

 

 

 


 

 

 

 
   
 

 

 

 
 



 
typedef uint16 size_type;

 
typedef struct
{
    size_type prev;
    size_type next;
} FreePtrType;

 
typedef struct
{
    size_type prev;
    size_type size;
} BlockHeadType;

 
typedef struct
{
    BlockHeadType head;
    union {    
        FreePtrType free;
        uint8 buffer[1];
    } ptr;
} BlockType;

 
typedef struct
{
    uint32 initFlag;
    size_type manageSize;
    uint16 fli;
    uint8 sli[((size_type)(16u) - (size_type)(4u))];
    size_type freeLinker[((size_type)(16u) - (size_type)(4u))][(1u << (uint32)(3u))];

    size_type realSize;
    size_type usedSize;
    size_type maxMallocSize;

} HeapManager;



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static const uint32 MemHeap_Table[] = {
    0xFFFFFFFFu, 0u, 1u, 1u, 2u, 2u, 2u, 2u, 3u, 3u, 3u, 3u, 3u, 3u, 3u, 3u, 4u, 4u, 4u, 4u, 4u, 4u, 4u, 4u, 4u, 4u,
    4u,          4u, 4u, 4u, 4u, 4u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u,
    5u,          5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 5u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u,
    6u,          6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u,
    6u,          6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 6u, 7u, 7u,
    7u,          7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u,
    7u,          7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u,
    7u,          7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u,
    7u,          7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u,
    7u,          7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u, 7u};












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 



 



 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 






 
static uint32 MemHeap_LSBIT(uint32 i)
{
    uint32 a;
    uint32 x = i & ((size_type)0u - i);    

    a = (x <= 0xFFFFu) ? ((x <= 0xFFu) ? 0u : 8u) : ((x <= 0xFFFFFFu) ? 16u : 24u);
    a = a + MemHeap_Table[x >> a];
    return a;
}






 
static uint32 MemHeap_MSBIT(uint32 i)
{
    uint32 a;
    uint32 x = i;

    a = (x <= 0xFFFFu) ? ((x <= 0xFFu) ? 0u : 8u) : ((x <= 0xFFFFFFu) ? 16u : 24u);
    a = a + MemHeap_Table[x >> a];
    return a;
}







 
static void MemHeap_MatchNextIndex(uint32* size, uint32* fli, uint32* sli)
{
    uint32 slBlockSize;

    if (*size < (size_type)(32u))
    {
        *fli = 0u;
        *sli = (*size / ((size_type)(32u) / (1u << (uint32)(3u))));
    }
    else
    {
         
        slBlockSize = ((uint32)1u << (MemHeap_MSBIT(*size) - (uint32)(3u))) - 1u;

        
 
        *size = *size + slBlockSize;

         
        *fli = MemHeap_MSBIT(*size);
        *sli = (*size >> (*fli - (uint32)(3u))) - (1u << (uint32)(3u));
        *fli -= (size_type)(4u);

         
        *size &= (size_type)(~(size_type)slBlockSize);
    }
}







 
static void MemHeap_MatchIndex(size_type size, uint32* fli, uint32* sli)
{
    if (size < (size_type)(32u))
    {
        


 
        *fli = 0;
        *sli = ((uint32)size / ((size_type)(32u) / (1u << (uint32)(3u))));
    }
    else
    {
        *fli = MemHeap_MSBIT(size);
         
        *sli = ((uint32)size >> (*fli - (uint32)(3u))) - (1u << (uint32)(3u));
         
         
        *fli -= (size_type)(4u);
    }
}







 
   
static BlockType* MemHeap_FindFirstFreeBlock(const HeapManager* manager, uint32* fli, uint32* sli)
{
    uint32 tmp_sli = ((uint32)manager->sli[*fli] & ((~(uint32)0u) << *sli));
    BlockType* block = ((void *)0);

    if (tmp_sli > 0u)
    {
        *sli = MemHeap_LSBIT(tmp_sli);
        if (manager->freeLinker[*fli][*sli] != 0u)
        {
            block = ((BlockType*)((size_t)(manager) + (size_t)(manager->freeLinker[*fli][*sli])));
        }
        else
        {
            block = (BlockType*)(0u);
        }
    }
    else
    {
         
        *fli = MemHeap_LSBIT((uint32)manager->fli & (~(uint32)0u << (*fli + 1u)));
        if ((*fli > 0u) && (*fli < ((uint32)((size_type)(16u) - (size_type)(4u)))))
        {
            *sli = MemHeap_LSBIT((uint32)manager->sli[*fli]);
            if (manager->freeLinker[*fli][*sli] != 0u)
            {
                block = ((BlockType*)((size_t)(manager) + (size_t)(manager->freeLinker[*fli][*sli])));
            }
            else
            {
                block = (BlockType*)(0u);
            }
        }
        else
        {
            *fli = 0u;
        }
    }
    return block;
}
 








 
   
static void MemHeap_ExtractBlockDirect(HeapManager* manager, BlockType* block, uint32 fli, uint32 sli)
 
{
    BlockType* blocktmp = ((void *)0);
     
    manager->freeLinker[fli][sli] = block->ptr.free.next;
    if (0u != manager->freeLinker[fli][sli])
    {

        blocktmp = ((BlockType*)((size_t)(manager) + (size_t)(manager->freeLinker[fli][sli])));
        if (blocktmp == ((void *)0))
        {
            return;
        }
        blocktmp->ptr.free.prev = 0u;
    }
    else
    {
         
        ((manager->sli[fli]) = ((manager->sli[fli]) & (~((uint8)1u << (sli)))));    
        if (0u == manager->sli[fli])
        {
            ((manager->fli) = ((manager->fli) & (~((uint16)1u << (fli)))));    
        }
    }
    block->ptr.free.prev = 0u;
    block->ptr.free.next = 0u;
}
 






 
   
static void MemHeap_ExtractBlock(HeapManager* manager, BlockType* block)
 
{
    BlockType* tempBlock;
    uint32 fli;
    uint32 sli;
    if (block == ((void *)0))
    {
        return;
    }

    MemHeap_MatchIndex(block->head.size & (size_type)((~(size_type)0u) - (3u)), &fli, &sli);

    if (0u != block->ptr.free.next)
    {
        tempBlock = ((BlockType*)((size_t)(manager) + (size_t)(block->ptr . free . next)));
        tempBlock->ptr.free.prev = block->ptr.free.prev;
    }

    if (0u != block->ptr.free.prev)
    {
        tempBlock = ((BlockType*)((size_t)(manager) + (size_t)(block->ptr . free . prev)));
        tempBlock->ptr.free.next = block->ptr.free.next;
    }

     
    if (manager->freeLinker[fli][sli] == (size_type)((size_t)(block) - (size_t)(manager)))
    {
        manager->freeLinker[fli][sli] = block->ptr.free.next;

        if (0u == manager->freeLinker[fli][sli])
        {
             
            ((manager->sli[fli]) = ((manager->sli[fli]) & (~((uint8)1u << (sli)))));    
            if (0u == manager->sli[fli])
            {
                 
                ((manager->fli) = ((manager->fli) & (~((uint16)1u << (fli)))));    
            }
        }
    }

    block->ptr.free.prev = 0u;
    block->ptr.free.next = 0u;
}
 






 
   
static void MemHeap_InsertBlock(HeapManager* manager, BlockType* block)
 
{
    uint32 fli = 0u;
    uint32 sli = 0u;
    BlockType* tempBlock = ((void *)0);

    if (block == ((void *)0))
    {
        return;
    }
     
    MemHeap_MatchIndex(block->head.size & (size_type)((~(size_type)0u) - (3u)), &fli, &sli);

    block->ptr.free.prev = 0u;
    block->ptr.free.next = manager->freeLinker[fli][sli];

    if (0u != manager->freeLinker[fli][sli])
    {
        
 
        if (manager->freeLinker[fli][sli] != 0u)
        {
            tempBlock = ((BlockType*)((size_t)(manager) + (size_t)(manager->freeLinker[fli][sli])));
        }
        else
        {
            tempBlock = (BlockType*)(0u);
        }

        if (tempBlock == ((void *)0))
        {
            return;
        }
        tempBlock->ptr.free.prev = (size_type)((size_t)(block) - (size_t)(manager));
    }

     
    manager->freeLinker[fli][sli] = (size_type)((size_t)(block) - (size_t)(manager));

    ((manager->sli[fli]) = ((manager->sli[fli]) | ((uint8)1u << (sli))));    
    ((manager->fli) = ((manager->fli) | ((uint16)1u << (fli))));        
}
 







 
   
static BlockType* MemHeap_SplitBlock(const HeapManager* manager, const BlockType* block, uint32 size)

{
    BlockType* splitBlock = (BlockType*)((void *)0);
    if (block == ((void *)0))
    {
        return splitBlock;
    }
    uint16 remainSize = (block->head.size & (size_type)((~(size_type)0u) - (3u))) - (size_type)size;

    if (remainSize >= sizeof(BlockType))
    {
        remainSize = remainSize - (size_type)(sizeof(BlockType) - sizeof(FreePtrType));

         
        splitBlock = ((BlockType*)((size_t)(block->ptr . buffer) + (size_t)(size)));
         
        splitBlock->head.size = remainSize | (size_type)(0x1u);

        
 

        BlockType* nextBlock = ((BlockType*)((size_t)(block->ptr . buffer) + (size_t)((size_t)block->head . size & ((~(size_type)0u) - (3u)))));

        ((splitBlock)->head . prev = (size_type)((size_t)(block) - (size_t)(manager)));
        ((nextBlock)->head . prev = (size_type)((size_t)(splitBlock) - (size_t)(manager)));
    }

    return splitBlock;
}
 







 
   
uint8 ILib_MemHeapInit(void* ram, uint32 size)
{
    StatusType ret = 0U;
    HeapManager* manager = (HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (size > 0xFFFFuL)
    {
        ret = 3U;
    }

     
    else if (size < (sizeof(HeapManager) + (sizeof(BlockType) * 2u)))
    {
        ret = 3U;
    }

     
    else if (0x2A59FA59u == manager->initFlag)
    {
        ret = 4U;
    }

    else
    {
        (void)ILib_memset(manager, 0, sizeof(HeapManager));

        manager->initFlag = 0x2A59FA59u;
        manager->manageSize = (size_type)size;

         

        BlockType* firstBlock = ((BlockType*)((size_t)(manager) + (size_t)((size_type)(((sizeof(HeapManager)) + (size_type)((1u << (uint32)(3u)) - 1u)) & ~(size_type)((1u << (uint32)(3u)) - 1u)))));

        firstBlock->head.prev = 0u;
        firstBlock->head.size = 0u | (size_type)(0x0u) | (size_type)(0x0u);

         
        BlockType* block = ((BlockType*)((size_t)(firstBlock) + (size_t)((size_type)((((size_type)(sizeof(BlockType) - sizeof(FreePtrType))) + (size_type)((1u << (uint32)(3u)) - 1u)) & ~(size_type)((1u << (uint32)(3u)) - 1u)))));
        ((block)->head . prev = (size_type)((size_t)(firstBlock) - (size_t)(manager)));
        block->ptr.free.prev = 0u;
        block->ptr.free.next = 0u;
         
        block->head.size = (size_type)(((size_type)(((size_type)size - (size_type)(((sizeof(HeapManager)) + (size_type)((1u << (uint32)(3u)) - 1u)) & ~(size_type)((1u << (uint32)(3u)) - 1u)) - ((size_type)3u * ((size_type)(sizeof(BlockType) - sizeof(FreePtrType))))))) & ~(size_type)((1u << (uint32)(3u)) - 1u));

         

        BlockType* endBlock = ((BlockType*)((size_t)(block->ptr . buffer) + (size_t)(block->head . size & ((~(size_type)0u) - (3u)))));
        ((endBlock)->head . prev = (size_type)((size_t)(block) - (size_t)(manager)));
        endBlock->head.size = 0u | (size_type)(0x0u) | (size_type)(0x2u);

        manager->manageSize = (size_type)size;

        manager->realSize = block->head.size;
        manager->usedSize = block->head.size;
        manager->maxMallocSize = 0;
         
        ret = ILib_MemHeapFree(ram, block->ptr.buffer);
    }

    return ret;
}
 







 
   
void* ILib_MemHeapMalloc(void* ram, uint32 size)
{
    StatusType ret = 0U;
    HeapManager* manager;
    void* ptr = ((void *)0);

    manager = (HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (size_t)(sizeof(void*) - (size_t)1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (size > 0xFFFFuL)
    {
        ret = 3U;
    }

     
    else if (0u == size)
    {
        ret = 3U;
    }

    else
    {
        uint32 fli;
        uint32 sli;

         
        uint32 local_size = (size < (size_type)((((sizeof(FreePtrType))) + (size_type)((1u << (uint32)(3u)) - 1u)) & ~(size_type)((1u << (uint32)(3u)) - 1u))) ? (size_type)((((sizeof(FreePtrType))) + (size_type)((1u << (uint32)(3u)) - 1u)) & ~(size_type)((1u << (uint32)(3u)) - 1u)) : (size_type)(((size) + (size_type)((1u << (uint32)(3u)) - 1u)) & ~(size_type)((1u << (uint32)(3u)) - 1u));

        MemHeap_MatchNextIndex(&local_size, &fli, &sli);
        BlockType* block = MemHeap_FindFirstFreeBlock(manager, &fli, &sli);

        if (((void *)0) != block)
        {

            manager->usedSize = manager->usedSize + (size_type)(local_size & ((~(size_type)0u) - (3u)));

            if (manager->maxMallocSize < local_size)
            {
                manager->maxMallocSize = (size_type)local_size;
            }

            MemHeap_ExtractBlockDirect(manager, block, fli, sli);

            BlockType* nextBlock = ((BlockType*)((size_t)(block->ptr . buffer) + (size_t)((size_t)block->head . size & ((~(size_type)0u) - (3u)))));

             
            BlockType* splitBlock = MemHeap_SplitBlock(manager, block, local_size);

            if (((void *)0) != splitBlock)
            {
                 
                MemHeap_InsertBlock(manager, splitBlock);

                 
                block->head.size = ((size_type)local_size | (block->head.size & (size_type)(size_type)(0x2u))) & (~(size_type)(0x1u));
            }
            else
            {
                 
                block->head.size &= (~(size_type)(0x1u));

                nextBlock->head.size &= (~(size_type)(0x2u));
            }

            ptr = (void*)block->ptr.buffer;

            if (!(((size_t)block >= ((size_t)manager + (size_t)sizeof(HeapManager)))
                  && (((size_t)block) < ((size_t)manager + manager->manageSize - (size_t)sizeof(BlockHeadType)))
                  && (((size_t)block + block->head.size)
                      >= ((size_t)manager + (size_t)sizeof(HeapManager) + (size_t)sizeof(BlockHeadType)))
                  && (((size_t)block + block->head.size)
                      < ((size_t)manager + manager->manageSize - (size_t)sizeof(BlockHeadType)))))
            {
                ret = 1U;
                ptr = ((void *)0);
            }
        }
    }

    (void)ret;
    return ptr;
}
 








 
void* ILib_MemHeapCalloc(void* ram, uint32 count, uint32 size)
{
    void* ptr = ILib_MemHeapMalloc(ram, count * size);
    if (((void *)0) != ptr)
    {
        (void)ILib_memset(ptr, 0, count * size);
    }
    return ptr;
}







 
                                         
uint8 ILib_MemHeapFree(void* ram, void* ptr)    
 
{
    StatusType ret = 0U;
    HeapManager* manager = (HeapManager*)ram;                          
    BlockType* block = (BlockType*)((size_t)ptr - (size_type)(sizeof(BlockType) - sizeof(FreePtrType)));    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (ptr == ((void *)0))
    {
        ret = 1U;
    }

     
    else if (!(((size_t)block >= ((size_t)manager + (size_t)sizeof(HeapManager)))
               && (((size_t)block) < ((size_t)manager + manager->manageSize - (size_t)sizeof(BlockHeadType)))
               && (((size_t)block + block->head.size)
                   >= ((size_t)manager + (size_t)sizeof(HeapManager) + (size_t)sizeof(BlockHeadType)))
               && (((size_t)block + block->head.size)
                   < ((size_t)manager + manager->manageSize - (size_t)sizeof(BlockHeadType)))))
    {
        ret = 1U;
    }

    else
    {

        manager->usedSize = manager->usedSize - (block->head.size & (size_type)((~(size_type)0u) - (3u)));

        block->head.size |= (size_type)(0x1u);

        block->ptr.free.prev = 0u;
        block->ptr.free.next = 0u;

        BlockType* tmp_block = ((BlockType*)((size_t)(block->ptr . buffer) + (size_t)(block->head . size & ((~(size_type)0u) - (3u)))));

         
        if (0u != (tmp_block->head.size & (size_type)(0x1u)))
        {
            MemHeap_ExtractBlock(manager, tmp_block);

             
            block->head.size += (tmp_block->head.size & (size_type)((~(size_type)0u) - (3u))) + (size_type)(sizeof(BlockType) - sizeof(FreePtrType));
        }

         
        if (0u != (block->head.size & (size_type)(0x2u)))
        {
            if (block->head.prev != 0u)
            {
                tmp_block = ((BlockType*)((size_t)(manager) + (size_t)(block->head . prev)));
            }
            else
            {
                tmp_block = (BlockType*)(0u);
            }

            MemHeap_ExtractBlock(manager, tmp_block);
            if (((void *)0) == tmp_block)
            {
                ret = 1U;
                return ret;
            }
            tmp_block->head.size += (block->head.size & (size_type)((~(size_type)0u) - (3u))) + (size_type)(sizeof(BlockType) - sizeof(FreePtrType));
            block = tmp_block;
        }

         
        MemHeap_InsertBlock(manager, block);
        if (block == ((void *)0))
        {
            ret = 1U;
            return ret;
        }
        tmp_block = ((BlockType*)((size_t)(block->ptr . buffer) + (size_t)(block->head . size & ((~(size_type)0u) - (3u)))));

         
        tmp_block->head.size |= (size_type)(0x2u);
        tmp_block->head.prev = (size_type)((size_t)(block) - (size_t)(manager));
    }
    return ret;
}
 







 
   
uint8 ILib_MemHeapGetManageSize(const void* ram, uint32* size)
{
    StatusType ret = 0U;
    const HeapManager* manager = (const HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (((void *)0) == size)
    {
        ret = 1U;
    }

    else
    {
        *size = (uint32)manager->manageSize;
    }

    return ret;
}
 







 
   
uint8 ILib_MemHeapGetRealMaxSize(const void* ram, uint32* size)
{
    StatusType ret = 0U;
    const HeapManager* manager = (const HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (((void *)0) == size)
    {
        ret = 1U;
    }

    else
    {
        *size = (uint32)manager->realSize;
    }

    return ret;
}
 







 
   
uint8 ILib_MemHeapGetUsedSize(const void* ram, uint32* size)
{
    StatusType ret = 0U;
    const HeapManager* manager = (const HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (((void *)0) == size)
    {
        ret = 1U;
    }

    else
    {
        *size = (uint32)manager->usedSize;
    }

    return ret;
}
 







 
   
uint8 ILib_MemHeapGetCurFreeMaxBlockSize(const void* ram, uint32* size)
 
{
    StatusType ret = 0U;
    const HeapManager* manager = (const HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (((void *)0) == size)
    {
        ret = 1U;
    }

    else
    {
        uint32 tempSize = 0u;
        uint32 maxSize = 0u;
        if (manager->fli > 0u)
        {
            uint32 fli = MemHeap_MSBIT((uint32)manager->fli);
            if (fli > (uint16)(12u))
            {
                ret = 1U;
                return ret;
            }
            uint32 sli = MemHeap_MSBIT((uint32)manager->sli[fli]);

            if (sli < ((uint32)1u << (1u << (uint32)(3u))))
            {

                const BlockType* block = (BlockType*)(0u);
                if (manager->freeLinker[fli][sli] != 0u)
                {
                    block = ((BlockType*)((size_t)(manager) + (size_t)(manager->freeLinker[fli][sli])));
                }

                while (block != ((void *)0))
                {
                    tempSize = (fli * (size_type)(32u)) + (((fli * (size_type)(32u)) >> (uint32)(3u)) * sli);
                    if (maxSize < tempSize)
                    {
                        maxSize = tempSize;
                    }
                    if (block->ptr.free.next != 0u)
                    {
                        block = ((BlockType*)((size_t)(manager) + (size_t)(block->ptr . free . next)));
                    }
                    else
                    {
                        block = (BlockType*)(0u);
                    }
                }

                maxSize = (size_type)((maxSize) & ~(size_type)((1u << (uint32)(3u)) - 1u));
            }
        }
        *size = (size_type)maxSize;
    }

    return ret;
}
 







 
   
uint8 ILib_MemHeapGetMaxMallocSize(const void* ram, uint32* size)
{
    StatusType ret = 0U;
    const HeapManager* manager = (const HeapManager*)ram;    

     
    if (((void *)0) == manager)
    {
        ret = 1U;
    }

     
    else if (0u != ((size_t)manager & (sizeof(void*) - 1u)))
    {
        ret = 2U;
    }

     
    else if (0x2A59FA59u != manager->initFlag)
    {
        ret = 4U;
    }

     
    else if (((void *)0) == size)
    {
        ret = 1U;
    }

    else
    {
        *size = (uint32)manager->maxMallocSize;
    }

    return ret;
}
 














 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 
