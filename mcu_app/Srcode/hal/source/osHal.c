#include "osHal.h"
#include "r_cg_macrodriver.h"

// 静态分配的队列数组
static my_queue_t queue_pool[MY_QUEUE_MAX_NUM];
// 静态分配的互斥锁数组
static my_mutex_t mutex_pool[MY_MUTEX_MAX_NUM];

/* 嵌套计数变量 */
volatile uint32_t ulCriticalNesting = 0;

void delay_us(unsigned int xus)
{
    unsigned int i,j;
    for(i=0; i<xus; i++)
    {
        // for(j=0; j<10; j++)
        {
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
            NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        }
    }
}

// 简单的忙等待延时（需要用户根据实际情况优化）
void my_delay_ms(uint32_t ms)
{
    // 这里是一个简单的实现，需要根据你的CPU频率调整
    // 在实际项目中，你应该使用硬件定时器或系统滴答
    // volatile uint32_t i, j;  // TODO guanyuan
    // for (i = 0; i < ms; i++) {
    //     for (j = 0; j < 10000; j++) {
    //         __asm__("nop");
    //     }
    // }
}

// 获取系统tick（需要用户实现）
uint32_t get_system_tick(void)
{
    // 返回系统运行以来的毫秒数
    // 需要你根据实际的系统时钟实现
    static uint32_t tick = 0;
    return tick++; // 简单示例，实际需要硬件支持
}

QueueHandle_t xQueueCreate(uint32_t uxQueueLength, uint32_t uxItemSize)
{
    // 参数检查
    if (uxQueueLength == 0 || uxItemSize == 0 || 
        uxQueueLength > MY_QUEUE_MAX_LENGTH || 
        uxItemSize > MY_QUEUE_ITEM_MAX_SIZE) {
        return NULL;
    }
    
    // 查找可用的队列
    for (uint32_t i = 0; i < MY_QUEUE_MAX_NUM; i++) {
        if (queue_pool[i].state == QUEUE_UNUSED) {
            // 初始化队列
            queue_pool[i].item_size = uxItemSize;
            queue_pool[i].capacity = uxQueueLength;
            queue_pool[i].head = 0;
            queue_pool[i].tail = 0;
            queue_pool[i].count = 0;
            queue_pool[i].state = QUEUE_USED;
            
            // 清空缓冲区（可选）
            memset(queue_pool[i].data, 0, sizeof(queue_pool[i].data));
            
            // return (QueueHandle_t)&queue_pool[i];
            return i;
        }
    }
    
    // 没有可用的队列槽位
    return NULL;
}

uint32_t xQueueSend(QueueHandle_t xQueue, const void *pvItemToQueue, uint32_t xTicksToWait)
{
    my_queue_t *queue = (my_queue_t *)&queue_pool[xQueue];
    static uint8_t printFalg = 0;
    
    // 参数检查
    if (queue == NULL || pvItemToQueue == NULL || queue->state != QUEUE_USED) {
        if(printFalg == 0)
        {
            // if(xQueue != &queue_pool[0])
            {
                printFalg = 1;
                // printf("xQueueSend change %x->%x\n", queue, &queue_pool[0]);
            }
        }
        return pdFALSE;
    }
    
    uint32_t start_tick = get_system_tick();
    
    // 等待直到队列有空间可用
    while (queue->count >= queue->capacity) {
        if (xTicksToWait == 0) {
            // 非阻塞模式，立即返回失败
            return pdFALSE;
        }
        
        if (xTicksToWait != portMAX_DELAY) {
            // 检查是否超时
            if ((get_system_tick() - start_tick) >= xTicksToWait) {
                return pdFALSE;  // 超时
            }
        }
        
        // 让出CPU时间（在实际系统中可能需要）
        my_delay_ms(1);
    }
    
    // 复制数据到队列
    uint8_t *dest = &queue->data[queue->tail][0];
    memcpy(dest, pvItemToQueue, queue->item_size);
    
    // 更新队尾指针和计数器
    queue->tail = (queue->tail + 1) % queue->capacity;
    queue->count++;
    
    return pdTRUE;
}

uint32_t xQueueSendFromISR(QueueHandle_t xQueue, const void *pvItemToQueue, void *pxHigherPriorityTaskWoken)
{
    my_queue_t *queue = (my_queue_t *)&queue_pool[xQueue];
    
    // 参数检查
    if (queue == NULL || pvItemToQueue == NULL || queue->state != QUEUE_USED) {
        return pdFALSE;
    }
    
    // ISR版本：如果队列满，直接返回失败（不等待）
    if (queue->count >= queue->capacity) {
        return pdFALSE;
    }
    
    // 复制数据到队列
    uint8_t *dest = &queue->data[queue->tail][0];
    memcpy(dest, pvItemToQueue, queue->item_size);
    
    // 更新队尾指针和计数器
    queue->tail = (queue->tail + 1) % queue->capacity;
    queue->count++;
    
    return pdTRUE;
}

