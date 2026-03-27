#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\EcuM\EcuM_AlarmClock.c -oDefaultBuild\EcuM_AlarmClock.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_45bff55595fa4888902eaa0fc3aa3757hqw02orm.4vm
#@	compiled at Fri Mar 27 09:50:33 2026

	.file "..\..\Bsw\SystemServices\EcuM\EcuM_AlarmClock.c"

	$reg_mode 32
	.dbl_size 8

	.extern _EcuM_UserCfgs
	.extern _EcuM_AlarmClkCfgs
	.extern _EcuMRunData
	.public _EcuM_SetRelWakeupAlarm
	.extern _SchM_Enter_EcuM_GlobalClock
	.extern _SchM_Exit_EcuM_GlobalClock
	.public _EcuM_SetAbsWakeupAlarm
	.public _EcuM_AbortWakeupAlarm
	.public _EcuM_GetCurrentTime
	.public _EcuM_GetWakeupTime
	.public _EcuM_SetClock
	.public _EcuM_UpdateEcuMClock
	.public _EcuM_CancellAlarms

	.section .text, text
_EcuM_SetRelWakeupAlarm:
	.stack _EcuM_SetRelWakeupAlarm = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 92
	prepare 0x00000061, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 108
	jarl _EcuM_FindAlarmIdByUser.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 109
	cmp 0x00000001, r10
	mov r10, r21
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 111
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 113
	mov #_EcuMRunData, r2
	ld.w 0x0000000C[r2], r5
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 114
	shl 0x00000002, r21
	add r2, r21
	st.w r5, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 117
	ld.w 0x00000008[r2], r2
	cmp r2, r5
	bl9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000003, r20
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 119
	movhi HIGHW1(#_EcuMRunData+0x00000008), r0, r20
	st.w r5, LOWW(#_EcuMRunData+0x00000008)[r20]
	mov 0x00000000, r20
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 126
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	andi 0x000000FF, r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.1_5:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 136
	dispose 0x00000000, 0x00000061, [r31]
_EcuM_SetAbsWakeupAlarm:
	.stack _EcuM_SetAbsWakeupAlarm = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 154
	prepare 0x00000061, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 169
	jarl _EcuM_FindAlarmIdByUser.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 170
	cmp 0x00000001, r10
	mov r10, r21
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 172
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 174
	movhi HIGHW1(#_EcuMRunData+0x0000000C), r0, r2
	ld.w LOWW(#_EcuMRunData+0x0000000C)[r2], r2
	cmp r2, r20
	bh9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000004, r20
	br9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 176
	shl 0x00000002, r21
	mov #_EcuMRunData, r2
	add r2, r21
	st.w r20, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 179
	ld.w 0x00000008[r2], r2
	cmp r2, r20
	bl9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb18.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000003, r20
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 181
	movhi HIGHW1(#_EcuMRunData+0x00000008), r0, r2
	st.w r20, LOWW(#_EcuMRunData+0x00000008)[r2]
	mov 0x00000000, r20
.BB.LABEL.2_6:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 194
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	andi 0x000000FF, r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.2_7:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 204
	dispose 0x00000000, 0x00000061, [r31]
_EcuM_AbortWakeupAlarm:
	.stack _EcuM_AbortWakeupAlarm = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 219
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 233
	jarl _EcuM_FindAlarmIdByUser.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 234
	cmp 0x00000001, r10
	mov r10, r20
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 236
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 237
	shl 0x00000002, r20
	mov #_EcuMRunData, r21
	add r20, r21
	ld.w 0x00000004[r21], r2
	add 0x00000004, r21
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 239
	movhi HIGHW1(#_EcuMRunData+0x00000008), r0, r2
	ld.w LOWW(#_EcuMRunData+0x00000008)[r2], r2
	ld.w 0x00000000[r21], r5
	cmp r5, r2
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 241
	jarl _EcuM_FindNextEarliestAlarm.1, r31
	movhi HIGHW1(#_EcuMRunData+0x00000008), r0, r2
	st.w r10, LOWW(#_EcuMRunData+0x00000008)[r2]
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 243
	st.w r0, 0x00000000[r21]
	mov 0x00000000, r21
.BB.LABEL.3_6:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 246
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.3_7:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 256
	dispose 0x00000000, 0x00000061, [r31]
_EcuM_GetCurrentTime:
	.stack _EcuM_GetCurrentTime = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 270
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 285
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 286
	movhi HIGHW1(#_EcuMRunData+0x0000000C), r0, r2
	ld.w LOWW(#_EcuMRunData+0x0000000C)[r2], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 287
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 291
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_GetWakeupTime:
	.stack _EcuM_GetWakeupTime = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 307
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 322
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 323
	movhi HIGHW1(#_EcuMRunData+0x00000008), r0, r2
	ld.w LOWW(#_EcuMRunData+0x00000008)[r2], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 324
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 328
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_SetClock:
	.stack _EcuM_SetClock = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 344
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 355
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 356
	mulh 0x00000003, r20
	mov #_EcuM_UserCfgs, r2
	add r20, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 358
	movhi HIGHW1(#_EcuMRunData+0x0000000C), r0, r2
	st.w r21, LOWW(#_EcuMRunData+0x0000000C)[r2]
	mov 0x00000000, r21
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 361
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 364
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
_EcuM_UpdateEcuMClock:
	.stack _EcuM_UpdateEcuMClock = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 368
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 372
	movhi HIGHW1(#_EcuM_TimeRecord.1), r0, r2
	ld.h LOWW(#_EcuM_TimeRecord.1)[r2], r5
	add 0x0000000A, r5
	st.h r5, LOWW(#_EcuM_TimeRecord.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 374
	zxh r5
	movea 0x000003E8, r0, r2
	cmp r2, r5
	bl9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 376
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 377
	movhi HIGHW1(#_EcuM_TimeRecord.1), r0, r2
	st.h r0, LOWW(#_EcuM_TimeRecord.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 378
	mov #_EcuMRunData, r2
	ld.w 0x0000000C[r2], r5
	add 0x00000001, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 379
	ld.w 0x00000008[r2], r2
	cmp r2, r5
	bl9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 381
	mov #_EcuMRunData, r20
	ld.w 0x00000018[r20], r2
	ld.w 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 382
	jarl _EcuM_FindNextEarliestAlarm.1, r31
	st.w r10, 0x00000008[r20]
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 384
	jarl _SchM_Exit_EcuM_GlobalClock, r31
.BB.LABEL.7_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 386
	dispose 0x00000000, 0x00000041, [r31]
_EcuM_CancellAlarms:
	.stack _EcuM_CancellAlarms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 389
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 396
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_EcuMRunData, r6
	add r5, r6
	st.w r0, 0x00000004[r6]
	add 0x00000001, r2
.BB.LABEL.8_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 394
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.8_1
.BB.LABEL.8_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 398
	jarl _SchM_Enter_EcuM_GlobalClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 399
	movhi HIGHW1(#_EcuMRunData+0x00000008), r0, r2
	mov 0xFFFFFFFF, r5
	st.w r5, LOWW(#_EcuMRunData+0x00000008)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 400
	jarl _SchM_Exit_EcuM_GlobalClock, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_FindAlarmIdByUser.1:
	.stack _EcuM_FindAlarmIdByUser.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 409
	mov 0x00000000, r10
	br9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 416
	andi 0x000000FF, r10, r2
	shl 0x00000003, r2
	mov #_EcuM_AlarmClkCfgs, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	cmp r2, r6
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	add 0x00000001, r10
.BB.LABEL.9_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 414
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.9_1
.BB.LABEL.9_4:	; bb17.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000001, r10
.BB.LABEL.9_5:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 423
	zxb r10
	jmp [r31]
_EcuM_FindNextEarliestAlarm.1:
	.stack _EcuM_FindNextEarliestAlarm.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 426
	mov 0x00000000, r10
	mov 0x00000001, r2
	mov r10, r5
	br9 .BB.LABEL.10_7
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 436
	ld.w 0x00000000[r6], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 440
	andi 0x000000FF, r2, r7
	cmp 0x00000001, r7
	ld.w 0x00000000[r6], r7
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_break_bb.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	mov 0x00000000, r2
	mov r7, r10
	br9 .BB.LABEL.10_6
.BB.LABEL.10_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 447
	cmp r7, r10
	bnh9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 450
	ld.w 0x00000000[r6], r10
.BB.LABEL.10_6:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	add 0x00000001, r5
.BB.LABEL.10_7:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 433
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 0
	andi 0x000000FF, r5, r7
	shl 0x00000002, r7
	mov #_EcuMRunData, r6
	ld.w 0x00000008[r6], r8
	add r7, r6
	ld.w 0x00000004[r6], r7
	add 0x00000004, r6
	cmp r8, r7
	bnz9 .BB.LABEL.10_1
.BB.LABEL.10_9:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_AlarmClock.c", 455
	jmp [r31]
	.section .bss, bss
	.align 2
_EcuM_TimeRecord.1:
	.ds (2)
