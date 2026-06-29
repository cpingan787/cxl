//============================================================================
// PROJECT  :  Example project
//============================================================================
//                           C O P Y R I G H T
//============================================================================
// Copyright (c) 2012 by Renesas Electronics  GmbH. All rights reserved.
// Arcadiastr.10
// D-40472 Duesseldorf
// Germany
//============================================================================
//
// Warranty Disclaimer :
// Because the Product(s) is licensed free of charge, there is no warranty of
// any kind whatsoever and expressly disclaimed and excluded by Renesas, either
// expressed or implied, including but not limited to those for non-
// infringement of intellectual property, merchantability and/or fitness for
// the particular purpose. Renesas shall not have any obligation to maintain,
// service or provide bug fixes for the supplied Product(s) and/or the
// Application.
//
// Each User is solely responsible for determining the appropriateness of
// using the Product(s) and assumes all risks associated with its exercise
// of rights under this Agreement, including, but not limited to the risks
// and costs of program errors, compliance with applicable laws, damage to
// or loss of data, programs or equipment, and unavailability or
// interruption of operations.
//
// Limitation of Liability :
// In no event shall Renesas be liable to the User for any incidental,
// consequential, indirect, or punitive damage (including but not limited to
// lost profits) regardless of whether such liability is based on breach of
// contract, tort, strict liability, breach of warranties, failure of
// essential purpose or otherwise and even if advised of the possibility of
// such damages. Renesas shall not be liable for any services or products provided
// by third party vendors, developers or consultants identified or referred
// to the User by Renesas in conRenesastion with the Product(s) and/or the
// Application.
//
//============================================================================
// Enviroment : Devices    : RH850/F1L-176 (V2)
//              Debugger   : GHS Multi 2000
//============================================================================
//
// GHS Multi Example project for use with RH850/F1L-176pin PiggyBack board
// with 16 (or 8) MHz MainOsc
// 
//
//============================================================================

#ifdef __ghs__
#include <dr7f701035_0.h>
#else

#define ICU_SFR(addr)       (*(volatile unsigned long *)(addr))

#define ICUS0ICRCMD         ICU_SFR(0xFFF60000UL)
#define ICUS0ICRIDAT        ICU_SFR(0xFFF60004UL)
#define ICUS0ICRODAT        ICU_SFR(0xFFF60008UL)
#define ICUS0ICRSTS         ICU_SFR(0xFFF6000CUL)
#define ICUS0ICRERR         ICU_SFR(0xFFF60010UL)
#define ICUS0ICRSWINT       ICU_SFR(0xFFF60014UL)
#define ICUS0ICRICUSTS      ICU_SFR(0xFFF60018UL)
#define ICUS0ICRIDATNUM     ICU_SFR(0xFFF6001CUL)
#define ICUS0ICRACC         ICU_SFR(0xFFF60020UL)
#define ICUS0ICRSWINTCL     ICU_SFR(0xFFF60024UL)
#define ICUS0ICRRST         ICU_SFR(0xFFF6002CUL)
#endif /* __ghs__ */

/*===========================================================================
  ICU-S MACRO Definitions
===========================================================================*/  
#define CAST_UL(x)          (*((volatile unsigned long *)(x)))
#define ICUSTXREQ            0x0001
#define ICUSRXREQ            0x0002
#define FLAG_WRRDY          ((ICU_SWINT & ICUSTXREQ) >> (ICUSTXREQ-1))
#define FLAG_RDRDY          ((ICU_SWINT & ICUSRXREQ) >> (ICUSRXREQ-1))
#define CLEAR_WRRDY         {ICU_SWINTCL = ICUSTXREQ;} while(0);
#define CLEAR_RDRDY         {ICU_SWINTCL = ICUSRXREQ;} while(0);
#define WAIT4_WRRDY         {while((ICU_SWINT & ICUSTXREQ) == 0);} while(0);
#define WAIT4_RDRDY         {while((ICU_SWINT & ICUSRXREQ) == 0);} while(0);
#define WAIT4_WRRDY_OR_ERR  {while(((ICU_SWINT & ICUSTXREQ) == 0) && (ICU_ERR == 0));} while(0);
#define WAIT4_RDRDY_OR_ERR  {while(((ICU_SWINT & ICUSRXREQ) == 0) && (ICU_ERR == 0));} while(0);



