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


//============================================================================
// Includes
//============================================================================
#include "string.h"
#include "icu-s.h"
#include "r_cg_macrodriver.h"
// #include "logHal.h"

static const unsigned char KEY_UPDATE_ENC_C[16] = {
    0x01, 0x01, 0x53, 0x48, 0x45, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0};

static const unsigned char KEY_UPDATE_MAC_C[16] = {
    0x01, 0x02, 0x53, 0x48, 0x45, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0};

/*===========================================================================
  Force the ICU-S to reset
  ===========================================================================*/
void icu_reset(void)
{
    // soft reset of the ICU-S
    ICU_RST = 1;
    while(ICU_RST != 0);
}


/*===========================================================================
  Get the UID
  ptrbuf is the pointer to the buffer (to receive messages M1~M5)
  Returns the ICU-S error code
  ===========================================================================*/
long buffer_get_uid(unsigned char *ptrkey, unsigned char *ptrbuf)
{
    ICU_CMD = CMD_GET_ID;
    // provides CHALLENGE  128-bit.
    WAIT4_WRRDY_OR_ERR;
    if (ICU_ERR != 0)
        goto error;
    ICU_IDAT = (*(unsigned long *)(ptrkey + 0));
    ICU_IDAT = (*(unsigned long *)(ptrkey + 4));
    ICU_IDAT = (*(unsigned long *)(ptrkey + 8));
    ICU_IDAT = (*(unsigned long *)(ptrkey + 12));
    CLEAR_WRRDY;

    WAIT4_RDRDY_OR_ERR;
    if (ICU_ERR != 0)
        goto error;
    (*(unsigned long *)(ptrbuf + 0)) = ICU_ODAT;
    (*(unsigned long *)(ptrbuf + 4)) = ICU_ODAT;
    (*(unsigned long *)(ptrbuf + 8)) = ICU_ODAT;
    (*(unsigned long *)(ptrbuf + 12)) = ICU_ODAT;
    CLEAR_RDRDY;

    WAIT4_RDRDY_OR_ERR;
    if (ICU_ERR != 0)
        goto error;
    (*(unsigned long *)(ptrbuf + 16)) = ICU_ODAT;
    (*(unsigned long *)(ptrbuf + 20)) = ICU_ODAT;
    (*(unsigned long *)(ptrbuf + 24)) = ICU_ODAT;
    (*(unsigned long *)(ptrbuf + 28)) = ICU_ODAT;
    CLEAR_RDRDY;
    WAIT4_RDRDY;

error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;

    return (ICU_ERR);
}



/*===========================================================================
  Initialize RAM_KEY with a string of bytes
  ptrkey points to the 128-bit key value
  Returns the ICU-S error code
  ===========================================================================*/
long buffer_load_plain_key(const unsigned char *ptrkey)
{
    // starts load plain key command
    ICU_CMD = CMD_LOAD_PLAIN_KEY;
    // LogHalPrint("ICU_STAT=0x%x, ICU_STS=0x%x, ICU_ERR=0x%x\r\n", ICU_STAT, ICU_STS, ICU_ERR);
WAIT4_WRRDY_OR_ERR;
    WAIT4_WRRDY_OR_ERR;
    CLEAR_WRRDY;
    if(ICU_ERR != 0) goto error;
    
    // provides the key in plain
    ICU_IDAT = (*(unsigned long *)(ptrkey + 0)); 
    ICU_IDAT = (*(unsigned long *)(ptrkey + 4)); 
    ICU_IDAT = (*(unsigned long *)(ptrkey + 8)); 
    ICU_IDAT = (*(unsigned long *)(ptrkey + 12));
    WAIT4_RDRDY;

error:
    CLEAR_RDRDY;

    return(ICU_ERR);
}

/*===========================================================================
  Load key via buffer
  ptrK is the pointer to the messages M1~M5
  Returns the ICU-S error code
  ===========================================================================*/
