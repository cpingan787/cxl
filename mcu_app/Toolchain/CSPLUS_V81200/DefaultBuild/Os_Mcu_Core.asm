#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Portable\Mcu\Os_Mcu_Core.c -oDefaultBuild\Os_Mcu_Core.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f06cc35cf9cc4751afa6931eca3b87ebsu3mq4ug.ape
#@	compiled at Fri Mar 27 09:50:12 2026

	.file "..\..\Bsw\SystemServices\Os\Portable\Mcu\Os_Mcu_Core.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 114
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 118
	mov #_Os_TaskCBExtCore0.1, r5
	st.w r5, LOWW(#_Os_TaskCBExt)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 119
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	mov #_Os_IsrNestStackCore0.2, r5
	st.w r5, LOWW(#_Os_IsrNestStack)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 124
	movhi HIGHW1(#_Os_ISR1SP), r0, r2
	mov #_Os_ISR1SPCore0.3, r5
	st.w r5, LOWW(#_Os_ISR1SP)[r2]
	jmp [r31]
_Os_Hal_InitCPU:
	.stack _Os_Hal_InitCPU = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 147
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 151
	jarl _Os_Hal_GetCoreID, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 156
	jarl _Os_InterruptInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 158
	st23.h r0, 0xFFC01000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 159
	st23.h r0, 0xFFC01004[r0]
	mov 0x00000000, r21
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 164
	andi 0x0000FFFF, r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 165
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_Os_IntInstall, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 164
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 166
	jarl _Os_InterruptInstall, r31
	add 0x00000001, r21
.BB.LABEL.2_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 162
	mov r20, r2
	add r2, r2
	mov #_Os_CfgIsrMax_Inf, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	andi 0x0000FFFF, r21, r5
	cmp r2, r5
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 170
	jarl _Os_ArchInitSystemTimer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 173
	ld23.h 0xFFE301C4[r0], r2
	ori 0x00000001, r2, r2
	st23.h r2, 0xFFE301C4[r0]
	dispose 0x00000000, 0x00000061, [r31]
_Os_Hal_StartCore:
	.stack _Os_Hal_StartCore = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 199
	jmp [r31]
_Os_Hal_GetCoreMode:
	.stack _Os_Hal_GetCoreMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 223
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 229
	jmp [r31]
_Os_Hal_SetCoreMode:
	.stack _Os_Hal_SetCoreMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 248
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 255
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 278
	jmp [r31]
.BB.LABEL.5_4:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 273
	jmp [r31]
.BB.LABEL.5_5:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 278
	jmp [r31]
_Os_Hal_GetCoreID:
	.stack _Os_Hal_GetCoreID = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 296
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 301
	jmp [r31]
_Os_ArchGetCoreLogID:
	.stack _Os_ArchGetCoreLogID = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 321
	cmp 0x00000000, r6
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 335
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 340
	zxh r10
	jmp [r31]
_Os_ArchGetCorePhyID:
	.stack _Os_ArchGetCorePhyID = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 360
	cmp 0x00000000, r6
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 374
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 379
	zxh r10
	jmp [r31]
_Os_Hal_CheckCPUInformation:
	.stack _Os_Hal_CheckCPUInformation = 0
.BB.LABEL.9_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 404
	stsr 0x00000006, r2, 0x00000001
	mov 0x050003A1, r5
	cmp r5, r2
	bnz9 .BB.LABEL.9_1
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 408
	jmp [r31]
_Os_TaskEntry_IdleCore0:
	.stack _Os_TaskEntry_IdleCore0 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 431
	prepare 0x00000001, 0x00000000
.BB.LABEL.10_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Mcu/Os_Mcu_Core.c", 435
	jarl _IdleHook_Core0, r31
	br9 .BB.LABEL.10_1
	.section .bss, bss
	.align 4
_Os_TaskCBExtCore0.1:
	.ds (28)
	.align 4
_Os_IsrNestStackCore0.2:
	.ds (112)
	.align 4
_Os_ISR1SPCore0.3:
	.ds (128)
