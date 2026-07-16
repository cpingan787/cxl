#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Diag_Callout\Diag_Callout.c -oDefaultBuild\Diag_Callout.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a456456f43954cf886e7e0803b76327b0ezp2fgq.zel
#@	compiled at Thu Jul 16 13:41:40 2026

	.file "..\..\Bsw\SystemServices\BootServices\Diag_Callout\Diag_Callout.c"

	$reg_mode 22
	.dbl_size 4

	.extern _g_FlagsInfo
	.public _g_DownSeg, 160
	.public _g_CurLogicalBlockId, 1
	.public _g_DownSegIdx, 1
	.public _Adc_VoltageValue, 2
	.public _ADC_Update_Value
	.public _Diag_WdgFeed
	.extern _Wdg_59_DriverB_TriggerFunc
	.public _Diag_NRC78Send
	.extern _Dsd_Nrc78ResponseProcess
	.public _Diag_FlagRead
	.extern _EEIf_Read
	.extern _FlsIf_Read
	.extern _CommF_DataCopy
	.public _Diag_FlagCompare
	.public _Diag_GetAddrFlagVal
	.public _Diag_FlagWrite
	.extern _EEIf_Write
	.extern _FlsIf_Write
	.public _Diag_FlagClear

	.section .text, text
_ADC_Update_Value:
	.stack _ADC_Update_Value = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 79
	jmp [r31]
_Diag_WdgFeed:
	.stack _Diag_WdgFeed = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 103
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 105
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	dispose 0x00000000, 0x00000001, [r31]
_Diag_NRC78Send:
	.stack _Diag_NRC78Send = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 122
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 124
	jarl32 _Dsd_Nrc78ResponseProcess, r31
	dispose 0x00000000, 0x00000001, [r31]
_Diag_FlagRead:
	.stack _Diag_FlagRead = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 143
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 147
	mov r6, r5
	shl 0x00000004, r5
	mov #_g_FlagsInfo, r8
	add r5, r8
	ld.bu 0x00000000[r8], r5
	cmp 0x00000002, r5
	mov r7, r8
	mov r6, r5
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 149
	shl 0x00000004, r5
	mov #_g_FlagsInfo, r9
	add r9, r5
	ld.w 0x00000008[r5], r7
	shl 0x00000004, r6
	add r6, r9
	ld.w 0x00000004[r9], r6
	jarl32 _EEIf_Read, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 151
	shl 0x00000004, r5
	mov #_g_FlagsInfo, r7
	add r5, r7
	ld.bu 0x00000000[r7], r5
	cmp 0x00000001, r5
	mov r6, r5
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 153
	shl 0x00000004, r5
	mov #_g_FlagsInfo, r9
	add r9, r5
	ld.w 0x00000008[r5], r7
	shl 0x00000004, r6
	add r6, r9
	ld.w 0x00000004[r9], r6
	jarl32 _FlsIf_Read, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_4:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 155
	shl 0x00000004, r5
	mov #_g_FlagsInfo, r7
	add r5, r7
	ld.bu 0x00000000[r7], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 157
	shl 0x00000004, r6
	mov #_g_FlagsInfo, r7
	add r6, r7
	ld.w 0x00000008[r7], r5
	add 0x00000004, r7
	mov r8, r6
	mov r5, r8
	jarl32 _CommF_DataCopy, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_6:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 165
	dispose 0x00000000, 0x00000001, [r31]
_Diag_FlagCompare:
	.stack _Diag_FlagCompare = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 182
	prepare 0x00000201, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 185
	st.w r0, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 187
	jarl _Diag_FlagRead, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 189
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 0
	shl 0x00000004, r25
	mov #_g_FlagsInfo, r5
	add r25, r5
	ld.w 0x0000000C[r5], r5
	ld.w 0x00000000[r3], r6
	cmp r5, r6
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	mov 0x00000001, r10
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 195
	dispose 0x00000004, 0x00000201, [r31]
_Diag_GetAddrFlagVal:
	.stack _Diag_GetAddrFlagVal = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 197
	jmp [r31]
_Diag_FlagWrite:
	.stack _Diag_FlagWrite = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 218
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 225
	mov r6, r5
	shl 0x00000004, r5
	mov #_g_FlagsInfo, r8
	add r5, r8
	ld.bu 0x00000000[r8], r5
	cmp 0x00000002, r5
	mov r7, r8
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 227
	shl 0x00000004, r6
	mov #_g_FlagsInfo, r5
	add r6, r5
	ld.w 0x00000008[r5], r7
	ld.w 0x00000004[r5], r6
	jarl32 _EEIf_Write, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 229
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 231
	shl 0x00000004, r6
	mov #_g_FlagsInfo, r5
	add r6, r5
	ld.w 0x00000008[r5], r7
	ld.w 0x00000004[r5], r6
	jarl32 _FlsIf_Write, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_4:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 233
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 235
	shl 0x00000004, r6
	mov #_g_FlagsInfo, r5
	add r5, r6
	ld.w 0x00000008[r6], r5
	add 0x00000004, r6
	mov r8, r7
	mov r5, r8
	jarl32 _CommF_DataCopy, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 236
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_6:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 243
	dispose 0x00000000, 0x00000001, [r31]
_Diag_FlagClear:
	.stack _Diag_FlagClear = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 261
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 264
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 266
	jarl _Diag_FlagWrite, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/Diag_Callout.c", 269
	dispose 0x00000004, 0x00000001, [r31]
	.section .bss, bss
	.align 4
_g_DownSeg:
	.ds (160)
_g_CurLogicalBlockId:
	.ds (1)
_g_DownSegIdx:
	.ds (1)
	.align 2
_Adc_VoltageValue:
	.ds (2)
