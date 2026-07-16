#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\SrcCode\mcuMpuSyncTask.c -oDefaultBuild\mcuMpuSyncTask.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6cd773da59344fcaa5278c8775f4ce2clz2rs3u4.xtl
#@	compiled at Thu Jul 16 13:41:56 2026

	.file "..\..\SrcCode\mcuMpuSyncTask.c"

	$reg_mode 22
	.dbl_size 4

	.public _g_mpuHandle, 2
	.public _FirmwareUpdateSdkInit
	.extern _MpuHalOpen
	.extern _LogHalPrint
	.extern _MpuHalSetRxFilter
	.extern _MpuHalSetRxBuffer
	.public _McuMpuSyncTaskInit
	.public _McuMpuSyncTaskMain
	.extern _MpuHalReceive
	.extern _FirmwareUpdateSdkCycleProcess

	.section .text, text
_FirmwareUpdateSdkInit:
	.stack _FirmwareUpdateSdkInit = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 32
	prepare 0x00000201, 0x00000004
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 36
	st.b r5, 0x00000001[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 37
	st.b r5, 0x00000002[r3]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 38
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 40
	jarl32 _MpuHalOpen, r31
	movhi HIGHW1(#_g_mpuHandle), r0, r5
	st.h r10, LOWW(#_g_mpuHandle)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 41
	cmp 0x00000000, r10
	bp9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 43
	mov #.STR.1, r6
	jarl32 _LogHalPrint, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 44
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 47
	movhi HIGHW1(#_g_mpuHandle), r0, r25
	ld.h LOWW(#_g_mpuHandle)[r25], r6
	movea 0x00000001, r3, r7
	jarl32 _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 48
	ld.h LOWW(#_g_mpuHandle)[r25], r6
	movea 0x00001000, r0, r8
	mov #_g_recvDataBuffer.3, r7
	jarl32 _MpuHalSetRxBuffer, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 49
	dispose 0x00000004, 0x00000201, [r31]
_McuMpuSyncTaskInit:
	.stack _McuMpuSyncTaskInit = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 60
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 62
	jarl _FirmwareUpdateSdkInit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 63
	mov #_g_dataPack.2, r5
	mov #_g_dataBuffer.1, r6
	st.w r6, 0x00000008[r5]
	movea 0x00001000, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 64
	st.h r6, 0x00000004[r5]
	dispose 0x00000000, 0x00000001, [r31]
_McuMpuSyncTaskMain:
	.stack _McuMpuSyncTaskMain = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 75
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 79
	movhi HIGHW1(#_g_mpuHandle), r0, r5
	ld.h LOWW(#_g_mpuHandle)[r5], r6
	mov 0x00000000, r8
	mov #_g_dataPack.2, r7
	jarl32 _MpuHalReceive, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 80
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 82
	mov #_g_dataPack.2, r25
	ld.bu 0x00000002[r25], r5
	ld.bu 0x00000001[r25], r8
	ld.bu 0x00000000[r25], r7
	andi 0x0000007F, r5, r9
	mov #.STR.1101, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 83
	movhi HIGHW1(#_g_mpuHandle), r0, r5
	ld.h LOWW(#_g_mpuHandle)[r5], r6
	mov r25, r7
	jarl32 _FirmwareUpdateSdkCycleProcess, r31
.BB.LABEL.3_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/mcuMpuSyncTask.c", 85
	dispose 0x00000000, 0x00000201, [r31]
	.section .data, data
	.align 2
_g_mpuHandle:
	.dhw 0xFFFF
_g_dataBuffer.1:
	.ds (4096)
_g_recvDataBuffer.3:
	.ds (4096)
	.section .bss, bss
	.align 4
_g_dataPack.2:
	.ds (12)
	.section .const, const
.STR.1:
	.db 0x4D,0x70,0x75,0x48,0x61,0x6C,0x4F,0x70,0x65,0x6E,0x20,0x66,0x61,0x69,0x6C,0x65
	.db 0x64,0x0D,0x0A
	.ds (1)
.STR.1101:
	.db 0x73,0x79,0x6E,0x63,0x3A,0x20,0x61,0x69,0x64,0x20,0x25,0x64,0x2C,0x20,0x6D,0x69
	.db 0x64,0x20,0x30,0x78,0x25,0x30,0x32,0x58,0x2C,0x20,0x73,0x75,0x62,0x63,0x6F,0x6D
	.db 0x6D,0x6F,0x6E,0x64,0x20,0x25,0x64,0x0D,0x0A
	.ds (1)
