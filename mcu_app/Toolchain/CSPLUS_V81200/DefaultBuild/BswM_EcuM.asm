#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BswM\BswM_EcuM.c -oDefaultBuild\BswM_EcuM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6f432f0a9edf43a6b283e3e21444ea79nmc40cgo.pzc
#@	compiled at Fri Mar 27 09:50:58 2026

	.file "..\..\Bsw\SystemServices\BswM\BswM_EcuM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _BswM_RuntimeStatus
	.public _BswM_InitEcuMRequestPorts
	.extern _BswM_GetPartitionIdx
	.extern _Det_ReportError
	.public _BswM_EcuM_CurrentWakeup
	.extern _BswM_DetChkEcuMCurWakeUp
	.extern _BswM_ArbitrateRule
	.public _BswM_GetEcuMWakeSrcStatus
	.public _BswM_EcuM_RequestedState
	.extern _BswM_DetChkRequestedState
	.public _BswM_GetEcuMRunRqstStatus
	.public _BswM_EcuM_CurrentState
	.extern _BswM_DetChkEcuMCurState
	.public _BswM_GetEcuMState

	.section .text, text
_BswM_InitEcuMRequestPorts:
	.stack _BswM_InitEcuMRequestPorts = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 62
	prepare 0x00000001, 0x00000004
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 74
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 75
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 77
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 78
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 79
	ld.w 0x00000018[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 78
	ld.hu 0x00000002[r3], r7
	shl 0x00000005, r7
	add r7, r2
	ld.w 0x00000010[r2], r2
	mov 0x00000000, r7
	br9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 82
	ld.w 0x0000001C[r5], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 84
	ld.w 0x0000000C[r2], r9
	add r7, r9
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r9]
	add 0x00000001, r7
.BB.LABEL.1_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 80
	cmp r6, r7
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_5:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 93
	ld.bu 0x00000020[r5], r6
	mov 0x00000000, r7
	br9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 95
	ld.w 0x00000024[r5], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_7:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 97
	ld.w 0x00000010[r2], r9
	andi 0x000000FF, r7, r10
	add r10, r9
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r9]
	add 0x00000001, r7
.BB.LABEL.1_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 93
	andi 0x000000FF, r7, r8
	cmp r6, r8
	bl9 .BB.LABEL.1_6
	br9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	mov 0x00000008, r9
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 108
	mov r7, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 111
	dispose 0x00000004, 0x00000001, [r31]
