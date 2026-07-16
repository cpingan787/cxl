#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Portable\Mcu\Os_Mcu_Core.c -oDefaultBuild\Os_Mcu_Core.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_1d311a3a75be489b9deb0eb5683482e70eo2uvn0.cy4
#@	compiled at Thu Jul 16 13:42:01 2026

	.file "..\..\Bsw\SystemServices\Os\Portable\Mcu\Os_Mcu_Core.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_IsrNestStack
	.extern _Os_ISR1SP
	.extern _Os_CfgIsrMax_Inf
	.extern _Os_IsrCfg
	.extern _Os_TaskCBExt
	.extern _Os_IntInstall
	.public _Os_Hal_MultiCoreInit
	.public _Os_Hal_InitCPU
	.extern _Os_InterruptInit
	.extern _Os_InterruptInstall
	.extern _Os_ArchInitSystemTimer
	.public _Os_Hal_StartCore
	.public _Os_Hal_GetCoreMode
	.public _Os_Hal_SetCoreMode
	.public _Os_Hal_GetCoreID
	.public _Os_ArchGetCoreLogID
	.public _Os_ArchGetCorePhyID
	.public _Os_Hal_CheckCPUInformation
	.public _Os_TaskEntry_IdleCore0
	.extern _IdleHook_Core0

	.section .text, text
_Os_Hal_MultiCoreInit:
	.stack _Os_Hal_MultiCoreInit = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 114
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 118
	mov #_Os_TaskCBExtCore0.1, r6
	st.w r6, LOWW(#_Os_TaskCBExt)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 119
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	mov #_Os_IsrNestStackCore0.2, r6
	st.w r6, LOWW(#_Os_IsrNestStack)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 124
	movhi HIGHW1(#_Os_ISR1SP), r0, r5
	mov #_Os_ISR1SPCore0.3, r6
	st.w r6, LOWW(#_Os_ISR1SP)[r5]
	jmp [r31]
_Os_Hal_InitCPU:
	.stack _Os_Hal_InitCPU = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 147
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 151
	jarl _Os_Hal_GetCoreID, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 156
	jarl32 _Os_InterruptInit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 158
	st23.h r0, 0xFFC01000[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 159
	st23.h r0, 0xFFC01004[r0]
	mov 0x00000000, r26
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 164
	andi 0x0000FFFF, r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 165
	mov r5, r6
	mul 0x0000000C, r6, r0
	mov #_Os_IntInstall, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 164
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 166
	jarl32 _Os_InterruptInstall, r31
	add 0x00000001, r26
.BB.LABEL.2_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 162
	mov r25, r5
	add r5, r5
	mov #_Os_CfgIsrMax_Inf, r6
	add r5, r6
	ld.hu 0x00000000[r6], r5
	andi 0x0000FFFF, r26, r6
	cmp r5, r6
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 170
	jarl32 _Os_ArchInitSystemTimer, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 173
	ld23.h 0xFFE301C4[r0], r5
	ori 0x00000001, r5, r5
	st23.h r5, 0xFFE301C4[r0]
	dispose 0x00000000, 0x00000301, [r31]
_Os_Hal_StartCore:
	.stack _Os_Hal_StartCore = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 199
	jmp [r31]
_Os_Hal_GetCoreMode:
	.stack _Os_Hal_GetCoreMode = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 223
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 229
	jmp [r31]
_Os_Hal_SetCoreMode:
	.stack _Os_Hal_SetCoreMode = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 248
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 255
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 0
	add 0xFFFFFFFF, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_2:	; entry
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; switch_clause_bb5
	halt
	nop
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 278
	jmp [r31]
.BB.LABEL.5_4:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 273
	jmp [r31]
.BB.LABEL.5_5:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 278
	jmp [r31]
_Os_Hal_GetCoreID:
	.stack _Os_Hal_GetCoreID = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 296
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 301
	jmp [r31]
_Os_ArchGetCoreLogID:
	.stack _Os_ArchGetCoreLogID = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 321
	cmp 0x00000000, r6
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 335
	cmov 0x00000002, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 340
	zxh r10
	jmp [r31]
_Os_ArchGetCorePhyID:
	.stack _Os_ArchGetCorePhyID = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 360
	cmp 0x00000000, r6
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 374
	cmov 0x00000002, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 379
	zxh r10
	jmp [r31]
_Os_Hal_CheckCPUInformation:
	.stack _Os_Hal_CheckCPUInformation = 0
.BB.LABEL.9_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 404
	stsr 0x00000006, r5, 0x00000001
	mov 0x050003A1, r6
	cmp r6, r5
	bnz9 .BB.LABEL.9_1
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 408
	jmp [r31]
_Os_TaskEntry_IdleCore0:
	.stack _Os_TaskEntry_IdleCore0 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 431
	prepare 0x00000001, 0x00000000
.BB.LABEL.10_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 435
	jarl32 _IdleHook_Core0, r31
	br9 .BB.LABEL.10_1
	.section .bss, bss
	.align 4
_Os_TaskCBExtCore0.1:
	.ds (12)
	.align 4
_Os_IsrNestStackCore0.2:
	.ds (20)
	.align 4
_Os_ISR1SPCore0.3:
	.ds (128)
