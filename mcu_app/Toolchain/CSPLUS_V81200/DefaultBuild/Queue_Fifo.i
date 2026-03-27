


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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







 




 







 

 
typedef enum {
    QUEUE_OK = 0,
    QUEUE_FULL,
    QUEUE_EMPTY,
    QUEUE_ERROR,
    QUEUE_NOT_INIT
} QueueStatus;

 
typedef struct {
    uint8 data[16];    
    uint16 length;                       
} QueueNode;

 
typedef struct QueueFIFO {
     
    QueueNode nodes[32];      
    
     
    uint16 front;                       
    uint16 rear;                        
    uint16 count;                       
    uint16 overflow_count;              
    boolean overflow_flag;                   
    boolean is_initialized;                  
    
     
    uint8 name[16];                        
    
     
    void (*on_overflow)(struct QueueFIFO *queue);
    
     
    void *lock;
} QueueFIFO;

 
extern void can_send_data(const uint8 *data, uint16 length);
extern void uart_send_data(const uint8 *data, uint16 length);
extern void eth_send_data(const uint8 *data, uint16 length);







 
QueueStatus queue_init(QueueFIFO *queue, const uint8 *name, void (*on_overflow)(QueueFIFO *queue));







 
QueueStatus queue_write(QueueFIFO *queue, const uint8 *data, uint16 length);







 
QueueStatus queue_peek(const QueueFIFO *queue, uint8 *data, uint16 *length);







 
QueueStatus queue_read(QueueFIFO *queue, uint8 *data, uint16 *length);






 
uint16 queue_process(QueueFIFO *queue, void (*send_func)(const uint8 *data, uint16 length));





 
boolean queue_is_empty(const QueueFIFO *queue);





 
boolean queue_is_full(const QueueFIFO *queue);





 
boolean queue_is_overflow(const QueueFIFO *queue);





 
uint16 queue_get_count(const QueueFIFO *queue);





 
uint16 queue_get_overflow_count(const QueueFIFO *queue);





 
uint16 queue_get_free_space(const QueueFIFO *queue);




 
void queue_clear(QueueFIFO *queue);




 
void queue_reset_stats(QueueFIFO *queue);





 
const uint8* queue_get_name(const QueueFIFO *queue);





 
boolean queue_is_initialized(const QueueFIFO *queue);





 
void queue_set_lock(QueueFIFO *queue, void *lock);




 
uint16 queue_get_max_size(void);




 
uint16 queue_get_max_data_size(void);




 










 
static void queue_lock(QueueFIFO *queue) {
    if (queue != ((void *)0) && queue->lock != ((void *)0)) {
        



 
    }
}

static void queue_unlock(QueueFIFO *queue) {
    if (queue != ((void *)0) && queue->lock != ((void *)0)) {
         
    }
}