uint32_t xQueueReceive(QueueHandle_t xQueue, void *pvBuffer, uint32_t xTicksToWait)
{
    my_queue_t *queue = (my_queue_t *)&queue_pool[xQueue];
    
    // 参数检查
    if (queue == NULL || pvBuffer == NULL || queue->state != QUEUE_USED) {
        return pdFALSE;
    }
    
    uint32_t start_tick = get_system_tick();
    
    // 等待直到队列有数据可用
    while (queue->count == 0) {
        if (xTicksToWait == 0) {
            // 非阻塞模式，立即返回失败
            return pdFALSE;
        }
        
        if (xTicksToWait != portMAX_DELAY) {
            // 检查是否超时
            if ((get_system_tick() - start_tick) >= xTicksToWait) {
                return pdFALSE;  // 超时
            }
        }
        
        // 让出CPU时间
        my_delay_ms(1);
    }
    
    // 从队列读取数据
    uint8_t *src = &queue->data[queue->head][0];
    memcpy(pvBuffer, src, queue->item_size);
    
    // 更新队首指针和计数器
    queue->head = (queue->head + 1) % queue->capacity;
    queue->count--;
    
    return pdTRUE;
}
#if(0)
uint32_t xQueueReceiveFromISR(QueueHandle_t xQueue, void *pvBuffer, void *pxHigherPriorityTaskWoken)
{
    my_queue_t *queue = (my_queue_t *)xQueue;
    
    // 参数检查
    if (queue == NULL || pvBuffer == NULL || queue->state != QUEUE_USED) {
        return pdFALSE;
    }
    
    // ISR版本：如果队列空，直接返回失败（不等待）
    if (queue->count == 0) {
        return pdFALSE;
    }
    
    // 从队列读取数据
    uint8_t *src = &queue->data[queue->head][0];
    memcpy(pvBuffer, src, queue->item_size);
    
    // 更新队首指针和计数器
    queue->head = (queue->head + 1) % queue->capacity;
    queue->count--;
    
    return pdTRUE;
}

uint32_t uxQueueMessagesWaiting(QueueHandle_t xQueue)
{
    my_queue_t *queue = (my_queue_t *)xQueue;
    if (queue == NULL || queue->state != QUEUE_USED) {
        return 0;
    }
    return queue->count;
}

uint32_t uxQueueSpacesAvailable(QueueHandle_t xQueue)
{
    my_queue_t *queue = (my_queue_t *)xQueue;
    if (queue == NULL || queue->state != QUEUE_USED) {
        return 0;
    }
    return queue->capacity - queue->count;
}

uint32_t xQueueReset(QueueHandle_t xQueue)
{
    my_queue_t *queue = (my_queue_t *)xQueue;
    if (queue == NULL || queue->state != QUEUE_USED) {
        return pdFALSE;
    }
    
    queue->head = 0;
    queue->tail = 0;
    queue->count = 0;
    
    return pdTRUE;
}
#endif
SemaphoreHandle_t xSemaphoreCreateMutex(void)
{
    // 查找可用的互斥锁
    for (uint32_t i = 0; i < MY_MUTEX_MAX_NUM; i++) {
        if (mutex_pool[i].state == MUTEX_UNUSED) {
            // 初始化互斥锁
            mutex_pool[i].state = MUTEX_FREE;
            mutex_pool[i].owner = 0;
            mutex_pool[i].recursive_count = 0;
            
            return (SemaphoreHandle_t)&mutex_pool[i];
        }
    }
    
    // 没有可用的互斥锁槽位
    return NULL;
}

SemaphoreHandle_t xSemaphoreCreateRecursiveMutex(void)
{
    // 对于裸机系统，普通互斥锁和递归互斥锁可以相同
    // 因为裸机通常是单任务或协作式多任务
    return xSemaphoreCreateMutex();
}