long buffer_load_key(const unsigned char *ptrK)
{
    int i;
    unsigned char tmpbuf[16 * 3];
    unsigned char *ptrbuf;

    // enable self-programming
    SELFID0 = SERIAL_ID0;
    SELFID1 = SERIAL_ID1;
    SELFID2 = SERIAL_ID2;
    SELFID3 = SERIAL_ID3;
    // starts the load key command
    ICU_CMD = CMD_LOAD_KEY;

    // WAIT4_WRRDY_OR_ERR;
    // if (ICU_ERR != 0)
    //     goto error;
    // CLEAR_WRRDY;

    // provides M1 to M3 (4 * 128-bit)
    for (i = 0; i < 4; i++)
    {
        WAIT4_WRRDY;
        ICU_IDAT = (*(unsigned long *)(ptrK + 0));
        ICU_IDAT = (*(unsigned long *)(ptrK + 4));
        ICU_IDAT = (*(unsigned long *)(ptrK + 8));
        ICU_IDAT = (*(unsigned long *)(ptrK + 12));
        CLEAR_WRRDY;
        ptrK += 16;
    }

    // WAIT4_RDRDY_OR_ERR;
    // if (ICU_ERR != 0)
    //     goto error;
    // CLEAR_RDRDY;

    // retrieves M4 and M5 (3 * 128-bit)
    ptrbuf = tmpbuf;
    for (i = 0; i < 3; i++)
    {
        WAIT4_RDRDY;
        (*(unsigned long *)(ptrbuf + 0)) = ICU_ODAT;
        (*(unsigned long *)(ptrbuf + 4)) = ICU_ODAT;
        (*(unsigned long *)(ptrbuf + 8)) = ICU_ODAT;
        (*(unsigned long *)(ptrbuf + 12)) = ICU_ODAT;
        CLEAR_RDRDY;
        ptrbuf += 16;
    }
    WAIT4_RDRDY;

error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;
    // disable self-programming
    SELFID0 = 0x00000000;
    SELFID1 = 0x00000000;
    SELFID2 = 0x00000000;
    SELFID3 = 0x00000000;

    // check M4 and M5 values
    if (ICU_ERR == 0)
    {
        if (memcmp(tmpbuf, ptrK, sizeof(tmpbuf)) != 0)
        {
            return (-1);
        }
        else
        {
            return (0);
        }
    }
    else
    {
        return (ICU_ERR);
    }
}

/*===========================================================================
  Buffer encryption / decryption using any key
  key_id is the index of the key to use
  ptrtxt points the text to encrypt / decrypt
  ptrbuf points the buffer where the encryption / decryption result is written
  n is the number of 128-bit messages to process
  flag_decryption indicates if the operation
    flag_decryption == 0 -> encryption
    flag_decryption != 0 -> decryption
  Returns the ICU-S error code or (-1) if n == 0
 ===========================================================================*/
long buffer_enc_dec_ecb(unsigned long key_id, const unsigned char *ptrtxt, unsigned char *ptrbuf, unsigned long n, const unsigned char flag_decryption)
{
    // returns here if size is 0
    if(n == 0) return(-1);
    
    // starts the encryption / decryption command for n blocks of 128 bits
    ICU_IDATNUM = n;
    ICU_CMD  = (key_id << 16) | ((flag_decryption)?(CMD_DEC_ECB):(CMD_ENC_ECB));

    WAIT4_WRRDY_OR_ERR;
    if(ICU_ERR != 0) goto error;

    // processes n blocks of 128 bits
    while(n > 0)
    {
        // provides the next 128-bit message to the ICU-S
        WAIT4_WRRDY;
        CLEAR_WRRDY;
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 0));
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 4));
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 8));
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 12));

        // reads-out the result from the ICU-S and store in the RAM buffer
        WAIT4_RDRDY_OR_ERR;
        if(ICU_ERR != 0) goto error;
        CLEAR_RDRDY;
        *(unsigned long *)(ptrbuf + 0)  = ICU_ODAT;
        *(unsigned long *)(ptrbuf + 4)  = ICU_ODAT;
        *(unsigned long *)(ptrbuf + 8)  = ICU_ODAT;
        *(unsigned long *)(ptrbuf + 12) = ICU_ODAT;
        
        // next block
        n--;
        ptrtxt += 16;
        ptrbuf += 16;
    }
    WAIT4_RDRDY;

error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;

    return(ICU_ERR);
}


/*===========================================================================
  CBC buffer encryption / decryption using any key
  key_id is the index of the key to use
  ptrIV points the 128-bit initial vector for the CBC block cipher
  ptrtxt points the text to encrypt / decrypt
  ptrbuf points the buffer where the encryption / decryption result is written
  n is the number of message of 128-bit to process
  flag_decryption indicates if the operation
    flag_decryption == 0 -> encryption
    flag_decryption != 0 -> decryption
  Returns the ICU-S error code or (-1) if n == 0
  ===========================================================================*/
