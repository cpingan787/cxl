#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\EcuM\EcuM_StartUp.c -oDefaultBuild\EcuM_StartUp.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6979e99b37c7467cb6138fdc4e0f7319t4mv1uak.gey
#@	compiled at Fri Mar 27 09:50:39 2026

	.file "..\..\Bsw\SystemServices\EcuM\EcuM_StartUp.c"

	$reg_mode 32
	.dbl_size 8

	.extern _EcuM_ConfigConsistencyHash
	.extern _EcuM_WkSourceCfgs
	.extern _EcuMRunData
	.public _EcuMWksPending, 4
	.public _EcuMWksValidated, 4
	.public _EcuMWksExpired, 4
	.public _EcuM_ConfigPtr, 4
	.public _EcuM_Init
	.extern _EcuM_CancellAlarms
	.extern _StartOS
	.public _EcuM_StartupTwo
	.extern _SchM_Start
	.extern _BswM_Init
	.extern _SchM_Init
	.extern _SchM_StartTiming
	.extern _BswM_EcuM_CurrentState
	.extern _BswM_EcuM_CurrentWakeup
	.extern _EcuM_AL_DriverInitZero
	.extern _EcuM_DeterminePbConfiguration
	.extern _EcuM_ErrorHook
	.extern _EcuM_AL_DriverInitOne
	.extern _Mcu_GetResetReason
	.extern _EcuM_SelectShutdownTarget

	.section .text, text
_EcuM_Init:
	.stack _EcuM_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 104
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 120
	jarl _EcuM_InternalInit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 123
	jarl _EcuM_StartPreOS.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 127
	jarl _EcuM_CancellAlarms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 131
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	ld.w LOWW(#_EcuM_ConfigPtr)[r2], r2
	ld.hu 0x00000004[r2], r6
	jarl _StartOS, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_StartupTwo:
	.stack _EcuM_StartupTwo = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 146
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 166
	jarl _SchM_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 169
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	ld.w LOWW(#_EcuM_ConfigPtr)[r2], r2
	ld.w 0x0000000C[r2], r2
	ld.w 0x00000000[r2], r6
	jarl _BswM_Init, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 172
	jarl _SchM_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 175
	jarl _SchM_StartTiming, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 178
	mov #_EcuMRunData, r20
	movea 0x00000010, r0, r6
	st.b r6, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 179
	jarl _BswM_EcuM_CurrentState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 181
	ld.w 0x00000018[r20], r2
	ld.w 0x00000000[r2], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 0
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 183
	jarl _BswM_EcuM_CurrentWakeup, r31
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 186
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_InternalInit.1:
	.stack _EcuM_InternalInit.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 195
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 199
	jarl _EcuM_CancellAlarms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 200
	mov #_EcuMRunData, r2
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 203
	mov #_EcuMWksPending, r5
	st.w r5, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 204
	mov #_EcuMWksExpired, r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 205
	mov #_EcuMWksValidated, r5
	st.w r5, 0x00000018[r2]
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_StartPreOS.1:
	.stack _EcuM_StartPreOS.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 214
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 238
	jarl _EcuM_AL_DriverInitZero, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 243
	jarl _EcuM_DeterminePbConfiguration, r31
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	st.w r10, LOWW(#_EcuM_ConfigPtr)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 246
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 0
	movhi HIGHW1(#_EcuM_ConfigConsistencyHash), r0, r2
	ld.w LOWW(#_EcuM_ConfigConsistencyHash)[r2], r2
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r5
	ld.w LOWW(#_EcuM_ConfigPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 249
	jarl _EcuM_ErrorHook, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 257
	jarl _EcuM_AL_DriverInitOne, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 263
	jarl _Mcu_GetResetReason, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 264
	mov r10, r6
	jarl _EcuM_MapReset2WakeupSource.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 267
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	ld.w LOWW(#_EcuM_ConfigPtr)[r2], r2
	ld.hu 0x00000008[r2], r7
	ld.bu 0x00000006[r2], r6
	jarl _EcuM_SelectShutdownTarget, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_MapReset2WakeupSource.1:
	.stack _EcuM_MapReset2WakeupSource.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 284
	mov 0x00000000, r2
	br9 .BB.LABEL.5_6
.BB.LABEL.5_1:	; bb4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 293
	mov r2, r7
	mul 0x0000001C, r7, r0
	mov #_EcuM_WkSourceCfgs, r8
	add r7, r8
	ld.w 0x00000018[r8], r7
	mov r5, r8
	shl 0x00000002, r8
	add r8, r7
	ld.w 0x00000000[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 295
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	movhi HIGHW1(#_EcuMWksValidated), r0, r5
	ld.w LOWW(#_EcuMWksValidated)[r5], r6
	or r2, r6
	st.w r6, LOWW(#_EcuMWksValidated)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 297
	jmp [r31]
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 0
	add 0x00000001, r5
.BB.LABEL.5_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 291
	mov r2, r7
	mul 0x0000001C, r7, r0
	mov #_EcuM_WkSourceCfgs, r8
	add r7, r8
	ld.w 0x00000014[r8], r7
	cmp r7, r5
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_5:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 0
	add 0x00000001, r2
.BB.LABEL.5_6:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 289
	cmp 0x00000002, r2
	bh9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; bb35.bb23_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_4
.BB.LABEL.5_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_StartUp.c", 304
	jmp [r31]
	.section .bss, bss
	.align 4
_EcuMWksPending:
	.ds (4)
	.align 4
_EcuMWksValidated:
	.ds (4)
	.align 4
_EcuMWksExpired:
	.ds (4)
	.align 4
_EcuM_ConfigPtr:
	.ds (4)
