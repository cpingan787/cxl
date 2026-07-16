#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Common\Common.c -oDefaultBuild\Common.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ae86679b5fe640f4b70e9d436fc13c1capedcxlj.4i3
#@	compiled at Thu Jul 16 13:41:33 2026

	.file "..\..\Bsw\SystemServices\BootServices\Common\Common.c"

	$reg_mode 22
	.dbl_size 4

	.public _Comm_MainTick, 2
	.public _CommF_DataCopy
	.public _CommF_DataCompare
	.public _CommF_DataSet
	.public _CommF_GetUint32DataValue
	.public _CommF_GetElapsedValue

	.section .text, text
_CommF_DataCopy:
	.stack _CommF_DataCopy = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 60
	cmp r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 65
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; entry.bb31_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 72
	mov r7, r9
	add r5, r9
	ld.b 0x00000000[r9], r9
	mov r6, r10
	add r5, r10
	st.b r9, 0x00000000[r10]
	add 0x00000001, r5
.BB.LABEL.1_4:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 70
	cmp r8, r5
	bl9 .BB.LABEL.1_3
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 75
	jmp [r31]
_CommF_DataCompare:
	.stack _CommF_DataCompare = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 96
	mov 0x00000000, r5
	br9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 105
	mov r6, r9
	add r5, r9
	ld.bu 0x00000000[r9], r9
	mov r7, r10
	add r5, r10
	ld.bu 0x00000000[r10], r10
	cmp r10, r9
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 0
	add 0x00000001, r5
.BB.LABEL.2_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 101
	cmp r8, r5
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_4:	; bb24.bb31_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; bb.bb31_crit_edge
	mov 0x00000001, r10
.BB.LABEL.2_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 112
	jmp [r31]
_CommF_DataSet:
	.stack _CommF_DataSet = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 132
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 136
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; entry.bb25_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 142
	mov r6, r9
	add r5, r9
	st.b r7, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.3_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 140
	cmp r8, r5
	bl9 .BB.LABEL.3_3
.BB.LABEL.3_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 146
	jmp [r31]
_CommF_GetUint32DataValue:
	.stack _CommF_GetUint32DataValue = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 166
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 173
	andi 0x000000FF, r5, r8
	mov r6, r9
	add r8, r9
	ld.bu 0x00000000[r9], r9
	subr r7, r8
	movea 0x0000001F, r8, r8
	shl 0x00000003, r8
	zxb r8
	shl r8, r9
	or r9, r10
	add 0x00000001, r5
.BB.LABEL.4_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 171
	andi 0x000000FF, r5, r8
	cmp r7, r8
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 176
	jmp [r31]
_CommF_GetElapsedValue:
	.stack _CommF_GetElapsedValue = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 194
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Common/Common.c", 196
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	ld.h 0x00000000[r6], r6
	sub r6, r5
	st.h r5, 0x00000000[r7]
	jmp [r31]
	.section .bss, bss
	.align 2
_Comm_MainTick:
	.ds (2)