long buffer_enc_dec_cbc(unsigned long key_id, const unsigned char *ptrIV, const unsigned char *ptrtxt, unsigned char *ptrbuf, unsigned long n, const unsigned long flag_decryption)
{
    // returns here if size is 0
    if(n == 0) return(-1);
    
    // starts the encryption / decryption for n+1 blocks
    ICU_IDATNUM = (n + 1);
    ICU_CMD  = (key_id << 16) | ((flag_decryption)?(CMD_DEC_CBC):(CMD_ENC_CBC));

    // provides IV
    WAIT4_WRRDY_OR_ERR;
    if(ICU_ERR != 0) goto error;
    CLEAR_WRRDY;
    ICU_IDAT = (*(unsigned long *)(ptrIV + 0));
    ICU_IDAT = (*(unsigned long *)(ptrIV + 4));
    ICU_IDAT = (*(unsigned long *)(ptrIV + 8));
    ICU_IDAT = (*(unsigned long *)(ptrIV + 12));

    // loops for n blocks of 128 bits
    while(n > 0)
    {
        // provides the message to encrypt / decrypt
        WAIT4_WRRDY;
        CLEAR_WRRDY;
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 0));
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 4));
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 8));
        ICU_IDAT = (*(unsigned long *)(ptrtxt + 12));

        // reads-out the result of encryption / decryption
        WAIT4_RDRDY; 
        CLEAR_RDRDY;
        *(unsigned long *)(ptrbuf + 0)  = ICU_ODAT;
        *(unsigned long *)(ptrbuf + 4)  = ICU_ODAT;
        *(unsigned long *)(ptrbuf + 8)  = ICU_ODAT;
        *(unsigned long *)(ptrbuf + 12) = ICU_ODAT;
        
        // next block
        n--;
        ptrtxt += 16;
        ptrbuf += 16;
    }
    WAIT4_RDRDY;

error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;

    return(ICU_ERR);
}


/*===========================================================================
  Random number generation
  get a string of random bytes out of the ICU-S and copy it to RAM
  ptrbuf points the buffer where the string of bytes is written
  n is the number of 128-bit random messages to read-out
  Returns (-1) if the random number generation failed or if n == 0
  Returns the the ICU-S error code otherwise
  ===========================================================================*/
long buffer_get_rnd(unsigned char *ptrbuf, unsigned long n)
{
    register unsigned long rnd_0;
    register unsigned long rnd_1;
    register unsigned long rnd_2;
    register unsigned long rnd_3;
    int first_time;
    
    // returns here if size is 0
    if(n == 0) return(-1);

    // tests if the RNG is initialized
    if((ICU_STS & 0x20) == 0)
    {
        // initialize the RNG
        ICU_CMD = CMD_INIT_RNG;
        WAIT4_RDRDY_OR_ERR;
        CLEAR_RDRDY;
        if(ICU_ERR != 0)
        {
            // error in the RNG initialization
            return(ICU_ERR);
        }
        if((ICU_STS & 0x20) == 0)
        {
            // error in the RNG initialization
            return(-1);
        }
    }

    first_time = 1;
    
    // starts the RNG process
    ICU_CMD = CMD_RND;

    // get random numbers out of the ICU-S
    while(n > 0)
    {
        if(!first_time)
        {
            // stores the previously generated random
            *(unsigned long *)(ptrbuf + 0)  = rnd_0;
            *(unsigned long *)(ptrbuf + 4)  = rnd_1;
            *(unsigned long *)(ptrbuf + 8)  = rnd_2;
            *(unsigned long *)(ptrbuf + 12) = rnd_3;     
            ptrbuf += 16;
        }

        // wait for the next one
        WAIT4_RDRDY_OR_ERR;
        CLEAR_RDRDY;
        if(ICU_ERR != 0) break;

        // reads-out the random value out of the ICU-S
        rnd_0 = ICU_ODAT;
        rnd_1 = ICU_ODAT;
        rnd_2 = ICU_ODAT;
        rnd_3 = ICU_ODAT;
        WAIT4_RDRDY;
        CLEAR_RDRDY;

        // generate the next random
        ICU_CMD = CMD_RND;

        first_time = 0;
        n--;
    }
    
    // stores the last generated random
    *(unsigned long *)(ptrbuf + 0)  = rnd_0;
    *(unsigned long *)(ptrbuf + 4)  = rnd_1;
    *(unsigned long *)(ptrbuf + 8)  = rnd_2;
    *(unsigned long *)(ptrbuf + 12) = rnd_3;     

    // discards the last random generation
    if(ICU_ERR == 0)
    {
        WAIT4_RDRDY;
        CLEAR_RDRDY;
        rnd_0 = ICU_ODAT;
        rnd_1 = ICU_ODAT;
        rnd_2 = ICU_ODAT;
        rnd_3 = ICU_ODAT;
    }
    WAIT4_RDRDY;
    CLEAR_RDRDY;
    return(ICU_ERR);
}


