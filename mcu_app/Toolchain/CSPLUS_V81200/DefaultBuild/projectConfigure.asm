#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\project_configure\projectConfigure.c -oDefaultBuild\projectConfigure.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d5217f4d21ab447da88adff88b4e2ce5lo40mknf.qop
#@	compiled at Fri Mar 27 09:50:37 2026

	.file "..\..\Srcode\app\project_configure\projectConfigure.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvMBlockRamBuffer10
	.public _ProjectConfig_GetItemData
	.extern _memcpy
	.extern _NvM_ReadBlock
	.public _ProjectConfigSetMpuVersion
	.extern _strlen

	.section .text, text
_ProjectConfig_GetItemData:
	.stack _ProjectConfig_GetItemData = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 137
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 142
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; entry
	addi 0xFFFFFFDA, r6, r0
	bgt9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 148
	shl 0x00000003, r6
	mov #_configTable.39, r2
	add r6, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 149
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 151
	mov r7, r6
	mov r8, r7
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 155
	dispose 0x00000000, 0x00000001, [r31]
_GetSVIF.1:
	.stack _GetSVIF.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 164
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 166
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 170
	mov #_g_SVIF.1, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 171
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 172
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.2_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 173
	dispose 0x00000000, 0x00000061, [r31]
_GetF111Data.1:
	.stack _GetF111Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 182
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 184
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 188
	mov #_g_F111.2, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 189
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 190
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.3_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 191
	dispose 0x00000000, 0x00000061, [r31]
_GetF112Data.1:
	.stack _GetF112Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 200
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 202
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 206
	mov #_g_F112.3, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 207
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 208
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.4_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 209
	dispose 0x00000000, 0x00000061, [r31]
_GetF113Data.1:
	.stack _GetF113Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 218
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 220
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 224
	mov #_g_F113.4, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 225
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 226
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 227
	dispose 0x00000000, 0x00000061, [r31]
_GetF114Data.1:
	.stack _GetF114Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 236
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 238
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 242
	mov #_g_F114.5, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 243
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 244
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 245
	dispose 0x00000000, 0x00000061, [r31]
_GetF115Data.1:
	.stack _GetF115Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 254
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 256
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 260
	mov #_g_F115.6, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 261
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 262
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.7_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 263
	dispose 0x00000000, 0x00000061, [r31]
_GetF116Data.1:
	.stack _GetF116Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 272
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 274
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 278
	mov #_g_F116.7, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 279
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 280
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.8_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 281
	dispose 0x00000000, 0x00000061, [r31]
_GetF117Data.1:
	.stack _GetF117Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 290
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 292
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 296
	mov #_g_F117.8, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 297
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 298
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 299
	dispose 0x00000000, 0x00000061, [r31]
_GetF118Data.1:
	.stack _GetF118Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 308
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 310
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 314
	mov #_g_F118.9, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 315
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 316
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.10_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 317
	dispose 0x00000000, 0x00000061, [r31]
_GetF119Data.1:
	.stack _GetF119Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 326
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 328
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 332
	mov #_g_F119.10, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 333
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 334
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 335
	dispose 0x00000000, 0x00000061, [r31]
_GetF11AData.1:
	.stack _GetF11AData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 344
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 346
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 350
	mov #_g_F11A.11, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 351
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 352
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.12_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 353
	dispose 0x00000000, 0x00000061, [r31]
_GetF11BData.1:
	.stack _GetF11BData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 362
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 364
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 368
	mov #_g_F11B.12, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 369
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 370
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 371
	dispose 0x00000000, 0x00000061, [r31]
_GetF11CData.1:
	.stack _GetF11CData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 380
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 382
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 386
	mov #_g_F11C.13, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 387
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 388
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.14_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 389
	dispose 0x00000000, 0x00000061, [r31]
_GetF11DData.1:
	.stack _GetF11DData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 398
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 400
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 404
	mov #_g_F11D.14, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 405
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 406
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.15_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 407
	dispose 0x00000000, 0x00000061, [r31]
