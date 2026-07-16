#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Diag_Callout\DIDReadWrite.c -oDefaultBuild\DIDReadWrite.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5dd5cc4800ef4bea8fa17d0ac05fea94rzpdyhly.4ky
#@	compiled at Thu Jul 16 13:41:42 2026

	.file "..\..\Bsw\SystemServices\BootServices\Diag_Callout\DIDReadWrite.c"

	$reg_mode 22
	.dbl_size 4

	.extern _DcmState
	.public _DcmSessionValue, 1
	.public _DID_Infos, 564
	.public _WriteDataF198, 11
	.public _WriteDataF187, 5
	.public _WriteDataF18A, 5
	.public _DID_Init
	.public _DID_Write
	.extern _CommF_DataCopy
	.extern _FlsIf_Write
	.extern _Diag_FlagRead
	.extern _EEIf_Write
	.extern _Diag_FlagWrite
	.public _DID_Read
	.extern _FlsIf_Read
	.extern _EEIf_Read

	.section .text, text
_DID_Init:
	.stack _DID_Init = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 398
	jmp [r31]
_DID_Write:
	.stack _DID_Write = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 434
	prepare 0x00000301, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 438
	ld.bu 0x00000000[r7], r5
	mov r7, r25
	mov r6, r26
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 0
	add 0xFFFFFFFF, r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_2:	; entry
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_3:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 453
	ld.hu 0x00000002[r25], r5
	ori 0x0000F187, r0, r6
	cmp r6, r5
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 455
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 456
	jarl32 _Diag_FlagRead, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 457
	ld.bu 0x00000003[r3], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_5:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 459
	ld.hu 0x00000004[r25], r7
	ld.w 0x00000008[r25], r6
	mov r26, r8
	jarl32 _EEIf_Write, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 460
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 461
	jarl32 _Diag_FlagWrite, r31
	mov r25, r10
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.2_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 442
	ld.hu 0x00000004[r25], r8
	ld.w 0x00000008[r25], r6
	mov r26, r7
	jarl32 _CommF_DataCopy, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 444
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.2_7:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 448
	ld.hu 0x00000004[r25], r7
	ld.w 0x00000008[r25], r6
	mov r26, r8
	jarl32 _FlsIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 449
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.2_8:	; if_else_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 470
	ld.hu 0x00000004[r25], r7
	ld.w 0x00000008[r25], r6
	mov r26, r8
	jarl32 _EEIf_Write, r31
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.2_9:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 482
	dispose 0x00000004, 0x00000301, [r31]
