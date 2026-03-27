#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\ComM\ComM_Ch.c -oDefaultBuild\ComM_Ch.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bc095377dc1d45a9ad7d17dd34590213ve0gdyou.vwv
#@	compiled at Fri Mar 27 09:50:17 2026

	.file "..\..\Bsw\SystemServices\ComM\ComM_Ch.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Nm_PassiveStartUp
	.extern _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0
	.extern _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0
	.extern _Nm_NetworkRequest
	.extern _Nm_NetworkRelease
	.public _ComM_ChInit
	.public _ComM_ChGetState
	.public _ComM_ChGetMaxAllowMode
	.public _ComM_ChGetCurrentComMode
	.public _ComM_ChComAllow
	.public _ComM_ChBusSmModeInd
	.extern _BswM_ComM_CurrentMode
	.extern _Dcm_ComM_FullComModeEntered
	.extern _Dcm_ComM_SilentComModeEntered
	.extern _Dcm_ComM_NoComModeEntered
	.public _ComM_ChRequstCommMode
	.public _ComM_ChEcuMWakeup
	.public _ComM_ChPassiveWakeup
	.public _ComM_ChProcessTimer
	.public _ComM_ChDiagIndication
	.public _ComM_ChannelNmModeIndication

	.section .text, text
_ComM_CommonSetBit.1:
	.stack _ComM_CommonSetBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 110
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 112
	shr 0x00000003, r2
	add r2, r6
	set1 r7, [r6]
	jmp [r31]
_ComM_CommonClrBit.1:
	.stack _ComM_CommonClrBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 115
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 117
	shr 0x00000003, r2
	add r2, r6
	clr1 r7, [r6]
	jmp [r31]
_ComM_CommonGetBit.1:
	.stack _ComM_CommonGetBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 124
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 126
	shr 0x00000003, r2
	add r2, r6
	tst1 r7, [r6]
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Internal.h", 127
	jmp [r31]
_ComM_ChBeh_EntryFullComReq.1:
	.stack _ComM_ChBeh_EntryFullComReq.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 112
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 116
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r22
	add r2, r22
	ld.bu 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 115
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r24
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 117
	st.b r7, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 119
	add 0x00000004, r22
	mov r22, r6
	jarl _ComM_CommonGetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 127
	cmp 0x00000002, r23
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov r20, r2
	mul 0x00000024, r2, r0
	add r24, r2
	ld.bu 0x00000010[r2], r2
	andi 0x00000009, r2, r0
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 130
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 135
	mov r20, r2
	mul 0x00000024, r2, r0
	add r24, r2
	ld.bu 0x00000000[r2], r6
	jarl _Nm_PassiveStartUp, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 137
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 139
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 140
	mov r22, r6
	jarl _ComM_CommonSetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 141
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
.BB.LABEL.4_5:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 152
	cmp 0x00000000, r21
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_6:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 154
	mul 0x00000024, r20, r0
	add r20, r24
	ld.bu 0x00000000[r24], r6
	jarl _Nm_NetworkRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 155
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 157
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 158
	mov r22, r6
	jarl _ComM_CommonSetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 159
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
.BB.LABEL.4_8:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 220
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 221
	mov r22, r6
	jarl _ComM_CommonClrBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 222
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	dispose 0x00000000, 0x00000479, [r31]
_ComM_ChBeh_EntryNoComRequestPending.1:
	.stack _ComM_ChBeh_EntryNoComRequestPending.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 230
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 233
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r6
	add r2, r6
	mov 0x00000001, r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 238
	add 0x00000004, r6
	mov 0x00000000, r7
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 240
	mov r20, r6
	mov r21, r7
	jarl _ComM_ChBeh_EntryFullCom.1, r31
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 242
	dispose 0x00000000, 0x00000061, [r31]
