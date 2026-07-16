#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Diag_Callout\RequestDownload.c -oDefaultBuild\RequestDownload.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bd4aece723fc42808b173963576b35ea0f5rw1fp.52q
#@	compiled at Thu Jul 16 13:41:43 2026

	.file "..\..\Bsw\SystemServices\BootServices\Diag_Callout\RequestDownload.c"

	$reg_mode 22
	.dbl_size 4

	.extern _g_DownSegIdx
	.extern _g_CurLogicalBlockId
	.extern _g_DownSeg
	.extern _g_CrcAddrEnd
	.extern _g_DownBlockEnd
	.extern _g_DownBlockIdx
	.public _RequestDownload
	.extern _MemM_LBIdGet
	.extern _SecM_Crc16Preprocess

	.section .text, text
_RequestDownload:
	.stack _RequestDownload = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 57
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 65
	jarl32 _MemM_LBIdGet, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 67
	addi 0xFFFFFF01, r10, r0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 0
	cmp 0x00000000, r26
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 70
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	st.b r10, LOWW(#_g_CurLogicalBlockId)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 72
	movhi HIGHW1(#_g_DownSegIdx), r0, r5
	ld.bu LOWW(#_g_DownSegIdx)[r5], r5
	movea 0x00000012, r0, r6
	cmp r6, r5
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 74
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 77
	mov #_g_DownSeg, r5
	st.w r25, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 78
	st.w r26, 0x00000004[r5]
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 82
	movhi HIGHW1(#_g_DownSegIdx), r0, r5
	ld.b LOWW(#_g_DownSegIdx)[r5], r6
	add 0x00000001, r6
	st.b r6, LOWW(#_g_DownSegIdx)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 84
	zxb r6
	shl 0x00000003, r6
	mov #_g_DownSeg, r7
	add r7, r6
	st.w r25, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 85
	ld.bu LOWW(#_g_DownSegIdx)[r5], r6
	shl 0x00000003, r6
	add r6, r7
	st.w r26, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 86
	movhi HIGHW1(#_g_DownBlockIdx), r0, r6
	ld.bu LOWW(#_g_DownBlockIdx)[r6], r7
	shl 0x00000002, r7
	mov #_g_CrcAddrEnd, r8
	add r8, r7
	st.w r25, 0xFFFFFFFC[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 87
	ld.bu LOWW(#_g_DownBlockIdx)[r6], r6
	mov #_g_DownBlockEnd, r7
	add r7, r6
	ld.b LOWW(#_g_DownSegIdx)[r5], r5
	st.b r5, 0xFFFFFFFF[r6]
.BB.LABEL.1_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 90
	jarl32 _SecM_Crc16Preprocess, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.1_7:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RequestDownload.c", 94
	dispose 0x00000000, 0x00000301, [r31]