_DID_Read:
	.stack _DID_Read = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 497
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 501
	ld.bu 0x00000000[r7], r5
	mov r6, r9
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 0
	add 0xFFFFFFFF, r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_2:	; entry
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_3:	; switch_clause_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 520
	ld.hu 0x00000004[r7], r5
	ld.w 0x00000008[r7], r6
	mov r5, r7
	mov r9, r8
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 521
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 505
	ld.w 0x00000008[r7], r5
	mov #_DcmSessionValue, r6
	cmp r5, r6
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 507
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	shr 0x00000006, r5
	movhi HIGHW1(#_DcmSessionValue), r0, r6
	st.b r5, LOWW(#_DcmSessionValue)[r6]
.BB.LABEL.3_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 509
	ld.hu 0x00000004[r7], r8
	ld.w 0x00000008[r7], r7
	mov r9, r6
	jarl32 _CommF_DataCopy, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 511
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_7:	; switch_clause_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 515
	ld.hu 0x00000004[r7], r5
	ld.w 0x00000008[r7], r6
	mov r5, r7
	mov r9, r8
	jarl32 _FlsIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 516
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_8:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/DIDReadWrite.c", 531
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
_DcmSessionValue:
	.ds (1)
_WriteDataF198:
	.db 0x42,0x44,0x55,0x20,0x24,0x03,0x13,0x30,0x30,0x35
	.ds (1)
_WriteDataF187:
	.db 0x42,0x44,0x30,0x36,0x30
_WriteDataF18A:
	.db 0x56,0x31,0x30,0x37,0x38
	.section .const, const
	.align 4
_DID_Infos:
	.db 0x02
	.ds (1)
	.dhw 0xF100
	.dhw 0x0006
	.db 0x01
	.ds (1)
	.dw 0x00000016
	.db 0x02
	.ds (1)
	.dhw 0xF110
	.dhw 0x0010
	.db 0x03
	.ds (1)
	.dw 0x0000001C
	.db 0x02
	.ds (1)
	.dhw 0xF111
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000002C
	.db 0x02
	.ds (1)
	.dhw 0xF112
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000003C
	.db 0x02
	.ds (1)
	.dhw 0xF113
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000004C
	.db 0x02
	.ds (1)
	.dhw 0xF114
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000005C
	.db 0x02
	.ds (1)
	.dhw 0xF115
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000006C
	.db 0x02
	.ds (1)
	.dhw 0xF116
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000007C
	.db 0x02
	.ds (1)
	.dhw 0xF117
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000008C
	.db 0x02
	.ds (1)
	.dhw 0xF118
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000009C
	.db 0x02
	.ds (1)
	.dhw 0xF119
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x000000AC
	.db 0x02
	.ds (1)
	.dhw 0xF11A
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x000000BC
	.db 0x02
	.ds (1)
	.dhw 0xF11B
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x000000CC
	.db 0x02
	.ds (1)
	.dhw 0xF11C
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x000000DC
	.db 0x02
	.ds (1)
	.dhw 0xF11D
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x000000EC
	.db 0x02
	.ds (1)
	.dhw 0xF11E
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x000000FC
	.db 0x02
	.ds (1)
	.dhw 0xF11F
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000010C
	.db 0x02
	.ds (1)
	.dhw 0xF120
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x0000011C
	.db 0x02
	.ds (1)
	.dhw 0xF121
	.dhw 0x0010
	.db 0x03
	.ds (1)
	.dw 0x0000012C
	.db 0x02
	.ds (1)
	.dhw 0xF183
	.dhw 0x000A
	.db 0x01
	.ds (1)
	.dw 0x0000013C
	.ds (1)
	.ds (1)
	.dhw 0xF186
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dw #_DcmSessionValue
	.db 0x02
	.ds (1)
	.dhw 0xF187
	.dhw 0x0005
	.db 0x03
	.ds (1)
	.dw 0x00000146
	.db 0x02
	.ds (1)
	.dhw 0xF18A
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x0000014B
	.db 0x02
	.ds (1)
	.dhw 0xF18B
	.dhw 0x0003
	.db 0x01
	.ds (1)
	.dw 0x00000150
	.db 0x02
	.ds (1)
	.dhw 0xF18C
	.dhw 0x0010
	.db 0x01
	.ds (1)
	.dw 0x00000153
	.db 0x02
	.ds (1)
	.dhw 0xF190
	.dhw 0x0011
	.db 0x01
	.ds (1)
	.dw 0x00000163
	.db 0x02
	.ds (1)
	.dhw 0xF191
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x00000174
	.db 0x02
	.ds (1)
	.dhw 0xF192
	.dhw 0x000A
	.db 0x01
	.ds (1)
	.dw 0x00000179
	.db 0x02
	.ds (1)
	.dhw 0xF194
	.dhw 0x000A
	.db 0x01
	.ds (1)
	.dw 0x00000183
	.db 0x02
	.ds (1)
	.dhw 0xF198
	.dhw 0x000B
	.db 0x01
	.ds (1)
	.dw 0x0000018D
	.db 0x02
	.ds (1)
	.dhw 0xF1A0
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x00000198
	.db 0x02
	.ds (1)
	.dhw 0xF1A1
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x0000019D
	.db 0x02
	.ds (1)
	.dhw 0xF1A2
	.dhw 0x0008
	.db 0x01
	.ds (1)
	.dw 0x000001A2
	.db 0x02
	.ds (1)
	.dhw 0xF1A5
	.dhw 0x0003
	.db 0x01
	.ds (1)
	.dw 0x000001AA
	.db 0x02
	.ds (1)
	.dhw 0xF1A8
	.dhw 0x0014
	.db 0x01
	.ds (1)
	.dw 0x000001AD
	.db 0x02
	.ds (1)
	.dhw 0xF1A9
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x000001C1
	.db 0x02
	.ds (1)
	.dhw 0xF1AA
	.dhw 0x0005
	.db 0x03
	.ds (1)
	.dw 0x000001C6
	.db 0x02
	.ds (1)
	.dhw 0xF130
	.dhw 0x0020
	.db 0x01
	.ds (1)
	.dw 0x000001CB
	.db 0x02
	.ds (1)
	.dhw 0xF1B5
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x000001EB
	.db 0x02
	.ds (1)
	.dhw 0xF1B6
	.dhw 0x0005
	.db 0x01
	.ds (1)
	.dw 0x000001F0
	.db 0x02
	.ds (1)
	.dhw 0xAFF1
	.dhw 0x01CA
	.db 0x03
	.ds (1)
	.dw 0x000001F5
	.db 0x02
	.ds (1)
	.dhw 0xAFF2
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dw 0x000003BF
	.db 0x02
	.ds (1)
	.dhw 0xAFF5
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dw 0x000003C0
	.db 0x02
	.ds (1)
	.dhw 0xAFFC
	.dhw 0x0002
	.db 0x01
	.ds (1)
	.dw 0x000003C1
	.db 0x02
	.ds (1)
	.dhw 0xAFFD
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dw 0x000003C3
	.db 0x02
	.ds (1)
	.dhw 0xAFFE
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dw 0x000003C4
	.db 0x02
	.ds (1)
	.dhw 0xAFFF
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dw 0x000003C5
