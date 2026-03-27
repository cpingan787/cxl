#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\remote_control\remoteControlTask.c -oDefaultBuild\remoteControlTask.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_17b001d3d09f4a6396ab3d378afb66eebfvybejv.vul
#@	compiled at Fri Mar 27 09:50:35 2026

	.file "..\..\Srcode\app\remote_control\remoteControlTask.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_SendSignal
	.extern _Com_ReceiveSignal
	.public _RemoteControlSetCmdParam
	.extern _RemoteControlSendResult
	.public _RemoteControlUartCommandProcess
	.extern _MpuHalReceive
	.extern _LogHalPrint
	.extern _RemoteControlSendAck
	.extern _memset
	.public _RemoteControlStateProcess
	.public _RemoteControlTaskInit
	.extern _MpuHalOpen
	.extern _MpuHalSetRxFilter
	.extern _MpuHalSetRxBuffer
	.extern _RemoteControlSdkInit
	.public _RemoteControlTask

	.section .text, text
_RemoteControlGenealPrecondition.1:
	.stack _RemoteControlGenealPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 34
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 101
	jmp [r31]
_RemoteControlLockUnlockPrecondition.1:
	.stack _RemoteControlLockUnlockPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 111
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 113
	cmp 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 118
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 119
	jmp [r31]
_RemoteControlLockUnlockExecute.1:
	.stack _RemoteControlLockUnlockExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 129
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x0000007B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 131
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 134
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlLockUnlockGetResult.1:
	.stack _RemoteControlLockUnlockGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 144
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 146
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000019E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 148
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 149
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 150
	ld.bu 0x00000003[r3], r2
	cmp 0x0000000F, r2
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_5
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 154
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.4_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 162
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlFindVehiclePrecondition.1:
	.stack _RemoteControlFindVehiclePrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 172
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 177
	jmp [r31]
_RemoteControlFindVehicleExecute.1:
	.stack _RemoteControlFindVehicleExecute.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 187
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 189
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 191
	ld.bu 0x00000000[r6], r2
	mov r6, r20
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_2:	; entry
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_3:	; entry
	add 0xFFFFFFF2, r2
	cmp 0x00000003, r2
	bnc9 .BB.LABEL.6_10
.BB.LABEL.6_4:	; switch_clause_bb21
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 211
	st.b r2, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000007B, r0, r6
.BB.LABEL.6_5:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 220
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.6_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000003, r2
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; switch_clause_bb11
	mov 0x00000004, r2
.BB.LABEL.6_8:	; switch_clause_bb11
	st.b r2, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000007B, r0, r6
	jarl _Com_SendSignal, r31
	addi 0x00000001, r20, r7
	movea 0x00000058, r0, r6
	br9 .BB.LABEL.6_5
.BB.LABEL.6_9:	; switch_clause_bb16
	mov 0x00000001, r2
	br9 .BB.LABEL.6_8
.BB.LABEL.6_10:	; bb25
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 220
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlFindVehicleGetResult.1:
	.stack _RemoteControlFindVehicleGetResult.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 230
	prepare 0x00000061, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 232
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000016A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 234
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 235
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	movea 0x00000003, r3, r21
	movea 0x00000168, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 237
	mov r21, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 238
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 239
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 241
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	movea 0x00000003, r3, r21
	movea 0x00000168, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 243
	mov r21, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 244
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 245
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.7_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 251
	dispose 0x00000004, 0x00000061, [r31]
_RemoteControlWindowPrecondition.1:
	.stack _RemoteControlWindowPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 253
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 255
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 260
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 261
	jmp [r31]
_RemoteControlWindowExecute.1:
	.stack _RemoteControlWindowExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 263
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 265
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 266
	ld.bu 0x00000000[r20], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 268
	addi 0x00000001, r20, r7
	movea 0x0000006A, r0, r6
	jarl _Com_SendSignal, r31
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 271
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlWindowGetResult.1:
	.stack _RemoteControlWindowGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 273
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 275
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A9, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 277
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 278
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 280
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 282
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.10_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 286
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlTailgatePrecondition.1:
	.stack _RemoteControlTailgatePrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 288
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 290
	cmp 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 295
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 296
	jmp [r31]
_RemoteControlTailgateExecute.1:
	.stack _RemoteControlTailgateExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 298
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000062, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 300
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 301
	ld.bu 0x00000000[r20], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 303
	addi 0x00000001, r20, r7
	movea 0x0000006B, r0, r6
	jarl _Com_SendSignal, r31
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 306
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlTailgateGetResult.1:
	.stack _RemoteControlTailgateGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 308
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 310
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x00000195, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 312
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 313
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 315
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.13_5
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 317
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.13_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 321
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlRemoteStartPrecondition.1:
	.stack _RemoteControlRemoteStartPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 323
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 325
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 330
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 331
	jmp [r31]
_RemoteControlRemoteStartExecute.1:
	.stack _RemoteControlRemoteStartExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 333
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x0000006E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 335
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 336
	addi 0x00000001, r20, r7
	movea 0x0000006C, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 338
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlRemoteStartGetResult.1:
	.stack _RemoteControlRemoteStartGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 340
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 342
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001AA, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 344
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 345
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 347
	ld.bu 0x00000003[r3], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 349
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.16_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 353
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlRemoteStartStopPrecondition.1:
	.stack _RemoteControlRemoteStartStopPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 355
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 357
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 362
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 363
	jmp [r31]
_RemoteControlRemoteStartStopExecute.1:
	.stack _RemoteControlRemoteStartStopExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 365
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x00000079, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 367
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 369
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlRemoteStartStopGetResult.1:
	.stack _RemoteControlRemoteStartStopGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 371
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 373
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x00000192, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 375
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 376
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 378
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 381
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 382
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlSeatHeatPrecondition.1:
	.stack _RemoteControlSeatHeatPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 384
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 386
	cmp 0x00000004, r2
	setf 0x0000000F, r5
	cmp 0x00000009, r2
	setf 0x0000000F, r2
	or r2, r5
	cmp 0x00000000, r5
	cmov 0x0000000A, 0xFFFFFFFF, r0, r10
	jmp [r31]
