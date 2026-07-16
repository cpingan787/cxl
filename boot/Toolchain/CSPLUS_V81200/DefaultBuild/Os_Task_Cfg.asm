#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Task_Cfg.c -oDefaultBuild\Os_Task_Cfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_fc8f8d266eb347f8adf64b69f55c2705qvuku2zb.cto
#@	compiled at Thu Jul 16 13:41:44 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Task_Cfg.c"

	$reg_mode 22
	.dbl_size 4

	.public _Os_TaskStack, 24
	.public _Os_TaskCfg, 96
	.public _Os_SystemStack_Inf, 4
	.public _Os_TASK_IDLE_Inf, 4
	.public _Os_CfgPriorityMax_Inf, 2
	.public _Os_TCB, 12
	.public _Os_TaskIdRange, 24
	.extern _Os_TaskEntry_OsTask_Init
	.extern _Os_TaskEntry_OsTask_1ms
	.extern _IdleHook_Core0

	.section .text, text
_Os_TaskEntry_IdleCore0.1:
	.stack _Os_TaskEntry_IdleCore0.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Task_Cfg.c", 257
	prepare 0x00000001, 0x00000000
.BB.LABEL.1_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Task_Cfg.c", 261
	jarl32 _IdleHook_Core0, r31
	br9 .BB.LABEL.1_1
	.section .bss, bss
	.align 4
_Os_SysStack_Core0.1:
	.ds (4096)
	.align 4
_Os_TaskStack_Idle_Core0.3:
	.ds (512)
	.align 4
_Os_OsTask_Init_Stack.4:
	.ds (4096)
	.align 4
_Os_OsTask_1ms_Stack.5:
	.ds (4096)
	.align 4
_Os_TCB_OsTask_Init.6:
	.ds (36)
	.align 4
_Os_TCB_OsTask_1ms.7:
	.ds (36)
	.align 4
_Os_TCB_OS_TASK_IDLE_CORE0.8:
	.ds (36)
	.section .const, const
	.align 4
_Os_SystemStackCore0.2:
	.dw (#_Os_SysStack_Core0.1) + 4064
	.dw #_Os_SysStack_Core0.1
	.align 4
_Os_TaskStack:
	.dw (#_Os_OsTask_Init_Stack.4) + 4064
	.dw #_Os_OsTask_Init_Stack.4
	.dw (#_Os_OsTask_1ms_Stack.5) + 4064
	.dw #_Os_OsTask_1ms_Stack.5
	.dw (#_Os_TaskStack_Idle_Core0.3) + 480
	.dw #_Os_TaskStack_Idle_Core0.3
	.align 4
_Os_TaskCfg:
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_Init
	.dw (#_Os_OsTask_Init_Stack.4) + 4064
	.dw #_Os_OsTask_Init_Stack.4
	.dhw 0x0001
	.dhw 0x0001
	.dhw 0x0001
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_1ms
	.dw (#_Os_OsTask_1ms_Stack.5) + 4064
	.dw #_Os_OsTask_1ms_Stack.5
	.dhw 0x0001
	.dhw 0x0002
	.ds (2)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (8)
	.dw #_Os_TaskEntry_IdleCore0.1
	.dw (#_Os_TaskStack_Idle_Core0.3) + 480
	.dw #_Os_TaskStack_Idle_Core0.3
	.dhw 0x0001
	.ds (2)
	.dhw 0xFFFF
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (2)
	.align 4
_Os_SystemStack_Inf:
	.dw #_Os_SystemStackCore0.2
	.align 4
_Os_TASK_IDLE_Inf:
	.dw 0x00000002
	.align 2
_Os_CfgPriorityMax_Inf:
	.dhw 0x0003
	.align 4
_Os_TCB:
	.dw #_Os_TCB_OsTask_Init.6
	.dw #_Os_TCB_OsTask_1ms.7
	.dw #_Os_TCB_OS_TASK_IDLE_CORE0.8
	.align 4
_Os_TaskIdRange:
	.ds (4)
	.dw 0x00000003
	.dw 0x0000FFFF
	.dw 0x0000FFFF
	.ds (4)
	.dw 0x00000002