/*===========================================================================
  Export RAM_KEY to a buffer
  ptrM is the pointer to the buffer (to receive messages M1~M5)
  Returns the ICU-S error code
  ===========================================================================*/
long buffer_export_ram_key(unsigned char *ptrbuf)
{
    int i;

    // starts the export RAM_KEY command
    ICU_CMD = CMD_EXPORT_RAM_KEY;

    WAIT4_RDRDY_OR_ERR;
    if(ICU_ERR != 0) goto error;

    // retrieves M1~M5 (7 * 128-bit)
    for(i = 0; i < 7; i++)
    {
        // retrieves next message and store to the RAM buffer
        WAIT4_RDRDY;
        CLEAR_RDRDY;
        (*(unsigned long *)(ptrbuf + 0)) = ICU_ODAT;
        (*(unsigned long *)(ptrbuf + 4)) = ICU_ODAT;
        (*(unsigned long *)(ptrbuf + 8)) = ICU_ODAT;
        (*(unsigned long *)(ptrbuf + 12))= ICU_ODAT;
        ptrbuf += 16;
    }
    WAIT4_RDRDY;
    
error:
    CLEAR_RDRDY;

    return(ICU_ERR);
}

static long buffer_secure_boot(unsigned int n, unsigned char *ptrbuf)
{
    // 	if(!(ICUS0ICRSTS&0x00000004))
    // 	{
    // 		SELFID0 = SERIAL_ID0;
    // 		SELFID1 = SERIAL_ID1;
    // 		SELFID2 = SERIAL_ID2;
    // 		SELFID3 = SERIAL_ID3;
    // 	}
    // 	ICU_IDAT = REV32(n*16);
    // 	ICU_IDAT = 0;
    // 	ICU_IDAT = 0;
    // 	ICU_IDAT = 0;

    // 	ICU_CMD = CMD_SECURE_BOOT;
    // 	WAIT4_WRRDY_OR_ERR;
    // 	if(ICU_ERR != 0) goto error;
    // 	while(n > 0)
    // 	{
    // 		/* provides the message to encrypt / decrypt */
    // 		WAIT4_WRRDY;
    // 		CLEAR_WRRDY;
    // 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 0));
    // 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 4));
    // 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 8));
    // 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 16));
    // 		n--;
    // 		ptrbuf += 16;
    // 	}
    // 	WAIT4_RDRDY;
    // error:
    // 	CLEAR_RDRDY;
    // 	CLEAR_WRRDY;

    // 	SELFID0 = 0x00000000;
    // 	SELFID1 = 0x00000000;
    // 	SELFID2 = 0x00000000;
    // 	SELFID3 = 0x00000000;
    // 	return(ICU_ERR);

    if (!(ICUS0ICRSTS & 0x00000004))
    {
        /* 解锁 self-programming */
        SELFID0 = SERIAL_ID0;
        SELFID1 = SERIAL_ID1;
        SELFID2 = SERIAL_ID2;
        SELFID3 = SERIAL_ID3;
    }

    /* 写入 Boot 区域长度（字节数） */
    ICU_IDAT = REV32(n * 16);
    ICU_IDAT = 0;
    ICU_IDAT = 0;
    ICU_IDAT = 0;

    ICU_CMD = CMD_SECURE_BOOT;

    WAIT4_WRRDY_OR_ERR;
    if (ICU_ERR != 0)
        goto error;

    /* 写入 Boot code 数据 */
    while (n > 0)
    {
        WAIT4_WRRDY;
        CLEAR_WRRDY;
        ICU_IDAT = (*(unsigned long *)(ptrbuf + 0));
        ICU_IDAT = (*(unsigned long *)(ptrbuf + 4));
        ICU_IDAT = (*(unsigned long *)(ptrbuf + 8));
        ICU_IDAT = (*(unsigned long *)(ptrbuf + 12)); /* 注意是 +12 */
        n--;
        ptrbuf += 16;
    }

    WAIT4_RDRDY;

error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;

    /* 关闭 self-programming */
    SELFID0 = 0;
    SELFID1 = 0;
    SELFID2 = 0;
    SELFID3 = 0;

    return ICU_ERR;
}