_RemoteControlSeatHeatExecute.1:
	.stack _RemoteControlSeatHeatExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 394
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 396
	ld.bu 0x00000001[r6], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000008, r2
	mov r6, r7
	bh9 .BB.LABEL.21_10
.BB.LABEL.21_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.21_11[r2]
.SWITCH.LABEL.21_11:
	br9 .BB.LABEL.21_2
	br9 .BB.LABEL.21_3
	br9 .BB.LABEL.21_4
	br9 .BB.LABEL.21_10
	br9 .BB.LABEL.21_5
	br9 .BB.LABEL.21_6
	br9 .BB.LABEL.21_10
	br9 .BB.LABEL.21_7
	br9 .BB.LABEL.21_9
.SWITCH.LABEL.21_11.END:
.BB.LABEL.21_2:	; switch_clause_bb
	movea 0x00000075, r0, r6
	br9 .BB.LABEL.21_8
.BB.LABEL.21_3:	; switch_clause_bb8
	movea 0x00000073, r0, r6
	br9 .BB.LABEL.21_8
.BB.LABEL.21_4:	; switch_clause_bb12
	movea 0x0000007E, r0, r6
	br9 .BB.LABEL.21_8
.BB.LABEL.21_5:	; switch_clause_bb17
	movea 0x00000080, r0, r6
	br9 .BB.LABEL.21_8
.BB.LABEL.21_6:	; switch_clause_bb21
	movea 0x00000069, r0, r6
	br9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; switch_clause_bb26
	movea 0x00000067, r0, r6
.BB.LABEL.21_8:	; switch_clause_bb26
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 428
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.21_9:	; switch_clause_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	movea 0x00000061, r0, r6
	br9 .BB.LABEL.21_8
.BB.LABEL.21_10:	; switch_break_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 428
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlSeatHeatGetResult.1:
	.stack _RemoteControlSeatHeatGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 430
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 432
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 434
	ld.bu 0x00000001[r6], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000008, r2
	mov r7, r20
	bh9 .BB.LABEL.22_10
.BB.LABEL.22_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.22_16[r2]
.SWITCH.LABEL.22_16:
	br9 .BB.LABEL.22_2
	br9 .BB.LABEL.22_3
	br9 .BB.LABEL.22_4
	br9 .BB.LABEL.22_10
	br9 .BB.LABEL.22_5
	br9 .BB.LABEL.22_6
	br9 .BB.LABEL.22_10
	br9 .BB.LABEL.22_7
	br9 .BB.LABEL.22_8
.SWITCH.LABEL.22_16.END:
.BB.LABEL.22_2:	; switch_clause_bb
	movea 0x00000193, r0, r6
	br9 .BB.LABEL.22_9
.BB.LABEL.22_3:	; switch_clause_bb9
	movea 0x00000196, r0, r6
	br9 .BB.LABEL.22_9
.BB.LABEL.22_4:	; switch_clause_bb11
	movea 0x00000198, r0, r6
	br9 .BB.LABEL.22_9
.BB.LABEL.22_5:	; switch_clause_bb14
	movea 0x0000019A, r0, r6
	br9 .BB.LABEL.22_9
.BB.LABEL.22_6:	; switch_clause_bb16
	movea 0x0000019F, r0, r6
	br9 .BB.LABEL.22_9
.BB.LABEL.22_7:	; switch_clause_bb19
	movea 0x0000019C, r0, r6
	br9 .BB.LABEL.22_9
.BB.LABEL.22_8:	; switch_clause_bb21
	movea 0x000001A3, r0, r6
.BB.LABEL.22_9:	; switch_clause_bb21
	movea 0x00000003, r3, r7
	jarl _Com_ReceiveSignal, r31
.BB.LABEL.22_10:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 465
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 466
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_12
.BB.LABEL.22_11:	; switch_break_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.22_15
.BB.LABEL.22_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 468
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_14
.BB.LABEL.22_13:	; if_else_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.22_15
.BB.LABEL.22_14:	; if_else_bb38
	mov 0x00000002, r10
.BB.LABEL.22_15:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 472
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlSeatVentPrecondition.1:
	.stack _RemoteControlSeatVentPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 474
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 476
	cmp 0x00000004, r2
	setf 0x0000000F, r5
	cmp 0x00000009, r2
	setf 0x0000000F, r2
	or r2, r5
	cmp 0x00000000, r5
	cmov 0x0000000A, 0xFFFFFFFF, r0, r10
	jmp [r31]
_RemoteControlSeatVentExecute.1:
	.stack _RemoteControlSeatVentExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 484
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 486
	ld.bu 0x00000001[r6], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000007, r2
	mov r6, r7
	bh9 .BB.LABEL.24_9
.BB.LABEL.24_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.24_10[r2]
.SWITCH.LABEL.24_10:
	br9 .BB.LABEL.24_2
	br9 .BB.LABEL.24_3
	br9 .BB.LABEL.24_4
	br9 .BB.LABEL.24_9
	br9 .BB.LABEL.24_5
	br9 .BB.LABEL.24_6
	br9 .BB.LABEL.24_9
	br9 .BB.LABEL.24_8
.SWITCH.LABEL.24_10.END:
.BB.LABEL.24_2:	; switch_clause_bb
	movea 0x00000072, r0, r6
	br9 .BB.LABEL.24_7
.BB.LABEL.24_3:	; switch_clause_bb8
	movea 0x0000007C, r0, r6
	br9 .BB.LABEL.24_7
