#ifndef _OSHAL_H
#define _OSHAL_H

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

// 兼容FreeRTOS的类型定义
typedef uint8_t QueueHandle_t;
typedef void* QueueSetHandle_t;
typedef void* QueueSetMemberHandle_t;

typedef void* SemaphoreHandle_t;

#define __disable_irq()     DI()
#define __enable_irq()      EI()

// 常用宏定义
#define pdTRUE              1
#define pdFALSE             0
#define pdPASS              pdTRUE
#define pdFAIL              pdFALSE
#define portMAX_DELAY       0xFFFFFFFFUL
#define configASSERT(x)     ((void)0)

// 队列配置：最大队列数和每个队列的最大长度
#ifndef MY_QUEUE_MAX_NUM
#define MY_QUEUE_MAX_NUM    3        // 最多支持8个队列
#endif

#ifndef MY_QUEUE_MAX_LENGTH
#define MY_QUEUE_MAX_LENGTH 20       // 每个队列最大长度（可根据需要调整）
#endif

#ifndef MY_QUEUE_ITEM_MAX_SIZE
#define MY_QUEUE_ITEM_MAX_SIZE 4    // 最大消息大小（字节）
#endif

// 互斥锁配置
#ifndef MY_MUTEX_MAX_NUM
#define MY_MUTEX_MAX_NUM    8        // 最多支持8个互斥锁
#endif

/* 临界区宏 - 兼容FreeRTOS */
#define taskENTER_CRITICAL()       vPortEnterCritical()
#define taskEXIT_CRITICAL()        vPortExitCritical()

// 队列状态
typedef enum {
    QUEUE_UNUSED = 0,
    QUEUE_USED
} queue_state_t;

// 队列结构体
typedef struct {
    uint8_t data[MY_QUEUE_MAX_LENGTH][MY_QUEUE_ITEM_MAX_SIZE];  // 静态数据缓冲区
    uint32_t item_size;      // 每个消息的大小（字节）
    uint32_t capacity;       // 队列容量（最多容纳的消息数）
    uint32_t head;           // 队首索引（读取位置）
    uint32_t tail;           // 队尾索引（写入位置）
    uint32_t count;          // 当前消息数量
    queue_state_t state;     // 队列状态
} my_queue_t;

// 互斥锁状态
typedef enum {
    MUTEX_FREE = 0,         // 空闲状态
    MUTEX_TAKEN,            // 已被占用
    MUTEX_UNUSED            // 未使用
} mutex_state_t;

// 互斥锁结构体
typedef struct {
    mutex_state_t state;    // 互斥锁状态
    uint32_t owner;         // 占用者标识（可选）
    uint8_t recursive_count; // 递归计数（如果支持递归锁）
} my_mutex_t;

// API函数声明

/**
 * @brief 创建消息队列（静态分配）
 * @param uxQueueLength 队列长度（最多消息数，不能超过MY_QUEUE_MAX_LENGTH）
 * @param uxItemSize 每个消息的大小（字节，不能超过MY_QUEUE_ITEM_MAX_SIZE）
 * @return 队列句柄，失败返回NULL
 */
QueueHandle_t xQueueCreate(uint32_t uxQueueLength, uint32_t uxItemSize);

/**
 * @brief 发送消息到队列（阻塞版本）
 * @param xQueue 队列句柄
 * @param pvItemToQueue 待发送数据指针
 * @param xTicksToWait 等待时间（单位：系统tick）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xQueueSend(QueueHandle_t xQueue, const void *pvItemToQueue, uint32_t xTicksToWait);

/**
 * @brief 发送消息到队列（ISR版本）
 * @param xQueue 队列句柄
 * @param pvItemToQueue 待发送数据指针
 * @param pxHigherPriorityTaskWoken 未使用（保持接口兼容）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xQueueSendFromISR(QueueHandle_t xQueue, const void *pvItemToQueue, void *pxHigherPriorityTaskWoken);

/**
 * @brief 从队列接收消息（阻塞版本）
 * @param xQueue 队列句柄
 * @param pvBuffer 接收缓冲区
 * @param xTicksToWait 等待时间（单位：系统tick）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xQueueReceive(QueueHandle_t xQueue, void *pvBuffer, uint32_t xTicksToWait);

/**
 * @brief 从队列接收消息（ISR版本）
 * @param xQueue 队列句柄
 * @param pvBuffer 接收缓冲区
 * @param pxHigherPriorityTaskWoken 未使用（保持接口兼容）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xQueueReceiveFromISR(QueueHandle_t xQueue, void *pvBuffer, void *pxHigherPriorityTaskWoken);

/**
 * @brief 获取队列中消息数量
 * @param xQueue 队列句柄
 * @return 消息数量
 */
