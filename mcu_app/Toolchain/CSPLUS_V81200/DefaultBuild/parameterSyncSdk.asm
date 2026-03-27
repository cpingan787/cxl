#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\parameterSyncSdk.c -oDefaultBuild\parameterSyncSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_18ccbb7e1a5b4433bf5341f542c78259e1qwqolb.153
#@	compiled at Fri Mar 27 09:50:57 2026

	.file "..\..\Srcode\sdk\source\parameterSyncSdk.c"

	$reg_mode 32
	.dbl_size 8

	.extern _memset
	.public _ParameterSyncSdkInit
	.extern _memcpy
	.public _ParameterSyncSdkCycleProcess
	.extern _LogHalPrint
	.extern _ProjectConfigSetMpuVersion
	.extern _MpuHalTransmit
	.public _ParameterSyncSdkSetToCpu
	.public _ParameterSyncSdkGetFromCpuIsFinished
	.public _McuParameterWrite
	.extern _WorkFlashVehicleInforStore
	.public _McuParameterRead
	.public _IsFlashDataValid
	.extern _WorkFlashVehicleInforRead
	.extern _ProjectConfig_GetItemData

	.section .text, text
_ParameterSyncRequstGetAllParamPackage.1:
	.stack _ParameterSyncRequstGetAllParamPackage.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 99
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 104
	mov #_g_mpuDataPack.16, r20
	mov 0x00000001, r21
	st.b r21, 0x00000000[r20]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 105
	st.b r2, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 106
	st.b r21, 0x00000002[r20]
	movea 0x000000C8, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 108
	mov #_g_mpuDataBuffer.15, r23
	mov 0x00000000, r24
	mov r23, r6
	mov r24, r7
	mov r22, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 109
	st.h r22, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 110
	movhi HIGHW1(#_g_syncMpuParamSize.6), r0, r2
	ld.b LOWW(#_g_syncMpuParamSize.6)[r2], r2
	st.b r2, 0x00000000[r23]
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 115
	andi 0x0000FFFF, r21, r2
	add r2, r5
	andi 0x000000FF, r24, r2
	mov #_g_syncMpuParamIdList.5, r6
	add r2, r6
	ld.b 0x00000000[r6], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 116
	add 0x00000001, r24
	add 0x00000001, r21
.BB.LABEL.1_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 113
	movhi HIGHW1(#_g_syncMpuParamSize.6), r0, r2
	ld.bu LOWW(#_g_syncMpuParamSize.6)[r2], r2
	andi 0x000000FF, r24, r5
	cmp r2, r5
	mov #_g_mpuDataBuffer.15, r5
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 119
	mov #_g_mpuDataPack.16, r2
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 120
	st.h r21, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 122
	dispose 0x00000000, 0x00000479, [r31]
_ParameterSyncResponseGetParamPackage.1:
	.stack _ParameterSyncResponseGetParamPackage.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 133
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 137
	st.h r0, 0x00000002[r3]
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 139
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 144
	mov #_g_mpuDataPack.16, r21
	mov 0x00000001, r22
	st.b r22, 0x00000000[r21]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 145
	st.b r2, 0x00000001[r21]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 146
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 147
	mov #_g_mpuDataBuffer.15, r23
	movea 0x000000C8, r0, r8
	mov 0x00000000, r24
	mov r23, r6
	mov r24, r7
	jarl _memset, r31
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 148
	st.h r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 149
	ld.w 0x00000008[r20], r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r23]
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 154
	andi 0x0000FFFF, r22, r21
	add r5, r21
	andi 0x000000FF, r24, r5
	add 0x00000001, r5
	add r5, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 155
	ld.w 0x00000008[r20], r2
	add r5, r2
	ld.bu 0x00000000[r2], r6
	movhi HIGHW1(#_g_mcuParameterReadCbFunc.2), r0, r2
	ld.w LOWW(#_g_mcuParameterReadCbFunc.2)[r2], r2
	addi 0x00000002, r21, r7
	movea 0x00000002, r3, r23
	mov r23, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 156
	ld.b 0x00000000[r23], r2
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 157
	ld.bu 0x00000001[r21], r2
	add r2, r22
	add 0x00000002, r22
	add 0x00000001, r24
.BB.LABEL.2_3:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 152
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000000[r2], r5
	andi 0x000000FF, r24, r6
	cmp r5, r6
	mov #_g_mpuDataBuffer.15, r5
	bl9 .BB.LABEL.2_2
.BB.LABEL.2_4:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 160
	mov #_g_mpuDataPack.16, r2
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 161
	st.h r22, 0x00000006[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 163
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.2_5:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 164
	dispose 0x00000004, 0x00000479, [r31]
_ParameterSyncRequstSyncParamPackage.1:
	.stack _ParameterSyncRequstSyncParamPackage.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 174
	prepare 0x00000079, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 176
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 177
	mov #_g_syncParamToMpuPack.14, r21
	mov 0x00000001, r2
	st.b r2, 0x00000000[r21]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 178
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 179
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 181
	mov #_g_syncParamToMpuData.13, r22
	movea 0x00000040, r0, r23
	mov 0x00000000, r7
	mov r22, r6
	mov r23, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 183
	st.h r23, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 184
	st.b r20, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 186
	movhi HIGHW1(#_g_mcuParameterReadCbFunc.2), r0, r2
	ld.w LOWW(#_g_mcuParameterReadCbFunc.2)[r2], r2
	addi 0x00000002, r22, r7
	movea 0x00000002, r3, r23
	mov r20, r6
	mov r23, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 187
	ld.hu 0x00000002[r3], r2
	st.b r2, 0x00000001[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 188
	zxb r2
	add 0x00000002, r2
	st.h r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 189
	st.w r22, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 190
	ld.h 0x00000000[r23], r2
	st.h r2, 0x00000006[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 192
	dispose 0x00000004, 0x00000079, [r31]
_ParameterSyncResponseSyncParamPackage.1:
	.stack _ParameterSyncResponseSyncParamPackage.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 204
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 206
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 208
	mov #_g_mpuDataPack.16, r22
	mov 0x00000001, r2
	st.b r2, 0x00000000[r22]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 209
	st.b r2, 0x00000001[r22]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 210
	st.b r2, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 212
	mov #_g_mpuDataBuffer.15, r23
	movea 0x000000C8, r0, r24
	mov 0x00000000, r7
	mov r23, r6
	mov r24, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 214
	st.h r24, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 215
	cmp 0x00000001, r20
	setf 0x0000000A, r2
	st.b r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 216
	st.b r21, 0x00000001[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 217
	movhi HIGHW1(#_g_mcuParameterReadCbFunc.2), r0, r2
	ld.w LOWW(#_g_mcuParameterReadCbFunc.2)[r2], r2
	addi 0x00000003, r23, r7
	movea 0x00000002, r3, r20
	mov r21, r6
	mov r20, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 218
	ld.b 0x00000000[r20], r2
	st.b r2, 0x00000002[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 219
	ld.h 0x00000000[r20], r2
	add 0x00000003, r2
	st.h r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 220
	st.w r23, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 221
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000006[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 223
	dispose 0x00000004, 0x00000479, [r31]
_ParameterSyncSdkInit:
	.stack _ParameterSyncSdkInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 240
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 242
	cmp 0x00000000, r9
	ld.w 0x0000000C[r3], r20
	ld.w 0x00000008[r3], r2
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; entry
	cmp 0x00000000, r20
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 246
	movhi HIGHW1(#_g_cycleTime.4), r0, r5
	st.h r9, LOWW(#_g_cycleTime.4)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 247
	movhi HIGHW1(#_g_mpuHandle.1), r0, r5
	st.h r6, LOWW(#_g_mpuHandle.1)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 248
	movhi HIGHW1(#_g_mcuParameterReadCbFunc.2), r0, r5
	st.w r7, LOWW(#_g_mcuParameterReadCbFunc.2)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 249
	movhi HIGHW1(#_g_mcuParameterWriteCbFunc.3), r0, r5
	st.w r8, LOWW(#_g_mcuParameterWriteCbFunc.3)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 250
	mov #_g_syncMpuParamIdList.5, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 251
	movhi HIGHW1(#_g_syncMpuParamSize.6), r0, r2
	st.b r20, LOWW(#_g_syncMpuParamSize.6)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 253
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_4:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 254
	dispose 0x00000000, 0x00000041, [r31]
_ParameterSyncSdkCycleProcess:
	.stack _ParameterSyncSdkCycleProcess = 292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 264
	prepare 0x00000779, 0x0000007C
	movea 0xFFFFFF78, r3, r3
	movea 0x00000100, r0, r2
	mov 0x00000000, r5
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 268
	add r7, r2
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry
	st.b r5, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.6_2:	; entry
	cmp r7, r2
	bnz9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; entry
	st.b r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 269
	st.h r0, 0x00000002[r3]
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 275
	bz17 .BB.LABEL.6_36
.BB.LABEL.6_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 277
	ld.bu 0x00000002[r20], r2
	ld.bu 0x00000001[r20], r8
	ld.bu 0x00000000[r20], r7
	andi 0x0000007F, r2, r9
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 278
	ld.bu 0x00000002[r20], r2
	andi 0x0000007F, r2, r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_5:	; if_then_bb.bb114_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0x00000000, r21
	mov 0x00000001, r22
	br9 .BB.LABEL.6_15
.BB.LABEL.6_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 284
	andi 0x0000FFFF, r22, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 285
	ld.bu 0x00000001[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 288
	ld.bu 0x00000000[r23], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 286
	add 0x00000002, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 288
	mov r25, r6
	mov r23, r7
	mov r24, r8
	jarl _IsValidParamData.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_7:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 291
	movhi HIGHW1(#_g_mcuParameterReadCbFunc.2), r0, r2
	ld.w LOWW(#_g_mcuParameterReadCbFunc.2)[r2], r2
	movea 0x00000004, r3, r26
	movea 0x00000002, r3, r8
	mov r25, r6
	mov r26, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 292
	ld.hu 0x00000002[r3], r7
	mov r26, r6
	jarl _IsFlashDataValid, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_12
.BB.LABEL.6_8:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 294
	cmp 0x0000000E, r25
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 296
	mov r23, r6
	mov r24, r7
	jarl _ProjectConfigSetMpuVersion, r31
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 302
	movhi HIGHW1(#_g_mcuParameterWriteCbFunc.3), r0, r2
	ld.w LOWW(#_g_mcuParameterWriteCbFunc.3)[r2], r2
	mov r25, r6
	mov r23, r7
	mov r24, r8
	jarl [r2], r31
.BB.LABEL.6_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 304
	mov #.STR.1454, r6
	br9 .BB.LABEL.6_14
.BB.LABEL.6_12:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 309
	mov #.STR.1455, r6
	br9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 315
	mov #.STR.1456, r6
.BB.LABEL.6_14:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov r25, r7
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 318
	add r24, r22
	add 0x00000002, r22
	add 0x00000001, r21
.BB.LABEL.6_15:	; bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 282
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000000[r2], r5
	andi 0x000000FF, r21, r6
	cmp r5, r6
	bl9 .BB.LABEL.6_6
.BB.LABEL.6_16:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 320
	movhi HIGHW1(#_g_syncMpuParamResultFlag.8), r0, r2
	mov 0x00000001, r20
	st.b r20, LOWW(#_g_syncMpuParamResultFlag.8)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 321
	movhi HIGHW1(#_g_syncMpuParamTimeCount.9), r0, r2
	st.h r0, LOWW(#_g_syncMpuParamTimeCount.9)[r2]
	jr .BB.LABEL.6_36
.BB.LABEL.6_17:	; if_else_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 323
	andi 0x0000007F, r2, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_20
.BB.LABEL.6_18:	; if_then_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 325
	movhi HIGHW1(#_g_syncMpuParamResultFlag.8), r0, r2
	ld.bu LOWW(#_g_syncMpuParamResultFlag.8)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_36
.BB.LABEL.6_19:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 327
	mov r20, r6
	jarl _ParameterSyncResponseGetParamPackage.1, r31
	br9 .BB.LABEL.6_35
.BB.LABEL.6_20:	; if_else_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 331
	andi 0x0000007F, r2, r5
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.6_24
.BB.LABEL.6_21:	; if_then_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 333
	movhi HIGHW1(#_g_syncParamToMpuRequstFlag.10), r0, r2
	ld.bu LOWW(#_g_syncParamToMpuRequstFlag.10)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_36
.BB.LABEL.6_22:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 335
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_36
.BB.LABEL.6_23:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 337
	movhi HIGHW1(#_g_syncParamToMpuRequstFlag.10), r0, r2
	st.b r0, LOWW(#_g_syncParamToMpuRequstFlag.10)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 338
	movhi HIGHW1(#_g_syncParamToMpuRequstCount.12), r0, r2
	st.b r0, LOWW(#_g_syncParamToMpuRequstCount.12)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 339
	movhi HIGHW1(#_g_syncParamToMpuTimeCount.11), r0, r2
	st.h r0, LOWW(#_g_syncParamToMpuTimeCount.11)[r2]
	br9 .BB.LABEL.6_36
.BB.LABEL.6_24:	; if_else_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 343
	andi 0x0000007F, r2, r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.6_36
.BB.LABEL.6_25:	; if_then_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 345
	ld.w 0x00000008[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 346
	ld.bu 0x00000001[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 349
	ld.bu 0x00000000[r20], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 347
	add 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 349
	mov r22, r6
	mov r20, r7
	mov r21, r8
	jarl _IsValidParamData.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_32
.BB.LABEL.6_26:	; if_then_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 352
	movhi HIGHW1(#_g_mcuParameterReadCbFunc.2), r0, r2
	ld.w LOWW(#_g_mcuParameterReadCbFunc.2)[r2], r2
	movea 0x00000004, r3, r23
	movea 0x00000002, r3, r8
	mov r22, r6
	mov r23, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 353
	ld.hu 0x00000002[r3], r7
	mov r23, r6
	jarl _IsFlashDataValid, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_31
.BB.LABEL.6_27:	; if_then_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 355
	cmp 0x0000000E, r22
	bnz9 .BB.LABEL.6_29
.BB.LABEL.6_28:	; if_then_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 357
	mov r20, r6
	mov r21, r7
	jarl _ProjectConfigSetMpuVersion, r31
	br9 .BB.LABEL.6_30
.BB.LABEL.6_29:	; if_else_bb232
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 363
	movhi HIGHW1(#_g_mcuParameterWriteCbFunc.3), r0, r2
	ld.w LOWW(#_g_mcuParameterWriteCbFunc.3)[r2], r2
	mov r22, r6
	mov r20, r7
	mov r21, r8
	jarl [r2], r31
.BB.LABEL.6_30:	; if_break_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 365
	mov #.STR.1457, r6
	mov r22, r7
	jarl _LogHalPrint, r31
	mov 0x00000001, r6
	br9 .BB.LABEL.6_34
.BB.LABEL.6_31:	; if_else_bb243
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 371
	mov #.STR.1458, r6
	br9 .BB.LABEL.6_33
.BB.LABEL.6_32:	; if_else_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 378
	mov #.STR.1459, r6
.BB.LABEL.6_33:	; if_else_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov r22, r7
	jarl _LogHalPrint, r31
	mov 0x00000000, r6
.BB.LABEL.6_34:	; if_else_bb248
	mov r22, r7
	jarl _ParameterSyncResponseSyncParamPackage.1, r31
.BB.LABEL.6_35:	; if_break_bb252
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov #_g_mpuDataPack.16, r7
	jarl _MpuHalTransmit, r31
.BB.LABEL.6_36:	; if_break_bb260
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 390
	movhi HIGHW1(#_g_syncMpuParamResultFlag.8), r0, r2
	ld.bu LOWW(#_g_syncMpuParamResultFlag.8)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_41
.BB.LABEL.6_37:	; if_then_bb266
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 392
	movhi HIGHW1(#_g_syncMpuParamTimeCount.9), r0, r2
	ld.h LOWW(#_g_syncMpuParamTimeCount.9)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_syncMpuParamTimeCount.9)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 393
	movhi HIGHW1(#_g_syncMpuParamRequstFlag.7), r0, r2
	ld.bu LOWW(#_g_syncMpuParamRequstFlag.7)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_40
.BB.LABEL.6_38:	; bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_41
.BB.LABEL.6_39:	; bb278
	movhi HIGHW1(#_g_cycleTime.4), r0, r2
	ld.hu LOWW(#_g_cycleTime.4)[r2], r2
	movea 0x000003E8, r0, r5
	divhu r2, r5, r0
	movhi HIGHW1(#_g_syncMpuParamTimeCount.9), r0, r2
	ld.hu LOWW(#_g_syncMpuParamTimeCount.9)[r2], r2
	cmp r5, r2
	blt9 .BB.LABEL.6_41
.BB.LABEL.6_40:	; if_then_bb300
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 395
	jarl _ParameterSyncRequstGetAllParamPackage.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 396
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov #_g_mpuDataPack.16, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 397
	movhi HIGHW1(#_g_syncMpuParamRequstFlag.7), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_syncMpuParamRequstFlag.7)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 398
	movhi HIGHW1(#_g_syncMpuParamTimeCount.9), r0, r2
	st.h r0, LOWW(#_g_syncMpuParamTimeCount.9)[r2]
.BB.LABEL.6_41:	; if_break_bb304
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 401
	movhi HIGHW1(#_g_syncMpuParamResultFlag.8), r0, r2
	ld.bu LOWW(#_g_syncMpuParamResultFlag.8)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_46
.BB.LABEL.6_42:	; bb309
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	movhi HIGHW1(#_g_syncParamToMpuRequstFlag.10), r0, r2
	ld.bu LOWW(#_g_syncParamToMpuRequstFlag.10)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_46
.BB.LABEL.6_43:	; if_then_bb322
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 403
	movhi HIGHW1(#_g_syncParamToMpuTimeCount.11), r0, r2
	ld.h LOWW(#_g_syncParamToMpuTimeCount.11)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_syncParamToMpuTimeCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 404
	movhi HIGHW1(#_g_cycleTime.4), r0, r2
	ld.hu LOWW(#_g_cycleTime.4)[r2], r2
	movea 0x000003E8, r0, r6
	divhu r2, r6, r0
	zxh r5
	cmp r6, r5
	ble9 .BB.LABEL.6_46
.BB.LABEL.6_44:	; if_then_bb333
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 406
	movhi HIGHW1(#_g_syncParamToMpuRequstCount.12), r0, r2
	ld.b LOWW(#_g_syncParamToMpuRequstCount.12)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_g_syncParamToMpuRequstCount.12)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 407
	zxb r5
	cmp 0x00000002, r5
	bgt9 .BB.LABEL.6_46
.BB.LABEL.6_45:	; if_then_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 409
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov #_g_syncParamToMpuPack.14, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 410
	movhi HIGHW1(#_g_syncParamToMpuTimeCount.11), r0, r2
	st.h r0, LOWW(#_g_syncParamToMpuTimeCount.11)[r2]
.BB.LABEL.6_46:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	movea 0x00000088, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 416
	dispose 0x0000007C, 0x00000779, [r31]
_ParameterSyncSdkSetToCpu:
	.stack _ParameterSyncSdkSetToCpu = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 429
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 434
	cmp 0x00000000, r7
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 439
	jarl _ParameterSyncRequstSyncParamPackage.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 440
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	mov #_g_syncParamToMpuPack.14, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 441
	movhi HIGHW1(#_g_syncParamToMpuTimeCount.11), r0, r2
	st.h r0, LOWW(#_g_syncParamToMpuTimeCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 442
	movhi HIGHW1(#_g_syncParamToMpuRequstFlag.10), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_syncParamToMpuRequstFlag.10)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 443
	movhi HIGHW1(#_g_syncParamToMpuRequstCount.12), r0, r2
	st.b r0, LOWW(#_g_syncParamToMpuRequstCount.12)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 458
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_3:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 459
	dispose 0x00000000, 0x00000001, [r31]
_ParameterSyncSdkGetFromCpuIsFinished:
	.stack _ParameterSyncSdkGetFromCpuIsFinished = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 472
	movhi HIGHW1(#_g_syncMpuParamResultFlag.8), r0, r2
	ld.bu LOWW(#_g_syncMpuParamResultFlag.8)[r2], r2
	cmp 0x00000001, r2
	mov 0xFFFFFFFF, r2
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 473
	jmp [r31]
_McuMpuSync_ParamCheck.1:
	.stack _McuMpuSync_ParamCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 489
	addi 0xFFFFFFEC, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 492
	bgt9 .BB.LABEL.9_7
.BB.LABEL.9_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.9_7
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 498
	mov r6, r2
	shl 0x00000004, r2
	mov #_g_paramMappingTable.17, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 499
	cmp 0x00000002, r2
	bz9 .BB.LABEL.9_7
.BB.LABEL.9_3:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 505
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 507
	shl 0x00000004, r6
	mov #_g_paramMappingTable.17, r2
	add r6, r2
	ld.w 0x0000000C[r2], r2
	st.w r2, 0x00000000[r9]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.9_5:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 509
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 511
	shl 0x00000004, r6
	mov #_g_paramMappingTable.17, r2
	add r6, r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r8]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.9_7:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 520
	jmp [r31]
_McuParameterWrite:
	.stack _McuParameterWrite = 72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 535
	prepare 0x00000079, 0x00000034
	mov r7, r20
	mov r8, r21
	movea 0x00000028, r3, r9
	movea 0x0000002C, r3, r8
	movea 0x00000030, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 542
	jarl _McuMpuSync_ParamCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 543
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_8
.BB.LABEL.10_1:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	ld.w 0x00000030[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_8
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 549
	ld.w 0x0000002C[r3], r6
	cmp 0x00000006, r6
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	movea 0x00000025, r0, r22
	movea 0x00000003, r3, r23
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 551
	mov r22, r5
	add r23, r5
	mov r23, r6
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb29
	st.b r2, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.10_5:	; if_then_bb29
	cmp r6, r5
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_6:	; if_then_bb29
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 552
	movea 0x00000018, r3, r6
	mov r20, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 553
	ld.w 0x0000002C[r3], r6
	mov r23, r7
	mov r22, r8
	jarl _WorkFlashVehicleInforStore, r31
	dispose 0x00000034, 0x00000079, [r31]
.BB.LABEL.10_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 557
	mov r20, r7
	mov r21, r8
	jarl _WorkFlashVehicleInforStore, r31
.BB.LABEL.10_8:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 563
	dispose 0x00000034, 0x00000079, [r31]
_McuParameterRead:
	.stack _McuParameterRead = 80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 578
	prepare 0x00000079, 0x0000003C
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 580
	st.w r0, 0x00000038[r3]
	movea 0x0000002C, r3, r9
	movea 0x00000030, r3, r8
	movea 0x00000034, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 586
	jarl _McuMpuSync_ParamCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 587
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_12
.BB.LABEL.11_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 591
	ld.w 0x00000034[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 593
	ld.w 0x00000030[r3], r6
	cmp 0x00000006, r6
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	movea 0x00000007, r3, r7
	movea 0x00000025, r0, r2
	mov 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 595
	add r7, r2
	mov r7, r8
	br9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb26
	st.b r5, 0x00000000[r8]
	add 0x00000001, r8
.BB.LABEL.11_5:	; if_then_bb26
	cmp r8, r2
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_6:	; if_then_bb26
	st.b r0, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 596
	st.w r0, 0x00000000[r3]
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 597
	jarl _WorkFlashVehicleInforRead, r31
	mov r10, r22
	mov 0x0000000F, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 598
	movea 0x0000001C, r3, r7
	mov r20, r6
	mov r23, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 599
	st.w r23, 0x00000038[r3]
	mov r22, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	movea 0x00000038, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 603
	mov r20, r7
	jarl _WorkFlashVehicleInforRead, r31
	br9 .BB.LABEL.11_11
.BB.LABEL.11_8:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 606
	cmp 0x00000001, r2
	bz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_else_bb40.if_break_bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 608
	ld.w 0x0000002C[r3], r6
	movea 0x00000038, r3, r8
	mov r20, r7
	jarl _ProjectConfig_GetItemData, r31
.BB.LABEL.11_11:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 615
	ld.w 0x00000038[r3], r2
	st.h r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 582
	sxh r10
.BB.LABEL.11_12:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 618
	dispose 0x0000003C, 0x00000079, [r31]
_IsFlashDataValid:
	.stack _IsFlashDataValid = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 630
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 632
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.bb54_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0x00000001, r2
	mov 0x00000000, r5
	mov r2, r8
	br9 .BB.LABEL.12_6
.BB.LABEL.12_2:	; entry.bb84_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.12_11
.BB.LABEL.12_3:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 640
	andi 0x0000FFFF, r5, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 641
	cmp 0x00000000, r9
	cmov 0x0000000A, 0x00000000, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 640
	addi 0xFFFFFF01, r9, r0
	cmov 0x0000000A, 0x00000000, r8, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 643
	andi 0x000000FF, r8, r0
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_5:	; if_break_bb51
	add 0x00000001, r5
.BB.LABEL.12_6:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 638
	andi 0x0000FFFF, r5, r9
	cmp r7, r9
	bl9 .BB.LABEL.12_3
.BB.LABEL.12_7:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 649
	andi 0x000000FF, r8, r0
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_8:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_9:	; if_break_bb82
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 654
	jmp [r31]
.BB.LABEL.12_10:	; bb10.bb84_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0x00000001, r10
.BB.LABEL.12_11:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 655
	jmp [r31]
_IsValidParamData.1:
	.stack _IsValidParamData.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 668
	mov 0x00000000, r2
	br9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 681
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_g_paramWriteCheck.18, r9
	add r5, r9
	ld.w 0x00000000[r9], r5
	cmp r5, r6
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 683
	zxb r2
	shl 0x00000003, r2
	mov #_g_paramWriteCheck.18, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 685
	ld.hu 0x00000004[r5], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	add 0x00000001, r2
.BB.LABEL.13_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 679
	andi 0x000000FF, r2, r5
	movea 0x00000015, r0, r9
	cmp r9, r5
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_5:	; bb30.bb37_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0x00000001, r5
	mov 0x00000000, r2
.BB.LABEL.13_6:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 689
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.13_22
.BB.LABEL.13_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 691
	cmp r8, r2
	bz9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; if_then_bb43.bb234_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.13_24
.BB.LABEL.13_9:	; if_then_bb43.bb167_crit_edge
	mov 0x00000001, r2
	mov 0x00000000, r5
	mov r2, r6
	mov r2, r9
	mov r2, r10
	mov r2, r11
	br9 .BB.LABEL.13_16
.BB.LABEL.13_10:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 698
	andi 0x0000FFFF, r5, r12
	add r7, r12
	ld.bu 0x00000000[r12], r12
	addi 0xFFFFFF01, r12, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 707
	cmov 0x0000000A, 0x00000000, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 698
	addi 0xFFFFFFCF, r12, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 705
	cmov 0x0000000A, 0x00000000, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 702
	addi 0xFFFFFFD0, r12, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 703
	cmov 0x0000000A, 0x00000000, r9, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 700
	cmp 0x00000001, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 701
	cmov 0x0000000A, 0x00000000, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 698
	cmp 0x00000000, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 699
	cmov 0x0000000A, 0x00000000, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 709
	andi 0x000000FF, r11, r0
	bnz9 .BB.LABEL.13_15
.BB.LABEL.13_11:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.13_15
.BB.LABEL.13_12:	; bb54
	andi 0x000000FF, r9, r0
	bnz9 .BB.LABEL.13_15
.BB.LABEL.13_13:	; bb54
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.13_15
.BB.LABEL.13_14:	; bb54
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.13_23
.BB.LABEL.13_15:	; if_break_bb164
	add 0x00000001, r5
.BB.LABEL.13_16:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 696
	andi 0x0000FFFF, r5, r12
	cmp r8, r12
	bl9 .BB.LABEL.13_10
.BB.LABEL.13_17:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 715
	andi 0x000000FF, r11, r0
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_18:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_19:	; bb175
	andi 0x000000FF, r9, r0
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_20:	; bb175
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_21:	; bb175
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_22:	; if_break_bb232
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 721
	jmp [r31]
.BB.LABEL.13_23:	; bb54.bb234_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 0
	mov 0x00000001, r10
.BB.LABEL.13_24:	; bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/parameterSyncSdk.c", 722
	jmp [r31]
	.section .data, data
	.align 2
_g_mpuHandle.1:
	.dhw 0xFFFF
	.align 4
_g_mcuParameterReadCbFunc.2:
	.ds (4)
	.align 4
_g_mcuParameterWriteCbFunc.3:
	.ds (4)
	.align 2
_g_cycleTime.4:
	.ds (2)
_g_syncMpuParamIdList.5:
	.ds (26)
_g_syncMpuParamSize.6:
	.ds (1)
_g_syncMpuParamRequstFlag.7:
	.ds (1)
_g_syncMpuParamResultFlag.8:
	.ds (1)
	.align 2
_g_syncMpuParamTimeCount.9:
	.ds (2)
_g_syncParamToMpuRequstFlag.10:
	.ds (1)
	.align 2
_g_syncParamToMpuTimeCount.11:
	.ds (2)
_g_syncParamToMpuRequstCount.12:
	.ds (1)
_g_syncParamToMpuData.13:
	.ds (64)
_g_mpuDataBuffer.15:
	.ds (200)
	.section .bss, bss
	.align 4
_g_syncParamToMpuPack.14:
	.ds (12)
	.align 4
_g_mpuDataPack.16:
	.ds (12)
	.section .const, const
	.align 4
_g_paramMappingTable.17:
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0x00000027
	.dw 0x00000001
	.ds (4)
	.dw 0x00000001
	.dw 0x00000027
	.ds (16)
	.dw 0x00000003
	.ds (4)
	.dw 0x00000002
	.dw 0x00000027
	.dw 0x00000004
	.ds (4)
	.dw 0x00000003
	.dw 0x00000027
	.dw 0x00000005
	.ds (4)
	.dw 0x00000004
	.dw 0x00000027
	.dw 0x00000006
	.ds (4)
	.dw 0x00000005
	.dw 0x00000027
	.ds (64)
	.dw 0x0000000B
	.ds (4)
	.dw 0x00000006
	.dw 0x00000027
	.ds (32)
	.dw 0x0000000E
	.dw 0x00000001
	.dw 0x0000000D
	.dw 0x00000024
	.dw 0x0000000F
	.dw 0x00000001
	.dw 0x0000000D
	.dw 0x00000025
	.dw 0x00000010
	.dw 0x00000001
	.dw 0x0000000D
	.dw 0x00000026
	.ds (16)
	.dw 0x00000012
	.ds (4)
	.dw 0x0000000A
	.dw 0x00000027
	.dw 0x00000013
	.ds (4)
	.dw 0x0000000B
	.dw 0x00000027
	.dw 0x00000014
	.ds (4)
	.dw 0x0000000C
	.dw 0x00000027
	.align 4
_g_paramWriteCheck.18:
	.ds (4)
	.dhw 0x0014
	.ds (2)
	.dw 0x00000001
	.dhw 0x0018
	.ds (2)
	.ds (8)
	.dw 0x00000003
	.dhw 0x0010
	.ds (2)
	.dw 0x00000004
	.dhw 0x0011
	.ds (2)
	.ds (48)
	.dw 0x0000000B
	.dhw 0x000F
	.ds (2)
	.ds (16)
	.dw 0x0000000E
	.dhw 0x0003
	.ds (2)
	.dw 0x0000000F
	.dhw 0x0003
	.ds (2)
	.dw 0x00000010
	.dhw 0x0003
	.ds (2)
	.ds (8)
	.dw 0x00000012
	.dhw 0x0003
	.ds (2)
	.dw 0x00000013
	.dhw 0x0005
	.ds (2)
	.dw 0x00000014
	.dhw 0x0005
	.ds (2)
.STR.1:
	.db 0x50,0x61,0x72,0x61,0x6D,0x65,0x74,0x65,0x72,0x20,0x73,0x79,0x6E,0x63,0x20,0x3A
	.db 0x20,0x61,0x69,0x64,0x20,0x25,0x64,0x20,0x2C,0x6D,0x69,0x64,0x20,0x25,0x64,0x2C
	.db 0x20,0x73,0x75,0x62,0x63,0x6F,0x6D,0x6D,0x6F,0x6E,0x64,0x20,0x25,0x64,0x0D,0x0A
	.ds (1)
.STR.1454:
	.db 0x63,0x68,0x61,0x6E,0x67,0x65,0x20,0x70,0x61,0x72,0x61,0x6D,0x20,0x25,0x64,0x0D
	.db 0x0A
	.ds (1)
.STR.1455:
	.db 0x70,0x61,0x72,0x61,0x6D,0x20,0x25,0x64,0x20,0x68,0x61,0x73,0x20,0x76,0x61,0x6C
	.db 0x75,0x65,0x0D,0x0A
	.ds (1)
.STR.1456:
	.db 0x70,0x61,0x72,0x61,0x6D,0x64,0x61,0x74,0x61,0x20,0x65,0x72,0x72,0x6F,0x72,0x20
	.db 0x25,0x64,0x0D,0x0A
	.ds (1)
.STR.1457:
	.db 0x63,0x68,0x61,0x6E,0x67,0x65,0x20,0x70,0x61,0x72,0x61,0x6D,0x20,0x25,0x64,0x0D
	.db 0x0A
	.ds (1)
.STR.1458:
	.db 0x70,0x61,0x72,0x61,0x6D,0x20,0x25,0x64,0x20,0x68,0x61,0x73,0x20,0x76,0x61,0x6C
	.db 0x75,0x65,0x0D,0x0A
	.ds (1)
.STR.1459:
	.db 0x70,0x61,0x72,0x61,0x6D,0x64,0x61,0x74,0x61,0x20,0x65,0x72,0x72,0x6F,0x72,0x20
	.db 0x25,0x64,0x0D,0x0A
	.ds (1)
