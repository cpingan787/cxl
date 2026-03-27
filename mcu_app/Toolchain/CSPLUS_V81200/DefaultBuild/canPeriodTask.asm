#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\can_cycle_send\canPeriodTask.c -oDefaultBuild\canPeriodTask.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2ff1af8353d54adcadb94b3766519f3ehxu3atoa.51y
#@	compiled at Fri Mar 27 09:50:36 2026

	.file "..\..\Srcode\app\can_cycle_send\canPeriodTask.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_SendSignal
	.extern _StateSyncGetLocationInfo
	.extern _StateSyncGetSatelliteInfo
	.extern _Com_ReceiveSignal
	.public _CanPeriodGetVehTime
	.public _StateSyncgGetSatCanState
	.public _CanPeriodCycleProcess

	.section .text, text
_SendLocationDefaultInfo.1:
	.stack _SendLocationDefaultInfo.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 107
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 110
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r20
	movea 0x00000102, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 111
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x00000104, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 112
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x00000103, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 113
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x00000118, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 114
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000FE, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 115
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000FC, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 116
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x00000112, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 117
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x00000117, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 118
	mov r20, r7
	jarl _Com_SendSignal, r31
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 119
	st.b r2, 0x00000002[r3]
	movea 0x00000002, r3, r7
	movea 0x000000DC, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 120
	jarl _Com_SendSignal, r31
	movea 0x000000DA, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 121
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000D8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 122
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000CB, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 123
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000CA, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 124
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000CD, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 125
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000D9, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 126
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000D3, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 127
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000D2, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 128
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000D0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 129
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x0000011D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 130
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000CE, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 131
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000CF, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 132
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000F1, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 133
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000F2, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 134
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000F0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 135
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000F7, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 136
	mov r20, r7
	jarl _Com_SendSignal, r31
	dispose 0x00000004, 0x00000041, [r31]
