---
name: embedded-debug
description: "Analyze embedded MCU bugs, UART/I2C issues, interrupt problems, and provide minimal fix code"
---

# Embedded Debug Skill

## Purpose
Analyze embedded MCU code issues and provide minimal, practical fixes.

## When to use
- MCU bug analysis (UART/I2C/SPI异常)
- 外设初始化问题
- 中断/DMA/低功耗问题
- 偶发错误/时序问题

## Core Rules
1. 必须按“最可能 -> 次可能”排序原因（最多5个）
2. 每个原因必须包含：
   - 原因解释
   - 如何验证
3. 必须给出：
   - 最小修改代码
   - 修改说明
4. 不要泛泛分析，只针对当前代码

## Priority Checks（嵌入式重点）
- 中断与主循环竞争
- volatile缺失
- 越界访问
- 状态机卡死
- 外设初始化顺序
- DMA缓存一致性
- 低功耗唤醒后的状态问题
- 结构体对齐问题
- 超时机制缺失

## Output Format
1. 问题原因（排序）
2. 验证方法
3. 修改代码
4. 修改说明

## Example Prompts
- 分析这个UART丢数据问题
- 为什么I2C偶发读错？
- 检查这个初始化代码是否有问题