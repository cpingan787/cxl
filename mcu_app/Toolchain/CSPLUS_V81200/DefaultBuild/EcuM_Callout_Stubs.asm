#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\EcuM_Callout_Stubs.c -oDefaultBuild\EcuM_Callout_Stubs.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_81a9ed02fd5d43f5bc354f3f5b9b099aoemousqs.yh4
#@	compiled at Fri Mar 27 09:51:00 2026

	.file "..\..\Bsw\Config\BSW_Config\EcuM_Callout_Stubs.c"

	$reg_mode 32
	.dbl_size 8

	.extern _EcuMRunData
	.extern _EcuM_ConfigPtr
	.extern _EcuM_Config
	.extern _validNmMsgFlag
	.public _EcuM_ErrorHook
	.public _EcuM_McuSetMode
	.extern _Mcu_WakeUpFactor_Preparation
	.extern _Mcu_SetMode
	.public _EcuM_AL_DriverInitZero
	.extern _Dem_PreInit
	.public _EcuM_DeterminePbConfiguration
	.public _EcuM_AL_DriverInitOne
	.extern _Can_Init
	.public _EcuM_AL_DriverInitBswM
	.extern _CanIf_Init
	.extern _CanSM_Init
	.extern _PduR_Init
	.extern _Com_Init
	.extern _ComM_Init
	.extern _Nm_Init
	.extern _CanNm_Init
	.extern _CanTp_Init
	.extern _Dcm_Init
	.extern _Dem_Init
	.extern _BswM_EcuM_CurrentState
	.public _EcuM_OnGoOffOne
	.extern _Dem_Shutdown
	.extern _NvM_WriteAll
	.extern _Wdg_59_DriverA_TriggerFunc
	.extern _NvM_MainFunction
	.extern _Fee_MainFunction
	.extern _Fls_MainFunction
	.extern _NvM_GetErrorStatus
	.public _EcuM_OnGoOffTwo
	.public _EcuM_AL_SwitchOff
	.public _EcuM_AL_Reset
	.public _EcuM_EnableWakeupSources
	.public _EcuM_GenerateRamHash
	.public _EcuM_SleepActivity
	.public _EcuM_StartCheckWakeup
	.public _EcuM_EndCheckWakeup
	.public _EcuM_CheckRamHash
	.public _EcuM_DisableWakeupSources
	.public _EcuM_StartWakeupSources
	.extern _CanSM_StartWakeupSource
	.public _EcuM_CheckValidation
	.extern _EcuM_ValidateWakeupEvent
	.public _EcuM_StopWakeupSources
	.extern _CanSM_StopWakeupSource
	.public _EcuM_CurrentTimestampMS
	.extern _GetCoreID
	.extern _GetCounterValue
	.public _EcuM_CalculateElapsedMS
	.extern _GetElapsedValue
	.public _EcuM_CheckWakeup

	.section .text, text
_EcuM_ErrorHook:
	.stack _EcuM_ErrorHook = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 107
	jmp [r31]
_EcuM_McuSetMode:
	.stack _EcuM_McuSetMode = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 133
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 143
	mov r20, r6
	jarl _Mcu_WakeUpFactor_Preparation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 144
	mov r20, r6
	jarl _Mcu_SetMode, r31
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_AL_DriverInitZero:
	.stack _EcuM_AL_DriverInitZero = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 188
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 193
	jarl _Dem_PreInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_DeterminePbConfiguration:
	.stack _EcuM_DeterminePbConfiguration = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 222
	mov #_EcuM_Config, r10
	jmp [r31]
