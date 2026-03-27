#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\APP\Com_Test.c -oDefaultBuild\Com_Test.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a6c7c2aeea624eaf8faf963d7bbcc5bdlel5v5pj.ore
#@	compiled at Fri Mar 27 09:50:00 2026

	.file "..\..\ASW\APP\Com_Test.c"

	$reg_mode 32
	.dbl_size 8

	.public _Event_Test, 1
	.public _Event_TestSig0, 8
	.public _Event_TestSig1, 1
	.public _Test_ComTxSig0, 1
	.public _Test_ComRxSig0, 1
	.public _testcom, 8
	.public _timestamp, 16
	.public _userData, 4
	.public _Data, 8
	.public _PduInfo, 12
	.public _E2E_R_TEST, 4
	.public _Com_Test
	.extern _Com_ReceiveSignalGroup
	.extern _Com_ReceiveSignal
	.extern _Com_SendSignal
	.public _Com_SecOC_Test
	.public _CanTSyn_SlaveTest
	.extern _StbM_GetCurrentTime
	.extern _Can_Write

	.section .text, text
_Com_Test:
	.stack _Com_Test = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 75
	prepare 0x00000041, 0x00000000
	movea 0x0000001A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 82
	jarl _Com_ReceiveSignalGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 83
	mov #_E2E_R_TEST, r20
	movea 0x000003B4, r0, r6
	mov r20, r7
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 84
	addi 0x00000002, r20, r7
	movea 0x000003B5, r0, r6
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 86
	movhi HIGHW1(#_Event_Test), r0, r2
	ld.bu LOWW(#_Event_Test)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 89
	mov #_Event_TestSig0, r7
	movea 0x00000042, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 90
	movhi HIGHW1(#_Event_Test), r0, r2
	st.b r0, LOWW(#_Event_Test)[r2]
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 104
	dispose 0x00000000, 0x00000041, [r31]
_Com_SecOC_Test:
	.stack _Com_SecOC_Test = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 106
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 110
	movhi HIGHW1(#_Event_Test), r0, r2
	ld.bu LOWW(#_Event_Test)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 112
	mov #_Event_TestSig0, r20
	movea 0x00000087, r0, r6
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000C7, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 113
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000B4, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 114
	mov r20, r7
	jarl _Com_SendSignal, r31
	movea 0x000000B2, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 115
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 116
	movhi HIGHW1(#_Event_Test), r0, r2
	st.b r0, LOWW(#_Event_Test)[r2]
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 119
	dispose 0x00000000, 0x00000041, [r31]
_CanTSyn_SlaveTest:
	.stack _CanTSyn_SlaveTest = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 121
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 123
	mov #_timestamp, r20
	mov #_userData, r8
	mov 0x00000000, r6
	mov r20, r7
	jarl _StbM_GetCurrentTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 125
	ld.w 0x00000008[r20], r2
	shr 0x00000018, r2
	mov #_PduInfo, r7
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 126
	ld.w 0x00000008[r20], r2
	shr 0x00000010, r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 127
	ld.w 0x00000008[r20], r2
	shr 0x00000008, r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 128
	ld.w 0x00000008[r20], r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 129
	ld.w 0x00000004[r20], r2
	shr 0x00000018, r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 130
	ld.w 0x00000004[r20], r2
	shr 0x00000010, r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000005[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 131
	ld.w 0x00000004[r20], r2
	shr 0x00000008, r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 132
	ld.w 0x00000004[r20], r2
	ld.w 0x00000000[r7], r5
	st.b r2, 0x00000007[r5]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Com_Test.c", 134
	jarl _Can_Write, r31
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
_Event_Test:
	.ds (1)
	.align 4
_Event_TestSig0:
	.ds (8)
_Event_TestSig1:
	.ds (1)
_Test_ComTxSig0:
	.ds (1)
_Test_ComRxSig0:
	.ds (1)
_testcom:
	.ds (8)
_Data:
	.ds (8)
	.align 4
_PduInfo:
	.dw #_Data
	.dw 0x00000666
	.ds (2)
	.db 0x08
	.ds (1)
	.align 2
_E2E_R_TEST:
	.ds (4)
	.section .bss, bss
	.align 4
_timestamp:
	.ds (16)
_userData:
	.ds (4)
