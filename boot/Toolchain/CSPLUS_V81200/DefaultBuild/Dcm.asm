#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Dcm\Dcm.c -oDefaultBuild\Dcm.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_63f859eaa21c4b46b230608885a97160o3mcvtxu.xyw
#@	compiled at Thu Jul 16 13:41:37 2026

	.file "..\..\Bsw\SystemServices\BootServices\Dcm\Dcm.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Comm_MainTick
	.extern _DID_Infos
	.extern _g_DownSegIdx
	.extern _g_CurLogicalBlockId
	.extern _g_DownBlockIdx
	.extern _Adc_VoltageValue
	.extern _g_SA_FAC
	.extern _g_SA_FAC_Last
	.extern _g_SA_DelayTimer
	.public _Dcm_ResponseFlag, 1
	.public _Dcm_TxSduInfo, 12
	.public _gDCM_FunReq_Flag, 1
	.public _Dcm_S3TimerStartFlag, 1
	.public _Dcm_S3Timer, 2
	.public _Dcm_P2TimerStartFlag, 1
	.public _Dcm_P2Timer, 2
	.public _DcmState, 4
	.public _ServerIdPost, 1
	.public _ServerPostCount, 1
	.public _CurrentProgramCnt, 2
	.public _Dcm_Init
	.extern _EEIf_Read
	.extern _Diag_FlagRead
	.public _Dcm_MainFunction
	.public _Dcm_MainFunction_Post
	.extern _ResetService_EcuReset
	.public _Dcm_TimerFunction
	.extern _CommF_GetElapsedValue
	.extern _Diag_FlagWrite
	.public _Dcm_StartOfReception
	.public _Dcm_CopyRxData
	.public _Dcm_RxIndication
	.public _Dcm_FuncRxIndication
	.extern _CanTp_Init
	.public _Dcm_TxConfirmation
	.public _Dcm_CopyTxData
	.extern _CanTp_Transmit
	.public _Dsd_Nrc78ResponseProcess
	.extern _CanIf_Transmit
	.extern _Delay_Nms
	.extern _CommF_DataSet
	.extern _SecurityAccess_SeedGet
	.extern _SecurityAccess_KeyVerify
	.extern _FlsIf_Init
	.extern _RC_ActivationAndRollback
	.extern _RC_CheckSVN
	.extern _RC_EraseMem_Preprocess
	.extern _RC_EraseMemory
	.extern _RC_ChecksumVerify
	.extern _RC_CheckDependency
	.extern _SecureProgram_CheckProgrammingIntegrity
	.extern _EEIf_Write
	.extern _CommF_GetUint32DataValue
	.extern _RequestDownload
	.extern _TransData_ClrSequenceBuffer
	.extern _FlsIf_Erase
	.extern _TransData_WriteMemory
	.extern _TransData_Copy2SequenceBuffer
	.extern _TransData_CheckSequenceBuffer
	.extern _Calculate36blockCRC16
	.extern _DID_Write
	.extern _DID_Read

	.section .text, text
_Dcm_ClearState.1:
	.stack _Dcm_ClearState.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 145
	mov 0x00000000, r5
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 150
	andi 0x000000FF, r5, r6
	mov #_DcmState, r7
	add r6, r7
	st.b r0, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.1_2:	; bb6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 148
	andi 0x000000FF, r5, r6
	cmp 0x00000004, r6
	blt9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 152
	jmp [r31]