_SendLocationInfo.1:
	.stack _SendLocationInfo.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 143
	prepare 0x00000071, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 145
	mov #_locationInfo.7, r6
	jarl _StateSyncGetLocationInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 148
	movhi HIGHW1(#_isFirstSend.9), r0, r2
	ld.bu LOWW(#_isFirstSend.9)[r2], r2
	cmp 0x00000005, r2
	mov r10, r20
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 150
	add 0x00000001, r2
	movhi HIGHW1(#_isFirstSend.9), r0, r5
	st.b r2, LOWW(#_isFirstSend.9)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 151
	jarl _SendLocationDefaultInfo.1, r31
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 153
	cmp 0xFFFFFFFF, r20
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_3:	; if_break_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 158
	mov #_locationInfo.7, r21
	addi 0x00000001, r21, r7
	movea 0x000000D1, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 159
	mov #_gnssSeq.8, r22
	movea 0x000000FD, r0, r6
	mov r22, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 160
	ld.w 0x00000000[r22], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 161
	movea 0x00000060, r21, r7
	movea 0x00000113, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 163
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	mov 0x00000003, r2
	br9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 168
	movhi HIGHW1(#_locationInfo.7+0x00000001), r0, r2
	ld.bu LOWW(#_locationInfo.7+0x00000001)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	mov 0x00000001, r2
.BB.LABEL.2_7:	; if_then_bb36
	st.b r2, 0x00000007[r3]
	br9 .BB.LABEL.2_11
.BB.LABEL.2_8:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 173
	movhi HIGHW1(#_locationInfo.7+0x00000002), r0, r2
	ld.bu LOWW(#_locationInfo.7+0x00000002)[r2], r2
	andi 0x0000003F, r2, r0
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	mov 0x00000002, r2
	br9 .BB.LABEL.2_7
.BB.LABEL.2_10:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 180
	st.b r0, 0x00000007[r3]
.BB.LABEL.2_11:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	movea 0x00000007, r3, r7
	movea 0x000000F8, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 183
	mov #_locationInfo.7, r20
	movea 0x00000025, r20, r7
	movea 0x000000CC, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 184
	movea 0x00000024, r20, r7
	movea 0x0000002A, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 185
	ld.h 0x0000003A[r20], r2
	st.h r2, 0x00000004[r3]
	movea 0x00000004, r3, r7
	movea 0x00000109, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 186
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 187
	ld.h 0x00000038[r20], r2
	st.h r2, 0x00000002[r3]
	movea 0x00000002, r3, r7
	movea 0x0000010D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 188
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 189
	ld.h 0x0000003C[r20], r2
	st.h r2, 0x00000000[r3]
	mov r3, r7
	movea 0x0000010B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 190
	jarl _Com_SendSignal, r31
.BB.LABEL.2_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 191
	dispose 0x00000008, 0x00000071, [r31]
_SendSatInfo.1:
	.stack _SendSatInfo.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 194
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 197
	movhi HIGHW1(#_g_isCanSending.2), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_isCanSending.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 208
	mov #_satelliteInfo.10, r20
	mov r20, r6
	jarl _StateSyncGetSatelliteInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 210
	ld.bu 0x00000000[r20], r2
	addi 0xFFFFFF80, r2, r0
	blt9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 212
	movhi HIGHW1(#_satelliteInfo.10), r0, r2
	movea 0x0000007F, r0, r5
	st.b r5, LOWW(#_satelliteInfo.10)[r2]
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 215
	movhi HIGHW1(#_satelliteInfo.10), r0, r2
	ld.bu LOWW(#_satelliteInfo.10)[r2], r20
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 217
	mov r20, r5
	divhu r2, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 220
	cmp 0x00000000, r2
	adf 0x0000000A, r0, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 222
	shl 0x00000004, r2
	movhi HIGHW1(#_svGroupCount.17.SendSatInfo.1), r0, r5
	ld.bu LOWW(#_svGroupCount.17.SendSatInfo.1)[r5], r6
	andi 0x0000000F, r6, r6
	or r6, r2
	st.b r2, LOWW(#_svGroupCount.17.SendSatInfo.1)[r5]
.BB.LABEL.3_3:	; bb314
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 225
	movhi HIGHW1(#_svGroupCount.17.SendSatInfo.1), r0, r2
	ld.bu LOWW(#_svGroupCount.17.SendSatInfo.1)[r2], r2
	andi 0x0000000F, r2, r5
	mulhi 0x00000014, r5, r5
	cmp r20, r5
	bge17 .BB.LABEL.3_14
.BB.LABEL.3_4:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 227
	mov #_svGroupCount.17.SendSatInfo.1, r7
	movea 0x00000029, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r21
	jr .BB.LABEL.3_12
.BB.LABEL.3_5:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 231
	andi 0x000000FF, r21, r5
	add r5, r2
	shl 0x00000003, r2
	mov #_satelliteInfo.10, r5
	add r2, r5
	ld.hu 0x00000002[r5], r2
	addi 0xFFFFFF80, r2, r0
	blt9 .BB.LABEL.3_8
.BB.LABEL.3_6:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	addi 0xFFFFFF81, r20, r0
	bgt9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 233
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r2
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r2
	shl 0x00000003, r2
	mov #_satelliteInfo.10, r5
	add r2, r5
	movea 0x0000007F, r0, r2
	st.h r2, 0x00000002[r5]
.BB.LABEL.3_8:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 235
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r2
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r2], r2
	andi 0x000000FF, r21, r5
	add r2, r5
	shl 0x00000003, r5
	mov #_satelliteInfo.10, r6
	add r5, r6
	ld.hu 0x00000002[r6], r5
	add 0x00000002, r6
	addi 0xFFFFFF80, r5, r0
	blt9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_break_bb89.bb120_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	movea 0x0000007F, r0, r2
	br9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; bb109
	andi 0x000000FF, r21, r5
	add r5, r2
	shl 0x00000003, r2
	mov #_satelliteInfo.10, r5
	add r2, r5
	ld.hu 0x00000002[r5], r2
.BB.LABEL.3_11:	; bb120
	st.h r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 236
	andi 0x000000FF, r21, r22
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r23
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r7
	add r22, r7
	mov #_satelliteID.3, r2
	add r22, r2
	ld.bu 0x00000000[r2], r6
	shl 0x00000003, r7
	mov #_satelliteInfo.10, r24
	add 0x00000002, r24
	add r24, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 237
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r7
	add r22, r7
	mov #_satelliteAz.6, r2
	add r22, r2
	ld.bu 0x00000000[r2], r6
	shl 0x00000003, r7
	add r24, r7
	add 0x00000006, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 238
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r7
	add r22, r7
	mov #_satelliteElv.5, r2
	add r22, r2
	ld.bu 0x00000000[r2], r6
	shl 0x00000003, r7
	add r24, r7
	add 0x00000004, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 239
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r2
	add r22, r2
	mov #_satelliteCNO.4, r5
	add r5, r22
	ld.bu 0x00000000[r22], r6
	shl 0x00000003, r2
	add r2, r24
	addi 0x00000002, r24, r7
	jarl _Com_SendSignal, r31
	add 0x00000001, r21
.BB.LABEL.3_12:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 229
	andi 0x000000FF, r21, r2
	addi 0xFFFFFFEC, r2, r0
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r2
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r2], r2
	blt17 .BB.LABEL.3_5
.BB.LABEL.3_13:	; bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 241
	movea 0x00000014, r2, r2
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r5
	st.b r2, LOWW(#_sentCount.18.SendSatInfo.1)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 242
	movhi HIGHW1(#_svGroupCount.17.SendSatInfo.1), r0, r2
	ld.b LOWW(#_svGroupCount.17.SendSatInfo.1)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_svGroupCount.17.SendSatInfo.1)[r2]
	jr .BB.LABEL.3_3
.BB.LABEL.3_14:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 244
	andi 0x0000000F, r2, r2
	mulhi 0x00000014, r2, r2
	cmp r20, r2
	blt17 .BB.LABEL.3_3
.BB.LABEL.3_15:	; if_then_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 246
	mov #_svGroupCount.17.SendSatInfo.1, r7
	movea 0x00000029, r0, r6
	jarl _Com_SendSignal, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.3_20
.BB.LABEL.3_16:	; bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 249
	andi 0x000000FF, r21, r5
	add r2, r5
	shl 0x00000003, r5
	mov #_satelliteInfo.10, r6
	add r5, r6
	ld.hu 0x00000002[r6], r5
	add 0x00000002, r6
	addi 0xFFFFFF80, r5, r0
	blt9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; bb206.bb237_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	movea 0x0000007F, r0, r2
	br9 .BB.LABEL.3_19
.BB.LABEL.3_18:	; bb226
	andi 0x000000FF, r21, r5
	add r5, r2
	shl 0x00000003, r2
	mov #_satelliteInfo.10, r5
	add r2, r5
	ld.hu 0x00000002[r5], r2
.BB.LABEL.3_19:	; bb237
	st.h r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 250
	andi 0x000000FF, r21, r22
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r23
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r7
	add r22, r7
	mov #_satelliteID.3, r2
	add r22, r2
	ld.bu 0x00000000[r2], r6
	shl 0x00000003, r7
	mov #_satelliteInfo.10, r24
	add 0x00000002, r24
	add r24, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 251
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r7
	add r22, r7
	mov #_satelliteAz.6, r2
	add r22, r2
	ld.bu 0x00000000[r2], r6
	shl 0x00000003, r7
	add r24, r7
	add 0x00000006, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 252
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r7
	add r22, r7
	mov #_satelliteElv.5, r2
	add r22, r2
	ld.bu 0x00000000[r2], r6
	shl 0x00000003, r7
	add r24, r7
	add 0x00000004, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 253
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r23], r2
	add r22, r2
	mov #_satelliteCNO.4, r5
	add r5, r22
	ld.bu 0x00000000[r22], r6
	shl 0x00000003, r2
	add r2, r24
	addi 0x00000002, r24, r7
	jarl _Com_SendSignal, r31
	add 0x00000001, r21
.BB.LABEL.3_20:	; bb299
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 247
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r2
	ld.bu LOWW(#_sentCount.18.SendSatInfo.1)[r2], r2
	mov r20, r5
	sub r2, r5
	andi 0x000000FF, r21, r6
	cmp r5, r6
	blt9 .BB.LABEL.3_16
.BB.LABEL.3_21:	; bb310
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 255
	movhi HIGHW1(#_sentCount.18.SendSatInfo.1), r0, r2
	st.b r0, LOWW(#_sentCount.18.SendSatInfo.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 256
	movhi HIGHW1(#_svGroupCount.17.SendSatInfo.1), r0, r2
	mov 0x00000001, r20
	st.b r20, LOWW(#_svGroupCount.17.SendSatInfo.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 261
	movhi HIGHW1(#_g_isCanSending.2), r0, r2
	st.b r0, LOWW(#_g_isCanSending.2)[r2]
	dispose 0x00000000, 0x00000479, [r31]
_RecvZXDTimeInfo.1:
	.stack _RecvZXDTimeInfo.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 267
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 269
	mov #_year.11, r20
	movea 0x00000174, r0, r6
	mov r20, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 270
	mov #_month.12, r21
	movea 0x00000175, r0, r6
	mov r21, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 271
	mov #_day.13, r22
	movea 0x00000176, r0, r6
	mov r22, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 272
	mov #_hour.14, r23
	movea 0x00000177, r0, r6
	mov r23, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 273
	mov #_min.15, r24
	movea 0x00000178, r0, r6
	mov r24, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 274
	mov #_sec.16, r25
	movea 0x00000179, r0, r6
	mov r25, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 275
	ld.b 0x00000000[r20], r2
	mov #_g_vehicleTime.1, r5
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 276
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 277
	ld.b 0x00000000[r22], r2
	st.b r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 278
	ld.b 0x00000000[r23], r2
	st.b r2, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 279
	ld.b 0x00000000[r24], r2
	st.b r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 280
	ld.b 0x00000000[r25], r2
	st.b r2, 0x00000005[r5]
	dispose 0x00000000, 0x00000679, [r31]
_CanPeriodGetVehTime:
	.stack _CanPeriodGetVehTime = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 292
	cmp 0x00000000, r6
	ld.w 0x00000004[r3], r2
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 294
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_2:	; entry
	cmp 0x00000000, r8
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_3:	; entry
	cmp 0x00000000, r9
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_4:	; entry
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; entry
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 298
	mov #_g_vehicleTime.1, r10
	ld.b 0x00000000[r10], r11
	st.b r11, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 299
	ld.b 0x00000001[r10], r6
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 300
	ld.b 0x00000002[r10], r6
	st.b r6, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 301
	ld.b 0x00000003[r10], r6
	st.b r6, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 302
	ld.b 0x00000004[r10], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 303
	ld.b 0x00000005[r10], r5
	st.b r5, 0x00000000[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 304
	jmp [r31]
.BB.LABEL.5_7:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 305
	jmp [r31]
_StateSyncgGetSatCanState:
	.stack _StateSyncgGetSatCanState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 318
	movhi HIGHW1(#_g_isCanSending.2), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 319
	ld.bu LOWW(#_g_isCanSending.2)[r2], r10
	jmp [r31]
_CanPeriodCycleProcess:
	.stack _CanPeriodCycleProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 330
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 332
	jarl _SendLocationInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 333
	jarl _SendSatInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 334
	jarl _RecvZXDTimeInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/can_cycle_send/canPeriodTask.c", 375
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
_g_vehicleTime.1:
	.ds (6)
	.align 4
_locationInfo.7:
	.ds (112)
	.section .data, data
_g_isCanSending.2:
	.ds (1)
_satelliteID.3:
	.db 0x9C,0x99,0x2E,0x2B,0x94,0x91,0xAC,0xA9,0x04,0x01,0x0C,0x09,0x14,0x11,0x1C,0x19
	.db 0xA4,0xA1,0x24,0x21
_satelliteCNO.4:
	.db 0x9F,0x9B,0x31,0x2D,0x97,0x93,0xAF,0xAB,0x07,0x03,0x0F,0x0B,0x17,0x13,0x1F,0x1B
	.db 0xA7,0xA3,0x27,0x23
_satelliteElv.5:
	.db 0x9E,0x9A,0x30,0x2C,0x96,0x92,0xAE,0xAA,0x06,0x02,0x0E,0x0A,0x16,0x12,0x1E,0x1A
	.db 0xA6,0xA2,0x26,0x22
_satelliteAz.6:
	.db 0xA0,0x9D,0x32,0x2F,0x98,0x95,0xB0,0xAD,0x08,0x05,0x10,0x0D,0x18,0x15,0x20,0x1D
	.db 0xA8,0xA5,0x28,0x25
	.align 4
_gnssSeq.8:
	.ds (4)
_isFirstSend.9:
	.ds (1)
	.align 2
_satelliteInfo.10:
	.ds (1018)
_year.11:
	.db 0x13
_month.12:
	.db 0x01
_day.13:
	.db 0x01
_hour.14:
	.ds (1)
_min.15:
	.ds (1)
_sec.16:
	.ds (1)
_svGroupCount.17.SendSatInfo.1:
	.db 0x01
_sentCount.18.SendSatInfo.1:
	.ds (1)
