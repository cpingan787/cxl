#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Task_Cfg.c -oDefaultBuild\Os_Task_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_246e3aeff38d469bac5264129195d663whnibnr0.f1r
#@	compiled at Fri Mar 27 09:50:29 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Task_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Os_TaskStack, 56
	.public _Os_TaskCfg, 224
	.public _Os_SystemStack_Inf, 4
	.public _Os_TASK_IDLE_Inf, 4
	.public _Os_CfgPriorityMax_Inf, 2
	.public _Os_TCB, 28
	.public _Os_TaskIdRange, 24
	.extern _Os_TaskEntry_OsTask_Init
	.extern _Os_TaskEntry_OsTask_1ms
	.extern _Os_TaskEntry_OsTask_5ms
	.extern _Os_TaskEntry_OsTask_10ms
	.extern _Os_TaskEntry_OsTask_50ms
	.extern _Os_TaskEntry_OsTask_100ms
	.extern _IdleHook_Core0

	.section .text, text
_Os_TaskEntry_IdleCore0.1:
	.stack _Os_TaskEntry_IdleCore0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Task_Cfg.c", 369
	prepare 0x00000001, 0x00000000
.BB.LABEL.1_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Task_Cfg.c", 373
	jarl _IdleHook_Core0, r31
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
	.ds (1024)
	.align 4
_Os_OsTask_1ms_Stack.5:
	.ds (1024)
	.align 4
_Os_OsTask_5ms_Stack.6:
	.ds (4096)
	.align 4
_Os_OsTask_10ms_Stack.7:
	.ds (4096)
	.align 4
_Os_OsTask_50ms_Stack.8:
	.ds (1024)
	.align 4
_Os_OsTask_100ms_Stack.9:
	.ds (1024)
	.align 4
_Os_TCB_OsTask_Init.10:
	.ds (36)
	.align 4
_Os_TCB_OsTask_1ms.11:
	.ds (36)
	.align 4
_Os_TCB_OsTask_5ms.12:
	.ds (36)
	.align 4
_Os_TCB_OsTask_10ms.13:
	.ds (36)
	.align 4
_Os_TCB_OsTask_50ms.14:
	.ds (36)
	.align 4
_Os_TCB_OsTask_100ms.15:
	.ds (36)
	.align 4
_Os_TCB_OS_TASK_IDLE_CORE0.16:
	.ds (36)
	.section .const, const
	.align 4
_Os_SystemStackCore0.2:
	.dw (#_Os_SysStack_Core0.1) + 4064
	.dw #_Os_SysStack_Core0.1
	.align 4
_Os_TaskStack:
	.dw (#_Os_OsTask_Init_Stack.4) + 992
	.dw #_Os_OsTask_Init_Stack.4
	.dw (#_Os_OsTask_1ms_Stack.5) + 992
	.dw #_Os_OsTask_1ms_Stack.5
	.dw (#_Os_OsTask_5ms_Stack.6) + 4064
	.dw #_Os_OsTask_5ms_Stack.6
	.dw (#_Os_OsTask_10ms_Stack.7) + 4064
	.dw #_Os_OsTask_10ms_Stack.7
	.dw (#_Os_OsTask_50ms_Stack.8) + 992
	.dw #_Os_OsTask_50ms_Stack.8
	.dw (#_Os_OsTask_100ms_Stack.9) + 992
	.dw #_Os_OsTask_100ms_Stack.9
	.dw (#_Os_TaskStack_Idle_Core0.3) + 480
	.dw #_Os_TaskStack_Idle_Core0.3
	.align 4
_Os_TaskCfg:
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_Init
	.dw (#_Os_OsTask_Init_Stack.4) + 992
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
	.dw (#_Os_OsTask_1ms_Stack.5) + 992
	.dw #_Os_OsTask_1ms_Stack.5
	.dhw 0x0001
	.dhw 0x0006
	.ds (2)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_5ms
	.dw (#_Os_OsTask_5ms_Stack.6) + 4064
	.dw #_Os_OsTask_5ms_Stack.6
	.dhw 0x0001
	.dhw 0x0005
	.ds (2)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_10ms
	.dw (#_Os_OsTask_10ms_Stack.7) + 4064
	.dw #_Os_OsTask_10ms_Stack.7
	.dhw 0x0001
	.dhw 0x0004
	.ds (2)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_50ms
	.dw (#_Os_OsTask_50ms_Stack.8) + 992
	.dw #_Os_OsTask_50ms_Stack.8
	.dhw 0x0001
	.dhw 0x0003
	.ds (2)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (8)
	.dw #_Os_TaskEntry_OsTask_100ms
	.dw (#_Os_OsTask_100ms_Stack.9) + 992
	.dw #_Os_OsTask_100ms_Stack.9
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
	.dw 0x00000006
	.align 2
_Os_CfgPriorityMax_Inf:
	.dhw 0x0007
	.align 4
_Os_TCB:
	.dw #_Os_TCB_OsTask_Init.10
	.dw #_Os_TCB_OsTask_1ms.11
	.dw #_Os_TCB_OsTask_5ms.12
	.dw #_Os_TCB_OsTask_10ms.13
	.dw #_Os_TCB_OsTask_50ms.14
	.dw #_Os_TCB_OsTask_100ms.15
	.dw #_Os_TCB_OS_TASK_IDLE_CORE0.16
	.align 4
_Os_TaskIdRange:
	.ds (4)
	.dw 0x00000007
	.dw 0x0000FFFF
	.dw 0x0000FFFF
	.ds (4)
	.dw 0x00000006
