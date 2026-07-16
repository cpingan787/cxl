#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Diag_Callout\TransferData.c -oDefaultBuild\TransferData.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f7011ce601b44210977a8af2bf178f5dq240xnpj.nvy
#@	compiled at Thu Jul 16 13:41:50 2026

	.file "..\..\Bsw\SystemServices\BootServices\Diag_Callout\TransferData.c"

	$reg_mode 22
	.dbl_size 4

	.extern _g_DownSegIdx
	.extern _g_CurLogicalBlockId
	.public _TransData_WriteMemory
	.extern _Diag_NRC78Send
	.extern _FlsIf_Write
	.public _TransData_ClrSequenceBuffer
	.extern _CommF_DataSet
	.public _TransData_Copy2SequenceBuffer
	.extern _CommF_DataCopy
	.public _TransData_CheckSequenceBuffer
	.extern _CommF_DataCompare

	.section .text, text
_TransData_WriteMemory:
	.stack _TransData_WriteMemory = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 64
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 68
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 72
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 80
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl32 _FlsIf_Write, r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 84
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 0
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 87
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r6
	st.b r5, LOWW(#_g_CurLogicalBlockId)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 88
	movhi HIGHW1(#_g_DownSegIdx), r0, r6
	st.b r5, LOWW(#_g_DownSegIdx)[r6]
.BB.LABEL.1_5:	; if_break_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 92
	dispose 0x00000000, 0x00000381, [r31]
_TransData_ClrSequenceBuffer:
	.stack _TransData_ClrSequenceBuffer = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 109
	prepare 0x00000001, 0x00000000
	movea 0x00000402, r0, r8
	movea 0x000000FF, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 111
	mov #_TransDataBuf.1, r6
	jarl32 _CommF_DataSet, r31
	dispose 0x00000000, 0x00000001, [r31]
_TransData_Copy2SequenceBuffer:
	.stack _TransData_Copy2SequenceBuffer = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 129
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x00000402, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 131
	mov #_TransDataBuf.1, r6
	jarl32 _CommF_DataCopy, r31
	dispose 0x00000000, 0x00000001, [r31]
_TransData_CheckSequenceBuffer:
	.stack _TransData_CheckSequenceBuffer = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 151
	prepare 0x00000001, 0x00000000
	mov r6, r7
	movea 0x00000402, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 153
	mov #_TransDataBuf.1, r6
	jarl32 _CommF_DataCompare, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/TransferData.c", 154
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
_TransDataBuf.1:
	.ds (1026)
