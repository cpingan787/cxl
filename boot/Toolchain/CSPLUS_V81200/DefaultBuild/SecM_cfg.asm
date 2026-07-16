#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\SecurityManager\SecM_cfg.c -oDefaultBuild\SecM_cfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_4371ce4d54494104948c4b995a4b5793hmkg1qlk.uae
#@	compiled at Thu Jul 16 13:41:30 2026

	.file "..\..\Bsw\SystemServices\BootServices\SecurityManager\SecM_cfg.c"

	$reg_mode 22
	.dbl_size 4

	.public _SecM_ReverseBit_32

	.section .text, text
_SecM_ReverseBit_32:
	.stack _SecM_ReverseBit_32 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 53
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 55
	add r5, r5
	mov 0xAAAAAAAA, r7
	and r7, r5
	shr 0x00000001, r6
	mov 0x55555555, r7
	and r7, r6
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 56
	mov r5, r6
	shl 0x00000002, r6
	mov 0xCCCCCCCC, r7
	and r7, r6
	shr 0x00000002, r5
	mov 0x33333333, r7
	and r7, r5
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 57
	mov r6, r5
	shl 0x00000004, r5
	mov 0xF0F0F0F0, r7
	and r7, r5
	shr 0x00000004, r6
	mov 0x0F0F0F0F, r7
	and r7, r6
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 58
	mov r5, r6
	shl 0x00000008, r6
	mov 0xFF00FF00, r7
	and r7, r6
	shr 0x00000008, r5
	mov 0x00FF00FF, r7
	and r7, r5
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 59
	rotl 0x00000010, r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/SecurityManager/SecM_cfg.c", 61
	jmp [r31]