long buffer_extend_seed(unsigned char *ptrbuf)
{
	ICU_CMD = CMD_EXTEND_SEED;
	WAIT4_WRRDY_OR_ERR;
	CLEAR_WRRDY;
	if(ICU_ERR != 0) goto error;
	
	// provides the entropy.
	ICU_IDAT = (*(unsigned long *)(ptrbuf + 0)); 
	ICU_IDAT = (*(unsigned long *)(ptrbuf + 4)); 
	ICU_IDAT = (*(unsigned long *)(ptrbuf + 8)); 
	ICU_IDAT = (*(unsigned long *)(ptrbuf + 12));
	WAIT4_RDRDY;

error:
	CLEAR_RDRDY;

	return(ICU_ERR);

	
}


// long buffer_secure_boot(unsigned int n, unsigned char *ptrbuf)	
// {
// 	if(!(ICUS0ICRSTS&0x00000004))
// 	{
// 		SELFID0 = SERIAL_ID0;
// 		SELFID1 = SERIAL_ID1;
// 		SELFID2 = SERIAL_ID2;
// 		SELFID3 = SERIAL_ID3;
// 	}
// 	ICU_IDAT = REV32(n*16);
// 	ICU_IDAT = 0;
// 	ICU_IDAT = 0;
// 	ICU_IDAT = 0;
	
// 	ICU_CMD = CMD_SECURE_BOOT;
// 	WAIT4_WRRDY_OR_ERR;
// 	if(ICU_ERR != 0) goto error;
// 	while(n > 0)
// 	{
// 		/* provides the message to encrypt / decrypt */
// 		WAIT4_WRRDY;
// 		CLEAR_WRRDY;
// 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 0));
// 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 4));
// 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 8));
// 		ICU_IDAT = (*(unsigned long *)(ptrbuf + 16));
// 		n--;
// 		ptrbuf += 16;
// 	}
// 	WAIT4_RDRDY;
// error:
// 	CLEAR_RDRDY;
// 	CLEAR_WRRDY;

// 	SELFID0 = 0x00000000;
// 	SELFID1 = 0x00000000;
// 	SELFID2 = 0x00000000;
// 	SELFID3 = 0x00000000;
// 	return(ICU_ERR);
// }

/*===========================================================================
  Generate MAC using CMD_GENERATE_MAC (non-DMA polling)
  key_id       : 使用的 key 索引（如 MASTER_ECU_KEY）
  ptrM         : 消息缓冲区，调用方需保证已按 128-bit 补 0 对齐
  msglen_bits  : 消息长度，单位 bit
  ptrCMAC      : 输出缓冲区，16 字节
  Returns the ICU-S error code
  ===========================================================================*/
long buffer_generate_mac(unsigned long key_id,
                         const unsigned char *ptrM,
                         unsigned long long msglen_bits,
                         unsigned char *ptrCMAC)
{
    unsigned long long n;
    unsigned long msglen_hi;
    unsigned long msglen_lo;

    if ((msglen_bits == 0U) || (ptrM == NULL) || (ptrCMAC == NULL))
    {
        LogHalPrint("param err\r\n");
        return -1;
    }

    n = (msglen_bits + 127ULL) / 128ULL;

    /* 1. 先写 MESSAGE_LENGTH */
    msglen_lo = (unsigned long)(msglen_bits & 0xFFFFFFFFULL);
    msglen_hi = (unsigned long)(msglen_bits >> 32);

    ICU_IDAT = REV32(msglen_hi);
    ICU_IDAT = REV32(msglen_lo);
    ICU_IDAT = 0;
    ICU_IDAT = 0;

    /* 2. 写 ICU_CMD */
    ICU_CMD = (key_id << 16) | CMD_GENERATE_MAC;
    if (ICU_ERR != 0)
        goto error;

    /* 3. 写消息块 */
    while (n > 0U)
    {
        // LogHalPrint("write block, n=%llu\r\n", n);
        WAIT4_WRRDY;

        ICU_IDAT = (*(unsigned long *)(ptrM + 0));
        ICU_IDAT = (*(unsigned long *)(ptrM + 4));
        ICU_IDAT = (*(unsigned long *)(ptrM + 8));
        ICU_IDAT = (*(unsigned long *)(ptrM + 12));

        CLEAR_WRRDY;
        ptrM += 16;
        n--;
    }

    /* 4. 等 RXREQ，读 MAC */
    WAIT4_RDRDY_OR_ERR;
    if (ICU_ERR != 0)
    {
        LogHalPrint("ICU_ERR not zero after RDRDY, goto error\r\n");
        goto error;
    }

    (*(unsigned long *)(ptrCMAC + 0)) = ICU_ODAT;
    (*(unsigned long *)(ptrCMAC + 4)) = ICU_ODAT;
    (*(unsigned long *)(ptrCMAC + 8)) = ICU_ODAT;
    (*(unsigned long *)(ptrCMAC + 12)) = ICU_ODAT;

    CLEAR_RDRDY;
    WAIT4_RDRDY;
error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;

    return ICU_ERR;
}

