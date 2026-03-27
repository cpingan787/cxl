#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\DcmDsp.c -oDefaultBuild\DcmDsp.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_94307d711ea343ea8bc4fe4072abc8b0avlqyrpr.rxq
#@	compiled at Fri Mar 27 09:50:34 2026

	.file "..\..\Bsw\Communication\Common\Dcm\DcmDsp.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.public _DspInternal_DcmConfirmation
	.extern _SchM_Enter_Dcm_ExclusiveArea
	.extern _SchM_Exit_Dcm_ExclusiveArea
	.extern _Dcm_ResetTime
	.extern _DspInternal_DcmConfirmation_0x27
	.extern _DspInternal_DcmConfirmation_0x10
	.extern _DspInternal_DcmConfirmation_0x11
	.extern _DslInternal_ResetResource
	.public _Dcm_UdsSubServicesCheck
	.extern _DsdInternal_SearchSidTabServiceIndex
	.extern _DsdInternal_SearchSidTabSubServiceIndex

	.section .text, text
_DspInternal_DcmConfirmation:
	.stack _DspInternal_DcmConfirmation = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 64
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 71
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 73
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r20
	add r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 76
	ld.bu 0x00000002[r20], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 73
	ld.bu 0x00000007[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 76
	add 0x00000002, r20
	addi 0xFFFFFF88, r5, r0
	mov r6, r22
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 72
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 80
	ld.bu 0x00000006[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 79
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 80
	mulhi 0x00000014, r24, r2
	mov #_Dcm_ChannelCtrl, r5
	add r5, r2
	mov 0x00000001, r6
	st.w r6, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 81
	mulhi 0x00000014, r21, r2
	add r2, r5
	st.w r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 82
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 83
	st.w r0, 0x00000008[r5]
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 84
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 85
	st.b r0, 0x00000003[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 86
	st.w r0, 0x00000008[r23]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 87
	st.w r2, 0x00000038[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 89
	ld.b 0x00000030[r23], r2
	add 0x00000001, r2
	st.b r2, 0x00000030[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 90
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 89
	movea 0x00000028, r23, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 91
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 92
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 93
	mulhi 0x0000001C, r22, r22
	mov #_Dcm_ProtocolCtrl, r2
	add r22, r2
	ld.w 0x0000000C[r2], r22
	st.w r22, 0x0000002C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 94
	st.w r0, 0x00000034[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 95
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 99
	mov r22, r6
	jarl _DspInternal_DcmConfirmation_0x27, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 100
	mov r22, r6
	jarl _DspInternal_DcmConfirmation_0x10, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 101
	mov r22, r6
	jarl _DspInternal_DcmConfirmation_0x11, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 110
	mov r22, r6
	jarl _DslInternal_ResetResource, r31
	dispose 0x00000000, 0x00000479, [r31]
_Dcm_UdsSubServicesCheck:
	.stack _Dcm_UdsSubServicesCheck = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 128
	prepare 0x00000041, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 137
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 138
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 139
	ld.bu 0x00000000[r5], r6
	movea 0x00000004, r3, r9
	movea 0x00000006, r3, r8
	mov r20, r7
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 140
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 142
	ld.hu 0x00000004[r3], r8
	ld.hu 0x00000006[r3], r7
	movea 0x00000002, r3, r9
	mov r20, r6
	jarl _DsdInternal_SearchSidTabSubServiceIndex, r31
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsp.c", 149
	dispose 0x00000008, 0x00000041, [r31]
