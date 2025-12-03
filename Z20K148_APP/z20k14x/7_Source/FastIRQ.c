/****************************************************************************
 * 文件名称：Fast_IRQ.c
 * 功能描述：包含 FIRQ 和 默认中断处理函数。当 MCU 遇到这些故障、进入这些中断函数时，
 *				可以保存数据，程序不至于跑飞。
 * SDK说明：
 * 注意事项：1，
 * 		
 * 文件制作：智芯半导体，张允杰
 * 修改日期：2024.01.25
 * 修改记录：1，
 *
 * Copyright (C) 2020-2023 Zhixin Semiconductor Ltd. All rights reserved.
 ****************************************************************************/

//包含序需要使用的头文件
#include "platform_cfg.h"	// 包含MCU平台配置信息的头文件
#include "common_drv.h"		// 包含SDK中常用信息的头文件
#include "logHal.h"
#include <stdint.h>

/* ***** 类型定义 ******/
// 定义故障状态寄存器结构体（Cortex-M4架构）
typedef struct {
    uint32_t HFSR;   // 硬件故障状态寄存器
    uint32_t CFSR;   // 配置故障状态寄存器
    uint32_t UFSR;   // 用法故障状态寄存器（CFSR高16位）
    uint32_t BFSR;   // 总线故障状态寄存器（CFSR中8位）
    uint32_t MMSR;   // 存储器管理故障状态寄存器（CFSR低8位）
    uint32_t DFSR;   // 调试故障状态寄存器
    uint32_t AFSR;   // 辅助故障状态寄存器
    uint32_t BFAR;   // 总线故障地址寄存器
    uint32_t MMFAR;  // 存储器管理故障地址寄存器
} FaultRegisters;

/* ***** 定义和声明全局变量 ******/
// 保存故障寄存器信息
static FaultRegisters faultRegs;

/* ***** 函数声明 ******/
static void stack_backtrace(uint32_t *sp);
static void read_fault_registers(void);
static void print_fault_registers(void);

/* ***** 定义FIRQ和默认IRQ的中断函数 ************************************************************/


/*****************************************************************************
 * 函数: NMI_Handler
 * 功能: NMI(非屏蔽)中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
void NMI_Handler(void)
{
	//while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	TBOX_PRINT("NMI_Handler\n");//Simon for debug
	//COMMON_SystemReset();	//软件复位
}

/*****************************************************************************
 * 函数: HardFault_Handler
 * 功能: 硬件故障中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
void HardFault_Handler(void)
{
    // 关闭总中断，防止嵌套
    COMMON_DISABLE_INTERRUPTS();
    // 获取栈指针（根据当前模式选择MSP或PSP）
    uint32_t sp;
    __asm volatile (
        "mrs %0, msp\n"    // 读取主栈指针(MSP)
        "tst lr, #4\n"     // 检查LR的bit4，判断故障发生时使用的栈
        "beq 1f\n"         // 如果bit4为0，直接跳到标签1
        "mrs %0, psp\n"    // 若bit4为1，直接读取进程栈指针(PSP)到sp
        "1:\n"             // 标签1：结束
        : "=r"(sp)
        :
        : "cc"
    );
    // 读取故障寄存器
    read_fault_registers();
    // 打印故障信息
    TBOX_PRINT("\r\n===== Hard Fault Occurred! =====\r\n");
    print_fault_registers();
    // 栈回溯（传入栈指针）
    stack_backtrace((uint32_t*)sp);

    // 故障后处理（如复位系统，根据需求调整）
    TBOX_PRINT("\r\nSystem will reset...\r\n");
    // 软件复位
    COMMON_SystemReset();
    while (1) {
    }
}

/*****************************************************************************
 * 函数: MemManageFault_Handler
 * 功能: 存储管理器中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
void MemManageFault_Handler(void)
{
	//while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	TBOX_PRINT("MemManageFault_Handler\n");//Simon for debug
	//COMMON_SystemReset();	//软件复位
}


/*****************************************************************************
 * 函数: BusFault_Handler
 * 功能: 总线故障中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
void BusFault_Handler(void)
{
	// while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	TBOX_PRINT("BusFault_Handler\n");//Simon for debug
	//COMMON_SystemReset();	//软件复位
}

/*****************************************************************************
 * 函数: UsageFault_Handler
 * 功能: 用法故障中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
void UsageFault_Handler(void)
{
	// while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	TBOX_PRINT("UsageFault_Handler\n");//Simon for debug
	//COMMON_SystemReset();	//软件复位
}

/*****************************************************************************
 * 函数: SVC_Handler
 * 功能: Supervisor Call(管理会员呼叫)中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
/*void SVC_Handler(void)
{
	// while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	
	COMMON_SystemReset();	//软件复位
}*/

