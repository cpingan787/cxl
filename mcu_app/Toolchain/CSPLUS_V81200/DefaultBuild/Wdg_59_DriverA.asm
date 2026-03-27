#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverA.c -oDefaultBuild\Wdg_59_DriverA.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b66dc96e98be44eabf32d16526539748rwj0c4ym.g3b
#@	compiled at Fri Mar 27 09:50:16 2026

	.file "..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverA.c"

	$reg_mode 32
	.dbl_size 8

	.extern _WDG_59_DriverA_GpWDTAReg_BaseAddr
	.extern _WDG_59_DriverA_GpICR_BaseAddr
	.extern _Wdg_59_DriverA_GaaRamMirror
	.extern _Wdg_59_DriverA_GpConfigPtr
	.extern _Wdg_59_DriverA_GddCurrentMode
	.extern _Wdg_59_DriverA_GusTriggerCounter
	.public _Wdg_59_DriverA_Init
	.extern _Wdg_59_DriverA_TriggerFunc
	.public _Wdg_59_DriverA_SetMode
	.extern _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION
	.extern _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION
	.public _Wdg_59_DriverA_SetTriggerCondition
	.public _Wdg_59_DriverA_CheckHWConsistency

	.section .text, text
_Wdg_59_DriverA_Init:
	.stack _Wdg_59_DriverA_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 480
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 526
	ld.w 0x00000000[r6], r2
	mov 0x0ED98100, r5
	cmp r5, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 540
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r2
	st.w r6, LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 551
	movhi HIGHW1(#_WDG_59_DriverA_GpICR_BaseAddr), r0, r5
	ld.w LOWW(#_WDG_59_DriverA_GpICR_BaseAddr)[r5], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 558
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r2], r2
	ld.w 0x00000010[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 575
	movhi HIGHW1(#_WDG_59_DriverA_GpWDTAReg_BaseAddr), r0, r5
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r5], r6
	ld.b 0x0000000C[r2], r2
	ld.bu 0x0000000C[r6], r6
	andi 0x00000008, r6, r6
	or r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 579
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r5], r5
	st.b r2, 0x0000000C[r5]
	movhi HIGHW1(#_Wdg_59_DriverA_GaaRamMirror+0x00000001), r0, r5
	st.b r2, LOWW(#_Wdg_59_DriverA_GaaRamMirror+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 592
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r2], r2
	ld.h 0x00000004[r2], r2
	movhi HIGHW1(#_Wdg_59_DriverA_GusTriggerCounter), r0, r5
	st.h r2, LOWW(#_Wdg_59_DriverA_GusTriggerCounter)[r5]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 598
	jarl _Wdg_59_DriverA_TriggerFunc, r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 607
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r2], r2
	ld.w 0x00000010[r2], r2
	movhi HIGHW1(#_Wdg_59_DriverA_GddCurrentMode), r0, r5
	st.w r2, LOWW(#_Wdg_59_DriverA_GddCurrentMode)[r5]
.BB.LABEL.1_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 645
	dispose 0x00000000, 0x00000001, [r31]
_Wdg_59_DriverA_SetMode:
	.stack _Wdg_59_DriverA_SetMode = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 699
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 801
	movhi HIGHW1(#_Wdg_59_DriverA_GddCurrentMode), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GddCurrentMode)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 805
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 813
	jarl _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 818
	movhi HIGHW1(#_WDG_59_DriverA_GpWDTAReg_BaseAddr), r0, r2
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r2], r5
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r21
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r21], r6
	ld.bu 0x0000000C[r5], r5
	andi 0x00000008, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 822
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 818
	ld.b 0x0000000A[r6], r6
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 822
	st.b r6, 0x0000000C[r2]
	movhi HIGHW1(#_Wdg_59_DriverA_GaaRamMirror+0x00000001), r0, r2
	st.b r6, LOWW(#_Wdg_59_DriverA_GaaRamMirror+0x00000001)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 838
	jarl _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 849
	jarl _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 854
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r21], r2
	ld.hu 0x00000006[r2], r2
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 876
	jarl _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 881
	movhi HIGHW1(#_WDG_59_DriverA_GpWDTAReg_BaseAddr), r0, r2
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r2], r5
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r21
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r21], r6
	ld.bu 0x0000000C[r5], r5
	andi 0x00000008, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 885
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 881
	ld.b 0x0000000B[r6], r6
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 885
	st.b r6, 0x0000000C[r2]
	movhi HIGHW1(#_Wdg_59_DriverA_GaaRamMirror+0x00000001), r0, r2
	st.b r6, LOWW(#_Wdg_59_DriverA_GaaRamMirror+0x00000001)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 901
	jarl _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 911
	jarl _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 915
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r21], r2
	ld.hu 0x00000008[r2], r2
.BB.LABEL.2_5:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 0
	movea 0x000003E8, r0, r5
	divhu r2, r5, r0
	movhi HIGHW1(#_Wdg_59_DriverA_GusTriggerCounter), r0, r2
	st.h r5, LOWW(#_Wdg_59_DriverA_GusTriggerCounter)[r2]
	jarl _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 928
	jarl _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 933
	movhi HIGHW1(#_Wdg_59_DriverA_GddCurrentMode), r0, r2
	st.w r20, LOWW(#_Wdg_59_DriverA_GddCurrentMode)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 937
	jarl _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 942
	jarl _Wdg_59_DriverA_TriggerFunc, r31
.BB.LABEL.2_6:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 950
	movhi HIGHW1(#_Wdg_59_DriverA_GddCurrentMode), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GddCurrentMode)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_break_bb61.if_break_bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb67
	mov 0x00000001, r10
.BB.LABEL.2_9:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 993
	dispose 0x00000000, 0x00000061, [r31]
_Wdg_59_DriverA_SetTriggerCondition:
	.stack _Wdg_59_DriverA_SetTriggerCondition = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1038
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1095
	jarl _SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1103
	movhi HIGHW1(#_Wdg_59_DriverA_GddCurrentMode), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GddCurrentMode)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1106
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r2], r2
	ld.hu 0x00000006[r2], r2
	br9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1109
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1112
	movhi HIGHW1(#_Wdg_59_DriverA_GpConfigPtr), r0, r2
	ld.w LOWW(#_Wdg_59_DriverA_GpConfigPtr)[r2], r2
	ld.hu 0x00000008[r2], r2
.BB.LABEL.3_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 0
	divhu r2, r20, r0
	movhi HIGHW1(#_Wdg_59_DriverA_GusTriggerCounter), r0, r2
	st.h r20, LOWW(#_Wdg_59_DriverA_GusTriggerCounter)[r2]
.BB.LABEL.3_5:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1126
	jarl _SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION, r31
	dispose 0x00000000, 0x00000041, [r31]
_Wdg_59_DriverA_CheckHWConsistency:
	.stack _Wdg_59_DriverA_CheckHWConsistency = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1181
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1212
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1214
	movhi HIGHW1(#_WDG_59_DriverA_GpWDTAReg_BaseAddr), r0, r2
	ld.w LOWW(#_WDG_59_DriverA_GpWDTAReg_BaseAddr)[r2], r2
	ld.bu 0x0000000C[r2], r2
	movhi HIGHW1(#_Wdg_59_DriverA_GaaRamMirror+0x00000001), r0, r5
	ld.bu LOWW(#_Wdg_59_DriverA_GaaRamMirror+0x00000001)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1217
	jmp [r31]
.BB.LABEL.4_3:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverA.c", 1230
	jmp [r31]