_Dcm_Init:
	.stack _Dcm_Init = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 170
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 172
	jarl _Dcm_ClearState.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 173
	movhi HIGHW1(#_DcmState), r0, r5
	ld.b LOWW(#_DcmState)[r5], r6
	ori 0x00000040, r6, r6
	andi 0x0000007F, r6, r6
	st.b r6, LOWW(#_DcmState)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 174
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r0, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 175
	movhi HIGHW1(#_Dcm_P2TimerStartFlag), r0, r5
	st.b r0, LOWW(#_Dcm_P2TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 176
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	st.b r0, LOWW(#_Dcm_S3TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 177
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	st.b r0, LOWW(#_Dcm_ResponseFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 178
	movhi HIGHW1(#_Dcm_ResDataIndex.4), r0, r5
	st.h r0, LOWW(#_Dcm_ResDataIndex.4)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 179
	movhi HIGHW1(#_Dcm_ReqDataIndex.3), r0, r5
	st.h r0, LOWW(#_Dcm_ReqDataIndex.3)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 180
	movhi HIGHW1(#_Dcm_ResDataLength.6), r0, r5
	st.h r0, LOWW(#_Dcm_ResDataLength.6)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 181
	movhi HIGHW1(#_gDCM_FunReq_Flag), r0, r5
	st.b r0, LOWW(#_gDCM_FunReq_Flag)[r5]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 183
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r6
	st.b r5, LOWW(#_g_CurLogicalBlockId)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 184
	movhi HIGHW1(#_g_DownSegIdx), r0, r6
	st.b r0, LOWW(#_g_DownSegIdx)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 185
	movhi HIGHW1(#_g_DownBlockIdx), r0, r6
	st.b r0, LOWW(#_g_DownBlockIdx)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 186
	movhi HIGHW1(#_ServerIdPost), r0, r6
	st.b r5, LOWW(#_ServerIdPost)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 187
	movhi HIGHW1(#_ServerPostCount), r0, r5
	st.b r0, LOWW(#_ServerPostCount)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 188
	mov #_CurrentProgramCnt, r8
	mov 0x00000002, r7
	movea 0x00000014, r0, r6
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 190
	mov #_g_SA_FAC_Last, r25
	mov 0x00000005, r6
	mov r25, r7
	jarl32 _Diag_FlagRead, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 191
	ld.b 0x00000000[r25], r5
	movhi HIGHW1(#_g_SA_FAC), r0, r6
	st.b r5, LOWW(#_g_SA_FAC)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 192
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_g_SA_DelayTimer), r0, r6
	st.h r5, LOWW(#_g_SA_DelayTimer)[r6]
	dispose 0x00000000, 0x00000201, [r31]
_Dcm_MainFunction:
	.stack _Dcm_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 213
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 216
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000001, r5, r0
	bz17 .BB.LABEL.3_33
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 219
	ori 0x00000008, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 221
	andi 0x000000FE, r5, r5
	movhi HIGHW1(#_DcmState), r0, r6
	st.b r5, LOWW(#_DcmState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 223
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r0, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 225
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	st.b r0, LOWW(#_Dcm_ResponseFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 228
	movhi HIGHW1(#_Dcm_SduBuffer.1), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1)[r5], r5
	addi 0xFFFFFFD0, r5, r0
	bgt9 .BB.LABEL.3_11
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	addi 0xFFFFFFDA, r5, r0
	bgt9 .BB.LABEL.3_7
.BB.LABEL.3_3:	; if_then_bb
	addi 0xFFFFFFF0, r5, r0
	bz9 .BB.LABEL.3_20
.BB.LABEL.3_4:	; if_then_bb
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.3_21
.BB.LABEL.3_5:	; if_then_bb
	addi 0xFFFFFFDE, r5, r0
	bnz9 .BB.LABEL.3_28
.BB.LABEL.3_6:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 281
	jarl _Dsp_ReadDataByIdentifier.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	addi 0xFFFFFFD9, r5, r0
	bz9 .BB.LABEL.3_22
.BB.LABEL.3_8:	; if_then_bb
	addi 0xFFFFFFD8, r5, r0
	bz9 .BB.LABEL.3_23
.BB.LABEL.3_9:	; if_then_bb
	addi 0xFFFFFFD2, r5, r0
	bnz9 .BB.LABEL.3_28
.BB.LABEL.3_10:	; switch_clause_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 277
	jarl _Dsp_WriteDataByIdentifier.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_11:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	addi 0xFFFFFFCA, r5, r0
	bgt9 .BB.LABEL.3_16
.BB.LABEL.3_12:	; if_then_bb
	addi 0xFFFFFFCF, r5, r0
	bz9 .BB.LABEL.3_24
.BB.LABEL.3_13:	; if_then_bb
	addi 0xFFFFFFCC, r5, r0
	bz9 .BB.LABEL.3_25
.BB.LABEL.3_14:	; if_then_bb
	addi 0xFFFFFFCA, r5, r0
	bnz9 .BB.LABEL.3_28
.BB.LABEL.3_15:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 259
	jarl _Dsp_TransferData.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_16:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	addi 0xFFFFFFC9, r5, r0
	bz9 .BB.LABEL.3_26
.BB.LABEL.3_17:	; if_then_bb
	addi 0xFFFFFFC2, r5, r0
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_18:	; if_then_bb
	addi 0xFFFFFF7B, r5, r0
	bnz9 .BB.LABEL.3_28
.BB.LABEL.3_19:	; switch_clause_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 272
	jarl _Dsd_SuppressPositiveResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 273
	jarl _Dsp_ControlDTCSetting.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_20:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 231
	jarl _Dsd_SuppressPositiveResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 232
	jarl _Dsp_DiagnosticSessionControl.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_21:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 236
	jarl _Dsd_SuppressPositiveResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 237
	jarl _Dsp_EcuReset.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_22:	; switch_clause_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 241
	jarl _Dsp_SecurityAccess.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_23:	; switch_clause_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 245
	jarl _Dsd_SuppressPositiveResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 246
	jarl _Dsp_CommunicationControl.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_24:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 250
	jarl _Dsd_SuppressPositiveResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 251
	jarl _Dsp_RoutineControl.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_25:	; switch_clause_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 255
	jarl _Dsp_RequestDownload.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_26:	; switch_clause_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 263
	jarl _Dsp_RequestTransferExit.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_27:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 267
	jarl _Dsd_SuppressPositiveResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 268
	jarl _Dsp_TesterPresent.1, r31
	br9 .BB.LABEL.3_29
.BB.LABEL.3_28:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 289
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000011, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.3_29:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 294
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_31
.BB.LABEL.3_30:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	ld.bu LOWW(#_Dcm_ResponseFlag)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_32
.BB.LABEL.3_31:	; if_then_bb41
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 296
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.3_32:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 299
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 300
	andi 0x000000F3, r6, r6
	st.b r6, LOWW(#_DcmState)[r5]
.BB.LABEL.3_33:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 302
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_MainFunction_Post:
	.stack _Dcm_MainFunction_Post = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 321
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 324
	movhi HIGHW1(#_ServerIdPost), r0, r5
	ld.bu LOWW(#_ServerIdPost)[r5], r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 326
	movhi HIGHW1(#_ServerPostCount), r0, r5
	ld.bu LOWW(#_ServerPostCount)[r5], r5
	cmp 0x00000002, r5
	blt9 .BB.LABEL.4_6
.BB.LABEL.4_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 328
	movhi HIGHW1(#_ServerIdPost), r0, r5
	ld.bu LOWW(#_ServerIdPost)[r5], r5
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	add 0xFFFFFFF0, r5
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; switch_clause_bb12
	movea 0x00000010, r0, r6
	jarl32 _ResetService_EcuReset, r31
.BB.LABEL.4_5:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 379
	movhi HIGHW1(#_ServerIdPost), r0, r5
	mov 0xFFFFFFFF, r6
	st.b r6, LOWW(#_ServerIdPost)[r5]
.BB.LABEL.4_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 381
	movhi HIGHW1(#_ServerPostCount), r0, r5
	ld.b LOWW(#_ServerPostCount)[r5], r6
	add 0x00000001, r6
	st.b r6, LOWW(#_ServerPostCount)[r5]
.BB.LABEL.4_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 383
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_TimerFunction:
	.stack _Dcm_TimerFunction = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 402
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 409
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	ld.bu LOWW(#_g_SA_FAC)[r5], r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 411
	mov #_g_SA_DelayTimer, r6
	jarl32 _CommF_GetElapsedValue, r31
	movea 0x00002710, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 412
	ld.hu 0x00000000[r3], r6
	cmp r5, r6
	bl9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 414
	mov #_g_SA_FAC, r7
	mov 0x00000001, r5
	st.b r5, 0x00000000[r7]
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 415
	jarl32 _Diag_FlagWrite, r31
.BB.LABEL.5_3:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 419
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	ld.bu LOWW(#_Dcm_S3TimerStartFlag)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_4:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 421
	mov #_Dcm_S3Timer, r6
	jarl32 _CommF_GetElapsedValue, r31
	movea 0x00001388, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 422
	ld.hu 0x00000002[r3], r6
	cmp r5, r6
	bl9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 424
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	st.b r0, LOWW(#_Dcm_S3TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 425
	movhi HIGHW1(#_DcmState), r0, r5
	ld.b LOWW(#_DcmState)[r5], r6
	ori 0x000000C0, r6, r6
	st.b r6, LOWW(#_DcmState)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 428
	jarl _Dcm_ClearState.1, r31
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 430
	jarl32 _ResetService_EcuReset, r31
.BB.LABEL.5_6:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 433
	dispose 0x00000004, 0x00000001, [r31]
_Dcm_StartOfReception:
	.stack _Dcm_StartOfReception = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 461
	movhi HIGHW1(#_DcmState), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 468
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000009, r5, r0
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.6_12
.BB.LABEL.6_2:	; bb33
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	ld.bu LOWW(#_Dcm_S3TimerStartFlag)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_3:	; bb44
	movhi HIGHW1(#_gDCM_FunReq_Flag), r0, r5
	ld.bu LOWW(#_gDCM_FunReq_Flag)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; bb56
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r6
	addi 0xFFFFFF80, r6, r0
	bz9 .BB.LABEL.6_1
.BB.LABEL.6_5:	; bb62
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.6_1
.BB.LABEL.6_6:	; if_else_bb
	movea 0x00000413, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 477
	cmp r5, r8
	bl9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_else_bb.if_break_bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.6_12
.BB.LABEL.6_8:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 483
	movhi HIGHW1(#_Dcm_ReqDataIndex.3), r0, r5
	st.h r0, LOWW(#_Dcm_ReqDataIndex.3)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 484
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	st.h r8, LOWW(#_Dcm_ReqDataLength.5)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 485
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r6
	addi 0xFFFFFF80, r6, r0
	bz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bnz9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 489
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	st.b r0, LOWW(#_Dcm_S3TimerStartFlag)[r5]
.BB.LABEL.6_11:	; if_break_bb119
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000412, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 491
	st.h r5, 0x00000000[r9]
	mov 0x00000000, r10
.BB.LABEL.6_12:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 495
	jmp [r31]
_Dcm_CopyRxData:
	.stack _Dcm_CopyRxData = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 518
	movhi HIGHW1(#_DcmState), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 525
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000009, r5, r0
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_1:	; entry.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 533
	andi 0x000000FF, r5, r9
	add r9, r6
	zxh r6
	mov #_Dcm_SduBuffer.1, r10
	add r6, r10
	ld.w 0x00000000[r7], r6
	add r9, r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r10]
	add 0x00000001, r5
.BB.LABEL.7_3:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 531
	ld.hu 0x00000008[r7], r9
	andi 0x000000FF, r5, r6
	cmp r9, r6
	movhi HIGHW1(#_Dcm_ReqDataIndex.3), r0, r6
	ld.hu LOWW(#_Dcm_ReqDataIndex.3)[r6], r6
	blt9 .BB.LABEL.7_2
.BB.LABEL.7_4:	; bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 535
	add r9, r6
	movhi HIGHW1(#_Dcm_ReqDataIndex.3), r0, r5
	st.h r6, LOWW(#_Dcm_ReqDataIndex.3)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 536
	ld.h 0x00000008[r7], r5
	movea 0x00000412, r0, r6
	sub r5, r6
	st.h r6, 0x00000000[r8]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.7_5:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 539
	jmp [r31]
_Dcm_RxIndication:
	.stack _Dcm_RxIndication = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 562
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 566
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 568
	movhi HIGHW1(#_gDCM_FunReq_Flag), r0, r5
	ld.bu LOWW(#_gDCM_FunReq_Flag)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 570
	movhi HIGHW1(#_gDCM_FunReq_Flag), r0, r5
	st.b r0, LOWW(#_gDCM_FunReq_Flag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 571
	jarl _Dcm_FuncRxIndication, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 575
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r0, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 576
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_Dcm_P2Timer), r0, r6
	st.h r5, LOWW(#_Dcm_P2Timer)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 577
	movhi HIGHW1(#_Dcm_P2TimerStartFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_P2TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 578
	movhi HIGHW1(#_DcmState), r0, r5
	set1 0x00000000, LOWW(#_DcmState)[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.8_4:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 583
	movhi HIGHW1(#_DcmState), r0, r25
	clr1 0x00000000, LOWW(#_DcmState)[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 584
	movhi HIGHW1(#_Dcm_ResDataIndex.4), r0, r5
	st.h r0, LOWW(#_Dcm_ResDataIndex.4)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 585
	movhi HIGHW1(#_Dcm_ReqDataIndex.3), r0, r5
	st.h r0, LOWW(#_Dcm_ReqDataIndex.3)[r5]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 586
	jarl32 _CanTp_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 588
	ld.bu LOWW(#_DcmState)[r25], r5
	andi 0x000000C0, r5, r6
	addi 0xFFFFFF80, r6, r0
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 591
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_S3TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 592
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_Dcm_S3Timer), r0, r6
	st.h r5, LOWW(#_Dcm_S3Timer)[r6]
.BB.LABEL.8_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 596
	dispose 0x00000000, 0x00000201, [r31]
_Dcm_FuncRxIndication:
	.stack _Dcm_FuncRxIndication = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 616
	movhi HIGHW1(#_DcmState), r0, r5
	tst1 0x00000003, LOWW(#_DcmState)[r5]
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 618
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r0, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 619
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_Dcm_P2Timer), r0, r6
	st.h r5, LOWW(#_Dcm_P2Timer)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 620
	movhi HIGHW1(#_Dcm_P2TimerStartFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_P2TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 621
	movhi HIGHW1(#_DcmState), r0, r5
	ld.b LOWW(#_DcmState)[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 622
	ori 0x00000005, r6, r6
	st.b r6, LOWW(#_DcmState)[r5]
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 624
	jmp [r31]
_Dcm_TxConfirmation:
	.stack _Dcm_TxConfirmation = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 647
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 651
	cmp 0x0000000A, r7
	bh9 .BB.LABEL.10_7
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	shl 0x00000001, r7
	jmp #.SWITCH.LABEL.10_8[r7]
.SWITCH.LABEL.10_8:
	br9 .BB.LABEL.10_2
	br9 .BB.LABEL.10_6
	br9 .BB.LABEL.10_6
	br9 .BB.LABEL.10_6
	br9 .BB.LABEL.10_7
	br9 .BB.LABEL.10_7
	br9 .BB.LABEL.10_6
	br9 .BB.LABEL.10_7
	br9 .BB.LABEL.10_7
	br9 .BB.LABEL.10_7
	br9 .BB.LABEL.10_6
.SWITCH.LABEL.10_8.END:
.BB.LABEL.10_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 655
	movhi HIGHW1(#_DcmState), r0, r5
	clr1 0x00000003, LOWW(#_DcmState)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 656
	movhi HIGHW1(#_Dcm_ResDataIndex.4), r0, r6
	st.h r0, LOWW(#_Dcm_ResDataIndex.4)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 657
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000010, r5, r0
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r5, r6
	addi 0xFFFFFF80, r6, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; bb27
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_then_bb48
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_S3TimerStartFlag)[r5]
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_Dcm_S3Timer), r0, r6
	st.h r5, LOWW(#_Dcm_S3Timer)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 688
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.10_6:	; switch_clause_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 672
	movhi HIGHW1(#_DcmState), r0, r25
	clr1 0x00000003, LOWW(#_DcmState)[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 673
	movhi HIGHW1(#_Dcm_ResDataIndex.4), r0, r5
	st.h r0, LOWW(#_Dcm_ResDataIndex.4)[r5]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 674
	jarl32 _CanTp_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 676
	ld.b LOWW(#_DcmState)[r25], r5
	ori 0x00000080, r5, r5
	andi 0x000000BF, r5, r5
	st.b r5, LOWW(#_DcmState)[r25]
	br9 .BB.LABEL.10_5
.BB.LABEL.10_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 688
	dispose 0x00000000, 0x00000201, [r31]
_Dcm_CopyTxData:
	.stack _Dcm_CopyTxData = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 716
	mov 0x00000000, r5
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 725
	andi 0x000000FF, r5, r6
	ld.w 0x00000000[r7], r8
	add r6, r8
	movhi HIGHW1(#_Dcm_ResDataIndex.4), r0, r10
	ld.hu LOWW(#_Dcm_ResDataIndex.4)[r10], r10
	add r6, r10
	zxh r10
	mov #_Dcm_SduBuffer.1, r6
	add r10, r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r8]
	add 0x00000001, r5
.BB.LABEL.11_2:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 723
	andi 0x000000FF, r5, r6
	ld.hu 0x00000008[r7], r8
	cmp r8, r6
	blt9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 727
	movhi HIGHW1(#_Dcm_ResDataIndex.4), r0, r5
	ld.h LOWW(#_Dcm_ResDataIndex.4)[r5], r6
	add r8, r6
	st.h r6, LOWW(#_Dcm_ResDataIndex.4)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 729
	movhi HIGHW1(#_Dcm_TxSduInfo+0x00000008), r0, r5
	ld.h LOWW(#_Dcm_TxSduInfo+0x00000008)[r5], r5
	st.h r5, 0x00000000[r9]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 732
	jmp [r31]
_Dsd_SuppressPositiveResponse.1:
	.stack _Dsd_SuppressPositiveResponse.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 752
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	andi 0x00000080, r5, r0
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 754
	andi 0x0000007F, r5, r5
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r6
	st.b r5, LOWW(#_Dcm_SduBuffer.1+0x00000001)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 755
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_ResponseFlag)[r5]
.BB.LABEL.12_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 757
	jmp [r31]
_Dsd_ProcessingDone.1:
	.stack _Dsd_ProcessingDone.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 775
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 777
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r7
	andi 0x000000EF, r7, r8
	st.b r8, LOWW(#_DcmState)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 778
	movhi HIGHW1(#_Dcm_P2TimerStartFlag), r0, r5
	st.b r0, LOWW(#_Dcm_P2TimerStartFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 780
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.13_10
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 782
	mov #_Dcm_SduBuffer.1, r5
	ld.b 0x00000000[r5], r6
	st.b r6, 0x00000001[r5]
	movea 0x0000007F, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 783
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 784
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r6
	ld.b LOWW(#_Dcm_NegativeResCode.2)[r6], r6
	st.b r6, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 785
	mov #_Dcm_TxSduInfo, r6
	st.w r5, 0x00000000[r6]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 786
	st.h r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 787
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	st.b r0, LOWW(#_Dcm_ResponseFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 789
	andi 0x00000004, r7, r0
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov #_Dcm_TxSduInfo, r7
.BB.LABEL.13_3:	; if_then_bb21
	mov 0x00000000, r6
	jarl32 _CanTp_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 825
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 795
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	addi 0xFFFFFFEE, r5, r0
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_6:	; if_else_bb
	addi 0xFFFFFFCF, r5, r0
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_7:	; if_else_bb
	addi 0xFFFFFF82, r5, r0
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_8:	; if_else_bb
	addi 0xFFFFFF81, r5, r0
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_9:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 801
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r0, LOWW(#_Dcm_NegativeResCode.2)[r5]
	br9 .BB.LABEL.13_2
.BB.LABEL.13_10:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 812
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	ld.bu LOWW(#_Dcm_ResponseFlag)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.13_13
.BB.LABEL.13_11:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 814
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	st.b r0, LOWW(#_Dcm_ResponseFlag)[r5]
.BB.LABEL.13_12:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000000, r6
	mov r6, r7
	jarl _Dcm_TxConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 825
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_13:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 819
	mov #_Dcm_SduBuffer.1, r5
	ld.b 0x00000000[r5], r7
	movea 0x00000040, r7, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 820
	mov #_Dcm_TxSduInfo, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 821
	st.h r6, 0x00000008[r7]
	br9 .BB.LABEL.13_3
_Dsd_Nrc78ResponseProcess:
	.stack _Dsd_Nrc78ResponseProcess = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 844
	prepare 0x00000201, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 852
	movhi HIGHW1(#_Dcm_P2TimerStartFlag), r0, r5
	ld.bu LOWW(#_Dcm_P2TimerStartFlag)[r5], r5
	cmp 0x00000001, r5
	mov r6, r25
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 854
	mov #_Dcm_P2Timer, r6
	jarl32 _CommF_GetElapsedValue, r31
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00001388, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 858
	st.h r5, 0x00000002[r3]
.BB.LABEL.14_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 862
	movhi HIGHW1(#_DcmState), r0, r5
	tst1 0x00000004, LOWW(#_DcmState)[r5]
	bnz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	ld.hu 0x00000002[r3], r5
	movea 0x00000028, r0, r6
	cmp r6, r5
	bh9 .BB.LABEL.14_8
.BB.LABEL.14_5:	; bb28
	movhi HIGHW1(#_DcmState), r0, r5
	tst1 0x00000004, LOWW(#_DcmState)[r5]
	bz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; bb35
	ld.hu 0x00000002[r3], r5
	addi 0xFFFFF63C, r5, r0
	bgt9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; bb35
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 866
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_Dcm_P2Timer), r0, r6
	st.h r5, LOWW(#_Dcm_P2Timer)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 867
	mov #_TxNRC78Buf.13.Dsd_Nrc78ResponseProcess, r5
	mov 0x00000003, r6
	st.b r6, 0x00000000[r5]
	movea 0x0000007F, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 868
	st.b r6, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 869
	movhi HIGHW1(#_Dcm_SduBuffer.1), r0, r6
	ld.b LOWW(#_Dcm_SduBuffer.1)[r6], r6
	st.b r6, 0x00000002[r5]
	movea 0x00000078, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 870
	st.b r6, 0x00000003[r5]
	movea 0xFFFFFFAA, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 872
	st.b r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 873
	st.b r6, 0x00000005[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 874
	st.b r6, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 875
	st.b r6, 0x00000007[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 878
	mov #_Dcm_TxSduInfo, r7
	st.w r5, 0x00000000[r7]
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 879
	st.h r5, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 880
	movhi HIGHW1(#_DcmState), r0, r5
	set1 0x00000004, LOWW(#_DcmState)[r5]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 881
	jarl32 _CanIf_Transmit, r31
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 883
	jarl32 _Delay_Nms, r31
.BB.LABEL.14_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 885
	dispose 0x00000004, 0x00000201, [r31]
_Dsp_DiagnosticSessionControl.1:
	.stack _Dsp_DiagnosticSessionControl.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 904
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 910
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000001, r5
	ble9 .BB.LABEL.15_5
.BB.LABEL.15_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 914
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	addi 0xFFFFFFFF, r5, r6
	zxb r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000003, r5
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 918
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.15_4:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 920
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1022
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.15_6:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 926
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.15_10
.BB.LABEL.15_7:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000002, r5
	bz9 .BB.LABEL.15_19
.BB.LABEL.15_8:	; if_else_bb40
	cmp 0x00000003, r5
	bz9 .BB.LABEL.15_25
.BB.LABEL.15_9:	; if_else_bb40.switch_break_bb_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.15_15
.BB.LABEL.15_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 932
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r25
	st.b r0, LOWW(#_Dcm_S3TimerStartFlag)[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 934
	movhi HIGHW1(#_DcmState), r0, r25
	ld.bu LOWW(#_DcmState)[r25], r25
	andi 0x000000C0, r25, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.15_13
.BB.LABEL.15_11:	; bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r25, r25
	addi 0xFFFFFF40, r25, r0
	bz9 .BB.LABEL.15_13
.BB.LABEL.15_12:	; bb48.if_break_bb_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.15_14
.BB.LABEL.15_13:	; if_then_bb62
	mov 0x00000001, r25
.BB.LABEL.15_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 950
	mov #_DcmState, r5
	ld.b 0x00000000[r5], r6
	ori 0x00000040, r6, r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 952
	ld.bu 0x00000001[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 953
	andi 0x000000FC, r6, r6
	st.b r6, 0x00000001[r5]
.BB.LABEL.15_15:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1005
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.15_18
.BB.LABEL.15_16:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1007
	mov #_Dcm_SduBuffer.1, r5
	st.b r0, 0x00000002[r5]
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1008
	st.b r6, 0x00000003[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1009
	st.b r6, 0x00000004[r5]
	mov 0xFFFFFFF4, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1010
	st.b r6, 0x00000005[r5]
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1011
	jarl _Dsd_ProcessingDone.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1013
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.15_18
.BB.LABEL.15_17:	; if_then_bb170
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1015
	movhi HIGHW1(#_ServerIdPost), r0, r5
	movea 0x00000010, r0, r6
	st.b r6, LOWW(#_ServerIdPost)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1016
	movhi HIGHW1(#_ServerPostCount), r0, r5
	st.b r0, LOWW(#_ServerPostCount)[r5]
.BB.LABEL.15_18:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1022
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.15_19:	; switch_clause_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 958
	movhi HIGHW1(#_DcmState), r0, r25
	ld.bu LOWW(#_DcmState)[r25], r25
	andi 0x00000004, r25, r0
	bz9 .BB.LABEL.15_21
.BB.LABEL.15_20:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 960
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r25
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dcm_ResponseFlag)[r25]
	br9 .BB.LABEL.15_9
.BB.LABEL.15_21:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 962
	andi 0x000000C0, r25, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.15_24
.BB.LABEL.15_22:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r25, r25
	addi 0xFFFFFF80, r25, r0
	bz9 .BB.LABEL.15_24
.BB.LABEL.15_23:	; bb100
	movhi HIGHW1(#_DcmState), r0, r25
	ld.bu LOWW(#_DcmState)[r25], r25
	andi 0x000000C0, r25, r25
	addi 0xFFFFFFC0, r25, r0
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_24:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 968
	mov #_DcmState, r25
	ld.b 0x00000000[r25], r5
	ori 0x00000080, r5, r5
	andi 0x000000BF, r5, r5
	br9 .BB.LABEL.15_28
.BB.LABEL.15_25:	; switch_clause_bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 985
	movhi HIGHW1(#_DcmState), r0, r25
	ld.bu LOWW(#_DcmState)[r25], r25
	andi 0x000000C0, r25, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.15_27
.BB.LABEL.15_26:	; bb133
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r25, r25
	addi 0xFFFFFFC0, r25, r0
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_27:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 989
	mov #_DcmState, r25
	ld.b 0x00000000[r25], r5
	ori 0x000000C0, r5, r5
.BB.LABEL.15_28:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	st.b r5, 0x00000000[r25]
	ld.bu 0x00000001[r25], r5
	andi 0x000000FC, r5, r5
	st.b r5, 0x00000001[r25]
	jr .BB.LABEL.15_9
.BB.LABEL.15_29:	; if_else_bb157
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x0000007E, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r25]
	jr .BB.LABEL.15_9
_Dsp_EcuReset.1:
	.stack _Dsp_EcuReset.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1041
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1051
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000001, r5
	ble9 .BB.LABEL.16_4
.BB.LABEL.16_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1056
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1058
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_3:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1060
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1089
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_5:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1082
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1084
	jarl _Dsd_ProcessingDone.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1085
	movhi HIGHW1(#_ServerPostCount), r0, r5
	st.b r0, LOWW(#_ServerPostCount)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1086
	movhi HIGHW1(#_ServerIdPost), r0, r5
	movea 0x00000011, r0, r6
	st.b r6, LOWW(#_ServerIdPost)[r5]
.BB.LABEL.16_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1089
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_SecurityAccess.1:
	.stack _Dsp_SecurityAccess.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1108
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1110
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1112
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_ResponseFlag)[r5]
	br9 .BB.LABEL.17_18
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1115
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1119
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	br9 .BB.LABEL.17_18
.BB.LABEL.17_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1122
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000001, r5
	bgt9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1125
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	br9 .BB.LABEL.17_18
.BB.LABEL.17_6:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1130
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	addi 0xFFFFFFFF, r5, r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.17_11
.BB.LABEL.17_7:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000006, r5
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_8:	; if_else_bb20
	cmp 0x00000005, r5
	bnz9 .BB.LABEL.17_12
.BB.LABEL.17_9:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1134
	jarl _Dsp_SA_SeedProcess.1, r31
	br9 .BB.LABEL.17_14
.BB.LABEL.17_10:	; switch_clause_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1140
	jarl _Dsp_SA_KeyProcess.1, r31
	br9 .BB.LABEL.17_14
.BB.LABEL.17_11:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x0000007E, r0, r6
	br9 .BB.LABEL.17_13
.BB.LABEL.17_12:	; switch_clause_bb25
	movea 0x00000012, r0, r6
.BB.LABEL.17_13:	; switch_clause_bb25
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.17_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1158
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	ld.bu LOWW(#_g_SA_FAC)[r5], r5
	movhi HIGHW1(#_g_SA_FAC_Last), r0, r6
	ld.bu LOWW(#_g_SA_FAC_Last)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.17_16
.BB.LABEL.17_15:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1160
	mov #_g_SA_FAC_Last, r7
	st.b r5, 0x00000000[r7]
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1161
	jarl32 _Diag_FlagWrite, r31
.BB.LABEL.17_16:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1163
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	ld.bu LOWW(#_g_SA_FAC)[r5], r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.17_18
.BB.LABEL.17_17:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1165
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_g_SA_DelayTimer), r0, r6
	st.h r5, LOWW(#_g_SA_DelayTimer)[r6]
.BB.LABEL.17_18:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1169
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.17_20
.BB.LABEL.17_19:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1171
	movhi HIGHW1(#_Dcm_ResDataLength.6), r0, r5
	ld.hu LOWW(#_Dcm_ResDataLength.6)[r5], r6
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.17_20:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1173
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_SA_SeedProcess.1:
	.stack _Dsp_SA_SeedProcess.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1191
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1195
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1198
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1201
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	ld.bu LOWW(#_g_SA_FAC)[r5], r5
	cmp 0x00000002, r5
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	ld.bu LOWW(#_DcmState+0x00000001)[r5], r5
	bl9 .BB.LABEL.18_5
.BB.LABEL.18_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1203
	andi 0x000000FE, r5, r5
.BB.LABEL.18_4:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_DcmState+0x00000001), r0, r6
	st.b r5, LOWW(#_DcmState+0x00000001)[r6]
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000037, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1233
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_5:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1206
	andi 0x00000002, r5, r0
	bz9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1208
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000002, r6
	mov 0x00000004, r8
	mov 0x00000000, r7
	jarl32 _CommF_DataSet, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_7:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1212
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; if_else_bb23.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.18_10
.BB.LABEL.18_9:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1215
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	ld.b LOWW(#_g_SA_FAC)[r5], r6
	add 0x00000001, r6
	st.b r6, LOWW(#_g_SA_FAC)[r5]
	mov 0x00000001, r6
.BB.LABEL.18_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1218
	mov #_Dcm_SduBuffer.1, r7
	add 0x00000002, r7
	jarl32 _SecurityAccess_SeedGet, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1219
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	ld.b LOWW(#_DcmState+0x00000001)[r5], r6
	ori 0x00000001, r6, r6
	st.b r6, LOWW(#_DcmState+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1221
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	ld.bu LOWW(#_g_SA_FAC)[r5], r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.18_12
.BB.LABEL.18_11:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1224
	andi 0x000000FE, r6, r5
	br9 .BB.LABEL.18_4
.BB.LABEL.18_12:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1230
	movhi HIGHW1(#_Dcm_ResDataLength.6), r0, r5
	mov 0x00000006, r6
	st.h r6, LOWW(#_Dcm_ResDataLength.6)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_SA_KeyProcess.1:
	.stack _Dsp_SA_KeyProcess.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1251
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1254
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000006, r5
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1257
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1259
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	ld.bu LOWW(#_DcmState+0x00000001)[r5], r5
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1261
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000024, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_4:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1268
	andi 0x000000FC, r5, r5
	movhi HIGHW1(#_DcmState+0x00000001), r0, r6
	st.b r5, LOWW(#_DcmState+0x00000001)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1270
	mov #_Dcm_SduBuffer.1, r6
	ld.bu 0x00000001[r6], r7
	add 0x00000002, r6
	jarl32 _SecurityAccess_KeyVerify, r31
	movhi HIGHW1(#_g_SA_FAC), r0, r5
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_8
.BB.LABEL.19_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1272
	ld.b LOWW(#_g_SA_FAC)[r5], r6
	add 0x00000001, r6
	st.b r6, LOWW(#_g_SA_FAC)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1273
	zxb r6
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	cmp 0x00000002, r6
	bl9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000036, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1275
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_7:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000035, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1279
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_8:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1284
	st.b r0, LOWW(#_g_SA_FAC)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1286
	jarl32 _FlsIf_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1288
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	set1 0x00000001, LOWW(#_DcmState+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1290
	movhi HIGHW1(#_Dcm_ResDataLength.6), r0, r5
	mov 0x00000002, r6
	st.h r6, LOWW(#_Dcm_ResDataLength.6)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_CommunicationControl.1:
	.stack _Dsp_CommunicationControl.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1312
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1315
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1318
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1321
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000002, r5
	ble9 .BB.LABEL.20_7
.BB.LABEL.20_3:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1325
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.20_6
.BB.LABEL.20_4:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000003, r5
	bz9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1328
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_6:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1330
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000004, r5
	blt9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1366
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_8:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1336
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.20_10
.BB.LABEL.20_9:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.20_13
.BB.LABEL.20_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1346
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000002), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000002)[r5], r5
	addi 0xFFFFFFFF, r5, r6
	zxb r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.20_15
.BB.LABEL.20_11:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000003, r5
	bz9 .BB.LABEL.20_15
.BB.LABEL.20_12:	; if_then_bb69
	movea 0x00000031, r0, r6
	br9 .BB.LABEL.20_14
.BB.LABEL.20_13:	; switch_clause_bb70
	movea 0x00000012, r0, r6
.BB.LABEL.20_14:	; switch_clause_bb70
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.20_15:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1361
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.20_17
.BB.LABEL.20_16:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1363
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.20_17:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1366
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_RoutineControl.1:
	.stack _Dsp_RoutineControl.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1385
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1389
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1391
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_ResponseFlag)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1393
	andi 0x000000C0, r5, r6
	addi 0xFFFFFF40, r6, r0
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1397
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.21_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1399
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000003, r5
	bgt9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1401
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.21_7:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1405
	mov #_Dcm_SduBuffer.1, r5
	ld.bu 0x00000003[r5], r6
	ld.bu 0x00000002[r5], r5
	shl 0x00000008, r5
	or r6, r5
	ori 0x0000DFFE, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1408
	cmp r6, r5
	bgt9 .BB.LABEL.21_12
.BB.LABEL.21_8:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	addi 0xFFFFFDFD, r5, r0
	bz9 .BB.LABEL.21_17
.BB.LABEL.21_9:	; if_else_bb32
	ori 0x0000DFFD, r0, r6
	cmp r6, r5
	bz9 .BB.LABEL.21_19
.BB.LABEL.21_10:	; if_else_bb32
	ori 0x0000DFFE, r0, r6
	cmp r6, r5
	bnz9 .BB.LABEL.21_20
.BB.LABEL.21_11:	; switch_clause_bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1442
	jarl32 _RC_CheckSVN, r31
	br9 .BB.LABEL.21_21
.BB.LABEL.21_12:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	ori 0x0000FF01, r0, r6
	cmp r6, r5
	bz9 .BB.LABEL.21_18
.BB.LABEL.21_13:	; if_else_bb32
	ori 0x0000FF00, r0, r6
	cmp r6, r5
	bz9 .BB.LABEL.21_16
.BB.LABEL.21_14:	; if_else_bb32
	ori 0x0000DFFF, r0, r6
	cmp r6, r5
	bnz9 .BB.LABEL.21_20
.BB.LABEL.21_15:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1412
	jarl _Dsp_RC_CheckProgrammingIntegrity.1, r31
	br9 .BB.LABEL.21_21
.BB.LABEL.21_16:	; switch_clause_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1418
	jarl _Dsp_RC_EraseMemory.1, r31
	br9 .BB.LABEL.21_21
.BB.LABEL.21_17:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1424
	jarl _Dsp_RC_CheckProgrammingPreConditions.1, r31
	br9 .BB.LABEL.21_21
.BB.LABEL.21_18:	; switch_clause_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1430
	jarl _Dsp_RC_CheckProgrammingDependencies.1, r31
	br9 .BB.LABEL.21_21
.BB.LABEL.21_19:	; switch_clause_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1436
	jarl32 _RC_ActivationAndRollback, r31
	br9 .BB.LABEL.21_21
.BB.LABEL.21_20:	; switch_clause_bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1448
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000031, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.21_21:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1453
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.21_23
.BB.LABEL.21_22:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1455
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.21_23:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1458
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_RC_CheckProgrammingPreConditions.1:
	.stack _Dsp_RC_CheckProgrammingPreConditions.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1478
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1481
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007E, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	jmp [r31]
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1483
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1485
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	jmp [r31]
.BB.LABEL.22_4:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1487
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1489
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	jmp [r31]
.BB.LABEL.22_6:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1501
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000004), r0, r5
	st.b r0, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	jmp [r31]
_Dsp_RC_EraseMemory.1:
	.stack _Dsp_RC_EraseMemory.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1521
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1524
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1527
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007E, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1530
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000001, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1532
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000033, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_4:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1535
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1537
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_6:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1541
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r7
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000004, r6
	jarl32 _RC_EraseMem_Preprocess, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1543
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1545
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_8:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1547
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.23_10
.BB.LABEL.23_9:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1549
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000031, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_10:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1552
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	tst1 0x00000001, LOWW(#_DcmState+0x00000002)[r5]
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_11:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1554
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000024, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_12:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1558
	jarl32 _RC_EraseMemory, r31
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000004), r0, r5
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_14
.BB.LABEL.23_13:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1560
	st.b r6, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_14:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1564
	st.b r0, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1566
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.23_16
.BB.LABEL.23_15:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1568
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	set1 0x00000002, LOWW(#_DcmState+0x00000002)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_16:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1570
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.23_18
.BB.LABEL.23_17:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1572
	movhi HIGHW1(#_DcmState+0x00000003), r0, r5
	set1 0x00000002, LOWW(#_DcmState+0x00000003)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_18:	; if_else_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1574
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.23_20
.BB.LABEL.23_19:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1576
	movhi HIGHW1(#_DcmState+0x00000003), r0, r5
	set1 0x00000003, LOWW(#_DcmState+0x00000003)[r5]
.BB.LABEL.23_20:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1581
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_RC_CheckProgrammingIntegrity.1:
	.stack _Dsp_RC_CheckProgrammingIntegrity.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1599
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1601
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1604
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007E, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1607
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000001, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1609
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000033, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_4:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1612
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.24_6
.BB.LABEL.24_5:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1614
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_6:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1616
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000008, r5
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_7:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1618
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_8:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1620
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000005, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.24_10
.BB.LABEL.24_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1622
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000024, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_10:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1626
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000004, r6
	jarl32 _RC_ChecksumVerify, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.24_12
.BB.LABEL.24_11:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1628
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000004), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_12:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1632
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000003, r5
	bh9 .BB.LABEL.24_18
.BB.LABEL.24_13:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.24_19[r5]
.SWITCH.LABEL.24_19:
	br9 .BB.LABEL.24_14
	br9 .BB.LABEL.24_15
	br9 .BB.LABEL.24_16
	br9 .BB.LABEL.24_17
.SWITCH.LABEL.24_19.END:
.BB.LABEL.24_14:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1635
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	set1 0x00000001, LOWW(#_DcmState+0x00000002)[r5]
	br9 .BB.LABEL.24_18
.BB.LABEL.24_15:	; switch_clause_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1638
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	set1 0x00000007, LOWW(#_DcmState+0x00000002)[r5]
	br9 .BB.LABEL.24_18
.BB.LABEL.24_16:	; switch_clause_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1641
	movhi HIGHW1(#_DcmState+0x00000003), r0, r5
	set1 0x00000000, LOWW(#_DcmState+0x00000003)[r5]
	br9 .BB.LABEL.24_18
.BB.LABEL.24_17:	; switch_clause_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1644
	movhi HIGHW1(#_DcmState+0x00000003), r0, r5
	set1 0x00000001, LOWW(#_DcmState+0x00000003)[r5]
.BB.LABEL.24_18:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1647
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000004), r0, r5
	st.b r0, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_RC_CheckProgrammingDependencies.1:
	.stack _Dsp_RC_CheckProgrammingDependencies.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1668
	prepare 0x00000201, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1670
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1673
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007E, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1676
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000001, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.25_4
.BB.LABEL.25_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1678
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000033, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.25_4:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1681
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1683
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.25_6:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1685
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1687
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.25_8:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1689
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	tst1 0x00000007, LOWW(#_DcmState+0x00000002)[r5]
	bnz9 .BB.LABEL.25_10
.BB.LABEL.25_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1691
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000024, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.25_10:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1695
	jarl32 _RC_CheckDependency, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_12
.BB.LABEL.25_11:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	jarl32 _SecureProgram_CheckProgrammingIntegrity, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.25_13
.BB.LABEL.25_12:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1698
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000004), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.25_13:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1702
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000004), r0, r5
	st.b r0, LOWW(#_Dcm_SduBuffer.1+0x00000004)[r5]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1703
	st.b r5, 0x00000003[r3]
	movea 0x00000003, r3, r25
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1704
	mov r25, r7
	jarl32 _Diag_FlagWrite, r31
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1705
	mov r25, r7
	jarl32 _Diag_FlagWrite, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1706
	mov #_CurrentProgramCnt, r8
	ld.h 0x00000000[r8], r5
	add 0x00000001, r5
	st.h r5, 0x00000000[r8]
	mov 0x00000002, r7
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1707
	jarl32 _EEIf_Write, r31
	dispose 0x00000004, 0x00000201, [r31]
_Dsp_RequestDownload.1:
	.stack _Dsp_RequestDownload.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1729
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1736
	mov #_Dcm_SduBuffer.1, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1737
	ld.bu 0x00000002[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1736
	ld.bu 0x00000001[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1740
	addi 0x00000003, r25, r6
	mov 0x00000004, r28
	mov r28, r7
	jarl32 _CommF_GetUint32DataValue, r31
	movhi HIGHW1(#_ProgramStartAddr.11), r0, r5
	st.w r10, LOWW(#_ProgramStartAddr.11)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1742
	addi 0x00000007, r25, r6
	mov r28, r7
	jarl32 _CommF_GetUint32DataValue, r31
	movhi HIGHW1(#_ProgramMemorySize.12), r0, r5
	st.w r10, LOWW(#_ProgramMemorySize.12)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1737
	andi 0x0000000F, r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1744
	movhi HIGHW1(#_DcmState), r0, r6
	ld.bu LOWW(#_DcmState)[r6], r6
	andi 0x00000004, r6, r0
	bz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1746
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_ResponseFlag)[r5]
	jr .BB.LABEL.26_28
.BB.LABEL.26_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1754
	andi 0x000000C0, r6, r6
	addi 0xFFFFFF80, r6, r0
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1758
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r26
	st.b r26, LOWW(#_Dcm_NegativeResCode.2)[r5]
	jr .BB.LABEL.26_28
.BB.LABEL.26_4:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1760
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r6
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r6], r6
	cmp 0x00000004, r6
	bgt9 .BB.LABEL.26_6
.BB.LABEL.26_5:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1762
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r26
	st.b r26, LOWW(#_Dcm_NegativeResCode.2)[r5]
	jr .BB.LABEL.26_28
.BB.LABEL.26_6:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1764
	cmp 0x00000000, r27
	bnz17 .BB.LABEL.26_26
.BB.LABEL.26_7:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	cmp 0x00000004, r5
	bnz17 .BB.LABEL.26_26
.BB.LABEL.26_8:	; bb50
	andi 0x000000F0, r26, r5
	addi 0xFFFFFFC0, r5, r0
	bnz17 .BB.LABEL.26_26
.BB.LABEL.26_9:	; bb62
	movhi HIGHW1(#_ProgramStartAddr.11), r0, r5
	ld.w LOWW(#_ProgramStartAddr.11)[r5], r5
	mov 0x00080200, r6
	cmp r6, r5
	bl17 .BB.LABEL.26_26
.BB.LABEL.26_10:	; bb62
	movhi 0x00000015, r0, r6
	cmp r6, r5
	bnc17 .BB.LABEL.26_26
.BB.LABEL.26_11:	; bb84
	movhi HIGHW1(#_ProgramMemorySize.12), r0, r5
	ld.w LOWW(#_ProgramMemorySize.12)[r5], r5
	mov 0x000CFE00, r6
	cmp r6, r5
	bh9 .BB.LABEL.26_26
.BB.LABEL.26_12:	; bb95
	movhi HIGHW1(#_CurrentProgramCnt), r0, r5
	ld.hu LOWW(#_CurrentProgramCnt)[r5], r5
	movea 0x000003E8, r0, r6
	cmp r6, r5
	bnc9 .BB.LABEL.26_26
.BB.LABEL.26_13:	; if_else_bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1775
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x0000000B, r5
	bz9 .BB.LABEL.26_15
.BB.LABEL.26_14:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000013, r0, r6
	br9 .BB.LABEL.26_27
.BB.LABEL.26_15:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1782
	movhi HIGHW1(#_ProgramMemorySize.12), r0, r5
	ld.w LOWW(#_ProgramMemorySize.12)[r5], r7
	movhi HIGHW1(#_ProgramStartAddr.11), r0, r5
	ld.w LOWW(#_ProgramStartAddr.11)[r5], r6
	jarl32 _RequestDownload, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_26
.BB.LABEL.26_16:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1785
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000001, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.26_18
.BB.LABEL.26_17:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000033, r0, r6
	br9 .BB.LABEL.26_27
.BB.LABEL.26_18:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1791
	jarl _Dsp_RD_SequenceCheck.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_28
.BB.LABEL.26_19:	; if_then_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1793
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	movea 0x00000020, r0, r6
	st.b r6, LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5]
	mov 0x00000000, r5
	br9 .BB.LABEL.26_21
.BB.LABEL.26_20:	; bb146
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1797
	andi 0x000000FF, r5, r6
	movea 0x00000021, r0, r7
	sub r6, r7
	mov #_Dcm_SduBuffer.1, r8
	add r8, r6
	shl 0x00000003, r7
	zxb r7
	movea 0x00000402, r0, r8
	shr r7, r8
	st.b r8, 0x00000002[r6]
	add 0x00000001, r5
.BB.LABEL.26_21:	; bb162
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1795
	andi 0x000000FF, r5, r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.26_20
.BB.LABEL.26_22:	; bb168
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1799
	movhi HIGHW1(#_TransDataBlockSeqCounter.7), r0, r5
	st.h r0, LOWW(#_TransDataBlockSeqCounter.7)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1800
	movhi HIGHW1(#_TransDataNumofTransmittedData.10), r0, r5
	st.w r0, LOWW(#_TransDataNumofTransmittedData.10)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1801
	movhi HIGHW1(#_ProgramMemorySize.12), r0, r5
	ld.w LOWW(#_ProgramMemorySize.12)[r5], r5
	mov r5, r6
	shr 0x0000000A, r6
	andi 0x000003FF, r5, r0
	movhi HIGHW1(#_TransDataTotalNumofBlock.8), r0, r5
	bz9 .BB.LABEL.26_24
.BB.LABEL.26_23:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1803
	add 0x00000001, r6
	st.h r6, LOWW(#_TransDataTotalNumofBlock.8)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1804
	movhi HIGHW1(#_ProgramMemorySize.12), r0, r6
	ld.hu LOWW(#_ProgramMemorySize.12)[r6], r6
	andi 0x000003FF, r6, r6
	add 0x00000002, r6
	br9 .BB.LABEL.26_25
.BB.LABEL.26_24:	; if_else_bb187
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1808
	st.h r6, LOWW(#_TransDataTotalNumofBlock.8)[r5]
	movea 0x00000402, r0, r6
.BB.LABEL.26_25:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_TransDataLastBlockSize.9), r0, r5
	st.h r6, LOWW(#_TransDataLastBlockSize.9)[r5]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1812
	jarl _Dsd_ProcessingDone.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1813
	mov #_DcmState, r5
	set1 0x00000003, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1814
	set1 0x00000006, 0x00000002[r5]
	br9 .BB.LABEL.26_28
.BB.LABEL.26_26:	; if_else_bb199
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000031, r0, r6
.BB.LABEL.26_27:	; if_else_bb199
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.26_28:	; if_break_bb205
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1822
	jarl32 _TransData_ClrSequenceBuffer, r31
	dispose 0x00000000, 0x00000385, [r31]
_Dsp_RD_SequenceCheck.1:
	.stack _Dsp_RD_SequenceCheck.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1841
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1850
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	ld.bu LOWW(#_DcmState+0x00000001)[r5], r5
	andi 0x00000008, r5, r0
	bz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1852
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r6
	movea 0x00000024, r0, r7
	st.b r7, LOWW(#_Dcm_NegativeResCode.2)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1853
	andi 0x000000F7, r5, r5
	movhi HIGHW1(#_DcmState+0x00000001), r0, r6
	st.b r5, LOWW(#_DcmState+0x00000001)[r6]
	br9 .BB.LABEL.27_6
.BB.LABEL.27_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1855
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.27_6
.BB.LABEL.27_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1857
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x000CFFFF, r7
	movhi 0x00000008, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1860
	jarl32 _FlsIf_Erase, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.27_6
.BB.LABEL.27_5:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000070, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.27_6:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1874
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1876
	cmp 0x00000000, r5
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1879
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_TransferData.1:
	.stack _Dsp_TransferData.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1898
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1900
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1902
	movhi HIGHW1(#_Dcm_ResponseFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_ResponseFlag)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1910
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1913
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1915
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000002, r5
	bgt9 .BB.LABEL.28_6
.BB.LABEL.28_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1917
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_6:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1920
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	ld.bu LOWW(#_DcmState+0x00000001)[r5], r5
	andi 0x00000002, r5, r0
	bnz9 .BB.LABEL.28_8
.BB.LABEL.28_7:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1922
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000033, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_8:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1925
	andi 0x00000008, r5, r0
	bnz9 .BB.LABEL.28_10
.BB.LABEL.28_9:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1927
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000024, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_10:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1939
	jarl _Dsp_TD_BlockSequenceProsess.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_14
.BB.LABEL.28_11:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1941
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r7
	movhi HIGHW1(#_ProgramStartAddr.11), r0, r5
	ld.w LOWW(#_ProgramStartAddr.11)[r5], r6
	mov #_Dcm_SduBuffer.1, r8
	add 0x00000002, r8
	add 0xFFFFFFFE, r7
	jarl32 _TransData_WriteMemory, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.28_13
.BB.LABEL.28_12:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1943
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000072, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1944
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	clr1 0x00000004, LOWW(#_DcmState+0x00000001)[r5]
	br9 .BB.LABEL.28_14
.BB.LABEL.28_13:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1948
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000002, r6
	jarl32 _TransData_Copy2SequenceBuffer, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1949
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	ori 0x0000FFFE, r0, r6
	add r6, r5
	zxh r5
	movhi HIGHW1(#_ProgramStartAddr.11), r0, r6
	ld.w LOWW(#_ProgramStartAddr.11)[r6], r7
	add r5, r7
	st.w r7, LOWW(#_ProgramStartAddr.11)[r6]
.BB.LABEL.28_14:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1952
	jarl _Dsd_ProcessingDone.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_TD_BlockSequenceProsess.1:
	.stack _Dsp_TD_BlockSequenceProsess.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1974
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1977
	movhi HIGHW1(#_TransDataBlockSeqCounter.7), r0, r5
	ld.h LOWW(#_TransDataBlockSeqCounter.7)[r5], r6
	add 0x00000001, r6
	st.h r6, LOWW(#_TransDataBlockSeqCounter.7)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1978
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r6
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r6], r6
	ori 0x0000FFFE, r0, r7
	add r7, r6
	zxh r6
	movhi HIGHW1(#_TransDataNumofTransmittedData.10), r0, r7
	ld.w LOWW(#_TransDataNumofTransmittedData.10)[r7], r8
	add r6, r8
	st.w r8, LOWW(#_TransDataNumofTransmittedData.10)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1979
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r6
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r6], r6
	ld.hu LOWW(#_TransDataBlockSeqCounter.7)[r5], r5
	andi 0x000000FF, r5, r7
	cmp r6, r7
	bz9 .BB.LABEL.29_8
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1981
	zxb r5
	add 0x00000001, r6
	cmp r6, r5
	bnz9 .BB.LABEL.29_7
.BB.LABEL.29_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000002, r6
	jarl32 _TransData_CheckSequenceBuffer, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_7
.BB.LABEL.29_3:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1984
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	tst1 0x00000006, LOWW(#_DcmState+0x00000002)[r5]
	bz9 .BB.LABEL.29_6
.BB.LABEL.29_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.29_6
.BB.LABEL.29_5:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1986
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000073, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1987
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	clr1 0x00000006, LOWW(#_DcmState+0x00000002)[r5]
.BB.LABEL.29_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1989
	movhi HIGHW1(#_TransDataBlockSeqCounter.7), r0, r5
	ld.h LOWW(#_TransDataBlockSeqCounter.7)[r5], r6
	add 0xFFFFFFFF, r6
	st.h r6, LOWW(#_TransDataBlockSeqCounter.7)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 1990
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	ori 0x0000FFFE, r0, r6
	add r6, r5
	zxh r5
	movhi HIGHW1(#_TransDataNumofTransmittedData.10), r0, r6
	ld.w LOWW(#_TransDataNumofTransmittedData.10)[r6], r7
	sub r5, r7
	st.w r7, LOWW(#_TransDataNumofTransmittedData.10)[r6]
	mov 0x00000001, r10
	br9 .BB.LABEL.29_20
.BB.LABEL.29_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000073, r0, r6
	br9 .BB.LABEL.29_18
.BB.LABEL.29_8:	; if_else_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2000
	movhi HIGHW1(#_TransDataTotalNumofBlock.8), r0, r6
	ld.hu LOWW(#_TransDataTotalNumofBlock.8)[r6], r6
	cmp r6, r5
	bnc9 .BB.LABEL.29_11
.BB.LABEL.29_9:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2002
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r6
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r6], r6
	mov 0x00000000, r10
	addi 0xFFFFFBFE, r6, r0
	bz9 .BB.LABEL.29_20
.BB.LABEL.29_10:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2004
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r6
	movea 0x00000013, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r6]
	br9 .BB.LABEL.29_20
.BB.LABEL.29_11:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2007
	movhi HIGHW1(#_TransDataBlockSeqCounter.7), r0, r5
	ld.hu LOWW(#_TransDataBlockSeqCounter.7)[r5], r5
	cmp r5, r6
	bnz9 .BB.LABEL.29_17
.BB.LABEL.29_12:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2009
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	movhi HIGHW1(#_TransDataLastBlockSize.9), r0, r6
	ld.hu LOWW(#_TransDataLastBlockSize.9)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.29_14
.BB.LABEL.29_13:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000013, r0, r6
	br9 .BB.LABEL.29_18
.BB.LABEL.29_14:	; if_else_bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2015
	movhi HIGHW1(#_TransDataNumofTransmittedData.10), r0, r5
	ld.w LOWW(#_TransDataNumofTransmittedData.10)[r5], r5
	movhi HIGHW1(#_ProgramMemorySize.12), r0, r6
	ld.w LOWW(#_ProgramMemorySize.12)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.29_16
.BB.LABEL.29_15:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000071, r0, r6
	br9 .BB.LABEL.29_18
.BB.LABEL.29_16:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2022
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	set1 0x00000004, LOWW(#_DcmState+0x00000001)[r5]
	br9 .BB.LABEL.29_19
.BB.LABEL.29_17:	; if_else_bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movea 0x00000024, r0, r6
.BB.LABEL.29_18:	; if_else_bb122
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.29_19:	; if_else_bb122
	mov 0x00000000, r10
.BB.LABEL.29_20:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2030
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	tst1 0x00000006, LOWW(#_DcmState+0x00000002)[r5]
	bz9 .BB.LABEL.29_23
.BB.LABEL.29_21:	; bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.29_23
.BB.LABEL.29_22:	; if_then_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2032
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	clr1 0x00000006, LOWW(#_DcmState+0x00000002)[r5]
.BB.LABEL.29_23:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2034
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.29_25
.BB.LABEL.29_24:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2036
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	clr1 0x00000003, LOWW(#_DcmState+0x00000001)[r5]
	mov 0x00000001, r10
.BB.LABEL.29_25:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2040
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_RequestTransferExit.1:
	.stack _Dsp_RequestTransferExit.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2059
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2061
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF80, r5, r0
	bz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2064
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.30_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2072
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000001, r5
	bgt9 .BB.LABEL.30_4
.BB.LABEL.30_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2074
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.30_4:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2076
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.30_6
.BB.LABEL.30_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2079
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.30_6:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2081
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000004, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.30_8
.BB.LABEL.30_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2083
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000024, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.30_8:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2087
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000002, r6
	jarl32 _Calculate36blockCRC16, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.30_10
.BB.LABEL.30_9:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2089
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	ld.b LOWW(#_DcmState+0x00000001)[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2090
	ori 0x00000020, r6, r6
	andi 0x000000F7, r6, r6
	st.b r6, LOWW(#_DcmState+0x00000001)[r5]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2091
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.30_10:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2095
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_TesterPresent.1:
	.stack _Dsp_TesterPresent.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2114
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2116
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000001, r5
	ble9 .BB.LABEL.31_4
.BB.LABEL.31_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2120
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.31_3
.BB.LABEL.31_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2122
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.31_3:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2124
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.31_5
.BB.LABEL.31_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2140
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.31_5:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2135
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.31_7
.BB.LABEL.31_6:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2137
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.31_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2140
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_ControlDTCSetting.1:
	.stack _Dsp_ControlDTCSetting.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2159
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2161
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.32_2
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2164
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x0000007F, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.32_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2166
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000001, r5
	ble9 .BB.LABEL.32_6
.BB.LABEL.32_3:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2170
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.b LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	add 0xFFFFFFFF, r5
	zxb r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.32_5
.BB.LABEL.32_4:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2173
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.32_5:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2175
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.32_7
.BB.LABEL.32_6:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2201
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.32_7:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2181
	movhi HIGHW1(#_Dcm_SduBuffer.1+0x00000001), r0, r5
	ld.bu LOWW(#_Dcm_SduBuffer.1+0x00000001)[r5], r5
	add 0xFFFFFFFF, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.32_9
.BB.LABEL.32_8:	; switch_clause_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2192
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000012, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.32_9:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2196
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	ld.bu LOWW(#_Dcm_NegativeResCode.2)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.32_11
.BB.LABEL.32_10:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2198
	jarl _Dsd_ProcessingDone.1, r31
.BB.LABEL.32_11:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2201
	dispose 0x00000000, 0x00000001, [r31]
_Dsp_WriteDataByIdentifier.1:
	.stack _Dsp_WriteDataByIdentifier.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2220
	prepare 0x00000301, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2224
	mov #_Dcm_SduBuffer.1, r5
	ld.bu 0x00000002[r5], r6
	ld.b 0x00000001[r5], r25
	shl 0x00000008, r25
	or r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2226
	movhi HIGHW1(#_DcmState), r0, r5
	ld.bu LOWW(#_DcmState)[r5], r5
	andi 0x000000C0, r5, r6
	addi 0xFFFFFF80, r6, r0
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	andi 0x000000C0, r5, r5
	addi 0xFFFFFF40, r5, r0
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2230
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x0000007F, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r25]
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.33_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2238
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000004, r5
	blt9 .BB.LABEL.33_5
.BB.LABEL.33_4:	; if_else_bb.bb127_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000000, r26
	jr .BB.LABEL.33_19
.BB.LABEL.33_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2240
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x00000013, r0, r26
	st.b r26, LOWW(#_Dcm_NegativeResCode.2)[r25]
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.33_6:	; bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2246
	andi 0x0000FFFF, r26, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r6
	add r5, r6
	ld.hu 0x00000002[r6], r5
	andi 0x0000FFFF, r25, r6
	cmp r5, r6
	bnz9 .BB.LABEL.33_18
.BB.LABEL.33_7:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2248
	andi 0x0000FFFF, r26, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r6
	add r5, r6
	tst1 0x00000001, 0x00000006[r6]
	bz9 .BB.LABEL.33_18
.BB.LABEL.33_8:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2250
	andi 0x0000FFFF, r26, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r6
	add r5, r6
	ld.hu 0x00000004[r6], r5
	add 0x00000003, r5
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r6
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r6], r6
	cmp r5, r6
	bz9 .BB.LABEL.33_10
.BB.LABEL.33_9:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2252
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x00000013, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r25]
	br9 .BB.LABEL.33_20
.BB.LABEL.33_10:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2255
	movhi HIGHW1(#_DcmState+0x00000001), r0, r5
	tst1 0x00000001, LOWW(#_DcmState+0x00000001)[r5]
	bnz9 .BB.LABEL.33_12
.BB.LABEL.33_11:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2257
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x00000033, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r25]
	br9 .BB.LABEL.33_20
.BB.LABEL.33_12:	; if_else_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2262
	andi 0x0000FFFF, r26, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r7
	add r5, r7
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000003, r6
	jarl32 _DID_Write, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.33_14
.BB.LABEL.33_13:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2264
	jarl _Dsd_ProcessingDone.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2267
	movhi HIGHW1(#_DcmState+0x00000001), r0, r25
	set1 0x00000002, LOWW(#_DcmState+0x00000001)[r25]
	br9 .BB.LABEL.33_20
.BB.LABEL.33_14:	; if_else_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2272
	zxh r25
	ori 0x0000F187, r0, r5
	cmp r5, r25
	bnz9 .BB.LABEL.33_17
.BB.LABEL.33_15:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2274
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2275
	jarl32 _Diag_FlagRead, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2276
	ld.bu 0x00000003[r3], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.33_17
.BB.LABEL.33_16:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2278
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x00000022, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r25]
	br9 .BB.LABEL.33_20
.BB.LABEL.33_17:	; if_else_bb117
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r25
	movea 0x00000072, r0, r5
	st.b r5, LOWW(#_Dcm_NegativeResCode.2)[r25]
	br9 .BB.LABEL.33_20
.BB.LABEL.33_18:	; if_break_bb124
	add 0x00000001, r26
.BB.LABEL.33_19:	; bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2244
	andi 0x0000FFFF, r26, r5
	movea 0x0000002F, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.33_6
.BB.LABEL.33_20:	; bb134
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2295
	zxh r26
	movea 0x0000002F, r0, r5
	cmp r5, r26
	bl9 .BB.LABEL.33_22
.BB.LABEL.33_21:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2297
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000031, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.33_22:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2300
	dispose 0x00000004, 0x00000301, [r31]
_Dsp_ReadDataByIdentifier.1:
	.stack _Dsp_ReadDataByIdentifier.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2320
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2327
	movhi HIGHW1(#_Dcm_ReqDataLength.5), r0, r5
	ld.hu LOWW(#_Dcm_ReqDataLength.5)[r5], r5
	cmp 0x00000003, r5
	bz9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2330
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000013, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.34_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2335
	mov #_Dcm_SduBuffer.1, r5
	ld.bu 0x00000002[r5], r6
	ld.b 0x00000001[r5], r5
	shl 0x00000008, r5
	or r6, r5
	mov 0x00000000, r25
	br9 .BB.LABEL.34_9
.BB.LABEL.34_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2340
	andi 0x0000FFFF, r25, r6
	mul 0x0000000C, r6, r0
	mov #_DID_Infos, r7
	add r6, r7
	ld.hu 0x00000002[r7], r6
	andi 0x0000FFFF, r5, r7
	cmp r6, r7
	bnz9 .BB.LABEL.34_8
.BB.LABEL.34_4:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2343
	andi 0x0000FFFF, r25, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r6
	add r5, r6
	tst1 0x00000000, 0x00000006[r6]
	bz9 .BB.LABEL.34_10
.BB.LABEL.34_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2346
	andi 0x0000FFFF, r25, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r7
	add r5, r7
	mov #_Dcm_SduBuffer.1, r6
	add 0x00000003, r6
	jarl32 _DID_Read, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_7
.BB.LABEL.34_6:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2348
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000072, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
	br9 .BB.LABEL.34_10
.BB.LABEL.34_7:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2352
	andi 0x0000FFFF, r25, r5
	mul 0x0000000C, r5, r0
	mov #_DID_Infos, r6
	add r5, r6
	ld.h 0x00000004[r6], r6
	add 0x00000003, r6
	zxh r6
	jarl _Dsd_ProcessingDone.1, r31
	br9 .BB.LABEL.34_10
.BB.LABEL.34_8:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 0
	add 0x00000001, r25
.BB.LABEL.34_9:	; bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2338
	andi 0x0000FFFF, r25, r6
	movea 0x0000002F, r0, r7
	cmp r7, r6
	bl9 .BB.LABEL.34_3
.BB.LABEL.34_10:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2358
	zxh r25
	addi 0xFFFFFFD1, r25, r0
	bnz9 .BB.LABEL.34_12
.BB.LABEL.34_11:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2360
	movhi HIGHW1(#_Dcm_NegativeResCode.2), r0, r5
	movea 0x00000031, r0, r6
	st.b r6, LOWW(#_Dcm_NegativeResCode.2)[r5]
.BB.LABEL.34_12:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Dcm/Dcm.c", 2363
	dispose 0x00000000, 0x00000201, [r31]
	.section .bss, bss
_Dcm_SduBuffer.1:
	.ds (1042)
_Dcm_NegativeResCode.2:
	.ds (1)
	.align 2
_Dcm_ReqDataIndex.3:
	.ds (2)
	.align 2
_Dcm_ResDataIndex.4:
	.ds (2)
	.align 2
_Dcm_ReqDataLength.5:
	.ds (2)
	.align 2
_Dcm_ResDataLength.6:
	.ds (2)
	.align 2
_TransDataBlockSeqCounter.7:
	.ds (2)
	.align 2
_TransDataTotalNumofBlock.8:
	.ds (2)
	.align 2
_TransDataLastBlockSize.9:
	.ds (2)
	.align 4
_TransDataNumofTransmittedData.10:
	.ds (4)
	.align 4
_ProgramStartAddr.11:
	.ds (4)
	.align 4
_ProgramMemorySize.12:
	.ds (4)
_Dcm_ResponseFlag:
	.ds (1)
	.align 4
_Dcm_TxSduInfo:
	.ds (12)
_gDCM_FunReq_Flag:
	.ds (1)
_Dcm_S3TimerStartFlag:
	.ds (1)
	.align 2
_Dcm_S3Timer:
	.ds (2)
_Dcm_P2TimerStartFlag:
	.ds (1)
	.align 2
_Dcm_P2Timer:
	.ds (2)
_DcmState:
	.ds (4)
_ServerIdPost:
	.ds (1)
_ServerPostCount:
	.ds (1)
	.align 2
_CurrentProgramCnt:
	.ds (2)
_TxNRC78Buf.13.Dsd_Nrc78ResponseProcess:
	.ds (8)
