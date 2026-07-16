#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_StackMonitor.c -oDefaultBuild\Os_StackMonitor.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_dda99548be5b4350a59f6cfa6b2e44881gtdbwve.tov
#@	compiled at Thu Jul 16 13:41:54 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_StackMonitor.c"

	$reg_mode 22
	.dbl_size 4

	.public _Os_StackMonitor
	.extern _Os_ShutdownOS
	.public _Os_FillStack

	.section .text, text
_Os_StackMonitorCheck.1:
	.stack _Os_StackMonitorCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 87
	mov 0x00000008, r5
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 96
	add 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 98
	mov r5, r7
	shl 0x00000002, r7
	add r6, r7
	ld.w 0x00000000[r7], r7
	mov 0xCCCCCCCC, r8
	cmp r8, r7
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 94
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb12.bb18_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb.bb18_crit_edge
	mov 0x00000000, r10
.BB.LABEL.1_5:	; bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 106
	jmp [r31]
_Os_StackMonitor:
	.stack _Os_StackMonitor = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 116
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 121
	ld.w 0x00000004[r25], r6
	jarl _Os_StackMonitorCheck.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 0
	ld.w 0x00000000[r25], r6
	jarl _Os_StackMonitorCheck.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	mov 0x00000000, r7
	mov 0x0000000E, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 154
	jarl32 _Os_ShutdownOS, r31
.BB.LABEL.2_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 156
	dispose 0x00000000, 0x00000201, [r31]
_Os_FillStack:
	.stack _Os_FillStack = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 165
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 170
	movea 0x00000020, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 173
	ld.w 0x00000004[r6], r6
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 0
	mov 0xCCCCCCCC, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 176
	st.w r7, 0x00000000[r6]
	add 0x00000004, r6
.BB.LABEL.3_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 173
	cmp r5, r6
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_StackMonitor.c", 185
	jmp [r31]
