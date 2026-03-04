;/* PRQA S 3108++ */
;/**
; * Copyright (C) 2024 Isoft Infrastructure Software Co., Ltd.
; * SPDX-License-Identifier: LGPL-2.1-only-with-exception OR  LicenseRef-Commercial-License
; *
; * This library is free software; you can redistribute it and/or modify it under the terms of the
; * GNU Lesser General Public License as published by the Free Software Foundation; version 2.1.
; * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
; * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
; * See the GNU Lesser General Public License for more details.
; * You should have received a copy of the GNU Lesser General Public License along with this library;
; * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
; * or see <https://www.gnu.org/licenses/>.
; *
; * Alternatively, this file may be used under the terms of the Isoft Infrastructure Software Co., Ltd.
; * Commercial License, in which case the provisions of the Isoft Infrastructure Software Co., Ltd.
; * Commercial License shall apply instead of those of the GNU Lesser General Public License.
; *
; * You should have received a copy of the Isoft Infrastructure Software Co., Ltd.  Commercial License
; * along with this program. If not, please find it at <https://EasyXMen.com/xy/reference/permissions.html>
; *
; ********************************************************************************
; **                                                                            **
; **  FILENAME    : Os_Arch_PortAsm.850                                         **
; **                                                                            **
; **  Created on  :                                                             **
; **  Author      : i-soft-os                                                   **
; **  Vendor      :                                                             **
; **  DESCRIPTION : Variable definition                                         **
; **                                                                            **
; **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
; **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
; **                                                                            **
; *******************************************************************************/
;/* PRQA S 3108-- */
;/*=======[I N C L U D E S]====================================================*/

;/*=======[E X T E R N A L   D A T A]==========================================*/
    .extern _OS_GetSystemStackPointer
    .extern _OS_GetTaskStackPointer
    .extern _Os_ArchTempSp
    .extern _OS_SaveTaskStackPointer
    .extern _Os_SwitchTask
    
    .extern _Os_Vector_Handler
    .extern _Os_FE_Handler
    .extern _Os_FENMI
    .extern _Os_MipMdp

;/*=======[M A C R O S]========================================================*/
OS_FEINTF_FACTOR_0 .equ 0xFFC00100
CFG_FPU_ENABLE .equ 0

;/*--------------------------Load and Switch to system stack----------------------*/
LOAD_SYSTEM_STACK .macro
    jarl _OS_GetSystemStackPointer,lp
    mov    #_Os_ArchTempSp, r7
    ld.w   0[r7], r7
    mov    r7, sp
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Load and Switch to task stack------------------------*/
LOAD_TASK_STACK .macro
    jarl _OS_GetTaskStackPointer, lp
    mov #_Os_ArchTempSp, r6
    ld.w 0[r6], sp
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Disable FE&EI interrupt------------------------------*/
DISABLE_FEANDEI_INT .macro
        pushsp r6,r7
        stsr 5, r7, 0       ;/* r7 = PSW */
        ori 0xa0, r7, r7
        ldsr r7, 5, 0       ;/* PSW = r7 */
        popsp r6,r7
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Enable FE&EI interrupt-------------------------------*/
ENABLE_FEANDEI_INT .macro
        pushsp r6,r7
        stsr 5, r7, 0       ;/* r7 = PSW */
        mov 0xFFFFFF5FU,r6
        and  r6, r7
        ldsr r7, 5, 0       ;/* PSW = r7 */
        popsp r6,r7
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Resum fpu Context---------------------------------*/
OS_ARCH_RESUME_FPU_CONTEXT .macro
    popsp r8,r13      ;r8-r13
    ldsr  r8,6,0      ;/*---resume fpsr--*/
    ldsr  r9,7,0      ;/*---resume fpepc--*/
    ldsr  r10,8,0     ;/*---resume fpst--*/
    ldsr  r11,9,0     ;/*---resume fpcc--*/
    ldsr  r12,10,0    ;/*---resume fpcfg--*/
    ldsr  r13,11,0    ;/*---resume fpec--*/
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Save fpu Context---------------------------------*/
OS_ARCH_SAVE_FPU_CONTEXT .macro
    stsr  6,r8,0      ;/*---save fpsr--*/
    stsr  7,r9,0      ;/*---save fpepc--*/
    stsr  8,r10,0     ;/*---save fpst--*/
    stsr  9,r11,0     ;/*---save fpcc--*/
    stsr  10,r12,0    ;/*---save fpcfg--*/
    stsr  11,r13,0    ;/*---save fpec--*/
    pushsp r8,r13     ;r8-r13
    .endm