#define ICU_CMD             ICUS0ICRCMD     
#define ICU_IDAT            ICUS0ICRIDAT    
#define ICU_ODAT            ICUS0ICRODAT    
#define ICU_STS             ICUS0ICRSTS     
#define ICU_ERR             ICUS0ICRERR     
#define ICU_STAT            ICUS0ICRICUSTS      
#define ICU_IDATNUM         ICUS0ICRIDATNUM 
#define ICU_ACC             ICUS0ICRACC 
#ifdef __ghs__
#define ICU_EMPTY           CAST_UL(START_ADDR + ADDR_OFFSET_EMPTY)
#endif
#define ICU_RST             ICUS0ICRRST    
#define ICU_SWINT           ICUS0ICRSWINT
#define ICU_SWINTCL         ICUS0ICRSWINTCL

/*===========================================================================
  ICU-S commands
  ===========================================================================*/

#define CMD_GET_STATUS	        0x00
#define CMD_ENC_ECB	        0x01
#define CMD_ENC_CBC	        0x02
#define CMD_DEC_ECB	        0x03
#define CMD_DEC_CBC	        0x04
#define CMD_GENERATE_MAC	0x05
#define CMD_VERIFY_MAC	    	0x07
#define CMD_LOAD_KEY	    	0x08
#define CMD_LOAD_PLAIN_KEY	0x09
#define CMD_EXPORT_RAM_KEY	0x0A
#define CMD_INIT_RNG	    	0x0B
#define CMD_EXTEND_SEED	    	0x0C
#define CMD_RND	            	0x0D
#define CMD_SECURE_BOOT	    	0x0E
#define CMD_BOOT_FAILURE	0x20
#define CMD_BOOT_OK	        0x21
#define CMD_GET_ID	        0x22
#define CMD_DEBUG	        0x23
#define CMD_CANCEL	        0x3F

/*===========================================================================
  ICU-S key indexes
  ===========================================================================*/

#define SECRET_KEY	    	0
#define MASTER_ECU_KEY	    	1
#define BOOT_MAC_KEY	    	2
#define BOOT_MAC	        3
#define KEY_1	            	4
#define KEY_2	            	5
#define KEY_3	            	6
#define KEY_4	            	7
#define KEY_5	            	8
#define KEY_6	            	9
#define KEY_7	            	10
#define KEY_8	            	11
#define KEY_9	            	12
#define KEY_10	            	13
#define RAM_KEY	            	14

/*===========================================================================
  Self-programming protection register
  ===========================================================================*/

#define SELFID0             CAST_UL(0xffa08000)
#define SELFID1             CAST_UL(0xffa08004)
#define SELFID2             CAST_UL(0xffa08008)
#define SELFID3             CAST_UL(0xffa0800c)

/*===========================================================================
  OCDID value
  ===========================================================================*/

#define SERIAL_ID0              0xffffffff
#define SERIAL_ID1              0xffffffff
#define SERIAL_ID2              0xffffffff
#define SERIAL_ID3              0xffffffff

/*===========================================================================
  DMA MACRO Definitions
===========================================================================*/  

#define DMA_RD_CHANNEL  0
#define DMA_WR_CHANNEL  8

#define PSW         5, 0
#define EIPSW       1, 0