/*===========================================================================
  Generate MAC using CMD_GENERATE_MAC (non-DMA polling)
  key_id       : 使用的 key 索引（如 MASTER_ECU_KEY）
  ptrM         : 待验证的消息指针
  msglen_bits  : 消息长度，单位 bit
  ptrCMAC      : 期望的 MAC 值的指针
  maclen_bits  : MAC 长度，单位 bit
  pstatus      : 验证状态的指针（0: 验证通过，1: 验证不通过）
  Returns the ICU-S error code
  ===========================================================================*/
long buffer_verify_mac(unsigned long key_id,
                       const unsigned char *ptrM,
                       unsigned long long msglen_bits,
                       const unsigned char *ptrMAC,
                       unsigned char maclen_bits,
                       unsigned char *pstatus)
{
    unsigned long long n;
    unsigned long long i;

    /* 参数检查 */
    if ((ptrM == NULL) || (ptrMAC == NULL) || (pstatus == NULL))
    {
        return -1;
    }
    if (msglen_bits == 0ULL)
    {
        return -1;
    }
    if (maclen_bits <= 0U || maclen_bits > 128U)
    {
        return -1;
    }
    if (maclen_bits == 128U)
    {
        maclen_bits = 0;
    }

    /* 计算 128-bit 块数 */
    n = msglen_bits / 128ULL;
    if ((msglen_bits % 128ULL) != 0ULL)
    {
        n++;
    }

    /* 写 MESSAGE_LENGTH 和 MAC_LENGTH */
    /* 先写高 32 bit（REV32），再写低 32 bit（REV32） */
    ICU_IDAT = REV32((unsigned long)(msglen_bits >> 32));
    ICU_IDAT = REV32((unsigned long)msglen_bits);
    ICU_IDAT = (unsigned long)maclen_bits; /* 低 7 bit 有效 */
    ICU_IDAT = 0;

    /* 发命令 */
    ICU_CMD = (key_id << 16) | CMD_VERIFY_MAC;

    /* 等待并写入消息数据 */
    for (i = 0; i < n; i++)
    {
        WAIT4_WRRDY_OR_ERR;
        if (ICU_ERR != 0)
            goto error;
        CLEAR_WRRDY;

        ICU_IDAT = (*(unsigned long *)(ptrM + 0));
        ICU_IDAT = (*(unsigned long *)(ptrM + 4));
        ICU_IDAT = (*(unsigned long *)(ptrM + 8));
        ICU_IDAT = (*(unsigned long *)(ptrM + 12));
        ptrM += 16;
    }

    /* 等待并写入 MAC */
    WAIT4_WRRDY_OR_ERR;
    if (ICU_ERR != 0)
        goto error;
    CLEAR_WRRDY;

    ICU_IDAT = (*(unsigned long *)(ptrMAC + 0));
    ICU_IDAT = (*(unsigned long *)(ptrMAC + 4));
    ICU_IDAT = (*(unsigned long *)(ptrMAC + 8));
    ICU_IDAT = (*(unsigned long *)(ptrMAC + 12));

    /* 等待输出验证状态 */
    WAIT4_RDRDY_OR_ERR;
    if (ICU_ERR != 0)
        goto error;
    *pstatus = (unsigned char)(ICU_ODAT & 0x01U);
    CLEAR_RDRDY;
    LogHalPrint("555\r\n");

    // WAIT4_RDRDY_OR_ERR;
    // if (ICU_ERR != 0)
    //     goto error;
    // LogHalPrint("666\r\n");

error:
    CLEAR_RDRDY;
    CLEAR_WRRDY;
    return (ICU_ERR);
}