.BB.LABEL.24_4:	; switch_clause_bb12
	movea 0x0000007F, r0, r6
	br9 .BB.LABEL.24_7
.BB.LABEL.24_5:	; switch_clause_bb17
	movea 0x00000081, r0, r6
	br9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; switch_clause_bb21
	movea 0x00000066, r0, r6
.BB.LABEL.24_7:	; switch_clause_bb21
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 517
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_8:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	movea 0x00000068, r0, r6
	br9 .BB.LABEL.24_7
.BB.LABEL.24_9:	; switch_break_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 517
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlSeatVentGetResult.1:
	.stack _RemoteControlSeatVentGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 519
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 521
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 523
	ld.bu 0x00000001[r6], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000007, r2
	mov r7, r20
	bh9 .BB.LABEL.25_9
.BB.LABEL.25_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.25_15[r2]
.SWITCH.LABEL.25_15:
	br9 .BB.LABEL.25_2
	br9 .BB.LABEL.25_3
	br9 .BB.LABEL.25_4
	br9 .BB.LABEL.25_9
	br9 .BB.LABEL.25_5
	br9 .BB.LABEL.25_6
	br9 .BB.LABEL.25_9
	br9 .BB.LABEL.25_7
.SWITCH.LABEL.25_15.END:
.BB.LABEL.25_2:	; switch_clause_bb
	movea 0x00000197, r0, r6
	br9 .BB.LABEL.25_8
.BB.LABEL.25_3:	; switch_clause_bb9
	movea 0x00000199, r0, r6
	br9 .BB.LABEL.25_8
.BB.LABEL.25_4:	; switch_clause_bb11
	movea 0x0000019B, r0, r6
	br9 .BB.LABEL.25_8
.BB.LABEL.25_5:	; switch_clause_bb14
	movea 0x0000019D, r0, r6
	br9 .BB.LABEL.25_8
.BB.LABEL.25_6:	; switch_clause_bb16
	movea 0x000001A2, r0, r6
	br9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; switch_clause_bb19
	movea 0x000001A0, r0, r6
.BB.LABEL.25_8:	; switch_clause_bb19
	movea 0x00000003, r3, r7
	jarl _Com_ReceiveSignal, r31
.BB.LABEL.25_9:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 553
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 554
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_11
.BB.LABEL.25_10:	; switch_break_bb.bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.25_14
.BB.LABEL.25_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 556
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_13
.BB.LABEL.25_12:	; if_else_bb.bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.25_14
.BB.LABEL.25_13:	; if_else_bb37
	mov 0x00000002, r10
.BB.LABEL.25_14:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 560
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlAirConditionerPrecondition.1:
	.stack _RemoteControlAirConditionerPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 562
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 564
	cmp 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 568
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 569
	jmp [r31]
_RemoteControlAirConditionerExecute.1:
	.stack _RemoteControlAirConditionerExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 571
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000076, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 573
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 574
	addi 0x00000001, r20, r7
	movea 0x00000078, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 575
	addi 0x00000002, r20, r7
	movea 0x0000007A, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 576
	addi 0x00000003, r20, r7
	movea 0x00000083, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 577
	addi 0x00000004, r20, r7
	movea 0x00000064, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 578
	addi 0x00000005, r20, r7
	movea 0x00000082, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 581
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlAirConditionerGetResult.1:
	.stack _RemoteControlAirConditionerGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 583
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 585
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A1, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 587
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 588
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 590
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.28_5
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 592
	cmp 0x00000000, r2
	bz9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.28_5
.BB.LABEL.28_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.28_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 596
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlBatteryHeatingPrecondition.1:
	.stack _RemoteControlBatteryHeatingPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 598
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 601
	jmp [r31]
_RemoteControlBatteryHeatingExecute.1:
	.stack _RemoteControlBatteryHeatingExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 603
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x00000063, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 605
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 607
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlBatteryHeatingGetResult.1:
	.stack _RemoteControlBatteryHeatingGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 609
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 611
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A4, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 613
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 614
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 616
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.31_5
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 618
	cmp 0x00000000, r2
	bz9 .BB.LABEL.31_4
.BB.LABEL.31_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.31_5
.BB.LABEL.31_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.31_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 622
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlRemoteChargePrecondition.1:
	.stack _RemoteControlRemoteChargePrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 625
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 627
	cmp 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 632
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 633
	jmp [r31]
_RemoteControlRemoteChargeExecute.1:
	.stack _RemoteControlRemoteChargeExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 635
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x00000085, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 637
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 639
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlRemoteChargeGetResult.1:
	.stack _RemoteControlRemoteChargeGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 641
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 643
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000017E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 645
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 647
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 649
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.34_5
.BB.LABEL.34_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 651
	cmp 0x00000000, r2
	bz9 .BB.LABEL.34_4
.BB.LABEL.34_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.34_5
.BB.LABEL.34_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.34_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 655
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlChargeCurrentSetPrecondition.1:
	.stack _RemoteControlChargeCurrentSetPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 658
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 662
	jmp [r31]
_RemoteControlChargeCurrentSetExecute.1:
	.stack _RemoteControlChargeCurrentSetExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 664
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x0000005A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 666
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 668
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlChargeCurrentSetGetResult.1:
	.stack _RemoteControlChargeCurrentSetGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 670
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 672
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A6, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 674
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 676
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 678
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.37_2
.BB.LABEL.37_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.37_5
.BB.LABEL.37_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 680
	cmp 0x00000000, r2
	bz9 .BB.LABEL.37_4
.BB.LABEL.37_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.37_5
.BB.LABEL.37_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.37_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 684
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlChargeSocLimitPrecondition.1:
	.stack _RemoteControlChargeSocLimitPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 687
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 689
	addi 0xFFFFFF9C, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 694
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 695
	jmp [r31]
