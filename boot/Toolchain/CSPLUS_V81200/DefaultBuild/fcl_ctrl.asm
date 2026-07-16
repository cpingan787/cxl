#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\FCL\user\fcl_ctrl.c -oDefaultBuild\fcl_ctrl.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_921e07a2d1634e7582ff3d674f11bf88ejjrc3io.ugy
#@	compiled at Thu Jul 16 13:41:33 2026

	.file "..\..\Bsw\SystemServices\FCL\user\fcl_ctrl.c"

	$reg_mode 22
	.dbl_size 4

	.extern _sampleApp_fclConfig_enu
	.public _FCL_Copy_area, 32768
	.public _FCL_Init
	.extern _R_FCL_Init
	.extern _R_FCL_CopySections
	.public _FCL_Handel
	.extern _FCLUser_Open
	.extern _R_FCL_Execute
	.extern _FCLUser_Close
	.public _FLc_Test

	.section .text, text
_FCL_Init:
	.stack _FCL_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 181
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 184
	mov #_sampleApp_fclConfig_enu, r6
	jarl32 _R_FCL_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 185
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 187
	jarl32 _R_FCL_CopySections, r31
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 194
	dispose 0x00000000, 0x00000001, [r31]
_FCL_Handel:
	.stack _FCL_Handel = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 197
	prepare 0x00000385, 0x00000014
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 206
	jarl32 _FCLUser_Open, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 209
	st.w r0, 0x00000000[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 210
	jarl32 _R_FCL_Execute, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 218
	add 0xFFFFFFFF, r25
	cmp 0x00000000, r25
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 0
	add 0xFFFFFFFF, r25
	cmp 0x00000000, r25
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_2:	; entry
	movea 0xFFFFFFE9, r25, r28
	cmp 0x00000000, r28
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_3:	; entry
	cmp 0x00000001, r28
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_4:	; switch_clause_bb11
	movea 0x0000001A, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 227
	st.w r28, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 228
	st.w r26, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 229
	st.w r27, 0x00000008[r3]
	br9 .BB.LABEL.2_9
.BB.LABEL.2_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 0
	movea 0x00000019, r0, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 221
	st.w r27, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 222
	st.w r26, 0x00000004[r3]
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 0
	mov 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 234
	st.w r26, 0x00000000[r3]
	br9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 248
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 249
	st.w r26, 0x00000004[r3]
.BB.LABEL.2_8:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 0
	st.w r27, 0x00000008[r3]
	st.h r28, 0x0000000C[r3]
.BB.LABEL.2_9:	; switch_clause_bb24
	mov r3, r6
	jarl32 _R_FCL_Execute, r31
.BB.LABEL.2_10:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 263
	ld.w 0x00000010[r3], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 265
	jarl32 _FCLUser_Close, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 268
	andi 0x000000FF, r25, r10
	dispose 0x00000014, 0x00000385, [r31]
_FLc_Test:
	.stack _FLc_Test = 272
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 272
	prepare 0x00000381, 0x0000007C
	movea 0xFFFFFF7C, r3, r3
	mov 0x00000000, r25
	mov r3, r26
	movea 0x00000100, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 274
	add r26, r5
	mov r26, r6
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	st.b r25, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.3_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; entry
	st.b r0, 0x00000000[r3]
	movea 0xFFFFFFAA, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 275
	st.b r5, 0x00000000[r3]
	mov 0x00000001, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 276
	st.b r27, 0x00000001[r3]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 277
	st.b r5, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 279
	jarl _FCL_Init, r31
	mov 0x00000007, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 281
	mov r27, r6
	mov r25, r7
	mov r27, r9
	jarl _FCL_Handel, r31
	ori 0x0000E000, r0, r8
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/user/fcl_ctrl.c", 282
	mov r26, r7
	mov r27, r9
	jarl _FCL_Handel, r31
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x00000381, [r31]
	.section FCL_RESERVED.bss, bss
_FCL_Copy_area:
	.ds (32768)