/*===========================================================================
  ICU-S DMA setup functions
  ICUDMA_INIT() : intialize 2 DMA channels, 1 for writing to the ICU-S
                  one for reading from the ICU-S
                  see above for the definition of DMA_RD_CHANNEL and
                  DMA_WR_CHANNEL
  ICUDMA_WR_CONFIG(srcaddr, counter) : sets the source address and the counter
                                       for the write-to-ICU DMA
  ICUDMA_RD_CONFIG(destaddr, counter) : sets the destination address and the
                                        counter for the read-from-ICU DMA
  ICUDMA_WR_START() : starts the the write-to-ICU DMA
  ICUDMA_RD_START() : starts the the read-from-ICU DMA
  ICUDMA_WR_ISCOMPLETE() : test for completness of the write-to-ICU DMA
  ICUDMA_RD_ISCOMPLETE() : test for completness of the read-from-ICU DMA
  ===========================================================================*/

#define DMA_MAXCTR      32768

#define PASTER(x, y)        x ## y
#define EVALUATOR(x, y)     PASTER(x, y)

// disable DMA operations
#define ICUDMA_STOP() \
    { \
        EVALUATOR(DTS  , DMA_RD_CHANNEL) = 0; \
        EVALUATOR(DTS  , DMA_WR_CHANNEL) = 0; \
    } while(0);

// Prepare the DMA config for ICU-S operations
// configure DMA channel for DMA_WR_REQ
//    set the destination address to the ICU-S input data register (ICU_IDAT)
//    set transfer size : 32-bit, source address incremented, destination address fixed
//    set transfer source to DMA_WR_REQ
// configure DMA channel for DMA_RD_REQ
//    set the source address is ICU-S data output register
//    set transfer size : 32-bit, source address fixed, destination address incremented
//    set the transfer source to DMA_RD_REQ
#define INCR_SRCADDR    0x0000
#define FIXED_SRCADDR   0x0080
#define INCR_DESTADDR   0x0000
#define FIXED_DESTADDR  0x0020
#define TRSIZE_8BITS    0x0000
#define TRSIZE_16BITS   0x2000
#define TRSIZE_32BITS   0x4000
#define ICUDMA_INIT()\
    { \
        ICUDMA_STOP();                                                        \
        EVALUATOR(DDA  , DMA_RD_CHANNEL) = (unsigned long)&ICU_IDAT;          \
        EVALUATOR(DTCT , DMA_RD_CHANNEL) = TRSIZE_32BITS | INCR_SRCADDR | FIXED_DESTADDR; \
        EVALUATOR(DTFR , DMA_RD_CHANNEL) = 0x8019;                            \
        EVALUATOR(DSA  , DMA_WR_CHANNEL) = (unsigned long)&ICU_ODAT;          \
        EVALUATOR(DTCT , DMA_WR_CHANNEL) = TRSIZE_32BITS | FIXED_SRCADDR | INCR_DESTADDR; \
        EVALUATOR(DTFR , DMA_WR_CHANNEL) = 0x8014;                            \
    } while(0);

// set the source address and the counter of the DMA for writing to the ICU-S
#define ICUDMA_RD_CONFIG(srcaddr, counter) \
    { \
        EVALUATOR(DSA  , DMA_RD_CHANNEL) = srcaddr;  \
        EVALUATOR(DTC  , DMA_RD_CHANNEL) = counter;  \
    } while(0);

// set the source address and the counter of the DMA for reading from the ICU-S
#define ICUDMA_WR_CONFIG(destaddr, counter) \
    { \
        EVALUATOR(DDA  , DMA_WR_CHANNEL) = destaddr;  \
        EVALUATOR(DTC  , DMA_WR_CHANNEL) = counter;   \
    } while(0);