_EcuM_AL_DriverInitOne:
	.stack _EcuM_AL_DriverInitOne = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 239
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 244
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	ld.w LOWW(#_EcuM_ConfigPtr)[r2], r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 245
	ld.w 0x00000004[r2], r6
	jarl _Can_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_AL_DriverInitBswM:
	.stack _EcuM_AL_DriverInitBswM = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 260
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 266
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 265
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	ld.w LOWW(#_EcuM_ConfigPtr)[r2], r2
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 266
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 268
	ld.w 0x00000008[r20], r6
	jarl _CanIf_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 269
	ld.w 0x0000000C[r20], r6
	jarl _CanSM_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 270
	ld.w 0x00000010[r20], r6
	jarl _PduR_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 271
	ld.w 0x00000014[r20], r6
	jarl _Com_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 272
	ld.w 0x00000018[r20], r6
	jarl _ComM_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 273
	ld.w 0x0000001C[r20], r6
	jarl _Nm_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 274
	ld.w 0x00000020[r20], r6
	jarl _CanNm_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 275
	ld.w 0x00000024[r20], r6
	jarl _CanTp_Init, r31
	br9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 284
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 286
	ld.w 0x00000028[r20], r6
	jarl _Dcm_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 287
	ld.w 0x0000002C[r20], r6
	jarl _Dem_Init, r31
.BB.LABEL.6_4:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 0
	movea 0x00000030, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 306
	movhi HIGHW1(#_EcuMRunData), r0, r2
	st.b r6, LOWW(#_EcuMRunData)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 307
	jarl _BswM_EcuM_CurrentState, r31
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_OnGoOffOne:
	.stack _EcuM_OnGoOffOne = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 354
	prepare 0x00000041, 0x00000004
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 364
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 365
	jarl _Dem_Shutdown, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 366
	jarl _NvM_WriteAll, r31
	mov 0x00000000, r20
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 369
	jarl _Wdg_59_DriverA_TriggerFunc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 371
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 372
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 373
	jarl _Fls_MainFunction, r31
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 374
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 370
	add 0x00000001, r20
	mov 0x0007A11F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 375
	cmp r2, r20
	bh9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 367
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 383
	dispose 0x00000004, 0x00000041, [r31]
_EcuM_OnGoOffTwo:
	.stack _EcuM_OnGoOffTwo = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 396
	prepare 0x00000041, 0x00000004
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 409
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 410
	jarl _Dem_Shutdown, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 411
	jarl _NvM_WriteAll, r31
	mov 0x00000000, r20
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 415
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 416
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 417
	jarl _Fls_MainFunction, r31
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 418
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 414
	add 0x00000001, r20
	movea 0x00001387, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 419
	cmp r2, r20
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 412
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.8_1
.BB.LABEL.8_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 424
	dispose 0x00000004, 0x00000041, [r31]
_EcuM_AL_SwitchOff:
	.stack _EcuM_AL_SwitchOff = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 437
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 446
	mov r20, r6
	jarl _Mcu_WakeUpFactor_Preparation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 447
	mov r20, r6
	jarl _Mcu_SetMode, r31
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_AL_Reset:
	.stack _EcuM_AL_Reset = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 463
	jmp [r31]
_EcuM_EnableWakeupSources:
	.stack _EcuM_EnableWakeupSources = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 490
	jmp [r31]
_EcuM_GenerateRamHash:
	.stack _EcuM_GenerateRamHash = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 531
	jmp [r31]
_EcuM_SleepActivity:
	.stack _EcuM_SleepActivity = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 555
	jmp [r31]
_EcuM_StartCheckWakeup:
	.stack _EcuM_StartCheckWakeup = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 583
	jmp [r31]
_EcuM_EndCheckWakeup:
	.stack _EcuM_EndCheckWakeup = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 611
	jmp [r31]
_EcuM_CheckRamHash:
	.stack _EcuM_CheckRamHash = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 648
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 661
	jmp [r31]
_EcuM_DisableWakeupSources:
	.stack _EcuM_DisableWakeupSources = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 675
	jmp [r31]
_EcuM_StartWakeupSources:
	.stack _EcuM_StartWakeupSources = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 748
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 757
	jarl _CanSM_StartWakeupSource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 758
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_CheckValidation:
	.stack _EcuM_CheckValidation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 776
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 781
	addi 0xFFFFFFC0, r6, r0
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 0
	addi 0xFFFFFFE0, r6, r0
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 788
	movhi HIGHW1(#_validNmMsgFlag), r0, r2
	ld.bu LOWW(#_validNmMsgFlag)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 790
	jarl _EcuM_ValidateWakeupEvent, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 791
	movhi HIGHW1(#_validNmMsgFlag), r0, r2
	st.b r0, LOWW(#_validNmMsgFlag)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_4:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 802
	jarl _EcuM_ValidateWakeupEvent, r31
.BB.LABEL.19_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 811
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_StopWakeupSources:
	.stack _EcuM_StopWakeupSources = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 824
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 833
	jarl _CanSM_StopWakeupSource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 834
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_CurrentTimestampMS:
	.stack _EcuM_CurrentTimestampMS = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 850
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 852
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 854
	jarl _GetCoreID, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 855
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 0
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 859
	jarl _GetCounterValue, r31
	movea 0x000003E8, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 862
	ld.w 0x00000000[r3], r5
	mul r2, r5, r0
	divhu r2, r5, r0
	st.w r5, 0x00000000[r3]
.BB.LABEL.21_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 871
	ld.w 0x00000000[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 872
	dispose 0x00000004, 0x00000001, [r31]
_EcuM_CalculateElapsedMS:
	.stack _EcuM_CalculateElapsedMS = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 884
	prepare 0x00000061, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 886
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 889
	jarl _GetCoreID, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 890
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 0
	movea 0x000003E8, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 896
	mul r21, r20, r0
	divhu r21, r20, r0
	st.w r20, 0x00000000[r3]
	movea 0x00000004, r3, r8
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 898
	jarl _GetElapsedValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 900
	ld.w 0x00000004[r3], r2
	mul r21, r2, r0
	divhu r21, r2, r0
	st.w r2, 0x00000004[r3]
.BB.LABEL.22_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 909
	ld.w 0x00000004[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 910
	dispose 0x00000008, 0x00000061, [r31]
_EcuM_CheckWakeup:
	.stack _EcuM_CheckWakeup = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/EcuM_Callout_Stubs.c", 929
	jmp [r31]
