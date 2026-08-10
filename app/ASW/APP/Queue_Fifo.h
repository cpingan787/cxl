#ifndef QUEUE_FIFO_H
#define QUEUE_FIFO_H

// #include <stdint.h>
// #include <stdboolean.h>
#include "Std_Types.h"


//#ifdef __cplusplus
//extern "C" {
//#endif

/* 配置参数 - 用户根据需求修改 */
#define QUEUE_MAX_SIZE        10      /* 队列最大容量 */
#define QUEUE_DATA_MAX_SIZE   16      /* 每个数据包最大字节数 */

/* 队列状态枚举 */
typedef enum {
    QUEUE_OK = 0,
    QUEUE_FULL,
    QUEUE_EMPTY,
    QUEUE_ERROR,
    QUEUE_NOT_INIT
} QueueStatus;

/* 队列节点结构体 */
typedef struct {
    uint8 data[QUEUE_DATA_MAX_SIZE];   /* 静态数据缓冲区 */
    uint16 length;                      /* 实际数据长度 */
} QueueNode;

/* 队列管理结构体 */
typedef struct QueueFIFO {
    /* 队列数据缓冲区 */
    QueueNode nodes[QUEUE_MAX_SIZE];     /* 静态节点数组 */
    
    /* 队列状态变量 */
    uint16 front;                      /* 队首索引 */
    uint16 rear;                       /* 队尾索引 */
    uint16 count;                      /* 当前元素数量 */
    uint16 overflow_count;             /* 溢出计数 */
    boolean overflow_flag;                  /* 溢出标志（当前是否溢出） */
    boolean is_initialized;                 /* 初始化标志 */
    
    /* 队列信息 */
    uint8 name[16];                       /* 队列名称 */
    
    /* 溢出回调函数指针 - 可选 */
    void (*on_overflow)(struct QueueFIFO *queue);
    
    /* 队列锁 - 用于多线程环境，可选 */
    void *lock;
} QueueFIFO;

/* 回调函数声明 - 用户根据实际硬件实现 */
extern void can_send_data(const uint8 *data, uint16 length);
extern void uart_send_data(const uint8 *data, uint16 length);
extern void eth_send_data(const uint8 *data, uint16 length);

/**
 * @brief 初始化队列
 * @param queue 队列指针
 * @param name 队列名称（可选，可为NULL）
 * @param on_overflow 溢出回调函数（可选，可为NULL）
 * @return 初始化状态
 */
QueueStatus queue_init(QueueFIFO *queue, const uint8 *name, void (*on_overflow)(QueueFIFO *queue));

/**
 * @brief 写入数据到队列（写接口）
 * @param queue 队列指针
 * @param data 数据指针
 * @param length 数据长度
 * @return 写入状态
 */
QueueStatus queue_write(QueueFIFO *queue, const uint8 *data, uint16 length);

/**
 * @brief 从队列读取数据（不删除，仅查看）
 * @param queue 队列指针
 * @param data 数据指针（输出）
 * @param length 数据长度（输出）
 * @return 读取状态
 */
QueueStatus queue_peek(const QueueFIFO *queue, uint8 *data, uint16 *length);

/**
 * @brief 从队列读取并删除数据
 * @param queue 队列指针
 * @param data 数据指针（输出）
 * @param length 数据长度（输出）
 * @return 读取状态
 */
QueueStatus queue_read(QueueFIFO *queue, uint8 *data, uint16 *length);

/**
 * @brief 周期函数 - 处理队列中的数据并发送到总线
 * @param queue 队列指针
 * @param send_func 发送函数指针（可为NULL，使用默认发送函数）
 * @return 处理的节点数量
 */
uint16 queue_process(QueueFIFO *queue, void (*send_func)(const uint8 *data, uint16 length));

/**
 * @brief 检查队列是否为空
 * @param queue 队列指针
 * @return true: 空, false: 非空
 */
boolean queue_is_empty(const QueueFIFO *queue);

/**
 * @brief 检查队列是否已满
 * @param queue 队列指针
 * @return true: 满, false: 未满
 */
boolean queue_is_full(const QueueFIFO *queue);

/**
 * @brief 检查队列是否溢出（当前状态）
 * @param queue 队列指针
 * @return true: 溢出, false: 正常
 */
boolean queue_is_overflow(const QueueFIFO *queue);

/**
 * @brief 获取队列当前元素数量
 * @param queue 队列指针
 * @return 元素数量
 */
uint16 queue_get_count(const QueueFIFO *queue);

/**
 * @brief 获取队列溢出次数（历史统计）
 * @param queue 队列指针
 * @return 溢出次数
 */
uint16 queue_get_overflow_count(const QueueFIFO *queue);

/**
 * @brief 获取队列剩余空间
 * @param queue 队列指针
 * @return 剩余可存储的元素数量
 */
uint16 queue_get_free_space(const QueueFIFO *queue);

/**
 * @brief 清空队列
 * @param queue 队列指针
 */
void queue_clear(QueueFIFO *queue);

/**
 * @brief 重置队列统计信息
 * @param queue 队列指针
 */
void queue_reset_stats(QueueFIFO *queue);

/**
 * @brief 获取队列名称
 * @param queue 队列指针
 * @return 队列名称
 */
const uint8* queue_get_name(const QueueFIFO *queue);

/**
 * @brief 检查队列是否已初始化
 * @param queue 队列指针
 * @return true: 已初始化, false: 未初始化
 */
boolean queue_is_initialized(const QueueFIFO *queue);

/**
 * @brief 设置队列锁函数（用于多线程环境）
 * @param queue 队列指针
 * @param lock 锁对象指针
 */
void queue_set_lock(QueueFIFO *queue, void *lock);

/**
 * @brief 获取队列最大容量
 * @return 最大容量
 */
uint16 queue_get_max_size(void);

/**
 * @brief 获取数据最大长度
 * @return 最大数据长度
 */
uint16 queue_get_max_data_size(void);

/**
 * @brief 打印队列状态信息
 * @param queue 队列指针
 */
// void queue_print_status(const QueueFIFO *queue);

//#ifdef __cplusplus
//}
//#endif

#endif /* QUEUE_FIFO_STATIC_H */