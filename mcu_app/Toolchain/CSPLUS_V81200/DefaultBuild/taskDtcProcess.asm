#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\diagnostic\taskDtcProcess.c -oDefaultBuild\taskDtcProcess.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_72fb130f022d40faadbf9987639844791b54jl2p.tiu
#@	compiled at Fri Mar 27 09:50:40 2026

	.file "..\..\Srcode\app\diagnostic\taskDtcProcess.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dem_GetEventStatus
	.public _DtcGetObjState

	.section .text, text
_DtcGetEventFailedFlag.1:
	.stack _DtcGetEventFailedFlag.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1625
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1629
	st.b r0, 0x00000003[r3]
	addi 0x00000000, r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1630
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.bb30_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1634
	st.b r0, 0x00000000[r20]
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1635
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_break_bb.bb30_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	ori 0x0000FFFE, r0, r10
.BB.LABEL.1_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1641
	sxh r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.1_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1639
	ld.bu 0x00000003[r3], r2
	andi 0x00000001, r2, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1640
	dispose 0x00000004, 0x00000041, [r31]
_DtcGetObjState:
	.stack _DtcGetObjState = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1643
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1645
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1646
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1647
	st.b r0, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1649
	cmp 0x00000005, r6
	bh9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000003, r3, r7
	shl 0x00000002, r6
	jmp #.SWITCH.LABEL.2_39[r6]
.SWITCH.LABEL.2_39:
	jr .BB.LABEL.2_2
	jr .BB.LABEL.2_10
	jr .BB.LABEL.2_15
	jr .BB.LABEL.2_20
	jr .BB.LABEL.2_25
	jr .BB.LABEL.2_33
.SWITCH.LABEL.2_39.END:
.BB.LABEL.2_2:	; switch_clause_bb
	movea 0x00000017, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1653
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; entry.bb223_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x000000FF, r0, r10
	jr .BB.LABEL.2_38
.BB.LABEL.2_4:	; if_break_bb
	movea 0x00000001, r3, r7
	movea 0x00000018, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1657
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_5:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1661
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_break_bb17.bb223_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000002, r10
	jr .BB.LABEL.2_38
.BB.LABEL.2_7:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1665
	ld.bu 0x00000001[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_break_bb25.bb223_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000001, r10
	jr .BB.LABEL.2_38
.BB.LABEL.2_9:	; if_break_bb33
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1669
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.2_10:	; switch_clause_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000019, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1673
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_11:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000001, r3, r7
	movea 0x0000001A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1677
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_12:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1681
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_13:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1685
	ld.bu 0x00000001[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_14:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1689
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.2_15:	; switch_clause_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x0000001D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1693
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_16:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000001, r3, r7
	movea 0x0000001E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1697
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_17:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1701
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_18:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1705
	ld.bu 0x00000001[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_19:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1709
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.2_20:	; switch_clause_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x0000001F, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1713
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_21:	; if_break_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000001, r3, r7
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1717
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_22:	; if_break_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1721
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_23:	; if_break_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1725
	ld.bu 0x00000001[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_24:	; if_break_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1729
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.2_25:	; switch_clause_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1733
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_26:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000002, r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1737
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_27:	; if_break_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000001, r3, r7
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1741
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_28:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1745
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_29:	; if_break_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1749
	ld.bu 0x00000002[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_30:	; if_break_bb169.bb223_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.2_38
.BB.LABEL.2_31:	; if_break_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1753
	ld.bu 0x00000001[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_32:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1757
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.2_33:	; switch_clause_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1761
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.2_3
.BB.LABEL.2_34:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	movea 0x00000001, r3, r7
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1765
	jarl _DtcGetEventFailedFlag.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.2_3
.BB.LABEL.2_35:	; if_break_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1769
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.2_6
.BB.LABEL.2_36:	; if_break_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1773
	ld.bu 0x00000001[r3], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.2_8
.BB.LABEL.2_37:	; if_break_bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 0
	mov 0x00000000, r10
.BB.LABEL.2_38:	; bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/diagnostic/taskDtcProcess.c", 1784
	dispose 0x00000004, 0x00000001, [r31]