_RemoteControlChargeSocLimitExecute.1:
	.stack _RemoteControlChargeSocLimitExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 697
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x0000006D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 699
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 701
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlChargeSocLimitGetResult.1:
	.stack _RemoteControlChargeSocLimitGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 703
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 705
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A5, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 707
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 709
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 711
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.40_5
.BB.LABEL.40_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 713
	cmp 0x00000000, r2
	bz9 .BB.LABEL.40_4
.BB.LABEL.40_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.40_5
.BB.LABEL.40_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.40_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 717
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlScheduleChargePrecondition.1:
	.stack _RemoteControlScheduleChargePrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 720
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 722
	cmp 0x00000003, r2
	bgt9 .BB.LABEL.41_6
.BB.LABEL.41_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	ld.bu 0x00000001[r6], r2
	addi 0xFFFFFFE9, r2, r0
	bgt9 .BB.LABEL.41_6
.BB.LABEL.41_2:	; bb19
	ld.bu 0x00000002[r6], r2
	addi 0xFFFFFFC5, r2, r0
	bgt9 .BB.LABEL.41_6
.BB.LABEL.41_3:	; bb33
	ld.bu 0x00000003[r6], r2
	addi 0xFFFFFFE9, r2, r0
	bgt9 .BB.LABEL.41_6
.BB.LABEL.41_4:	; bb47
	ld.bu 0x00000004[r6], r2
	addi 0xFFFFFFC5, r2, r0
	bgt9 .BB.LABEL.41_6
.BB.LABEL.41_5:	; if_break_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 727
	jmp [r31]
.BB.LABEL.41_6:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 728
	jmp [r31]
_RemoteControlScheduleChargeExecute.1:
	.stack _RemoteControlScheduleChargeExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 730
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000070, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 732
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 734
	addi 0x00000001, r20, r7
	movea 0x00000077, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 735
	addi 0x00000002, r20, r7
	movea 0x0000006F, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 737
	addi 0x00000003, r20, r7
	movea 0x00000074, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 738
	addi 0x00000004, r20, r7
	movea 0x00000071, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 741
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlScheduleChargeGetResult.1:
	.stack _RemoteControlScheduleChargeGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 743
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 745
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 747
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 749
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 751
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.43_5
.BB.LABEL.43_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 753
	cmp 0x00000000, r2
	bz9 .BB.LABEL.43_4
.BB.LABEL.43_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.43_5
.BB.LABEL.43_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.43_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 757
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlRemoteDischargePrecondition.1:
	.stack _RemoteControlRemoteDischargePrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 760
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 762
	cmp 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 767
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 768
	jmp [r31]
_RemoteControlRemoteDischargeExecute.1:
	.stack _RemoteControlRemoteDischargeExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 770
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x00000084, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 772
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 774
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlRemoteDischargeGetResult.1:
	.stack _RemoteControlRemoteDischargeGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 776
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 778
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000017D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 780
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 782
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 784
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.46_5
.BB.LABEL.46_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 786
	cmp 0x00000000, r2
	bz9 .BB.LABEL.46_4
.BB.LABEL.46_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.46_5
.BB.LABEL.46_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.46_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 790
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlFridgeSwitchPrecondition.1:
	.stack _RemoteControlFridgeSwitchPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 793
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 795
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 800
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 801
	jmp [r31]
_RemoteControlFridgeSwitchExecute.1:
	.stack _RemoteControlFridgeSwitchExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 803
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x0000005B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 805
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 806
	addi 0x00000001, r20, r7
	movea 0x00000060, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 807
	addi 0x00000002, r20, r7
	movea 0x0000005F, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 809
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlFridgeSwitchGetResult.1:
	.stack _RemoteControlFridgeSwitchGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 811
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 813
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001A7, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 815
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 816
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 818
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.49_2
.BB.LABEL.49_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.49_5
.BB.LABEL.49_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 820
	cmp 0x00000000, r2
	bz9 .BB.LABEL.49_4
.BB.LABEL.49_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.49_5
.BB.LABEL.49_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.49_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 824
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlFridgeKeepTempPrecondition.1:
	.stack _RemoteControlFridgeKeepTempPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 827
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 829
	cmp 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 834
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 835
	jmp [r31]
_RemoteControlFridgeKeepTempExecute.1:
	.stack _RemoteControlFridgeKeepTempExecute.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 837
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 839
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 840
	addi 0x00000001, r20, r7
	movea 0x0000005E, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 841
	addi 0x00000002, r20, r7
	movea 0x0000005D, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 843
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlFridgeKeepTempGetResult.1:
	.stack _RemoteControlFridgeKeepTempGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 845
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 847
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x00000194, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 849
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 850
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 852
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.52_2
.BB.LABEL.52_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.52_5
.BB.LABEL.52_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 854
	cmp 0x00000000, r2
	bz9 .BB.LABEL.52_4
.BB.LABEL.52_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.52_5
.BB.LABEL.52_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.52_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 858
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlRearDefrostPrecondition.1:
	.stack _RemoteControlRearDefrostPrecondition.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 861
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 863
	cmp 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 867
	cmov 0x0000000F, 0xFFFFFFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 868
	jmp [r31]
_RemoteControlRearDefrostExecute.1:
	.stack _RemoteControlRearDefrostExecute.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 870
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x0000007D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 872
	jarl _Com_SendSignal, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 874
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlRearDefrostGetResult.1:
	.stack _RemoteControlRearDefrostGetResult.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 876
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 878
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x0000017C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 880
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 881
	ld.bu 0x00000003[r3], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 883
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.55_2
.BB.LABEL.55_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.55_5
.BB.LABEL.55_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 885
	cmp 0x00000000, r2
	bz9 .BB.LABEL.55_4
.BB.LABEL.55_3:	; if_else_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.55_5
.BB.LABEL.55_4:	; if_else_bb19
	mov 0x00000002, r10