_GetF11EData.1:
	.stack _GetF11EData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 416
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 418
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 422
	mov #_g_F11E.15, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 423
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 424
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.16_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 425
	dispose 0x00000000, 0x00000061, [r31]
_GetF11FData.1:
	.stack _GetF11FData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 434
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 436
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 440
	mov #_g_F11F.16, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 441
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 442
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.17_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 443
	dispose 0x00000000, 0x00000061, [r31]
_GetF120Data.1:
	.stack _GetF120Data.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 452
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 454
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_break_bb
	movea 0x00000010, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 458
	mov #_g_F120.17, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 459
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 460
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.18_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 461
	dispose 0x00000000, 0x00000061, [r31]
_GetBootloaderSWVersion.1:
	.stack _GetBootloaderSWVersion.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 470
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 472
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_break_bb
	mov 0x0000000A, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 476
	mov #_g_bootloaderSWNumber.18, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 477
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 478
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 479
	dispose 0x00000000, 0x00000061, [r31]
_GetSystemSupplierIdentifier.1:
	.stack _GetSystemSupplierIdentifier.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 488
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 490
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_break_bb
	mov 0x00000005, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 494
	mov #_g_systemSupplierIdentifier.19, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 495
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 496
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.20_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 497
	dispose 0x00000000, 0x00000061, [r31]
_GetEcuSerialNumber.1:
	.stack _GetEcuSerialNumber.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 506
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 508
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_break_bb
	movea 0x00000011, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 512
	mov #_g_ecuSerialNumber.20, r7
	jarl _memcpy, r31
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 513
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 514
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.21_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 515
	dispose 0x00000000, 0x00000041, [r31]
_GetEcuHWNumber.1:
	.stack _GetEcuHWNumber.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 524
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 526
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_break_bb
	mov 0x00000005, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 530
	mov #_g_ecuHWNumber.21, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 531
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 532
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.22_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 533
	dispose 0x00000000, 0x00000061, [r31]
_GetEcuHWRefNumber.1:
	.stack _GetEcuHWRefNumber.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 542
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 544
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_break_bb
	mov 0x0000000B, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 548
	mov #_g_ecuHWRefNumber.22, r7
	jarl _memcpy, r31
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 549
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 550
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.23_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 551
	dispose 0x00000000, 0x00000041, [r31]
_GetEcuSWRefNumber.1:
	.stack _GetEcuSWRefNumber.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 560
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 562
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.24_3
.BB.LABEL.24_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_break_bb
	mov 0x0000000B, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 566
	mov #_g_ecuSWRefNumber.23, r7
	jarl _memcpy, r31
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 567
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 568
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 569
	dispose 0x00000000, 0x00000041, [r31]
_GetEcuAppSWVersion.1:
	.stack _GetEcuAppSWVersion.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 578
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 580
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_break_bb
	mov 0x00000005, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 584
	mov #_g_ecuAppSWVersion.24, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 585
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 586
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.25_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 587
	dispose 0x00000000, 0x00000061, [r31]
_GetEcuCalibrationSWVersion.1:
	.stack _GetEcuCalibrationSWVersion.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 596
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 598
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_break_bb
	mov 0x00000005, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 602
	mov #_g_ecuCalibrationSWVersion.25, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 603
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 604
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.26_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 605
	dispose 0x00000000, 0x00000061, [r31]
_GetEcuNCFRefNumber.1:
	.stack _GetEcuNCFRefNumber.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 614
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 616
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.27_3
.BB.LABEL.27_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; if_break_bb
	mov 0x00000009, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 620
	mov #_g_ecuNCFRefNumber.26, r7
	jarl _memcpy, r31
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 621
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 622
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.27_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 623
	dispose 0x00000000, 0x00000041, [r31]
_GetEcuIndexInformation.1:
	.stack _GetEcuIndexInformation.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 632
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 634
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.28_3
.BB.LABEL.28_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; if_break_bb
	mov 0x00000003, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 638
	mov #_g_ecuIndexInformation.27, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 639
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 640
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.28_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 641
	dispose 0x00000000, 0x00000061, [r31]
