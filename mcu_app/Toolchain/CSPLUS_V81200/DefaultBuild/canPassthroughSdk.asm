#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\canPassthroughSdk.c -oDefaultBuild\canPassthroughSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_be86689f7334446c96db794fb4b78bafy32r2n0i.ze2
#@	compiled at Fri Mar 27 09:50:44 2026

	.file "..\..\Srcode\sdk\source\canPassthroughSdk.c"

	$reg_mode 32
	.dbl_size 8

	.public _CanPassthroughWithMpuInit
	.extern _MpuHalOpen
	.extern _MpuHalSetRxFilter
	.extern _MpuHalSetRxBuffer
	.public _CanPassthrough_SendRequest
	.extern _MpuHalReceive
	.extern _memcpy
	.extern _LogHalPrint
	.extern _MpuHalTransmit
	.public _CanPassthrough_ReceiveResponse
	.public _CanPassthroughRead_PENDING
	.extern _memmove
	.public _CanPassthroughWrite_PENDING
	.public _CanPassthroughRoutine_PENDING

	.section .text, text
_CanPassthroughWithMpuInit:
	.stack _CanPassthroughWithMpuInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 35
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 38
	jarl _MpuHalOpen, r31
	movhi HIGHW1(#_g_mpuHandle.1), r0, r20
	st.h r10, LOWW(#_g_mpuHandle.1)[r20]
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 40
	st.b r2, 0x00000001[r3]
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 41
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 42
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 44
	ld.h LOWW(#_g_mpuHandle.1)[r20], r6
	movea 0x00000001, r3, r7
	jarl _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 45
	ld.h LOWW(#_g_mpuHandle.1)[r20], r6
	movea 0x000000C8, r0, r8
	mov #_g_recvDataBuffer.2, r7
	jarl _MpuHalSetRxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 47
	dispose 0x00000004, 0x00000041, [r31]
_CanPassthrough_SendRequest:
	.stack _CanPassthrough_SendRequest = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 51
	prepare 0x00000079, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 53
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 59
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov 0x00000000, r8
	mov #_g_respPack.4, r7
	jarl _MpuHalReceive, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_3:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 64
	mov #_g_reqPack.6, r22
	mov 0x00000005, r2
	st.b r2, 0x00000000[r22]
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 65
	st.b r2, 0x00000001[r22]
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 66
	st.b r2, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 67
	mov #_g_reqDataBuffer.5, r23
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 68
	st.w r23, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 69
	st.h r20, 0x00000006[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 71
	ld.bu 0x00000002[r23], r9
	ld.bu 0x00000001[r23], r8
	ld.bu 0x00000000[r23], r7
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 73
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov r22, r7
	jarl _MpuHalTransmit, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 75
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.2_4:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 76
	dispose 0x00000000, 0x00000079, [r31]
_CanPassthrough_ReceiveResponse:
	.stack _CanPassthrough_ReceiveResponse = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 79
	prepare 0x00000071, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 83
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 88
	mov #_g_respPack.4, r7
	mov #_g_respDataBuffer.3, r2
	st.w r2, 0x00000008[r7]
	movea 0x000000C8, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 89
	st.h r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 90
	st.h r0, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 93
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov 0x00000000, r8
	jarl _MpuHalReceive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 95
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	movhi HIGHW1(#_g_respPack.4+0x00000006), r0, r2
	ld.hu LOWW(#_g_respPack.4+0x00000006)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_4:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 98
	movhi HIGHW1(#_g_respPack.4), r0, r2
	ld.bu LOWW(#_g_respPack.4)[r2], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 97
	mov #_g_respPack.4, r2
	ld.bu 0x00000002[r2], r5
	andi 0x0000007F, r5, r5
	ld.bu 0x00000001[r2], r2
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	addi 0xFFFFFFDD, r5, r0
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_7:	; bb70
	movhi HIGHW1(#_g_reqDataBuffer.5), r0, r2
	ld.bu LOWW(#_g_reqDataBuffer.5)[r2], r2
	movhi HIGHW1(#_g_respDataBuffer.3), r0, r5
	ld.bu LOWW(#_g_respDataBuffer.3)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_8:	; bb84
	movhi HIGHW1(#_g_reqDataBuffer.5+0x00000001), r0, r2
	ld.bu LOWW(#_g_reqDataBuffer.5+0x00000001)[r2], r2
	movhi HIGHW1(#_g_respDataBuffer.3+0x00000001), r0, r5
	ld.bu LOWW(#_g_respDataBuffer.3+0x00000001)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_9:	; bb98
	movhi HIGHW1(#_g_reqDataBuffer.5+0x00000002), r0, r2
	ld.bu LOWW(#_g_reqDataBuffer.5+0x00000002)[r2], r2
	movhi HIGHW1(#_g_respDataBuffer.3+0x00000002), r0, r5
	ld.bu LOWW(#_g_respDataBuffer.3+0x00000002)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 105
	mov #_g_respPack.4, r22
	ld.hu 0x00000006[r22], r8
	ld.w 0x00000008[r22], r7
	mov r21, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 106
	ld.h 0x00000006[r22], r2
	st.h r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 107
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.3_11:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 112
	dispose 0x00000000, 0x00000071, [r31]
_CanPassthroughRead_PENDING:
	.stack _CanPassthroughRead_PENDING = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 115
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 120
	st.h r0, 0x00000002[r3]
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 122
	mov r22, r6
	jarl _CanPassthrough_ReceiveResponse, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 123
	movhi HIGHW1(#_cnt.7.CanPassthroughRead_PENDING), r0, r2
	ld.b LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 125
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	ld.hu 0x00000002[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 127
	ld.bu 0x00000000[r22], r20
	addi 0xFFFFFF81, r20, r0
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 129
	ld.hu 0x00000002[r3], r8
	cmp r21, r8
	bl9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 131
	sub r21, r8
	mov r21, r7
	add r22, r7
	mov r22, r6
	jarl _memmove, r31
.BB.LABEL.4_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 134
	movhi HIGHW1(#_cnt.7.CanPassthroughRead_PENDING), r0, r20
	st.b r0, LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r20]
	mov 0x00000000, r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.4_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 139
	ld.bu 0x00000002[r22], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 140
	movhi HIGHW1(#_cnt.7.CanPassthroughRead_PENDING), r0, r20
	st.b r0, LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r20]
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.4_7:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 146
	movhi HIGHW1(#_cnt.7.CanPassthroughRead_PENDING), r0, r2
	ld.bu LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r2], r2
	movea 0x0000004B, r0, r5
	divhu r5, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 148
	mov r20, r6
	mov r21, r7
	jarl _CanPassthrough_SendRequest, r31
.BB.LABEL.4_9:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 151
	movhi HIGHW1(#_cnt.7.CanPassthroughRead_PENDING), r0, r2
	ld.bu LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r2], r2
	addi 0xFFFFFF42, r2, r0
	blt9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 153
	movhi HIGHW1(#_cnt.7.CanPassthroughRead_PENDING), r0, r2
	st.b r0, LOWW(#_cnt.7.CanPassthroughRead_PENDING)[r2]
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 154
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.4_11:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 159
	dispose 0x00000004, 0x00000071, [r31]
_CanPassthroughWrite_PENDING:
	.stack _CanPassthroughWrite_PENDING = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 162
	prepare 0x00000061, 0x00000008
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 167
	st.h r0, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 168
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000003[r3]
	movea 0x00000006, r3, r7
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 170
	jarl _CanPassthrough_ReceiveResponse, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 171
	movhi HIGHW1(#_cnt.8.CanPassthroughWrite_PENDING), r0, r2
	ld.b LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 173
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	ld.hu 0x00000006[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 175
	ld.bu 0x00000003[r3], r20
	addi 0xFFFFFF81, r20, r0
	movhi HIGHW1(#_cnt.8.CanPassthroughWrite_PENDING), r0, r20
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 179
	st.b r0, LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r20]
	mov 0x00000000, r10
	dispose 0x00000008, 0x00000061, [r31]
.BB.LABEL.5_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 184
	ld.bu 0x00000005[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 185
	st.b r0, LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r20]
	dispose 0x00000008, 0x00000061, [r31]
.BB.LABEL.5_5:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 191
	movhi HIGHW1(#_cnt.8.CanPassthroughWrite_PENDING), r0, r2
	ld.bu LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r2], r2
	movea 0x0000004B, r0, r5
	divhu r5, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 193
	mov r20, r6
	mov r21, r7
	jarl _CanPassthrough_SendRequest, r31
.BB.LABEL.5_7:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 196
	movhi HIGHW1(#_cnt.8.CanPassthroughWrite_PENDING), r0, r2
	ld.bu LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r2], r2
	addi 0xFFFFFF42, r2, r0
	blt9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 198
	movhi HIGHW1(#_cnt.8.CanPassthroughWrite_PENDING), r0, r2
	st.b r0, LOWW(#_cnt.8.CanPassthroughWrite_PENDING)[r2]
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 199
	dispose 0x00000008, 0x00000061, [r31]
.BB.LABEL.5_9:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 203
	dispose 0x00000008, 0x00000061, [r31]
_CanPassthroughRoutine_PENDING:
	.stack _CanPassthroughRoutine_PENDING = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 206
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 212
	mov r22, r6
	mov r23, r7
	jarl _CanPassthrough_ReceiveResponse, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 213
	movhi HIGHW1(#_cnt.9.CanPassthroughRoutine_PENDING), r0, r2
	ld.b LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 215
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	ld.hu 0x00000000[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 217
	ld.bu 0x00000000[r22], r20
	addi 0xFFFFFF81, r20, r0
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_3:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 220
	ld.hu 0x00000000[r23], r8
	cmp 0x00000004, r8
	blt9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 222
	add 0xFFFFFFFC, r8
	addi 0x00000004, r22, r7
	mov r22, r6
	jarl _memmove, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 223
	ld.h 0x00000000[r23], r20
	add 0xFFFFFFFC, r20
	st.h r20, 0x00000000[r23]
.BB.LABEL.6_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 226
	movhi HIGHW1(#_cnt.9.CanPassthroughRoutine_PENDING), r0, r20
	st.b r0, LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r20]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.6_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 231
	ld.bu 0x00000002[r22], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 232
	movhi HIGHW1(#_cnt.9.CanPassthroughRoutine_PENDING), r0, r20
	st.b r0, LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r20]
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.6_7:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 238
	movhi HIGHW1(#_cnt.9.CanPassthroughRoutine_PENDING), r0, r2
	ld.bu LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r2], r2
	movea 0x0000004B, r0, r5
	divhu r5, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 240
	mov r20, r6
	mov r21, r7
	jarl _CanPassthrough_SendRequest, r31
.BB.LABEL.6_9:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 243
	movhi HIGHW1(#_cnt.9.CanPassthroughRoutine_PENDING), r0, r2
	ld.bu LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r2], r2
	addi 0xFFFFFF42, r2, r0
	blt9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 245
	movhi HIGHW1(#_cnt.9.CanPassthroughRoutine_PENDING), r0, r2
	st.b r0, LOWW(#_cnt.9.CanPassthroughRoutine_PENDING)[r2]
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 246
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.6_11:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/canPassthroughSdk.c", 251
	dispose 0x00000000, 0x00000079, [r31]
	.section .data, data
	.align 2
_g_mpuHandle.1:
	.dhw 0xFFFF
_g_recvDataBuffer.2:
	.ds (200)
_g_respDataBuffer.3:
	.ds (200)
_g_reqDataBuffer.5:
	.ds (100)
_cnt.7.CanPassthroughRead_PENDING:
	.ds (1)
_cnt.8.CanPassthroughWrite_PENDING:
	.ds (1)
_cnt.9.CanPassthroughRoutine_PENDING:
	.ds (1)
	.section .bss, bss
	.align 4
_g_respPack.4:
	.ds (12)
	.align 4
_g_reqPack.6:
	.ds (12)
	.section .const, const
.STR.1:
	.db 0x53,0x65,0x6E,0x64,0x20,0x50,0x61,0x73,0x73,0x74,0x68,0x72,0x6F,0x75,0x67,0x68
	.db 0x20,0x52,0x65,0x71,0x75,0x65,0x73,0x74,0x3A,0x20,0x25,0x30,0x32,0x58,0x20,0x25
	.db 0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x0D,0x0A
	.ds (1)