.BB.LABEL.55_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 889
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlSetCmdParam:
	.stack _RemoteControlSetCmdParam = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1028
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1033
	movhi HIGHW1(#_g_remoteControlState.6+0x0000000C), r0, r2
	ld.bu LOWW(#_g_remoteControlState.6+0x0000000C)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.56_2
.BB.LABEL.56_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1035
	ld.bu 0x00000000[r6], r2
	addi 0x00000001, r6, r7
	movea 0x00002712, r0, r8
	mov r2, r6
	br9 .BB.LABEL.56_5
.BB.LABEL.56_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1038
	movhi HIGHW1(#_g_remoteControlState.6), r0, r2
	ld.w LOWW(#_g_remoteControlState.6)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.56_6
.BB.LABEL.56_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1040
	mov #_g_remoteControlState.6, r2
	ld.bu 0x0000000D[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1041
	mulhi 0x00000018, r5, r5
	add r5, r2
	ld.w 0x00000014[r2], r2
	ld.bu 0x00000000[r6], r5
	cmp r2, r5
	bnz9 .BB.LABEL.56_6
.BB.LABEL.56_4:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1043
	addi 0x00000001, r6, r7
	movea 0x00002713, r0, r8
	mov r5, r6
.BB.LABEL.56_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r9
	jarl _RemoteControlSendResult, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1068
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.56_6:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1048
	mov #_g_remoteControlState.6, r2
	ld.bu 0x0000000E[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1049
	mulhi 0x00000018, r5, r5
	add r2, r5
	mov 0x00000001, r8
	st.b r8, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1050
	st.b r7, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1052
	ld.bu 0x00000000[r6], r7
	st.w r7, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1053
	ld.bu 0x00000001[r6], r7
	shl 0x00000008, r7
	ld.bu 0x00000002[r6], r8
	or r8, r7
	st.w r7, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1054
	ld.b 0x00000003[r6], r7
	st.b r7, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1055
	ld.b 0x00000004[r6], r7
	st.b r7, 0x00000021[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1056
	ld.b 0x00000005[r6], r7
	st.b r7, 0x00000022[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1057
	ld.b 0x00000006[r6], r7
	st.b r7, 0x00000023[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1058
	ld.b 0x00000007[r6], r7
	st.b r7, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1059
	ld.b 0x00000008[r6], r6
	st.b r6, 0x00000025[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1060
	ld.b 0x0000000E[r2], r5
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1061
	andi 0x000000FF, r5, r6
	addi 0xFFFFFFE8, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1063
	cmov 0x0000000F, 0x00000000, r5, r5
	st.b r5, 0x0000000E[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1065
	ld.b 0x0000000C[r2], r5
	add 0x00000001, r5
	st.b r5, 0x0000000C[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1067
	dispose 0x00000004, 0x00000001, [r31]
_RemoteControlUartCommandProcess:
	.stack _RemoteControlUartCommandProcess = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1070
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1074
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov 0x00000000, r8
	mov #_g_dataPack.5, r7
	jarl _MpuHalReceive, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1077
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x00000184, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1080
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1081
	movhi HIGHW1(#_lastSignalValue.8.RemoteControlUartCommandProcess), r0, r2
	ld.bu LOWW(#_lastSignalValue.8.RemoteControlUartCommandProcess)[r2], r2
	ld.bu 0x00000003[r3], r7
	cmp r2, r7
	bz9 .BB.LABEL.57_3
.BB.LABEL.57_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1083
	movhi HIGHW1(#_lastSignalValue.8.RemoteControlUartCommandProcess), r0, r2
	st.b r7, LOWW(#_lastSignalValue.8.RemoteControlUartCommandProcess)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1084
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1085
	mov #_g_dataPack.5, r2
	movea 0x00000031, r0, r5
	st.b r5, 0x00000000[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1086
	st.b r5, 0x00000001[r2]
	movea 0xFFFFFF81, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1087
	st.b r5, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1088
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.57_3
.BB.LABEL.57_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1091
	mov #_g_dataPack.5, r20
	ld.w 0x00000008[r20], r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1092
	ld.w 0x00000008[r20], r2
	movea 0x00000013, r0, r6
	st.b r6, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1093
	ld.w 0x00000008[r20], r2
	movea 0xFFFFFF88, r0, r6
	st.b r6, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1094
	ld.w 0x00000008[r20], r2
	st.b r5, 0x00000003[r2]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1095
	st.h r2, 0x00000006[r20]
	mov 0x00000000, r20
.BB.LABEL.57_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1103
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.57_11
.BB.LABEL.57_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1105
	mov #.STR.1928, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1106
	movhi HIGHW1(#_g_dataPack.5), r0, r2
	ld.bu LOWW(#_g_dataPack.5)[r2], r2
	addi 0xFFFFFFCF, r2, r0
	bnz9 .BB.LABEL.57_11
.BB.LABEL.57_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	movhi HIGHW1(#_g_dataPack.5+0x00000001), r0, r2
	ld.bu LOWW(#_g_dataPack.5+0x00000001)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.57_11
.BB.LABEL.57_6:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1108
	movhi HIGHW1(#_g_dataPack.5+0x00000002), r0, r2
	ld.bu LOWW(#_g_dataPack.5+0x00000002)[r2], r2
	andi 0x0000007F, r2, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.57_11
.BB.LABEL.57_7:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1110
	mov #.STR.1929, r6
	jarl _LogHalPrint, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.57_9
.BB.LABEL.57_8:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1113
	movhi HIGHW1(#_g_dataPack.5+0x00000008), r0, r2
	ld.w LOWW(#_g_dataPack.5+0x00000008)[r2], r2
	andi 0x000000FF, r20, r5
	add r5, r2
	ld.bu 0x00000000[r2], r7
	mov #.STR.1930, r6
	jarl _LogHalPrint, r31
	add 0x00000001, r20
.BB.LABEL.57_9:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1111
	movhi HIGHW1(#_g_dataPack.5+0x00000006), r0, r2
	ld.hu LOWW(#_g_dataPack.5+0x00000006)[r2], r2
	andi 0x000000FF, r20, r5
	cmp r2, r5
	blt9 .BB.LABEL.57_8
.BB.LABEL.57_10:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1115
	mov #.STR.1931, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1116
	movhi HIGHW1(#_g_dataPack.5+0x00000008), r0, r20
	ld.w LOWW(#_g_dataPack.5+0x00000008)[r20], r2
	ld.bu 0x00000000[r2], r6
	jarl _RemoteControlSendAck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1117
	ld.w LOWW(#_g_dataPack.5+0x00000008)[r20], r6
	mov 0x00000000, r7
	jarl _RemoteControlSetCmdParam, r31
.BB.LABEL.57_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1125
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlCmdExecuteOver.1:
	.stack _RemoteControlCmdExecuteOver.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1135
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1137
	mov #_g_remoteControlState.6, r20
	ld.bu 0x0000000D[r20], r2
	mulhi 0x00000018, r2, r2
	add r20, r2
	movea 0x00000010, r2, r6
	movea 0x00000018, r0, r8
	mov 0x00000000, r7
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1138
	ld.bu 0x0000000C[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.58_2
.BB.LABEL.58_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1140
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_g_remoteControlState.6+0x0000000C), r0, r5
	st.b r2, LOWW(#_g_remoteControlState.6+0x0000000C)[r5]
.BB.LABEL.58_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1142
	mov #_g_remoteControlState.6, r2
	ld.b 0x0000000D[r2], r5
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1143
	andi 0x000000FF, r5, r6
	addi 0xFFFFFFE8, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1145
	cmov 0x0000000F, 0x00000000, r5, r5
	st.b r5, 0x0000000D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1147
	st.w r0, 0x00000000[r2]
	dispose 0x00000000, 0x00000041, [r31]
_vehicleRemoteControlStateIdle.1:
	.stack _vehicleRemoteControlStateIdle.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1160
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1164
	movhi HIGHW1(#_g_remoteControlState.6+0x0000000C), r0, r2
	ld.bu LOWW(#_g_remoteControlState.6+0x0000000C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.59_4
.BB.LABEL.59_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1166
	mov #_g_remoteControlState.6, r2
	ld.bu 0x0000000D[r2], r5
	mulhi 0x00000018, r5, r5
	add r5, r2
	ld.bu 0x00000010[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.59_3
.BB.LABEL.59_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1170
	movhi HIGHW1(#_g_remoteControlState.6), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_remoteControlState.6)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.59_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1176
	jarl _RemoteControlCmdExecuteOver.1, r31
.BB.LABEL.59_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1179
	dispose 0x00000000, 0x00000001, [r31]
_vehicleRemoteControlStatePrecondition.1:
	.stack _vehicleRemoteControlStatePrecondition.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1189
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1199
	mov #.STR.1959, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1201
	mov #_g_remoteControlState.6, r2
	ld.bu 0x0000000D[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1212
	mulhi 0x00000018, r20, r5
	add r5, r2
	movea 0x00000020, r2, r21
	mov r21, r6
	jarl _RemoteControlGenealPrecondition.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1215
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.60_2
.BB.LABEL.60_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1217
	movhi HIGHW1(#_g_remoteControlState.6), r0, r20
	mov 0x00000002, r21
	st.w r21, LOWW(#_g_remoteControlState.6)[r20]
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.60_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1221
	mulhi 0x00000018, r20, r2
	mov #_g_remoteControlState.6, r5
	add r2, r5
	ld.bu 0x00000018[r5], r2
	ld.bu 0x00000014[r5], r6
	st.w r2, 0x00000000[r3]
	zxh r10
	mov 0x00000000, r9
	mov r21, r7
	mov r10, r8
	jarl _RemoteControlSendResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1222
	jarl _RemoteControlCmdExecuteOver.1, r31
	dispose 0x00000004, 0x00000061, [r31]
_vehicleRemoteControlStateExectueCmd.1:
	.stack _vehicleRemoteControlStateExectueCmd.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1226
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1231
	mov #.STR.1971, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1233
	mov #_g_remoteControlState.6, r2
	ld.bu 0x0000000D[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1234
	mulhi 0x00000018, r20, r5
	add r5, r2
	ld.w 0x00000014[r2], r5
	mul 0x0000000C, r5, r0
	mov #_g_remoteControlTable.7, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	cmp 0x00000000, r5
	movea 0x00000014, r2, r21
	bz9 .BB.LABEL.61_2
.BB.LABEL.61_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1236
	mulhi 0x00000018, r20, r2
	mov #_g_remoteControlState.6, r6
	add r2, r6
	movea 0x00000020, r6, r22
	mov r22, r6
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1243
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.61_3
.BB.LABEL.61_2:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1245
	mov #_g_remoteControlState.6, r21
	mov 0x00000003, r22
	st.w r22, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1246
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1247
	mulhi 0x00000018, r20, r22
	add r21, r22
	ld.w 0x0000001C[r22], r22
	st.w r22, 0x00000008[r21]
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.61_3:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1251
	ld.bu 0x00000000[r21], r6
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r9
	movea 0x00002712, r0, r8
	mov r22, r7
	jarl _RemoteControlSendResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1252
	jarl _RemoteControlCmdExecuteOver.1, r31
	dispose 0x00000004, 0x00000071, [r31]
_vehicleRemoteControlStateWaitResult.1:
	.stack _vehicleRemoteControlStateWaitResult.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1264
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1269
	mov #_g_remoteControlState.6, r2
	ld.w 0x00000004[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1270
	ld.bu 0x0000000D[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1271
	mulhi 0x00000018, r20, r5
	add r5, r2
	ld.w 0x00000014[r2], r5
	mul 0x0000000C, r5, r0
	mov #_g_remoteControlTable.7, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	cmp 0x00000000, r5
	movea 0x00000014, r2, r21
	bnz9 .BB.LABEL.62_2
.BB.LABEL.62_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.62_3
.BB.LABEL.62_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1273
	mulhi 0x00000018, r20, r2
	mov #_g_remoteControlState.6, r7
	add r2, r7
	movea 0x00000020, r7, r6
	movea 0x00000026, r7, r7
	zxb r7
	jarl [r5], r31
.BB.LABEL.62_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	mov #_g_remoteControlState.6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1280
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.62_5
.BB.LABEL.62_4:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1282
	mulhi 0x00000018, r20, r20
	add r20, r2
	ld.bu 0x00000018[r2], r20
	st.w r20, 0x00000000[r3]
	movea 0x00000020, r2, r7
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.62_7
.BB.LABEL.62_5:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1286
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.62_8
.BB.LABEL.62_6:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1288
	mulhi 0x00000018, r20, r20
	add r20, r2
	ld.bu 0x00000018[r2], r20
	ld.bu 0x00000026[r2], r9
	st.w r20, 0x00000000[r3]
	movea 0x00000020, r2, r7
	movea 0x00002712, r0, r8
.BB.LABEL.62_7:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	ld.bu 0x00000000[r21], r6
	jarl _RemoteControlSendResult, r31
	jarl _RemoteControlCmdExecuteOver.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1299
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.62_8:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1293
	ld.w 0x00000008[r2], r5
	movhi HIGHW1(#_g_cycleTime.3), r0, r6
	ld.hu LOWW(#_g_cycleTime.3)[r6], r6
	divhu r6, r5, r0
	ld.w 0x00000004[r2], r2
	cmp r2, r5
	bh9 .BB.LABEL.62_10
.BB.LABEL.62_9:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1295
	mov #.STR.1983, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1296
	mulhi 0x00000018, r20, r2
	mov #_g_remoteControlState.6, r5
	add r2, r5
	ld.bu 0x00000018[r5], r2
	st.w r2, 0x00000000[r3]
	movea 0x00000020, r5, r7
	mov 0x00000000, r9
	movea 0x00002711, r0, r8
	br9 .BB.LABEL.62_7
.BB.LABEL.62_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1299
	dispose 0x00000004, 0x00000061, [r31]
_RemoteControlStateProcess:
	.stack _RemoteControlStateProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1302
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1304
	movhi HIGHW1(#_g_remoteControlState.6), r0, r2
	ld.w LOWW(#_g_remoteControlState.6)[r2], r2
	cmp 0x00000003, r2
	bh9 .BB.LABEL.63_6
.BB.LABEL.63_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.63_7[r2]
.SWITCH.LABEL.63_7:
	br9 .BB.LABEL.63_2
	br9 .BB.LABEL.63_3
	br9 .BB.LABEL.63_4
	br9 .BB.LABEL.63_5
.SWITCH.LABEL.63_7.END:
.BB.LABEL.63_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1307
	jarl _vehicleRemoteControlStateIdle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.63_3:	; switch_clause_bb1
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1310
	jarl _vehicleRemoteControlStatePrecondition.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.63_4:	; switch_clause_bb2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1313
	jarl _vehicleRemoteControlStateExectueCmd.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.63_5:	; switch_clause_bb3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1316
	jarl _vehicleRemoteControlStateWaitResult.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.63_6:	; switch_clause_bb4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1319
	movhi HIGHW1(#_g_remoteControlState.6), r0, r2
	st.w r0, LOWW(#_g_remoteControlState.6)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_RemoteControlTaskInit:
	.stack _RemoteControlTaskInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1324
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1335
	jarl _MpuHalOpen, r31
	movhi HIGHW1(#_g_mpuHandle.1), r0, r20
	st.h r10, LOWW(#_g_mpuHandle.1)[r20]
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1336
	st.b r2, 0x00000001[r3]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1337
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1338
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1339
	ld.h LOWW(#_g_mpuHandle.1)[r20], r6
	movea 0x00000001, r3, r7
	jarl _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1340
	ld.h LOWW(#_g_mpuHandle.1)[r20], r6
	movea 0x000000C8, r0, r8
	mov #_g_remoteControlRecvDataBuffer.2, r7
	jarl _MpuHalSetRxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1342
	mov #_g_dataPack.5, r2
	mov #_g_sendDataBuffer.4, r5
	st.w r5, 0x00000008[r2]
	movea 0x00000064, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1343
	st.h r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1346
	movhi HIGHW1(#_g_cycleTime.3), r0, r2
	ld.hu LOWW(#_g_cycleTime.3)[r2], r7
	ld.h LOWW(#_g_mpuHandle.1)[r20], r6
	jarl _RemoteControlSdkInit, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1349
	dispose 0x00000004, 0x00000041, [r31]
_RemoteControlTask:
	.stack _RemoteControlTask = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1351
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1354
	jarl _RemoteControlUartCommandProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/remote_control/remoteControlTask.c", 1356
	jarl _RemoteControlStateProcess, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 2
_g_mpuHandle.1:
	.dhw 0xFFFF
_g_remoteControlRecvDataBuffer.2:
	.ds (200)
	.align 2
_g_cycleTime.3:
	.dhw 0x0005
_g_sendDataBuffer.4:
	.ds (100)
	.align 4
_g_remoteControlState.6:
	.ds (616)
_lastSignalValue.8.RemoteControlUartCommandProcess:
	.ds (1)
	.section .bss, bss
	.align 4
_g_dataPack.5:
	.ds (12)
	.section .const, const
	.align 4
_g_remoteControlTable.7:
	.ds (12)
	.dw #_RemoteControlLockUnlockPrecondition.1
	.dw #_RemoteControlLockUnlockExecute.1
	.dw #_RemoteControlLockUnlockGetResult.1
	.dw #_RemoteControlFindVehiclePrecondition.1
	.dw #_RemoteControlFindVehicleExecute.1
	.dw #_RemoteControlFindVehicleGetResult.1
	.dw #_RemoteControlWindowPrecondition.1
	.dw #_RemoteControlWindowExecute.1
	.dw #_RemoteControlWindowGetResult.1
	.dw #_RemoteControlTailgatePrecondition.1
	.dw #_RemoteControlTailgateExecute.1
	.dw #_RemoteControlTailgateGetResult.1
	.dw #_RemoteControlRemoteStartPrecondition.1
	.dw #_RemoteControlRemoteStartExecute.1
	.dw #_RemoteControlRemoteStartGetResult.1
	.dw #_RemoteControlRemoteStartStopPrecondition.1
	.dw #_RemoteControlRemoteStartStopExecute.1
	.dw #_RemoteControlRemoteStartStopGetResult.1
	.dw #_RemoteControlSeatHeatPrecondition.1
	.dw #_RemoteControlSeatHeatExecute.1
	.dw #_RemoteControlSeatHeatGetResult.1
	.dw #_RemoteControlSeatVentPrecondition.1
	.dw #_RemoteControlSeatVentExecute.1
	.dw #_RemoteControlSeatVentGetResult.1
	.dw #_RemoteControlAirConditionerPrecondition.1
	.dw #_RemoteControlAirConditionerExecute.1
	.dw #_RemoteControlAirConditionerGetResult.1
	.ds (72)
	.dw #_RemoteControlBatteryHeatingPrecondition.1
	.dw #_RemoteControlBatteryHeatingExecute.1
	.dw #_RemoteControlBatteryHeatingGetResult.1
	.dw #_RemoteControlRemoteChargePrecondition.1
	.dw #_RemoteControlRemoteChargeExecute.1
	.dw #_RemoteControlRemoteChargeGetResult.1
	.dw #_RemoteControlChargeCurrentSetPrecondition.1
	.dw #_RemoteControlChargeCurrentSetExecute.1
	.dw #_RemoteControlChargeCurrentSetGetResult.1
	.dw #_RemoteControlChargeSocLimitPrecondition.1
	.dw #_RemoteControlChargeSocLimitExecute.1
	.dw #_RemoteControlChargeSocLimitGetResult.1
	.dw #_RemoteControlScheduleChargePrecondition.1
	.dw #_RemoteControlScheduleChargeExecute.1
	.dw #_RemoteControlScheduleChargeGetResult.1
	.dw #_RemoteControlRemoteDischargePrecondition.1
	.dw #_RemoteControlRemoteDischargeExecute.1
	.dw #_RemoteControlRemoteDischargeGetResult.1
	.dw #_RemoteControlFridgeSwitchPrecondition.1
	.dw #_RemoteControlFridgeSwitchExecute.1
	.dw #_RemoteControlFridgeSwitchGetResult.1
	.dw #_RemoteControlFridgeKeepTempPrecondition.1
	.dw #_RemoteControlFridgeKeepTempExecute.1
	.dw #_RemoteControlFridgeKeepTempGetResult.1
	.dw #_RemoteControlRearDefrostPrecondition.1
	.dw #_RemoteControlRearDefrostExecute.1
	.dw #_RemoteControlRearDefrostGetResult.1
.STR.1:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x20,0x73,0x69,0x6D,0x75,0x6C,0x61,0x74,0x65,0x20
	.db 0x63,0x6D,0x64,0x3A,0x20,0x25,0x64,0x0D,0x0A
	.ds (1)
.STR.1928:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x72,0x65,0x63,0x76,0x20,0x63,0x70,0x75
	.db 0x20,0x64,0x61,0x74,0x61,0x0D,0x0A
	.ds (1)
.STR.1929:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x70,0x61,0x72,0x73,0x65,0x20,0x63,0x6D
	.db 0x64,0x20,0x2D,0x20
	.ds (1)
.STR.1930:
	.db 0x20,0x25,0x30,0x32,0x58
	.ds (1)
.STR.1931:
	.db 0x0D,0x0A
	.ds (1)
.STR.1959:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x76,0x65,0x68,0x69,0x63,0x6C,0x65,0x52
	.db 0x65,0x6D,0x6F,0x74,0x65,0x43,0x6F,0x6E,0x74,0x72,0x6F,0x6C,0x53,0x74,0x61,0x74
	.db 0x65,0x50,0x72,0x65,0x63,0x6F,0x6E,0x64,0x69,0x74,0x69,0x6F,0x6E,0x0D,0x0A
	.ds (1)
.STR.1971:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x76,0x65,0x68,0x69,0x63,0x6C,0x65,0x52
	.db 0x65,0x6D,0x6F,0x74,0x65,0x43,0x6F,0x6E,0x74,0x72,0x6F,0x6C,0x53,0x74,0x61,0x74
	.db 0x65,0x45,0x78,0x65,0x63,0x74,0x75,0x65,0x43,0x6D,0x64,0x0D,0x0A
	.ds (1)
.STR.1983:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x76,0x65,0x68,0x69,0x63,0x6C,0x65,0x52
	.db 0x65,0x6D,0x6F,0x74,0x65,0x43,0x6F,0x6E,0x74,0x72,0x6F,0x6C,0x53,0x74,0x61,0x74
	.db 0x65,0x57,0x61,0x69,0x74,0x52,0x65,0x73,0x75,0x6C,0x74,0x20,0x74,0x69,0x6D,0x65
	.db 0x6F,0x75,0x74,0x0D,0x0A
	.ds (1)