_ComM_ChBeh_EntryNoCom.1:
	.stack _ComM_ChBeh_EntryNoCom.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 249
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 252
	mov r6, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 253
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 258
	mov r6, r2
	mul 0x00000024, r2, r0
	add r20, r2
	ld.w 0x0000000C[r2], r5
	add 0x0000000C, r2
	cmp 0x00000000, r5
	mov r6, r21
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 261
	mov r21, r5
	mul 0x00000014, r5, r0
	mov #_ComM_ChVarTable.2, r6
	add r5, r6
	st.b r0, 0x00000003[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 263
	mov r21, r5
	mul 0x00000024, r5, r0
	add r20, r5
	ld.bu 0x00000008[r5], r6
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r2], r2
	mov 0x00000000, r7
	jarl [r2], r31
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 270
	mov r21, r2
	mul 0x00000024, r2, r0
	add r20, r2
	ld.bu 0x00000010[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov r21, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r22
	add r2, r22
	add 0x00000004, r22
	mov 0x00000006, r7
	mov r22, r6
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 272
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 273
	mov r22, r6
	jarl _ComM_CommonClrBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 274
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 275
	mul 0x00000024, r21, r0
	add r21, r20
	ld.bu 0x00000000[r20], r6
	jarl _Nm_NetworkRelease, r31
.BB.LABEL.6_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 293
	dispose 0x00000000, 0x00000071, [r31]
_ComM_ChBeh_EntryComReadySleep.1:
	.stack _ComM_ChBeh_EntryComReadySleep.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 300
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 304
	mov r6, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 303
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r20
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 304
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 309
	mov r6, r2
	mul 0x00000024, r2, r0
	add r20, r2
	ld.bu 0x00000010[r2], r2
	cmp 0x00000001, r2
	mov r6, r21
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov r21, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r22
	add r2, r22
	add 0x00000004, r22
	mov 0x00000006, r7
	mov r22, r6
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 311
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 312
	mov r22, r6
	jarl _ComM_CommonClrBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 313
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 314
	mul 0x00000024, r21, r0
	add r21, r20
	ld.bu 0x00000000[r20], r6
	jarl _Nm_NetworkRelease, r31
.BB.LABEL.7_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 356
	dispose 0x00000000, 0x00000071, [r31]
_ComM_ChBeh_EntryFullCom.1:
	.stack _ComM_ChBeh_EntryFullCom.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 363
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 366
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 373
	mov r6, r5
	mul 0x00000024, r5, r0
	add r2, r5
	ld.w 0x0000000C[r5], r8
	add 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 367
	mov r6, r9
	mul 0x00000014, r9, r0
	mov #_ComM_ChVarTable.2, r10
	add r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 373
	cmp 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 367
	ld.bu 0x00000000[r10], r8
	mov r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 373
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	cmp 0x00000003, r8
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_2:	; entry
	cmp 0x00000002, r8
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 388
	mov r21, r6
	mul 0x00000014, r6, r0
	mov #_ComM_ChVarTable.2, r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov r21, r6
	mul 0x00000014, r6, r0
	mov #_ComM_ChVarTable.2, r7
	add r6, r7
	ld.bu 0x00000003[r7], r6
	cmp 0x00000002, r6
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 395
	mov r21, r6
	mul 0x00000014, r6, r0
	mov #_ComM_ChVarTable.2, r8
	add r6, r8
	mov 0x00000002, r7
	st.b r7, 0x00000003[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 397
	mov r21, r6
	mul 0x00000024, r6, r0
	add r6, r2
	ld.bu 0x00000008[r2], r6
	ld.w 0x00000000[r5], r2
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.8_6:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 422
	mov r21, r6
	mov r20, r7
	jarl _ComM_ChBeh_EntryFullComReq.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_ComM_ChBeh_EntrySlientMode.1:
	.stack _ComM_ChBeh_EntrySlientMode.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 431
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 434
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 435
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 436
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	mov 0x00000004, r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 437
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 443
	mov r20, r22
	mul 0x00000024, r22, r0
	add r21, r22
	ld.w 0x0000000C[r22], r2
	add 0x0000000C, r22
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 445
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 447
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	mov 0x00000001, r23
	st.b r23, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 448
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 450
	mul 0x00000024, r20, r0
	add r20, r21
	ld.bu 0x00000008[r21], r6
	ld.w 0x00000000[r22], r2
	ld.w 0x00000000[r2], r2
	mov r23, r7
	jarl [r2], r31
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 453
	dispose 0x00000000, 0x00000079, [r31]
_ComM_ChReqModeMainHandle.1:
	.stack _ComM_ChReqModeMainHandle.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 461
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 464
	mulhi 0x00000014, r6, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 465
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 467
	mulhi 0x00000024, r6, r7
	add r7, r2
	ld.bu 0x00000010[r2], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 464
	ld.w 0x00000008[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 467
	mov r6, r21
	mov r6, r22
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 469
	mov r22, r6
	mov r20, r7
	jarl _ComM_ChannelNmModeEventHandle.1, r31
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 479
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 480
	mulhi 0x00000014, r21, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.b 0x00000001[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 483
	ld.bu 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 482
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 483
	add 0xFFFFFFFE, r21
	zxb r21
	cmp 0x00000002, r21
	bl9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mulhi 0x00000014, r22, r2
	mov #_ComM_ChVarTable.2, r6
	add r2, r6
	add 0x00000004, r6
	mov 0x00000002, r7
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_5:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 497
	cmp 0x00000004, r23
	bh9 .BB.LABEL.10_11
.BB.LABEL.10_6:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	shl 0x00000001, r23
	jmp #.SWITCH.LABEL.10_12[r23]
.SWITCH.LABEL.10_12:
	br9 .BB.LABEL.10_9
	br9 .BB.LABEL.10_7
	br9 .BB.LABEL.10_11
	br9 .BB.LABEL.10_10
	br9 .BB.LABEL.10_8
.SWITCH.LABEL.10_12.END:
.BB.LABEL.10_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 500
	mulhi 0x00000014, r22, r2
	mov #_ComM_ChVarTable.2, r6
	add r2, r6
	add 0x00000004, r6
	mov 0x00000000, r7
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_8:	; switch_clause_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov r22, r6
	mov r20, r7
	jarl _ComM_ChBeh_EntryFullCom.1, r31
	br9 .BB.LABEL.10_11
.BB.LABEL.10_9:	; switch_clause_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 522
	mov r22, r6
	mov r20, r7
	jarl _ComM_ChBeh_EntryNoComRequestPending.1, r31
	br9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; switch_clause_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 544
	mov r22, r6
	mov r20, r7
	jarl _ComM_ChBeh_EntryFullComReq.1, r31
.BB.LABEL.10_11:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 568
	mov r22, r6
	mov r20, r7
	jarl _ComM_ChStateTransitionToNoCom.1, r31
	dispose 0x00000000, 0x00000079, [r31]
_ComM_ChStateTransitionToNoCom.1:
	.stack _ComM_ChStateTransitionToNoCom.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 571
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 575
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r20
	mov r7, r21
	mov r6, r22
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 578
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 579
	ld.bu 0x00000000[r23], r24
	cmp 0x00000001, r24
	bz9 .BB.LABEL.11_8
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	cmp 0x00000002, r24
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 586
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 594
	mov r22, r6
	jarl _ComM_ChBeh_EntryComReadySleep.1, r31
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 597
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r6
	add r2, r6
	add 0x00000004, r6
	mov 0x00000004, r7
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.11_11
.BB.LABEL.11_6:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 600
	mov r22, r2
	mul 0x00000024, r2, r0
	add r20, r2
	ld.bu 0x00000011[r2], r7
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.w 0x0000000C[r5], r6
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 603
	mov r22, r6
	jarl _ComM_ChBeh_EntryComReadySleep.1, r31
	br9 .BB.LABEL.11_11
.BB.LABEL.11_8:	; switch_clause_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 625
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_9:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r6
	add r2, r6
	add 0x00000004, r6
	mov 0x00000002, r7
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 627
	mov r22, r6
	jarl _ComM_ChBeh_EntryNoCom.1, r31
.BB.LABEL.11_11:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 576
	ld.bu 0x00000000[r23], r2
	cmp r2, r24
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 635
	dispose 0x00000000, 0x00000479, [r31]
_ComM_ChInit:
	.stack _ComM_ChInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 756
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 758
	st.w r6, LOWW(#_ComM_ChannelConfigPtr.1)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.12_5
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 770
	mov r2, r5
	mul 0x00000014, r5, r0
	mov #_ComM_ChVarTable.2, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 767
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r5
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 770
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 772
	st.b r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 773
	st.w r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 774
	mov r2, r8
	mul 0x00000024, r8, r0
	add r5, r8
	ld.w 0x0000001C[r8], r8
	st.w r8, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 776
	st.b r0, 0x00000004[r6]
	mov 0x00000005, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 778
	st.b r8, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 774
	add 0x0000000C, r6
	mov 0x00000000, r8
	br9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 797
	ld.w 0x00000000[r6], r9
	add r8, r9
	st.b r0, 0x00000000[r9]
	add 0x00000001, r8
.BB.LABEL.12_3:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 795
	mov r2, r9
	mul 0x00000024, r9, r0
	add r5, r9
	ld.bu 0x00000020[r9], r9
	cmp r9, r8
	bl9 .BB.LABEL.12_2
.BB.LABEL.12_4:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	add 0x00000001, r2
.BB.LABEL.12_5:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 762
	cmp r7, r2
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 820
	jmp [r31]
_ComM_ChGetState:
	.stack _ComM_ChGetState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 830
	mul 0x00000014, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 832
	mov #_ComM_ChVarTable.2, r2
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r7]
	jmp [r31]
_ComM_ChGetMaxAllowMode:
	.stack _ComM_ChGetMaxAllowMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 845
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 867
	jmp [r31]
_ComM_ChGetCurrentComMode:
	.stack _ComM_ChGetCurrentComMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 880
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 892
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 898
	mul 0x00000024, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 903
	ld.bu 0x00000008[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 898
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 903
	ld.w 0x00000004[r2], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 925
	dispose 0x00000000, 0x00000001, [r31]
_ComM_ChComAllow:
	.stack _ComM_ChComAllow = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 934
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 937
	cmp 0x00000001, r7
	mov r6, r20
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 939
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 940
	mul 0x00000014, r20, r0
	mov #_ComM_ChVarTable.2, r6
	add r20, r6
	add 0x00000004, r6
	mov 0x00000000, r7
	jarl _ComM_CommonSetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 941
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 945
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 946
	mul 0x00000014, r20, r0
	mov #_ComM_ChVarTable.2, r6
	add r20, r6
	add 0x00000004, r6
	mov 0x00000000, r7
	jarl _ComM_CommonClrBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 947
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	dispose 0x00000000, 0x00000041, [r31]
_ComM_ChBusSmModeInd:
	.stack _ComM_ChBusSmModeInd = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 958
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 962
	mov r6, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r20
	add r2, r20
	ld.bu 0x00000002[r20], r2
	add 0x00000002, r20
	cmp r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 961
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r21
	mov r7, r22
	mov r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 962
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 964
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 965
	st.b r22, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 969
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 970
	addi 0xFFFFFF01, r22, r0
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 973
	mov r23, r2
	mul 0x00000024, r2, r0
	add r21, r2
	ld.bu 0x00000000[r2], r6
	mov r22, r7
	jarl _BswM_ComM_CurrentMode, r31
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 992
	mul 0x00000024, r23, r0
	add r23, r21
	ld.w 0x00000014[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_4:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 994
	cmp 0x00000000, r22
	bz9 .BB.LABEL.17_9
.BB.LABEL.17_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	add 0xFFFFFFFF, r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.17_8
.BB.LABEL.17_6:	; if_then_bb37
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.17_10
.BB.LABEL.17_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 997
	ld.bu 0x00000000[r2], r6
	jarl _Dcm_ComM_FullComModeEntered, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.17_8:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1001
	ld.bu 0x00000000[r2], r6
	jarl _Dcm_ComM_SilentComModeEntered, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.17_9:	; switch_clause_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1005
	ld.bu 0x00000000[r2], r6
	jarl _Dcm_ComM_NoComModeEntered, r31
.BB.LABEL.17_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1015
	dispose 0x00000000, 0x00000079, [r31]
_ComM_ChRequstCommMode:
	.stack _ComM_ChRequstCommMode = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1029
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1035
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1036
	mov r6, r5
	mul 0x00000024, r5, r0
	add r5, r2
	ld.bu 0x00000010[r2], r2
	cmp 0x00000008, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; entry.if_break_bb112_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	movea 0x000000FF, r0, r21
	br9 .BB.LABEL.18_8
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1038
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r23
	add r2, r23
	ld.w 0x0000000C[r23], r6
	mov r21, r7
	jarl _ComM_CommonGetBit.1, r31
	add 0x0000000C, r23
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_3:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	addi 0xFFFFFFFE, r20, r2
	zxb r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1041
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1042
	ld.w 0x00000000[r23], r6
	mov r21, r7
	jarl _ComM_CommonSetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1043
	mov r22, r21
	mul 0x00000014, r21, r0
	mov #_ComM_ChVarTable.2, r23
	add r21, r23
	ld.w 0x00000008[r23], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1047
	addi 0x00000001, r21, r2
	st.w r2, 0x00000008[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1048
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1043
	cmp 0x00000000, r21
	mov 0xFFFFFFFF, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1045
	cmov 0x00000002, 0x00000002, r21, r21
	br9 .BB.LABEL.18_8
.BB.LABEL.18_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1054
	ld.w 0x00000000[r23], r6
	mov r21, r7
	jarl _ComM_CommonGetBit.1, r31
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.18_1
.BB.LABEL.18_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_1
.BB.LABEL.18_7:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1056
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1057
	ld.w 0x00000000[r23], r6
	mov r21, r7
	jarl _ComM_CommonClrBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1058
	mov r22, r21
	mul 0x00000014, r21, r0
	mov #_ComM_ChVarTable.2, r2
	add r21, r2
	ld.w 0x00000008[r2], r21
	add 0xFFFFFFFF, r21
	st.w r21, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1063
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1059
	cmp 0x00000000, r21
	mov 0xFFFFFFFF, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1061
	cmov 0x00000002, 0x00000000, r21, r21
.BB.LABEL.18_8:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1074
	zxb r21
	addi 0xFFFFFF01, r21, r0
	bz9 .BB.LABEL.18_10
.BB.LABEL.18_9:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1076
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1077
	mul 0x00000014, r22, r0
	mov #_ComM_ChVarTable.2, r2
	add r22, r2
	st.b r20, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1078
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
.BB.LABEL.18_10:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1081
	dispose 0x00000000, 0x00000079, [r31]
_ComM_ChEcuMWakeup:
	.stack _ComM_ChEcuMWakeup = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1090
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1101
	mov r6, r2
	mul 0x00000014, r2, r0
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1103
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1104
	mul 0x00000014, r20, r0
	mov #_ComM_ChVarTable.2, r6
	add r20, r6
	add 0x00000004, r6
	mov 0x00000002, r7
	jarl _ComM_CommonSetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1105
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
.BB.LABEL.19_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1118
	dispose 0x00000000, 0x00000041, [r31]
_ComM_ChPassiveWakeup:
	.stack _ComM_ChPassiveWakeup = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1126
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1130
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1131
	mul 0x00000014, r20, r0
	mov #_ComM_ChVarTable.2, r6
	add r20, r6
	add 0x00000004, r6
	mov 0x00000002, r7
	jarl _ComM_CommonSetBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1132
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	dispose 0x00000000, 0x00000041, [r31]
_ComM_ChProcessTimer:
	.stack _ComM_ChProcessTimer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1147
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1172
	jarl _ComM_ChReqModeMainHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_ChDiagIndication:
	.stack _ComM_ChDiagIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1299
	prepare 0x00000001, 0x00000000
	mov r6, r5
	mul 0x00000024, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1302
	cmp 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1301
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1302
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1308
	add r2, r5
	tst1 0x00000000, 0x00000010[r5]
	bz9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1310
	mov r6, r5
	mul 0x00000024, r5, r0
	add r5, r2
	ld.bu 0x00000011[r2], r7
	mov 0x00000002, r8
	jarl _ComM_ChRequstCommMode, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.22_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1316
	add r5, r2
	ld.bu 0x00000011[r2], r7
	mov 0x00000000, r8
	jarl _ComM_ChRequstCommMode, r31
.BB.LABEL.22_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1318
	dispose 0x00000000, 0x00000001, [r31]
_ComM_ChannelStoreNmModeEvent.1:
	.stack _ComM_ChannelStoreNmModeEvent.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1382
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1384
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1385
	st.b r21, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1386
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	dispose 0x00000000, 0x00000061, [r31]
_ComM_ChannelNmModeIndication:
	.stack _ComM_ChannelNmModeIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1389
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1391
	movhi HIGHW1(#_ComM_ChannelConfigPtr.1), r0, r2
	ld.w LOWW(#_ComM_ChannelConfigPtr.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1393
	mulhi 0x00000024, r6, r5
	add r5, r2
	ld.bu 0x00000010[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1395
	mulhi 0x00000014, r6, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	movea 0x00000010, r5, r6
	jarl _ComM_ChannelStoreNmModeEvent.1, r31
.BB.LABEL.24_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1397
	dispose 0x00000000, 0x00000001, [r31]
_ComM_ChannelCompareAndClearNmModeEvent.1:
	.stack _ComM_ChannelCompareAndClearNmModeEvent.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1399
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1402
	jarl _SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1403
	ld.bu 0x00000000[r20], r2
	cmp r2, r21
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_then_bb
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1406
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r20
.BB.LABEL.25_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1408
	jarl _SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1410
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
_ComM_ChannelNmModeEventHandle.1:
	.stack _ComM_ChannelNmModeEventHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1412
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1416
	mulhi 0x00000014, r20, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	movea 0x00000010, r5, r22
	mov 0x00000001, r7
	mov r22, r6
	jarl _ComM_ChannelCompareAndClearNmModeEvent.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1420
	mulhi 0x00000014, r20, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1422
	mov r20, r6
	jarl _ComM_ChBeh_EntrySlientMode.1, r31
.BB.LABEL.26_3:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1426
	mov r22, r6
	jarl _ComM_ChannelCompareAndClearNmModeEvent.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_6
.BB.LABEL.26_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1428
	mulhi 0x00000014, r20, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.26_6
.BB.LABEL.26_5:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1430
	mov r20, r6
	mov r21, r7
	jarl _ComM_ChBeh_EntryFullCom.1, r31
.BB.LABEL.26_6:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1434
	mov r22, r6
	jarl _ComM_ChannelCompareAndClearNmModeEvent.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_9
.BB.LABEL.26_7:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1436
	mulhi 0x00000014, r20, r2
	mov #_ComM_ChVarTable.2, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.26_9
.BB.LABEL.26_8:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1439
	mov r20, r6
	jarl _ComM_ChBeh_EntryNoCom.1, r31
.BB.LABEL.26_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM_Ch.c", 1442
	dispose 0x00000000, 0x00000071, [r31]
	.section .bss, bss
	.align 4
_ComM_ChannelConfigPtr.1:
	.ds (4)
	.align 4
_ComM_ChVarTable.2:
	.ds (20)
