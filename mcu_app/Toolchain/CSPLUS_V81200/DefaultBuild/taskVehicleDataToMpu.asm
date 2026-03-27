#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\vehicle_data_to_mpu\taskVehicleDataToMpu.c -oDefaultBuild\taskVehicleDataToMpu.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_70fb51f46edb47af9ce018df54c0d41ddao5hsj1.co2
#@	compiled at Fri Mar 27 09:50:34 2026

	.file "..\..\Srcode\app\vehicle_data_to_mpu\taskVehicleDataToMpu.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CanMsgTransmitToCpu
	.extern _Com_ReceiveSignalGroup
	.extern _Com_ReceiveSignal
	.public _GetVehicleInfor
	.public _CheckVehicleModeIsTransport
	.public _TaskVehicleDataToCpuInit
	.extern _MpuHalOpen
	.extern _MpuHalSetRxFilter
	.extern _MpuHalSetRxBuffer
	.extern _CanMsgTansmitToCpuInitialize
	.extern _CanMsgDynamicConfigureInitialize
	.public _TaskVehicleDataToCpu
	.extern _MpuHalReceive
	.extern _CanMsgToCpuConfigureSyncCycleProcess

	.section .text, text
_TboxCanRxCycleProcess.1:
	.stack _TboxCanRxCycleProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 21
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 24
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 26
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	jarl _CanMsgTransmitToCpu, r31
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 28
	jarl _Com_ReceiveSignalGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 35
	cmp 0x00000000, r10
	setf 0x0000000A, r2
	movhi HIGHW1(#_g_vehicleInfor.3), r0, r5
	st.b r2, LOWW(#_g_vehicleInfor.3)[r5]
	movea 0x00000003, r3, r7
	movea 0x000002E2, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 37
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 38
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 40
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_vehicleInfor.3+0x00000002), r0, r5
	st.b r2, LOWW(#_g_vehicleInfor.3+0x00000002)[r5]
.BB.LABEL.1_2:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r7
	movea 0x000002E3, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 42
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 43
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 45
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_vehicleInfor.3+0x00000001), r0, r5
	st.b r2, LOWW(#_g_vehicleInfor.3+0x00000001)[r5]
.BB.LABEL.1_4:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r7
	movea 0x000002E1, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 47
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 48
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 50
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_vehicleInfor.3+0x00000004), r0, r5
	st.b r2, LOWW(#_g_vehicleInfor.3+0x00000004)[r5]
.BB.LABEL.1_6:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r7
	movea 0x000002DE, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 52
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 53
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 55
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_vehicleInfor.3+0x00000003), r0, r5
	st.b r2, LOWW(#_g_vehicleInfor.3+0x00000003)[r5]
.BB.LABEL.1_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 66
	dispose 0x00000004, 0x00000001, [r31]
_GetVehicleInfor:
	.stack _GetVehicleInfor = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 68
	mov #_g_vehicleInfor.3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 70
	ld.b 0x00000000[r2], r5
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 71
	ld.b 0x00000002[r2], r5
	st.b r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 72
	ld.b 0x00000001[r2], r5
	st.b r5, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 73
	ld.b 0x00000004[r2], r5
	st.b r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 74
	ld.b 0x00000003[r2], r2
	st.b r2, 0x00000003[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 76
	jmp [r31]
_CheckVehicleModeIsTransport:
	.stack _CheckVehicleModeIsTransport = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 80
	movhi HIGHW1(#_g_vehicleInfor.3+0x00000004), r0, r2
	ld.bu LOWW(#_g_vehicleInfor.3+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	movhi HIGHW1(#_g_vehicleInfor.3+0x00000003), r0, r2
	ld.bu LOWW(#_g_vehicleInfor.3+0x00000003)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_break_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 84
	jmp [r31]
.BB.LABEL.3_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 85
	jmp [r31]
_TaskVehicleDataToCpuInit:
	.stack _TaskVehicleDataToCpuInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 90
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 98
	jarl _MpuHalOpen, r31
	movhi HIGHW1(#_g_mpuHandle.2), r0, r20
	st.h r10, LOWW(#_g_mpuHandle.2)[r20]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 99
	st.b r2, 0x00000001[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 100
	st.b r5, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 101
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 102
	ld.h LOWW(#_g_mpuHandle.2)[r20], r6
	movea 0x00000001, r3, r7
	jarl _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 103
	ld.h LOWW(#_g_mpuHandle.2)[r20], r6
	movea 0x0000012C, r0, r8
	mov #_g_mpuDriverRxBuffer.1, r7
	jarl _MpuHalSetRxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 105
	jarl _CanMsgTansmitToCpuInitialize, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 106
	ld.h LOWW(#_g_mpuHandle.2)[r20], r6
	jarl _CanMsgDynamicConfigureInitialize, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 114
	mov #_g_vehicleInfor.3, r2
	st.b r0, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 115
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 116
	st.b r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 117
	st.b r0, 0x00000003[r2]
	dispose 0x00000004, 0x00000041, [r31]
_TaskVehicleDataToCpu:
	.stack _TaskVehicleDataToCpu = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 120
	prepare 0x00000001, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 134
	jarl _TboxCanRxCycleProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 170
	st.h r0, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 171
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	mov 0x00000000, r8
	mov r3, r7
	jarl _MpuHalReceive, r31
	mov 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 172
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 174
	jarl _CanMsgToCpuConfigureSyncCycleProcess, r31
	dispose 0x0000000C, 0x00000001, [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/taskVehicleDataToMpu.c", 178
	jarl _CanMsgToCpuConfigureSyncCycleProcess, r31
	dispose 0x0000000C, 0x00000001, [r31]
	.section .bss, bss
_g_mpuDriverRxBuffer.1:
	.ds (300)
_g_vehicleInfor.3:
	.ds (5)
_g_mpuRxDataBuffer.4:
	.ds (100)
	.section .data, data
	.align 2
_g_mpuHandle.2:
	.dhw 0xFFFF