_GetEcuThirdAppSW.1:
	.stack _GetEcuThirdAppSW.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 668
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 670
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.29_3
.BB.LABEL.29_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_break_bb
	mov 0x00000005, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 674
	mov #_g_ecuThirdAppSW.28, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 675
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 676
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.29_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 677
	dispose 0x00000000, 0x00000061, [r31]
_GetICCIDValueInt.1:
	.stack _GetICCIDValueInt.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 704
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 706
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.30_3
.BB.LABEL.30_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; if_break_bb
	movea 0x00000015, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 710
	mov #_g_ICCIDValueInt.29, r7
	jarl _memcpy, r31
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 711
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 712
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.30_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 713
	dispose 0x00000000, 0x00000041, [r31]
_GetModemSWVersion.1:
	.stack _GetModemSWVersion.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 722
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 724
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.31_3
.BB.LABEL.31_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.31_3
.BB.LABEL.31_2:	; if_break_bb
	movea 0x00000019, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 728
	mov #_g_modemSWVersion.30, r7
	jarl _memcpy, r31
	movea 0x00000018, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 729
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 730
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.31_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 731
	dispose 0x00000000, 0x00000041, [r31]
_GetMcuSWVersion.1:
	.stack _GetMcuSWVersion.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 740
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 742
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.32_3
.BB.LABEL.32_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.32_3
.BB.LABEL.32_2:	; if_break_bb
	movea 0x00000018, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 746
	mov #_g_mcuSWVersion.31, r7
	jarl _memcpy, r31
	movea 0x00000017, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 747
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 748
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.32_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 749
	dispose 0x00000000, 0x00000041, [r31]
_GetNadIMEI.1:
	.stack _GetNadIMEI.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 758
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 760
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_2:	; if_break_bb
	movea 0x00000019, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 764
	mov #_g_NadIMEI.32, r7
	jarl _memcpy, r31
	movea 0x00000018, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 765
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 766
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.33_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 767
	dispose 0x00000000, 0x00000041, [r31]
_GetNadSWVersion.1:
	.stack _GetNadSWVersion.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 776
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 778
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.34_3
.BB.LABEL.34_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.34_3
.BB.LABEL.34_2:	; if_break_bb
	mov 0x00000007, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 782
	mov #_g_NadSWVersion.33, r7
	jarl _memcpy, r31
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 783
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 784
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.34_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 785
	dispose 0x00000000, 0x00000041, [r31]
_GetSignaturePublicKey.1:
	.stack _GetSignaturePublicKey.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 830
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 832
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.35_3
.BB.LABEL.35_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.35_3
.BB.LABEL.35_2:	; if_break_bb
	mov 0x00000003, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 836
	mov #_g_SignaturePublicKey.34, r7
	jarl _memcpy, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 837
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 838
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.35_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 839
	dispose 0x00000000, 0x00000041, [r31]
_GetHSMID.1:
	.stack _GetHSMID.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 848
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 850
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.36_3
.BB.LABEL.36_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.36_3
.BB.LABEL.36_2:	; if_break_bb
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 854
	mov #_g_HSMID.35, r7
	jarl _memcpy, r31
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 855
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 856
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.36_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 857
	dispose 0x00000000, 0x00000041, [r31]
_GetEncryptionAlgorithmFlag.1:
	.stack _GetEncryptionAlgorithmFlag.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 866
	prepare 0x00000061, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 868
	bz9 .BB.LABEL.37_4
.BB.LABEL.37_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.37_4
.BB.LABEL.37_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 873
	mov #_NvMBlockRamBuffer10, r7
	mov 0x0000000A, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.37_4