void my_memcpy(void* dest, const void* src, uint32 n) 
{
    uint32 i = 0;
    if (dest == ((void *)0) || src == ((void *)0) || n == 0) 
    {
        
    }
    else
    {
	uint8* d = (uint8*)dest;
	const uint8* s = (const uint8*)src;

	for (i = 0; i < n; i++) 
	{
	    d[i] = s[i];
	}
    }
    
}



 
QueueStatus queue_init(QueueFIFO *queue, const uint8 *name, void (*on_overflow)(QueueFIFO *queue)) 
{
    if (queue == ((void *)0)) {
        return QUEUE_ERROR;
    }
    
     
    my_memcpy(queue, ((void *)0), sizeof(QueueFIFO));
    
     
    queue->front = 0;
    queue->rear = 0;
    queue->count = 0;
    queue->overflow_count = 0;
    queue->overflow_flag = 0u;
    queue->is_initialized = 1u;
    queue->on_overflow = on_overflow;
    queue->lock = ((void *)0);
    
    return QUEUE_OK;
}



 
QueueStatus queue_write(QueueFIFO *queue, const uint8 *data, uint16 length) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return QUEUE_NOT_INIT;
    }
    
    if (data == ((void *)0) || length == 0 || length > 16) {
        return QUEUE_ERROR;
    }
    
    queue_lock(queue);
    
     
    if (queue->count >= 32) {
        queue->overflow_flag = 1u;
        queue->overflow_count++;
        
         
        if (queue->on_overflow != ((void *)0)) {
            queue->on_overflow(queue);
        }
        
        queue_unlock(queue);
        return QUEUE_FULL;
    }
    
     
    QueueNode *node = &queue->nodes[queue->rear];
    my_memcpy(node->data, data, length);
    node->length = length;
    
     
    queue->rear = (queue->rear + 1) % 32;
    queue->count++;
    queue->overflow_flag = 0u;   
    
    queue_unlock(queue);
    return QUEUE_OK;
}



 
QueueStatus queue_peek(const QueueFIFO *queue, uint8 *data, uint16 *length) {
    if (queue == ((void *)0) || !queue->is_initialized || data == ((void *)0) || length == ((void *)0)) {
        return QUEUE_ERROR;
    }
    
    queue_lock((QueueFIFO *)queue);   
    
    if (queue->count == 0) {
        queue_unlock((QueueFIFO *)queue);
        return QUEUE_EMPTY;
    }
    
    const QueueNode *node = &queue->nodes[queue->front];
    my_memcpy(data, node->data, node->length);
    *length = node->length;
    
    queue_unlock((QueueFIFO *)queue);
    return QUEUE_OK;
}



 
QueueStatus queue_read(QueueFIFO *queue, uint8 *data, uint16 *length) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return QUEUE_ERROR;
    }
    
    queue_lock(queue);
    
    if (queue->count == 0) {
        queue_unlock(queue);
        return QUEUE_EMPTY;
    }
    
    QueueNode *node = &queue->nodes[queue->front];
    
     
    if (data != ((void *)0) && length != ((void *)0)) {
        my_memcpy(data, node->data, node->length);
        *length = node->length;
    }
    
     
    queue->front = (queue->front + 1) % 32;
    queue->count--;
    
    queue_unlock(queue);
    return QUEUE_OK;
}



 
uint16 queue_process(QueueFIFO *queue, void (*send_func)(const uint8 *data, uint16 length)) {
    uint16 processed_count = 0;
    
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 0;
    }
    
    queue_lock(queue);
    
     
    while (queue->count > 0) {
        QueueNode *node = &queue->nodes[queue->front];
        
         
        if (send_func != ((void *)0)) {
            send_func(node->data, node->length);
        } else {
             
            
        }
        
         
        queue->front = (queue->front + 1) % 32;
        queue->count--;
        processed_count++;
    }
    
    queue_unlock(queue);
    return processed_count;
}



 
boolean queue_is_empty(const QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 1u;
    }
    
    boolean empty;
    queue_lock((QueueFIFO *)queue);
    empty = (queue->count == 0);
    queue_unlock((QueueFIFO *)queue);
    
    return empty;
}



 
boolean queue_is_full(const QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 0u;
    }
    
    boolean full;
    queue_lock((QueueFIFO *)queue);
    full = (queue->count >= 32);
    queue_unlock((QueueFIFO *)queue);
    
    return full;
}



 
boolean queue_is_overflow(const QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 0u;
    }
    
    boolean overflow;
    queue_lock((QueueFIFO *)queue);
    overflow = queue->overflow_flag;
    queue_unlock((QueueFIFO *)queue);
    
    return overflow;
}



 
uint16 queue_get_count(const QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 0;
    }
    
    uint16 count;
    queue_lock((QueueFIFO *)queue);
    count = queue->count;
    queue_unlock((QueueFIFO *)queue);
    
    return count;
}



 
uint16 queue_get_overflow_count(const QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 0;
    }
    
    uint16 count;
    queue_lock((QueueFIFO *)queue);
    count = queue->overflow_count;
    queue_unlock((QueueFIFO *)queue);
    
    return count;
}



 
uint16 queue_get_free_space(const QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return 0;
    }
    
    uint16 free_space;
    queue_lock((QueueFIFO *)queue);
    free_space = 32 - queue->count;
    queue_unlock((QueueFIFO *)queue);
    
    return free_space;
}



 
void queue_clear(QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return;
    }
    
    queue_lock(queue);
    
    queue->front = 0;
    queue->rear = 0;
    queue->count = 0;
    queue->overflow_flag = 0u;
    
    queue_unlock(queue);
}



 
void queue_reset_stats(QueueFIFO *queue) {
    if (queue == ((void *)0) || !queue->is_initialized) {
        return;
    }
    
    queue_lock(queue);
    
    queue->overflow_count = 0;
    queue->overflow_flag = 0u;
    
    queue_unlock(queue);
}



 
const uint8* queue_get_name(const QueueFIFO *queue) {
    return (queue != ((void *)0)) ? queue->name : "NULL_PTR";
}



 
boolean queue_is_initialized(const QueueFIFO *queue) {
    return (queue != ((void *)0) && queue->is_initialized);
}



 
void queue_set_lock(QueueFIFO *queue, void *lock) {
    if (queue != ((void *)0)) {
        queue->lock = lock;
    }
}



 
uint16 queue_get_max_size(void) {
    return 32;
}



 
uint16 queue_get_max_data_size(void) {
    return 16;
}



 





    

    














    


