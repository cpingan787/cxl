#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\vehicle_data_to_mpu\canMsgDynamicConfigure.c -oDefaultBuild\canMsgDynamicConfigure.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cf3c6c5a2dd24a69a4fe118cc33002241r2g3evo.cka
#@	compiled at Fri Mar 27 09:50:31 2026

	.file "..\..\Srcode\app\vehicle_data_to_mpu\canMsgDynamicConfigure.c"

	$reg_mode 32
	.dbl_size 8

	.public _CanMsgDynamicConfigureInitialize
	.extern _CanMsgConfigureBufferAdd
	.extern _MpuHalTransmit
	.extern _SetCanMsgConfigureBufferValidData
	.public _CanMsgToCpuConfigureSyncCycleProcess

	.section .text, text
_PackGetCongureFromCpuRequest.1:
	.stack _PackGetCongureFromCpuRequest.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 38
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 41
	shr 0x00000008, r2
	st.b r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 42
	st.b r6, 0x00000001[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 43
	mov r7, r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 44
	st.b r7, 0x00000003[r8]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 45
	st.h r2, 0x00000000[r9]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 48
	jmp [r31]
_CanMsgDynamicConfigureInitialize:
	.stack _CanMsgDynamicConfigureInitialize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 103
	movhi HIGHW1(#_g_canMsgConfigureSyncMpuHandle.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 105
	st.h r6, LOWW(#_g_canMsgConfigureSyncMpuHandle.1)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 107
	jmp [r31]
_ParaseProtocalDataToCanConfigureBuffer.1:
	.stack _ParaseProtocalDataToCanConfigureBuffer.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 148
	prepare 0x00000071, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 157
	ld.b 0x00000002[r6], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 158
	shl 0x00000008, r20
	ld.bu 0x00000003[r6], r2
	or r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 159
	sxh r20
	mov 0x00000000, r21
	mov r6, r22
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 162
	mulhi 0x00000005, r21, r2
	add r22, r2
	ld.b 0x00000005[r2], r5
	shl 0x00000018, r5
	ld.bu 0x00000006[r2], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x00000007[r2], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x00000008[r2], r6
	or r6, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 163
	ld.b 0x00000004[r2], r2
	st.b r2, 0x00000004[r3]
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 164
	jarl _CanMsgConfigureBufferAdd, r31
	add 0x00000001, r21
.BB.LABEL.3_2:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 159
	mov r21, r2
	sxh r2
	cmp r20, r2
	blt9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 169
	mov r20, r10
	dispose 0x00000008, 0x00000071, [r31]
_ConfigureFromCpuSyncCycleProcess.1:
	.stack _ConfigureFromCpuSyncCycleProcess.1 = 96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 243
	prepare 0x00000071, 0x00000050
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 250
	movhi HIGHW1(#_g_canConfigureSyncState.2), r0, r2
	ld.w LOWW(#_g_canConfigureSyncState.2)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 254
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 256
	movhi HIGHW1(#_g_indexNumberMaxOneTime.5), r0, r2
	ld.hu LOWW(#_g_indexNumberMaxOneTime.5)[r2], r7
	movhi HIGHW1(#_g_canMsgIndex.3), r0, r2
	ld.hu LOWW(#_g_canMsgIndex.3)[r2], r6
	movea 0x0000000E, r3, r20
	movea 0x00000010, r3, r21
	mov r21, r8
	mov r20, r9
	jarl _PackGetCongureFromCpuRequest.1, r31
	mov 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 257
	st.b r22, 0x00000000[r3]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 258
	st.b r2, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 259
	st.b r2, 0x00000002[r3]
	movea 0x00000040, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 260
	st.h r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 261
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 262
	st.w r21, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 263
	movhi HIGHW1(#_g_canMsgConfigureSyncMpuHandle.1), r0, r2
	ld.h LOWW(#_g_canMsgConfigureSyncMpuHandle.1)[r2], r6
	mov r3, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 264
	movhi HIGHW1(#_g_timeOutCount.4), r0, r2
	st.w r0, LOWW(#_g_timeOutCount.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 265
	movhi HIGHW1(#_g_canConfigureSyncState.2), r0, r2
	st.w r22, LOWW(#_g_canConfigureSyncState.2)[r2]
	dispose 0x00000050, 0x00000071, [r31]
.BB.LABEL.4_3:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 267
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.4_13
.BB.LABEL.4_4:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 269
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_11
.BB.LABEL.4_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 271
	ld.bu 0x00000002[r6], r2
	andi 0x0000007F, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 272
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 275
	ld.hu 0x00000006[r6], r7
	ld.w 0x00000008[r6], r6
	jarl _ParaseProtocalDataToCanConfigureBuffer.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 276
	cmp 0x00000000, r10
	bn9 .BB.LABEL.4_13
.BB.LABEL.4_7:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 278
	movhi HIGHW1(#_g_indexNumberMaxOneTime.5), r0, r2
	ld.hu LOWW(#_g_indexNumberMaxOneTime.5)[r2], r2
	cmp r2, r10
	bge9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 280
	movhi HIGHW1(#_g_canMsgIndex.3), r0, r2
	st.h r0, LOWW(#_g_canMsgIndex.3)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 281
	jarl _SetCanMsgConfigureBufferValidData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 282
	movhi HIGHW1(#_g_canConfigureSyncState.2), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_g_canConfigureSyncState.2)[r2]
	dispose 0x00000050, 0x00000071, [r31]
.BB.LABEL.4_9:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 286
	movhi HIGHW1(#_g_canMsgIndex.3), r0, r5
	ld.h LOWW(#_g_canMsgIndex.3)[r5], r6
	add r2, r6
	st.h r6, LOWW(#_g_canMsgIndex.3)[r5]
	br9 .BB.LABEL.4_12
.BB.LABEL.4_10:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 293
	movhi HIGHW1(#_g_timeOutCount.4), r0, r2
	ld.w LOWW(#_g_timeOutCount.4)[r2], r5
	add r7, r5
	st.w r5, LOWW(#_g_timeOutCount.4)[r2]
	dispose 0x00000050, 0x00000071, [r31]
.BB.LABEL.4_11:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 298
	movhi HIGHW1(#_g_timeOutCount.4), r0, r2
	ld.w LOWW(#_g_timeOutCount.4)[r2], r5
	add r7, r5
	st.w r5, LOWW(#_g_timeOutCount.4)[r2]
	movea 0x000007D0, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 299
	cmp r2, r5
	bl9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 0
	movhi HIGHW1(#_g_canConfigureSyncState.2), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_canConfigureSyncState.2)[r2]
.BB.LABEL.4_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 321
	dispose 0x00000050, 0x00000071, [r31]
_CanMsgToCpuConfigureSyncCycleProcess:
	.stack _CanMsgToCpuConfigureSyncCycleProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 323
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgDynamicConfigure.c", 325
	jarl _ConfigureFromCpuSyncCycleProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 2
_g_canMsgConfigureSyncMpuHandle.1:
	.dhw 0xFFFF
	.align 4
_g_canConfigureSyncState.2:
	.ds (4)
	.align 2
_g_canMsgIndex.3:
	.ds (2)
	.align 4
_g_timeOutCount.4:
	.ds (4)
	.section .const, const
	.align 2
_g_indexNumberMaxOneTime.5:
	.dhw 0x000A