/*****************************************************************************
 * 函数: PendSV_Handler
 * 功能: Pending Supervisor Call(延期的管理会员呼叫)中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
/*void PendSV_Handler(void)
{
	// while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	
	COMMON_SystemReset();	//软件复位
}*/

/*****************************************************************************
 * 函数: SysTick_Handler
 * 功能: SysTick中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
/*void SysTick_Handler(void)
{
	// while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	
	COMMON_SystemReset();	//软件复位
}*/


/*****************************************************************************
 * 函数: Default_IRQHandler
 * 功能: SCC 模块总中断执行函数
 * 参数: 
 * 返回: 
 * 说明: 1，中断执行函数，为了追求高效，直接使用中断向量表中的函数名。
 *		2，使用频繁的中断，放在前面，减少判断占用的时间
 *		3，每次执行一个中断任务函数，减少各种判断。
 *		4，不使用的 IRQ 中断，要屏蔽对应的中断执行函数。
****************************************************************************/
void Default_IRQHandler(void)
{
	// while(1) CORE_NOP();	//调试程序时使用
	
	//存储关键数据
	
	TBOX_PRINT("Default_IRQHandler\n");//Simon for debug
	//COMMON_SystemReset();	//软件复位
}

/*****************************************************************************
 * 函数: stack_backtrace
 * 功能: 打印栈回溯信息
 * 参数: sp - 异常发生时的栈指针
 * 返回: 
 * 说明: 1，用于分析异常发生时的调用栈，帮助定位问题。
 *		2，打印返回地址和栈指针变化，帮助理解函数调用关系。
 *		3，最多打印10层栈帧，防止无限循环。
****************************************************************************/
static void stack_backtrace(uint32_t *sp)
{
    // 提取异常入栈的关键寄存器
    uint32_t pc = sp[6];
    uint32_t lr = sp[5];
    TBOX_PRINT("Stack Backtrace:\r\n");
    TBOX_PRINT("  PC: 0x%08X (Fault Address)\r\n", pc);
    TBOX_PRINT("  LR: 0x%08X\r\n", lr);
    // 初始栈指针（异常发生时的SP）
    uint32_t current_sp = (uint32_t)sp;
    // 第一层返回地址是LR（当前函数返回至上一层的地址）
    uint32_t ret_addr = lr;
    for (int i = 0; i < 3; i++) {
        TBOX_PRINT("  Frame %d: Return Addr = 0x%08X\r\n", i, ret_addr);

        // 2. 计算下一层栈指针（SP = 当前SP + 已使用的栈空间）
        // 栈帧中至少包含返回地址（4字节），额外空间由参数/局部变量决定
        // 这里采用保守策略：每次增加4字节（返回地址）+ 最大可能的参数空间（16字节）
        current_sp += 20;  // 可根据实际函数参数调整（如无参数可设为4）

        // 4. 读取下一层返回地址（栈中存储的上一层LR）
        ret_addr = *(volatile uint32_t*)current_sp;
    }
}

/*****************************************************************************
 * 函数: read_fault_registers
 * 功能: 读取故障寄存器信息
 * 参数: 
 * 返回: 
 * 说明: 1，读取Cortex-M4的故障寄存器（HFSR、CFSR、DFSR、AFSR、BFAR、MMFAR）。
 *		2，将读取到的寄存器值存储到全局变量faultRegs中。
 *		3，根据寄存器位定义解析故障类型和地址。
****************************************************************************/
static void read_fault_registers(void)
{
    // 硬件故障状态寄存器（HFSR）：地址0xE000ED2C
    faultRegs.HFSR = *(volatile uint32_t*)0xE000ED2C;
    // 配置故障状态寄存器（CFSR）：地址0xE000ED28（包含MMSR、BFSR、UFSR）
    faultRegs.CFSR = *(volatile uint32_t*)0xE000ED28;
    faultRegs.MMSR = (faultRegs.CFSR >> 0) & 0xFF;  // 低8位：存储器管理故障
    faultRegs.BFSR = (faultRegs.CFSR >> 8) & 0xFF;  // 中8位：总线故障
    faultRegs.UFSR = (faultRegs.CFSR >> 16) & 0xFFFF; // 高16位：用法故障
    // 调试故障状态寄存器（DFSR）：地址0xE000ED30
    faultRegs.DFSR = *(volatile uint32_t*)0xE000ED30;
    // 辅助故障状态寄存器（AFSR）：地址0xE000ED3C
    faultRegs.AFSR = *(volatile uint32_t*)0xE000ED3C;
    // 总线故障地址寄存器（BFAR）：仅当BFSR的BFARVALID位为1时有效
    if (faultRegs.BFSR & (1 << 1)) {
        faultRegs.BFAR = *(volatile uint32_t*)0xE000ED38;
    } else {
        faultRegs.BFAR = 0xFFFFFFFF;  // 无效标记
    }
    // 存储器管理故障地址寄存器（MMFAR）：仅当MMSR的MMARVALID位为1时有效
    if (faultRegs.MMSR & (1 << 7)) {
        faultRegs.MMFAR = *(volatile uint32_t*)0xE000ED34;
    } else {
        faultRegs.MMFAR = 0xFFFFFFFF;  // 无效标记
    }
}