static long compute_kdf(const unsigned char *k,
                        const unsigned char *c,
                        unsigned char *output)
{
    long err;
    unsigned char out0[16] = {0};
    unsigned char out1[16];
    unsigned char tmp[16];
    int i;

    /* 1. 加载 out0 到 RAM_KEY */
    err = buffer_load_plain_key(out0);
    if (err != 0)
    {
        LogHalPrint("KDF: ICU_LoadPlainKey out0 failed, err=0x%lx\r\n", err);
        return err;
    }

    /* 2. tmp = AES_ECB(OUT0, K) */
    err = buffer_enc_dec_ecb(RAM_KEY, k, tmp, 1, 0);
    if (err != 0)
    {
        LogHalPrint("KDF: AES_ECB failed out0, err=0x%lx\r\n", err);
        return err;
    }

    /* 3. OUT1 = tmp ⊕ K ⊕ OUT0 */
    for (i = 0; i < 16; i++)
    {
        out1[i] = tmp[i] ^ k[i] ^ out0[i];
    }

    /* 4. 加载 OUT1 到 RAM_KEY */
    err = buffer_load_plain_key(out1);
    if (err != 0)
    {
        LogHalPrint("KDF: ICU_LoadPlainKey out1 failed, err=0x%lx\r\n", err);
        return err;
    }

    /* 5. tmp = AES_ECB(OUT1, C) */
    err = buffer_enc_dec_ecb(RAM_KEY, c, tmp, 1, 0);
    if (err != 0)
    {
        LogHalPrint("KDF: AES_ECB failed out1, err=0x%lx\r\n", err);
        return err;
    }

    /* 6. KDF = tmp ⊕ C ⊕ OUT1 */
    for (i = 0; i < 16; i++)
    {
        output[i] = tmp[i] ^ c[i] ^ out1[i];
    }
}

/*===========================================================================
  生成 CMD_LOAD_KEY 所需的 M1-M5 密钥包
  key_id       : 目标 key ID（MASTER_ECU_KEY=1, BOOT_MAC_KEY=2, BOOT_MAC=3, KEY_1~10=4~13）
  auth_id      : 授权 key ID
  auth_key     : 16 字节授权 key（第一次写时传全 0）
  new_key      : 16 字节要写入的新 key
  counter      : 更新计数器
  key_flag     : 6 bit KEY_FLAG
  output       : 112 字节输出缓冲区（M1~M5）
  Returns 0 on success, non-zero on error
  ===========================================================================*/
