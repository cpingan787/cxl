#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\EcuM\EcuM_Sleep.c -oDefaultBuild\EcuM_Sleep.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_250758676bab46c8918058b5ccbbf9e03jxr2iei.gwl
#@	compiled at Fri Mar 27 09:50:36 2026

	.file "..\..\Bsw\SystemServices\EcuM\EcuM_Sleep.c"

	$reg_mode 32
	.dbl_size 8

	.extern _EcuM_OSResource
	.extern _EcuM_SleepModeCfgs
	.extern _EcuM_WkSourceCfgs
	.extern _EcuM_NormalMcuModeCfg
	.extern _EcuMRunData
	.extern _EcuMWksPending
	.extern _EcuMWksValidated
	.extern _EcuMWksExpired
	.public _SLEEP_WAKE, 1
	.public _EcuM_GoDownHaltPoll
	.extern _EcuM_DoShutDownPhase
	.public _EcuM_GetPendingWakeupEvents
	.extern _SchM_Enter_EcuM_WkEv
	.extern _SchM_Exit_EcuM_WkEv
	.public _EcuM_ClearWakeupEvent
	.extern _BswM_EcuM_CurrentWakeup
	.public _EcuM_GetValidatedWakeupEvents
	.public _EcuM_GetExpiredWakeupEvents
	.public _EcuM_SetWakeupEvent
	.extern _EcuM_CalculateElapsedMS
	.extern _EcuM_StopWakeupSources
	.extern _EcuM_StartWakeupSources
	.extern _EcuM_CurrentTimestampMS
	.public _EcuM_ValidateWakeupEvent
	.public _EcuM_WkSrcMap2CfgWkIdx
	.extern _EcuM_EnableWakeupSources
	.extern _GetResource
	.extern _BswM_EcuM_CurrentState
	.extern _EcuM_ErrorHook
	.extern _DisableAllInterrupts
	.extern _EcuM_GenerateRamHash
	.extern _Mcu_CheckWakeSource
	.extern _EcuM_McuSetMode
	.extern _EnableAllInterrupts
	.extern _EcuM_SleepActivity
	.extern _EcuM_CheckWakeup
	.extern _EcuM_CheckRamHash
	.extern _EcuM_CancellAlarms
	.extern _EcuM_DisableWakeupSources
	.extern _ReleaseResource
	.extern _ComM_EcuM_WakeUpIndication

	.section .text, text
