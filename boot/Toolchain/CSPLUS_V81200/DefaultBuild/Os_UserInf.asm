#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_UserInf.c -oDefaultBuild\Os_UserInf.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b0c558e96a4740bc963045f0a742e10epncsjfqi.set
#@	compiled at Thu Jul 16 13:41:49 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_UserInf.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Comm_MainTick
	.public _Os_TaskEntry_OsTask_Init
	.extern _EcuMService_Init
	.extern _SetRelAlarm
	.extern _TerminateTask
	.public _Os_TaskEntry_OsTask_1ms
	.extern _CanTp_MainFunction
	.extern _Dcm_TimerFunction
	.extern _Dcm_MainFunction_Post
	.extern _Dcm_MainFunction
	.public _IdleHook_Core0
	.public _Os_PanicHandler
	.public _ISR_RCAN0ERR_IRQ_Handler
	.extern _CAN_CONTROLLER0_BUSOFF_CAT2_ISR
	.public _ISR_RCAN0TRX_IRQ_Handler
	.extern _CAN_CONTROLLER0_TX_CAT2_ISR
	.public _ISR_RCANGRECC0_IRQ_Handler
	.extern _CAN_RSCAN0_RXFIFO_CAT2_ISR
	.public _ISR_WDTA1_IRQ_Handler
	.extern _Wdg_59_DriverB_TriggerFunc

	.section .text, text
_Os_TaskEntry_OsTask_Init:
	.stack _Os_TaskEntry_OsTask_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 60
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 67
	jarl32 _EcuMService_Init, r31
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 69
	mov r7, r8
	jarl32 _SetRelAlarm, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 74
	jarl32 _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 76
	br9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 81
	dispose 0x00000000, 0x00000001, [r31]
_Os_TaskEntry_OsTask_1ms:
	.stack _Os_TaskEntry_OsTask_1ms = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 83
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 89
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r6
	add 0x00000001, r6
	st.h r6, LOWW(#_Comm_MainTick)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 90
	jarl32 _CanTp_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 91
	jarl32 _Dcm_TimerFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 92
	jarl32 _Dcm_MainFunction_Post, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 93
	jarl32 _Dcm_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 98
	jarl32 _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 100
	br9 .BB.LABEL.2_1
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 105
	dispose 0x00000000, 0x00000001, [r31]
_IdleHook_Core0:
	.stack _IdleHook_Core0 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 110
	jmp [r31]
_Os_PanicHandler:
	.stack _Os_PanicHandler = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 134
	jmp [r31]
_ISR_RCAN0ERR_IRQ_Handler:
	.stack _ISR_RCAN0ERR_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 147
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 153
	jarl32 _CAN_CONTROLLER0_BUSOFF_CAT2_ISR, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RCAN0TRX_IRQ_Handler:
	.stack _ISR_RCAN0TRX_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 165
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 171
	jarl32 _CAN_CONTROLLER0_TX_CAT2_ISR, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RCANGRECC0_IRQ_Handler:
	.stack _ISR_RCANGRECC0_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 183
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 190
	jarl32 _CAN_RSCAN0_RXFIFO_CAT2_ISR, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_WDTA1_IRQ_Handler:
	.stack _ISR_WDTA1_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 202
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_UserInf.c", 208
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	dispose 0x00000000, 0x00000001, [r31]
