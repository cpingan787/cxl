#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB.c -oDefaultBuild\Wdg_59_DriverB.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5b0f86ef8dbb47a2b0412a23cc13fc1ffh4z5e4g.3kd
#@	compiled at Thu Jul 16 13:41:55 2026

	.file "..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB.c"

	$reg_mode 22
	.dbl_size 4

	.extern _WDG_59_DriverB_GpWDTAReg_BaseAddr
	.extern _WDG_59_DriverB_GpICR_BaseAddr
	.extern _Wdg_59_DriverB_GaaRamMirror
	.extern _Wdg_59_DriverB_GpConfigPtr
	.extern _Wdg_59_DriverB_GddCurrentMode
	.extern _Wdg_59_DriverB_GusTriggerCounter
	.public _Wdg_59_DriverB_Init
	.extern _Wdg_59_DriverB_TriggerFunc
	.public _Wdg_59_DriverB_SetMode
	.extern _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION
	.extern _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION
	.public _Wdg_59_DriverB_SetTriggerCondition
	.public _Wdg_59_DriverB_CheckHWConsistency

	.section .text, text
_Wdg_59_DriverB_Init:
	.stack _Wdg_59_DriverB_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 485
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 531
	ld.w 0x00000000[r6], r5
	mov 0x0ED98100, r7
	cmp r7, r5
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 545
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r5
	st.w r6, LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 556
	movhi HIGHW1(#_WDG_59_DriverB_GpICR_BaseAddr), r0, r6
	ld.w LOWW(#_WDG_59_DriverB_GpICR_BaseAddr)[r6], r6
	ld.bu 0x00000000[r6], r7
	andi 0x0000007F, r7, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 564
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r5], r5
	ld.w 0x00000010[r5], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 581
	movhi HIGHW1(#_WDG_59_DriverB_GpWDTAReg_BaseAddr), r0, r6
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r6], r7
	ld.b 0x0000000C[r5], r5
	ld.bu 0x0000000C[r7], r7
	andi 0x00000008, r7, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 585
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r6], r6
	st.b r5, 0x0000000C[r6]
	movhi HIGHW1(#_Wdg_59_DriverB_GaaRamMirror+0x00000001), r0, r6
	st.b r5, LOWW(#_Wdg_59_DriverB_GaaRamMirror+0x00000001)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 596
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r5], r5
	ld.h 0x00000004[r5], r5
	movhi HIGHW1(#_Wdg_59_DriverB_GusTriggerCounter), r0, r6
	st.h r5, LOWW(#_Wdg_59_DriverB_GusTriggerCounter)[r6]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 602
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 611
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r5], r5
	ld.w 0x00000010[r5], r5
	movhi HIGHW1(#_Wdg_59_DriverB_GddCurrentMode), r0, r6
	st.w r5, LOWW(#_Wdg_59_DriverB_GddCurrentMode)[r6]
.BB.LABEL.1_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 651
	dispose 0x00000000, 0x00000001, [r31]
_Wdg_59_DriverB_SetMode:
	.stack _Wdg_59_DriverB_SetMode = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 704
	prepare 0x00000301, 0x00000000
	addi 0x00000000, r6, r25
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 806
	movhi HIGHW1(#_Wdg_59_DriverB_GddCurrentMode), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GddCurrentMode)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 810
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 818
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 823
	movhi HIGHW1(#_WDG_59_DriverB_GpWDTAReg_BaseAddr), r0, r5
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r5], r6
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r26
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r26], r7
	ld.bu 0x0000000C[r6], r6
	andi 0x00000008, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 827
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 823
	ld.b 0x0000000A[r7], r7
	or r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 827
	st.b r7, 0x0000000C[r5]
	movhi HIGHW1(#_Wdg_59_DriverB_GaaRamMirror+0x00000001), r0, r5
	st.b r7, LOWW(#_Wdg_59_DriverB_GaaRamMirror+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 843
	jarl32 _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 854
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 859
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r26], r5
	ld.hu 0x00000006[r5], r5
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 881
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 886
	movhi HIGHW1(#_WDG_59_DriverB_GpWDTAReg_BaseAddr), r0, r5
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r5], r6
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r26
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r26], r7
	ld.bu 0x0000000C[r6], r6
	andi 0x00000008, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 890
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 886
	ld.b 0x0000000B[r7], r7
	or r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 890
	st.b r7, 0x0000000C[r5]
	movhi HIGHW1(#_Wdg_59_DriverB_GaaRamMirror+0x00000001), r0, r5
	st.b r7, LOWW(#_Wdg_59_DriverB_GaaRamMirror+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 906
	jarl32 _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 916
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 920
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r26], r5
	ld.hu 0x00000008[r5], r5
.BB.LABEL.2_5:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 0
	movea 0x000003E8, r0, r6
	divhu r5, r6, r0
	movhi HIGHW1(#_Wdg_59_DriverB_GusTriggerCounter), r0, r5
	st.h r6, LOWW(#_Wdg_59_DriverB_GusTriggerCounter)[r5]
	jarl32 _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 933
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 938
	movhi HIGHW1(#_Wdg_59_DriverB_GddCurrentMode), r0, r5
	st.w r25, LOWW(#_Wdg_59_DriverB_GddCurrentMode)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 942
	jarl32 _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_MODE_SWITCH_PROTECTION, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 947
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
.BB.LABEL.2_6:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 955
	movhi HIGHW1(#_Wdg_59_DriverB_GddCurrentMode), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GddCurrentMode)[r5], r5
	cmp r5, r25
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_break_bb61.if_break_bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb67
	mov 0x00000001, r10
.BB.LABEL.2_9:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 998
	dispose 0x00000000, 0x00000301, [r31]
_Wdg_59_DriverB_SetTriggerCondition:
	.stack _Wdg_59_DriverB_SetTriggerCondition = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1044
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1101
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1109
	movhi HIGHW1(#_Wdg_59_DriverB_GddCurrentMode), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GddCurrentMode)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1112
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r5], r5
	ld.hu 0x00000006[r5], r5
	br9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1115
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1118
	movhi HIGHW1(#_Wdg_59_DriverB_GpConfigPtr), r0, r5
	ld.w LOWW(#_Wdg_59_DriverB_GpConfigPtr)[r5], r5
	ld.hu 0x00000008[r5], r5
.BB.LABEL.3_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 0
	divhu r5, r25, r0
	movhi HIGHW1(#_Wdg_59_DriverB_GusTriggerCounter), r0, r5
	st.h r25, LOWW(#_Wdg_59_DriverB_GusTriggerCounter)[r5]
.BB.LABEL.3_5:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1132
	jarl32 _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	dispose 0x00000000, 0x00000201, [r31]
_Wdg_59_DriverB_CheckHWConsistency:
	.stack _Wdg_59_DriverB_CheckHWConsistency = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1187
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1218
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1220
	movhi HIGHW1(#_WDG_59_DriverB_GpWDTAReg_BaseAddr), r0, r5
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r5], r5
	ld.bu 0x0000000C[r5], r5
	movhi HIGHW1(#_Wdg_59_DriverB_GaaRamMirror+0x00000001), r0, r6
	ld.bu LOWW(#_Wdg_59_DriverB_GaaRamMirror+0x00000001)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1223
	jmp [r31]
.BB.LABEL.4_3:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB.c", 1236
	jmp [r31]