_EcuM_GoDownHaltPoll:
	.stack _EcuM_GoDownHaltPoll = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 133
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 147
	movhi HIGHW1(#_EcuMRunData+0x0000002C), r0, r2
	ld.bu LOWW(#_EcuMRunData+0x0000002C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	add 0xFFFFFFFF, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 153
	jarl _EcuM_DoShutDownPhase, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_3:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 157
	jarl _EcuM_DoSleepPhase.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 172
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_GetPendingWakeupEvents:
	.stack _EcuM_GetPendingWakeupEvents = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 184
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 198
	jarl _SchM_Enter_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 199
	movhi HIGHW1(#_EcuMWksPending), r0, r2
	ld.w LOWW(#_EcuMWksPending)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 200
	jarl _SchM_Exit_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 203
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_ClearWakeupEvent:
	.stack _EcuM_ClearWakeupEvent = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 215
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 227
	jarl _SchM_Enter_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 228
	not r20, r2
	movhi HIGHW1(#_EcuMWksPending), r0, r5
	ld.w LOWW(#_EcuMWksPending)[r5], r6
	and r2, r6
	st.w r6, LOWW(#_EcuMWksPending)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 229
	movhi HIGHW1(#_EcuMWksValidated), r0, r5
	ld.w LOWW(#_EcuMWksValidated)[r5], r6
	and r2, r6
	st.w r6, LOWW(#_EcuMWksValidated)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 230
	movhi HIGHW1(#_EcuMWksExpired), r0, r5
	ld.w LOWW(#_EcuMWksExpired)[r5], r6
	and r2, r6
	st.w r6, LOWW(#_EcuMWksExpired)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 231
	jarl _SchM_Exit_EcuM_WkEv, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 232
	mov r20, r6
	jarl _BswM_EcuM_CurrentWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 234
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_GetValidatedWakeupEvents:
	.stack _EcuM_GetValidatedWakeupEvents = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 248
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 263
	jarl _SchM_Enter_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 264
	movhi HIGHW1(#_EcuMRunData+0x00000018), r0, r2
	ld.w LOWW(#_EcuMRunData+0x00000018)[r2], r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 265
	jarl _SchM_Exit_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 268
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_GetExpiredWakeupEvents:
	.stack _EcuM_GetExpiredWakeupEvents = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 282
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 296
	jarl _SchM_Enter_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 297
	movhi HIGHW1(#_EcuMRunData+0x0000001C), r0, r2
	ld.w LOWW(#_EcuMRunData+0x0000001C)[r2], r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 298
	jarl _SchM_Exit_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 301
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_SetWakeupEvent:
	.stack _EcuM_SetWakeupEvent = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 323
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 352
	movhi HIGHW1(#_EcuMRunData+0x0000002E), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 353
	ld.hu LOWW(#_EcuMRunData+0x0000002E)[r2], r2
	mul 0x0000000C, r2, r0
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	tst r6, r2
	mov r6, r20
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 355
	jarl _SchM_Enter_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 356
	movhi HIGHW1(#_EcuMRunData+0x00000014), r0, r2
	ld.w LOWW(#_EcuMRunData+0x00000014)[r2], r2
	ld.w 0x00000000[r2], r5
	or r20, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 357
	jarl _SchM_Exit_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 360
	mov r20, r6
	jarl _EcuM_WkSrcMap2CfgWkIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 361
	cmp 0x00000003, r10
	mov r10, r21
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_2:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 363
	mulhi 0x0000001C, r21, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 368
	mov r21, r2
	shl 0x00000002, r2
	mov #_EcuMRunData, r5
	add r2, r5
	ld.w 0x00000020[r5], r6
	jarl _EcuM_CalculateElapsedMS, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 370
	mulhi 0x0000001C, r21, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp r2, r10
	bnh9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 377
	mov #_EcuMRunData, r21
	ld.w 0x00000014[r21], r2
	ld.w 0x00000000[r2], r5
	not r20, r6
	and r6, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 379
	ld.w 0x0000001C[r21], r21
	ld.w 0x00000000[r21], r2
	or r20, r2
	st.w r2, 0x00000000[r21]
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 381
	mov r20, r6
	jarl _BswM_EcuM_CurrentWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 383
	mov r20, r6
	jarl _EcuM_StopWakeupSources, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 385
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_5:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 389
	mulhi 0x0000001C, r21, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 393
	mov r20, r6
	jarl _EcuM_StartWakeupSources, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 399
	jarl _EcuM_CurrentTimestampMS, r31
	shl 0x00000002, r21
	mov #_EcuMRunData, r20
	add r21, r20
	st.w r10, 0x00000020[r20]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 404
	mov #_EcuMRunData, r2
	ld.w 0x00000014[r2], r5
	ld.w 0x00000000[r5], r6
	not r20, r7
	and r7, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 405
	ld.w 0x00000018[r2], r5
	ld.w 0x00000000[r5], r6
	or r20, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 406
	ld.bu 0x00000000[r2], r2
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 408
	mov r21, r6
	jarl _EcuM_ValidateWkEvAction.1, r31
.BB.LABEL.6_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 416
	dispose 0x00000000, 0x00000061, [r31]
_EcuM_ValidateWakeupEvent:
	.stack _EcuM_ValidateWakeupEvent = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 435
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 461
	jarl _EcuM_WkSrcMap2CfgWkIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 463
	movhi HIGHW1(#_EcuMRunData), r0, r2
	ld.bu LOWW(#_EcuMRunData)[r2], r2
	andi 0x00000030, r2, r2
	addi 0xFFFFFFD0, r2, r0
	mov r10, r21
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 462
	mulhi 0x0000001C, r21, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 473
	jarl _SchM_Enter_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 474
	mov #_EcuMRunData, r2
	ld.w 0x00000014[r2], r5
	ld.w 0x00000000[r5], r6
	not r20, r7
	and r7, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 475
	ld.w 0x00000018[r2], r2
	ld.w 0x00000000[r2], r5
	or r20, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 476
	jarl _SchM_Exit_EcuM_WkEv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 478
	cmp 0x00000003, r21
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 480
	mov r21, r6
	jarl _EcuM_ValidateWkEvAction.1, r31
.BB.LABEL.7_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 484
	dispose 0x00000000, 0x00000061, [r31]
_EcuM_WkSrcMap2CfgWkIdx:
	.stack _EcuM_WkSrcMap2CfgWkIdx = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 487
	mov 0x00000000, r2
	mov 0x00000003, r10
	br9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 494
	andi 0x000000FF, r2, r5
	mul 0x0000001C, r5, r0
	mov #_EcuM_WkSourceCfgs, r7
	add r5, r7
	ld.w 0x00000008[r7], r5
	tst r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 496
	cmov 0x00000002, r10, r2, r10
	add 0x00000001, r2
.BB.LABEL.8_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 492
	andi 0x000000FF, r2, r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.8_1
.BB.LABEL.8_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 500
	zxb r10
	jmp [r31]
_EcuM_GoSleep.1:
	.stack _EcuM_GoSleep.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 510
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 523
	movhi HIGHW1(#_EcuMRunData+0x0000002E), r0, r2
	ld.hu LOWW(#_EcuMRunData+0x0000002E)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 524
	cmp 0x00000001, r20
	bgt9 .BB.LABEL.9_6
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 526
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 533
	ld.bu 0x00000002[r5], r21
	mov 0x00000000, r22
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 535
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	andi 0x000000FF, r22, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 539
	mulhi 0x0000001C, r2, r2
	mov #_EcuM_WkSourceCfgs, r23
	add r2, r23
	ld.w 0x00000008[r23], r6
	jarl _EcuM_EnableWakeupSources, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 541
	ld.w 0x00000008[r23], r6
	mov 0x00000000, r7
	jarl _BswM_EcuM_CurrentWakeup, r31
	add 0x00000001, r22
.BB.LABEL.9_3:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 533
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.9_2
.BB.LABEL.9_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 546
	movhi HIGHW1(#_EcuM_OSResource), r0, r2
	ld.w LOWW(#_EcuM_OSResource)[r2], r6
	jarl _GetResource, r31
	mov r10, r20
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 563
	movhi HIGHW1(#_EcuMRunData), r0, r2
	st.b r6, LOWW(#_EcuMRunData)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 564
	jarl _BswM_EcuM_CurrentState, r31
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 566
	bz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 568
	jarl _EcuM_ErrorHook, r31
.BB.LABEL.9_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 570
	dispose 0x00000000, 0x00000079, [r31]
_EcuM_HaltSequence.1:
	.stack _EcuM_HaltSequence.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 577
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 623
	jarl _DisableAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 628
	jarl _EcuM_GenerateRamHash, r31
	br9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	andi 0x00000060, r10, r0
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 640
	movhi HIGHW1(#_EcuMRunData+0x00000032), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 642
	ld.hu LOWW(#_EcuMRunData+0x00000032)[r2], r2
	mul 0x0000000C, r2, r0
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	ld.bu 0x00000001[r5], r6
	jarl _EcuM_McuSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 644
	jarl _EnableAllInterrupts, r31
.BB.LABEL.10_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 633
	jarl _Mcu_CheckWakeSource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 634
	jarl _EcuM_GetPendingWakeupEvents, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 635
	jarl _EcuM_GetValidatedWakeupEvents, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 638
	andi 0x00000060, r20, r0
	bz9 .BB.LABEL.10_1
.BB.LABEL.10_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 649
	jarl _EnableAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 654
	jarl _EcuM_HaltSequenceExit.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_PollSequence.1:
	.stack _EcuM_PollSequence.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 658
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 669
	jarl _DisableAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 670
	movhi HIGHW1(#_EcuMRunData+0x0000002E), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 673
	ld.hu LOWW(#_EcuMRunData+0x0000002E)[r2], r2
	mul 0x0000000C, r2, r0
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	ld.bu 0x00000001[r5], r6
	jarl _EcuM_McuSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 674
	jarl _EnableAllInterrupts, r31
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 678
	jarl _EcuM_SleepActivity, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.11_5
.BB.LABEL.11_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 683
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 686
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r6
	jarl _EcuM_CheckWakeup, r31
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	add 0x00000001, r20
.BB.LABEL.11_5:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 681
	andi 0x000000FF, r20, r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.11_2
.BB.LABEL.11_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 689
	jarl _EcuM_GetPendingWakeupEvents, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 692
	movhi HIGHW1(#_EcuMRunData+0x00000018), r0, r2
	ld.w LOWW(#_EcuMRunData+0x00000018)[r2], r2
	ld.w 0x00000000[r2], r2
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	mov #_EcuMRunData, r2
	ld.w 0x0000000C[r2], r5
	ld.w 0x00000008[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 675
	andi 0x00000060, r10, r0
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_9:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 701
	jarl _EcuM_SleepNotifyBswM.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_HaltSequenceExit.1:
	.stack _EcuM_HaltSequenceExit.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 733
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 752
	mov #_EcuMRunData, r2
	ld.w 0x00000008[r2], r5
	ld.w 0x0000000C[r2], r2
	cmp r2, r5
	bnh9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 755
	jarl _DisableAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 756
	jarl _EcuM_GenerateRamHash, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 757
	movhi HIGHW1(#_EcuMRunData+0x0000002E), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 759
	ld.bu LOWW(#_EcuMRunData+0x0000002E)[r2], r2
	mulh 0x0000000C, r2
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	ld.bu 0x00000001[r5], r6
	jarl _EcuM_McuSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 760
	jarl _EnableAllInterrupts, r31
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 765
	jarl _EcuM_CheckRamHash, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 766
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 769
	jarl _EcuM_ErrorHook, r31
.BB.LABEL.12_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 773
	jarl _EcuM_SleepNotifyBswM.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_SleepNotifyBswM.1:
	.stack _EcuM_SleepNotifyBswM.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 791
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.13_12
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 798
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	movhi HIGHW1(#_EcuMRunData+0x00000014), r0, r5
	ld.w LOWW(#_EcuMRunData+0x00000014)[r5], r5
	ld.w 0x00000000[r5], r5
	tst r5, r2
	bz9 .BB.LABEL.13_11
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 801
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	movhi HIGHW1(#_EcuMRunData+0x00000018), r0, r5
	ld.w LOWW(#_EcuMRunData+0x00000018)[r5], r5
	ld.w 0x00000000[r5], r5
	tst r5, r2
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; bb28.bb38_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; bb37
	mov 0x00000001, r2
.BB.LABEL.13_6:	; bb38
	andi 0x000000FF, r20, r5
	mul 0x0000001C, r5, r0
	mov #_EcuM_WkSourceCfgs, r6
	add r5, r6
	ld.w 0x00000008[r6], r6
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb43
	mov 0x00000001, r7
	br9 .BB.LABEL.13_10
.BB.LABEL.13_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 810
	cmp 0x0000000F, r6
	bh9 .BB.LABEL.13_11
.BB.LABEL.13_9:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 812
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r6
	mov 0x00000002, r7
.BB.LABEL.13_10:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	jarl _BswM_EcuM_CurrentWakeup, r31
.BB.LABEL.13_11:	; if_break_bb64
	add 0x00000001, r20
.BB.LABEL.13_12:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 796
	andi 0x000000FF, r20, r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.13_1
.BB.LABEL.13_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 817
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_WakeupRestart.1:
	.stack _EcuM_WakeupRestart.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 820
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 832
	jarl _EcuM_CancellAlarms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 837
	movhi HIGHW1(#_EcuM_NormalMcuModeCfg), r0, r2
	ld.bu LOWW(#_EcuM_NormalMcuModeCfg)[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 839
	jarl _DisableAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 842
	movhi HIGHW1(#_EcuM_NormalMcuModeCfg), r0, r2
	ld.bu LOWW(#_EcuM_NormalMcuModeCfg)[r2], r6
	jarl _EcuM_McuSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 843
	jarl _EnableAllInterrupts, r31
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 846
	jarl _EcuM_GetPendingWakeupEvents, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 852
	jarl _EcuM_GetValidatedWakeupEvents, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 856
	mov r20, r6
	or r10, r6
	jarl _EcuM_DisableWakeupSources, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 870
	movhi HIGHW1(#_EcuM_OSResource), r0, r2
	ld.w LOWW(#_EcuM_OSResource)[r2], r6
	jarl _ReleaseResource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 881
	cmp 0x00000000, r10
	bz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 883
	jarl _EcuM_ErrorHook, r31
.BB.LABEL.14_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 885
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_ValidateWkEvAction.1:
	.stack _EcuM_ValidateWkEvAction.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 957
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 966
	mulhi 0x0000001C, r6, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 968
	ld.bu 0x00000000[r2], r6
	jarl _ComM_EcuM_WakeUpIndication, r31
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 981
	mulhi 0x0000001C, r20, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000008[r5], r6
	mov 0x00000002, r7
	jarl _BswM_EcuM_CurrentWakeup, r31
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_DoSleepPhase.1:
	.stack _EcuM_DoSleepPhase.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 985
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 992
	jarl _EcuM_GoSleep.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 995
	movhi HIGHW1(#_EcuMRunData+0x0000002E), r0, r2
	ld.hu LOWW(#_EcuMRunData+0x0000002E)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 996
	cmp 0x00000001, r2
	bgt9 .BB.LABEL.16_5
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 998
	mul 0x0000000C, r2, r0
	mov #_EcuM_SleepModeCfgs, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 999
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 1002
	jarl _EcuM_HaltSequence.1, r31
	br9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 1007
	jarl _EcuM_PollSequence.1, r31
.BB.LABEL.16_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 1010
	jarl _EcuM_WakeupRestart.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 1011
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_5:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Sleep.c", 1015
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
_SLEEP_WAKE:
	.ds (1)