;/*-------------------------------------------------------------------------------*/


;/*--------------------------resum thread Context---------------------------------*/
OS_ARCH_RESUME_CONTEXT .macro
$IF (1 == CFG_FPU_ENABLE)
    OS_ARCH_RESUME_FPU_CONTEXT
$ENDIF ; (1 == CFG_FPU_ENABLE)
    popsp r6,r7
    ldsr  r6,0,0    ;/*---resume eipc--*/
    ldsr  r7,1,0    ;/*---resume eipsw--*/
    popsp r5,r31    ;r5-r31
    popsp r1,r2
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Save thread Context----------------------------------*/
OS_ARCH_SAVE_CONTEXT .macro
    pushsp r1,r2               ;/*-- Push register to sp */
    pushsp r5,r31              ;r5-r31
    stsr 0, r6,0               ;/*-- save eipc to r6*/
    stsr 1, r7,0               ;/*-- save eipsw to r7*/
    pushsp r6,r7               ;/*-- push eipc and eipsw*/
$IF (1 == CFG_FPU_ENABLE)
    OS_ARCH_SAVE_FPU_CONTEXT
$ENDIF ; (1 == CFG_FPU_ENABLE)
    mov #_Os_ArchTempSp, r21   ;/* -- Save Current sp */
    st.w sp, 0[r21]             
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------Save FEENTER Context----------------------------------*/
OS_ARCH_SAVE_CONTEXT_FEENTER .macro
    pushsp r1,r2              ;/*-- Push register to sp*/
    pushsp r4,r31             ;r4-r31
    stsr 2, r6,0              ;/*--save fepc to r6*/
    stsr 3, r7,0              ;/*--save fepsw to r7*/
    pushsp r6,r7              ;/*--push fepc and fepsw*/
$IF (1 == CFG_FPU_ENABLE)
    OS_ARCH_SAVE_FPU_CONTEXT
$ENDIF ; (1 == CFG_FPU_ENABLE)
    mov #_Os_ArchTempSp, r21   ;/*--Save Current sp*/
    st.w sp, 0[r21]        
    .endm
;/*-------------------------------------------------------------------------------*/

;/*--------------------------RESUME FEENTER Context----------------------------------*/
OS_ARCH_RESUME_CONTEXT_FEENTER .macro
$IF (1 == CFG_FPU_ENABLE)
    OS_ARCH_RESUME_FPU_CONTEXT
$ENDIF ; (1 == CFG_FPU_ENABLE)
    popsp r6,r7
    ldsr  r6,2,0    ;/*--resume fepc--*/
    ldsr  r7,3,0    ;/*--resume fepsw--*/
    popsp r4,r31    ;r4-r31
    popsp r1,r2
    .endm
;/*-------------------------------------------------------------------------------*/

;/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/

;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                           Switch to privileged mode                           */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .align 4
_Os_ArchSetSvMode:
    pushsp r6,r7
    stsr 1, r7, 0      ;/* r7 = EIPSW */
    mov 0xBFFFFFFF, r6
    and r6, r7         ;/* r7.bit30 = 0 */
    ldsr r7, 1, 0      ;/* EIPSW = r7(UM=0) */
    stsr 5, r7, 0      ;/* r7 = PSW */
    popsp r6,r7
    eiret

;/*-------------------------------------------------------------------------------*/
;/*                                   Trap 1                                      */
;/*                   Terminate thread  &   Promote privileges                    */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public Os_SystemCall_Trap1
    .align 4
Os_SystemCall_Trap1:
    ;/*--------disable interrupt---------*/
    DISABLE_FEANDEI_INT

    pushsp r6,r7
    stsr 13, r7, 0     ; /* EIIC = r7 */
    andi 0xF, r7, r7
    cmp 0, r7
    bz _StartScheduler
    cmp 1, r7
    bz _SetSvMode

