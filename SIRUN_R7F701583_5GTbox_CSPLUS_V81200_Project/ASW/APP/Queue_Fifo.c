#include "queue_fifo.h"

//#include <stdio.h>
//#include <string.h>

/* 锁函数 - 如果用户提供了锁机制 */
static void queue_lock(QueueFIFO *queue) {
    if (queue != NULL_PTR && queue->lock != NULL_PTR) {
        /* 用户需要实现锁机制，例如：
         * pthread_mutex_lock((pthread_mutex_t*)queue->lock);
         * 或
         * xSemaphoreTake((SemaphoreHandle_t)queue->lock, portMAX_DELAY);
         */
    }
}

static void queue_unlock(QueueFIFO *queue) {
    if (queue != NULL_PTR && queue->lock != NULL_PTR) {
        /* 用户需要实现解锁机制 */
    }
}


void my_memcpy(void* dest, const void* src, uint32 n) 
{
    uint32 i = 0;
    if (dest == NULL_PTR || src == NULL_PTR || n == 0) 
    {
        //return dest;
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

/**
 * @brief 初始化队列
 */
QueueStatus queue_init(QueueFIFO *queue, const uint8 *name, void (*on_overflow)(QueueFIFO *queue)) 
{
    if (queue == NULL_PTR) {
        return QUEUE_ERROR;
    }
    
    /* 清零队列结构 */
    my_memcpy(queue, NULL_PTR, sizeof(QueueFIFO));
    
    /* 初始化队列状态 */
    queue->front = 0;
    queue->rear = 0;
    queue->count = 0;
    queue->overflow_count = 0;
    queue->overflow_flag = FALSE;
    queue->is_initialized = TRUE;
    queue->on_overflow = on_overflow;
    queue->lock = NULL_PTR;
    
    #if 0
    /* 设置队列名称 */
    if (name != NULL_PTR && name[0] != '\0') {
        strncpy(queue->name, name, sizeof(queue->name) - 1);
        queue->name[sizeof(queue->name) - 1] = '\0';
    } else {
        snprintf(queue->name, sizeof(queue->name), "Queue_%p", (void*)queue);
    }
    #endif
    return QUEUE_OK;
}

/**
 * @brief 写入数据到队列
 */
QueueStatus queue_write(QueueFIFO *queue, const uint8 *data, uint16 length) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return QUEUE_NOT_INIT;
    }
    
    if (data == NULL_PTR || length == 0 || length > QUEUE_DATA_MAX_SIZE) {
        return QUEUE_ERROR;
    }
    
    queue_lock(queue);
    
    /* 检查队列是否已满 */
    if (queue->count >= QUEUE_MAX_SIZE) {
        queue->overflow_flag = TRUE;
        queue->overflow_count++;
        
        /* 调用溢出回调函数 */
        if (queue->on_overflow != NULL_PTR) {
            queue->on_overflow(queue);
        }
        
        queue_unlock(queue);
        return QUEUE_FULL;
    }
    
    /* 复制数据到队列节点 */
    QueueNode *node = &queue->nodes[queue->rear];
    my_memcpy(node->data, data, length);
    node->length = length;
    
    /* 更新队列指针 */
    queue->rear = (queue->rear + 1) % QUEUE_MAX_SIZE;
    queue->count++;
    queue->overflow_flag = FALSE;  /* 写入成功，清除溢出标志 */
    
    queue_unlock(queue);
    return QUEUE_OK;
}

/**
 * @brief 从队列读取数据（不删除）
 */
QueueStatus queue_peek(const QueueFIFO *queue, uint8 *data, uint16 *length) {
    if (queue == NULL_PTR || !queue->is_initialized || data == NULL_PTR || length == NULL_PTR) {
        return QUEUE_ERROR;
    }
    
    queue_lock((QueueFIFO *)queue);  /* 需要const转换 */
    
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

/**
 * @brief 从队列读取并删除数据
 */
QueueStatus queue_read(QueueFIFO *queue, uint8 *data, uint16 *length) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return QUEUE_ERROR;
    }
    
    queue_lock(queue);
    
    if (queue->count == 0) {
        queue_unlock(queue);
        return QUEUE_EMPTY;
    }
    
    QueueNode *node = &queue->nodes[queue->front];
    
    /* 如果提供了输出缓冲区，复制数据 */
    if (data != NULL_PTR && length != NULL_PTR) {
        my_memcpy(data, node->data, node->length);
        *length = node->length;
    }
    
    /* 更新队列指针 */
    queue->front = (queue->front + 1) % QUEUE_MAX_SIZE;
    queue->count--;
    
    queue_unlock(queue);
    return QUEUE_OK;
}

/**
 * @brief 周期函数 - 处理队列中的数据并发送到总线
 */
uint16 queue_process(QueueFIFO *queue, void (*send_func)(const uint8 *data, uint16 length)) {
    uint16 processed_count = 0;
    
    if (queue == NULL_PTR || !queue->is_initialized) {
        return 0;
    }
    
    queue_lock(queue);
    
    /* 循环处理队列中的所有数据 */
    while (queue->count > 0) {
        QueueNode *node = &queue->nodes[queue->front];
        
        /* 使用指定的发送函数或默认发送函数 */
        if (send_func != NULL_PTR) {
            send_func(node->data, node->length);
        } else {
            /* 默认发送函数 - 用户需要根据实际硬件实现 */
            //can_send_data(node->data, node->length);
        }
        
        /* 删除已处理的数据 */
        queue->front = (queue->front + 1) % QUEUE_MAX_SIZE;
        queue->count--;
        processed_count++;
    }
    
    queue_unlock(queue);
    return processed_count;
}