uint32_t xSemaphoreTake(SemaphoreHandle_t xSemaphore, uint32_t xBlockTime)
{
    my_mutex_t *mutex = (my_mutex_t *)xSemaphore;
    
    // 参数检查
    if (mutex == NULL || mutex->state == MUTEX_UNUSED) {
        return pdFALSE;
    }
    
    uint32_t start_tick = get_system_tick();
    
    // 尝试获取互斥锁
    while (1) {
        // 检查互斥锁是否可用
        if (mutex->state == MUTEX_FREE) {
            // 获取互斥锁
            mutex->state = MUTEX_TAKEN;
            mutex->owner = 1; // 简单标识，实际应用中可能需要更复杂的标识
            mutex->recursive_count = 1;
            return pdTRUE;
        }
        
        // 互斥锁已被占用
        if (xBlockTime == 0) {
            // 非阻塞模式，立即返回失败
            return pdFALSE;
        }
        
        if (xBlockTime != portMAX_DELAY) {
            // 检查是否超时
            if ((get_system_tick() - start_tick) >= xBlockTime) {
                return pdFALSE;  // 超时
            }
        }
        
        // 让出CPU时间（在实际裸机系统中，可以执行其他任务）
        my_delay_ms(1);
    }
}

uint32_t xSemaphoreTakeRecursive(SemaphoreHandle_t xSemaphore, uint32_t xBlockTime)
{
    my_mutex_t *mutex = (my_mutex_t *)xSemaphore;
    
    // 参数检查
    if (mutex == NULL || mutex->state == MUTEX_UNUSED) {
        return pdFALSE;
    }
    
    // 检查是否是当前"任务"已经持有该锁
    if (mutex->state == MUTEX_TAKEN && mutex->owner == 1) {
        // 递归计数增加
        mutex->recursive_count++;
        return pdTRUE;
    }
    
    // 如果不是当前持有者，则尝试正常获取
    return xSemaphoreTake(xSemaphore, xBlockTime);
}

uint32_t xSemaphoreGive(SemaphoreHandle_t xSemaphore)
{
    my_mutex_t *mutex = (my_mutex_t *)xSemaphore;
    
    // 参数检查
    if (mutex == NULL || mutex->state == MUTEX_UNUSED) {
        return pdFALSE;
    }
    
    // 检查互斥锁是否已被占用
    if (mutex->state != MUTEX_TAKEN) {
        // 互斥锁未被占用，无法释放
        return pdFALSE;
    }
    
    // 检查是否是所有者释放
    if (mutex->owner != 1) {
        // 不是所有者，无法释放
        return pdFALSE;
    }
    
    // 递归计数减1
    if (mutex->recursive_count > 0) {
        mutex->recursive_count--;
    }
    
    // 如果递归计数为0，则真正释放互斥锁
    if (mutex->recursive_count == 0) {
        mutex->state = MUTEX_FREE;
        mutex->owner = 0;
    }
    
    return pdTRUE;
}

uint32_t xSemaphoreGiveRecursive(SemaphoreHandle_t xSemaphore)
{
    // 在裸机系统中，普通give和递归give可以相同
    return xSemaphoreGive(xSemaphore);
}

void vSemaphoreDelete(SemaphoreHandle_t xSemaphore)
{
    my_mutex_t *mutex = (my_mutex_t *)xSemaphore;
    
    if (mutex != NULL) {
        // 重置互斥锁状态
        mutex->state = MUTEX_UNUSED;
        mutex->owner = 0;
        mutex->recursive_count = 0;
    }
}

// 简单的信号量实现（计数信号量，可选）
SemaphoreHandle_t xSemaphoreCreateCounting(uint32_t uxMaxCount, uint32_t uxInitialCount)
{
    // 对于简单的互斥锁需求，计数信号量可以简化为二进制信号量
    // 这里返回一个互斥锁，初始状态根据uxInitialCount设置
    SemaphoreHandle_t sem = xSemaphoreCreateMutex();
    my_mutex_t *mutex = (my_mutex_t *)sem;
    
    if (mutex && uxInitialCount > 0) {
        // 初始计数大于0，表示信号量可用
        mutex->state = MUTEX_FREE;
    }
    
    return sem;
}

/*******************************************************************************
 * 任务级临界区 - 进入
 ******************************************************************************/
void vPortEnterCritical(void)
{
    /* 关中断 */
    __disable_irq();
    
    /* 嵌套计数递增 */
    ulCriticalNesting++;
}

/*******************************************************************************
 * 任务级临界区 - 退出
 ******************************************************************************/
void vPortExitCritical(void)
{
    /* 嵌套计数递减 */
    ulCriticalNesting--;
    
    /* 只有当嵌套计数为0时才开中断 */
    if(ulCriticalNesting == 0)
    {
        __enable_irq();
    }
}