.BB.LABEL.37_3:	; if_break_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 878
	movhi HIGHW1(#_NvMBlockRamBuffer10+0x0000001F), r0, r2
	ld.bu LOWW(#_NvMBlockRamBuffer10+0x0000001F)[r2], r2
	cmp 0x00000000, r2
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 884
	cmov 0x00000002, 0x00000002, r2, r5
	st.b r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 886
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 888
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.37_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 889
	dispose 0x00000000, 0x00000061, [r31]
_GetSoftwareNumber.1:
	.stack _GetSoftwareNumber.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 898
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x0000000D, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 902
	mov #_g_softWareNumber.36, r7
	jarl _memcpy, r31
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 903
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 906
	dispose 0x00000000, 0x00000041, [r31]
_GetHardwareNumber.1:
	.stack _GetHardwareNumber.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 915
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 917
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.39_3
.BB.LABEL.39_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.39_3
.BB.LABEL.39_2:	; if_break_bb
	movea 0x00000012, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 922
	mov #_g_hardwareNumber.37, r7
	jarl _memcpy, r31
	movea 0x00000011, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 923
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 925
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.39_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 926
	dispose 0x00000000, 0x00000041, [r31]
_GetSoftwareVersion.1:
	.stack _GetSoftwareVersion.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 935
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 937
	cmp 0x00000000, r6
	mov r7, r20
	bz9 .BB.LABEL.40_3
.BB.LABEL.40_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.40_3
.BB.LABEL.40_2:	; if_break_bb
	movea 0x00000012, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 942
	mov #_g_customSWVersionD.38, r7
	jarl _memcpy, r31
	movea 0x00000011, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 943
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 945
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.40_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 946
	dispose 0x00000000, 0x00000041, [r31]
_ProjectConfigSetMpuVersion:
	.stack _ProjectConfigSetMpuVersion = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 954
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 957
	mov #.STR.1, r6
	jarl _strlen, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 958
	mov #.STR.1894, r6
	jarl _strlen, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 962
	cmp 0x00000000, r20
	mov r10, r23
	bz9 .BB.LABEL.41_3
.BB.LABEL.41_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 959
	mov r22, r2
	add r23, r2
	zxb r2
	cmp r2, r21
	bnz9 .BB.LABEL.41_3
.BB.LABEL.41_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 969
	zxb r22
	mov #_g_softWareNumber.36, r21
	mov r21, r6
	mov r20, r7
	mov r22, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 972
	mov r21, r6
	add r22, r6
	zxb r23
	addi 0x00000001, r23, r8
	mov #.STR.1895, r7
	jarl _memcpy, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.41_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/project_configure/projectConfigure.c", 976
	dispose 0x00000000, 0x00000079, [r31]
	.section .const, const
_g_SVIF.1:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F111.2:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F112.3:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F113.4:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F114.5:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F115.6:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F116.7:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F117.8:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F118.9:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F119.10:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F11A.11:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F11B.12:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F11C.13:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F11D.14:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F11E.15:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F11F.16:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_F120.17:
	.ds (2)
	.db 0xAA,0x55
	.ds (12)
_g_bootloaderSWNumber.18:
	.ds (9)
	.db 0x01
_g_systemSupplierIdentifier.19:
	.ds (5)
_g_ecuSerialNumber.20:
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_ecuHWNumber.21:
	.ds (5)
_g_ecuHWRefNumber.22:
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_ecuSWRefNumber.23:
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_ecuAppSWVersion.24:
	.ds (5)
_g_ecuCalibrationSWVersion.25:
	.ds (5)
_g_ecuNCFRefNumber.26:
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_ecuIndexInformation.27:
	.ds (3)
_g_ecuThirdAppSW.28:
	.ds (5)
_g_ICCIDValueInt.29:
	.db 0x38,0x39,0x38,0x36,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.db 0x30,0x30,0x30,0x30
	.ds (1)
_g_modemSWVersion.30:
	.db 0x31,0x31,0x32,0x32,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_mcuSWVersion.31:
	.db 0x31,0x31,0x32,0x32,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_NadIMEI.32:
	.db 0x38,0x36,0x39,0x39,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_NadSWVersion.33:
	.db 0x31,0x31,0x32,0x32,0x30,0x30
	.ds (1)
_g_SignaturePublicKey.34:
	.db 0x30,0x30
	.ds (1)
_g_HSMID.35:
	.db 0x30,0x30,0x30,0x30,0x31,0x32,0x31,0x32,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
_g_hardwareNumber.37:
	.db 0x38,0x37,0x48,0x36,0x41,0x44,0x45,0x30,0x36,0x30,0x20,0x20,0x48,0x2E,0x30,0x30
	.db 0x30
	.ds (1)
_g_customSWVersionD.38:
	.db 0x38,0x37,0x38,0x36,0x41,0x44,0x45,0x30,0x36,0x30,0x20,0x20,0x53,0x2E,0x30,0x30
	.db 0x32
	.ds (1)
	.align 4
_configTable.39:
	.ds (4)
	.dw #_GetSVIF.1
	.dw 0x00000001
	.dw #_GetF111Data.1
	.dw 0x00000002
	.dw #_GetF112Data.1
	.dw 0x00000003
	.dw #_GetF113Data.1
	.dw 0x00000004
	.dw #_GetF114Data.1
	.dw 0x00000005
	.dw #_GetF115Data.1
	.dw 0x00000006
	.dw #_GetF116Data.1
	.dw 0x00000007
	.dw #_GetF117Data.1
	.dw 0x00000008
	.dw #_GetF118Data.1
	.dw 0x00000009
	.dw #_GetF119Data.1
	.dw 0x0000000A
	.dw #_GetF11AData.1
	.dw 0x0000000B
	.dw #_GetF11BData.1
	.dw 0x0000000C
	.dw #_GetF11CData.1
	.dw 0x0000000D
	.dw #_GetF11DData.1
	.dw 0x0000000E
	.dw #_GetF11EData.1
	.dw 0x0000000F
	.dw #_GetF11FData.1
	.dw 0x00000010
	.dw #_GetF120Data.1
	.dw 0x00000011
	.dw #_GetBootloaderSWVersion.1
	.dw 0x00000012
	.dw #_GetSystemSupplierIdentifier.1
	.dw 0x00000013
	.dw #_GetEcuSerialNumber.1
	.dw 0x00000014
	.dw #_GetEcuHWNumber.1
	.dw 0x00000015
	.dw #_GetEcuHWRefNumber.1
	.dw 0x00000016
	.dw #_GetEcuSWRefNumber.1
	.dw 0x00000017
	.dw #_GetEcuAppSWVersion.1
	.dw 0x00000018
	.dw #_GetEcuCalibrationSWVersion.1
	.dw 0x00000019
	.dw #_GetEcuNCFRefNumber.1
	.dw 0x0000001A
	.dw #_GetEcuIndexInformation.1
	.dw 0x0000001B
	.dw #_GetEcuThirdAppSW.1
	.dw 0x0000001C
	.dw #_GetICCIDValueInt.1
	.dw 0x0000001D
	.dw #_GetModemSWVersion.1
	.dw 0x0000001E
	.dw #_GetMcuSWVersion.1
	.dw 0x0000001F
	.dw #_GetNadIMEI.1
	.dw 0x00000020
	.dw #_GetNadSWVersion.1
	.dw 0x00000021
	.dw #_GetSignaturePublicKey.1
	.dw 0x00000022
	.dw #_GetHSMID.1
	.dw 0x00000023
	.dw #_GetEncryptionAlgorithmFlag.1
	.dw 0x00000024
	.dw #_GetSoftwareNumber.1
	.dw 0x00000025
	.dw #_GetHardwareNumber.1
	.dw 0x00000026
	.dw #_GetSoftwareVersion.1
.STR.1:
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.ds (1)
.STR.1894:
	.db 0x30,0x30,0x31
	.ds (1)
.STR.1895:
	.db 0x30,0x30,0x31
	.ds (1)
	.section .data, data
_g_softWareNumber.36:
	.db 0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x31
	.ds (1)