_BswM_EcuM_CurrentWakeup:
	.stack _BswM_EcuM_CurrentWakeup = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 125
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 140
	mov r21, r6
	jarl _BswM_DetChkEcuMCurWakeUp, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 143
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 144
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 146
	mov #_BswM_RuntimeStatus, r2
	ld.w 0x00000008[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 147
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 148
	ld.w 0x00000018[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 147
	ld.hu 0x00000002[r3], r6
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.2_11
.BB.LABEL.2_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 151
	ld.w 0x00000020[r22], r2
	mov r23, r6
	shl 0x00000002, r6
	add r6, r2
	ld.w 0x00000000[r2], r2
	tst r20, r2
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_4:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 153
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r5
	ld.hu 0x00000002[r3], r20
	shl 0x00000005, r20
	add r20, r5
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 154
	ld.w 0x0000000C[r5], r5
	add r23, r5
	st.b r21, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 155
	mov r23, r5
	mul 0x0000000C, r5, r0
	ld.w 0x0000001C[r22], r20
	add r20, r5
	ld.w 0x00000008[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_5:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 157
	mov r23, r5
	mul 0x0000000C, r5, r0
	add r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 159
	ld.bu 0x00000004[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 158
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r5
	ld.hu 0x00000002[r3], r21
	mul 0x00000028, r21, r0
	add r21, r5
	ld.w 0x0000000C[r5], r21
	mov 0x00000000, r24
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 161
	ld.w 0x0000001C[r22], r5
	mov r23, r2
	mul 0x0000000C, r2, r0
	add r2, r5
	ld.w 0x00000000[r5], r5
	andi 0x000000FF, r24, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 162
	ld.bu 0x00000000[r5], r6
	mulhi 0x00000014, r6, r5
	add r21, r5
	ld.bu 0x00000008[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 165
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.2_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	add 0x00000001, r24
.BB.LABEL.2_9:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 159
	andi 0x000000FF, r24, r5
	cmp r20, r5
	bl9 .BB.LABEL.2_6
	br9 .BB.LABEL.2_12
.BB.LABEL.2_10:	; if_break_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	add 0x00000001, r23
.BB.LABEL.2_11:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 149
	cmp r5, r23
	bl9 .BB.LABEL.2_3
.BB.LABEL.2_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 174
	dispose 0x00000004, 0x00000479, [r31]
_BswM_GetEcuMWakeSrcStatus:
	.stack _BswM_GetEcuMWakeSrcStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 178
	prepare 0x00000041, 0x00000004
	mov r6, r20
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 184
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 185
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 187
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x0000000C[r2], r2
	add r20, r2
	ld.bu 0x00000000[r2], r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 190
	dispose 0x00000004, 0x00000041, [r31]
_BswM_EcuM_RequestedState:
	.stack _BswM_EcuM_RequestedState = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 207
	prepare 0x000007F9, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 222
	jarl _BswM_DetChkRequestedState, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 225
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 226
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 228
	mov #_BswM_RuntimeStatus, r2
	ld.w 0x00000008[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 229
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 231
	ld.bu 0x00000020[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 229
	ld.hu 0x00000002[r3], r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x00000004[r2], r23
	mov 0x00000000, r24
	br9 .BB.LABEL.4_11
.BB.LABEL.4_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 233
	andi 0x000000FF, r24, r2
	ld.w 0x00000028[r23], r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_4:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 235
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 236
	ld.w 0x00000010[r2], r2
	andi 0x000000FF, r24, r5
	add r5, r2
	st.b r21, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 237
	mul 0x0000000C, r5, r0
	ld.w 0x00000024[r23], r2
	add r2, r5
	ld.w 0x00000008[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_5:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 239
	andi 0x000000FF, r24, r5
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 241
	ld.bu 0x00000004[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 240
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	ld.hu 0x00000002[r3], r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r26
	mov 0x00000000, r27
	br9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 243
	andi 0x000000FF, r24, r2
	mul 0x0000000C, r2, r0
	ld.w 0x00000024[r23], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	andi 0x000000FF, r27, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 244
	ld.bu 0x00000000[r2], r6
	mulhi 0x00000014, r6, r2
	add r26, r2
	ld.bu 0x00000008[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 247
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.4_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	add 0x00000001, r27
.BB.LABEL.4_9:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 241
	andi 0x000000FF, r27, r2
	cmp r25, r2
	bl9 .BB.LABEL.4_6
.BB.LABEL.4_10:	; if_break_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	add 0x00000001, r24
.BB.LABEL.4_11:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 231
	andi 0x000000FF, r24, r2
	cmp r22, r2
	bl9 .BB.LABEL.4_3
.BB.LABEL.4_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 255
	dispose 0x00000004, 0x000007F9, [r31]
_BswM_GetEcuMRunRqstStatus:
	.stack _BswM_GetEcuMRunRqstStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 258
	prepare 0x00000041, 0x00000004
	mov r6, r20
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 264
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 265
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 267
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000010[r2], r2
	add r20, r2
	ld.bu 0x00000000[r2], r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 270
	dispose 0x00000004, 0x00000041, [r31]
_BswM_EcuM_CurrentState:
	.stack _BswM_EcuM_CurrentState = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 282
	prepare 0x00000079, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 293
	jarl _BswM_DetChkEcuMCurState, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 296
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 297
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 299
	mov #_BswM_RuntimeStatus, r2
	st.b r20, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 300
	ld.w 0x0000000C[r2], r2
	ld.hu 0x00000002[r3], r5
	mov r5, r6
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 301
	ld.w 0x00000018[r20], r2
	ld.w 0x00000008[r2], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 305
	ld.bu 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 304
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.6_7
.BB.LABEL.6_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 307
	ld.w 0x00000018[r20], r2
	ld.w 0x00000000[r2], r2
	andi 0x000000FF, r23, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 308
	ld.bu 0x00000000[r2], r6
	mulhi 0x00000014, r6, r2
	add r22, r2
	ld.bu 0x00000008[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 311
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.6_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 0
	add 0x00000001, r23
.BB.LABEL.6_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 305
	andi 0x000000FF, r23, r2
	cmp r21, r2
	bl9 .BB.LABEL.6_4
.BB.LABEL.6_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 317
	dispose 0x00000004, 0x00000079, [r31]
_BswM_GetEcuMState:
	.stack _BswM_GetEcuMState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 322
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000010), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_EcuM.c", 323
	ld.bu LOWW(#_BswM_RuntimeStatus+0x00000010)[r2], r10
	jmp [r31]