// set the source address and the counter of the DMA for writing to the ICU-S
// the counter is calculated based on a number of 128-bit blocks (n) provided in paramater
#define ICUDMA_RD_CONFIG_BLOCK(srcaddr, n) \
    { \
        if(n >= (DMA_MAXCTR / 4))                                       \
        {                                                               \
            /* in order to allow tests with DMA_MAXCTR below 32768 */   \
            /* ICUDMA_RD_CONFIG(srcaddr, 0); */                         \
            ICUDMA_RD_CONFIG(srcaddr, DMA_MAXCTR & 0x7FFF);             \
        }                                                               \
        else                                                            \
        {                                                               \
            ICUDMA_RD_CONFIG(srcaddr, n * 4);                           \
        }                                                               \
    } while(0);

// set the source address and the counter of the DMA for reading from the ICU-S
// the counter is calculated based on a number of 128-bit blocks (n) provided in paramater
#define ICUDMA_WR_CONFIG_BLOCK(destaddr, n) \
    { \
        if(n >= (DMA_MAXCTR / 4))                                       \
        {                                                               \
            /* in order to allow tests with DMA_MAXCTR below 32768 */   \
            /* ICUDMA_RD_CONFIG(srcaddr, 0); */                         \
            ICUDMA_WR_CONFIG(destaddr, DMA_MAXCTR & 0x7FFF);            \
        }                                                               \
        else                                                            \
        {                                                               \
            ICUDMA_WR_CONFIG(destaddr, n * 4);                          \
        }                                                               \
    } while(0);

// clear transfer request and start DMA for writing to the ICU-S
#define ICUDMA_RD_START()\
    { \
        DRQCLR |= (1 << DMA_RD_CHANNEL);                     \
        EVALUATOR(EVALUATOR(DTS , DMA_RD_CHANNEL), TC)  = 0; \
        EVALUATOR(EVALUATOR(DTS , DMA_RD_CHANNEL), DTE) = 1; \
    } while(0);
    
// clear transfer request and start DMA for reading from the ICU-S
#define ICUDMA_WR_START()\
    { \
        DRQCLR |= (1 << DMA_WR_CHANNEL);                     \
        EVALUATOR(EVALUATOR(DTS , DMA_WR_CHANNEL), TC)  = 0; \
        EVALUATOR(EVALUATOR(DTS , DMA_WR_CHANNEL), DTE) = 1; \
    } while(0);

// re-start DMA for reading from the ICU-S w/o clearing pending request
#define ICUDMA_RD_RESTART()\
    { \
        EVALUATOR(EVALUATOR(DTS , DMA_RD_CHANNEL), TC)  = 0; \
        EVALUATOR(EVALUATOR(DTS , DMA_RD_CHANNEL), DTE) = 1; \
    } while(0);

// re-start DMA for writing to the ICU-S w/o clearing pending request
#define ICUDMA_WR_RESTART()	\
    { \
        EVALUATOR(EVALUATOR(DTS , DMA_WR_CHANNEL), TC)  = 0; \
        EVALUATOR(EVALUATOR(DTS , DMA_WR_CHANNEL), DTE) = 1; \
    } while(0);

// used for polling DMA completion
#define ICUDMA_RD_ISCOMPLETE()  (EVALUATOR(EVALUATOR(DTS , DMA_RD_CHANNEL) , TC) == 1)
#define ICUDMA_WR_ISCOMPLETE()  (EVALUATOR(EVALUATOR(DTS , DMA_WR_CHANNEL) , TC) == 1)

// used to read DMA status
#define ICUDMA_RD_STATUS()      EVALUATOR(DTS , DMA_RD_CHANNEL)
#define ICUDMA_WR_STATUS()      EVALUATOR(DTS , DMA_WR_CHANNEL)

// DMA interrupt handlers
#define HANDLER_INTDMA_RD()     __interrupt void EVALUATOR(INTDMA , DMA_RD_CHANNEL)(void)
#define HANDLER_INTDMA_WR()     __interrupt void EVALUATOR(INTDMA , DMA_WR_CHANNEL)(void)