;/*---Terminate thread:switch and restore the context without saving the context--*/
_StartScheduler:
    popsp r6,r7
    LOAD_SYSTEM_STACK        ;/*--load system stack and switch sp--*/
    jarl _Os_SwitchTask, lp  ;/*--Switch thread--*/
    LOAD_TASK_STACK          ;/*--load Task stack and switch sp--*/
    OS_ARCH_RESUME_CONTEXT ;/*--resume thread--*/

    ;/*------Return-----*/
    eiret

;/*----- Promote privileges----*/
_SetSvMode:
    popsp r6,r7
    jr _Os_ArchSetSvMode

;/*-------------------------------------------------------------------------------*/
;/*                                   Trap 0                                      */
;/*                  system scheduling:Save and restore context                   */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public Os_SystemCall_Trap0
    .align 4
Os_SystemCall_Trap0:
    ;/*--------disable interrupt---------*/
   DISABLE_FEANDEI_INT

   ;/*---save context-----*/
   OS_ARCH_SAVE_CONTEXT

   jarl _OS_SaveTaskStackPointer, lp

   ;/*--load system stack and switch sp--*/
   LOAD_SYSTEM_STACK

   ;/*--Switch thread--*/
   jarl _Os_SwitchTask, lp

   ;/*--load Task stack and switch sp--*/
   LOAD_TASK_STACK

   ;/*--resume thread--*/
   OS_ARCH_RESUME_CONTEXT
    
   ;/*------Return-----  */
   eiret

;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                        Cat1 ISR EI interrupt operations                       */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public _Os_ISR1Handler
    .align 4
_Os_ISR1Handler:
    ;/*--------disable interrupt---------*/
    DISABLE_FEANDEI_INT

    ;/*----save context-----*/
    OS_ARCH_SAVE_CONTEXT

    ;/*-----Get exception number-----*/
    stsr 13, r6, 0     ; /* EIIC = r6 */
    andi 0xFFF, r6, r6
    shl 2,r6

    ;/*-----Get interrupt entry address----- */
    mov #_Os_Vector_Handler, r7
    add r6, r7
    ld.w 0[r7],r7

    ;/*----jump to interrupt service function---*/
    jmp [r7]

;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                       Cat2 ISR EI interrupt operations                        */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public _Os_ISR2Handler
    .align 4
_Os_ISR2Handler:
    ;/*--------disable interrupt---------*/
    DISABLE_FEANDEI_INT

    ;/*----save context-----*/
    OS_ARCH_SAVE_CONTEXT

    ;/*-----Get exception number-----*/
    stsr 13, r6, 0     ; /* EIIC = r6 */
    andi 0xFFF, r6, r6
    shl 2,r6

    ;/*-----Get interrupt entry address----- */
    mov #_Os_Vector_Handler, r7
    add r6, r7
    ld.w 0[r7],r7

    ;/*----jump to interrupt service function---*/
    jmp [r7]


;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                      Cat2 ISR EI interrupt exit processing                    */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public _Os_ISR2Exit
    .align 4
_Os_ISR2Exit:
    ;/*------load sp-----*/
    mov #_Os_ArchTempSp, r6
    ld.w 0[r6], sp

    ;/*------resume thread context---*/
    OS_ARCH_RESUME_CONTEXT

    ;/*------Return-----  */
    eiret

;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                      Cat1 ISR EI interrupt exit processing                    */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public _Os_ISR1Exit
    .align 4
_Os_ISR1Exit:
    ;/*------load sp-----*/
    mov #_Os_ArchTempSp, r6  
    ld.w 0[r6], sp 
    OS_ARCH_RESUME_CONTEXT

    ;/*------Return-----  */
    eiret

;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                             FE interrupt operations                           */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public Os_FEHandler
    .align 4
Os_FEHandler:
    ;/*--------disable interrupt---------*/
    DISABLE_FEANDEI_INT

    ;/*----save context-----*/
    OS_ARCH_SAVE_CONTEXT_FEENTER

    ;/*-----Get exception number-----*/
    mov OS_FEINTF_FACTOR_0, r6    ;/*Load address of FE interrupt factor register*/
    ld.w 0[r6], r6                ;/*Read exception bitmask*/
    sch1r r6, r6                  ;/*Get 1-based position of first set bit (e.g. 0b1 -> 1, 0b10 -> 2)*/
    mov 0x1, r7                  
    sub r7, r6                    ;/*Convert to 0-based index for vector table*/
    shl 2,r6                      ;/*Multiply by 4 (pointer size)*/

    mov #_Os_FE_Handler, r7
    add r6, r7                    ;/*Add offset */
    ld.w 0[r7],r7
    jmp [r7]

