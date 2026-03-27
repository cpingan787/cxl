#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\APP\Fls_Test.c -oDefaultBuild\Fls_Test.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ca08d9ac01db4e53b3d76a2a98f41368ozihyd1p.uob
#@	compiled at Fri Mar 27 09:50:02 2026

	.file "..\..\ASW\APP\Fls_Test.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvM_MultiJob
	.public _ReadAppBuffer, 512
	.public _WriteAppBuffer, 512
	.public _FlsLoopCount, 1
	.public _secoc_count_r, 4
	.public _secoc_count_w, 4
	.public _NVM_test, 1
	.public _aging, 1
	.public _FlsCount, 2
	.public _NVM_w_all, 1
	.public _Fls_test
	.extern _Fls_Read
	.extern _Fls_MainFunction
	.extern _Fls_GetStatus
	.extern _Fls_Erase
	.extern _Fls_Write
	.public _NvM_test
	.extern _NvM_ReadBlock
	.extern _NvM_MainFunction
	.extern _Fee_MainFunction
	.extern _NvM_WriteBlock
	.public _DTCMem_test
	.extern _Dem_SetEventStatus

	.section .text, text
_Fls_test:
	.stack _Fls_test = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 11
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 17
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.bu LOWW(#_FlsLoopCount)[r2], r5
	mov #_WriteAppBuffer, r6
	add r5, r6
	movea 0xFFFFFFAA, r5, r5
	st.b r5, 0x00000000[r6]
	ld.b LOWW(#_FlsLoopCount)[r2], r2
	add 0x00000001, r2
.BB.LABEL.1_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r2, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 15
	zxb r2
	cmp 0x00000008, r2
	blt9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movea 0x00000200, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 24
	mov #_ReadAppBuffer, r7
	movea 0x00004000, r0, r6
	jarl _Fls_Read, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 28
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 29
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.b LOWW(#_FlsLoopCount)[r2], r2
	add 0x00000001, r2
.BB.LABEL.1_5:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r2, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 26
	jarl _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movea 0x00000400, r0, r7
	movea 0x00004000, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 36
	jarl _Fls_Erase, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 40
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 41
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.b LOWW(#_FlsLoopCount)[r2], r2
	add 0x00000001, r2
.BB.LABEL.1_8:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r2, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 38
	jarl _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_9:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movea 0x00000200, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 48
	mov #_WriteAppBuffer, r7
	movea 0x00004000, r0, r6
	jarl _Fls_Write, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 52
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 53
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.b LOWW(#_FlsLoopCount)[r2], r2
	add 0x00000001, r2
.BB.LABEL.1_11:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r2, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 50
	jarl _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_12:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movea 0x00000200, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 60
	mov #_ReadAppBuffer, r7
	movea 0x00004000, r0, r6
	jarl _Fls_Read, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 64
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 65
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.b LOWW(#_FlsLoopCount)[r2], r2
	add 0x00000001, r2
.BB.LABEL.1_14:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r2, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 62
	jarl _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 67
	dispose 0x00000000, 0x00000001, [r31]
_NvM_test:
	.stack _NvM_test = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 71
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 74
	movhi HIGHW1(#_NVM_test), r0, r2
	ld.bu LOWW(#_NVM_test)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 76
	mov #_secoc_count_r, r7
	movea 0x00000033, r0, r6
	jarl _NvM_ReadBlock, r31
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 80
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 81
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 82
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 83
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.b LOWW(#_FlsLoopCount)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_FlsLoopCount)[r2]
.BB.LABEL.2_3:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 78
	movhi HIGHW1(#_NvM_MultiJob+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_MultiJob+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 86
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_5:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 88
	mov #_secoc_count_w, r7
	movea 0x00000033, r0, r6
	jarl _NvM_WriteBlock, r31
	br9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 92
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 93
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 94
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 95
	movhi HIGHW1(#_FlsLoopCount), r0, r2
	ld.b LOWW(#_FlsLoopCount)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_FlsLoopCount)[r2]
.BB.LABEL.2_7:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 90
	movhi HIGHW1(#_NvM_MultiJob+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_MultiJob+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_8:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	movhi HIGHW1(#_NVM_test), r0, r2
	st.b r0, LOWW(#_NVM_test)[r2]
.BB.LABEL.2_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 100
	dispose 0x00000000, 0x00000001, [r31]
_DTCMem_test:
	.stack _DTCMem_test = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 104
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 107
	movhi HIGHW1(#_aging), r0, r2
	ld.bu LOWW(#_aging)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 109
	mov r6, r7
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 110
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 112
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.3_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Fls_Test.c", 115
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
_ReadAppBuffer:
	.ds (512)
_WriteAppBuffer:
	.ds (512)
_FlsLoopCount:
	.ds (1)
_secoc_count_r:
	.ds (4)
_secoc_count_w:
	.db 0x20,0x26,0x02,0x03
_NVM_test:
	.ds (1)
_aging:
	.ds (1)
	.align 2
_FlsCount:
	.ds (2)
_NVM_w_all:
	.ds (1)