static long ICU_GenerateKeyUpdatePackage(unsigned long key_id,
                                         unsigned long auth_id,
                                         const unsigned char *auth_key,
                                         const unsigned char *new_key,
                                         unsigned long counter,
                                         unsigned char key_flag,
                                         unsigned char *output)
{
    int i;
    long err;
    unsigned char challenge[16] = {0};
    unsigned char response[32];
    unsigned char M1[16];
    static uint8_t res[112] = {0};

    unsigned char M2_plaintext[32] = {0};
    // unsigned char auth_key[16] = {0}; /* 第一次写 MASTER_ECU_KEY，授权 key 全 0 */
    unsigned char K1[16], K2[16], K3[16], K4[16];
    unsigned char M2_encrypted[32];
    unsigned char M4_plaintext[16] = {0};
    unsigned char M4_encrypted[16];
    unsigned char iv[16] = {0};
    unsigned char M1M2[48];
    unsigned char M3[16];
    unsigned char M4[32];
    unsigned char M5[16];

    memset(res, 0, 112);
    /* 拼装M2_plaintext */
    M2_plaintext[0] = (uint32_t)counter >> 24;
    M2_plaintext[1] = (uint32_t)counter >> 16;
    M2_plaintext[2] = (uint32_t)counter >> 8;
    M2_plaintext[3] = ((uint32_t)counter << 4) | ((key_flag >> 2) & 0x0F);
    M2_plaintext[4] = ((uint32_t)key_flag << 6);
    memset(M2_plaintext + 5, 0, 11);
    memcpy(M2_plaintext + 16, new_key, 16);

    /* 拼装M4_plaintext */
    M4_plaintext[0] = (uint32_t)counter >> 24;
    M4_plaintext[1] = (uint32_t)counter >> 16;
    M4_plaintext[2] = (uint32_t)counter >> 8;
    M4_plaintext[3] = ((uint32_t)counter << 4) | ((1 << 3));
    memset(M4_plaintext + 4, 0, 12);

    // icu_reset();
    LogHalPrint("ICU_RESET done\r\n");
    /* ========== 第 1 步：读 UID ========== */
    err = buffer_get_uid(challenge, response);
    if (err != 0)
    {
        LogHalPrint("ICU_GetAndPrintUID failed, err=0x%lx\r\n", err);
        return err;
    }
    LogHalPrint("ICU_GET_ID done\r\n");

    /* 组装 M1 */
    LogHalPrint("Start making M1\r\n");
    memcpy(M1, response, 15); /* UID 15 字节 */
    // memset(M1, 0, 15);
    M1[15] = (key_id << 4) | auth_id;
    LogHalPrint("M1 make done\r\n");

    /* ========== 第 2 步：KDF ========== */
    LogHalPrint("Start compute KDF\r\n");
    compute_kdf(auth_key, KEY_UPDATE_ENC_C, K1);
    compute_kdf(auth_key, KEY_UPDATE_MAC_C, K2);
    compute_kdf(new_key, KEY_UPDATE_ENC_C, K3);
    compute_kdf(new_key, KEY_UPDATE_MAC_C, K4);
    LogHalPrint("KDF compute done\r\n");

    /* ========== 第 3 步：加密 M2 ========== */
    LogHalPrint("Start encrypt M2\r\n");
    // icu_reset();
    err = buffer_load_plain_key(K1);
    if (err != 0)
    {
        LogHalPrint("ICU_LoadPlainKey failed, err=0x%lx\r\n", err);
        return err;
    }

    err = buffer_enc_dec_cbc(RAM_KEY, iv, M2_plaintext, M2_encrypted, 2, 0);
    if (err != 0)
    {
        LogHalPrint("ICU_EncDecCBC failed, err=0x%lx\r\n", err);
        return err;
    }
    LogHalPrint("M2 encrypt done\r\n");

    /* ========== 第 4 步：算 M3 ========== */
    LogHalPrint("Start compute M3\r\n");
    // icu_reset();
    memcpy(M1M2, M1, 16);
    memcpy(M1M2 + 16, M2_encrypted, 32);
    err = buffer_load_plain_key(K2);
    if (err != 0)
    {
        LogHalPrint("ICU_LoadPlainKey failed, err=0x%lx\r\n", err);
        return err;
    }
    // LogHalPrint("load K2 err=0x%lx, ICU_ERR=0x%x, ICU_STS=0x%x\r\n", err, ICU_ERR, ICU_STS);
    err = buffer_generate_mac(RAM_KEY, M1M2, 384ULL, M3);
    if (err != 0)
    {
        LogHalPrint("ICU_GenerateMAC failed, err=0x%lx\r\n", err);
        return err;
    }
    LogHalPrint("M3 compute done\r\n");

    /* ========== 第 5 步：加密 M4 ========== */
    LogHalPrint("Start encrypt M4\r\n");
    // icu_reset();
    err = buffer_load_plain_key(K3);
    if (err != 0)
    {
        LogHalPrint("ICU_LoadPlainKey failed, err=0x%lx\r\n", err);
        return err;
    }
    // LogHalPrint("ICU_ERR=0x%x, ICU_STS=0x%x\r\n", ICU_ERR, ICU_STS);
    err = buffer_enc_dec_ecb(RAM_KEY, M4_plaintext, M4_encrypted, 1, 0);
    if (err != 0)
    {
        LogHalPrint("ICU_EncDecECB failed, err=0x%lx\r\n", err);
        return err;
    }
    LogHalPrint("M4 encrypt done\r\n");
    memcpy(M4, M1, 16); /* UID | ID | AuthID */
    memcpy(M4 + 16, M4_encrypted, 16);
    LogHalPrint("M4 make done\r\n");

    /* ========== 第 6 步：算 M5 ========== */
    LogHalPrint("Start compute M5\r\n");
    // icu_reset();
    err = buffer_load_plain_key(K4);
    if (err != 0)
    {
        LogHalPrint("ICU_LoadPlainKey failed, err=0x%lx\r\n", err);
        return err;
    }
    err = buffer_generate_mac(RAM_KEY, M4, 256ULL, M5);
    if (err != 0)
    {
        LogHalPrint("ICU_GenerateMAC failed, err=0x%lx\r\n", err);
        return err;
    }
    LogHalPrint("M5 compute done\r\n");

    /* ========== 第 7 步：组合 ========== */
    LogHalPrint("Start combine M1 - M5\r\n");
    memcpy(res + 0, M1, 16);
    memcpy(res + 16, M2_encrypted, 32);
    memcpy(res + 48, M3, 16);
    memcpy(res + 64, M4, 32);
    memcpy(res + 96, M5, 16);
    LogHalPrint("M1 - M5 combine done\r\n");
    LogHalPrint("output: \r\n");
    for (i = 0; i < 112; i++)
    {
        LogHalPrint("%02X", res[i]);
        if (i % 16 == 15)
        {
            LogHalPrint("\r\n");
        }
    }
    memcpy(output, res, 112);
    LogHalPrint("\r\n");
    return 0;
}