;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                           FE interrupt exit processing                        */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public _Os_FeISRExit
    .align 4
_Os_FeISRExit:
    ;/*------load sp-----*/
    mov #_Os_ArchTempSp, r6
    ld.w 0[r6], sp

    ;/*------resume thread context---*/
    OS_ARCH_RESUME_CONTEXT_FEENTER

    ;/*------Return-----  */
    feret


;/*-------------------------------------------------------------------------------*/
;/*                                                                               */
;/*                               Os_ExceptionTable                               */
;/*                                                                               */
;/*-------------------------------------------------------------------------------*/
    .public _Os_ExceptionTable
    .align 0x200
_Os_ExceptionTable:
    ;/* 0x00 */
    jr __start

    ;/* 0x10 SYSERR */
    .align 0x10
_SYSERR:
    jr _SYSERR

    ;/* 0x20 Reserve */
    .align 0x10
_none_ERROR1:
    jr _none_ERROR1

    ;/* 0x30 FETRAP */
    .align 0x10
_FETRAP:
    jr _FETRAP

    ;/* 0x40	TRAP0 : System Dispatch*/
    .align 0x10
    jr Os_SystemCall_Trap0
_SYSTEMCALL_ERROR:
    jr _SYSTEMCALL_ERROR

    ;/* 0x50	TRAP1 : System StartScheduler / Privilege Change */
    .align 0x10
    jr Os_SystemCall_Trap1
    jr _SYSTEMCALL_ERROR

    ;/* 0x60	RIE :  */
    .align 0x10
_RIE:
    jr _RIE

    ;/* 0x70	FPE_FXE :  */
    .align 0x10
_FPE_FXE:
    jr _FPE_FXE

    ;/* 0x80	UCPOP :  */
    .align 0x10
_UCPOP:
    jr _UCPOP

    ;/* 0x90 MDP/MIP */
    .align 0x10
    jr _Os_MipMdp

    ;/* 0xA0 PIE */
    .align 0x10
_PIE:
    jr _PIE

    ;/* 0xB0 Reserve */
    .align 0x10
_none_ERROR2:
    jr _none_ERROR2

    ;/* 0xC0	MAE */
    .align 0x10
_MAE:
    jr _MAE

    ;/* 0xD0 Reserve */
    .align 0x10
_none_ERROR3:
    jr _none_ERROR3

    ;/* 0xE0	Os_FENMI :  */
    .align 0x10
    jr _Os_FENMI

    ;/* 0xF0	FEINT :  */
    .align 0x10
    jr Os_FEHandler

    ;/* 0x100	EIINT0-2047	Direct Method priority0*/
    .align 0x10
    jr _Os_ISR1Handler

    ;/* 0x110	EIINT0-2047	Direct Method priority1*/
    .align 0x10
    jr _Os_ISR1Handler

    ;/* 0x120	EIINT0-2047	Direct Method priority2*/
    .align 0x10
    jr _Os_ISR1Handler

    ;/* 0x130	EIINT0-2047	Direct Method priority3*/
    .align 0x10
    jr _Os_ISR1Handler

    ;/* 0x140	EIINT0-2047	Direct Method priority4*/
    .align 0x10
    jr _Os_ISR1Handler

    ;/* 0x150	EIINT0-2047	Direct Method priority5*/
    .align 0x10
    jr _Os_ISR1Handler

    ;/* 0x160	EIINT0-2047	Direct Method priority6*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x170	EIINT0-2047	Direct Method priority7*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x180	EIINT0-2047	Direct Method priority8*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x190	EIINT0-2047	Direct Method priority9*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x1A0	EIINT0-2047	Direct Method priority10*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x1B0	EIINT0-2047	Direct Method priority11*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x1C0	EIINT0-2047	Direct Method priority12*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x1D0	EIINT0-2047	Direct Method priority13*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x1E0	EIINT0-2047	Direct Method priority14*/
    .align 0x10
    jr _Os_ISR2Handler

    ;/* 0x1F0	EIINT0-2047	Direct Method priority15*/
    .align 0x10
    jr _Os_ISR2Handler

;/*=======[E N D   O F   F I L E]==============================================*/