// DMA interrupt mask flags
#define MASK_INTDMA_RD          EVALUATOR(MKDMA , DMA_RD_CHANNEL)
#define MASK_INTDMA_WR          EVALUATOR(MKDMA , DMA_WR_CHANNEL)

// DMA interrupt request flags
#define REQFLAG_INTDMA_RD       EVALUATOR(RFDMA , DMA_RD_CHANNEL)
#define REQFLAG_INTDMA_WR       EVALUATOR(RFDMA , DMA_WR_CHANNEL)

// DMA interrupt vector table selector
#define TBFLAG_INTDMA_RD        EVALUATOR(TBDMA , DMA_RD_CHANNEL)
#define TBFLAG_INTDMA_WR        EVALUATOR(TBDMA , DMA_WR_CHANNEL)

/******* Initialize the Data Flash access ************************************/
#define INIT_FLASHACCESS                                                                        \
    EEPRDCYCL = 0x0F; 

#define DISABLE_FLASHACCESS       

/*===========================================================================
  Function prototyping
  ===========================================================================*/
void icu_reset(void);
long buffer_get_uid(unsigned char *ptrkey, unsigned char *ptrbuf); /* ptrbuf 需 32 字节：UID+SREG(16B) + MAC(16B) */
long buffer_load_plain_key(const unsigned char *ptrkey);
long buffer_load_key(const unsigned char *ptrM);
long buffer_enc_dec_ecb(unsigned long key_id, const unsigned char *ptrtxt, unsigned char *ptrbuf, unsigned long n, const unsigned char flag_decryption);
long buffer_enc_dec_cbc(unsigned long key_id, const unsigned char *ptrIV, const unsigned char *ptrtxt, unsigned char *ptrbuf, unsigned long n, const unsigned long flag_decryption);
long buffer_dma2_enc_dec(unsigned long key_id, const unsigned char *ptrIV, const unsigned char *ptrtxt, unsigned char *ptrbuf, unsigned long n, unsigned long flag_decryption);
long buffer_dma2_cmac(unsigned long key_id, const unsigned char *ptrM, unsigned long long msglen, unsigned char *ptrCMAC, unsigned char maclen);
long buffer_dma_secure_boot(const unsigned char *ptrM, unsigned long n);
void buffer_dma2_set_callback_func(void (*pfunc)());
unsigned long buffer_dma2_completed(void);
static void interrupt_prologue(void);
static void interrupt_epilogue(unsigned long within_interrupt);
long buffer_get_rnd(unsigned char *ptrbuf, unsigned long n);
long buffer_export_ram_key(unsigned char *ptrbuf);
long buffer_secure_boot(unsigned int n, unsigned char *ptrbuf);
long buffer_generate_mac(unsigned long key_id, const unsigned char *ptrM, unsigned long long msglen_bits, unsigned char *ptrCMAC);
long buffer_verify_mac(unsigned long key_id,
                         const unsigned char *ptrM,
                         unsigned long long msglen_bits,
                         const unsigned char *ptrMAC,
                         unsigned char maclen_bits,
                         unsigned char *pstatus);
long ICU_GenerateKeyUpdatePackage(unsigned long key_id,
                                         unsigned long auth_id,
                                         const unsigned char *auth_key,
                                         const unsigned char *new_key,
                                         unsigned long counter,
                                         unsigned char key_flag,
                                         unsigned char *output);
static long compute_kdf(const unsigned char *k,
                        const unsigned char *c,
                        unsigned char *output);



/*===========================================================================
  32-bit byte reversal (software implementation, CC-RH / CS+ compatible)
  ===========================================================================*/
#define REV32(x)    ( ( (((unsigned long)(x)) & 0xFF000000UL) >> 24U) | \
                    ( (((unsigned long)(x)) & 0x00FF0000UL) >>  8U) | \
                    ( (((unsigned long)(x)) & 0x0000FF00UL) <<  8U) | \
                    ( (((unsigned long)(x)) & 0x000000FFUL) << 24U) )