uint32_t uxQueueMessagesWaiting(QueueHandle_t xQueue);

/**
 * @brief 获取队列剩余空间
 * @param xQueue 队列句柄
 * @return 剩余空间（可存放的消息数）
 */
uint32_t uxQueueSpacesAvailable(QueueHandle_t xQueue);

/**
 * @brief 重置队列（清空所有消息）
 * @param xQueue 队列句柄
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xQueueReset(QueueHandle_t xQueue);

/**
 * @brief 创建互斥锁
 * @return 互斥锁句柄，失败返回NULL
 */
SemaphoreHandle_t xSemaphoreCreateMutex(void);

/**
 * @brief 创建递归互斥锁（可选实现）
 * @return 互斥锁句柄，失败返回NULL
 */
SemaphoreHandle_t xSemaphoreCreateRecursiveMutex(void);

/**
 * @brief 获取互斥锁（阻塞版本）
 * @param xSemaphore 互斥锁句柄
 * @param xBlockTime 等待时间（单位：系统tick）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xSemaphoreTake(SemaphoreHandle_t xSemaphore, uint32_t xBlockTime);

/**
 * @brief 获取递归互斥锁（阻塞版本）
 * @param xSemaphore 互斥锁句柄
 * @param xBlockTime 等待时间（单位：系统tick）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xSemaphoreTakeRecursive(SemaphoreHandle_t xSemaphore, uint32_t xBlockTime);

/**
 * @brief 释放互斥锁
 * @param xSemaphore 互斥锁句柄
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xSemaphoreGive(SemaphoreHandle_t xSemaphore);

/**
 * @brief 释放递归互斥锁
 * @param xSemaphore 互斥锁句柄
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
uint32_t xSemaphoreGiveRecursive(SemaphoreHandle_t xSemaphore);

/**
 * @brief 获取互斥锁（ISR版本）
 * @param xSemaphore 互斥锁句柄
 * @param pxHigherPriorityTaskWoken 未使用（保持接口兼容）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
#define xSemaphoreTakeFromISR(xSemaphore, pxHigherPriorityTaskWoken) \
    xSemaphoreTake((xSemaphore), 0)

/**
 * @brief 释放互斥锁（ISR版本）
 * @param xSemaphore 互斥锁句柄
 * @param pxHigherPriorityTaskWoken 未使用（保持接口兼容）
 * @return pdTRUE: 成功 pdFALSE: 失败
 */
#define xSemaphoreGiveFromISR(xSemaphore, pxHigherPriorityTaskWoken) \
    xSemaphoreGive((xSemaphore))

/**
 * @brief 删除互斥锁
 * @param xSemaphore 互斥锁句柄
 */
void vSemaphoreDelete(SemaphoreHandle_t xSemaphore);

void delay_us(unsigned int xus);
/**
 * @brief 简单延时函数（需用户根据系统实现）
 * @param ms 延时毫秒数
 */
void my_delay_ms(uint32_t ms);

/**
 * @brief 获取系统tick数（需用户根据系统实现）
 * @return 当前系统tick数
 */
uint32_t get_system_tick(void);

void vPortEnterCritical(void);
void vPortExitCritical(void);

#ifdef __cplusplus
}
#endif

#endif    //_OSHAL_H