/**
 * @brief 检查队列是否为空
 */
boolean queue_is_empty(const QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return TRUE;
    }
    
    boolean empty;
    queue_lock((QueueFIFO *)queue);
    empty = (queue->count == 0);
    queue_unlock((QueueFIFO *)queue);
    
    return empty;
}

/**
 * @brief 检查队列是否已满
 */
boolean queue_is_full(const QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return FALSE;
    }
    
    boolean full;
    queue_lock((QueueFIFO *)queue);
    full = (queue->count >= QUEUE_MAX_SIZE);
    queue_unlock((QueueFIFO *)queue);
    
    return full;
}

/**
 * @brief 检查队列是否溢出（当前状态）
 */
boolean queue_is_overflow(const QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return FALSE;
    }
    
    boolean overflow;
    queue_lock((QueueFIFO *)queue);
    overflow = queue->overflow_flag;
    queue_unlock((QueueFIFO *)queue);
    
    return overflow;
}

/**
 * @brief 获取队列当前元素数量
 */
uint16 queue_get_count(const QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return 0;
    }
    
    uint16 count;
    queue_lock((QueueFIFO *)queue);
    count = queue->count;
    queue_unlock((QueueFIFO *)queue);
    
    return count;
}

/**
 * @brief 获取队列溢出次数（历史统计）
 */
uint16 queue_get_overflow_count(const QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return 0;
    }
    
    uint16 count;
    queue_lock((QueueFIFO *)queue);
    count = queue->overflow_count;
    queue_unlock((QueueFIFO *)queue);
    
    return count;
}

/**
 * @brief 获取队列剩余空间
 */
uint16 queue_get_free_space(const QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return 0;
    }
    
    uint16 free_space;
    queue_lock((QueueFIFO *)queue);
    free_space = QUEUE_MAX_SIZE - queue->count;
    queue_unlock((QueueFIFO *)queue);
    
    return free_space;
}

/**
 * @brief 清空队列
 */
void queue_clear(QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return;
    }
    
    queue_lock(queue);
    
    queue->front = 0;
    queue->rear = 0;
    queue->count = 0;
    queue->overflow_flag = FALSE;
    
    queue_unlock(queue);
}

/**
 * @brief 重置队列统计信息
 */
void queue_reset_stats(QueueFIFO *queue) {
    if (queue == NULL_PTR || !queue->is_initialized) {
        return;
    }
    
    queue_lock(queue);
    
    queue->overflow_count = 0;
    queue->overflow_flag = FALSE;
    
    queue_unlock(queue);
}

/**
 * @brief 获取队列名称
 */
const uint8* queue_get_name(const QueueFIFO *queue) {
    return (queue != NULL_PTR) ? queue->name : "NULL_PTR";
}

/**
 * @brief 检查队列是否已初始化
 */
boolean queue_is_initialized(const QueueFIFO *queue) {
    return (queue != NULL_PTR && queue->is_initialized);
}

/**
 * @brief 设置队列锁函数
 */
void queue_set_lock(QueueFIFO *queue, void *lock) {
    if (queue != NULL_PTR) {
        queue->lock = lock;
    }
}

/**
 * @brief 获取队列最大容量
 */
uint16 queue_get_max_size(void) {
    return QUEUE_MAX_SIZE;
}

/**
 * @brief 获取数据最大长度
 */
uint16 queue_get_max_data_size(void) {
    return QUEUE_DATA_MAX_SIZE;
}

/**
 * @brief 打印队列状态信息
 */
// void queue_print_status(const QueueFIFO *queue) {
//     if (queue == NULL_PTR || !queue->is_initialized) {
//         printf("Queue is not initialized!\n");
//         return;
//     }
    
//     queue_lock((QueueFIFO *)queue);
    
//     printf("=== Queue Status: %s ===\n", queue->name);
//     printf("Address: %p\n", (void*)queue);
//     printf("Initialized: Yes\n");
//     printf("Count: %u / %u\n", queue->count, QUEUE_MAX_SIZE);
//     printf("Free Space: %u\n", QUEUE_MAX_SIZE - queue->count);
//     printf("Front Index: %u\n", queue->front);
//     printf("Rear Index: %u\n", queue->rear);
//     printf("Overflow Flag: %s\n", queue->overflow_flag ? "YES (CURRENT)" : "NO");
//     printf("Overflow Count: %u (historical)\n", queue->overflow_count);
//     printf("Empty: %s\n", (queue->count == 0) ? "YES" : "NO");
//     printf("Full:  %s\n", (queue->count >= QUEUE_MAX_SIZE) ? "YES" : "NO");
//     printf("OnOverflow Callback: %p\n", (void*)queue->on_overflow);
//     printf("Lock: %p\n", queue->lock);
//     printf("================================\n");
    
//     queue_unlock((QueueFIFO *)queue);
// }