/*****************************************************************************
 * 函数: print_fault_registers
 * 功能: 打印故障寄存器信息
 * 参数: 
 * 返回: 
 * 说明: 1，根据全局变量faultRegs打印Cortex-M4的故障寄存器信息。
 *		2，包括HFSR、CFSR、DFSR、AFSR、BFAR、MMFAR等寄存器。
 *		3，根据寄存器位定义解析故障类型和地址。
****************************************************************************/
static void print_fault_registers(void)
{
    TBOX_PRINT("\r\n=== Fault Registers ===\r\n");
    TBOX_PRINT("HFSR: 0x%08X (Hard Fault Status Register)\r\n", faultRegs.HFSR);
    TBOX_PRINT("  - DEBUGEVT: %d (Debug event)\r\n", (faultRegs.HFSR >> 31) & 1);
    TBOX_PRINT("  - FORCED: %d (Forced hard fault)\r\n", (faultRegs.HFSR >> 30) & 1);
    TBOX_PRINT("  - VECTTBL: %d (Vector table read fault)\r\n", (faultRegs.HFSR >> 1) & 1);
    
    TBOX_PRINT("CFSR: 0x%08X (Configurable Fault Status Register)\r\n", faultRegs.CFSR);
    
    TBOX_PRINT("  MMSR: 0x%02X (Memory Management Fault Status)\r\n", faultRegs.MMSR);
    TBOX_PRINT("    - IACCVIOL: %d (Instruction access violation)\r\n", (faultRegs.MMSR >> 0) & 1);
    TBOX_PRINT("    - DACCVIOL: %d (Data access violation)\r\n", (faultRegs.MMSR >> 1) & 1);
    TBOX_PRINT("    - MUNSTKERR: %d (Memory unstack error)\r\n", (faultRegs.MMSR >> 3) & 1);
    TBOX_PRINT("    - MSTKERR: %d (Memory stack error)\r\n", (faultRegs.MMSR >> 4) & 1);
    TBOX_PRINT("    - MMARVALID: %d (MMFAR valid)\r\n", (faultRegs.MMSR >> 7) & 1);
    
    TBOX_PRINT("  BFSR: 0x%02X (Bus Fault Status)\r\n", faultRegs.BFSR);
    TBOX_PRINT("    - IBUSERR: %d (Instruction bus error)\r\n", (faultRegs.BFSR >> 0) & 1);
    TBOX_PRINT("    - PRECISERR: %d (Precise data bus error)\r\n", (faultRegs.BFSR >> 1) & 1);
    TBOX_PRINT("    - IMPRECISERR: %d (Imprecise data bus error)\r\n", (faultRegs.BFSR >> 2) & 1);
    TBOX_PRINT("    - UNSTKERR: %d (Bus unstack error)\r\n", (faultRegs.BFSR >> 3) & 1);
    TBOX_PRINT("    - STKERR: %d (Bus stack error)\r\n", (faultRegs.BFSR >> 4) & 1);
    TBOX_PRINT("    - BFARVALID: %d (BFAR valid)\r\n", (faultRegs.BFSR >> 7) & 1);
    
    TBOX_PRINT("  UFSR: 0x%04X (Usage Fault Status)\r\n", faultRegs.UFSR);
    TBOX_PRINT("    - UNDEFINSTR: %d (Undefined instruction)\r\n", (faultRegs.UFSR >> 0) & 1);
    TBOX_PRINT("    - INVSTATE: %d (Invalid state)\r\n", (faultRegs.UFSR >> 1) & 1);
    TBOX_PRINT("    - INVPC: %d (Invalid PC load)\r\n", (faultRegs.UFSR >> 2) & 1);
    TBOX_PRINT("    - NOCP: %d (No coprocessor)\r\n", (faultRegs.UFSR >> 3) & 1);
    TBOX_PRINT("    - UNALIGNED: %d (Unaligned access)\r\n", (faultRegs.UFSR >> 8) & 1);
    TBOX_PRINT("    - DIVBYZERO: %d (Divide by zero)\r\n", (faultRegs.UFSR >> 9) & 1);
    
    TBOX_PRINT("DFSR: 0x%08X (Debug Fault Status Register)\r\n", faultRegs.DFSR);
    TBOX_PRINT("AFSR: 0x%08X (Auxiliary Fault Status Register)\r\n", faultRegs.AFSR);
    TBOX_PRINT("MMFAR: 0x%08X (Memory Management Fault Address Register)\r\n", faultRegs.MMFAR);
    TBOX_PRINT("BFAR: 0x%08X (Bus Fault Address Register)\r\n", faultRegs.BFAR);
}

