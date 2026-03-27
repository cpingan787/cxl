







 


 










 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;











 


 


typedef	char	*va_list;



void __builtin_va_start(va_list);




typedef	struct {
	int		mode;	 
	unsigned	handle;
	int		unget_c;
	} FILE;
typedef int	fpos_t;








extern	FILE*	_REL_stdin();
extern	FILE*	_REL_stdout();
extern	FILE*	_REL_stderr();

extern	int fprintf(FILE *, const char *, ...);
extern	int fscanf(FILE *, const char *, ...);
extern	int printf(const char *, ...);
extern	int scanf(const char *, ...);
extern	int sprintf(char *, const char *, ...);
extern	int sscanf(const char *, const char *, ...);
extern	int vfprintf(FILE *, const char *, va_list);
extern	int vprintf(const char *, va_list);
extern	int vsprintf(char *, const char *, va_list);

extern	int fgetc(FILE *);
extern	char *fgets(char *, int, FILE *);
extern	int fputc(int, FILE *);
extern	int fputs(const char *, FILE *);
extern	int getc(FILE *);
extern	int getchar(void);
extern	char *gets(char *);
extern	int putc(int, FILE *);
extern	int putchar(int);
extern	int puts(const char *);
extern	int ungetc(int, FILE *);

extern	size_t fread(void *, size_t, size_t, FILE *);
extern	size_t fwrite(const void *, size_t, size_t,
		      FILE *);

extern	void rewind(FILE *);

extern	void perror(const char *);












 



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;

typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef signed long int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef signed long int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef signed long long int_fast64_t;
typedef unsigned long long uint_fast64_t;

typedef int intptr_t;
typedef unsigned int uintptr_t;

typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;








































 








 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

typedef struct
{
    unsigned char bit00:1;
    unsigned char bit01:1;
    unsigned char bit02:1;
    unsigned char bit03:1;
    unsigned char bit04:1;
    unsigned char bit05:1;
    unsigned char bit06:1;
    unsigned char bit07:1;
} __bitf_T;


struct __tag0
{                                                           
    unsigned char  ATAUD0IENH0:1;                           
    unsigned char  ATAUD0IENH1:1;                           
    unsigned char  ATAUD0IENH2:1;                           
    unsigned char  ATAUD0IENH3:1;                           
    unsigned char  ATAUD0IENH4:1;                           
    unsigned char  ATAUD0IENH5:1;                           
    unsigned char  ATAUD0IENH6:1;                           
    unsigned char  ATAUD0IENH7:1;                           
};
struct __tag1
{                                                           
    unsigned char  ATAUD0IENL0:1;                           
    unsigned char  ATAUD0IENL1:1;                           
    unsigned char  ATAUD0IENL2:1;                           
    unsigned char  ATAUD0IENL3:1;                           
    unsigned char  ATAUD0IENL4:1;                           
    unsigned char  ATAUD0IENL5:1;                           
    unsigned char  ATAUD0IENL6:1;                           
    unsigned char  ATAUD0IENL7:1;                           
};
struct __tag2
{                                                           
    unsigned char  ATAUB0IENH0:1;                           
    unsigned char  ATAUB0IENH1:1;                           
    unsigned char  ATAUB0IENH2:1;                           
    unsigned char  ATAUB0IENH3:1;                           
    unsigned char  ATAUB0IENH4:1;                           
    unsigned char  ATAUB0IENH5:1;                           
    unsigned char  ATAUB0IENH6:1;                           
    unsigned char  ATAUB0IENH7:1;                           
};
struct __tag3
{                                                           
    unsigned char  ATAUB0IENL0:1;                           
    unsigned char  ATAUB0IENL1:1;                           
    unsigned char  ATAUB0IENL2:1;                           
    unsigned char  ATAUB0IENL3:1;                           
    unsigned char  ATAUB0IENL4:1;                           
    unsigned char  ATAUB0IENL5:1;                           
    unsigned char  ATAUB0IENL6:1;                           
    unsigned char  ATAUB0IENL7:1;                           
};
struct __tag4
{                                                           
    unsigned char  AENCA0IENL0:1;                           
    unsigned char  AENCA0IENL1:1;                           
    unsigned char  AENCA0IENL2:1;                           
    unsigned char  AENCA0IENL3:1;                           
    unsigned char  AENCA0IENL4:1;                           
    unsigned char  :3;                                      
};
struct __tag5
{                                                           
    unsigned char  AADCTL0ENL0:1;                           
    unsigned char  AADCTL0ENL1:1;                           
    unsigned char  AADCTL0ENL2:1;                           
    unsigned char  :5;                                      
};
struct __tag6
{                                                           
    unsigned char  AADCTL1ENL0:1;                           
    unsigned char  AADCTL1ENL1:1;                           
    unsigned char  AADCTL1ENL2:1;                           
    unsigned char  :5;                                      
};
struct __tag7
{                                                           
    unsigned char  :7;                                      
    unsigned char  SVSDIS:1;                                
};
struct __tag8
{                                                           
    unsigned char  SCE:1;                                   
    unsigned char  :7;                                      
};
struct __tag9
{                                                           
    unsigned char  :4;                                      
    unsigned char  SLSB:1;                                  
    unsigned char  AMPM:1;                                  
    unsigned char  CEST:1;                                  
    unsigned char  CE:1;                                    
};
struct __tag10
{                                                           
    unsigned char  CT0:1;                                   
    unsigned char  CT1:1;                                   
    unsigned char  CT2:1;                                   
    unsigned char  EN1S:1;                                  
    unsigned char  ENALM:1;                                 
    unsigned char  EN1HZ:1;                                 
    unsigned char  :2;                                      
};
struct __tag11
{                                                           
    unsigned char  WAIT:1;                                  
    unsigned char  WST:1;                                   
    unsigned char  RSUB:1;                                  
    unsigned char  RSST:1;                                  
    unsigned char  WSST:1;                                  
    unsigned char  WUST:1;                                  
    unsigned char  :2;                                      
};
struct __tag12
{                                                           
    unsigned char  KRM0:1;                                  
    unsigned char  KRM1:1;                                  
    unsigned char  KRM2:1;                                  
    unsigned char  KRM3:1;                                  
    unsigned char  KRM4:1;                                  
    unsigned char  KRM5:1;                                  
    unsigned char  KRM6:1;                                  
    unsigned char  KRM7:1;                                  
};
struct __tag13
{                                                           
    unsigned char  P0CSIH2IC_1:1;                           
    unsigned char  P1CSIH2IC_1:1;                           
    unsigned char  P2CSIH2IC_1:1;                           
    unsigned char  P3CSIH2IC_1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IC_1:1;                           
    unsigned char  MKCSIH2IC_1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IC_1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IC_1:1;                           
};
struct __tag14
{                                                           
    unsigned char  P0CSIH3IC_1:1;                           
    unsigned char  P1CSIH3IC_1:1;                           
    unsigned char  P2CSIH3IC_1:1;                           
    unsigned char  P3CSIH3IC_1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IC_1:1;                           
    unsigned char  MKCSIH3IC_1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IC_1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IC_1:1;                           
};
struct __tag15
{                                                           
    unsigned char  P0CSIH2IR_1:1;                           
    unsigned char  P1CSIH2IR_1:1;                           
    unsigned char  P2CSIH2IR_1:1;                           
    unsigned char  P3CSIH2IR_1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IR_1:1;                           
    unsigned char  MKCSIH2IR_1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IR_1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IR_1:1;                           
};
struct __tag16
{                                                           
    unsigned char  P0CSIH2IRE_1:1;                          
    unsigned char  P1CSIH2IRE_1:1;                          
    unsigned char  P2CSIH2IRE_1:1;                          
    unsigned char  P3CSIH2IRE_1:1;                          
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IRE_1:1;                          
    unsigned char  MKCSIH2IRE_1:1;                          
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IRE_1:1;                          
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IRE_1:1;                          
};
struct __tag17
{                                                           
    unsigned char  P0CSIH2IJC_1:1;                          
    unsigned char  P1CSIH2IJC_1:1;                          
    unsigned char  P2CSIH2IJC_1:1;                          
    unsigned char  P3CSIH2IJC_1:1;                          
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IJC_1:1;                          
    unsigned char  MKCSIH2IJC_1:1;                          
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IJC_1:1;                          
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IJC_1:1;                          
};
struct __tag18
{                                                           
    unsigned char  P0CSIH3IR_1:1;                           
    unsigned char  P1CSIH3IR_1:1;                           
    unsigned char  P2CSIH3IR_1:1;                           
    unsigned char  P3CSIH3IR_1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IR_1:1;                           
    unsigned char  MKCSIH3IR_1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IR_1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IR_1:1;                           
};
struct __tag19
{                                                           
    unsigned char  P0CSIH3IRE_1:1;                          
    unsigned char  P1CSIH3IRE_1:1;                          
    unsigned char  P2CSIH3IRE_1:1;                          
    unsigned char  P3CSIH3IRE_1:1;                          
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IRE_1:1;                          
    unsigned char  MKCSIH3IRE_1:1;                          
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IRE_1:1;                          
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IRE_1:1;                          
};
struct __tag20
{                                                           
    unsigned char  P0CSIH3IJC_1:1;                          
    unsigned char  P1CSIH3IJC_1:1;                          
    unsigned char  P2CSIH3IJC_1:1;                          
    unsigned char  P3CSIH3IJC_1:1;                          
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IJC_1:1;                          
    unsigned char  MKCSIH3IJC_1:1;                          
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IJC_1:1;                          
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IJC_1:1;                          
};
struct __tag21
{                                                           
    unsigned char  P0CSIH1IC_1:1;                           
    unsigned char  P1CSIH1IC_1:1;                           
    unsigned char  P2CSIH1IC_1:1;                           
    unsigned char  P3CSIH1IC_1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIH1IC_1:1;                           
    unsigned char  MKCSIH1IC_1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIH1IC_1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIH1IC_1:1;                           
};
struct __tag22
{                                                           
    unsigned char  P0CSIH1IR_1:1;                           
    unsigned char  P1CSIH1IR_1:1;                           
    unsigned char  P2CSIH1IR_1:1;                           
    unsigned char  P3CSIH1IR_1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIH1IR_1:1;                           
    unsigned char  MKCSIH1IR_1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIH1IR_1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIH1IR_1:1;                           
};
struct __tag23
{                                                           
    unsigned char  P0ADCA0I0:1;                             
    unsigned char  P1ADCA0I0:1;                             
    unsigned char  P2ADCA0I0:1;                             
    unsigned char  P3ADCA0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  TBADCA0I0:1;                             
    unsigned char  MKADCA0I0:1;                             
    unsigned char  :4;                                      
    unsigned char  RFADCA0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  CTADCA0I0:1;                             
};
struct __tag24
{                                                           
    unsigned char  P0ADCA0I1:1;                             
    unsigned char  P1ADCA0I1:1;                             
    unsigned char  P2ADCA0I1:1;                             
    unsigned char  P3ADCA0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBADCA0I1:1;                             
    unsigned char  MKADCA0I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFADCA0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTADCA0I1:1;                             
};
struct __tag25
{                                                           
    unsigned char  P0ADCA0I2:1;                             
    unsigned char  P1ADCA0I2:1;                             
    unsigned char  P2ADCA0I2:1;                             
    unsigned char  P3ADCA0I2:1;                             
    unsigned char  :2;                                      
    unsigned char  TBADCA0I2:1;                             
    unsigned char  MKADCA0I2:1;                             
    unsigned char  :4;                                      
    unsigned char  RFADCA0I2:1;                             
    unsigned char  :2;                                      
    unsigned char  CTADCA0I2:1;                             
};
struct __tag26
{                                                           
    unsigned char  P0DCUTDI:1;                              
    unsigned char  P1DCUTDI:1;                              
    unsigned char  P2DCUTDI:1;                              
    unsigned char  P3DCUTDI:1;                              
    unsigned char  :2;                                      
    unsigned char  TBDCUTDI:1;                              
    unsigned char  MKDCUTDI:1;                              
    unsigned char  :4;                                      
    unsigned char  RFDCUTDI:1;                              
    unsigned char  :2;                                      
    unsigned char  CTDCUTDI:1;                              
};
struct __tag27
{                                                           
    unsigned char  P0RCANGERR0:1;                           
    unsigned char  P1RCANGERR0:1;                           
    unsigned char  P2RCANGERR0:1;                           
    unsigned char  P3RCANGERR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRCANGERR0:1;                           
    unsigned char  MKRCANGERR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRCANGERR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRCANGERR0:1;                           
};
struct __tag28
{                                                           
    unsigned char  P0RCANGRECC0:1;                          
    unsigned char  P1RCANGRECC0:1;                          
    unsigned char  P2RCANGRECC0:1;                          
    unsigned char  P3RCANGRECC0:1;                          
    unsigned char  :2;                                      
    unsigned char  TBRCANGRECC0:1;                          
    unsigned char  MKRCANGRECC0:1;                          
    unsigned char  :4;                                      
    unsigned char  RFRCANGRECC0:1;                          
    unsigned char  :2;                                      
    unsigned char  CTRCANGRECC0:1;                          
};
struct __tag29
{                                                           
    unsigned char  P0RCAN0ERR:1;                            
    unsigned char  P1RCAN0ERR:1;                            
    unsigned char  P2RCAN0ERR:1;                            
    unsigned char  P3RCAN0ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN0ERR:1;                            
    unsigned char  MKRCAN0ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN0ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN0ERR:1;                            
};
struct __tag30
{                                                           
    unsigned char  P0RCAN0REC:1;                            
    unsigned char  P1RCAN0REC:1;                            
    unsigned char  P2RCAN0REC:1;                            
    unsigned char  P3RCAN0REC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN0REC:1;                            
    unsigned char  MKRCAN0REC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN0REC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN0REC:1;                            
};
struct __tag31
{                                                           
    unsigned char  P0RCAN0TRX:1;                            
    unsigned char  P1RCAN0TRX:1;                            
    unsigned char  P2RCAN0TRX:1;                            
    unsigned char  P3RCAN0TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN0TRX:1;                            
    unsigned char  MKRCAN0TRX:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN0TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN0TRX:1;                            
};
struct __tag32
{                                                           
    unsigned char  P0CSIG0IC:1;                             
    unsigned char  P1CSIG0IC:1;                             
    unsigned char  P2CSIG0IC:1;                             
    unsigned char  P3CSIG0IC:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIG0IC:1;                             
    unsigned char  MKCSIG0IC:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIG0IC:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIG0IC:1;                             
};
struct __tag33
{                                                           
    unsigned char  P0CSIG0IR:1;                             
    unsigned char  P1CSIG0IR:1;                             
    unsigned char  P2CSIG0IR:1;                             
    unsigned char  P3CSIG0IR:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIG0IR:1;                             
    unsigned char  MKCSIG0IR:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIG0IR:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIG0IR:1;                             
};
struct __tag34
{                                                           
    unsigned char  P0CSIH0IC:1;                             
    unsigned char  P1CSIH0IC:1;                             
    unsigned char  P2CSIH0IC:1;                             
    unsigned char  P3CSIH0IC:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH0IC:1;                             
    unsigned char  MKCSIH0IC:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH0IC:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH0IC:1;                             
};
struct __tag35
{                                                           
    unsigned char  P0CSIH0IR:1;                             
    unsigned char  P1CSIH0IR:1;                             
    unsigned char  P2CSIH0IR:1;                             
    unsigned char  P3CSIH0IR:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH0IR:1;                             
    unsigned char  MKCSIH0IR:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH0IR:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH0IR:1;                             
};
struct __tag36
{                                                           
    unsigned char  P0CSIH0IRE:1;                            
    unsigned char  P1CSIH0IRE:1;                            
    unsigned char  P2CSIH0IRE:1;                            
    unsigned char  P3CSIH0IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIH0IRE:1;                            
    unsigned char  MKCSIH0IRE:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIH0IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIH0IRE:1;                            
};
struct __tag37
{                                                           
    unsigned char  :8;                                      
    unsigned char  :4;                                      
    unsigned char  FNRF:1;                                  
    unsigned char  :3;                                      
};
struct __tag38
{                                                           
    unsigned char  :8;                                      
    unsigned char  :4;                                      
    unsigned char  FIRF:1;                                  
    unsigned char  :3;                                      
};
struct __tag39
{                                                           
    unsigned char  :8;                                      
    unsigned char  IMR0EIMK8:1;                             
    unsigned char  IMR0EIMK9:1;                             
    unsigned char  IMR0EIMK10:1;                            
    unsigned char  IMR0EIMK11:1;                            
    unsigned char  IMR0EIMK12:1;                            
    unsigned char  IMR0EIMK13:1;                            
    unsigned char  IMR0EIMK14:1;                            
    unsigned char  IMR0EIMK15:1;                            
    unsigned char  IMR0EIMK16:1;                            
    unsigned char  IMR0EIMK17:1;                            
    unsigned char  IMR0EIMK18:1;                            
    unsigned char  IMR0EIMK19:1;                            
    unsigned char  IMR0EIMK20:1;                            
    unsigned char  IMR0EIMK21:1;                            
    unsigned char  IMR0EIMK22:1;                            
    unsigned char  IMR0EIMK23:1;                            
    unsigned char  IMR0EIMK24:1;                            
    unsigned char  IMR0EIMK25:1;                            
    unsigned char  IMR0EIMK26:1;                            
    unsigned char  IMR0EIMK27:1;                            
    unsigned char  IMR0EIMK28:1;                            
    unsigned char  IMR0EIMK29:1;                            
    unsigned char  IMR0EIMK30:1;                            
    unsigned char  IMR0EIMK31:1;                            
};
struct __tag40
{                                                           
    unsigned char  P0ADCA0I2_2:1;                           
    unsigned char  P1ADCA0I2_2:1;                           
    unsigned char  P2ADCA0I2_2:1;                           
    unsigned char  P3ADCA0I2_2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBADCA0I2_2:1;                           
    unsigned char  MKADCA0I2_2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFADCA0I2_2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTADCA0I2_2:1;                           
};
struct __tag41
{                                                           
    unsigned char  P0RLIN30:1;                              
    unsigned char  P1RLIN30:1;                              
    unsigned char  P2RLIN30:1;                              
    unsigned char  P3RLIN30:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN30:1;                              
    unsigned char  MKRLIN30:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN30:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN30:1;                              
};
struct __tag42
{                                                           
    unsigned char  P0RLIN30UR0:1;                           
    unsigned char  P1RLIN30UR0:1;                           
    unsigned char  P2RLIN30UR0:1;                           
    unsigned char  P3RLIN30UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN30UR0:1;                           
    unsigned char  MKRLIN30UR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN30UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN30UR0:1;                           
};
struct __tag43
{                                                           
    unsigned char  P0RLIN30UR1:1;                           
    unsigned char  P1RLIN30UR1:1;                           
    unsigned char  P2RLIN30UR1:1;                           
    unsigned char  P3RLIN30UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN30UR1:1;                           
    unsigned char  MKRLIN30UR1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN30UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN30UR1:1;                           
};
struct __tag44
{                                                           
    unsigned char  P0RLIN30UR2:1;                           
    unsigned char  P1RLIN30UR2:1;                           
    unsigned char  P2RLIN30UR2:1;                           
    unsigned char  P3RLIN30UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN30UR2:1;                           
    unsigned char  MKRLIN30UR2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN30UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN30UR2:1;                           
};
struct __tag45
{                                                           
    unsigned char  P0P0:1;                                  
    unsigned char  P1P0:1;                                  
    unsigned char  P2P0:1;                                  
    unsigned char  P3P0:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP0:1;                                  
    unsigned char  MKP0:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP0:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP0:1;                                  
};
struct __tag46
{                                                           
    unsigned char  P0P1:1;                                  
    unsigned char  P1P1:1;                                  
    unsigned char  P2P1:1;                                  
    unsigned char  P3P1:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP1:1;                                  
    unsigned char  MKP1:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP1:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP1:1;                                  
};
struct __tag47
{                                                           
    unsigned char  P0P2:1;                                  
    unsigned char  P1P2:1;                                  
    unsigned char  P2P2:1;                                  
    unsigned char  P3P2:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP2:1;                                  
    unsigned char  MKP2:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP2:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP2:1;                                  
};
struct __tag48
{                                                           
    unsigned char  P0WDTA0:1;                               
    unsigned char  P1WDTA0:1;                               
    unsigned char  P2WDTA0:1;                               
    unsigned char  P3WDTA0:1;                               
    unsigned char  :2;                                      
    unsigned char  TBWDTA0:1;                               
    unsigned char  MKWDTA0:1;                               
    unsigned char  :4;                                      
    unsigned char  RFWDTA0:1;                               
    unsigned char  :2;                                      
    unsigned char  CTWDTA0:1;                               
};
struct __tag49
{                                                           
    unsigned char  P0WDTA1:1;                               
    unsigned char  P1WDTA1:1;                               
    unsigned char  P2WDTA1:1;                               
    unsigned char  P3WDTA1:1;                               
    unsigned char  :2;                                      
    unsigned char  TBWDTA1:1;                               
    unsigned char  MKWDTA1:1;                               
    unsigned char  :4;                                      
    unsigned char  RFWDTA1:1;                               
    unsigned char  :2;                                      
    unsigned char  CTWDTA1:1;                               
};
struct __tag50
{                                                           
    unsigned char  P0P3:1;                                  
    unsigned char  P1P3:1;                                  
    unsigned char  P2P3:1;                                  
    unsigned char  P3P3:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP3:1;                                  
    unsigned char  MKP3:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP3:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP3:1;                                  
};
struct __tag51
{                                                           
    unsigned char  P0P4:1;                                  
    unsigned char  P1P4:1;                                  
    unsigned char  P2P4:1;                                  
    unsigned char  P3P4:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP4:1;                                  
    unsigned char  MKP4:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP4:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP4:1;                                  
};
struct __tag52
{                                                           
    unsigned char  P0P5:1;                                  
    unsigned char  P1P5:1;                                  
    unsigned char  P2P5:1;                                  
    unsigned char  P3P5:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP5:1;                                  
    unsigned char  MKP5:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP5:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP5:1;                                  
};
struct __tag53
{                                                           
    unsigned char  P0P10:1;                                 
    unsigned char  P1P10:1;                                 
    unsigned char  P2P10:1;                                 
    unsigned char  P3P10:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBP10:1;                                 
    unsigned char  MKP10:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFP10:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTP10:1;                                 
};
struct __tag54
{                                                           
    unsigned char  P0P11:1;                                 
    unsigned char  P1P11:1;                                 
    unsigned char  P2P11:1;                                 
    unsigned char  P3P11:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBP11:1;                                 
    unsigned char  MKP11:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFP11:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTP11:1;                                 
};
struct __tag55
{                                                           
    unsigned char  P0TAUD0I1:1;                             
    unsigned char  P1TAUD0I1:1;                             
    unsigned char  P2TAUD0I1:1;                             
    unsigned char  P3TAUD0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I1:1;                             
    unsigned char  MKTAUD0I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I1:1;                             
};
struct __tag56
{                                                           
    unsigned char  P0TAUD0I3:1;                             
    unsigned char  P1TAUD0I3:1;                             
    unsigned char  P2TAUD0I3:1;                             
    unsigned char  P3TAUD0I3:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I3:1;                             
    unsigned char  MKTAUD0I3:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I3:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I3:1;                             
};
struct __tag57
{                                                           
    unsigned char  P0TAUD0I5:1;                             
    unsigned char  P1TAUD0I5:1;                             
    unsigned char  P2TAUD0I5:1;                             
    unsigned char  P3TAUD0I5:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I5:1;                             
    unsigned char  MKTAUD0I5:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I5:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I5:1;                             
};
struct __tag58
{                                                           
    unsigned char  P0TAUD0I7:1;                             
    unsigned char  P1TAUD0I7:1;                             
    unsigned char  P2TAUD0I7:1;                             
    unsigned char  P3TAUD0I7:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I7:1;                             
    unsigned char  MKTAUD0I7:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I7:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I7:1;                             
};
struct __tag59
{                                                           
    unsigned char  P0TAUD0I9:1;                             
    unsigned char  P1TAUD0I9:1;                             
    unsigned char  P2TAUD0I9:1;                             
    unsigned char  P3TAUD0I9:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I9:1;                             
    unsigned char  MKTAUD0I9:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I9:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I9:1;                             
};
struct __tag60
{                                                           
    unsigned char  P0TAUD0I11:1;                            
    unsigned char  P1TAUD0I11:1;                            
    unsigned char  P2TAUD0I11:1;                            
    unsigned char  P3TAUD0I11:1;                            
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I11:1;                            
    unsigned char  MKTAUD0I11:1;                            
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I11:1;                            
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I11:1;                            
};
struct __tag61
{                                                           
    unsigned char  P0TAUD0I13:1;                            
    unsigned char  P1TAUD0I13:1;                            
    unsigned char  P2TAUD0I13:1;                            
    unsigned char  P3TAUD0I13:1;                            
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I13:1;                            
    unsigned char  MKTAUD0I13:1;                            
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I13:1;                            
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I13:1;                            
};
struct __tag62
{                                                           
    unsigned char  P0TAUD0I15:1;                            
    unsigned char  P1TAUD0I15:1;                            
    unsigned char  P2TAUD0I15:1;                            
    unsigned char  P3TAUD0I15:1;                            
    unsigned char  :2;                                      
    unsigned char  TBTAUD0I15:1;                            
    unsigned char  MKTAUD0I15:1;                            
    unsigned char  :4;                                      
    unsigned char  RFTAUD0I15:1;                            
    unsigned char  :2;                                      
    unsigned char  CTTAUD0I15:1;                            
};
struct __tag63
{                                                           
    unsigned char  P0ADCA0ERR:1;                            
    unsigned char  P1ADCA0ERR:1;                            
    unsigned char  P2ADCA0ERR:1;                            
    unsigned char  P3ADCA0ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBADCA0ERR:1;                            
    unsigned char  MKADCA0ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFADCA0ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTADCA0ERR:1;                            
};
struct __tag64
{                                                           
    unsigned char  P0CSIG0IRE:1;                            
    unsigned char  P1CSIG0IRE:1;                            
    unsigned char  P2CSIG0IRE:1;                            
    unsigned char  P3CSIG0IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIG0IRE:1;                            
    unsigned char  MKCSIG0IRE:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIG0IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIG0IRE:1;                            
};
struct __tag65
{                                                           
    unsigned char  P0RLIN20:1;                              
    unsigned char  P1RLIN20:1;                              
    unsigned char  P2RLIN20:1;                              
    unsigned char  P3RLIN20:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN20:1;                              
    unsigned char  MKRLIN20:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN20:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN20:1;                              
};
struct __tag66
{                                                           
    unsigned char  P0RLIN21:1;                              
    unsigned char  P1RLIN21:1;                              
    unsigned char  P2RLIN21:1;                              
    unsigned char  P3RLIN21:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN21:1;                              
    unsigned char  MKRLIN21:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN21:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN21:1;                              
};
struct __tag67
{                                                           
    unsigned char  P0DMA0:1;                                
    unsigned char  P1DMA0:1;                                
    unsigned char  P2DMA0:1;                                
    unsigned char  P3DMA0:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA0:1;                                
    unsigned char  MKDMA0:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA0:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA0:1;                                
};
struct __tag68
{                                                           
    unsigned char  P0DMA1:1;                                
    unsigned char  P1DMA1:1;                                
    unsigned char  P2DMA1:1;                                
    unsigned char  P3DMA1:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA1:1;                                
    unsigned char  MKDMA1:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA1:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA1:1;                                
};
struct __tag69
{                                                           
    unsigned char  P0DMA2:1;                                
    unsigned char  P1DMA2:1;                                
    unsigned char  P2DMA2:1;                                
    unsigned char  P3DMA2:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA2:1;                                
    unsigned char  MKDMA2:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA2:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA2:1;                                
};
struct __tag70
{                                                           
    unsigned char  P0DMA3:1;                                
    unsigned char  P1DMA3:1;                                
    unsigned char  P2DMA3:1;                                
    unsigned char  P3DMA3:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA3:1;                                
    unsigned char  MKDMA3:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA3:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA3:1;                                
};
struct __tag71
{                                                           
    unsigned char  P0DMA4:1;                                
    unsigned char  P1DMA4:1;                                
    unsigned char  P2DMA4:1;                                
    unsigned char  P3DMA4:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA4:1;                                
    unsigned char  MKDMA4:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA4:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA4:1;                                
};
struct __tag72
{                                                           
    unsigned char  P0DMA5:1;                                
    unsigned char  P1DMA5:1;                                
    unsigned char  P2DMA5:1;                                
    unsigned char  P3DMA5:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA5:1;                                
    unsigned char  MKDMA5:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA5:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA5:1;                                
};
struct __tag73
{                                                           
    unsigned char  P0DMA6:1;                                
    unsigned char  P1DMA6:1;                                
    unsigned char  P2DMA6:1;                                
    unsigned char  P3DMA6:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA6:1;                                
    unsigned char  MKDMA6:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA6:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA6:1;                                
};
struct __tag74
{                                                           
    unsigned char  P0DMA7:1;                                
    unsigned char  P1DMA7:1;                                
    unsigned char  P2DMA7:1;                                
    unsigned char  P3DMA7:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA7:1;                                
    unsigned char  MKDMA7:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA7:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA7:1;                                
};
struct __tag75
{                                                           
    unsigned char  P0DMA8:1;                                
    unsigned char  P1DMA8:1;                                
    unsigned char  P2DMA8:1;                                
    unsigned char  P3DMA8:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA8:1;                                
    unsigned char  MKDMA8:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA8:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA8:1;                                
};
struct __tag76
{                                                           
    unsigned char  P0DMA9:1;                                
    unsigned char  P1DMA9:1;                                
    unsigned char  P2DMA9:1;                                
    unsigned char  P3DMA9:1;                                
    unsigned char  :2;                                      
    unsigned char  TBDMA9:1;                                
    unsigned char  MKDMA9:1;                                
    unsigned char  :4;                                      
    unsigned char  RFDMA9:1;                                
    unsigned char  :2;                                      
    unsigned char  CTDMA9:1;                                
};
struct __tag77
{                                                           
    unsigned char  P0DMA10:1;                               
    unsigned char  P1DMA10:1;                               
    unsigned char  P2DMA10:1;                               
    unsigned char  P3DMA10:1;                               
    unsigned char  :2;                                      
    unsigned char  TBDMA10:1;                               
    unsigned char  MKDMA10:1;                               
    unsigned char  :4;                                      
    unsigned char  RFDMA10:1;                               
    unsigned char  :2;                                      
    unsigned char  CTDMA10:1;                               
};
struct __tag78
{                                                           
    unsigned char  P0DMA11:1;                               
    unsigned char  P1DMA11:1;                               
    unsigned char  P2DMA11:1;                               
    unsigned char  P3DMA11:1;                               
    unsigned char  :2;                                      
    unsigned char  TBDMA11:1;                               
    unsigned char  MKDMA11:1;                               
    unsigned char  :4;                                      
    unsigned char  RFDMA11:1;                               
    unsigned char  :2;                                      
    unsigned char  CTDMA11:1;                               
};
struct __tag79
{                                                           
    unsigned char  P0DMA12:1;                               
    unsigned char  P1DMA12:1;                               
    unsigned char  P2DMA12:1;                               
    unsigned char  P3DMA12:1;                               
    unsigned char  :2;                                      
    unsigned char  TBDMA12:1;                               
    unsigned char  MKDMA12:1;                               
    unsigned char  :4;                                      
    unsigned char  RFDMA12:1;                               
    unsigned char  :2;                                      
    unsigned char  CTDMA12:1;                               
};
struct __tag80
{                                                           
    unsigned char  P0DMA13:1;                               
    unsigned char  P1DMA13:1;                               
    unsigned char  P2DMA13:1;                               
    unsigned char  P3DMA13:1;                               
    unsigned char  :2;                                      
    unsigned char  TBDMA13:1;                               
    unsigned char  MKDMA13:1;                               
    unsigned char  :4;                                      
    unsigned char  RFDMA13:1;                               
    unsigned char  :2;                                      
    unsigned char  CTDMA13:1;                               
};
struct __tag81
{                                                           
    unsigned char  P0DMA14:1;                               
    unsigned char  P1DMA14:1;                               
    unsigned char  P2DMA14:1;                               
    unsigned char  P3DMA14:1;                               
    unsigned char  :2;                                      
    unsigned char  TBDMA14:1;                               
    unsigned char  MKDMA14:1;                               
    unsigned char  :4;                                      
    unsigned char  RFDMA14:1;                               
    unsigned char  :2;                                      
    unsigned char  CTDMA14:1;                               
};
struct __tag82
{                                                           
    unsigned char  P0DMA15:1;                               
    unsigned char  P1DMA15:1;                               
    unsigned char  P2DMA15:1;                               
    unsigned char  P3DMA15:1;                               
    unsigned char  :2;                                      
    unsigned char  TBDMA15:1;                               
    unsigned char  MKDMA15:1;                               
    unsigned char  :4;                                      
    unsigned char  RFDMA15:1;                               
    unsigned char  :2;                                      
    unsigned char  CTDMA15:1;                               
};
struct __tag83
{                                                           
    unsigned char  P0RIIC0TI:1;                             
    unsigned char  P1RIIC0TI:1;                             
    unsigned char  P2RIIC0TI:1;                             
    unsigned char  P3RIIC0TI:1;                             
    unsigned char  :2;                                      
    unsigned char  TBRIIC0TI:1;                             
    unsigned char  MKRIIC0TI:1;                             
    unsigned char  :4;                                      
    unsigned char  RFRIIC0TI:1;                             
    unsigned char  :2;                                      
    unsigned char  CTRIIC0TI:1;                             
};
struct __tag84
{                                                           
    unsigned char  P0RIIC0EE:1;                             
    unsigned char  P1RIIC0EE:1;                             
    unsigned char  P2RIIC0EE:1;                             
    unsigned char  P3RIIC0EE:1;                             
    unsigned char  :2;                                      
    unsigned char  TBRIIC0EE:1;                             
    unsigned char  MKRIIC0EE:1;                             
    unsigned char  :4;                                      
    unsigned char  RFRIIC0EE:1;                             
    unsigned char  :2;                                      
    unsigned char  CTRIIC0EE:1;                             
};
struct __tag85
{                                                           
    unsigned char  P0RIIC0RI:1;                             
    unsigned char  P1RIIC0RI:1;                             
    unsigned char  P2RIIC0RI:1;                             
    unsigned char  P3RIIC0RI:1;                             
    unsigned char  :2;                                      
    unsigned char  TBRIIC0RI:1;                             
    unsigned char  MKRIIC0RI:1;                             
    unsigned char  :4;                                      
    unsigned char  RFRIIC0RI:1;                             
    unsigned char  :2;                                      
    unsigned char  CTRIIC0RI:1;                             
};
struct __tag86
{                                                           
    unsigned char  P0RIIC0TEI:1;                            
    unsigned char  P1RIIC0TEI:1;                            
    unsigned char  P2RIIC0TEI:1;                            
    unsigned char  P3RIIC0TEI:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRIIC0TEI:1;                            
    unsigned char  MKRIIC0TEI:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRIIC0TEI:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRIIC0TEI:1;                            
};
struct __tag87
{                                                           
    unsigned char  P0TAUJ0I0:1;                             
    unsigned char  P1TAUJ0I0:1;                             
    unsigned char  P2TAUJ0I0:1;                             
    unsigned char  P3TAUJ0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ0I0:1;                             
    unsigned char  MKTAUJ0I0:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ0I0:1;                             
};
struct __tag88
{                                                           
    unsigned char  P0TAUJ0I1:1;                             
    unsigned char  P1TAUJ0I1:1;                             
    unsigned char  P2TAUJ0I1:1;                             
    unsigned char  P3TAUJ0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ0I1:1;                             
    unsigned char  MKTAUJ0I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ0I1:1;                             
};
struct __tag89
{                                                           
    unsigned char  P0TAUJ0I2:1;                             
    unsigned char  P1TAUJ0I2:1;                             
    unsigned char  P2TAUJ0I2:1;                             
    unsigned char  P3TAUJ0I2:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ0I2:1;                             
    unsigned char  MKTAUJ0I2:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ0I2:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ0I2:1;                             
};
struct __tag90
{                                                           
    unsigned char  P0TAUJ0I3:1;                             
    unsigned char  P1TAUJ0I3:1;                             
    unsigned char  P2TAUJ0I3:1;                             
    unsigned char  P3TAUJ0I3:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ0I3:1;                             
    unsigned char  MKTAUJ0I3:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ0I3:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ0I3:1;                             
};
struct __tag91
{                                                           
    unsigned char  P0OSTM0:1;                               
    unsigned char  P1OSTM0:1;                               
    unsigned char  P2OSTM0:1;                               
    unsigned char  P3OSTM0:1;                               
    unsigned char  :2;                                      
    unsigned char  TBOSTM0:1;                               
    unsigned char  MKOSTM0:1;                               
    unsigned char  :4;                                      
    unsigned char  RFOSTM0:1;                               
    unsigned char  :2;                                      
    unsigned char  CTOSTM0:1;                               
};
struct __tag92
{                                                           
    unsigned char  P0ENCA0IOV:1;                            
    unsigned char  P1ENCA0IOV:1;                            
    unsigned char  P2ENCA0IOV:1;                            
    unsigned char  P3ENCA0IOV:1;                            
    unsigned char  :2;                                      
    unsigned char  TBENCA0IOV:1;                            
    unsigned char  MKENCA0IOV:1;                            
    unsigned char  :4;                                      
    unsigned char  RFENCA0IOV:1;                            
    unsigned char  :2;                                      
    unsigned char  CTENCA0IOV:1;                            
};
struct __tag93
{                                                           
    unsigned char  P0ENCA0IUD:1;                            
    unsigned char  P1ENCA0IUD:1;                            
    unsigned char  P2ENCA0IUD:1;                            
    unsigned char  P3ENCA0IUD:1;                            
    unsigned char  :2;                                      
    unsigned char  TBENCA0IUD:1;                            
    unsigned char  MKENCA0IUD:1;                            
    unsigned char  :4;                                      
    unsigned char  RFENCA0IUD:1;                            
    unsigned char  :2;                                      
    unsigned char  CTENCA0IUD:1;                            
};
struct __tag94
{                                                           
    unsigned char  P0ENCA0I0:1;                             
    unsigned char  P1ENCA0I0:1;                             
    unsigned char  P2ENCA0I0:1;                             
    unsigned char  P3ENCA0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  TBENCA0I0:1;                             
    unsigned char  MKENCA0I0:1;                             
    unsigned char  :4;                                      
    unsigned char  RFENCA0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  CTENCA0I0:1;                             
};
struct __tag95
{                                                           
    unsigned char  P0ENCA0I1:1;                             
    unsigned char  P1ENCA0I1:1;                             
    unsigned char  P2ENCA0I1:1;                             
    unsigned char  P3ENCA0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBENCA0I1:1;                             
    unsigned char  MKENCA0I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFENCA0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTENCA0I1:1;                             
};
struct __tag96
{                                                           
    unsigned char  P0ENCA0IEC:1;                            
    unsigned char  P1ENCA0IEC:1;                            
    unsigned char  P2ENCA0IEC:1;                            
    unsigned char  P3ENCA0IEC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBENCA0IEC:1;                            
    unsigned char  MKENCA0IEC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFENCA0IEC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTENCA0IEC:1;                            
};
struct __tag97
{                                                           
    unsigned char  P0KR0:1;                                 
    unsigned char  P1KR0:1;                                 
    unsigned char  P2KR0:1;                                 
    unsigned char  P3KR0:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBKR0:1;                                 
    unsigned char  MKKR0:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFKR0:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTKR0:1;                                 
};
struct __tag98
{                                                           
    unsigned char  P0QFULL:1;                               
    unsigned char  P1QFULL:1;                               
    unsigned char  P2QFULL:1;                               
    unsigned char  P3QFULL:1;                               
    unsigned char  :2;                                      
    unsigned char  TBQFULL:1;                               
    unsigned char  MKQFULL:1;                               
    unsigned char  :4;                                      
    unsigned char  RFQFULL:1;                               
    unsigned char  :2;                                      
    unsigned char  CTQFULL:1;                               
};
struct __tag99
{                                                           
    unsigned char  P0PWGA0:1;                               
    unsigned char  P1PWGA0:1;                               
    unsigned char  P2PWGA0:1;                               
    unsigned char  P3PWGA0:1;                               
    unsigned char  :2;                                      
    unsigned char  TBPWGA0:1;                               
    unsigned char  MKPWGA0:1;                               
    unsigned char  :4;                                      
    unsigned char  RFPWGA0:1;                               
    unsigned char  :2;                                      
    unsigned char  CTPWGA0:1;                               
};
struct __tag100
{                                                           
    unsigned char  P0PWGA1:1;                               
    unsigned char  P1PWGA1:1;                               
    unsigned char  P2PWGA1:1;                               
    unsigned char  P3PWGA1:1;                               
    unsigned char  :2;                                      
    unsigned char  TBPWGA1:1;                               
    unsigned char  MKPWGA1:1;                               
    unsigned char  :4;                                      
    unsigned char  RFPWGA1:1;                               
    unsigned char  :2;                                      
    unsigned char  CTPWGA1:1;                               
};
struct __tag101
{                                                           
    unsigned char  P0PWGA2:1;                               
    unsigned char  P1PWGA2:1;                               
    unsigned char  P2PWGA2:1;                               
    unsigned char  P3PWGA2:1;                               
    unsigned char  :2;                                      
    unsigned char  TBPWGA2:1;                               
    unsigned char  MKPWGA2:1;                               
    unsigned char  :4;                                      
    unsigned char  RFPWGA2:1;                               
    unsigned char  :2;                                      
    unsigned char  CTPWGA2:1;                               
};
struct __tag102
{                                                           
    unsigned char  P0PWGA3:1;                               
    unsigned char  P1PWGA3:1;                               
    unsigned char  P2PWGA3:1;                               
    unsigned char  P3PWGA3:1;                               
    unsigned char  :2;                                      
    unsigned char  TBPWGA3:1;                               
    unsigned char  MKPWGA3:1;                               
    unsigned char  :4;                                      
    unsigned char  RFPWGA3:1;                               
    unsigned char  :2;                                      
    unsigned char  CTPWGA3:1;                               
};
struct __tag103
{                                                           
    unsigned char  P0PWGA8:1;                               
    unsigned char  P1PWGA8:1;                               
    unsigned char  P2PWGA8:1;                               
    unsigned char  P3PWGA8:1;                               
    unsigned char  :2;                                      
    unsigned char  TBPWGA8:1;                               
    unsigned char  MKPWGA8:1;                               
    unsigned char  :4;                                      
    unsigned char  RFPWGA8:1;                               
    unsigned char  :2;                                      
    unsigned char  CTPWGA8:1;                               
};
struct __tag104
{                                                           
    unsigned char  P0PWGA9:1;                               
    unsigned char  P1PWGA9:1;                               
    unsigned char  P2PWGA9:1;                               
    unsigned char  P3PWGA9:1;                               
    unsigned char  :2;                                      
    unsigned char  TBPWGA9:1;                               
    unsigned char  MKPWGA9:1;                               
    unsigned char  :4;                                      
    unsigned char  RFPWGA9:1;                               
    unsigned char  :2;                                      
    unsigned char  CTPWGA9:1;                               
};
struct __tag105
{                                                           
    unsigned char  P0PWGA10:1;                              
    unsigned char  P1PWGA10:1;                              
    unsigned char  P2PWGA10:1;                              
    unsigned char  P3PWGA10:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA10:1;                              
    unsigned char  MKPWGA10:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA10:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA10:1;                              
};
struct __tag106
{                                                           
    unsigned char  P0PWGA11:1;                              
    unsigned char  P1PWGA11:1;                              
    unsigned char  P2PWGA11:1;                              
    unsigned char  P3PWGA11:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA11:1;                              
    unsigned char  MKPWGA11:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA11:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA11:1;                              
};
struct __tag107
{                                                           
    unsigned char  P0PWGA12:1;                              
    unsigned char  P1PWGA12:1;                              
    unsigned char  P2PWGA12:1;                              
    unsigned char  P3PWGA12:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA12:1;                              
    unsigned char  MKPWGA12:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA12:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA12:1;                              
};
struct __tag108
{                                                           
    unsigned char  P0PWGA13:1;                              
    unsigned char  P1PWGA13:1;                              
    unsigned char  P2PWGA13:1;                              
    unsigned char  P3PWGA13:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA13:1;                              
    unsigned char  MKPWGA13:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA13:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA13:1;                              
};
struct __tag109
{                                                           
    unsigned char  P0PWGA14:1;                              
    unsigned char  P1PWGA14:1;                              
    unsigned char  P2PWGA14:1;                              
    unsigned char  P3PWGA14:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA14:1;                              
    unsigned char  MKPWGA14:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA14:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA14:1;                              
};
struct __tag110
{                                                           
    unsigned char  P0PWGA15:1;                              
    unsigned char  P1PWGA15:1;                              
    unsigned char  P2PWGA15:1;                              
    unsigned char  P3PWGA15:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA15:1;                              
    unsigned char  MKPWGA15:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA15:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA15:1;                              
};
struct __tag111
{                                                           
    unsigned char  P0FLERR:1;                               
    unsigned char  P1FLERR:1;                               
    unsigned char  P2FLERR:1;                               
    unsigned char  P3FLERR:1;                               
    unsigned char  :2;                                      
    unsigned char  TBFLERR:1;                               
    unsigned char  MKFLERR:1;                               
    unsigned char  :4;                                      
    unsigned char  RFFLERR:1;                               
    unsigned char  :2;                                      
    unsigned char  CTFLERR:1;                               
};
struct __tag112
{                                                           
    unsigned char  P0FLENDNM:1;                             
    unsigned char  P1FLENDNM:1;                             
    unsigned char  P2FLENDNM:1;                             
    unsigned char  P3FLENDNM:1;                             
    unsigned char  :2;                                      
    unsigned char  TBFLENDNM:1;                             
    unsigned char  MKFLENDNM:1;                             
    unsigned char  :4;                                      
    unsigned char  RFFLENDNM:1;                             
    unsigned char  :2;                                      
    unsigned char  CTFLENDNM:1;                             
};
struct __tag113
{                                                           
    unsigned char  P0CWEND:1;                               
    unsigned char  P1CWEND:1;                               
    unsigned char  P2CWEND:1;                               
    unsigned char  P3CWEND:1;                               
    unsigned char  :2;                                      
    unsigned char  TBCWEND:1;                               
    unsigned char  MKCWEND:1;                               
    unsigned char  :4;                                      
    unsigned char  RFCWEND:1;                               
    unsigned char  :2;                                      
    unsigned char  CTCWEND:1;                               
};
struct __tag114
{                                                           
    unsigned char  P0RCAN1ERR:1;                            
    unsigned char  P1RCAN1ERR:1;                            
    unsigned char  P2RCAN1ERR:1;                            
    unsigned char  P3RCAN1ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN1ERR:1;                            
    unsigned char  MKRCAN1ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN1ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN1ERR:1;                            
};
struct __tag115
{                                                           
    unsigned char  P0RCAN1REC:1;                            
    unsigned char  P1RCAN1REC:1;                            
    unsigned char  P2RCAN1REC:1;                            
    unsigned char  P3RCAN1REC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN1REC:1;                            
    unsigned char  MKRCAN1REC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN1REC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN1REC:1;                            
};
struct __tag116
{                                                           
    unsigned char  P0RCAN1TRX:1;                            
    unsigned char  P1RCAN1TRX:1;                            
    unsigned char  P2RCAN1TRX:1;                            
    unsigned char  P3RCAN1TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN1TRX:1;                            
    unsigned char  MKRCAN1TRX:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN1TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN1TRX:1;                            
};
struct __tag117
{                                                           
    unsigned char  P0CSIH1IC:1;                             
    unsigned char  P1CSIH1IC:1;                             
    unsigned char  P2CSIH1IC:1;                             
    unsigned char  P3CSIH1IC:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH1IC:1;                             
    unsigned char  MKCSIH1IC:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH1IC:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH1IC:1;                             
};
struct __tag118
{                                                           
    unsigned char  P0CSIH1IR:1;                             
    unsigned char  P1CSIH1IR:1;                             
    unsigned char  P2CSIH1IR:1;                             
    unsigned char  P3CSIH1IR:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH1IR:1;                             
    unsigned char  MKCSIH1IR:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH1IR:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH1IR:1;                             
};
struct __tag119
{                                                           
    unsigned char  P0CSIG0IC_2:1;                           
    unsigned char  P1CSIG0IC_2:1;                           
    unsigned char  P2CSIG0IC_2:1;                           
    unsigned char  P3CSIG0IC_2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIG0IC_2:1;                           
    unsigned char  MKCSIG0IC_2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIG0IC_2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIG0IC_2:1;                           
};
struct __tag120
{                                                           
    unsigned char  P0CSIG0IR_2:1;                           
    unsigned char  P1CSIG0IR_2:1;                           
    unsigned char  P2CSIG0IR_2:1;                           
    unsigned char  P3CSIG0IR_2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBCSIG0IR_2:1;                           
    unsigned char  MKCSIG0IR_2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFCSIG0IR_2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTCSIG0IR_2:1;                           
};
struct __tag121
{                                                           
    unsigned char  P0RLIN31:1;                              
    unsigned char  P1RLIN31:1;                              
    unsigned char  P2RLIN31:1;                              
    unsigned char  P3RLIN31:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN31:1;                              
    unsigned char  MKRLIN31:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN31:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN31:1;                              
};
struct __tag122
{                                                           
    unsigned char  P0RLIN31UR0:1;                           
    unsigned char  P1RLIN31UR0:1;                           
    unsigned char  P2RLIN31UR0:1;                           
    unsigned char  P3RLIN31UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN31UR0:1;                           
    unsigned char  MKRLIN31UR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN31UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN31UR0:1;                           
};
struct __tag123
{                                                           
    unsigned char  P0RLIN31UR1:1;                           
    unsigned char  P1RLIN31UR1:1;                           
    unsigned char  P2RLIN31UR1:1;                           
    unsigned char  P3RLIN31UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN31UR1:1;                           
    unsigned char  MKRLIN31UR1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN31UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN31UR1:1;                           
};
struct __tag124
{                                                           
    unsigned char  P0RLIN31UR2:1;                           
    unsigned char  P1RLIN31UR2:1;                           
    unsigned char  P2RLIN31UR2:1;                           
    unsigned char  P3RLIN31UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN31UR2:1;                           
    unsigned char  MKRLIN31UR2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN31UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN31UR2:1;                           
};
struct __tag125
{                                                           
    unsigned char  P0PWGA20:1;                              
    unsigned char  P1PWGA20:1;                              
    unsigned char  P2PWGA20:1;                              
    unsigned char  P3PWGA20:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA20:1;                              
    unsigned char  MKPWGA20:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA20:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA20:1;                              
};
struct __tag126
{                                                           
    unsigned char  P0PWGA21:1;                              
    unsigned char  P1PWGA21:1;                              
    unsigned char  P2PWGA21:1;                              
    unsigned char  P3PWGA21:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA21:1;                              
    unsigned char  MKPWGA21:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA21:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA21:1;                              
};
struct __tag127
{                                                           
    unsigned char  P0PWGA22:1;                              
    unsigned char  P1PWGA22:1;                              
    unsigned char  P2PWGA22:1;                              
    unsigned char  P3PWGA22:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA22:1;                              
    unsigned char  MKPWGA22:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA22:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA22:1;                              
};
struct __tag128
{                                                           
    unsigned char  P0PWGA23:1;                              
    unsigned char  P1PWGA23:1;                              
    unsigned char  P2PWGA23:1;                              
    unsigned char  P3PWGA23:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA23:1;                              
    unsigned char  MKPWGA23:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA23:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA23:1;                              
};
struct __tag129
{                                                           
    unsigned char  P0P6:1;                                  
    unsigned char  P1P6:1;                                  
    unsigned char  P2P6:1;                                  
    unsigned char  P3P6:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP6:1;                                  
    unsigned char  MKP6:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP6:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP6:1;                                  
};
struct __tag130
{                                                           
    unsigned char  P0P7:1;                                  
    unsigned char  P1P7:1;                                  
    unsigned char  P2P7:1;                                  
    unsigned char  P3P7:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP7:1;                                  
    unsigned char  MKP7:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP7:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP7:1;                                  
};
struct __tag131
{                                                           
    unsigned char  P0P8:1;                                  
    unsigned char  P1P8:1;                                  
    unsigned char  P2P8:1;                                  
    unsigned char  P3P8:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP8:1;                                  
    unsigned char  MKP8:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP8:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP8:1;                                  
};
struct __tag132
{                                                           
    unsigned char  P0P12:1;                                 
    unsigned char  P1P12:1;                                 
    unsigned char  P2P12:1;                                 
    unsigned char  P3P12:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBP12:1;                                 
    unsigned char  MKP12:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFP12:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTP12:1;                                 
};
struct __tag133
{                                                           
    unsigned char  P0CSIH2IC:1;                             
    unsigned char  P1CSIH2IC:1;                             
    unsigned char  P2CSIH2IC:1;                             
    unsigned char  P3CSIH2IC:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IC:1;                             
    unsigned char  MKCSIH2IC:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IC:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IC:1;                             
};
struct __tag134
{                                                           
    unsigned char  P0CSIH2IR:1;                             
    unsigned char  P1CSIH2IR:1;                             
    unsigned char  P2CSIH2IR:1;                             
    unsigned char  P3CSIH2IR:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IR:1;                             
    unsigned char  MKCSIH2IR:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IR:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IR:1;                             
};
struct __tag135
{                                                           
    unsigned char  P0CSIH2IRE:1;                            
    unsigned char  P1CSIH2IRE:1;                            
    unsigned char  P2CSIH2IRE:1;                            
    unsigned char  P3CSIH2IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IRE:1;                            
    unsigned char  MKCSIH2IRE:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IRE:1;                            
};
struct __tag136
{                                                           
    unsigned char  P0CSIH2IJC:1;                            
    unsigned char  P1CSIH2IJC:1;                            
    unsigned char  P2CSIH2IJC:1;                            
    unsigned char  P3CSIH2IJC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIH2IJC:1;                            
    unsigned char  MKCSIH2IJC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIH2IJC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIH2IJC:1;                            
};
struct __tag137
{                                                           
    unsigned char  P0TAUB0I0:1;                             
    unsigned char  P1TAUB0I0:1;                             
    unsigned char  P2TAUB0I0:1;                             
    unsigned char  P3TAUB0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I0:1;                             
    unsigned char  MKTAUB0I0:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I0:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I0:1;                             
};
struct __tag138
{                                                           
    unsigned char  P0TAUB0I1:1;                             
    unsigned char  P1TAUB0I1:1;                             
    unsigned char  P2TAUB0I1:1;                             
    unsigned char  P3TAUB0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I1:1;                             
    unsigned char  MKTAUB0I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I1:1;                             
};
struct __tag139
{                                                           
    unsigned char  P0TAUB0I2:1;                             
    unsigned char  P1TAUB0I2:1;                             
    unsigned char  P2TAUB0I2:1;                             
    unsigned char  P3TAUB0I2:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I2:1;                             
    unsigned char  MKTAUB0I2:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I2:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I2:1;                             
};
struct __tag140
{                                                           
    unsigned char  P0PWGA16:1;                              
    unsigned char  P1PWGA16:1;                              
    unsigned char  P2PWGA16:1;                              
    unsigned char  P3PWGA16:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA16:1;                              
    unsigned char  MKPWGA16:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA16:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA16:1;                              
};
struct __tag141
{                                                           
    unsigned char  P0TAUB0I4:1;                             
    unsigned char  P1TAUB0I4:1;                             
    unsigned char  P2TAUB0I4:1;                             
    unsigned char  P3TAUB0I4:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I4:1;                             
    unsigned char  MKTAUB0I4:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I4:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I4:1;                             
};
struct __tag142
{                                                           
    unsigned char  P0PWGA17:1;                              
    unsigned char  P1PWGA17:1;                              
    unsigned char  P2PWGA17:1;                              
    unsigned char  P3PWGA17:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA17:1;                              
    unsigned char  MKPWGA17:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA17:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA17:1;                              
};
struct __tag143
{                                                           
    unsigned char  P0TAUB0I6:1;                             
    unsigned char  P1TAUB0I6:1;                             
    unsigned char  P2TAUB0I6:1;                             
    unsigned char  P3TAUB0I6:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I6:1;                             
    unsigned char  MKTAUB0I6:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I6:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I6:1;                             
};
struct __tag144
{                                                           
    unsigned char  P0PWGA18:1;                              
    unsigned char  P1PWGA18:1;                              
    unsigned char  P2PWGA18:1;                              
    unsigned char  P3PWGA18:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA18:1;                              
    unsigned char  MKPWGA18:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA18:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA18:1;                              
};
struct __tag145
{                                                           
    unsigned char  P0TAUB0I8:1;                             
    unsigned char  P1TAUB0I8:1;                             
    unsigned char  P2TAUB0I8:1;                             
    unsigned char  P3TAUB0I8:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I8:1;                             
    unsigned char  MKTAUB0I8:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I8:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I8:1;                             
};
struct __tag146
{                                                           
    unsigned char  P0PWGA19:1;                              
    unsigned char  P1PWGA19:1;                              
    unsigned char  P2PWGA19:1;                              
    unsigned char  P3PWGA19:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA19:1;                              
    unsigned char  MKPWGA19:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA19:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA19:1;                              
};
struct __tag147
{                                                           
    unsigned char  P0TAUB0I10:1;                            
    unsigned char  P1TAUB0I10:1;                            
    unsigned char  P2TAUB0I10:1;                            
    unsigned char  P3TAUB0I10:1;                            
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I10:1;                            
    unsigned char  MKTAUB0I10:1;                            
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I10:1;                            
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I10:1;                            
};
struct __tag148
{                                                           
    unsigned char  P0PWGA26:1;                              
    unsigned char  P1PWGA26:1;                              
    unsigned char  P2PWGA26:1;                              
    unsigned char  P3PWGA26:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA26:1;                              
    unsigned char  MKPWGA26:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA26:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA26:1;                              
};
struct __tag149
{                                                           
    unsigned char  P0TAUB0I12:1;                            
    unsigned char  P1TAUB0I12:1;                            
    unsigned char  P2TAUB0I12:1;                            
    unsigned char  P3TAUB0I12:1;                            
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I12:1;                            
    unsigned char  MKTAUB0I12:1;                            
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I12:1;                            
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I12:1;                            
};
struct __tag150
{                                                           
    unsigned char  P0PWGA30:1;                              
    unsigned char  P1PWGA30:1;                              
    unsigned char  P2PWGA30:1;                              
    unsigned char  P3PWGA30:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA30:1;                              
    unsigned char  MKPWGA30:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA30:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA30:1;                              
};
struct __tag151
{                                                           
    unsigned char  P0TAUB0I14:1;                            
    unsigned char  P1TAUB0I14:1;                            
    unsigned char  P2TAUB0I14:1;                            
    unsigned char  P3TAUB0I14:1;                            
    unsigned char  :2;                                      
    unsigned char  TBTAUB0I14:1;                            
    unsigned char  MKTAUB0I14:1;                            
    unsigned char  :4;                                      
    unsigned char  RFTAUB0I14:1;                            
    unsigned char  :2;                                      
    unsigned char  CTTAUB0I14:1;                            
};
struct __tag152
{                                                           
    unsigned char  P0PWGA31:1;                              
    unsigned char  P1PWGA31:1;                              
    unsigned char  P2PWGA31:1;                              
    unsigned char  P3PWGA31:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA31:1;                              
    unsigned char  MKPWGA31:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA31:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA31:1;                              
};
struct __tag153
{                                                           
    unsigned char  P0CSIH3IC:1;                             
    unsigned char  P1CSIH3IC:1;                             
    unsigned char  P2CSIH3IC:1;                             
    unsigned char  P3CSIH3IC:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IC:1;                             
    unsigned char  MKCSIH3IC:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IC:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IC:1;                             
};
struct __tag154
{                                                           
    unsigned char  P0CSIH3IR:1;                             
    unsigned char  P1CSIH3IR:1;                             
    unsigned char  P2CSIH3IR:1;                             
    unsigned char  P3CSIH3IR:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IR:1;                             
    unsigned char  MKCSIH3IR:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IR:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IR:1;                             
};
struct __tag155
{                                                           
    unsigned char  P0CSIH3IRE:1;                            
    unsigned char  P1CSIH3IRE:1;                            
    unsigned char  P2CSIH3IRE:1;                            
    unsigned char  P3CSIH3IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IRE:1;                            
    unsigned char  MKCSIH3IRE:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IRE:1;                            
};
struct __tag156
{                                                           
    unsigned char  P0CSIH3IJC:1;                            
    unsigned char  P1CSIH3IJC:1;                            
    unsigned char  P2CSIH3IJC:1;                            
    unsigned char  P3CSIH3IJC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIH3IJC:1;                            
    unsigned char  MKCSIH3IJC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIH3IJC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIH3IJC:1;                            
};
struct __tag157
{                                                           
    unsigned char  P0RLIN22:1;                              
    unsigned char  P1RLIN22:1;                              
    unsigned char  P2RLIN22:1;                              
    unsigned char  P3RLIN22:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN22:1;                              
    unsigned char  MKRLIN22:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN22:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN22:1;                              
};
struct __tag158
{                                                           
    unsigned char  P0RLIN23:1;                              
    unsigned char  P1RLIN23:1;                              
    unsigned char  P2RLIN23:1;                              
    unsigned char  P3RLIN23:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN23:1;                              
    unsigned char  MKRLIN23:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN23:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN23:1;                              
};
struct __tag159
{                                                           
    unsigned char  P0RLIN32:1;                              
    unsigned char  P1RLIN32:1;                              
    unsigned char  P2RLIN32:1;                              
    unsigned char  P3RLIN32:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN32:1;                              
    unsigned char  MKRLIN32:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN32:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN32:1;                              
};
struct __tag160
{                                                           
    unsigned char  P0RLIN32UR0:1;                           
    unsigned char  P1RLIN32UR0:1;                           
    unsigned char  P2RLIN32UR0:1;                           
    unsigned char  P3RLIN32UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN32UR0:1;                           
    unsigned char  MKRLIN32UR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN32UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN32UR0:1;                           
};
struct __tag161
{                                                           
    unsigned char  P0RLIN32UR1:1;                           
    unsigned char  P1RLIN32UR1:1;                           
    unsigned char  P2RLIN32UR1:1;                           
    unsigned char  P3RLIN32UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN32UR1:1;                           
    unsigned char  MKRLIN32UR1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN32UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN32UR1:1;                           
};
struct __tag162
{                                                           
    unsigned char  P0RLIN32UR2:1;                           
    unsigned char  P1RLIN32UR2:1;                           
    unsigned char  P2RLIN32UR2:1;                           
    unsigned char  P3RLIN32UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN32UR2:1;                           
    unsigned char  MKRLIN32UR2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN32UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN32UR2:1;                           
};
struct __tag163
{                                                           
    unsigned char  P0TAUJ1I0:1;                             
    unsigned char  P1TAUJ1I0:1;                             
    unsigned char  P2TAUJ1I0:1;                             
    unsigned char  P3TAUJ1I0:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ1I0:1;                             
    unsigned char  MKTAUJ1I0:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ1I0:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ1I0:1;                             
};
struct __tag164
{                                                           
    unsigned char  P0TAUJ1I1:1;                             
    unsigned char  P1TAUJ1I1:1;                             
    unsigned char  P2TAUJ1I1:1;                             
    unsigned char  P3TAUJ1I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ1I1:1;                             
    unsigned char  MKTAUJ1I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ1I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ1I1:1;                             
};
struct __tag165
{                                                           
    unsigned char  P0TAUJ1I2:1;                             
    unsigned char  P1TAUJ1I2:1;                             
    unsigned char  P2TAUJ1I2:1;                             
    unsigned char  P3TAUJ1I2:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ1I2:1;                             
    unsigned char  MKTAUJ1I2:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ1I2:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ1I2:1;                             
};
struct __tag166
{                                                           
    unsigned char  P0TAUJ1I3:1;                             
    unsigned char  P1TAUJ1I3:1;                             
    unsigned char  P2TAUJ1I3:1;                             
    unsigned char  P3TAUJ1I3:1;                             
    unsigned char  :2;                                      
    unsigned char  TBTAUJ1I3:1;                             
    unsigned char  MKTAUJ1I3:1;                             
    unsigned char  :4;                                      
    unsigned char  RFTAUJ1I3:1;                             
    unsigned char  :2;                                      
    unsigned char  CTTAUJ1I3:1;                             
};
struct __tag167
{                                                           
    unsigned char  P0PWGA24:1;                              
    unsigned char  P1PWGA24:1;                              
    unsigned char  P2PWGA24:1;                              
    unsigned char  P3PWGA24:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA24:1;                              
    unsigned char  MKPWGA24:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA24:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA24:1;                              
};
struct __tag168
{                                                           
    unsigned char  P0PWGA25:1;                              
    unsigned char  P1PWGA25:1;                              
    unsigned char  P2PWGA25:1;                              
    unsigned char  P3PWGA25:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA25:1;                              
    unsigned char  MKPWGA25:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA25:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA25:1;                              
};
struct __tag169
{                                                           
    unsigned char  P0PWGA27:1;                              
    unsigned char  P1PWGA27:1;                              
    unsigned char  P2PWGA27:1;                              
    unsigned char  P3PWGA27:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA27:1;                              
    unsigned char  MKPWGA27:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA27:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA27:1;                              
};
struct __tag170
{                                                           
    unsigned char  P0PWGA28:1;                              
    unsigned char  P1PWGA28:1;                              
    unsigned char  P2PWGA28:1;                              
    unsigned char  P3PWGA28:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA28:1;                              
    unsigned char  MKPWGA28:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA28:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA28:1;                              
};
struct __tag171
{                                                           
    unsigned char  P0PWGA29:1;                              
    unsigned char  P1PWGA29:1;                              
    unsigned char  P2PWGA29:1;                              
    unsigned char  P3PWGA29:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA29:1;                              
    unsigned char  MKPWGA29:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA29:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA29:1;                              
};
struct __tag172
{                                                           
    unsigned char  P0PWGA32:1;                              
    unsigned char  P1PWGA32:1;                              
    unsigned char  P2PWGA32:1;                              
    unsigned char  P3PWGA32:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA32:1;                              
    unsigned char  MKPWGA32:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA32:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA32:1;                              
};
struct __tag173
{                                                           
    unsigned char  P0PWGA33:1;                              
    unsigned char  P1PWGA33:1;                              
    unsigned char  P2PWGA33:1;                              
    unsigned char  P3PWGA33:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA33:1;                              
    unsigned char  MKPWGA33:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA33:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA33:1;                              
};
struct __tag174
{                                                           
    unsigned char  P0PWGA34:1;                              
    unsigned char  P1PWGA34:1;                              
    unsigned char  P2PWGA34:1;                              
    unsigned char  P3PWGA34:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA34:1;                              
    unsigned char  MKPWGA34:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA34:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA34:1;                              
};
struct __tag175
{                                                           
    unsigned char  P0PWGA35:1;                              
    unsigned char  P1PWGA35:1;                              
    unsigned char  P2PWGA35:1;                              
    unsigned char  P3PWGA35:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA35:1;                              
    unsigned char  MKPWGA35:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA35:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA35:1;                              
};
struct __tag176
{                                                           
    unsigned char  P0PWGA36:1;                              
    unsigned char  P1PWGA36:1;                              
    unsigned char  P2PWGA36:1;                              
    unsigned char  P3PWGA36:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA36:1;                              
    unsigned char  MKPWGA36:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA36:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA36:1;                              
};
struct __tag177
{                                                           
    unsigned char  P0PWGA37:1;                              
    unsigned char  P1PWGA37:1;                              
    unsigned char  P2PWGA37:1;                              
    unsigned char  P3PWGA37:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA37:1;                              
    unsigned char  MKPWGA37:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA37:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA37:1;                              
};
struct __tag178
{                                                           
    unsigned char  P0PWGA38:1;                              
    unsigned char  P1PWGA38:1;                              
    unsigned char  P2PWGA38:1;                              
    unsigned char  P3PWGA38:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA38:1;                              
    unsigned char  MKPWGA38:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA38:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA38:1;                              
};
struct __tag179
{                                                           
    unsigned char  P0PWGA39:1;                              
    unsigned char  P1PWGA39:1;                              
    unsigned char  P2PWGA39:1;                              
    unsigned char  P3PWGA39:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA39:1;                              
    unsigned char  MKPWGA39:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA39:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA39:1;                              
};
struct __tag180
{                                                           
    unsigned char  P0PWGA40:1;                              
    unsigned char  P1PWGA40:1;                              
    unsigned char  P2PWGA40:1;                              
    unsigned char  P3PWGA40:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA40:1;                              
    unsigned char  MKPWGA40:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA40:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA40:1;                              
};
struct __tag181
{                                                           
    unsigned char  P0PWGA41:1;                              
    unsigned char  P1PWGA41:1;                              
    unsigned char  P2PWGA41:1;                              
    unsigned char  P3PWGA41:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA41:1;                              
    unsigned char  MKPWGA41:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA41:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA41:1;                              
};
struct __tag182
{                                                           
    unsigned char  P0PWGA42:1;                              
    unsigned char  P1PWGA42:1;                              
    unsigned char  P2PWGA42:1;                              
    unsigned char  P3PWGA42:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA42:1;                              
    unsigned char  MKPWGA42:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA42:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA42:1;                              
};
struct __tag183
{                                                           
    unsigned char  P0PWGA43:1;                              
    unsigned char  P1PWGA43:1;                              
    unsigned char  P2PWGA43:1;                              
    unsigned char  P3PWGA43:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA43:1;                              
    unsigned char  MKPWGA43:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA43:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA43:1;                              
};
struct __tag184
{                                                           
    unsigned char  P0PWGA44:1;                              
    unsigned char  P1PWGA44:1;                              
    unsigned char  P2PWGA44:1;                              
    unsigned char  P3PWGA44:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA44:1;                              
    unsigned char  MKPWGA44:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA44:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA44:1;                              
};
struct __tag185
{                                                           
    unsigned char  P0PWGA45:1;                              
    unsigned char  P1PWGA45:1;                              
    unsigned char  P2PWGA45:1;                              
    unsigned char  P3PWGA45:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA45:1;                              
    unsigned char  MKPWGA45:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA45:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA45:1;                              
};
struct __tag186
{                                                           
    unsigned char  P0PWGA46:1;                              
    unsigned char  P1PWGA46:1;                              
    unsigned char  P2PWGA46:1;                              
    unsigned char  P3PWGA46:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA46:1;                              
    unsigned char  MKPWGA46:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA46:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA46:1;                              
};
struct __tag187
{                                                           
    unsigned char  P0PWGA47:1;                              
    unsigned char  P1PWGA47:1;                              
    unsigned char  P2PWGA47:1;                              
    unsigned char  P3PWGA47:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA47:1;                              
    unsigned char  MKPWGA47:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA47:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA47:1;                              
};
struct __tag188
{                                                           
    unsigned char  P0P9:1;                                  
    unsigned char  P1P9:1;                                  
    unsigned char  P2P9:1;                                  
    unsigned char  P3P9:1;                                  
    unsigned char  :2;                                      
    unsigned char  TBP9:1;                                  
    unsigned char  MKP9:1;                                  
    unsigned char  :4;                                      
    unsigned char  RFP9:1;                                  
    unsigned char  :2;                                      
    unsigned char  CTP9:1;                                  
};
struct __tag189
{                                                           
    unsigned char  P0P13:1;                                 
    unsigned char  P1P13:1;                                 
    unsigned char  P2P13:1;                                 
    unsigned char  P3P13:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBP13:1;                                 
    unsigned char  MKP13:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFP13:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTP13:1;                                 
};
struct __tag190
{                                                           
    unsigned char  P0P14:1;                                 
    unsigned char  P1P14:1;                                 
    unsigned char  P2P14:1;                                 
    unsigned char  P3P14:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBP14:1;                                 
    unsigned char  MKP14:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFP14:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTP14:1;                                 
};
struct __tag191
{                                                           
    unsigned char  P0P15:1;                                 
    unsigned char  P1P15:1;                                 
    unsigned char  P2P15:1;                                 
    unsigned char  P3P15:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBP15:1;                                 
    unsigned char  MKP15:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFP15:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTP15:1;                                 
};
struct __tag192
{                                                           
    unsigned char  P0RTCA01S:1;                             
    unsigned char  P1RTCA01S:1;                             
    unsigned char  P2RTCA01S:1;                             
    unsigned char  P3RTCA01S:1;                             
    unsigned char  :2;                                      
    unsigned char  TBRTCA01S:1;                             
    unsigned char  MKRTCA01S:1;                             
    unsigned char  :4;                                      
    unsigned char  RFRTCA01S:1;                             
    unsigned char  :2;                                      
    unsigned char  CTRTCA01S:1;                             
};
struct __tag193
{                                                           
    unsigned char  P0RTCA0AL:1;                             
    unsigned char  P1RTCA0AL:1;                             
    unsigned char  P2RTCA0AL:1;                             
    unsigned char  P3RTCA0AL:1;                             
    unsigned char  :2;                                      
    unsigned char  TBRTCA0AL:1;                             
    unsigned char  MKRTCA0AL:1;                             
    unsigned char  :4;                                      
    unsigned char  RFRTCA0AL:1;                             
    unsigned char  :2;                                      
    unsigned char  CTRTCA0AL:1;                             
};
struct __tag194
{                                                           
    unsigned char  P0RTCA0R:1;                              
    unsigned char  P1RTCA0R:1;                              
    unsigned char  P2RTCA0R:1;                              
    unsigned char  P3RTCA0R:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRTCA0R:1;                              
    unsigned char  MKRTCA0R:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRTCA0R:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRTCA0R:1;                              
};
struct __tag195
{                                                           
    unsigned char  P0ADCA1ERR:1;                            
    unsigned char  P1ADCA1ERR:1;                            
    unsigned char  P2ADCA1ERR:1;                            
    unsigned char  P3ADCA1ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBADCA1ERR:1;                            
    unsigned char  MKADCA1ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFADCA1ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTADCA1ERR:1;                            
};
struct __tag196
{                                                           
    unsigned char  P0ADCA1I0:1;                             
    unsigned char  P1ADCA1I0:1;                             
    unsigned char  P2ADCA1I0:1;                             
    unsigned char  P3ADCA1I0:1;                             
    unsigned char  :2;                                      
    unsigned char  TBADCA1I0:1;                             
    unsigned char  MKADCA1I0:1;                             
    unsigned char  :4;                                      
    unsigned char  RFADCA1I0:1;                             
    unsigned char  :2;                                      
    unsigned char  CTADCA1I0:1;                             
};
struct __tag197
{                                                           
    unsigned char  P0ADCA1I1:1;                             
    unsigned char  P1ADCA1I1:1;                             
    unsigned char  P2ADCA1I1:1;                             
    unsigned char  P3ADCA1I1:1;                             
    unsigned char  :2;                                      
    unsigned char  TBADCA1I1:1;                             
    unsigned char  MKADCA1I1:1;                             
    unsigned char  :4;                                      
    unsigned char  RFADCA1I1:1;                             
    unsigned char  :2;                                      
    unsigned char  CTADCA1I1:1;                             
};
struct __tag198
{                                                           
    unsigned char  P0ADCA1I2:1;                             
    unsigned char  P1ADCA1I2:1;                             
    unsigned char  P2ADCA1I2:1;                             
    unsigned char  P3ADCA1I2:1;                             
    unsigned char  :2;                                      
    unsigned char  TBADCA1I2:1;                             
    unsigned char  MKADCA1I2:1;                             
    unsigned char  :4;                                      
    unsigned char  RFADCA1I2:1;                             
    unsigned char  :2;                                      
    unsigned char  CTADCA1I2:1;                             
};
struct __tag199
{                                                           
    unsigned char  P0RCAN2ERR:1;                            
    unsigned char  P1RCAN2ERR:1;                            
    unsigned char  P2RCAN2ERR:1;                            
    unsigned char  P3RCAN2ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN2ERR:1;                            
    unsigned char  MKRCAN2ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN2ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN2ERR:1;                            
};
struct __tag200
{                                                           
    unsigned char  P0RCAN2REC:1;                            
    unsigned char  P1RCAN2REC:1;                            
    unsigned char  P2RCAN2REC:1;                            
    unsigned char  P3RCAN2REC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN2REC:1;                            
    unsigned char  MKRCAN2REC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN2REC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN2REC:1;                            
};
struct __tag201
{                                                           
    unsigned char  P0RCAN2TRX:1;                            
    unsigned char  P1RCAN2TRX:1;                            
    unsigned char  P2RCAN2TRX:1;                            
    unsigned char  P3RCAN2TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN2TRX:1;                            
    unsigned char  MKRCAN2TRX:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN2TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN2TRX:1;                            
};
struct __tag202
{                                                           
    unsigned char  P0RCAN3ERR:1;                            
    unsigned char  P1RCAN3ERR:1;                            
    unsigned char  P2RCAN3ERR:1;                            
    unsigned char  P3RCAN3ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN3ERR:1;                            
    unsigned char  MKRCAN3ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN3ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN3ERR:1;                            
};
struct __tag203
{                                                           
    unsigned char  P0RCAN3REC:1;                            
    unsigned char  P1RCAN3REC:1;                            
    unsigned char  P2RCAN3REC:1;                            
    unsigned char  P3RCAN3REC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN3REC:1;                            
    unsigned char  MKRCAN3REC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN3REC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN3REC:1;                            
};
struct __tag204
{                                                           
    unsigned char  P0RCAN3TRX:1;                            
    unsigned char  P1RCAN3TRX:1;                            
    unsigned char  P2RCAN3TRX:1;                            
    unsigned char  P3RCAN3TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN3TRX:1;                            
    unsigned char  MKRCAN3TRX:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN3TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN3TRX:1;                            
};
struct __tag205
{                                                           
    unsigned char  P0CSIG1IC:1;                             
    unsigned char  P1CSIG1IC:1;                             
    unsigned char  P2CSIG1IC:1;                             
    unsigned char  P3CSIG1IC:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIG1IC:1;                             
    unsigned char  MKCSIG1IC:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIG1IC:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIG1IC:1;                             
};
struct __tag206
{                                                           
    unsigned char  P0CSIG1IR:1;                             
    unsigned char  P1CSIG1IR:1;                             
    unsigned char  P2CSIG1IR:1;                             
    unsigned char  P3CSIG1IR:1;                             
    unsigned char  :2;                                      
    unsigned char  TBCSIG1IR:1;                             
    unsigned char  MKCSIG1IR:1;                             
    unsigned char  :4;                                      
    unsigned char  RFCSIG1IR:1;                             
    unsigned char  :2;                                      
    unsigned char  CTCSIG1IR:1;                             
};
struct __tag207
{                                                           
    unsigned char  P0CSIG1IRE:1;                            
    unsigned char  P1CSIG1IRE:1;                            
    unsigned char  P2CSIG1IRE:1;                            
    unsigned char  P3CSIG1IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  TBCSIG1IRE:1;                            
    unsigned char  MKCSIG1IRE:1;                            
    unsigned char  :4;                                      
    unsigned char  RFCSIG1IRE:1;                            
    unsigned char  :2;                                      
    unsigned char  CTCSIG1IRE:1;                            
};
struct __tag208
{                                                           
    unsigned char  P0RLIN24:1;                              
    unsigned char  P1RLIN24:1;                              
    unsigned char  P2RLIN24:1;                              
    unsigned char  P3RLIN24:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN24:1;                              
    unsigned char  MKRLIN24:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN24:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN24:1;                              
};
struct __tag209
{                                                           
    unsigned char  P0RLIN25:1;                              
    unsigned char  P1RLIN25:1;                              
    unsigned char  P2RLIN25:1;                              
    unsigned char  P3RLIN25:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN25:1;                              
    unsigned char  MKRLIN25:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN25:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN25:1;                              
};
struct __tag210
{                                                           
    unsigned char  P0RLIN33:1;                              
    unsigned char  P1RLIN33:1;                              
    unsigned char  P2RLIN33:1;                              
    unsigned char  P3RLIN33:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN33:1;                              
    unsigned char  MKRLIN33:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN33:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN33:1;                              
};
struct __tag211
{                                                           
    unsigned char  P0RLIN33UR0:1;                           
    unsigned char  P1RLIN33UR0:1;                           
    unsigned char  P2RLIN33UR0:1;                           
    unsigned char  P3RLIN33UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN33UR0:1;                           
    unsigned char  MKRLIN33UR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN33UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN33UR0:1;                           
};
struct __tag212
{                                                           
    unsigned char  P0RLIN33UR1:1;                           
    unsigned char  P1RLIN33UR1:1;                           
    unsigned char  P2RLIN33UR1:1;                           
    unsigned char  P3RLIN33UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN33UR1:1;                           
    unsigned char  MKRLIN33UR1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN33UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN33UR1:1;                           
};
struct __tag213
{                                                           
    unsigned char  P0RLIN33UR2:1;                           
    unsigned char  P1RLIN33UR2:1;                           
    unsigned char  P2RLIN33UR2:1;                           
    unsigned char  P3RLIN33UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN33UR2:1;                           
    unsigned char  MKRLIN33UR2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN33UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN33UR2:1;                           
};
struct __tag214
{                                                           
    unsigned char  P0RLIN34:1;                              
    unsigned char  P1RLIN34:1;                              
    unsigned char  P2RLIN34:1;                              
    unsigned char  P3RLIN34:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN34:1;                              
    unsigned char  MKRLIN34:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN34:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN34:1;                              
};
struct __tag215
{                                                           
    unsigned char  P0RLIN34UR0:1;                           
    unsigned char  P1RLIN34UR0:1;                           
    unsigned char  P2RLIN34UR0:1;                           
    unsigned char  P3RLIN34UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN34UR0:1;                           
    unsigned char  MKRLIN34UR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN34UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN34UR0:1;                           
};
struct __tag216
{                                                           
    unsigned char  P0RLIN34UR1:1;                           
    unsigned char  P1RLIN34UR1:1;                           
    unsigned char  P2RLIN34UR1:1;                           
    unsigned char  P3RLIN34UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN34UR1:1;                           
    unsigned char  MKRLIN34UR1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN34UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN34UR1:1;                           
};
struct __tag217
{                                                           
    unsigned char  P0RLIN34UR2:1;                           
    unsigned char  P1RLIN34UR2:1;                           
    unsigned char  P2RLIN34UR2:1;                           
    unsigned char  P3RLIN34UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN34UR2:1;                           
    unsigned char  MKRLIN34UR2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN34UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN34UR2:1;                           
};
struct __tag218
{                                                           
    unsigned char  P0RLIN35:1;                              
    unsigned char  P1RLIN35:1;                              
    unsigned char  P2RLIN35:1;                              
    unsigned char  P3RLIN35:1;                              
    unsigned char  :2;                                      
    unsigned char  TBRLIN35:1;                              
    unsigned char  MKRLIN35:1;                              
    unsigned char  :4;                                      
    unsigned char  RFRLIN35:1;                              
    unsigned char  :2;                                      
    unsigned char  CTRLIN35:1;                              
};
struct __tag219
{                                                           
    unsigned char  P0RLIN35UR0:1;                           
    unsigned char  P1RLIN35UR0:1;                           
    unsigned char  P2RLIN35UR0:1;                           
    unsigned char  P3RLIN35UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN35UR0:1;                           
    unsigned char  MKRLIN35UR0:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN35UR0:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN35UR0:1;                           
};
struct __tag220
{                                                           
    unsigned char  P0RLIN35UR1:1;                           
    unsigned char  P1RLIN35UR1:1;                           
    unsigned char  P2RLIN35UR1:1;                           
    unsigned char  P3RLIN35UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN35UR1:1;                           
    unsigned char  MKRLIN35UR1:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN35UR1:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN35UR1:1;                           
};
struct __tag221
{                                                           
    unsigned char  P0RLIN35UR2:1;                           
    unsigned char  P1RLIN35UR2:1;                           
    unsigned char  P2RLIN35UR2:1;                           
    unsigned char  P3RLIN35UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  TBRLIN35UR2:1;                           
    unsigned char  MKRLIN35UR2:1;                           
    unsigned char  :4;                                      
    unsigned char  RFRLIN35UR2:1;                           
    unsigned char  :2;                                      
    unsigned char  CTRLIN35UR2:1;                           
};
struct __tag222
{                                                           
    unsigned char  P0PWGA48:1;                              
    unsigned char  P1PWGA48:1;                              
    unsigned char  P2PWGA48:1;                              
    unsigned char  P3PWGA48:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA48:1;                              
    unsigned char  MKPWGA48:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA48:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA48:1;                              
};
struct __tag223
{                                                           
    unsigned char  P0PWGA49:1;                              
    unsigned char  P1PWGA49:1;                              
    unsigned char  P2PWGA49:1;                              
    unsigned char  P3PWGA49:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA49:1;                              
    unsigned char  MKPWGA49:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA49:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA49:1;                              
};
struct __tag224
{                                                           
    unsigned char  P0PWGA50:1;                              
    unsigned char  P1PWGA50:1;                              
    unsigned char  P2PWGA50:1;                              
    unsigned char  P3PWGA50:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA50:1;                              
    unsigned char  MKPWGA50:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA50:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA50:1;                              
};
struct __tag225
{                                                           
    unsigned char  P0PWGA51:1;                              
    unsigned char  P1PWGA51:1;                              
    unsigned char  P2PWGA51:1;                              
    unsigned char  P3PWGA51:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA51:1;                              
    unsigned char  MKPWGA51:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA51:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA51:1;                              
};
struct __tag226
{                                                           
    unsigned char  P0PWGA52:1;                              
    unsigned char  P1PWGA52:1;                              
    unsigned char  P2PWGA52:1;                              
    unsigned char  P3PWGA52:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA52:1;                              
    unsigned char  MKPWGA52:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA52:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA52:1;                              
};
struct __tag227
{                                                           
    unsigned char  P0PWGA53:1;                              
    unsigned char  P1PWGA53:1;                              
    unsigned char  P2PWGA53:1;                              
    unsigned char  P3PWGA53:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA53:1;                              
    unsigned char  MKPWGA53:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA53:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA53:1;                              
};
struct __tag228
{                                                           
    unsigned char  P0PWGA54:1;                              
    unsigned char  P1PWGA54:1;                              
    unsigned char  P2PWGA54:1;                              
    unsigned char  P3PWGA54:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA54:1;                              
    unsigned char  MKPWGA54:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA54:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA54:1;                              
};
struct __tag229
{                                                           
    unsigned char  P0PWGA55:1;                              
    unsigned char  P1PWGA55:1;                              
    unsigned char  P2PWGA55:1;                              
    unsigned char  P3PWGA55:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA55:1;                              
    unsigned char  MKPWGA55:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA55:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA55:1;                              
};
struct __tag230
{                                                           
    unsigned char  P0PWGA56:1;                              
    unsigned char  P1PWGA56:1;                              
    unsigned char  P2PWGA56:1;                              
    unsigned char  P3PWGA56:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA56:1;                              
    unsigned char  MKPWGA56:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA56:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA56:1;                              
};
struct __tag231
{                                                           
    unsigned char  P0PWGA57:1;                              
    unsigned char  P1PWGA57:1;                              
    unsigned char  P2PWGA57:1;                              
    unsigned char  P3PWGA57:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA57:1;                              
    unsigned char  MKPWGA57:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA57:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA57:1;                              
};
struct __tag232
{                                                           
    unsigned char  P0PWGA58:1;                              
    unsigned char  P1PWGA58:1;                              
    unsigned char  P2PWGA58:1;                              
    unsigned char  P3PWGA58:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA58:1;                              
    unsigned char  MKPWGA58:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA58:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA58:1;                              
};
struct __tag233
{                                                           
    unsigned char  P0PWGA59:1;                              
    unsigned char  P1PWGA59:1;                              
    unsigned char  P2PWGA59:1;                              
    unsigned char  P3PWGA59:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA59:1;                              
    unsigned char  MKPWGA59:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA59:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA59:1;                              
};
struct __tag234
{                                                           
    unsigned char  P0PWGA60:1;                              
    unsigned char  P1PWGA60:1;                              
    unsigned char  P2PWGA60:1;                              
    unsigned char  P3PWGA60:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA60:1;                              
    unsigned char  MKPWGA60:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA60:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA60:1;                              
};
struct __tag235
{                                                           
    unsigned char  P0PWGA61:1;                              
    unsigned char  P1PWGA61:1;                              
    unsigned char  P2PWGA61:1;                              
    unsigned char  P3PWGA61:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA61:1;                              
    unsigned char  MKPWGA61:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA61:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA61:1;                              
};
struct __tag236
{                                                           
    unsigned char  P0PWGA62:1;                              
    unsigned char  P1PWGA62:1;                              
    unsigned char  P2PWGA62:1;                              
    unsigned char  P3PWGA62:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA62:1;                              
    unsigned char  MKPWGA62:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA62:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA62:1;                              
};
struct __tag237
{                                                           
    unsigned char  P0PWGA63:1;                              
    unsigned char  P1PWGA63:1;                              
    unsigned char  P2PWGA63:1;                              
    unsigned char  P3PWGA63:1;                              
    unsigned char  :2;                                      
    unsigned char  TBPWGA63:1;                              
    unsigned char  MKPWGA63:1;                              
    unsigned char  :4;                                      
    unsigned char  RFPWGA63:1;                              
    unsigned char  :2;                                      
    unsigned char  CTPWGA63:1;                              
};
struct __tag238
{                                                           
    unsigned char  P0RCAN4ERR:1;                            
    unsigned char  P1RCAN4ERR:1;                            
    unsigned char  P2RCAN4ERR:1;                            
    unsigned char  P3RCAN4ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN4ERR:1;                            
    unsigned char  MKRCAN4ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN4ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN4ERR:1;                            
};
struct __tag239
{                                                           
    unsigned char  P0RCAN4REC:1;                            
    unsigned char  P1RCAN4REC:1;                            
    unsigned char  P2RCAN4REC:1;                            
    unsigned char  P3RCAN4REC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN4REC:1;                            
    unsigned char  MKRCAN4REC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN4REC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN4REC:1;                            
};
struct __tag240
{                                                           
    unsigned char  P0RCAN4TRX:1;                            
    unsigned char  P1RCAN4TRX:1;                            
    unsigned char  P2RCAN4TRX:1;                            
    unsigned char  P3RCAN4TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN4TRX:1;                            
    unsigned char  MKRCAN4TRX:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN4TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN4TRX:1;                            
};
struct __tag241
{                                                           
    unsigned char  P0RCAN5ERR:1;                            
    unsigned char  P1RCAN5ERR:1;                            
    unsigned char  P2RCAN5ERR:1;                            
    unsigned char  P3RCAN5ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN5ERR:1;                            
    unsigned char  MKRCAN5ERR:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN5ERR:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN5ERR:1;                            
};
struct __tag242
{                                                           
    unsigned char  P0RCAN5REC:1;                            
    unsigned char  P1RCAN5REC:1;                            
    unsigned char  P2RCAN5REC:1;                            
    unsigned char  P3RCAN5REC:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN5REC:1;                            
    unsigned char  MKRCAN5REC:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN5REC:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN5REC:1;                            
};
struct __tag243
{                                                           
    unsigned char  P0RCAN5TRX:1;                            
    unsigned char  P1RCAN5TRX:1;                            
    unsigned char  P2RCAN5TRX:1;                            
    unsigned char  P3RCAN5TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  TBRCAN5TRX:1;                            
    unsigned char  MKRCAN5TRX:1;                            
    unsigned char  :4;                                      
    unsigned char  RFRCAN5TRX:1;                            
    unsigned char  :2;                                      
    unsigned char  CTRCAN5TRX:1;                            
};
struct __tag244
{                                                           
    unsigned char  P0DPE:1;                                 
    unsigned char  P1DPE:1;                                 
    unsigned char  P2DPE:1;                                 
    unsigned char  P3DPE:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBDPE:1;                                 
    unsigned char  MKDPE:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFDPE:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTDPE:1;                                 
};
struct __tag245
{                                                           
    unsigned char  P0APE:1;                                 
    unsigned char  P1APE:1;                                 
    unsigned char  P2APE:1;                                 
    unsigned char  P3APE:1;                                 
    unsigned char  :2;                                      
    unsigned char  TBAPE:1;                                 
    unsigned char  MKAPE:1;                                 
    unsigned char  :4;                                      
    unsigned char  RFAPE:1;                                 
    unsigned char  :2;                                      
    unsigned char  CTAPE:1;                                 
};
struct __tag246
{                                                           
    unsigned char  IMR1EIMK32:1;                            
    unsigned char  IMR1EIMK33:1;                            
    unsigned char  IMR1EIMK34:1;                            
    unsigned char  IMR1EIMK35:1;                            
    unsigned char  IMR1EIMK36:1;                            
    unsigned char  IMR1EIMK37:1;                            
    unsigned char  IMR1EIMK38:1;                            
    unsigned char  IMR1EIMK39:1;                            
    unsigned char  IMR1EIMK40:1;                            
    unsigned char  IMR1EIMK41:1;                            
    unsigned char  :1;                                      
    unsigned char  IMR1EIMK43:1;                            
    unsigned char  IMR1EIMK44:1;                            
    unsigned char  IMR1EIMK45:1;                            
    unsigned char  IMR1EIMK46:1;                            
    unsigned char  IMR1EIMK47:1;                            
    unsigned char  IMR1EIMK48:1;                            
    unsigned char  IMR1EIMK49:1;                            
    unsigned char  IMR1EIMK50:1;                            
    unsigned char  IMR1EIMK51:1;                            
    unsigned char  IMR1EIMK52:1;                            
    unsigned char  IMR1EIMK53:1;                            
    unsigned char  IMR1EIMK54:1;                            
    unsigned char  IMR1EIMK55:1;                            
    unsigned char  IMR1EIMK56:1;                            
    unsigned char  IMR1EIMK57:1;                            
    unsigned char  IMR1EIMK58:1;                            
    unsigned char  IMR1EIMK59:1;                            
    unsigned char  IMR1EIMK60:1;                            
    unsigned char  IMR1EIMK61:1;                            
    unsigned char  IMR1EIMK62:1;                            
    unsigned char  IMR1EIMK63:1;                            
};
struct __tag247
{                                                           
    unsigned char  IMR2EIMK64:1;                            
    unsigned char  IMR2EIMK65:1;                            
    unsigned char  IMR2EIMK66:1;                            
    unsigned char  IMR2EIMK67:1;                            
    unsigned char  IMR2EIMK68:1;                            
    unsigned char  IMR2EIMK69:1;                            
    unsigned char  IMR2EIMK70:1;                            
    unsigned char  IMR2EIMK71:1;                            
    unsigned char  IMR2EIMK72:1;                            
    unsigned char  IMR2EIMK73:1;                            
    unsigned char  IMR2EIMK74:1;                            
    unsigned char  IMR2EIMK75:1;                            
    unsigned char  IMR2EIMK76:1;                            
    unsigned char  IMR2EIMK77:1;                            
    unsigned char  IMR2EIMK78:1;                            
    unsigned char  IMR2EIMK79:1;                            
    unsigned char  IMR2EIMK80:1;                            
    unsigned char  IMR2EIMK81:1;                            
    unsigned char  IMR2EIMK82:1;                            
    unsigned char  IMR2EIMK83:1;                            
    unsigned char  IMR2EIMK84:1;                            
    unsigned char  IMR2EIMK85:1;                            
    unsigned char  IMR2EIMK86:1;                            
    unsigned char  IMR2EIMK87:1;                            
    unsigned char  IMR2EIMK88:1;                            
    unsigned char  IMR2EIMK89:1;                            
    unsigned char  IMR2EIMK90:1;                            
    unsigned char  IMR2EIMK91:1;                            
    unsigned char  IMR2EIMK92:1;                            
    unsigned char  IMR2EIMK93:1;                            
    unsigned char  IMR2EIMK94:1;                            
    unsigned char  IMR2EIMK95:1;                            
};
struct __tag248
{                                                           
    unsigned char  IMR3EIMK96:1;                            
    unsigned char  IMR3EIMK97:1;                            
    unsigned char  IMR3EIMK98:1;                            
    unsigned char  IMR3EIMK99:1;                            
    unsigned char  IMR3EIMK100:1;                           
    unsigned char  IMR3EIMK101:1;                           
    unsigned char  IMR3EIMK102:1;                           
    unsigned char  IMR3EIMK103:1;                           
    unsigned char  :6;                                      
    unsigned char  IMR3EIMK110:1;                           
    unsigned char  IMR3EIMK111:1;                           
    unsigned char  IMR3EIMK112:1;                           
    unsigned char  IMR3EIMK113:1;                           
    unsigned char  IMR3EIMK114:1;                           
    unsigned char  IMR3EIMK115:1;                           
    unsigned char  IMR3EIMK116:1;                           
    unsigned char  IMR3EIMK117:1;                           
    unsigned char  IMR3EIMK118:1;                           
    unsigned char  IMR3EIMK119:1;                           
    unsigned char  IMR3EIMK120:1;                           
    unsigned char  IMR3EIMK121:1;                           
    unsigned char  IMR3EIMK122:1;                           
    unsigned char  IMR3EIMK123:1;                           
    unsigned char  IMR3EIMK124:1;                           
    unsigned char  IMR3EIMK125:1;                           
    unsigned char  IMR3EIMK126:1;                           
    unsigned char  IMR3EIMK127:1;                           
};
struct __tag249
{                                                           
    unsigned char  IMR4EIMK128:1;                           
    unsigned char  IMR4EIMK129:1;                           
    unsigned char  IMR4EIMK130:1;                           
    unsigned char  IMR4EIMK131:1;                           
    unsigned char  IMR4EIMK132:1;                           
    unsigned char  IMR4EIMK133:1;                           
    unsigned char  IMR4EIMK134:1;                           
    unsigned char  IMR4EIMK135:1;                           
    unsigned char  :6;                                      
    unsigned char  IMR4EIMK142:1;                           
    unsigned char  IMR4EIMK143:1;                           
    unsigned char  IMR4EIMK144:1;                           
    unsigned char  IMR4EIMK145:1;                           
    unsigned char  IMR4EIMK146:1;                           
    unsigned char  IMR4EIMK147:1;                           
    unsigned char  IMR4EIMK148:1;                           
    unsigned char  IMR4EIMK149:1;                           
    unsigned char  IMR4EIMK150:1;                           
    unsigned char  IMR4EIMK151:1;                           
    unsigned char  IMR4EIMK152:1;                           
    unsigned char  IMR4EIMK153:1;                           
    unsigned char  IMR4EIMK154:1;                           
    unsigned char  IMR4EIMK155:1;                           
    unsigned char  IMR4EIMK156:1;                           
    unsigned char  IMR4EIMK157:1;                           
    unsigned char  IMR4EIMK158:1;                           
    unsigned char  IMR4EIMK159:1;                           
};
struct __tag250
{                                                           
    unsigned char  IMR5EIMK160:1;                           
    unsigned char  IMR5EIMK161:1;                           
    unsigned char  IMR5EIMK162:1;                           
    unsigned char  IMR5EIMK163:1;                           
    unsigned char  IMR5EIMK164:1;                           
    unsigned char  IMR5EIMK165:1;                           
    unsigned char  IMR5EIMK166:1;                           
    unsigned char  IMR5EIMK167:1;                           
    unsigned char  IMR5EIMK168:1;                           
    unsigned char  IMR5EIMK169:1;                           
    unsigned char  IMR5EIMK170:1;                           
    unsigned char  IMR5EIMK171:1;                           
    unsigned char  :4;                                      
    unsigned char  :8;                                      
    unsigned char  IMR5EIMK184:1;                           
    unsigned char  IMR5EIMK185:1;                           
    unsigned char  IMR5EIMK186:1;                           
    unsigned char  IMR5EIMK187:1;                           
    unsigned char  IMR5EIMK188:1;                           
    unsigned char  IMR5EIMK189:1;                           
    unsigned char  IMR5EIMK190:1;                           
    unsigned char  IMR5EIMK191:1;                           
};
struct __tag251
{                                                           
    unsigned char  IMR6EIMK192:1;                           
    unsigned char  IMR6EIMK193:1;                           
    unsigned char  IMR6EIMK194:1;                           
    unsigned char  IMR6EIMK195:1;                           
    unsigned char  IMR6EIMK196:1;                           
    unsigned char  IMR6EIMK197:1;                           
    unsigned char  IMR6EIMK198:1;                           
    unsigned char  IMR6EIMK199:1;                           
    unsigned char  IMR6EIMK200:1;                           
    unsigned char  IMR6EIMK201:1;                           
    unsigned char  IMR6EIMK202:1;                           
    unsigned char  IMR6EIMK203:1;                           
    unsigned char  IMR6EIMK204:1;                           
    unsigned char  IMR6EIMK205:1;                           
    unsigned char  IMR6EIMK206:1;                           
    unsigned char  IMR6EIMK207:1;                           
    unsigned char  IMR6EIMK208:1;                           
    unsigned char  IMR6EIMK209:1;                           
    unsigned char  IMR6EIMK210:1;                           
    unsigned char  IMR6EIMK211:1;                           
    unsigned char  IMR6EIMK212:1;                           
    unsigned char  IMR6EIMK213:1;                           
    unsigned char  IMR6EIMK214:1;                           
    unsigned char  IMR6EIMK215:1;                           
    unsigned char  :1;                                      
    unsigned char  IMR6EIMK217:1;                           
    unsigned char  IMR6EIMK218:1;                           
    unsigned char  IMR6EIMK219:1;                           
    unsigned char  IMR6EIMK220:1;                           
    unsigned char  IMR6EIMK221:1;                           
    unsigned char  IMR6EIMK222:1;                           
    unsigned char  IMR6EIMK223:1;                           
};
struct __tag252
{                                                           
    unsigned char  IMR7EIMK224:1;                           
    unsigned char  IMR7EIMK225:1;                           
    unsigned char  IMR7EIMK226:1;                           
    unsigned char  IMR7EIMK227:1;                           
    unsigned char  IMR7EIMK228:1;                           
    unsigned char  IMR7EIMK229:1;                           
    unsigned char  IMR7EIMK230:1;                           
    unsigned char  IMR7EIMK231:1;                           
    unsigned char  IMR7EIMK232:1;                           
    unsigned char  IMR7EIMK233:1;                           
    unsigned char  IMR7EIMK234:1;                           
    unsigned char  IMR7EIMK235:1;                           
    unsigned char  IMR7EIMK236:1;                           
    unsigned char  IMR7EIMK237:1;                           
    unsigned char  IMR7EIMK238:1;                           
    unsigned char  IMR7EIMK239:1;                           
    unsigned char  IMR7EIMK240:1;                           
    unsigned char  IMR7EIMK241:1;                           
    unsigned char  IMR7EIMK242:1;                           
    unsigned char  IMR7EIMK243:1;                           
    unsigned char  IMR7EIMK244:1;                           
    unsigned char  IMR7EIMK245:1;                           
    unsigned char  IMR7EIMK246:1;                           
    unsigned char  IMR7EIMK247:1;                           
    unsigned char  IMR7EIMK248:1;                           
    unsigned char  IMR7EIMK249:1;                           
    unsigned char  IMR7EIMK250:1;                           
    unsigned char  IMR7EIMK251:1;                           
    unsigned char  IMR7EIMK252:1;                           
    unsigned char  IMR7EIMK253:1;                           
    unsigned char  IMR7EIMK254:1;                           
    unsigned char  IMR7EIMK255:1;                           
};
struct __tag253
{                                                           
    unsigned char  :8;                                      
    unsigned char  :8;                                      
    unsigned char  IMR8EIMK272:1;                           
    unsigned char  IMR8EIMK273:1;                           
    unsigned char  IMR8EIMK274:1;                           
    unsigned char  :5;                                      
    unsigned char  :7;                                      
    unsigned char  IMR8EIMK287:1;                           
};
struct __tag254
{                                                           
    unsigned char  IMR9EIMK288:1;                           
    unsigned char  IMR9EIMK289:1;                           
    unsigned char  :6;                                      
    unsigned char  :8;                                      
    unsigned char  :8;                                      
    unsigned char  :8;                                      
};
struct __tag255
{                                                           
    unsigned char  :4;                                      
    unsigned char  IMR11EIMK356:1;                          
    unsigned char  IMR11EIMK357:1;                          
    unsigned char  :2;                                      
    unsigned char  :8;                                      
    unsigned char  :8;                                      
    unsigned char  :8;                                      
};
union __tag256
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
};
union __tag257
{                                                           
    unsigned char  UINT8;                                   
    struct __tag0 BIT;                                      
};
union __tag258
{                                                           
    unsigned char  UINT8;                                   
    struct __tag1 BIT;                                      
};
union __tag259
{                                                           
    unsigned char  UINT8;                                   
    struct __tag2 BIT;                                      
};
union __tag260
{                                                           
    unsigned char  UINT8;                                   
    struct __tag3 BIT;                                      
};
union __tag261
{                                                           
    unsigned char  UINT8;                                   
    struct __tag4 BIT;                                      
};
union __tag262
{                                                           
    unsigned char  UINT8;                                   
    struct __tag5 BIT;                                      
};
union __tag263
{                                                           
    unsigned char  UINT8;                                   
    struct __tag6 BIT;                                      
};
union __tag264
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
};
union __tag265
{                                                           
    unsigned long  UINT32;                                  
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ERDB;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECRD;
        union
        {                                                   
            unsigned char  UINT8;                           
        } HORD;
        union
        {                                                   
            unsigned char  UINT8;                           
        } SYND;
    } REGS8;
};
union __tag266
{                                                           
    unsigned long  UINT32;                                  
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCAN0ERDB_PHY1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCAN0ECRD_PHY1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCAN0HORD_PHY1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCAN0SYND_PHY1;
    } REGS8;
};
union __tag267
{                                                           
    unsigned long  UINT32;                                  
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCANFD0ERDB_PHY2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCANFD0ECRD_PHY2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCANFD0HORD_PHY2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ECCRCANFD0SYND_PHY2;
    } REGS8;
};
union __tag268
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } LBRP0;
        union
        {                                                   
            unsigned char  UINT8;                           
        } LBRP1;
    } REGS8;
};
union __tag269
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
};
union __tag270
{                                                           
    unsigned char  UINT8;                                   
    struct __tag7 BIT;                                      
};
union __tag271
{                                                           
    unsigned char  UINT8;                                   
    struct __tag8 BIT;                                      
};
union __tag272
{                                                           
    unsigned char  UINT8;                                   
    struct __tag9 BIT;                                      
};
union __tag273
{                                                           
    unsigned char  UINT8;                                   
    struct __tag10 BIT;                                     
};
union __tag274
{                                                           
    unsigned char  UINT8;                                   
    struct __tag11 BIT;                                     
};
union __tag275
{                                                           
    unsigned char  UINT8;                                   
    struct __tag12 BIT;                                     
};
union __tag276
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR3;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR4;
    } REGS8;
};
union __tag277
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR5;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR6;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPSELR7;
        unsigned char  dummy0[1];                           
    } REGS8;
};
union __tag278
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR3;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR4;
    } REGS8;
};
union __tag279
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR5;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR6;
        union
        {                                                   
            unsigned char  UINT8;                           
        } DPDSR7;
        unsigned char  dummy1[1];                           
    } REGS8;
};
union __tag280
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2ICL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2ICH_1;
    } REGS8;
    struct __tag13 BIT;                                     
};
union __tag281
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3ICL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3ICH_1;
    } REGS8;
    struct __tag14 BIT;                                     
};
union __tag282
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2IRL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2IRH_1;
    } REGS8;
    struct __tag15 BIT;                                     
};
union __tag283
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2IREL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2IREH_1;
    } REGS8;
    struct __tag16 BIT;                                     
};
union __tag284
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2IJCL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH2IJCH_1;
    } REGS8;
    struct __tag17 BIT;                                     
};
union __tag285
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3IRL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3IRH_1;
    } REGS8;
    struct __tag18 BIT;                                     
};
union __tag286
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3IREL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3IREH_1;
    } REGS8;
    struct __tag19 BIT;                                     
};
union __tag287
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3IJCL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH3IJCH_1;
    } REGS8;
    struct __tag20 BIT;                                     
};
union __tag288
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH1ICL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH1ICH_1;
    } REGS8;
    struct __tag21 BIT;                                     
};
union __tag289
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH1IRL_1;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIH1IRH_1;
    } REGS8;
    struct __tag22 BIT;                                     
};
union __tag290
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag23 BIT;                                     
};
union __tag291
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag24 BIT;                                     
};
union __tag292
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag25 BIT;                                     
};
union __tag293
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag26 BIT;                                     
};
union __tag294
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag27 BIT;                                     
};
union __tag295
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag28 BIT;                                     
};
union __tag296
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag29 BIT;                                     
};
union __tag297
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag30 BIT;                                     
};
union __tag298
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag31 BIT;                                     
};
union __tag299
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag32 BIT;                                     
};
union __tag300
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag33 BIT;                                     
};
union __tag301
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag34 BIT;                                     
};
union __tag302
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag35 BIT;                                     
};
union __tag303
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag36 BIT;                                     
};
union __tag304
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag37 BIT;                                     
};
union __tag305
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag38 BIT;                                     
};
union __tag306
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag39 BIT;                                     
};
union __tag307
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICADCA0I2L_2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICADCA0I2H_2;
    } REGS8;
    struct __tag40 BIT;                                     
};
union __tag308
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag41 BIT;                                     
};
union __tag309
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag42 BIT;                                     
};
union __tag310
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag43 BIT;                                     
};
union __tag311
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag44 BIT;                                     
};
union __tag312
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag45 BIT;                                     
};
union __tag313
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag46 BIT;                                     
};
union __tag314
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag47 BIT;                                     
};
union __tag315
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag48 BIT;                                     
};
union __tag316
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag49 BIT;                                     
};
union __tag317
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag50 BIT;                                     
};
union __tag318
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag51 BIT;                                     
};
union __tag319
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag52 BIT;                                     
};
union __tag320
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag53 BIT;                                     
};
union __tag321
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag54 BIT;                                     
};
union __tag322
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag55 BIT;                                     
};
union __tag323
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag56 BIT;                                     
};
union __tag324
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag57 BIT;                                     
};
union __tag325
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag58 BIT;                                     
};
union __tag326
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag59 BIT;                                     
};
union __tag327
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag60 BIT;                                     
};
union __tag328
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag61 BIT;                                     
};
union __tag329
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag62 BIT;                                     
};
union __tag330
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag63 BIT;                                     
};
union __tag331
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag64 BIT;                                     
};
union __tag332
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag65 BIT;                                     
};
union __tag333
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag66 BIT;                                     
};
union __tag334
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag67 BIT;                                     
};
union __tag335
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag68 BIT;                                     
};
union __tag336
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag69 BIT;                                     
};
union __tag337
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag70 BIT;                                     
};
union __tag338
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag71 BIT;                                     
};
union __tag339
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag72 BIT;                                     
};
union __tag340
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag73 BIT;                                     
};
union __tag341
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag74 BIT;                                     
};
union __tag342
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag75 BIT;                                     
};
union __tag343
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag76 BIT;                                     
};
union __tag344
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag77 BIT;                                     
};
union __tag345
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag78 BIT;                                     
};
union __tag346
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag79 BIT;                                     
};
union __tag347
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag80 BIT;                                     
};
union __tag348
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag81 BIT;                                     
};
union __tag349
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag82 BIT;                                     
};
union __tag350
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag83 BIT;                                     
};
union __tag351
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag84 BIT;                                     
};
union __tag352
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag85 BIT;                                     
};
union __tag353
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag86 BIT;                                     
};
union __tag354
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag87 BIT;                                     
};
union __tag355
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag88 BIT;                                     
};
union __tag356
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag89 BIT;                                     
};
union __tag357
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag90 BIT;                                     
};
union __tag358
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag91 BIT;                                     
};
union __tag359
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag92 BIT;                                     
};
union __tag360
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag93 BIT;                                     
};
union __tag361
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag94 BIT;                                     
};
union __tag362
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag95 BIT;                                     
};
union __tag363
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag96 BIT;                                     
};
union __tag364
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag97 BIT;                                     
};
union __tag365
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag98 BIT;                                     
};
union __tag366
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag99 BIT;                                     
};
union __tag367
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag100 BIT;                                    
};
union __tag368
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag101 BIT;                                    
};
union __tag369
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag102 BIT;                                    
};
union __tag370
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag103 BIT;                                    
};
union __tag371
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag104 BIT;                                    
};
union __tag372
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag105 BIT;                                    
};
union __tag373
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag106 BIT;                                    
};
union __tag374
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag107 BIT;                                    
};
union __tag375
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag108 BIT;                                    
};
union __tag376
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag109 BIT;                                    
};
union __tag377
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag110 BIT;                                    
};
union __tag378
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag111 BIT;                                    
};
union __tag379
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag112 BIT;                                    
};
union __tag380
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag113 BIT;                                    
};
union __tag381
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag114 BIT;                                    
};
union __tag382
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag115 BIT;                                    
};
union __tag383
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag116 BIT;                                    
};
union __tag384
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag117 BIT;                                    
};
union __tag385
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag118 BIT;                                    
};
union __tag386
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIG0ICL_2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIG0ICH_2;
    } REGS8;
    struct __tag119 BIT;                                    
};
union __tag387
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct 
    {
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIG0IRL_2;
        union
        {                                                   
            unsigned char  UINT8;                           
        } ICCSIG0IRH_2;
    } REGS8;
    struct __tag120 BIT;                                    
};
union __tag388
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag121 BIT;                                    
};
union __tag389
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag122 BIT;                                    
};
union __tag390
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag123 BIT;                                    
};
union __tag391
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag124 BIT;                                    
};
union __tag392
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag125 BIT;                                    
};
union __tag393
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag126 BIT;                                    
};
union __tag394
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag127 BIT;                                    
};
union __tag395
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag128 BIT;                                    
};
union __tag396
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag129 BIT;                                    
};
union __tag397
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag130 BIT;                                    
};
union __tag398
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag131 BIT;                                    
};
union __tag399
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag132 BIT;                                    
};
union __tag400
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag133 BIT;                                    
};
union __tag401
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag134 BIT;                                    
};
union __tag402
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag135 BIT;                                    
};
union __tag403
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag136 BIT;                                    
};
union __tag404
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag137 BIT;                                    
};
union __tag405
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag138 BIT;                                    
};
union __tag406
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag139 BIT;                                    
};
union __tag407
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag140 BIT;                                    
};
union __tag408
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag141 BIT;                                    
};
union __tag409
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag142 BIT;                                    
};
union __tag410
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag143 BIT;                                    
};
union __tag411
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag144 BIT;                                    
};
union __tag412
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag145 BIT;                                    
};
union __tag413
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag146 BIT;                                    
};
union __tag414
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag147 BIT;                                    
};
union __tag415
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag148 BIT;                                    
};
union __tag416
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag149 BIT;                                    
};
union __tag417
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag150 BIT;                                    
};
union __tag418
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag151 BIT;                                    
};
union __tag419
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag152 BIT;                                    
};
union __tag420
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag153 BIT;                                    
};
union __tag421
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag154 BIT;                                    
};
union __tag422
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag155 BIT;                                    
};
union __tag423
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag156 BIT;                                    
};
union __tag424
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag157 BIT;                                    
};
union __tag425
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag158 BIT;                                    
};
union __tag426
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag159 BIT;                                    
};
union __tag427
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag160 BIT;                                    
};
union __tag428
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag161 BIT;                                    
};
union __tag429
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag162 BIT;                                    
};
union __tag430
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag163 BIT;                                    
};
union __tag431
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag164 BIT;                                    
};
union __tag432
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag165 BIT;                                    
};
union __tag433
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag166 BIT;                                    
};
union __tag434
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag167 BIT;                                    
};
union __tag435
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag168 BIT;                                    
};
union __tag436
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag169 BIT;                                    
};
union __tag437
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag170 BIT;                                    
};
union __tag438
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag171 BIT;                                    
};
union __tag439
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag172 BIT;                                    
};
union __tag440
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag173 BIT;                                    
};
union __tag441
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag174 BIT;                                    
};
union __tag442
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag175 BIT;                                    
};
union __tag443
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag176 BIT;                                    
};
union __tag444
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag177 BIT;                                    
};
union __tag445
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag178 BIT;                                    
};
union __tag446
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag179 BIT;                                    
};
union __tag447
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag180 BIT;                                    
};
union __tag448
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag181 BIT;                                    
};
union __tag449
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag182 BIT;                                    
};
union __tag450
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag183 BIT;                                    
};
union __tag451
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag184 BIT;                                    
};
union __tag452
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag185 BIT;                                    
};
union __tag453
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag186 BIT;                                    
};
union __tag454
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag187 BIT;                                    
};
union __tag455
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag188 BIT;                                    
};
union __tag456
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag189 BIT;                                    
};
union __tag457
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag190 BIT;                                    
};
union __tag458
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag191 BIT;                                    
};
union __tag459
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag192 BIT;                                    
};
union __tag460
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag193 BIT;                                    
};
union __tag461
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag194 BIT;                                    
};
union __tag462
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag195 BIT;                                    
};
union __tag463
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag196 BIT;                                    
};
union __tag464
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag197 BIT;                                    
};
union __tag465
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag198 BIT;                                    
};
union __tag466
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag199 BIT;                                    
};
union __tag467
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag200 BIT;                                    
};
union __tag468
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag201 BIT;                                    
};
union __tag469
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag202 BIT;                                    
};
union __tag470
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag203 BIT;                                    
};
union __tag471
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag204 BIT;                                    
};
union __tag472
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag205 BIT;                                    
};
union __tag473
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag206 BIT;                                    
};
union __tag474
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag207 BIT;                                    
};
union __tag475
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag208 BIT;                                    
};
union __tag476
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag209 BIT;                                    
};
union __tag477
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag210 BIT;                                    
};
union __tag478
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag211 BIT;                                    
};
union __tag479
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag212 BIT;                                    
};
union __tag480
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag213 BIT;                                    
};
union __tag481
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag214 BIT;                                    
};
union __tag482
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag215 BIT;                                    
};
union __tag483
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag216 BIT;                                    
};
union __tag484
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag217 BIT;                                    
};
union __tag485
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag218 BIT;                                    
};
union __tag486
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag219 BIT;                                    
};
union __tag487
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag220 BIT;                                    
};
union __tag488
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag221 BIT;                                    
};
union __tag489
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag222 BIT;                                    
};
union __tag490
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag223 BIT;                                    
};
union __tag491
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag224 BIT;                                    
};
union __tag492
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag225 BIT;                                    
};
union __tag493
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag226 BIT;                                    
};
union __tag494
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag227 BIT;                                    
};
union __tag495
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag228 BIT;                                    
};
union __tag496
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag229 BIT;                                    
};
union __tag497
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag230 BIT;                                    
};
union __tag498
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag231 BIT;                                    
};
union __tag499
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag232 BIT;                                    
};
union __tag500
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag233 BIT;                                    
};
union __tag501
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag234 BIT;                                    
};
union __tag502
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag235 BIT;                                    
};
union __tag503
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag236 BIT;                                    
};
union __tag504
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag237 BIT;                                    
};
union __tag505
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag238 BIT;                                    
};
union __tag506
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag239 BIT;                                    
};
union __tag507
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag240 BIT;                                    
};
union __tag508
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag241 BIT;                                    
};
union __tag509
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag242 BIT;                                    
};
union __tag510
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag243 BIT;                                    
};
union __tag511
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag244 BIT;                                    
};
union __tag512
{                                                           
    unsigned short UINT16;                                  
    unsigned char  UINT8[2];                                
    struct __tag245 BIT;                                    
};
union __tag513
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag246 BIT;                                    
};
union __tag514
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag247 BIT;                                    
};
union __tag515
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag248 BIT;                                    
};
union __tag516
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag249 BIT;                                    
};
union __tag517
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag250 BIT;                                    
};
union __tag518
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag251 BIT;                                    
};
union __tag519
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag252 BIT;                                    
};
union __tag520
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag253 BIT;                                    
};
union __tag521
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag254 BIT;                                    
};
union __tag522
{                                                           
    unsigned long  UINT32;                                  
    unsigned short UINT16[2];                               
    unsigned char  UINT8[4];                                
    struct __tag255 BIT;                                    
};

struct __tag523
{                                                           
    unsigned long  CNT;                                     
    unsigned long  PCMD;                                    
    unsigned long  PS;                                      
};
struct __tag524
{                                                           
    unsigned long  ID0;                                     
    unsigned long  ID1;                                     
    unsigned long  ID2;                                     
    unsigned long  ID3;                                     
    union __tag256 IDST;                                    
};
struct __tag525
{                                                           
    unsigned char  FPMON;                                   
    unsigned char  dummy0[15];                              
    unsigned char  FASTAT;                                  
    unsigned char  dummy1[3];                               
    unsigned char  FAEINT;                                  
    unsigned char  dummy2[11];                              
    unsigned short FAREASELC;                               
    unsigned char  dummy3[14];                              
    unsigned long  FSADDR;                                  
    unsigned long  FEADDR;                                  
    unsigned char  dummy4[72];                              
    union __tag256 FSTATR;                                  
    unsigned short FENTRYR;                                 
    unsigned char  dummy5[2];                               
    unsigned short FPROTR;                                  
    unsigned char  dummy6[2];                               
    unsigned short FSUINITR;                                
    unsigned char  dummy7[2];                               
    unsigned char  FLKSTAT;                                 
    unsigned char  dummy8[7];                               
    unsigned char  FRTSTAT;                                 
    unsigned char  dummy9[7];                               
    unsigned short FCMDR;                                   
    unsigned char  dummy10[30];                             
    unsigned short FPESTAT;                                 
    unsigned char  dummy11[14];                             
    unsigned char  FBCCNT;                                  
    unsigned char  dummy12[3];                              
    unsigned char  FBCSTAT;                                 
    unsigned char  dummy13[3];                              
    unsigned long  FPSADDR;                                 
    unsigned char  dummy14[4];                              
    unsigned short FCPSR;                                   
    unsigned char  dummy15[2];                              
    unsigned short FPCKAR_temp;                                  
    unsigned char  dummy16[26];                             
    unsigned short FECCEMON;                                
    unsigned char  dummy17[2];                              
    unsigned short FECCTMD;                                 
    unsigned char  dummy18[2];                              
    unsigned short FDMYECC;                                 
    unsigned char  dummy19[2395902];                        
    unsigned char  BFASELR;                                 
};
struct __tag526
{                                                           
    unsigned long  WDTNMIF;                                 
    unsigned char  dummy20[4];                              
    unsigned long  WDTNMIFC;                                
};
struct __tag527
{                                                           
    unsigned long  FEINTF;                                  
    unsigned long  FEINTFMSK;                               
    unsigned long  FEINTFC;                                 
};
struct __tag528
{                                                           
    unsigned short SELB_INTC1;                              
    unsigned char  dummy21[2];                              
    unsigned short SELB_INTC2;                              
};
struct __tag529
{                                                           
    unsigned short P0;                                      
    unsigned char  dummy22[2];                              
    unsigned short P1;                                      
    unsigned char  dummy23[26];                             
    unsigned short P8;                                      
    unsigned char  dummy24[2];                              
    unsigned short P9;                                      
    unsigned char  dummy25[2];                              
    unsigned short P10;                                     
    unsigned char  dummy26[2];                              
    unsigned short P11;                                     
    unsigned char  dummy27[2];                              
    unsigned short P12;                                     
    unsigned char  dummy28[22];                             
    unsigned short P18;                                     
    unsigned char  dummy29[6];                              
    unsigned short P20;                                     
    unsigned char  dummy30[118];                            
    unsigned short AP0;                                     
    unsigned char  dummy31[2];                              
    unsigned short AP1;                                     
    unsigned char  dummy32[50];                             
    unsigned long  PSR0;                                    
    unsigned long  PSR1;                                    
    unsigned char  dummy33[24];                             
    unsigned long  PSR8;                                    
    unsigned long  PSR9;                                    
    unsigned long  PSR10;                                   
    unsigned long  PSR11;                                   
    unsigned long  PSR12;                                   
    unsigned char  dummy34[20];                             
    unsigned long  PSR18;                                   
    unsigned char  dummy35[4];                              
    unsigned long  PSR20;                                   
    unsigned char  dummy36[116];                            
    unsigned long  APSR0;                                   
    unsigned long  APSR1;                                   
    unsigned char  dummy37[48];                             
    unsigned short PPR0;                                    
    unsigned char  dummy38[2];                              
    unsigned short PPR1;                                    
    unsigned char  dummy39[26];                             
    unsigned short PPR8;                                    
    unsigned char  dummy40[2];                              
    unsigned short PPR9;                                    
    unsigned char  dummy41[2];                              
    unsigned short PPR10;                                   
    unsigned char  dummy42[2];                              
    unsigned short PPR11;                                   
    unsigned char  dummy43[2];                              
    unsigned short PPR12;                                   
    unsigned char  dummy44[22];                             
    unsigned short PPR18;                                   
    unsigned char  dummy45[6];                              
    unsigned short PPR20;                                   
    unsigned char  dummy46[118];                            
    unsigned short APPR0;                                   
    unsigned char  dummy47[2];                              
    unsigned short APPR1;                                   
    unsigned char  dummy48[34];                             
    unsigned short IPPR0;                                   
    unsigned char  dummy49[14];                             
    unsigned short PM0;                                     
    unsigned char  dummy50[2];                              
    unsigned short PM1;                                     
    unsigned char  dummy51[26];                             
    unsigned short PM8;                                     
    unsigned char  dummy52[2];                              
    unsigned short PM9;                                     
    unsigned char  dummy53[2];                              
    unsigned short PM10;                                    
    unsigned char  dummy54[2];                              
    unsigned short PM11;                                    
    unsigned char  dummy55[2];                              
    unsigned short PM12;                                    
    unsigned char  dummy56[22];                             
    unsigned short PM18;                                    
    unsigned char  dummy57[6];                              
    unsigned short PM20;                                    
    unsigned char  dummy58[118];                            
    unsigned short APM0;                                    
    unsigned char  dummy59[2];                              
    unsigned short APM1;                                    
    unsigned char  dummy60[50];                             
    unsigned short PMC0;                                    
    unsigned char  dummy61[2];                              
    unsigned short PMC1;                                    
    unsigned char  dummy62[26];                             
    unsigned short PMC8;                                    
    unsigned char  dummy63[2];                              
    unsigned short PMC9;                                    
    unsigned char  dummy64[2];                              
    unsigned short PMC10;                                   
    unsigned char  dummy65[2];                              
    unsigned short PMC11;                                   
    unsigned char  dummy66[2];                              
    unsigned short PMC12;                                   
    unsigned char  dummy67[22];                             
    unsigned short PMC18;                                   
    unsigned char  dummy68[6];                              
    unsigned short PMC20;                                   
    unsigned char  dummy69[174];                            
    unsigned short PFC0;                                    
    unsigned char  dummy70[2];                              
    unsigned short PFC1;                                    
    unsigned char  dummy71[26];                             
    unsigned short PFC8;                                    
    unsigned char  dummy72[2];                              
    unsigned short PFC9;                                    
    unsigned char  dummy73[2];                              
    unsigned short PFC10;                                   
    unsigned char  dummy74[2];                              
    unsigned short PFC11;                                   
    unsigned char  dummy75[2];                              
    unsigned short PFC12;                                   
    unsigned char  dummy76[22];                             
    unsigned short PFC18;                                   
    unsigned char  dummy77[6];                              
    unsigned short PFC20;                                   
    unsigned char  dummy78[174];                            
    unsigned short PFCE0;                                   
    unsigned char  dummy79[2];                              
    unsigned short PFCE1;                                   
    unsigned char  dummy80[26];                             
    unsigned short PFCE8;                                   
    unsigned char  dummy81[2];                              
    unsigned short PFCE9;                                   
    unsigned char  dummy82[2];                              
    unsigned short PFCE10;                                  
    unsigned char  dummy83[2];                              
    unsigned short PFCE11;                                  
    unsigned char  dummy84[2];                              
    unsigned short PFCE12;                                  
    unsigned char  dummy85[206];                            
    unsigned short PNOT0;                                   
    unsigned char  dummy86[2];                              
    unsigned short PNOT1;                                   
    unsigned char  dummy87[26];                             
    unsigned short PNOT8;                                   
    unsigned char  dummy88[2];                              
    unsigned short PNOT9;                                   
    unsigned char  dummy89[2];                              
    unsigned short PNOT10;                                  
    unsigned char  dummy90[2];                              
    unsigned short PNOT11;                                  
    unsigned char  dummy91[2];                              
    unsigned short PNOT12;                                  
    unsigned char  dummy92[22];                             
    unsigned short PNOT18;                                  
    unsigned char  dummy93[6];                              
    unsigned short PNOT20;                                  
    unsigned char  dummy94[118];                            
    unsigned short APNOT0;                                  
    unsigned char  dummy95[2];                              
    unsigned short APNOT1;                                  
    unsigned char  dummy96[50];                             
    unsigned long  PMSR0;                                   
    unsigned long  PMSR1;                                   
    unsigned char  dummy97[24];                             
    unsigned long  PMSR8;                                   
    unsigned long  PMSR9;                                   
    unsigned long  PMSR10;                                  
    unsigned long  PMSR11;                                  
    unsigned long  PMSR12;                                  
    unsigned char  dummy98[20];                             
    unsigned long  PMSR18;                                  
    unsigned char  dummy99[4];                              
    unsigned long  PMSR20;                                  
    unsigned char  dummy100[116];                           
    unsigned long  APMSR0;                                  
    unsigned long  APMSR1;                                  
    unsigned char  dummy101[48];                            
    unsigned long  PMCSR0;                                  
    unsigned long  PMCSR1;                                  
    unsigned char  dummy102[24];                            
    unsigned long  PMCSR8;                                  
    unsigned long  PMCSR9;                                  
    unsigned long  PMCSR10;                                 
    unsigned long  PMCSR11;                                 
    unsigned long  PMCSR12;                                 
    unsigned char  dummy103[20];                            
    unsigned long  PMCSR18;                                 
    unsigned char  dummy104[4];                             
    unsigned long  PMCSR20;                                 
    unsigned char  dummy105[172];                           
    unsigned short PFCAE0;                                  
    unsigned char  dummy106[2];                             
    unsigned short PFCAE1;                                  
    unsigned char  dummy107[34];                            
    unsigned short PFCAE10;                                 
    unsigned char  dummy108[2];                             
    unsigned short PFCAE11;                                 
    unsigned char  dummy109[2];                             
    unsigned short PFCAE12;                                 
    unsigned char  dummy110[13774];                         
    unsigned short PIBC0;                                   
    unsigned char  dummy111[2];                             
    unsigned short PIBC1;                                   
    unsigned char  dummy112[26];                            
    unsigned short PIBC8;                                   
    unsigned char  dummy113[2];                             
    unsigned short PIBC9;                                   
    unsigned char  dummy114[2];                             
    unsigned short PIBC10;                                  
    unsigned char  dummy115[2];                             
    unsigned short PIBC11;                                  
    unsigned char  dummy116[2];                             
    unsigned short PIBC12;                                  
    unsigned char  dummy117[22];                            
    unsigned short PIBC18;                                  
    unsigned char  dummy118[6];                             
    unsigned short PIBC20;                                  
    unsigned char  dummy119[118];                           
    unsigned short APIBC0;                                  
    unsigned char  dummy120[2];                             
    unsigned short APIBC1;                                  
    unsigned char  dummy121[34];                            
    unsigned short IPIBC0;                                  
    unsigned char  dummy122[14];                            
    unsigned short PBDC0;                                   
    unsigned char  dummy123[2];                             
    unsigned short PBDC1;                                   
    unsigned char  dummy124[26];                            
    unsigned short PBDC8;                                   
    unsigned char  dummy125[2];                             
    unsigned short PBDC9;                                   
    unsigned char  dummy126[2];                             
    unsigned short PBDC10;                                  
    unsigned char  dummy127[2];                             
    unsigned short PBDC11;                                  
    unsigned char  dummy128[2];                             
    unsigned short PBDC12;                                  
    unsigned char  dummy129[22];                            
    unsigned short PBDC18;                                  
    unsigned char  dummy130[6];                             
    unsigned short PBDC20;                                  
    unsigned char  dummy131[118];                           
    unsigned short APBDC0;                                  
    unsigned char  dummy132[2];                             
    unsigned short APBDC1;                                  
    unsigned char  dummy133[50];                            
    unsigned short PIPC0;                                   
    unsigned char  dummy134[38];                            
    unsigned short PIPC10;                                  
    unsigned char  dummy135[2];                             
    unsigned short PIPC11;                                  
    unsigned char  dummy136[210];                           
    unsigned short PU0;                                     
    unsigned char  dummy137[2];                             
    unsigned short PU1;                                     
    unsigned char  dummy138[26];                            
    unsigned short PU8;                                     
    unsigned char  dummy139[2];                             
    unsigned short PU9;                                     
    unsigned char  dummy140[2];                             
    unsigned short PU10;                                    
    unsigned char  dummy141[2];                             
    unsigned short PU11;                                    
    unsigned char  dummy142[2];                             
    unsigned short PU12;                                    
    unsigned char  dummy143[22];                            
    unsigned short PU18;                                    
    unsigned char  dummy144[6];                             
    unsigned short PU20;                                    
    unsigned char  dummy145[174];                           
    unsigned short PD0;                                     
    unsigned char  dummy146[2];                             
    unsigned short PD1;                                     
    unsigned char  dummy147[26];                            
    unsigned short PD8;                                     
    unsigned char  dummy148[2];                             
    unsigned short PD9;                                     
    unsigned char  dummy149[2];                             
    unsigned short PD10;                                    
    unsigned char  dummy150[2];                             
    unsigned short PD11;                                    
    unsigned char  dummy151[2];                             
    unsigned short PD12;                                    
    unsigned char  dummy152[22];                            
    unsigned short PD18;                                    
    unsigned char  dummy153[6];                             
    unsigned short PD20;                                    
    unsigned char  dummy154[174];                           
    unsigned long  PODC0;                                   
    unsigned long  PODC1;                                   
    unsigned char  dummy155[24];                            
    unsigned long  PODC8;                                   
    unsigned long  PODC9;                                   
    unsigned long  PODC10;                                  
    unsigned long  PODC11;                                  
    unsigned long  PODC12;                                  
    unsigned char  dummy156[20];                            
    unsigned long  PODC18;                                  
    unsigned char  dummy157[4];                             
    unsigned long  PODC20;                                  
    unsigned char  dummy158[172];                           
    unsigned long  PDSC0;                                   
    unsigned long  PDSC1;                                   
    unsigned char  dummy159[32];                            
    unsigned long  PDSC10;                                  
    unsigned long  PDSC11;                                  
    unsigned long  PDSC12;                                  
    unsigned char  dummy160[20];                            
    unsigned long  PDSC18;                                  
    unsigned char  dummy161[4];                             
    unsigned long  PDSC20;                                  
    unsigned char  dummy162[172];                           
    unsigned short PIS0;                                    
    unsigned char  dummy163[2];                             
    unsigned short PIS1;                                    
    unsigned char  dummy164[26];                            
    unsigned short PIS8;                                    
    unsigned char  dummy165[2];                             
    unsigned short PIS9;                                    
    unsigned char  dummy166[2];                             
    unsigned short PIS10;                                   
    unsigned char  dummy167[2];                             
    unsigned short PIS11;                                   
    unsigned char  dummy168[2];                             
    unsigned short PIS12;                                   
    unsigned char  dummy169[22];                            
    unsigned short PIS18;                                   
    unsigned char  dummy170[6];                             
    unsigned short PIS20;                                   
    unsigned char  dummy171[942];                           
    unsigned long  PPROTS0;                                 
    unsigned long  PPROTS1;                                 
    unsigned char  dummy172[24];                            
    unsigned long  PPROTS8;                                 
    unsigned long  PPROTS9;                                 
    unsigned long  PPROTS10;                                
    unsigned long  PPROTS11;                                
    unsigned long  PPROTS12;                                
    unsigned char  dummy173[20];                            
    unsigned long  PPROTS18;                                
    unsigned char  dummy174[4];                             
    unsigned long  PPROTS20;                                
    unsigned char  dummy175[172];                           
    unsigned long  PPCMD0;                                  
    unsigned long  PPCMD1;                                  
    unsigned char  dummy176[24];                            
    unsigned long  PPCMD8;                                  
    unsigned long  PPCMD9;                                  
    unsigned long  PPCMD10;                                 
    unsigned long  PPCMD11;                                 
    unsigned long  PPCMD12;                                 
    unsigned char  dummy177[20];                            
    unsigned long  PPCMD18;                                 
    unsigned char  dummy178[4];                             
    unsigned long  PPCMD20;                                 
};
struct __tag530
{                                                           
    unsigned char  JP0;                                     
    unsigned char  dummy179[15];                            
    unsigned long  JPSR0;                                   
    unsigned char  dummy180[12];                            
    unsigned char  JPPR0;                                   
    unsigned char  dummy181[15];                            
    unsigned char  JPM0;                                    
    unsigned char  dummy182[15];                            
    unsigned char  JPMC0;                                   
    unsigned char  dummy183[15];                            
    unsigned char  JPFC0;                                   
    unsigned char  dummy184[15];                            
    unsigned char  JPFCE0;                                  
    unsigned char  dummy185[15];                            
    unsigned char  JPNOT0;                                  
    unsigned char  dummy186[15];                            
    unsigned long  JPMSR0;                                  
    unsigned char  dummy187[12];                            
    unsigned long  JPMCSR0;                                 
    unsigned char  dummy188[876];                           
    unsigned char  JPIBC0;                                  
    unsigned char  dummy189[15];                            
    unsigned char  JPBDC0;                                  
    unsigned char  dummy190[31];                            
    unsigned char  JPU0;                                    
    unsigned char  dummy191[15];                            
    unsigned char  JPD0;                                    
    unsigned char  dummy192[15];                            
    unsigned long  JPODC0;                                  
    unsigned char  dummy193[12];                            
    unsigned long  JPDSC0;                                  
    unsigned char  dummy194[12];                            
    unsigned char  JPIS0;                                   
    unsigned char  dummy195[47];                            
    unsigned char  JPISA0;                                  
    unsigned char  dummy196[15];                            
    unsigned long  JPPROTS0;                                
    unsigned char  dummy197[12];                            
    unsigned long  JPPCMD0;                                 
};
struct __tag531
{                                                           
    unsigned char  ATAUD0ICTL;                              
    unsigned char  dummy198[3];                             
    unsigned short ATAUD0IEN;                               
    unsigned char  dummy199[2];                             
    union __tag257 ATAUD0IENH;                              
    unsigned char  dummy200[3];                             
    union __tag258 ATAUD0IENL;                              
    unsigned char  dummy201[19];                            
    unsigned char  ATAUB0ICTL;                              
    unsigned char  dummy202[3];                             
    unsigned short ATAUB0IEN;                               
    unsigned char  dummy203[2];                             
    union __tag259 ATAUB0IENH;                              
    unsigned char  dummy204[3];                             
    union __tag260 ATAUB0IENL;                              
    unsigned char  dummy205[51];                            
    unsigned char  AENCA0ICTL;                              
    unsigned char  dummy206[3];                             
    unsigned short AENCA0IEN;                               
    unsigned char  dummy207[6];                             
    union __tag261 AENCA0IENL;                              
    unsigned char  dummy208[51];                            
    unsigned char  AADCTL0CTL;                              
    unsigned char  dummy209[3];                             
    unsigned short AADCTL0EN;                               
    unsigned char  dummy210[6];                             
    union __tag262 AADCTL0ENL;                              
    unsigned char  dummy211[19];                            
    unsigned char  AADCTL1CTL;                              
    unsigned char  dummy212[3];                             
    unsigned short AADCTL1EN;                               
    unsigned char  dummy213[6];                             
    union __tag263 AADCTL1ENL;                              
};
struct __tag532
{                                                           
    unsigned char  CTL0_NMI;                                
    unsigned char  dummy214[31];                            
    unsigned char  CTL0_INTPL;                              
    unsigned char  dummy215[3];                             
    unsigned char  CTL1_INTPL;                              
    unsigned char  dummy216[3];                             
    unsigned char  CTL2_INTPL;                              
    unsigned char  dummy217[3];                             
    unsigned char  CTL3_INTPL;                              
    unsigned char  dummy218[3];                             
    unsigned char  CTL4_INTPL;                              
    unsigned char  dummy219[3];                             
    unsigned char  CTL5_INTPL;                              
    unsigned char  dummy220[3];                             
    unsigned char  CTL6_INTPL;                              
    unsigned char  dummy221[3];                             
    unsigned char  CTL7_INTPL;                              
    unsigned char  dummy222[3];                             
    unsigned char  CTL0_INTPH;                              
    unsigned char  dummy223[3];                             
    unsigned char  CTL1_INTPH;                              
    unsigned char  dummy224[3];                             
    unsigned char  CTL2_INTPH;                              
    unsigned char  dummy225[3];                             
    unsigned char  CTL3_INTPH;                              
    unsigned char  dummy226[3];                             
    unsigned char  CTL4_INTPH;                              
    unsigned char  dummy227[3];                             
    unsigned char  CTL5_INTPH;                              
    unsigned char  dummy228[3];                             
    unsigned char  CTL6_INTPH;                              
    unsigned char  dummy229[3];                             
    unsigned char  CTL7_INTPH;                              
    unsigned char  dummy230[3];                             
    unsigned char  CTL0_ADC0;                               
    unsigned char  dummy231[3];                             
    unsigned char  CTL1_ADC0;                               
    unsigned char  dummy232[3];                             
    unsigned char  CTL2_ADC0;                               
    unsigned char  dummy233[23];                            
    unsigned char  CTL0_ADC1;                               
    unsigned char  dummy234[3];                             
    unsigned char  CTL1_ADC1;                               
    unsigned char  dummy235[3];                             
    unsigned char  CTL2_ADC1;                               
};
struct __tag533
{                                                           
    union __tag256 FSGD00PROT0;                             
    union __tag256 FSGD00PROT1;                             
    union __tag256 FSGD00PROT2;                             
    union __tag256 FSGD00PROT3;                             
    union __tag256 FSGD00PROT4;                             
    union __tag256 FSGD00PROT5;                             
    union __tag256 FSGD00PROT6;                             
    union __tag256 FSGD00PROT7;                             
    union __tag256 FSGD00PROT8;                             
    union __tag256 FSGD00PROT9;                             
    union __tag256 FSGD00PROT10;                            
    union __tag256 FSGD00PROT11;                            
    union __tag256 FSGD00PROT12;                            
    union __tag256 FSGD00PROT13;                            
    unsigned char  dummy236[8];                             
    union __tag256 ERRSLV00CTL;                             
    union __tag256 ERRSLV00STAT;                            
    unsigned long  ERRSLV00ADDR;                            
    union __tag264 ERRSLV00TYPE;                            
};
struct __tag534
{                                                           
    union __tag256 FSGD01PROT0;                             
    union __tag256 FSGD01PROT1;                             
    union __tag256 FSGD01PROT2;                             
    union __tag256 FSGD01PROT3;                             
    union __tag256 FSGD01PROT4;                             
    union __tag256 FSGD01PROT5;                             
    union __tag256 FSGD01PROT6;                             
    union __tag256 FSGD01PROT7;                             
    union __tag256 FSGD01PROT8;                             
    union __tag256 FSGD01PROT9;                             
    unsigned char  dummy237[8];                             
    union __tag256 FSGD01PROT12;                            
    union __tag256 FSGD01PROT13;                            
    union __tag256 FSGD01PROT14;                            
    unsigned char  dummy238[4];                             
    union __tag256 ERRSLV01CTL;                             
    union __tag256 ERRSLV01STAT;                            
    unsigned long  ERRSLV01ADDR;                            
    union __tag264 ERRSLV01TYPE;                            
};
struct __tag535
{                                                           
    union __tag256 FSGD07PROT0;                             
    union __tag256 FSGD07PROT1;                             
    union __tag256 FSGD07PROT2;                             
    union __tag256 FSGD07PROT3;                             
    union __tag256 FSGD07PROT4;                             
    union __tag256 FSGD07PROT5;                             
    union __tag256 FSGD07PROT6;                             
    union __tag256 FSGD07PROT7;                             
    unsigned char  dummy239[32];                            
    union __tag256 ERRSLV07CTL;                             
    union __tag256 ERRSLV07STAT;                            
    unsigned long  ERRSLV07ADDR;                            
    union __tag264 ERRSLV07TYPE;                            
};
struct __tag536
{                                                           
    union __tag256 FSGD08PROT0;                             
    union __tag256 FSGD08PROT1;                             
    union __tag256 FSGD08PROT2;                             
    union __tag256 FSGD08PROT3;                             
    union __tag256 FSGD08PROT4;                             
    union __tag256 FSGD08PROT5;                             
    unsigned char  dummy240[40];                            
    union __tag256 ERRSLV08CTL;                             
    union __tag256 ERRSLV08STAT;                            
    unsigned long  ERRSLV08ADDR;                            
    union __tag264 ERRSLV08TYPE;                            
};
struct __tag537
{                                                           
    union __tag256 FSGDC0PROT0;                             
    union __tag256 FSGDC0PROT1;                             
    unsigned char  dummy241[2040];                          
    union __tag256 ERRSLVC0CTL;                             
    union __tag256 ERRSLVC0STAT;                            
    unsigned long  ERRSLVC0ADDR;                            
    union __tag264 ERRSLVC0TYPE;                            
};
struct __tag538
{                                                           
    union __tag256 FSGDC1PROT0;                             
    union __tag256 FSGDC1PROT1;                             
    union __tag256 FSGDC1PROT2;                             
    union __tag256 FSGDC1PROT3;                             
    union __tag256 FSGDC1PROT4;                             
    union __tag256 FSGDC1PROT5;                             
    unsigned char  dummy242[1992];                          
    union __tag256 ERRSLVC1CTL;                             
    union __tag256 ERRSLVC1STAT;                            
    unsigned long  ERRSLVC1ADDR;                            
    union __tag264 ERRSLVC1TYPE;                            
};
struct __tag539
{                                                           
    unsigned char  EEPRDCYCL;                               
};
struct __tag540
{                                                           
    union __tag256 FBUFCCTL;                                
};
struct __tag541
{                                                           
    union __tag264 CFECCCTL_VCI;                            
    union __tag256 CFERRINT_VCI;                            
    union __tag256 CFSTCLR_VCI;                             
    union __tag256 CFOVFSTR_VCI;                            
    union __tag256 CF1STERSTR_VCI;                          
    unsigned char  dummy243[60];                            
    union __tag256 CF1STEADR0_VCI;                          
    unsigned char  dummy244[252];                           
    union __tag264 CFSTSTCTL_VCI;                           
};
struct __tag542
{                                                           
    union __tag264 CFECCCTL_PE1;                            
    union __tag256 CFERRINT_PE1;                            
    union __tag256 CFSTCLR_PE1;                             
    union __tag256 CFOVFSTR_PE1;                            
    union __tag256 CF1STERSTR_PE1;                          
    unsigned char  dummy245[60];                            
    union __tag256 CF1STEADR0_PE1;                          
    unsigned char  dummy246[252];                           
    union __tag264 CFSTSTCTL_PE1;                           
};
struct __tag543
{                                                           
    unsigned short CTL;                                     
    unsigned char  dummy247[2];                             
    unsigned char  DFERSTR;                                 
    unsigned char  dummy248[3];                             
    unsigned char  DFERSTC;                                 
    unsigned char  dummy249[3];                             
    unsigned char  DFOVFSTR;                                
    unsigned char  dummy250[3];                             
    unsigned char  DFOVFSTC;                                
    unsigned char  dummy251[3];                             
    unsigned char  DFERRINT;                                
    unsigned char  dummy252[3];                             
    unsigned long  DFEADR;                                  
    unsigned short DFTSTCTL;                                
};
struct __tag544
{                                                           
    union __tag264 CTL_PE1;                                 
    unsigned long  LRTDATBF0_PE1;                           
};
struct __tag545
{                                                           
    union __tag264 CTL_PE1;                                 
    union __tag256 LRERRINT_PE1;                            
    union __tag256 LRSTCLR_PE1;                             
    union __tag256 LROVFSTR_PE1;                            
    union __tag256 LR1STERSTR_PE1;                          
    unsigned char  dummy253[60];                            
    union __tag256 LR1STEADR0_PE1;                          
};
struct __tag546
{                                                           
    unsigned short CTL;                                     
    unsigned char  dummy254[2];                             
    unsigned short TMC;                                     
    unsigned char  dummy255[2];                             
    union __tag265 TRC;                                     
    unsigned long  TED;                                     
    unsigned long  AD0;                                     
};
struct __tag547
{                                                           
    unsigned short ECCRCAN0CTL_PHY1;                        
    unsigned char  dummy256[2];                             
    unsigned short ECCRCAN0TMC_PHY1;                        
    unsigned char  dummy257[2];                             
    union __tag266 ECCRCAN0TRC_PHY1;                        
    unsigned long  ECCRCAN0TED_PHY1;                        
    unsigned long  ECCRCAN0AD0_PHY1;                        
};
struct __tag548
{                                                           
    unsigned short ECCRCANFD0CTL_PHY2;                      
    unsigned char  dummy258[2];                             
    unsigned short ECCRCANFD0TMC_PHY2;                      
    unsigned char  dummy259[2];                             
    union __tag267 ECCRCANFD0TRC_PHY2;                      
    unsigned long  ECCRCANFD0TED_PHY2;                      
    unsigned long  ECCRCANFD0AD0_PHY2;                      
};
struct __tag549
{                                                           
    unsigned short SELB_READTEST;                           
};
struct __tag550
{                                                           
    union __tag256 CR1;                                     
    union __tag256 CR2;                                     
    union __tag256 MR1;                                     
    union __tag256 MR2;                                     
    union __tag256 MR3;                                     
    union __tag256 FER;                                     
    union __tag256 SER;                                     
    union __tag256 IER;                                     
    union __tag256 SR1;                                     
    union __tag256 SR2;                                     
    union __tag256 SAR0;                                    
    union __tag256 SAR1;                                    
    union __tag256 SAR2;                                    
    union __tag256 BRL;                                     
    union __tag256 BRH;                                     
    union __tag256 DRT;                                     
    union __tag256 DRR;                                     
};
struct __tag551
{                                                           
    unsigned long  PRDNAME1;                                
    unsigned long  PRDNAME2;                                
    unsigned long  PRDNAME3;                                
    unsigned char  dummy260[4];                             
    unsigned long  CHIPID1LL;                               
    unsigned long  CHIPID1LH;                               
    unsigned long  CHIPID1HL;                               
    unsigned long  CHIPID1HH;                               
    unsigned long  CHIPID2LL;                               
    unsigned long  CHIPID2LH;                               
    unsigned long  CHIPID2HL;                               
    unsigned long  CHIPID2HH;                               
};
struct __tag552
{                                                           
    unsigned char  dummy261[1];                             
    unsigned char  GLWBR;                                   
    unsigned char  GLBRP0;                                  
    unsigned char  GLBRP1;                                  
    unsigned char  GLSTC;                                   
};
struct __tag553
{                                                           
    unsigned char  L0MD;                                    
    unsigned char  L0BFC;                                   
    unsigned char  L0SC;                                    
    unsigned char  L0WUP;                                   
    unsigned char  L0IE;                                    
    unsigned char  L0EDE;                                   
    unsigned char  L0CUC;                                   
    unsigned char  dummy262[1];                             
    unsigned char  L0TRC;                                   
    unsigned char  L0MST;                                   
    unsigned char  L0ST;                                    
    unsigned char  L0EST;                                   
    unsigned char  L0DFC;                                   
    unsigned char  L0IDB;                                   
    unsigned char  L0CBR;                                   
    unsigned char  dummy263[1];                             
    unsigned char  L0DBR1;                                  
    unsigned char  L0DBR2;                                  
    unsigned char  L0DBR3;                                  
    unsigned char  L0DBR4;                                  
    unsigned char  L0DBR5;                                  
    unsigned char  L0DBR6;                                  
    unsigned char  L0DBR7;                                  
    unsigned char  L0DBR8;                                  
};
struct __tag554
{                                                           
    unsigned char  L1MD;                                    
    unsigned char  L1BFC;                                   
    unsigned char  L1SC;                                    
    unsigned char  L1WUP;                                   
    unsigned char  L1IE;                                    
    unsigned char  L1EDE;                                   
    unsigned char  L1CUC;                                   
    unsigned char  dummy264[1];                             
    unsigned char  L1TRC;                                   
    unsigned char  L1MST;                                   
    unsigned char  L1ST;                                    
    unsigned char  L1EST;                                   
    unsigned char  L1DFC;                                   
    unsigned char  L1IDB;                                   
    unsigned char  L1CBR;                                   
    unsigned char  dummy265[1];                             
    unsigned char  L1DBR1;                                  
    unsigned char  L1DBR2;                                  
    unsigned char  L1DBR3;                                  
    unsigned char  L1DBR4;                                  
    unsigned char  L1DBR5;                                  
    unsigned char  L1DBR6;                                  
    unsigned char  L1DBR7;                                  
    unsigned char  L1DBR8;                                  
};
struct __tag555
{                                                           
    unsigned char  L2MD;                                    
    unsigned char  L2BFC;                                   
    unsigned char  L2SC;                                    
    unsigned char  L2WUP;                                   
    unsigned char  L2IE;                                    
    unsigned char  L2EDE;                                   
    unsigned char  L2CUC;                                   
    unsigned char  dummy266[1];                             
    unsigned char  L2TRC;                                   
    unsigned char  L2MST;                                   
    unsigned char  L2ST;                                    
    unsigned char  L2EST;                                   
    unsigned char  L2DFC;                                   
    unsigned char  L2IDB;                                   
    unsigned char  L2CBR;                                   
    unsigned char  dummy267[1];                             
    unsigned char  L2DBR1;                                  
    unsigned char  L2DBR2;                                  
    unsigned char  L2DBR3;                                  
    unsigned char  L2DBR4;                                  
    unsigned char  L2DBR5;                                  
    unsigned char  L2DBR6;                                  
    unsigned char  L2DBR7;                                  
    unsigned char  L2DBR8;                                  
};
struct __tag556
{                                                           
    unsigned char  L3MD;                                    
    unsigned char  L3BFC;                                   
    unsigned char  L3SC;                                    
    unsigned char  L3WUP;                                   
    unsigned char  L3IE;                                    
    unsigned char  L3EDE;                                   
    unsigned char  L3CUC;                                   
    unsigned char  dummy268[1];                             
    unsigned char  L3TRC;                                   
    unsigned char  L3MST;                                   
    unsigned char  L3ST;                                    
    unsigned char  L3EST;                                   
    unsigned char  L3DFC;                                   
    unsigned char  L3IDB;                                   
    unsigned char  L3CBR;                                   
    unsigned char  dummy269[1];                             
    unsigned char  L3DBR1;                                  
    unsigned char  L3DBR2;                                  
    unsigned char  L3DBR3;                                  
    unsigned char  L3DBR4;                                  
    unsigned char  L3DBR5;                                  
    unsigned char  L3DBR6;                                  
    unsigned char  L3DBR7;                                  
    unsigned char  L3DBR8;                                  
};
struct __tag557
{                                                           
    unsigned char  dummy270[1];                             
    unsigned char  LWBR;                                    
    union __tag268 LBRP01;                                  
    unsigned char  LSTC;                                    
    unsigned char  dummy271[3];                             
    unsigned char  LMD;                                     
    unsigned char  LBFC;                                    
    unsigned char  LSC;                                     
    unsigned char  LWUP;                                    
    unsigned char  LIE;                                     
    unsigned char  LEDE;                                    
    unsigned char  LCUC;                                    
    unsigned char  dummy272[1];                             
    unsigned char  LTRC;                                    
    unsigned char  LMST;                                    
    unsigned char  LST;                                     
    unsigned char  LEST;                                    
    unsigned char  LDFC;                                    
    unsigned char  LIDB;                                    
    unsigned char  LCBR;                                    
    unsigned char  LUDB0;                                   
    unsigned char  LDBR1;                                   
    unsigned char  LDBR2;                                   
    unsigned char  LDBR3;                                   
    unsigned char  LDBR4;                                   
    unsigned char  LDBR5;                                   
    unsigned char  LDBR6;                                   
    unsigned char  LDBR7;                                   
    unsigned char  LDBR8;                                   
    unsigned char  LUOER;                                   
    unsigned char  LUOR1;                                   
    unsigned char  dummy273[2];                             
    union __tag269 LUTDR;                                   
    union __tag269 LURDR;                                   
    union __tag269 LUWTDR;                                  
};
struct __tag558
{                                                           
    union __tag256 C0CFG;                                   
    union __tag256 C0CTR;                                   
    union __tag256 C0STS;                                   
    union __tag256 C0ERFL;                                  
    union __tag256 C1CFG;                                   
    union __tag256 C1CTR;                                   
    union __tag256 C1STS;                                   
    union __tag256 C1ERFL;                                  
    union __tag256 C2CFG;                                   
    union __tag256 C2CTR;                                   
    union __tag256 C2STS;                                   
    union __tag256 C2ERFL;                                  
    union __tag256 C3CFG;                                   
    union __tag256 C3CTR;                                   
    union __tag256 C3STS;                                   
    union __tag256 C3ERFL;                                  
    union __tag256 C4CFG;                                   
    union __tag256 C4CTR;                                   
    union __tag256 C4STS;                                   
    union __tag256 C4ERFL;                                  
    union __tag256 C5CFG;                                   
    union __tag256 C5CTR;                                   
    union __tag256 C5STS;                                   
    union __tag256 C5ERFL;                                  
    unsigned char  dummy274[36];                            
    union __tag256 GCFG;                                    
    union __tag256 GCTR;                                    
    union __tag256 GSTS;                                    
    union __tag256 GERFL;                                   
    union __tag264 GTSC;                                    
    union __tag256 GAFLECTR;                                
    union __tag256 GAFLCFG0;                                
    union __tag256 GAFLCFG1;                                
    union __tag256 RMNB;                                    
    union __tag256 RMND0;                                   
    union __tag256 RMND1;                                   
    union __tag256 RMND2;                                   
    unsigned char  dummy275[4];                             
    union __tag256 RFCC0;                                   
    union __tag256 RFCC1;                                   
    union __tag256 RFCC2;                                   
    union __tag256 RFCC3;                                   
    union __tag256 RFCC4;                                   
    union __tag256 RFCC5;                                   
    union __tag256 RFCC6;                                   
    union __tag256 RFCC7;                                   
    union __tag256 RFSTS0;                                  
    union __tag256 RFSTS1;                                  
    union __tag256 RFSTS2;                                  
    union __tag256 RFSTS3;                                  
    union __tag256 RFSTS4;                                  
    union __tag256 RFSTS5;                                  
    union __tag256 RFSTS6;                                  
    union __tag256 RFSTS7;                                  
    union __tag256 RFPCTR0;                                 
    union __tag256 RFPCTR1;                                 
    union __tag256 RFPCTR2;                                 
    union __tag256 RFPCTR3;                                 
    union __tag256 RFPCTR4;                                 
    union __tag256 RFPCTR5;                                 
    union __tag256 RFPCTR6;                                 
    union __tag256 RFPCTR7;                                 
    union __tag256 CFCC0;                                   
    union __tag256 CFCC1;                                   
    union __tag256 CFCC2;                                   
    union __tag256 CFCC3;                                   
    union __tag256 CFCC4;                                   
    union __tag256 CFCC5;                                   
    union __tag256 CFCC6;                                   
    union __tag256 CFCC7;                                   
    union __tag256 CFCC8;                                   
    union __tag256 CFCC9;                                   
    union __tag256 CFCC10;                                  
    union __tag256 CFCC11;                                  
    union __tag256 CFCC12;                                  
    union __tag256 CFCC13;                                  
    union __tag256 CFCC14;                                  
    union __tag256 CFCC15;                                  
    union __tag256 CFCC16;                                  
    union __tag256 CFCC17;                                  
    unsigned char  dummy276[24];                            
    union __tag256 CFSTS0;                                  
    union __tag256 CFSTS1;                                  
    union __tag256 CFSTS2;                                  
    union __tag256 CFSTS3;                                  
    union __tag256 CFSTS4;                                  
    union __tag256 CFSTS5;                                  
    union __tag256 CFSTS6;                                  
    union __tag256 CFSTS7;                                  
    union __tag256 CFSTS8;                                  
    union __tag256 CFSTS9;                                  
    union __tag256 CFSTS10;                                 
    union __tag256 CFSTS11;                                 
    union __tag256 CFSTS12;                                 
    union __tag256 CFSTS13;                                 
    union __tag256 CFSTS14;                                 
    union __tag256 CFSTS15;                                 
    union __tag256 CFSTS16;                                 
    union __tag256 CFSTS17;                                 
    unsigned char  dummy277[24];                            
    union __tag256 CFPCTR0;                                 
    union __tag256 CFPCTR1;                                 
    union __tag256 CFPCTR2;                                 
    union __tag256 CFPCTR3;                                 
    union __tag256 CFPCTR4;                                 
    union __tag256 CFPCTR5;                                 
    union __tag256 CFPCTR6;                                 
    union __tag256 CFPCTR7;                                 
    union __tag256 CFPCTR8;                                 
    union __tag256 CFPCTR9;                                 
    union __tag256 CFPCTR10;                                
    union __tag256 CFPCTR11;                                
    union __tag256 CFPCTR12;                                
    union __tag256 CFPCTR13;                                
    union __tag256 CFPCTR14;                                
    union __tag256 CFPCTR15;                                
    union __tag256 CFPCTR16;                                
    union __tag256 CFPCTR17;                                
    unsigned char  dummy278[24];                            
    union __tag256 FESTS;                                   
    union __tag256 FFSTS;                                   
    union __tag256 FMSTS;                                   
    union __tag256 RFISTS;                                  
    union __tag256 CFRISTS;                                 
    union __tag256 CFTISTS;                                 
    unsigned char  TMC0;                                    
    unsigned char  TMC1;                                    
    unsigned char  TMC2;                                    
    unsigned char  TMC3;                                    
    unsigned char  TMC4;                                    
    unsigned char  TMC5;                                    
    unsigned char  TMC6;                                    
    unsigned char  TMC7;                                    
    unsigned char  TMC8;                                    
    unsigned char  TMC9;                                    
    unsigned char  TMC10;                                   
    unsigned char  TMC11;                                   
    unsigned char  TMC12;                                   
    unsigned char  TMC13;                                   
    unsigned char  TMC14;                                   
    unsigned char  TMC15;                                   
    unsigned char  TMC16;                                   
    unsigned char  TMC17;                                   
    unsigned char  TMC18;                                   
    unsigned char  TMC19;                                   
    unsigned char  TMC20;                                   
    unsigned char  TMC21;                                   
    unsigned char  TMC22;                                   
    unsigned char  TMC23;                                   
    unsigned char  TMC24;                                   
    unsigned char  TMC25;                                   
    unsigned char  TMC26;                                   
    unsigned char  TMC27;                                   
    unsigned char  TMC28;                                   
    unsigned char  TMC29;                                   
    unsigned char  TMC30;                                   
    unsigned char  TMC31;                                   
    unsigned char  TMC32;                                   
    unsigned char  TMC33;                                   
    unsigned char  TMC34;                                   
    unsigned char  TMC35;                                   
    unsigned char  TMC36;                                   
    unsigned char  TMC37;                                   
    unsigned char  TMC38;                                   
    unsigned char  TMC39;                                   
    unsigned char  TMC40;                                   
    unsigned char  TMC41;                                   
    unsigned char  TMC42;                                   
    unsigned char  TMC43;                                   
    unsigned char  TMC44;                                   
    unsigned char  TMC45;                                   
    unsigned char  TMC46;                                   
    unsigned char  TMC47;                                   
    unsigned char  TMC48;                                   
    unsigned char  TMC49;                                   
    unsigned char  TMC50;                                   
    unsigned char  TMC51;                                   
    unsigned char  TMC52;                                   
    unsigned char  TMC53;                                   
    unsigned char  TMC54;                                   
    unsigned char  TMC55;                                   
    unsigned char  TMC56;                                   
    unsigned char  TMC57;                                   
    unsigned char  TMC58;                                   
    unsigned char  TMC59;                                   
    unsigned char  TMC60;                                   
    unsigned char  TMC61;                                   
    unsigned char  TMC62;                                   
    unsigned char  TMC63;                                   
    unsigned char  TMC64;                                   
    unsigned char  TMC65;                                   
    unsigned char  TMC66;                                   
    unsigned char  TMC67;                                   
    unsigned char  TMC68;                                   
    unsigned char  TMC69;                                   
    unsigned char  TMC70;                                   
    unsigned char  TMC71;                                   
    unsigned char  TMC72;                                   
    unsigned char  TMC73;                                   
    unsigned char  TMC74;                                   
    unsigned char  TMC75;                                   
    unsigned char  TMC76;                                   
    unsigned char  TMC77;                                   
    unsigned char  TMC78;                                   
    unsigned char  TMC79;                                   
    unsigned char  TMC80;                                   
    unsigned char  TMC81;                                   
    unsigned char  TMC82;                                   
    unsigned char  TMC83;                                   
    unsigned char  TMC84;                                   
    unsigned char  TMC85;                                   
    unsigned char  TMC86;                                   
    unsigned char  TMC87;                                   
    unsigned char  TMC88;                                   
    unsigned char  TMC89;                                   
    unsigned char  TMC90;                                   
    unsigned char  TMC91;                                   
    unsigned char  TMC92;                                   
    unsigned char  TMC93;                                   
    unsigned char  TMC94;                                   
    unsigned char  TMC95;                                   
    unsigned char  dummy279[32];                            
    unsigned char  TMSTS0;                                  
    unsigned char  TMSTS1;                                  
    unsigned char  TMSTS2;                                  
    unsigned char  TMSTS3;                                  
    unsigned char  TMSTS4;                                  
    unsigned char  TMSTS5;                                  
    unsigned char  TMSTS6;                                  
    unsigned char  TMSTS7;                                  
    unsigned char  TMSTS8;                                  
    unsigned char  TMSTS9;                                  
    unsigned char  TMSTS10;                                 
    unsigned char  TMSTS11;                                 
    unsigned char  TMSTS12;                                 
    unsigned char  TMSTS13;                                 
    unsigned char  TMSTS14;                                 
    unsigned char  TMSTS15;                                 
    unsigned char  TMSTS16;                                 
    unsigned char  TMSTS17;                                 
    unsigned char  TMSTS18;                                 
    unsigned char  TMSTS19;                                 
    unsigned char  TMSTS20;                                 
    unsigned char  TMSTS21;                                 
    unsigned char  TMSTS22;                                 
    unsigned char  TMSTS23;                                 
    unsigned char  TMSTS24;                                 
    unsigned char  TMSTS25;                                 
    unsigned char  TMSTS26;                                 
    unsigned char  TMSTS27;                                 
    unsigned char  TMSTS28;                                 
    unsigned char  TMSTS29;                                 
    unsigned char  TMSTS30;                                 
    unsigned char  TMSTS31;                                 
    unsigned char  TMSTS32;                                 
    unsigned char  TMSTS33;                                 
    unsigned char  TMSTS34;                                 
    unsigned char  TMSTS35;                                 
    unsigned char  TMSTS36;                                 
    unsigned char  TMSTS37;                                 
    unsigned char  TMSTS38;                                 
    unsigned char  TMSTS39;                                 
    unsigned char  TMSTS40;                                 
    unsigned char  TMSTS41;                                 
    unsigned char  TMSTS42;                                 
    unsigned char  TMSTS43;                                 
    unsigned char  TMSTS44;                                 
    unsigned char  TMSTS45;                                 
    unsigned char  TMSTS46;                                 
    unsigned char  TMSTS47;                                 
    unsigned char  TMSTS48;                                 
    unsigned char  TMSTS49;                                 
    unsigned char  TMSTS50;                                 
    unsigned char  TMSTS51;                                 
    unsigned char  TMSTS52;                                 
    unsigned char  TMSTS53;                                 
    unsigned char  TMSTS54;                                 
    unsigned char  TMSTS55;                                 
    unsigned char  TMSTS56;                                 
    unsigned char  TMSTS57;                                 
    unsigned char  TMSTS58;                                 
    unsigned char  TMSTS59;                                 
    unsigned char  TMSTS60;                                 
    unsigned char  TMSTS61;                                 
    unsigned char  TMSTS62;                                 
    unsigned char  TMSTS63;                                 
    unsigned char  TMSTS64;                                 
    unsigned char  TMSTS65;                                 
    unsigned char  TMSTS66;                                 
    unsigned char  TMSTS67;                                 
    unsigned char  TMSTS68;                                 
    unsigned char  TMSTS69;                                 
    unsigned char  TMSTS70;                                 
    unsigned char  TMSTS71;                                 
    unsigned char  TMSTS72;                                 
    unsigned char  TMSTS73;                                 
    unsigned char  TMSTS74;                                 
    unsigned char  TMSTS75;                                 
    unsigned char  TMSTS76;                                 
    unsigned char  TMSTS77;                                 
    unsigned char  TMSTS78;                                 
    unsigned char  TMSTS79;                                 
    unsigned char  TMSTS80;                                 
    unsigned char  TMSTS81;                                 
    unsigned char  TMSTS82;                                 
    unsigned char  TMSTS83;                                 
    unsigned char  TMSTS84;                                 
    unsigned char  TMSTS85;                                 
    unsigned char  TMSTS86;                                 
    unsigned char  TMSTS87;                                 
    unsigned char  TMSTS88;                                 
    unsigned char  TMSTS89;                                 
    unsigned char  TMSTS90;                                 
    unsigned char  TMSTS91;                                 
    unsigned char  TMSTS92;                                 
    unsigned char  TMSTS93;                                 
    unsigned char  TMSTS94;                                 
    unsigned char  TMSTS95;                                 
    unsigned char  dummy280[32];                            
    union __tag256 TMTRSTS0;                                
    union __tag256 TMTRSTS1;                                
    union __tag256 TMTRSTS2;                                
    unsigned char  dummy281[4];                             
    union __tag256 TMTARSTS0;                               
    union __tag256 TMTARSTS1;                               
    union __tag256 TMTARSTS2;                               
    unsigned char  dummy282[4];                             
    union __tag256 TMTCSTS0;                                
    union __tag256 TMTCSTS1;                                
    union __tag256 TMTCSTS2;                                
    unsigned char  dummy283[4];                             
    union __tag256 TMTASTS0;                                
    union __tag256 TMTASTS1;                                
    union __tag256 TMTASTS2;                                
    unsigned char  dummy284[4];                             
    union __tag256 TMIEC0;                                  
    union __tag256 TMIEC1;                                  
    union __tag256 TMIEC2;                                  
    unsigned char  dummy285[4];                             
    union __tag256 TXQCC0;                                  
    union __tag256 TXQCC1;                                  
    union __tag256 TXQCC2;                                  
    union __tag256 TXQCC3;                                  
    union __tag256 TXQCC4;                                  
    union __tag256 TXQCC5;                                  
    unsigned char  dummy286[8];                             
    union __tag256 TXQSTS0;                                 
    union __tag256 TXQSTS1;                                 
    union __tag256 TXQSTS2;                                 
    union __tag256 TXQSTS3;                                 
    union __tag256 TXQSTS4;                                 
    union __tag256 TXQSTS5;                                 
    unsigned char  dummy287[8];                             
    union __tag256 TXQPCTR0;                                
    union __tag256 TXQPCTR1;                                
    union __tag256 TXQPCTR2;                                
    union __tag256 TXQPCTR3;                                
    union __tag256 TXQPCTR4;                                
    union __tag256 TXQPCTR5;                                
    unsigned char  dummy288[8];                             
    union __tag256 THLCC0;                                  
    union __tag256 THLCC1;                                  
    union __tag256 THLCC2;                                  
    union __tag256 THLCC3;                                  
    union __tag256 THLCC4;                                  
    union __tag256 THLCC5;                                  
    unsigned char  dummy289[8];                             
    union __tag256 THLSTS0;                                 
    union __tag256 THLSTS1;                                 
    union __tag256 THLSTS2;                                 
    union __tag256 THLSTS3;                                 
    union __tag256 THLSTS4;                                 
    union __tag256 THLSTS5;                                 
    unsigned char  dummy290[8];                             
    union __tag256 THLPCTR0;                                
    union __tag256 THLPCTR1;                                
    union __tag256 THLPCTR2;                                
    union __tag256 THLPCTR3;                                
    union __tag256 THLPCTR4;                                
    union __tag256 THLPCTR5;                                
    unsigned char  dummy291[8];                             
    union __tag256 GTINTSTS0;                               
    union __tag256 GTINTSTS1;                               
    union __tag256 GTSTCFG;                                 
    union __tag256 GTSTCTR;                                 
    unsigned char  dummy292[4];                             
    union __tag256 GFDCFG;                                  
    unsigned char  dummy293[4];                             
    union __tag264 GLOCKK;                                  
    unsigned char  dummy294[128];                           
    union __tag256 GAFLID0;                                 
    union __tag256 GAFLM0;                                  
    union __tag256 GAFLP00;                                 
    union __tag256 GAFLP10;                                 
    union __tag256 GAFLID1;                                 
    union __tag256 GAFLM1;                                  
    union __tag256 GAFLP01;                                 
    union __tag256 GAFLP11;                                 
    union __tag256 GAFLID2;                                 
    union __tag256 GAFLM2;                                  
    union __tag256 GAFLP02;                                 
    union __tag256 GAFLP12;                                 
    union __tag256 GAFLID3;                                 
    union __tag256 GAFLM3;                                  
    union __tag256 GAFLP03;                                 
    union __tag256 GAFLP13;                                 
    union __tag256 GAFLID4;                                 
    union __tag256 GAFLM4;                                  
    union __tag256 GAFLP04;                                 
    union __tag256 GAFLP14;                                 
    union __tag256 GAFLID5;                                 
    union __tag256 GAFLM5;                                  
    union __tag256 GAFLP05;                                 
    union __tag256 GAFLP15;                                 
    union __tag256 GAFLID6;                                 
    union __tag256 GAFLM6;                                  
    union __tag256 GAFLP06;                                 
    union __tag256 GAFLP16;                                 
    union __tag256 GAFLID7;                                 
    union __tag256 GAFLM7;                                  
    union __tag256 GAFLP07;                                 
    union __tag256 GAFLP17;                                 
    union __tag256 GAFLID8;                                 
    union __tag256 GAFLM8;                                  
    union __tag256 GAFLP08;                                 
    union __tag256 GAFLP18;                                 
    union __tag256 GAFLID9;                                 
    union __tag256 GAFLM9;                                  
    union __tag256 GAFLP09;                                 
    union __tag256 GAFLP19;                                 
    union __tag256 GAFLID10;                                
    union __tag256 GAFLM10;                                 
    union __tag256 GAFLP010;                                
    union __tag256 GAFLP110;                                
    union __tag256 GAFLID11;                                
    union __tag256 GAFLM11;                                 
    union __tag256 GAFLP011;                                
    union __tag256 GAFLP111;                                
    union __tag256 GAFLID12;                                
    union __tag256 GAFLM12;                                 
    union __tag256 GAFLP012;                                
    union __tag256 GAFLP112;                                
    union __tag256 GAFLID13;                                
    union __tag256 GAFLM13;                                 
    union __tag256 GAFLP013;                                
    union __tag256 GAFLP113;                                
    union __tag256 GAFLID14;                                
    union __tag256 GAFLM14;                                 
    union __tag256 GAFLP014;                                
    union __tag256 GAFLP114;                                
    union __tag256 GAFLID15;                                
    union __tag256 GAFLM15;                                 
    union __tag256 GAFLP015;                                
    union __tag256 GAFLP115;                                
    union __tag256 RMID0;                                   
    union __tag256 RMPTR0;                                  
    union __tag256 RMDF00;                                  
    union __tag256 RMDF10;                                  
    union __tag256 RMID1;                                   
    union __tag256 RMPTR1;                                  
    union __tag256 RMDF01;                                  
    union __tag256 RMDF11;                                  
    union __tag256 RMID2;                                   
    union __tag256 RMPTR2;                                  
    union __tag256 RMDF02;                                  
    union __tag256 RMDF12;                                  
    union __tag256 RMID3;                                   
    union __tag256 RMPTR3;                                  
    union __tag256 RMDF03;                                  
    union __tag256 RMDF13;                                  
    union __tag256 RMID4;                                   
    union __tag256 RMPTR4;                                  
    union __tag256 RMDF04;                                  
    union __tag256 RMDF14;                                  
    union __tag256 RMID5;                                   
    union __tag256 RMPTR5;                                  
    union __tag256 RMDF05;                                  
    union __tag256 RMDF15;                                  
    union __tag256 RMID6;                                   
    union __tag256 RMPTR6;                                  
    union __tag256 RMDF06;                                  
    union __tag256 RMDF16;                                  
    union __tag256 RMID7;                                   
    union __tag256 RMPTR7;                                  
    union __tag256 RMDF07;                                  
    union __tag256 RMDF17;                                  
    union __tag256 RMID8;                                   
    union __tag256 RMPTR8;                                  
    union __tag256 RMDF08;                                  
    union __tag256 RMDF18;                                  
    union __tag256 RMID9;                                   
    union __tag256 RMPTR9;                                  
    union __tag256 RMDF09;                                  
    union __tag256 RMDF19;                                  
    union __tag256 RMID10;                                  
    union __tag256 RMPTR10;                                 
    union __tag256 RMDF010;                                 
    union __tag256 RMDF110;                                 
    union __tag256 RMID11;                                  
    union __tag256 RMPTR11;                                 
    union __tag256 RMDF011;                                 
    union __tag256 RMDF111;                                 
    union __tag256 RMID12;                                  
    union __tag256 RMPTR12;                                 
    union __tag256 RMDF012;                                 
    union __tag256 RMDF112;                                 
    union __tag256 RMID13;                                  
    union __tag256 RMPTR13;                                 
    union __tag256 RMDF013;                                 
    union __tag256 RMDF113;                                 
    union __tag256 RMID14;                                  
    union __tag256 RMPTR14;                                 
    union __tag256 RMDF014;                                 
    union __tag256 RMDF114;                                 
    union __tag256 RMID15;                                  
    union __tag256 RMPTR15;                                 
    union __tag256 RMDF015;                                 
    union __tag256 RMDF115;                                 
    union __tag256 RMID16;                                  
    union __tag256 RMPTR16;                                 
    union __tag256 RMDF016;                                 
    union __tag256 RMDF116;                                 
    union __tag256 RMID17;                                  
    union __tag256 RMPTR17;                                 
    union __tag256 RMDF017;                                 
    union __tag256 RMDF117;                                 
    union __tag256 RMID18;                                  
    union __tag256 RMPTR18;                                 
    union __tag256 RMDF018;                                 
    union __tag256 RMDF118;                                 
    union __tag256 RMID19;                                  
    union __tag256 RMPTR19;                                 
    union __tag256 RMDF019;                                 
    union __tag256 RMDF119;                                 
    union __tag256 RMID20;                                  
    union __tag256 RMPTR20;                                 
    union __tag256 RMDF020;                                 
    union __tag256 RMDF120;                                 
    union __tag256 RMID21;                                  
    union __tag256 RMPTR21;                                 
    union __tag256 RMDF021;                                 
    union __tag256 RMDF121;                                 
    union __tag256 RMID22;                                  
    union __tag256 RMPTR22;                                 
    union __tag256 RMDF022;                                 
    union __tag256 RMDF122;                                 
    union __tag256 RMID23;                                  
    union __tag256 RMPTR23;                                 
    union __tag256 RMDF023;                                 
    union __tag256 RMDF123;                                 
    union __tag256 RMID24;                                  
    union __tag256 RMPTR24;                                 
    union __tag256 RMDF024;                                 
    union __tag256 RMDF124;                                 
    union __tag256 RMID25;                                  
    union __tag256 RMPTR25;                                 
    union __tag256 RMDF025;                                 
    union __tag256 RMDF125;                                 
    union __tag256 RMID26;                                  
    union __tag256 RMPTR26;                                 
    union __tag256 RMDF026;                                 
    union __tag256 RMDF126;                                 
    union __tag256 RMID27;                                  
    union __tag256 RMPTR27;                                 
    union __tag256 RMDF027;                                 
    union __tag256 RMDF127;                                 
    union __tag256 RMID28;                                  
    union __tag256 RMPTR28;                                 
    union __tag256 RMDF028;                                 
    union __tag256 RMDF128;                                 
    union __tag256 RMID29;                                  
    union __tag256 RMPTR29;                                 
    union __tag256 RMDF029;                                 
    union __tag256 RMDF129;                                 
    union __tag256 RMID30;                                  
    union __tag256 RMPTR30;                                 
    union __tag256 RMDF030;                                 
    union __tag256 RMDF130;                                 
    union __tag256 RMID31;                                  
    union __tag256 RMPTR31;                                 
    union __tag256 RMDF031;                                 
    union __tag256 RMDF131;                                 
    union __tag256 RMID32;                                  
    union __tag256 RMPTR32;                                 
    union __tag256 RMDF032;                                 
    union __tag256 RMDF132;                                 
    union __tag256 RMID33;                                  
    union __tag256 RMPTR33;                                 
    union __tag256 RMDF033;                                 
    union __tag256 RMDF133;                                 
    union __tag256 RMID34;                                  
    union __tag256 RMPTR34;                                 
    union __tag256 RMDF034;                                 
    union __tag256 RMDF134;                                 
    union __tag256 RMID35;                                  
    union __tag256 RMPTR35;                                 
    union __tag256 RMDF035;                                 
    union __tag256 RMDF135;                                 
    union __tag256 RMID36;                                  
    union __tag256 RMPTR36;                                 
    union __tag256 RMDF036;                                 
    union __tag256 RMDF136;                                 
    union __tag256 RMID37;                                  
    union __tag256 RMPTR37;                                 
    union __tag256 RMDF037;                                 
    union __tag256 RMDF137;                                 
    union __tag256 RMID38;                                  
    union __tag256 RMPTR38;                                 
    union __tag256 RMDF038;                                 
    union __tag256 RMDF138;                                 
    union __tag256 RMID39;                                  
    union __tag256 RMPTR39;                                 
    union __tag256 RMDF039;                                 
    union __tag256 RMDF139;                                 
    union __tag256 RMID40;                                  
    union __tag256 RMPTR40;                                 
    union __tag256 RMDF040;                                 
    union __tag256 RMDF140;                                 
    union __tag256 RMID41;                                  
    union __tag256 RMPTR41;                                 
    union __tag256 RMDF041;                                 
    union __tag256 RMDF141;                                 
    union __tag256 RMID42;                                  
    union __tag256 RMPTR42;                                 
    union __tag256 RMDF042;                                 
    union __tag256 RMDF142;                                 
    union __tag256 RMID43;                                  
    union __tag256 RMPTR43;                                 
    union __tag256 RMDF043;                                 
    union __tag256 RMDF143;                                 
    union __tag256 RMID44;                                  
    union __tag256 RMPTR44;                                 
    union __tag256 RMDF044;                                 
    union __tag256 RMDF144;                                 
    union __tag256 RMID45;                                  
    union __tag256 RMPTR45;                                 
    union __tag256 RMDF045;                                 
    union __tag256 RMDF145;                                 
    union __tag256 RMID46;                                  
    union __tag256 RMPTR46;                                 
    union __tag256 RMDF046;                                 
    union __tag256 RMDF146;                                 
    union __tag256 RMID47;                                  
    union __tag256 RMPTR47;                                 
    union __tag256 RMDF047;                                 
    union __tag256 RMDF147;                                 
    union __tag256 RMID48;                                  
    union __tag256 RMPTR48;                                 
    union __tag256 RMDF048;                                 
    union __tag256 RMDF148;                                 
    union __tag256 RMID49;                                  
    union __tag256 RMPTR49;                                 
    union __tag256 RMDF049;                                 
    union __tag256 RMDF149;                                 
    union __tag256 RMID50;                                  
    union __tag256 RMPTR50;                                 
    union __tag256 RMDF050;                                 
    union __tag256 RMDF150;                                 
    union __tag256 RMID51;                                  
    union __tag256 RMPTR51;                                 
    union __tag256 RMDF051;                                 
    union __tag256 RMDF151;                                 
    union __tag256 RMID52;                                  
    union __tag256 RMPTR52;                                 
    union __tag256 RMDF052;                                 
    union __tag256 RMDF152;                                 
    union __tag256 RMID53;                                  
    union __tag256 RMPTR53;                                 
    union __tag256 RMDF053;                                 
    union __tag256 RMDF153;                                 
    union __tag256 RMID54;                                  
    union __tag256 RMPTR54;                                 
    union __tag256 RMDF054;                                 
    union __tag256 RMDF154;                                 
    union __tag256 RMID55;                                  
    union __tag256 RMPTR55;                                 
    union __tag256 RMDF055;                                 
    union __tag256 RMDF155;                                 
    union __tag256 RMID56;                                  
    union __tag256 RMPTR56;                                 
    union __tag256 RMDF056;                                 
    union __tag256 RMDF156;                                 
    union __tag256 RMID57;                                  
    union __tag256 RMPTR57;                                 
    union __tag256 RMDF057;                                 
    union __tag256 RMDF157;                                 
    union __tag256 RMID58;                                  
    union __tag256 RMPTR58;                                 
    union __tag256 RMDF058;                                 
    union __tag256 RMDF158;                                 
    union __tag256 RMID59;                                  
    union __tag256 RMPTR59;                                 
    union __tag256 RMDF059;                                 
    union __tag256 RMDF159;                                 
    union __tag256 RMID60;                                  
    union __tag256 RMPTR60;                                 
    union __tag256 RMDF060;                                 
    union __tag256 RMDF160;                                 
    union __tag256 RMID61;                                  
    union __tag256 RMPTR61;                                 
    union __tag256 RMDF061;                                 
    union __tag256 RMDF161;                                 
    union __tag256 RMID62;                                  
    union __tag256 RMPTR62;                                 
    union __tag256 RMDF062;                                 
    union __tag256 RMDF162;                                 
    union __tag256 RMID63;                                  
    union __tag256 RMPTR63;                                 
    union __tag256 RMDF063;                                 
    union __tag256 RMDF163;                                 
    union __tag256 RMID64;                                  
    union __tag256 RMPTR64;                                 
    union __tag256 RMDF064;                                 
    union __tag256 RMDF164;                                 
    union __tag256 RMID65;                                  
    union __tag256 RMPTR65;                                 
    union __tag256 RMDF065;                                 
    union __tag256 RMDF165;                                 
    union __tag256 RMID66;                                  
    union __tag256 RMPTR66;                                 
    union __tag256 RMDF066;                                 
    union __tag256 RMDF166;                                 
    union __tag256 RMID67;                                  
    union __tag256 RMPTR67;                                 
    union __tag256 RMDF067;                                 
    union __tag256 RMDF167;                                 
    union __tag256 RMID68;                                  
    union __tag256 RMPTR68;                                 
    union __tag256 RMDF068;                                 
    union __tag256 RMDF168;                                 
    union __tag256 RMID69;                                  
    union __tag256 RMPTR69;                                 
    union __tag256 RMDF069;                                 
    union __tag256 RMDF169;                                 
    union __tag256 RMID70;                                  
    union __tag256 RMPTR70;                                 
    union __tag256 RMDF070;                                 
    union __tag256 RMDF170;                                 
    union __tag256 RMID71;                                  
    union __tag256 RMPTR71;                                 
    union __tag256 RMDF071;                                 
    union __tag256 RMDF171;                                 
    union __tag256 RMID72;                                  
    union __tag256 RMPTR72;                                 
    union __tag256 RMDF072;                                 
    union __tag256 RMDF172;                                 
    union __tag256 RMID73;                                  
    union __tag256 RMPTR73;                                 
    union __tag256 RMDF073;                                 
    union __tag256 RMDF173;                                 
    union __tag256 RMID74;                                  
    union __tag256 RMPTR74;                                 
    union __tag256 RMDF074;                                 
    union __tag256 RMDF174;                                 
    union __tag256 RMID75;                                  
    union __tag256 RMPTR75;                                 
    union __tag256 RMDF075;                                 
    union __tag256 RMDF175;                                 
    union __tag256 RMID76;                                  
    union __tag256 RMPTR76;                                 
    union __tag256 RMDF076;                                 
    union __tag256 RMDF176;                                 
    union __tag256 RMID77;                                  
    union __tag256 RMPTR77;                                 
    union __tag256 RMDF077;                                 
    union __tag256 RMDF177;                                 
    union __tag256 RMID78;                                  
    union __tag256 RMPTR78;                                 
    union __tag256 RMDF078;                                 
    union __tag256 RMDF178;                                 
    union __tag256 RMID79;                                  
    union __tag256 RMPTR79;                                 
    union __tag256 RMDF079;                                 
    union __tag256 RMDF179;                                 
    union __tag256 RMID80;                                  
    union __tag256 RMPTR80;                                 
    union __tag256 RMDF080;                                 
    union __tag256 RMDF180;                                 
    union __tag256 RMID81;                                  
    union __tag256 RMPTR81;                                 
    union __tag256 RMDF081;                                 
    union __tag256 RMDF181;                                 
    union __tag256 RMID82;                                  
    union __tag256 RMPTR82;                                 
    union __tag256 RMDF082;                                 
    union __tag256 RMDF182;                                 
    union __tag256 RMID83;                                  
    union __tag256 RMPTR83;                                 
    union __tag256 RMDF083;                                 
    union __tag256 RMDF183;                                 
    union __tag256 RMID84;                                  
    union __tag256 RMPTR84;                                 
    union __tag256 RMDF084;                                 
    union __tag256 RMDF184;                                 
    union __tag256 RMID85;                                  
    union __tag256 RMPTR85;                                 
    union __tag256 RMDF085;                                 
    union __tag256 RMDF185;                                 
    union __tag256 RMID86;                                  
    union __tag256 RMPTR86;                                 
    union __tag256 RMDF086;                                 
    union __tag256 RMDF186;                                 
    union __tag256 RMID87;                                  
    union __tag256 RMPTR87;                                 
    union __tag256 RMDF087;                                 
    union __tag256 RMDF187;                                 
    union __tag256 RMID88;                                  
    union __tag256 RMPTR88;                                 
    union __tag256 RMDF088;                                 
    union __tag256 RMDF188;                                 
    union __tag256 RMID89;                                  
    union __tag256 RMPTR89;                                 
    union __tag256 RMDF089;                                 
    union __tag256 RMDF189;                                 
    union __tag256 RMID90;                                  
    union __tag256 RMPTR90;                                 
    union __tag256 RMDF090;                                 
    union __tag256 RMDF190;                                 
    union __tag256 RMID91;                                  
    union __tag256 RMPTR91;                                 
    union __tag256 RMDF091;                                 
    union __tag256 RMDF191;                                 
    union __tag256 RMID92;                                  
    union __tag256 RMPTR92;                                 
    union __tag256 RMDF092;                                 
    union __tag256 RMDF192;                                 
    union __tag256 RMID93;                                  
    union __tag256 RMPTR93;                                 
    union __tag256 RMDF093;                                 
    union __tag256 RMDF193;                                 
    union __tag256 RMID94;                                  
    union __tag256 RMPTR94;                                 
    union __tag256 RMDF094;                                 
    union __tag256 RMDF194;                                 
    union __tag256 RMID95;                                  
    union __tag256 RMPTR95;                                 
    union __tag256 RMDF095;                                 
    union __tag256 RMDF195;                                 
    unsigned char  dummy295[512];                           
    union __tag256 RFID0;                                   
    union __tag256 RFPTR0;                                  
    union __tag256 RFDF00;                                  
    union __tag256 RFDF10;                                  
    union __tag256 RFID1;                                   
    union __tag256 RFPTR1;                                  
    union __tag256 RFDF01;                                  
    union __tag256 RFDF11;                                  
    union __tag256 RFID2;                                   
    union __tag256 RFPTR2;                                  
    union __tag256 RFDF02;                                  
    union __tag256 RFDF12;                                  
    union __tag256 RFID3;                                   
    union __tag256 RFPTR3;                                  
    union __tag256 RFDF03;                                  
    union __tag256 RFDF13;                                  
    union __tag256 RFID4;                                   
    union __tag256 RFPTR4;                                  
    union __tag256 RFDF04;                                  
    union __tag256 RFDF14;                                  
    union __tag256 RFID5;                                   
    union __tag256 RFPTR5;                                  
    union __tag256 RFDF05;                                  
    union __tag256 RFDF15;                                  
    union __tag256 RFID6;                                   
    union __tag256 RFPTR6;                                  
    union __tag256 RFDF06;                                  
    union __tag256 RFDF16;                                  
    union __tag256 RFID7;                                   
    union __tag256 RFPTR7;                                  
    union __tag256 RFDF07;                                  
    union __tag256 RFDF17;                                  
    union __tag256 CFID0;                                   
    union __tag256 CFPTR0;                                  
    union __tag256 CFDF00;                                  
    union __tag256 CFDF10;                                  
    union __tag256 CFID1;                                   
    union __tag256 CFPTR1;                                  
    union __tag256 CFDF01;                                  
    union __tag256 CFDF11;                                  
    union __tag256 CFID2;                                   
    union __tag256 CFPTR2;                                  
    union __tag256 CFDF02;                                  
    union __tag256 CFDF12;                                  
    union __tag256 CFID3;                                   
    union __tag256 CFPTR3;                                  
    union __tag256 CFDF03;                                  
    union __tag256 CFDF13;                                  
    union __tag256 CFID4;                                   
    union __tag256 CFPTR4;                                  
    union __tag256 CFDF04;                                  
    union __tag256 CFDF14;                                  
    union __tag256 CFID5;                                   
    union __tag256 CFPTR5;                                  
    union __tag256 CFDF05;                                  
    union __tag256 CFDF15;                                  
    union __tag256 CFID6;                                   
    union __tag256 CFPTR6;                                  
    union __tag256 CFDF06;                                  
    union __tag256 CFDF16;                                  
    union __tag256 CFID7;                                   
    union __tag256 CFPTR7;                                  
    union __tag256 CFDF07;                                  
    union __tag256 CFDF17;                                  
    union __tag256 CFID8;                                   
    union __tag256 CFPTR8;                                  
    union __tag256 CFDF08;                                  
    union __tag256 CFDF18;                                  
    union __tag256 CFID9;                                   
    union __tag256 CFPTR9;                                  
    union __tag256 CFDF09;                                  
    union __tag256 CFDF19;                                  
    union __tag256 CFID10;                                  
    union __tag256 CFPTR10;                                 
    union __tag256 CFDF010;                                 
    union __tag256 CFDF110;                                 
    union __tag256 CFID11;                                  
    union __tag256 CFPTR11;                                 
    union __tag256 CFDF011;                                 
    union __tag256 CFDF111;                                 
    union __tag256 CFID12;                                  
    union __tag256 CFPTR12;                                 
    union __tag256 CFDF012;                                 
    union __tag256 CFDF112;                                 
    union __tag256 CFID13;                                  
    union __tag256 CFPTR13;                                 
    union __tag256 CFDF013;                                 
    union __tag256 CFDF113;                                 
    union __tag256 CFID14;                                  
    union __tag256 CFPTR14;                                 
    union __tag256 CFDF014;                                 
    union __tag256 CFDF114;                                 
    union __tag256 CFID15;                                  
    union __tag256 CFPTR15;                                 
    union __tag256 CFDF015;                                 
    union __tag256 CFDF115;                                 
    union __tag256 CFID16;                                  
    union __tag256 CFPTR16;                                 
    union __tag256 CFDF016;                                 
    union __tag256 CFDF116;                                 
    union __tag256 CFID17;                                  
    union __tag256 CFPTR17;                                 
    union __tag256 CFDF017;                                 
    union __tag256 CFDF117;                                 
    unsigned char  dummy296[96];                            
    union __tag256 TMID0;                                   
    union __tag256 TMPTR0;                                  
    union __tag256 TMDF00;                                  
    union __tag256 TMDF10;                                  
    union __tag256 TMID1;                                   
    union __tag256 TMPTR1;                                  
    union __tag256 TMDF01;                                  
    union __tag256 TMDF11;                                  
    union __tag256 TMID2;                                   
    union __tag256 TMPTR2;                                  
    union __tag256 TMDF02;                                  
    union __tag256 TMDF12;                                  
    union __tag256 TMID3;                                   
    union __tag256 TMPTR3;                                  
    union __tag256 TMDF03;                                  
    union __tag256 TMDF13;                                  
    union __tag256 TMID4;                                   
    union __tag256 TMPTR4;                                  
    union __tag256 TMDF04;                                  
    union __tag256 TMDF14;                                  
    union __tag256 TMID5;                                   
    union __tag256 TMPTR5;                                  
    union __tag256 TMDF05;                                  
    union __tag256 TMDF15;                                  
    union __tag256 TMID6;                                   
    union __tag256 TMPTR6;                                  
    union __tag256 TMDF06;                                  
    union __tag256 TMDF16;                                  
    union __tag256 TMID7;                                   
    union __tag256 TMPTR7;                                  
    union __tag256 TMDF07;                                  
    union __tag256 TMDF17;                                  
    union __tag256 TMID8;                                   
    union __tag256 TMPTR8;                                  
    union __tag256 TMDF08;                                  
    union __tag256 TMDF18;                                  
    union __tag256 TMID9;                                   
    union __tag256 TMPTR9;                                  
    union __tag256 TMDF09;                                  
    union __tag256 TMDF19;                                  
    union __tag256 TMID10;                                  
    union __tag256 TMPTR10;                                 
    union __tag256 TMDF010;                                 
    union __tag256 TMDF110;                                 
    union __tag256 TMID11;                                  
    union __tag256 TMPTR11;                                 
    union __tag256 TMDF011;                                 
    union __tag256 TMDF111;                                 
    union __tag256 TMID12;                                  
    union __tag256 TMPTR12;                                 
    union __tag256 TMDF012;                                 
    union __tag256 TMDF112;                                 
    union __tag256 TMID13;                                  
    union __tag256 TMPTR13;                                 
    union __tag256 TMDF013;                                 
    union __tag256 TMDF113;                                 
    union __tag256 TMID14;                                  
    union __tag256 TMPTR14;                                 
    union __tag256 TMDF014;                                 
    union __tag256 TMDF114;                                 
    union __tag256 TMID15;                                  
    union __tag256 TMPTR15;                                 
    union __tag256 TMDF015;                                 
    union __tag256 TMDF115;                                 
    union __tag256 TMID16;                                  
    union __tag256 TMPTR16;                                 
    union __tag256 TMDF016;                                 
    union __tag256 TMDF116;                                 
    union __tag256 TMID17;                                  
    union __tag256 TMPTR17;                                 
    union __tag256 TMDF017;                                 
    union __tag256 TMDF117;                                 
    union __tag256 TMID18;                                  
    union __tag256 TMPTR18;                                 
    union __tag256 TMDF018;                                 
    union __tag256 TMDF118;                                 
    union __tag256 TMID19;                                  
    union __tag256 TMPTR19;                                 
    union __tag256 TMDF019;                                 
    union __tag256 TMDF119;                                 
    union __tag256 TMID20;                                  
    union __tag256 TMPTR20;                                 
    union __tag256 TMDF020;                                 
    union __tag256 TMDF120;                                 
    union __tag256 TMID21;                                  
    union __tag256 TMPTR21;                                 
    union __tag256 TMDF021;                                 
    union __tag256 TMDF121;                                 
    union __tag256 TMID22;                                  
    union __tag256 TMPTR22;                                 
    union __tag256 TMDF022;                                 
    union __tag256 TMDF122;                                 
    union __tag256 TMID23;                                  
    union __tag256 TMPTR23;                                 
    union __tag256 TMDF023;                                 
    union __tag256 TMDF123;                                 
    union __tag256 TMID24;                                  
    union __tag256 TMPTR24;                                 
    union __tag256 TMDF024;                                 
    union __tag256 TMDF124;                                 
    union __tag256 TMID25;                                  
    union __tag256 TMPTR25;                                 
    union __tag256 TMDF025;                                 
    union __tag256 TMDF125;                                 
    union __tag256 TMID26;                                  
    union __tag256 TMPTR26;                                 
    union __tag256 TMDF026;                                 
    union __tag256 TMDF126;                                 
    union __tag256 TMID27;                                  
    union __tag256 TMPTR27;                                 
    union __tag256 TMDF027;                                 
    union __tag256 TMDF127;                                 
    union __tag256 TMID28;                                  
    union __tag256 TMPTR28;                                 
    union __tag256 TMDF028;                                 
    union __tag256 TMDF128;                                 
    union __tag256 TMID29;                                  
    union __tag256 TMPTR29;                                 
    union __tag256 TMDF029;                                 
    union __tag256 TMDF129;                                 
    union __tag256 TMID30;                                  
    union __tag256 TMPTR30;                                 
    union __tag256 TMDF030;                                 
    union __tag256 TMDF130;                                 
    union __tag256 TMID31;                                  
    union __tag256 TMPTR31;                                 
    union __tag256 TMDF031;                                 
    union __tag256 TMDF131;                                 
    union __tag256 TMID32;                                  
    union __tag256 TMPTR32;                                 
    union __tag256 TMDF032;                                 
    union __tag256 TMDF132;                                 
    union __tag256 TMID33;                                  
    union __tag256 TMPTR33;                                 
    union __tag256 TMDF033;                                 
    union __tag256 TMDF133;                                 
    union __tag256 TMID34;                                  
    union __tag256 TMPTR34;                                 
    union __tag256 TMDF034;                                 
    union __tag256 TMDF134;                                 
    union __tag256 TMID35;                                  
    union __tag256 TMPTR35;                                 
    union __tag256 TMDF035;                                 
    union __tag256 TMDF135;                                 
    union __tag256 TMID36;                                  
    union __tag256 TMPTR36;                                 
    union __tag256 TMDF036;                                 
    union __tag256 TMDF136;                                 
    union __tag256 TMID37;                                  
    union __tag256 TMPTR37;                                 
    union __tag256 TMDF037;                                 
    union __tag256 TMDF137;                                 
    union __tag256 TMID38;                                  
    union __tag256 TMPTR38;                                 
    union __tag256 TMDF038;                                 
    union __tag256 TMDF138;                                 
    union __tag256 TMID39;                                  
    union __tag256 TMPTR39;                                 
    union __tag256 TMDF039;                                 
    union __tag256 TMDF139;                                 
    union __tag256 TMID40;                                  
    union __tag256 TMPTR40;                                 
    union __tag256 TMDF040;                                 
    union __tag256 TMDF140;                                 
    union __tag256 TMID41;                                  
    union __tag256 TMPTR41;                                 
    union __tag256 TMDF041;                                 
    union __tag256 TMDF141;                                 
    union __tag256 TMID42;                                  
    union __tag256 TMPTR42;                                 
    union __tag256 TMDF042;                                 
    union __tag256 TMDF142;                                 
    union __tag256 TMID43;                                  
    union __tag256 TMPTR43;                                 
    union __tag256 TMDF043;                                 
    union __tag256 TMDF143;                                 
    union __tag256 TMID44;                                  
    union __tag256 TMPTR44;                                 
    union __tag256 TMDF044;                                 
    union __tag256 TMDF144;                                 
    union __tag256 TMID45;                                  
    union __tag256 TMPTR45;                                 
    union __tag256 TMDF045;                                 
    union __tag256 TMDF145;                                 
    union __tag256 TMID46;                                  
    union __tag256 TMPTR46;                                 
    union __tag256 TMDF046;                                 
    union __tag256 TMDF146;                                 
    union __tag256 TMID47;                                  
    union __tag256 TMPTR47;                                 
    union __tag256 TMDF047;                                 
    union __tag256 TMDF147;                                 
    union __tag256 TMID48;                                  
    union __tag256 TMPTR48;                                 
    union __tag256 TMDF048;                                 
    union __tag256 TMDF148;                                 
    union __tag256 TMID49;                                  
    union __tag256 TMPTR49;                                 
    union __tag256 TMDF049;                                 
    union __tag256 TMDF149;                                 
    union __tag256 TMID50;                                  
    union __tag256 TMPTR50;                                 
    union __tag256 TMDF050;                                 
    union __tag256 TMDF150;                                 
    union __tag256 TMID51;                                  
    union __tag256 TMPTR51;                                 
    union __tag256 TMDF051;                                 
    union __tag256 TMDF151;                                 
    union __tag256 TMID52;                                  
    union __tag256 TMPTR52;                                 
    union __tag256 TMDF052;                                 
    union __tag256 TMDF152;                                 
    union __tag256 TMID53;                                  
    union __tag256 TMPTR53;                                 
    union __tag256 TMDF053;                                 
    union __tag256 TMDF153;                                 
    union __tag256 TMID54;                                  
    union __tag256 TMPTR54;                                 
    union __tag256 TMDF054;                                 
    union __tag256 TMDF154;                                 
    union __tag256 TMID55;                                  
    union __tag256 TMPTR55;                                 
    union __tag256 TMDF055;                                 
    union __tag256 TMDF155;                                 
    union __tag256 TMID56;                                  
    union __tag256 TMPTR56;                                 
    union __tag256 TMDF056;                                 
    union __tag256 TMDF156;                                 
    union __tag256 TMID57;                                  
    union __tag256 TMPTR57;                                 
    union __tag256 TMDF057;                                 
    union __tag256 TMDF157;                                 
    union __tag256 TMID58;                                  
    union __tag256 TMPTR58;                                 
    union __tag256 TMDF058;                                 
    union __tag256 TMDF158;                                 
    union __tag256 TMID59;                                  
    union __tag256 TMPTR59;                                 
    union __tag256 TMDF059;                                 
    union __tag256 TMDF159;                                 
    union __tag256 TMID60;                                  
    union __tag256 TMPTR60;                                 
    union __tag256 TMDF060;                                 
    union __tag256 TMDF160;                                 
    union __tag256 TMID61;                                  
    union __tag256 TMPTR61;                                 
    union __tag256 TMDF061;                                 
    union __tag256 TMDF161;                                 
    union __tag256 TMID62;                                  
    union __tag256 TMPTR62;                                 
    union __tag256 TMDF062;                                 
    union __tag256 TMDF162;                                 
    union __tag256 TMID63;                                  
    union __tag256 TMPTR63;                                 
    union __tag256 TMDF063;                                 
    union __tag256 TMDF163;                                 
    union __tag256 TMID64;                                  
    union __tag256 TMPTR64;                                 
    union __tag256 TMDF064;                                 
    union __tag256 TMDF164;                                 
    union __tag256 TMID65;                                  
    union __tag256 TMPTR65;                                 
    union __tag256 TMDF065;                                 
    union __tag256 TMDF165;                                 
    union __tag256 TMID66;                                  
    union __tag256 TMPTR66;                                 
    union __tag256 TMDF066;                                 
    union __tag256 TMDF166;                                 
    union __tag256 TMID67;                                  
    union __tag256 TMPTR67;                                 
    union __tag256 TMDF067;                                 
    union __tag256 TMDF167;                                 
    union __tag256 TMID68;                                  
    union __tag256 TMPTR68;                                 
    union __tag256 TMDF068;                                 
    union __tag256 TMDF168;                                 
    union __tag256 TMID69;                                  
    union __tag256 TMPTR69;                                 
    union __tag256 TMDF069;                                 
    union __tag256 TMDF169;                                 
    union __tag256 TMID70;                                  
    union __tag256 TMPTR70;                                 
    union __tag256 TMDF070;                                 
    union __tag256 TMDF170;                                 
    union __tag256 TMID71;                                  
    union __tag256 TMPTR71;                                 
    union __tag256 TMDF071;                                 
    union __tag256 TMDF171;                                 
    union __tag256 TMID72;                                  
    union __tag256 TMPTR72;                                 
    union __tag256 TMDF072;                                 
    union __tag256 TMDF172;                                 
    union __tag256 TMID73;                                  
    union __tag256 TMPTR73;                                 
    union __tag256 TMDF073;                                 
    union __tag256 TMDF173;                                 
    union __tag256 TMID74;                                  
    union __tag256 TMPTR74;                                 
    union __tag256 TMDF074;                                 
    union __tag256 TMDF174;                                 
    union __tag256 TMID75;                                  
    union __tag256 TMPTR75;                                 
    union __tag256 TMDF075;                                 
    union __tag256 TMDF175;                                 
    union __tag256 TMID76;                                  
    union __tag256 TMPTR76;                                 
    union __tag256 TMDF076;                                 
    union __tag256 TMDF176;                                 
    union __tag256 TMID77;                                  
    union __tag256 TMPTR77;                                 
    union __tag256 TMDF077;                                 
    union __tag256 TMDF177;                                 
    union __tag256 TMID78;                                  
    union __tag256 TMPTR78;                                 
    union __tag256 TMDF078;                                 
    union __tag256 TMDF178;                                 
    union __tag256 TMID79;                                  
    union __tag256 TMPTR79;                                 
    union __tag256 TMDF079;                                 
    union __tag256 TMDF179;                                 
    union __tag256 TMID80;                                  
    union __tag256 TMPTR80;                                 
    union __tag256 TMDF080;                                 
    union __tag256 TMDF180;                                 
    union __tag256 TMID81;                                  
    union __tag256 TMPTR81;                                 
    union __tag256 TMDF081;                                 
    union __tag256 TMDF181;                                 
    union __tag256 TMID82;                                  
    union __tag256 TMPTR82;                                 
    union __tag256 TMDF082;                                 
    union __tag256 TMDF182;                                 
    union __tag256 TMID83;                                  
    union __tag256 TMPTR83;                                 
    union __tag256 TMDF083;                                 
    union __tag256 TMDF183;                                 
    union __tag256 TMID84;                                  
    union __tag256 TMPTR84;                                 
    union __tag256 TMDF084;                                 
    union __tag256 TMDF184;                                 
    union __tag256 TMID85;                                  
    union __tag256 TMPTR85;                                 
    union __tag256 TMDF085;                                 
    union __tag256 TMDF185;                                 
    union __tag256 TMID86;                                  
    union __tag256 TMPTR86;                                 
    union __tag256 TMDF086;                                 
    union __tag256 TMDF186;                                 
    union __tag256 TMID87;                                  
    union __tag256 TMPTR87;                                 
    union __tag256 TMDF087;                                 
    union __tag256 TMDF187;                                 
    union __tag256 TMID88;                                  
    union __tag256 TMPTR88;                                 
    union __tag256 TMDF088;                                 
    union __tag256 TMDF188;                                 
    union __tag256 TMID89;                                  
    union __tag256 TMPTR89;                                 
    union __tag256 TMDF089;                                 
    union __tag256 TMDF189;                                 
    union __tag256 TMID90;                                  
    union __tag256 TMPTR90;                                 
    union __tag256 TMDF090;                                 
    union __tag256 TMDF190;                                 
    union __tag256 TMID91;                                  
    union __tag256 TMPTR91;                                 
    union __tag256 TMDF091;                                 
    union __tag256 TMDF191;                                 
    union __tag256 TMID92;                                  
    union __tag256 TMPTR92;                                 
    union __tag256 TMDF092;                                 
    union __tag256 TMDF192;                                 
    union __tag256 TMID93;                                  
    union __tag256 TMPTR93;                                 
    union __tag256 TMDF093;                                 
    union __tag256 TMDF193;                                 
    union __tag256 TMID94;                                  
    union __tag256 TMPTR94;                                 
    union __tag256 TMDF094;                                 
    union __tag256 TMDF194;                                 
    union __tag256 TMID95;                                  
    union __tag256 TMPTR95;                                 
    union __tag256 TMDF095;                                 
    union __tag256 TMDF195;                                 
    unsigned char  dummy297[512];                           
    union __tag256 THLACC0;                                 
    union __tag256 THLACC1;                                 
    union __tag256 THLACC2;                                 
    union __tag256 THLACC3;                                 
    union __tag256 THLACC4;                                 
    union __tag256 THLACC5;                                 
    unsigned char  dummy298[232];                           
    union __tag256 RPGACC0;                                 
    union __tag256 RPGACC1;                                 
    union __tag256 RPGACC2;                                 
    union __tag256 RPGACC3;                                 
    union __tag256 RPGACC4;                                 
    union __tag256 RPGACC5;                                 
    union __tag256 RPGACC6;                                 
    union __tag256 RPGACC7;                                 
    union __tag256 RPGACC8;                                 
    union __tag256 RPGACC9;                                 
    union __tag256 RPGACC10;                                
    union __tag256 RPGACC11;                                
    union __tag256 RPGACC12;                                
    union __tag256 RPGACC13;                                
    union __tag256 RPGACC14;                                
    union __tag256 RPGACC15;                                
    union __tag256 RPGACC16;                                
    union __tag256 RPGACC17;                                
    union __tag256 RPGACC18;                                
    union __tag256 RPGACC19;                                
    union __tag256 RPGACC20;                                
    union __tag256 RPGACC21;                                
    union __tag256 RPGACC22;                                
    union __tag256 RPGACC23;                                
    union __tag256 RPGACC24;                                
    union __tag256 RPGACC25;                                
    union __tag256 RPGACC26;                                
    union __tag256 RPGACC27;                                
    union __tag256 RPGACC28;                                
    union __tag256 RPGACC29;                                
    union __tag256 RPGACC30;                                
    union __tag256 RPGACC31;                                
    union __tag256 RPGACC32;                                
    union __tag256 RPGACC33;                                
    union __tag256 RPGACC34;                                
    union __tag256 RPGACC35;                                
    union __tag256 RPGACC36;                                
    union __tag256 RPGACC37;                                
    union __tag256 RPGACC38;                                
    union __tag256 RPGACC39;                                
    union __tag256 RPGACC40;                                
    union __tag256 RPGACC41;                                
    union __tag256 RPGACC42;                                
    union __tag256 RPGACC43;                                
    union __tag256 RPGACC44;                                
    union __tag256 RPGACC45;                                
    union __tag256 RPGACC46;                                
    union __tag256 RPGACC47;                                
    union __tag256 RPGACC48;                                
    union __tag256 RPGACC49;                                
    union __tag256 RPGACC50;                                
    union __tag256 RPGACC51;                                
    union __tag256 RPGACC52;                                
    union __tag256 RPGACC53;                                
    union __tag256 RPGACC54;                                
    union __tag256 RPGACC55;                                
    union __tag256 RPGACC56;                                
    union __tag256 RPGACC57;                                
    union __tag256 RPGACC58;                                
    union __tag256 RPGACC59;                                
    union __tag256 RPGACC60;                                
    union __tag256 RPGACC61;                                
    union __tag256 RPGACC62;                                
    union __tag256 RPGACC63;                                
};
struct __tag559
{                                                           
    union __tag256 CFDC0NCFG;                               
    union __tag256 CFDC0CTR;                                
    union __tag256 CFDC0STS;                                
    union __tag256 CFDC0ERFL;                               
    union __tag256 CFDC1NCFG;                               
    union __tag256 CFDC1CTR;                                
    union __tag256 CFDC1STS;                                
    union __tag256 CFDC1ERFL;                               
    union __tag256 CFDC2NCFG;                               
    union __tag256 CFDC2CTR;                                
    union __tag256 CFDC2STS;                                
    union __tag256 CFDC2ERFL;                               
    union __tag256 CFDC3NCFG;                               
    union __tag256 CFDC3CTR;                                
    union __tag256 CFDC3STS;                                
    union __tag256 CFDC3ERFL;                               
    union __tag256 CFDC4NCFG;                               
    union __tag256 CFDC4CTR;                                
    union __tag256 CFDC4STS;                                
    union __tag256 CFDC4ERFL;                               
    union __tag256 CFDC5NCFG;                               
    union __tag256 CFDC5CTR;                                
    union __tag256 CFDC5STS;                                
    union __tag256 CFDC5ERFL;                               
    unsigned char  dummy299[36];                            
    union __tag256 CFDGCFG;                                 
    union __tag256 CFDGCTR;                                 
    union __tag256 CFDGSTS;                                 
    union __tag256 CFDGERFL;                                
    union __tag264 CFDGTSC;                                 
    union __tag256 CFDGAFLECTR;                             
    union __tag256 CFDGAFLCFG0;                             
    union __tag256 CFDGAFLCFG1;                             
    union __tag256 CFDRMNB;                                 
    union __tag256 CFDRMND0;                                
    union __tag256 CFDRMND1;                                
    union __tag256 CFDRMND2;                                
    unsigned char  dummy300[4];                             
    union __tag256 CFDRFCC0;                                
    union __tag256 CFDRFCC1;                                
    union __tag256 CFDRFCC2;                                
    union __tag256 CFDRFCC3;                                
    union __tag256 CFDRFCC4;                                
    union __tag256 CFDRFCC5;                                
    union __tag256 CFDRFCC6;                                
    union __tag256 CFDRFCC7;                                
    union __tag256 CFDRFSTS0;                               
    union __tag256 CFDRFSTS1;                               
    union __tag256 CFDRFSTS2;                               
    union __tag256 CFDRFSTS3;                               
    union __tag256 CFDRFSTS4;                               
    union __tag256 CFDRFSTS5;                               
    union __tag256 CFDRFSTS6;                               
    union __tag256 CFDRFSTS7;                               
    union __tag256 CFDRFPCTR0;                              
    union __tag256 CFDRFPCTR1;                              
    union __tag256 CFDRFPCTR2;                              
    union __tag256 CFDRFPCTR3;                              
    union __tag256 CFDRFPCTR4;                              
    union __tag256 CFDRFPCTR5;                              
    union __tag256 CFDRFPCTR6;                              
    union __tag256 CFDRFPCTR7;                              
    union __tag256 CFDCFCC0;                                
    union __tag256 CFDCFCC1;                                
    union __tag256 CFDCFCC2;                                
    union __tag256 CFDCFCC3;                                
    union __tag256 CFDCFCC4;                                
    union __tag256 CFDCFCC5;                                
    union __tag256 CFDCFCC6;                                
    union __tag256 CFDCFCC7;                                
    union __tag256 CFDCFCC8;                                
    union __tag256 CFDCFCC9;                                
    union __tag256 CFDCFCC10;                               
    union __tag256 CFDCFCC11;                               
    union __tag256 CFDCFCC12;                               
    union __tag256 CFDCFCC13;                               
    union __tag256 CFDCFCC14;                               
    union __tag256 CFDCFCC15;                               
    union __tag256 CFDCFCC16;                               
    union __tag256 CFDCFCC17;                               
    unsigned char  dummy301[24];                            
    union __tag256 CFDCFSTS0;                               
    union __tag256 CFDCFSTS1;                               
    union __tag256 CFDCFSTS2;                               
    union __tag256 CFDCFSTS3;                               
    union __tag256 CFDCFSTS4;                               
    union __tag256 CFDCFSTS5;                               
    union __tag256 CFDCFSTS6;                               
    union __tag256 CFDCFSTS7;                               
    union __tag256 CFDCFSTS8;                               
    union __tag256 CFDCFSTS9;                               
    union __tag256 CFDCFSTS10;                              
    union __tag256 CFDCFSTS11;                              
    union __tag256 CFDCFSTS12;                              
    union __tag256 CFDCFSTS13;                              
    union __tag256 CFDCFSTS14;                              
    union __tag256 CFDCFSTS15;                              
    union __tag256 CFDCFSTS16;                              
    union __tag256 CFDCFSTS17;                              
    unsigned char  dummy302[24];                            
    union __tag256 CFDCFPCTR0;                              
    union __tag256 CFDCFPCTR1;                              
    union __tag256 CFDCFPCTR2;                              
    union __tag256 CFDCFPCTR3;                              
    union __tag256 CFDCFPCTR4;                              
    union __tag256 CFDCFPCTR5;                              
    union __tag256 CFDCFPCTR6;                              
    union __tag256 CFDCFPCTR7;                              
    union __tag256 CFDCFPCTR8;                              
    union __tag256 CFDCFPCTR9;                              
    union __tag256 CFDCFPCTR10;                             
    union __tag256 CFDCFPCTR11;                             
    union __tag256 CFDCFPCTR12;                             
    union __tag256 CFDCFPCTR13;                             
    union __tag256 CFDCFPCTR14;                             
    union __tag256 CFDCFPCTR15;                             
    union __tag256 CFDCFPCTR16;                             
    union __tag256 CFDCFPCTR17;                             
    unsigned char  dummy303[24];                            
    union __tag256 CFDFESTS;                                
    union __tag256 CFDFFSTS;                                
    union __tag256 CFDFMSTS;                                
    union __tag256 CFDRFISTS;                               
    union __tag256 CFDCFRISTS;                              
    union __tag256 CFDCFTISTS;                              
    unsigned char  CFDTMC0;                                 
    unsigned char  CFDTMC1;                                 
    unsigned char  CFDTMC2;                                 
    unsigned char  CFDTMC3;                                 
    unsigned char  CFDTMC4;                                 
    unsigned char  CFDTMC5;                                 
    unsigned char  CFDTMC6;                                 
    unsigned char  CFDTMC7;                                 
    unsigned char  CFDTMC8;                                 
    unsigned char  CFDTMC9;                                 
    unsigned char  CFDTMC10;                                
    unsigned char  CFDTMC11;                                
    unsigned char  CFDTMC12;                                
    unsigned char  CFDTMC13;                                
    unsigned char  CFDTMC14;                                
    unsigned char  CFDTMC15;                                
    unsigned char  CFDTMC16;                                
    unsigned char  CFDTMC17;                                
    unsigned char  CFDTMC18;                                
    unsigned char  CFDTMC19;                                
    unsigned char  CFDTMC20;                                
    unsigned char  CFDTMC21;                                
    unsigned char  CFDTMC22;                                
    unsigned char  CFDTMC23;                                
    unsigned char  CFDTMC24;                                
    unsigned char  CFDTMC25;                                
    unsigned char  CFDTMC26;                                
    unsigned char  CFDTMC27;                                
    unsigned char  CFDTMC28;                                
    unsigned char  CFDTMC29;                                
    unsigned char  CFDTMC30;                                
    unsigned char  CFDTMC31;                                
    unsigned char  CFDTMC32;                                
    unsigned char  CFDTMC33;                                
    unsigned char  CFDTMC34;                                
    unsigned char  CFDTMC35;                                
    unsigned char  CFDTMC36;                                
    unsigned char  CFDTMC37;                                
    unsigned char  CFDTMC38;                                
    unsigned char  CFDTMC39;                                
    unsigned char  CFDTMC40;                                
    unsigned char  CFDTMC41;                                
    unsigned char  CFDTMC42;                                
    unsigned char  CFDTMC43;                                
    unsigned char  CFDTMC44;                                
    unsigned char  CFDTMC45;                                
    unsigned char  CFDTMC46;                                
    unsigned char  CFDTMC47;                                
    unsigned char  CFDTMC48;                                
    unsigned char  CFDTMC49;                                
    unsigned char  CFDTMC50;                                
    unsigned char  CFDTMC51;                                
    unsigned char  CFDTMC52;                                
    unsigned char  CFDTMC53;                                
    unsigned char  CFDTMC54;                                
    unsigned char  CFDTMC55;                                
    unsigned char  CFDTMC56;                                
    unsigned char  CFDTMC57;                                
    unsigned char  CFDTMC58;                                
    unsigned char  CFDTMC59;                                
    unsigned char  CFDTMC60;                                
    unsigned char  CFDTMC61;                                
    unsigned char  CFDTMC62;                                
    unsigned char  CFDTMC63;                                
    unsigned char  CFDTMC64;                                
    unsigned char  CFDTMC65;                                
    unsigned char  CFDTMC66;                                
    unsigned char  CFDTMC67;                                
    unsigned char  CFDTMC68;                                
    unsigned char  CFDTMC69;                                
    unsigned char  CFDTMC70;                                
    unsigned char  CFDTMC71;                                
    unsigned char  CFDTMC72;                                
    unsigned char  CFDTMC73;                                
    unsigned char  CFDTMC74;                                
    unsigned char  CFDTMC75;                                
    unsigned char  CFDTMC76;                                
    unsigned char  CFDTMC77;                                
    unsigned char  CFDTMC78;                                
    unsigned char  CFDTMC79;                                
    unsigned char  CFDTMC80;                                
    unsigned char  CFDTMC81;                                
    unsigned char  CFDTMC82;                                
    unsigned char  CFDTMC83;                                
    unsigned char  CFDTMC84;                                
    unsigned char  CFDTMC85;                                
    unsigned char  CFDTMC86;                                
    unsigned char  CFDTMC87;                                
    unsigned char  CFDTMC88;                                
    unsigned char  CFDTMC89;                                
    unsigned char  CFDTMC90;                                
    unsigned char  CFDTMC91;                                
    unsigned char  CFDTMC92;                                
    unsigned char  CFDTMC93;                                
    unsigned char  CFDTMC94;                                
    unsigned char  CFDTMC95;                                
    unsigned char  dummy304[32];                            
    unsigned char  CFDTMSTS0;                               
    unsigned char  CFDTMSTS1;                               
    unsigned char  CFDTMSTS2;                               
    unsigned char  CFDTMSTS3;                               
    unsigned char  CFDTMSTS4;                               
    unsigned char  CFDTMSTS5;                               
    unsigned char  CFDTMSTS6;                               
    unsigned char  CFDTMSTS7;                               
    unsigned char  CFDTMSTS8;                               
    unsigned char  CFDTMSTS9;                               
    unsigned char  CFDTMSTS10;                              
    unsigned char  CFDTMSTS11;                              
    unsigned char  CFDTMSTS12;                              
    unsigned char  CFDTMSTS13;                              
    unsigned char  CFDTMSTS14;                              
    unsigned char  CFDTMSTS15;                              
    unsigned char  CFDTMSTS16;                              
    unsigned char  CFDTMSTS17;                              
    unsigned char  CFDTMSTS18;                              
    unsigned char  CFDTMSTS19;                              
    unsigned char  CFDTMSTS20;                              
    unsigned char  CFDTMSTS21;                              
    unsigned char  CFDTMSTS22;                              
    unsigned char  CFDTMSTS23;                              
    unsigned char  CFDTMSTS24;                              
    unsigned char  CFDTMSTS25;                              
    unsigned char  CFDTMSTS26;                              
    unsigned char  CFDTMSTS27;                              
    unsigned char  CFDTMSTS28;                              
    unsigned char  CFDTMSTS29;                              
    unsigned char  CFDTMSTS30;                              
    unsigned char  CFDTMSTS31;                              
    unsigned char  CFDTMSTS32;                              
    unsigned char  CFDTMSTS33;                              
    unsigned char  CFDTMSTS34;                              
    unsigned char  CFDTMSTS35;                              
    unsigned char  CFDTMSTS36;                              
    unsigned char  CFDTMSTS37;                              
    unsigned char  CFDTMSTS38;                              
    unsigned char  CFDTMSTS39;                              
    unsigned char  CFDTMSTS40;                              
    unsigned char  CFDTMSTS41;                              
    unsigned char  CFDTMSTS42;                              
    unsigned char  CFDTMSTS43;                              
    unsigned char  CFDTMSTS44;                              
    unsigned char  CFDTMSTS45;                              
    unsigned char  CFDTMSTS46;                              
    unsigned char  CFDTMSTS47;                              
    unsigned char  CFDTMSTS48;                              
    unsigned char  CFDTMSTS49;                              
    unsigned char  CFDTMSTS50;                              
    unsigned char  CFDTMSTS51;                              
    unsigned char  CFDTMSTS52;                              
    unsigned char  CFDTMSTS53;                              
    unsigned char  CFDTMSTS54;                              
    unsigned char  CFDTMSTS55;                              
    unsigned char  CFDTMSTS56;                              
    unsigned char  CFDTMSTS57;                              
    unsigned char  CFDTMSTS58;                              
    unsigned char  CFDTMSTS59;                              
    unsigned char  CFDTMSTS60;                              
    unsigned char  CFDTMSTS61;                              
    unsigned char  CFDTMSTS62;                              
    unsigned char  CFDTMSTS63;                              
    unsigned char  CFDTMSTS64;                              
    unsigned char  CFDTMSTS65;                              
    unsigned char  CFDTMSTS66;                              
    unsigned char  CFDTMSTS67;                              
    unsigned char  CFDTMSTS68;                              
    unsigned char  CFDTMSTS69;                              
    unsigned char  CFDTMSTS70;                              
    unsigned char  CFDTMSTS71;                              
    unsigned char  CFDTMSTS72;                              
    unsigned char  CFDTMSTS73;                              
    unsigned char  CFDTMSTS74;                              
    unsigned char  CFDTMSTS75;                              
    unsigned char  CFDTMSTS76;                              
    unsigned char  CFDTMSTS77;                              
    unsigned char  CFDTMSTS78;                              
    unsigned char  CFDTMSTS79;                              
    unsigned char  CFDTMSTS80;                              
    unsigned char  CFDTMSTS81;                              
    unsigned char  CFDTMSTS82;                              
    unsigned char  CFDTMSTS83;                              
    unsigned char  CFDTMSTS84;                              
    unsigned char  CFDTMSTS85;                              
    unsigned char  CFDTMSTS86;                              
    unsigned char  CFDTMSTS87;                              
    unsigned char  CFDTMSTS88;                              
    unsigned char  CFDTMSTS89;                              
    unsigned char  CFDTMSTS90;                              
    unsigned char  CFDTMSTS91;                              
    unsigned char  CFDTMSTS92;                              
    unsigned char  CFDTMSTS93;                              
    unsigned char  CFDTMSTS94;                              
    unsigned char  CFDTMSTS95;                              
    unsigned char  dummy305[32];                            
    union __tag256 CFDTMTRSTS0;                             
    union __tag256 CFDTMTRSTS1;                             
    union __tag256 CFDTMTRSTS2;                             
    unsigned char  dummy306[4];                             
    union __tag256 CFDTMTARSTS0;                            
    union __tag256 CFDTMTARSTS1;                            
    union __tag256 CFDTMTARSTS2;                            
    unsigned char  dummy307[4];                             
    union __tag256 CFDTMTCSTS0;                             
    union __tag256 CFDTMTCSTS1;                             
    union __tag256 CFDTMTCSTS2;                             
    unsigned char  dummy308[4];                             
    union __tag256 CFDTMTASTS0;                             
    union __tag256 CFDTMTASTS1;                             
    union __tag256 CFDTMTASTS2;                             
    unsigned char  dummy309[4];                             
    union __tag256 CFDTMIEC0;                               
    union __tag256 CFDTMIEC1;                               
    union __tag256 CFDTMIEC2;                               
    unsigned char  dummy310[4];                             
    union __tag256 CFDTXQCC0;                               
    union __tag256 CFDTXQCC1;                               
    union __tag256 CFDTXQCC2;                               
    union __tag256 CFDTXQCC3;                               
    union __tag256 CFDTXQCC4;                               
    union __tag256 CFDTXQCC5;                               
    unsigned char  dummy311[8];                             
    union __tag256 CFDTXQSTS0;                              
    union __tag256 CFDTXQSTS1;                              
    union __tag256 CFDTXQSTS2;                              
    union __tag256 CFDTXQSTS3;                              
    union __tag256 CFDTXQSTS4;                              
    union __tag256 CFDTXQSTS5;                              
    unsigned char  dummy312[8];                             
    union __tag256 CFDTXQPCTR0;                             
    union __tag256 CFDTXQPCTR1;                             
    union __tag256 CFDTXQPCTR2;                             
    union __tag256 CFDTXQPCTR3;                             
    union __tag256 CFDTXQPCTR4;                             
    union __tag256 CFDTXQPCTR5;                             
    unsigned char  dummy313[8];                             
    union __tag256 CFDTHLCC0;                               
    union __tag256 CFDTHLCC1;                               
    union __tag256 CFDTHLCC2;                               
    union __tag256 CFDTHLCC3;                               
    union __tag256 CFDTHLCC4;                               
    union __tag256 CFDTHLCC5;                               
    unsigned char  dummy314[8];                             
    union __tag256 CFDTHLSTS0;                              
    union __tag256 CFDTHLSTS1;                              
    union __tag256 CFDTHLSTS2;                              
    union __tag256 CFDTHLSTS3;                              
    union __tag256 CFDTHLSTS4;                              
    union __tag256 CFDTHLSTS5;                              
    unsigned char  dummy315[8];                             
    union __tag256 CFDTHLPCTR0;                             
    union __tag256 CFDTHLPCTR1;                             
    union __tag256 CFDTHLPCTR2;                             
    union __tag256 CFDTHLPCTR3;                             
    union __tag256 CFDTHLPCTR4;                             
    union __tag256 CFDTHLPCTR5;                             
    unsigned char  dummy316[8];                             
    union __tag256 CFDGTINTSTS0;                            
    union __tag256 CFDGTINTSTS1;                            
    union __tag256 CFDGTSTCFG;                              
    union __tag256 CFDGTSTCTR;                              
    unsigned char  dummy317[4];                             
    union __tag256 CFDGFDCFG;                               
    unsigned char  dummy318[4];                             
    union __tag264 CFDGLOCKK;                               
    unsigned char  dummy319[16];                            
    union __tag256 CFDCDTCT;                                
    union __tag256 CFDCDTSTS;                               
    unsigned char  dummy320[100];                           
    union __tag256 CFDGRMCFG;                               
    union __tag256 CFDC0DCFG;                               
    union __tag256 CFDC0FDCFG;                              
    union __tag256 CFDC0FDCTR;                              
    union __tag256 CFDC0FDSTS;                              
    union __tag256 CFDC0FDCRC;                              
    unsigned char  dummy321[12];                            
    union __tag256 CFDC1DCFG;                               
    union __tag256 CFDC1FDCFG;                              
    union __tag256 CFDC1FDCTR;                              
    union __tag256 CFDC1FDSTS;                              
    union __tag256 CFDC1FDCRC;                              
    unsigned char  dummy322[12];                            
    union __tag256 CFDC2DCFG;                               
    union __tag256 CFDC2FDCFG;                              
    union __tag256 CFDC2FDCTR;                              
    union __tag256 CFDC2FDSTS;                              
    union __tag256 CFDC2FDCRC;                              
    unsigned char  dummy323[12];                            
    union __tag256 CFDC3DCFG;                               
    union __tag256 CFDC3FDCFG;                              
    union __tag256 CFDC3FDCTR;                              
    union __tag256 CFDC3FDSTS;                              
    union __tag256 CFDC3FDCRC;                              
    unsigned char  dummy324[12];                            
    union __tag256 CFDC4DCFG;                               
    union __tag256 CFDC4FDCFG;                              
    union __tag256 CFDC4FDCTR;                              
    union __tag256 CFDC4FDSTS;                              
    union __tag256 CFDC4FDCRC;                              
    unsigned char  dummy325[12];                            
    union __tag256 CFDC5DCFG;                               
    union __tag256 CFDC5FDCFG;                              
    union __tag256 CFDC5FDCTR;                              
    union __tag256 CFDC5FDSTS;                              
    union __tag256 CFDC5FDCRC;                              
    unsigned char  dummy326[2636];                          
    union __tag256 CFDGAFLID0;                              
    union __tag256 CFDGAFLM0;                               
    union __tag256 CFDGAFLP0_0;                             
    union __tag256 CFDGAFLP1_0;                             
    union __tag256 CFDGAFLID1;                              
    union __tag256 CFDGAFLM1;                               
    union __tag256 CFDGAFLP0_1;                             
    union __tag256 CFDGAFLP1_1;                             
    union __tag256 CFDGAFLID2;                              
    union __tag256 CFDGAFLM2;                               
    union __tag256 CFDGAFLP0_2;                             
    union __tag256 CFDGAFLP1_2;                             
    union __tag256 CFDGAFLID3;                              
    union __tag256 CFDGAFLM3;                               
    union __tag256 CFDGAFLP0_3;                             
    union __tag256 CFDGAFLP1_3;                             
    union __tag256 CFDGAFLID4;                              
    union __tag256 CFDGAFLM4;                               
    union __tag256 CFDGAFLP0_4;                             
    union __tag256 CFDGAFLP1_4;                             
    union __tag256 CFDGAFLID5;                              
    union __tag256 CFDGAFLM5;                               
    union __tag256 CFDGAFLP0_5;                             
    union __tag256 CFDGAFLP1_5;                             
    union __tag256 CFDGAFLID6;                              
    union __tag256 CFDGAFLM6;                               
    union __tag256 CFDGAFLP0_6;                             
    union __tag256 CFDGAFLP1_6;                             
    union __tag256 CFDGAFLID7;                              
    union __tag256 CFDGAFLM7;                               
    union __tag256 CFDGAFLP0_7;                             
    union __tag256 CFDGAFLP1_7;                             
    union __tag256 CFDGAFLID8;                              
    union __tag256 CFDGAFLM8;                               
    union __tag256 CFDGAFLP0_8;                             
    union __tag256 CFDGAFLP1_8;                             
    union __tag256 CFDGAFLID9;                              
    union __tag256 CFDGAFLM9;                               
    union __tag256 CFDGAFLP0_9;                             
    union __tag256 CFDGAFLP1_9;                             
    union __tag256 CFDGAFLID10;                             
    union __tag256 CFDGAFLM10;                              
    union __tag256 CFDGAFLP0_10;                            
    union __tag256 CFDGAFLP1_10;                            
    union __tag256 CFDGAFLID11;                             
    union __tag256 CFDGAFLM11;                              
    union __tag256 CFDGAFLP0_11;                            
    union __tag256 CFDGAFLP1_11;                            
    union __tag256 CFDGAFLID12;                             
    union __tag256 CFDGAFLM12;                              
    union __tag256 CFDGAFLP0_12;                            
    union __tag256 CFDGAFLP1_12;                            
    union __tag256 CFDGAFLID13;                             
    union __tag256 CFDGAFLM13;                              
    union __tag256 CFDGAFLP0_13;                            
    union __tag256 CFDGAFLP1_13;                            
    union __tag256 CFDGAFLID14;                             
    union __tag256 CFDGAFLM14;                              
    union __tag256 CFDGAFLP0_14;                            
    union __tag256 CFDGAFLP1_14;                            
    union __tag256 CFDGAFLID15;                             
    union __tag256 CFDGAFLM15;                              
    union __tag256 CFDGAFLP0_15;                            
    union __tag256 CFDGAFLP1_15;                            
    unsigned char  dummy327[3840];                          
    union __tag256 CFDRMID0;                                
    union __tag256 CFDRMPTR0;                               
    union __tag256 CFDRMFDSTS0;                             
    union __tag256 CFDRMDF0_0;                              
    union __tag256 CFDRMDF1_0;                              
    union __tag256 CFDRMDF2_0;                              
    union __tag256 CFDRMDF3_0;                              
    union __tag256 CFDRMDF4_0;                              
    union __tag256 CFDRMID1;                                
    union __tag256 CFDRMPTR1;                               
    union __tag256 CFDRMFDSTS1;                             
    union __tag256 CFDRMDF0_1;                              
    union __tag256 CFDRMDF1_1;                              
    union __tag256 CFDRMDF2_1;                              
    union __tag256 CFDRMDF3_1;                              
    union __tag256 CFDRMDF4_1;                              
    union __tag256 CFDRMID2;                                
    union __tag256 CFDRMPTR2;                               
    union __tag256 CFDRMFDSTS2;                             
    union __tag256 CFDRMDF0_2;                              
    union __tag256 CFDRMDF1_2;                              
    union __tag256 CFDRMDF2_2;                              
    union __tag256 CFDRMDF3_2;                              
    union __tag256 CFDRMDF4_2;                              
    union __tag256 CFDRMID3;                                
    union __tag256 CFDRMPTR3;                               
    union __tag256 CFDRMFDSTS3;                             
    union __tag256 CFDRMDF0_3;                              
    union __tag256 CFDRMDF1_3;                              
    union __tag256 CFDRMDF2_3;                              
    union __tag256 CFDRMDF3_3;                              
    union __tag256 CFDRMDF4_3;                              
    union __tag256 CFDRMID4;                                
    union __tag256 CFDRMPTR4;                               
    union __tag256 CFDRMFDSTS4;                             
    union __tag256 CFDRMDF0_4;                              
    union __tag256 CFDRMDF1_4;                              
    union __tag256 CFDRMDF2_4;                              
    union __tag256 CFDRMDF3_4;                              
    union __tag256 CFDRMDF4_4;                              
    union __tag256 CFDRMID5;                                
    union __tag256 CFDRMPTR5;                               
    union __tag256 CFDRMFDSTS5;                             
    union __tag256 CFDRMDF0_5;                              
    union __tag256 CFDRMDF1_5;                              
    union __tag256 CFDRMDF2_5;                              
    union __tag256 CFDRMDF3_5;                              
    union __tag256 CFDRMDF4_5;                              
    union __tag256 CFDRMID6;                                
    union __tag256 CFDRMPTR6;                               
    union __tag256 CFDRMFDSTS6;                             
    union __tag256 CFDRMDF0_6;                              
    union __tag256 CFDRMDF1_6;                              
    union __tag256 CFDRMDF2_6;                              
    union __tag256 CFDRMDF3_6;                              
    union __tag256 CFDRMDF4_6;                              
    union __tag256 CFDRMID7;                                
    union __tag256 CFDRMPTR7;                               
    union __tag256 CFDRMFDSTS7;                             
    union __tag256 CFDRMDF0_7;                              
    union __tag256 CFDRMDF1_7;                              
    union __tag256 CFDRMDF2_7;                              
    union __tag256 CFDRMDF3_7;                              
    union __tag256 CFDRMDF4_7;                              
    union __tag256 CFDRMID8;                                
    union __tag256 CFDRMPTR8;                               
    union __tag256 CFDRMFDSTS8;                             
    union __tag256 CFDRMDF0_8;                              
    union __tag256 CFDRMDF1_8;                              
    union __tag256 CFDRMDF2_8;                              
    union __tag256 CFDRMDF3_8;                              
    union __tag256 CFDRMDF4_8;                              
    union __tag256 CFDRMID9;                                
    union __tag256 CFDRMPTR9;                               
    union __tag256 CFDRMFDSTS9;                             
    union __tag256 CFDRMDF0_9;                              
    union __tag256 CFDRMDF1_9;                              
    union __tag256 CFDRMDF2_9;                              
    union __tag256 CFDRMDF3_9;                              
    union __tag256 CFDRMDF4_9;                              
    union __tag256 CFDRMID10;                               
    union __tag256 CFDRMPTR10;                              
    union __tag256 CFDRMFDSTS10;                            
    union __tag256 CFDRMDF0_10;                             
    union __tag256 CFDRMDF1_10;                             
    union __tag256 CFDRMDF2_10;                             
    union __tag256 CFDRMDF3_10;                             
    union __tag256 CFDRMDF4_10;                             
    union __tag256 CFDRMID11;                               
    union __tag256 CFDRMPTR11;                              
    union __tag256 CFDRMFDSTS11;                            
    union __tag256 CFDRMDF0_11;                             
    union __tag256 CFDRMDF1_11;                             
    union __tag256 CFDRMDF2_11;                             
    union __tag256 CFDRMDF3_11;                             
    union __tag256 CFDRMDF4_11;                             
    union __tag256 CFDRMID12;                               
    union __tag256 CFDRMPTR12;                              
    union __tag256 CFDRMFDSTS12;                            
    union __tag256 CFDRMDF0_12;                             
    union __tag256 CFDRMDF1_12;                             
    union __tag256 CFDRMDF2_12;                             
    union __tag256 CFDRMDF3_12;                             
    union __tag256 CFDRMDF4_12;                             
    union __tag256 CFDRMID13;                               
    union __tag256 CFDRMPTR13;                              
    union __tag256 CFDRMFDSTS13;                            
    union __tag256 CFDRMDF0_13;                             
    union __tag256 CFDRMDF1_13;                             
    union __tag256 CFDRMDF2_13;                             
    union __tag256 CFDRMDF3_13;                             
    union __tag256 CFDRMDF4_13;                             
    union __tag256 CFDRMID14;                               
    union __tag256 CFDRMPTR14;                              
    union __tag256 CFDRMFDSTS14;                            
    union __tag256 CFDRMDF0_14;                             
    union __tag256 CFDRMDF1_14;                             
    union __tag256 CFDRMDF2_14;                             
    union __tag256 CFDRMDF3_14;                             
    union __tag256 CFDRMDF4_14;                             
    union __tag256 CFDRMID15;                               
    union __tag256 CFDRMPTR15;                              
    union __tag256 CFDRMFDSTS15;                            
    union __tag256 CFDRMDF0_15;                             
    union __tag256 CFDRMDF1_15;                             
    union __tag256 CFDRMDF2_15;                             
    union __tag256 CFDRMDF3_15;                             
    union __tag256 CFDRMDF4_15;                             
    union __tag256 CFDRMID16;                               
    union __tag256 CFDRMPTR16;                              
    union __tag256 CFDRMFDSTS16;                            
    union __tag256 CFDRMDF0_16;                             
    union __tag256 CFDRMDF1_16;                             
    union __tag256 CFDRMDF2_16;                             
    union __tag256 CFDRMDF3_16;                             
    union __tag256 CFDRMDF4_16;                             
    union __tag256 CFDRMID17;                               
    union __tag256 CFDRMPTR17;                              
    union __tag256 CFDRMFDSTS17;                            
    union __tag256 CFDRMDF0_17;                             
    union __tag256 CFDRMDF1_17;                             
    union __tag256 CFDRMDF2_17;                             
    union __tag256 CFDRMDF3_17;                             
    union __tag256 CFDRMDF4_17;                             
    union __tag256 CFDRMID18;                               
    union __tag256 CFDRMPTR18;                              
    union __tag256 CFDRMFDSTS18;                            
    union __tag256 CFDRMDF0_18;                             
    union __tag256 CFDRMDF1_18;                             
    union __tag256 CFDRMDF2_18;                             
    union __tag256 CFDRMDF3_18;                             
    union __tag256 CFDRMDF4_18;                             
    union __tag256 CFDRMID19;                               
    union __tag256 CFDRMPTR19;                              
    union __tag256 CFDRMFDSTS19;                            
    union __tag256 CFDRMDF0_19;                             
    union __tag256 CFDRMDF1_19;                             
    union __tag256 CFDRMDF2_19;                             
    union __tag256 CFDRMDF3_19;                             
    union __tag256 CFDRMDF4_19;                             
    union __tag256 CFDRMID20;                               
    union __tag256 CFDRMPTR20;                              
    union __tag256 CFDRMFDSTS20;                            
    union __tag256 CFDRMDF0_20;                             
    union __tag256 CFDRMDF1_20;                             
    union __tag256 CFDRMDF2_20;                             
    union __tag256 CFDRMDF3_20;                             
    union __tag256 CFDRMDF4_20;                             
    union __tag256 CFDRMID21;                               
    union __tag256 CFDRMPTR21;                              
    union __tag256 CFDRMFDSTS21;                            
    union __tag256 CFDRMDF0_21;                             
    union __tag256 CFDRMDF1_21;                             
    union __tag256 CFDRMDF2_21;                             
    union __tag256 CFDRMDF3_21;                             
    union __tag256 CFDRMDF4_21;                             
    union __tag256 CFDRMID22;                               
    union __tag256 CFDRMPTR22;                              
    union __tag256 CFDRMFDSTS22;                            
    union __tag256 CFDRMDF0_22;                             
    union __tag256 CFDRMDF1_22;                             
    union __tag256 CFDRMDF2_22;                             
    union __tag256 CFDRMDF3_22;                             
    union __tag256 CFDRMDF4_22;                             
    union __tag256 CFDRMID23;                               
    union __tag256 CFDRMPTR23;                              
    union __tag256 CFDRMFDSTS23;                            
    union __tag256 CFDRMDF0_23;                             
    union __tag256 CFDRMDF1_23;                             
    union __tag256 CFDRMDF2_23;                             
    union __tag256 CFDRMDF3_23;                             
    union __tag256 CFDRMDF4_23;                             
    union __tag256 CFDRMID24;                               
    union __tag256 CFDRMPTR24;                              
    union __tag256 CFDRMFDSTS24;                            
    union __tag256 CFDRMDF0_24;                             
    union __tag256 CFDRMDF1_24;                             
    union __tag256 CFDRMDF2_24;                             
    union __tag256 CFDRMDF3_24;                             
    union __tag256 CFDRMDF4_24;                             
    union __tag256 CFDRMID25;                               
    union __tag256 CFDRMPTR25;                              
    union __tag256 CFDRMFDSTS25;                            
    union __tag256 CFDRMDF0_25;                             
    union __tag256 CFDRMDF1_25;                             
    union __tag256 CFDRMDF2_25;                             
    union __tag256 CFDRMDF3_25;                             
    union __tag256 CFDRMDF4_25;                             
    union __tag256 CFDRMID26;                               
    union __tag256 CFDRMPTR26;                              
    union __tag256 CFDRMFDSTS26;                            
    union __tag256 CFDRMDF0_26;                             
    union __tag256 CFDRMDF1_26;                             
    union __tag256 CFDRMDF2_26;                             
    union __tag256 CFDRMDF3_26;                             
    union __tag256 CFDRMDF4_26;                             
    union __tag256 CFDRMID27;                               
    union __tag256 CFDRMPTR27;                              
    union __tag256 CFDRMFDSTS27;                            
    union __tag256 CFDRMDF0_27;                             
    union __tag256 CFDRMDF1_27;                             
    union __tag256 CFDRMDF2_27;                             
    union __tag256 CFDRMDF3_27;                             
    union __tag256 CFDRMDF4_27;                             
    union __tag256 CFDRMID28;                               
    union __tag256 CFDRMPTR28;                              
    union __tag256 CFDRMFDSTS28;                            
    union __tag256 CFDRMDF0_28;                             
    union __tag256 CFDRMDF1_28;                             
    union __tag256 CFDRMDF2_28;                             
    union __tag256 CFDRMDF3_28;                             
    union __tag256 CFDRMDF4_28;                             
    union __tag256 CFDRMID29;                               
    union __tag256 CFDRMPTR29;                              
    union __tag256 CFDRMFDSTS29;                            
    union __tag256 CFDRMDF0_29;                             
    union __tag256 CFDRMDF1_29;                             
    union __tag256 CFDRMDF2_29;                             
    union __tag256 CFDRMDF3_29;                             
    union __tag256 CFDRMDF4_29;                             
    union __tag256 CFDRMID30;                               
    union __tag256 CFDRMPTR30;                              
    union __tag256 CFDRMFDSTS30;                            
    union __tag256 CFDRMDF0_30;                             
    union __tag256 CFDRMDF1_30;                             
    union __tag256 CFDRMDF2_30;                             
    union __tag256 CFDRMDF3_30;                             
    union __tag256 CFDRMDF4_30;                             
    union __tag256 CFDRMID31;                               
    union __tag256 CFDRMPTR31;                              
    union __tag256 CFDRMFDSTS31;                            
    union __tag256 CFDRMDF0_31;                             
    union __tag256 CFDRMDF1_31;                             
    union __tag256 CFDRMDF2_31;                             
    union __tag256 CFDRMDF3_31;                             
    union __tag256 CFDRMDF4_31;                             
    union __tag256 CFDRMID32;                               
    union __tag256 CFDRMPTR32;                              
    union __tag256 CFDRMFDSTS32;                            
    union __tag256 CFDRMDF0_32;                             
    union __tag256 CFDRMDF1_32;                             
    union __tag256 CFDRMDF2_32;                             
    union __tag256 CFDRMDF3_32;                             
    union __tag256 CFDRMDF4_32;                             
    union __tag256 CFDRMID33;                               
    union __tag256 CFDRMPTR33;                              
    union __tag256 CFDRMFDSTS33;                            
    union __tag256 CFDRMDF0_33;                             
    union __tag256 CFDRMDF1_33;                             
    union __tag256 CFDRMDF2_33;                             
    union __tag256 CFDRMDF3_33;                             
    union __tag256 CFDRMDF4_33;                             
    union __tag256 CFDRMID34;                               
    union __tag256 CFDRMPTR34;                              
    union __tag256 CFDRMFDSTS34;                            
    union __tag256 CFDRMDF0_34;                             
    union __tag256 CFDRMDF1_34;                             
    union __tag256 CFDRMDF2_34;                             
    union __tag256 CFDRMDF3_34;                             
    union __tag256 CFDRMDF4_34;                             
    union __tag256 CFDRMID35;                               
    union __tag256 CFDRMPTR35;                              
    union __tag256 CFDRMFDSTS35;                            
    union __tag256 CFDRMDF0_35;                             
    union __tag256 CFDRMDF1_35;                             
    union __tag256 CFDRMDF2_35;                             
    union __tag256 CFDRMDF3_35;                             
    union __tag256 CFDRMDF4_35;                             
    union __tag256 CFDRMID36;                               
    union __tag256 CFDRMPTR36;                              
    union __tag256 CFDRMFDSTS36;                            
    union __tag256 CFDRMDF0_36;                             
    union __tag256 CFDRMDF1_36;                             
    union __tag256 CFDRMDF2_36;                             
    union __tag256 CFDRMDF3_36;                             
    union __tag256 CFDRMDF4_36;                             
    union __tag256 CFDRMID37;                               
    union __tag256 CFDRMPTR37;                              
    union __tag256 CFDRMFDSTS37;                            
    union __tag256 CFDRMDF0_37;                             
    union __tag256 CFDRMDF1_37;                             
    union __tag256 CFDRMDF2_37;                             
    union __tag256 CFDRMDF3_37;                             
    union __tag256 CFDRMDF4_37;                             
    union __tag256 CFDRMID38;                               
    union __tag256 CFDRMPTR38;                              
    union __tag256 CFDRMFDSTS38;                            
    union __tag256 CFDRMDF0_38;                             
    union __tag256 CFDRMDF1_38;                             
    union __tag256 CFDRMDF2_38;                             
    union __tag256 CFDRMDF3_38;                             
    union __tag256 CFDRMDF4_38;                             
    union __tag256 CFDRMID39;                               
    union __tag256 CFDRMPTR39;                              
    union __tag256 CFDRMFDSTS39;                            
    union __tag256 CFDRMDF0_39;                             
    union __tag256 CFDRMDF1_39;                             
    union __tag256 CFDRMDF2_39;                             
    union __tag256 CFDRMDF3_39;                             
    union __tag256 CFDRMDF4_39;                             
    union __tag256 CFDRMID40;                               
    union __tag256 CFDRMPTR40;                              
    union __tag256 CFDRMFDSTS40;                            
    union __tag256 CFDRMDF0_40;                             
    union __tag256 CFDRMDF1_40;                             
    union __tag256 CFDRMDF2_40;                             
    union __tag256 CFDRMDF3_40;                             
    union __tag256 CFDRMDF4_40;                             
    union __tag256 CFDRMID41;                               
    union __tag256 CFDRMPTR41;                              
    union __tag256 CFDRMFDSTS41;                            
    union __tag256 CFDRMDF0_41;                             
    union __tag256 CFDRMDF1_41;                             
    union __tag256 CFDRMDF2_41;                             
    union __tag256 CFDRMDF3_41;                             
    union __tag256 CFDRMDF4_41;                             
    union __tag256 CFDRMID42;                               
    union __tag256 CFDRMPTR42;                              
    union __tag256 CFDRMFDSTS42;                            
    union __tag256 CFDRMDF0_42;                             
    union __tag256 CFDRMDF1_42;                             
    union __tag256 CFDRMDF2_42;                             
    union __tag256 CFDRMDF3_42;                             
    union __tag256 CFDRMDF4_42;                             
    union __tag256 CFDRMID43;                               
    union __tag256 CFDRMPTR43;                              
    union __tag256 CFDRMFDSTS43;                            
    union __tag256 CFDRMDF0_43;                             
    union __tag256 CFDRMDF1_43;                             
    union __tag256 CFDRMDF2_43;                             
    union __tag256 CFDRMDF3_43;                             
    union __tag256 CFDRMDF4_43;                             
    union __tag256 CFDRMID44;                               
    union __tag256 CFDRMPTR44;                              
    union __tag256 CFDRMFDSTS44;                            
    union __tag256 CFDRMDF0_44;                             
    union __tag256 CFDRMDF1_44;                             
    union __tag256 CFDRMDF2_44;                             
    union __tag256 CFDRMDF3_44;                             
    union __tag256 CFDRMDF4_44;                             
    union __tag256 CFDRMID45;                               
    union __tag256 CFDRMPTR45;                              
    union __tag256 CFDRMFDSTS45;                            
    union __tag256 CFDRMDF0_45;                             
    union __tag256 CFDRMDF1_45;                             
    union __tag256 CFDRMDF2_45;                             
    union __tag256 CFDRMDF3_45;                             
    union __tag256 CFDRMDF4_45;                             
    union __tag256 CFDRMID46;                               
    union __tag256 CFDRMPTR46;                              
    union __tag256 CFDRMFDSTS46;                            
    union __tag256 CFDRMDF0_46;                             
    union __tag256 CFDRMDF1_46;                             
    union __tag256 CFDRMDF2_46;                             
    union __tag256 CFDRMDF3_46;                             
    union __tag256 CFDRMDF4_46;                             
    union __tag256 CFDRMID47;                               
    union __tag256 CFDRMPTR47;                              
    union __tag256 CFDRMFDSTS47;                            
    union __tag256 CFDRMDF0_47;                             
    union __tag256 CFDRMDF1_47;                             
    union __tag256 CFDRMDF2_47;                             
    union __tag256 CFDRMDF3_47;                             
    union __tag256 CFDRMDF4_47;                             
    union __tag256 CFDRMID48;                               
    union __tag256 CFDRMPTR48;                              
    union __tag256 CFDRMFDSTS48;                            
    union __tag256 CFDRMDF0_48;                             
    union __tag256 CFDRMDF1_48;                             
    union __tag256 CFDRMDF2_48;                             
    union __tag256 CFDRMDF3_48;                             
    union __tag256 CFDRMDF4_48;                             
    union __tag256 CFDRMID49;                               
    union __tag256 CFDRMPTR49;                              
    union __tag256 CFDRMFDSTS49;                            
    union __tag256 CFDRMDF0_49;                             
    union __tag256 CFDRMDF1_49;                             
    union __tag256 CFDRMDF2_49;                             
    union __tag256 CFDRMDF3_49;                             
    union __tag256 CFDRMDF4_49;                             
    union __tag256 CFDRMID50;                               
    union __tag256 CFDRMPTR50;                              
    union __tag256 CFDRMFDSTS50;                            
    union __tag256 CFDRMDF0_50;                             
    union __tag256 CFDRMDF1_50;                             
    union __tag256 CFDRMDF2_50;                             
    union __tag256 CFDRMDF3_50;                             
    union __tag256 CFDRMDF4_50;                             
    union __tag256 CFDRMID51;                               
    union __tag256 CFDRMPTR51;                              
    union __tag256 CFDRMFDSTS51;                            
    union __tag256 CFDRMDF0_51;                             
    union __tag256 CFDRMDF1_51;                             
    union __tag256 CFDRMDF2_51;                             
    union __tag256 CFDRMDF3_51;                             
    union __tag256 CFDRMDF4_51;                             
    union __tag256 CFDRMID52;                               
    union __tag256 CFDRMPTR52;                              
    union __tag256 CFDRMFDSTS52;                            
    union __tag256 CFDRMDF0_52;                             
    union __tag256 CFDRMDF1_52;                             
    union __tag256 CFDRMDF2_52;                             
    union __tag256 CFDRMDF3_52;                             
    union __tag256 CFDRMDF4_52;                             
    union __tag256 CFDRMID53;                               
    union __tag256 CFDRMPTR53;                              
    union __tag256 CFDRMFDSTS53;                            
    union __tag256 CFDRMDF0_53;                             
    union __tag256 CFDRMDF1_53;                             
    union __tag256 CFDRMDF2_53;                             
    union __tag256 CFDRMDF3_53;                             
    union __tag256 CFDRMDF4_53;                             
    union __tag256 CFDRMID54;                               
    union __tag256 CFDRMPTR54;                              
    union __tag256 CFDRMFDSTS54;                            
    union __tag256 CFDRMDF0_54;                             
    union __tag256 CFDRMDF1_54;                             
    union __tag256 CFDRMDF2_54;                             
    union __tag256 CFDRMDF3_54;                             
    union __tag256 CFDRMDF4_54;                             
    union __tag256 CFDRMID55;                               
    union __tag256 CFDRMPTR55;                              
    union __tag256 CFDRMFDSTS55;                            
    union __tag256 CFDRMDF0_55;                             
    union __tag256 CFDRMDF1_55;                             
    union __tag256 CFDRMDF2_55;                             
    union __tag256 CFDRMDF3_55;                             
    union __tag256 CFDRMDF4_55;                             
    union __tag256 CFDRMID56;                               
    union __tag256 CFDRMPTR56;                              
    union __tag256 CFDRMFDSTS56;                            
    union __tag256 CFDRMDF0_56;                             
    union __tag256 CFDRMDF1_56;                             
    union __tag256 CFDRMDF2_56;                             
    union __tag256 CFDRMDF3_56;                             
    union __tag256 CFDRMDF4_56;                             
    union __tag256 CFDRMID57;                               
    union __tag256 CFDRMPTR57;                              
    union __tag256 CFDRMFDSTS57;                            
    union __tag256 CFDRMDF0_57;                             
    union __tag256 CFDRMDF1_57;                             
    union __tag256 CFDRMDF2_57;                             
    union __tag256 CFDRMDF3_57;                             
    union __tag256 CFDRMDF4_57;                             
    union __tag256 CFDRMID58;                               
    union __tag256 CFDRMPTR58;                              
    union __tag256 CFDRMFDSTS58;                            
    union __tag256 CFDRMDF0_58;                             
    union __tag256 CFDRMDF1_58;                             
    union __tag256 CFDRMDF2_58;                             
    union __tag256 CFDRMDF3_58;                             
    union __tag256 CFDRMDF4_58;                             
    union __tag256 CFDRMID59;                               
    union __tag256 CFDRMPTR59;                              
    union __tag256 CFDRMFDSTS59;                            
    union __tag256 CFDRMDF0_59;                             
    union __tag256 CFDRMDF1_59;                             
    union __tag256 CFDRMDF2_59;                             
    union __tag256 CFDRMDF3_59;                             
    union __tag256 CFDRMDF4_59;                             
    union __tag256 CFDRMID60;                               
    union __tag256 CFDRMPTR60;                              
    union __tag256 CFDRMFDSTS60;                            
    union __tag256 CFDRMDF0_60;                             
    union __tag256 CFDRMDF1_60;                             
    union __tag256 CFDRMDF2_60;                             
    union __tag256 CFDRMDF3_60;                             
    union __tag256 CFDRMDF4_60;                             
    union __tag256 CFDRMID61;                               
    union __tag256 CFDRMPTR61;                              
    union __tag256 CFDRMFDSTS61;                            
    union __tag256 CFDRMDF0_61;                             
    union __tag256 CFDRMDF1_61;                             
    union __tag256 CFDRMDF2_61;                             
    union __tag256 CFDRMDF3_61;                             
    union __tag256 CFDRMDF4_61;                             
    union __tag256 CFDRMID62;                               
    union __tag256 CFDRMPTR62;                              
    union __tag256 CFDRMFDSTS62;                            
    union __tag256 CFDRMDF0_62;                             
    union __tag256 CFDRMDF1_62;                             
    union __tag256 CFDRMDF2_62;                             
    union __tag256 CFDRMDF3_62;                             
    union __tag256 CFDRMDF4_62;                             
    union __tag256 CFDRMID63;                               
    union __tag256 CFDRMPTR63;                              
    union __tag256 CFDRMFDSTS63;                            
    union __tag256 CFDRMDF0_63;                             
    union __tag256 CFDRMDF1_63;                             
    union __tag256 CFDRMDF2_63;                             
    union __tag256 CFDRMDF3_63;                             
    union __tag256 CFDRMDF4_63;                             
    union __tag256 CFDRMID64;                               
    union __tag256 CFDRMPTR64;                              
    union __tag256 CFDRMFDSTS64;                            
    union __tag256 CFDRMDF0_64;                             
    union __tag256 CFDRMDF1_64;                             
    union __tag256 CFDRMDF2_64;                             
    union __tag256 CFDRMDF3_64;                             
    union __tag256 CFDRMDF4_64;                             
    union __tag256 CFDRMID65;                               
    union __tag256 CFDRMPTR65;                              
    union __tag256 CFDRMFDSTS65;                            
    union __tag256 CFDRMDF0_65;                             
    union __tag256 CFDRMDF1_65;                             
    union __tag256 CFDRMDF2_65;                             
    union __tag256 CFDRMDF3_65;                             
    union __tag256 CFDRMDF4_65;                             
    union __tag256 CFDRMID66;                               
    union __tag256 CFDRMPTR66;                              
    union __tag256 CFDRMFDSTS66;                            
    union __tag256 CFDRMDF0_66;                             
    union __tag256 CFDRMDF1_66;                             
    union __tag256 CFDRMDF2_66;                             
    union __tag256 CFDRMDF3_66;                             
    union __tag256 CFDRMDF4_66;                             
    union __tag256 CFDRMID67;                               
    union __tag256 CFDRMPTR67;                              
    union __tag256 CFDRMFDSTS67;                            
    union __tag256 CFDRMDF0_67;                             
    union __tag256 CFDRMDF1_67;                             
    union __tag256 CFDRMDF2_67;                             
    union __tag256 CFDRMDF3_67;                             
    union __tag256 CFDRMDF4_67;                             
    union __tag256 CFDRMID68;                               
    union __tag256 CFDRMPTR68;                              
    union __tag256 CFDRMFDSTS68;                            
    union __tag256 CFDRMDF0_68;                             
    union __tag256 CFDRMDF1_68;                             
    union __tag256 CFDRMDF2_68;                             
    union __tag256 CFDRMDF3_68;                             
    union __tag256 CFDRMDF4_68;                             
    union __tag256 CFDRMID69;                               
    union __tag256 CFDRMPTR69;                              
    union __tag256 CFDRMFDSTS69;                            
    union __tag256 CFDRMDF0_69;                             
    union __tag256 CFDRMDF1_69;                             
    union __tag256 CFDRMDF2_69;                             
    union __tag256 CFDRMDF3_69;                             
    union __tag256 CFDRMDF4_69;                             
    union __tag256 CFDRMID70;                               
    union __tag256 CFDRMPTR70;                              
    union __tag256 CFDRMFDSTS70;                            
    union __tag256 CFDRMDF0_70;                             
    union __tag256 CFDRMDF1_70;                             
    union __tag256 CFDRMDF2_70;                             
    union __tag256 CFDRMDF3_70;                             
    union __tag256 CFDRMDF4_70;                             
    union __tag256 CFDRMID71;                               
    union __tag256 CFDRMPTR71;                              
    union __tag256 CFDRMFDSTS71;                            
    union __tag256 CFDRMDF0_71;                             
    union __tag256 CFDRMDF1_71;                             
    union __tag256 CFDRMDF2_71;                             
    union __tag256 CFDRMDF3_71;                             
    union __tag256 CFDRMDF4_71;                             
    union __tag256 CFDRMID72;                               
    union __tag256 CFDRMPTR72;                              
    union __tag256 CFDRMFDSTS72;                            
    union __tag256 CFDRMDF0_72;                             
    union __tag256 CFDRMDF1_72;                             
    union __tag256 CFDRMDF2_72;                             
    union __tag256 CFDRMDF3_72;                             
    union __tag256 CFDRMDF4_72;                             
    union __tag256 CFDRMID73;                               
    union __tag256 CFDRMPTR73;                              
    union __tag256 CFDRMFDSTS73;                            
    union __tag256 CFDRMDF0_73;                             
    union __tag256 CFDRMDF1_73;                             
    union __tag256 CFDRMDF2_73;                             
    union __tag256 CFDRMDF3_73;                             
    union __tag256 CFDRMDF4_73;                             
    union __tag256 CFDRMID74;                               
    union __tag256 CFDRMPTR74;                              
    union __tag256 CFDRMFDSTS74;                            
    union __tag256 CFDRMDF0_74;                             
    union __tag256 CFDRMDF1_74;                             
    union __tag256 CFDRMDF2_74;                             
    union __tag256 CFDRMDF3_74;                             
    union __tag256 CFDRMDF4_74;                             
    union __tag256 CFDRMID75;                               
    union __tag256 CFDRMPTR75;                              
    union __tag256 CFDRMFDSTS75;                            
    union __tag256 CFDRMDF0_75;                             
    union __tag256 CFDRMDF1_75;                             
    union __tag256 CFDRMDF2_75;                             
    union __tag256 CFDRMDF3_75;                             
    union __tag256 CFDRMDF4_75;                             
    union __tag256 CFDRMID76;                               
    union __tag256 CFDRMPTR76;                              
    union __tag256 CFDRMFDSTS76;                            
    union __tag256 CFDRMDF0_76;                             
    union __tag256 CFDRMDF1_76;                             
    union __tag256 CFDRMDF2_76;                             
    union __tag256 CFDRMDF3_76;                             
    union __tag256 CFDRMDF4_76;                             
    union __tag256 CFDRMID77;                               
    union __tag256 CFDRMPTR77;                              
    union __tag256 CFDRMFDSTS77;                            
    union __tag256 CFDRMDF0_77;                             
    union __tag256 CFDRMDF1_77;                             
    union __tag256 CFDRMDF2_77;                             
    union __tag256 CFDRMDF3_77;                             
    union __tag256 CFDRMDF4_77;                             
    union __tag256 CFDRMID78;                               
    union __tag256 CFDRMPTR78;                              
    union __tag256 CFDRMFDSTS78;                            
    union __tag256 CFDRMDF0_78;                             
    union __tag256 CFDRMDF1_78;                             
    union __tag256 CFDRMDF2_78;                             
    union __tag256 CFDRMDF3_78;                             
    union __tag256 CFDRMDF4_78;                             
    union __tag256 CFDRMID79;                               
    union __tag256 CFDRMPTR79;                              
    union __tag256 CFDRMFDSTS79;                            
    union __tag256 CFDRMDF0_79;                             
    union __tag256 CFDRMDF1_79;                             
    union __tag256 CFDRMDF2_79;                             
    union __tag256 CFDRMDF3_79;                             
    union __tag256 CFDRMDF4_79;                             
    union __tag256 CFDRMID80;                               
    union __tag256 CFDRMPTR80;                              
    union __tag256 CFDRMFDSTS80;                            
    union __tag256 CFDRMDF0_80;                             
    union __tag256 CFDRMDF1_80;                             
    union __tag256 CFDRMDF2_80;                             
    union __tag256 CFDRMDF3_80;                             
    union __tag256 CFDRMDF4_80;                             
    union __tag256 CFDRMID81;                               
    union __tag256 CFDRMPTR81;                              
    union __tag256 CFDRMFDSTS81;                            
    union __tag256 CFDRMDF0_81;                             
    union __tag256 CFDRMDF1_81;                             
    union __tag256 CFDRMDF2_81;                             
    union __tag256 CFDRMDF3_81;                             
    union __tag256 CFDRMDF4_81;                             
    union __tag256 CFDRMID82;                               
    union __tag256 CFDRMPTR82;                              
    union __tag256 CFDRMFDSTS82;                            
    union __tag256 CFDRMDF0_82;                             
    union __tag256 CFDRMDF1_82;                             
    union __tag256 CFDRMDF2_82;                             
    union __tag256 CFDRMDF3_82;                             
    union __tag256 CFDRMDF4_82;                             
    union __tag256 CFDRMID83;                               
    union __tag256 CFDRMPTR83;                              
    union __tag256 CFDRMFDSTS83;                            
    union __tag256 CFDRMDF0_83;                             
    union __tag256 CFDRMDF1_83;                             
    union __tag256 CFDRMDF2_83;                             
    union __tag256 CFDRMDF3_83;                             
    union __tag256 CFDRMDF4_83;                             
    union __tag256 CFDRMID84;                               
    union __tag256 CFDRMPTR84;                              
    union __tag256 CFDRMFDSTS84;                            
    union __tag256 CFDRMDF0_84;                             
    union __tag256 CFDRMDF1_84;                             
    union __tag256 CFDRMDF2_84;                             
    union __tag256 CFDRMDF3_84;                             
    union __tag256 CFDRMDF4_84;                             
    union __tag256 CFDRMID85;                               
    union __tag256 CFDRMPTR85;                              
    union __tag256 CFDRMFDSTS85;                            
    union __tag256 CFDRMDF0_85;                             
    union __tag256 CFDRMDF1_85;                             
    union __tag256 CFDRMDF2_85;                             
    union __tag256 CFDRMDF3_85;                             
    union __tag256 CFDRMDF4_85;                             
    union __tag256 CFDRMID86;                               
    union __tag256 CFDRMPTR86;                              
    union __tag256 CFDRMFDSTS86;                            
    union __tag256 CFDRMDF0_86;                             
    union __tag256 CFDRMDF1_86;                             
    union __tag256 CFDRMDF2_86;                             
    union __tag256 CFDRMDF3_86;                             
    union __tag256 CFDRMDF4_86;                             
    union __tag256 CFDRMID87;                               
    union __tag256 CFDRMPTR87;                              
    union __tag256 CFDRMFDSTS87;                            
    union __tag256 CFDRMDF0_87;                             
    union __tag256 CFDRMDF1_87;                             
    union __tag256 CFDRMDF2_87;                             
    union __tag256 CFDRMDF3_87;                             
    union __tag256 CFDRMDF4_87;                             
    union __tag256 CFDRMID88;                               
    union __tag256 CFDRMPTR88;                              
    union __tag256 CFDRMFDSTS88;                            
    union __tag256 CFDRMDF0_88;                             
    union __tag256 CFDRMDF1_88;                             
    union __tag256 CFDRMDF2_88;                             
    union __tag256 CFDRMDF3_88;                             
    union __tag256 CFDRMDF4_88;                             
    union __tag256 CFDRMID89;                               
    union __tag256 CFDRMPTR89;                              
    union __tag256 CFDRMFDSTS89;                            
    union __tag256 CFDRMDF0_89;                             
    union __tag256 CFDRMDF1_89;                             
    union __tag256 CFDRMDF2_89;                             
    union __tag256 CFDRMDF3_89;                             
    union __tag256 CFDRMDF4_89;                             
    union __tag256 CFDRMID90;                               
    union __tag256 CFDRMPTR90;                              
    union __tag256 CFDRMFDSTS90;                            
    union __tag256 CFDRMDF0_90;                             
    union __tag256 CFDRMDF1_90;                             
    union __tag256 CFDRMDF2_90;                             
    union __tag256 CFDRMDF3_90;                             
    union __tag256 CFDRMDF4_90;                             
    union __tag256 CFDRMID91;                               
    union __tag256 CFDRMPTR91;                              
    union __tag256 CFDRMFDSTS91;                            
    union __tag256 CFDRMDF0_91;                             
    union __tag256 CFDRMDF1_91;                             
    union __tag256 CFDRMDF2_91;                             
    union __tag256 CFDRMDF3_91;                             
    union __tag256 CFDRMDF4_91;                             
    union __tag256 CFDRMID92;                               
    union __tag256 CFDRMPTR92;                              
    union __tag256 CFDRMFDSTS92;                            
    union __tag256 CFDRMDF0_92;                             
    union __tag256 CFDRMDF1_92;                             
    union __tag256 CFDRMDF2_92;                             
    union __tag256 CFDRMDF3_92;                             
    union __tag256 CFDRMDF4_92;                             
    union __tag256 CFDRMID93;                               
    union __tag256 CFDRMPTR93;                              
    union __tag256 CFDRMFDSTS93;                            
    union __tag256 CFDRMDF0_93;                             
    union __tag256 CFDRMDF1_93;                             
    union __tag256 CFDRMDF2_93;                             
    union __tag256 CFDRMDF3_93;                             
    union __tag256 CFDRMDF4_93;                             
    union __tag256 CFDRMID94;                               
    union __tag256 CFDRMPTR94;                              
    union __tag256 CFDRMFDSTS94;                            
    union __tag256 CFDRMDF0_94;                             
    union __tag256 CFDRMDF1_94;                             
    union __tag256 CFDRMDF2_94;                             
    union __tag256 CFDRMDF3_94;                             
    union __tag256 CFDRMDF4_94;                             
    union __tag256 CFDRMID95;                               
    union __tag256 CFDRMPTR95;                              
    union __tag256 CFDRMFDSTS95;                            
    union __tag256 CFDRMDF0_95;                             
    union __tag256 CFDRMDF1_95;                             
    union __tag256 CFDRMDF2_95;                             
    union __tag256 CFDRMDF3_95;                             
    union __tag256 CFDRMDF4_95;                             
    unsigned char  dummy328[1024];                          
    union __tag256 CFDRFID0;                                
    union __tag256 CFDRFPTR0;                               
    union __tag256 CFDRFFDSTS0;                             
    union __tag256 CFDRFDF0_0;                              
    union __tag256 CFDRFDF1_0;                              
    union __tag256 CFDRFDF2_0;                              
    union __tag256 CFDRFDF3_0;                              
    union __tag256 CFDRFDF4_0;                              
    union __tag256 CFDRFDF5_0;                              
    union __tag256 CFDRFDF6_0;                              
    union __tag256 CFDRFDF7_0;                              
    union __tag256 CFDRFDF8_0;                              
    union __tag256 CFDRFDF9_0;                              
    union __tag256 CFDRFDF10_0;                             
    union __tag256 CFDRFDF11_0;                             
    union __tag256 CFDRFDF12_0;                             
    union __tag256 CFDRFDF13_0;                             
    union __tag256 CFDRFDF14_0;                             
    union __tag256 CFDRFDF15_0;                             
    unsigned char  dummy329[52];                            
    union __tag256 CFDRFID1;                                
    union __tag256 CFDRFPTR1;                               
    union __tag256 CFDRFFDSTS1;                             
    union __tag256 CFDRFDF0_1;                              
    union __tag256 CFDRFDF1_1;                              
    union __tag256 CFDRFDF2_1;                              
    union __tag256 CFDRFDF3_1;                              
    union __tag256 CFDRFDF4_1;                              
    union __tag256 CFDRFDF5_1;                              
    union __tag256 CFDRFDF6_1;                              
    union __tag256 CFDRFDF7_1;                              
    union __tag256 CFDRFDF8_1;                              
    union __tag256 CFDRFDF9_1;                              
    union __tag256 CFDRFDF10_1;                             
    union __tag256 CFDRFDF11_1;                             
    union __tag256 CFDRFDF12_1;                             
    union __tag256 CFDRFDF13_1;                             
    union __tag256 CFDRFDF14_1;                             
    union __tag256 CFDRFDF15_1;                             
    unsigned char  dummy330[52];                            
    union __tag256 CFDRFID2;                                
    union __tag256 CFDRFPTR2;                               
    union __tag256 CFDRFFDSTS2;                             
    union __tag256 CFDRFDF0_2;                              
    union __tag256 CFDRFDF1_2;                              
    union __tag256 CFDRFDF2_2;                              
    union __tag256 CFDRFDF3_2;                              
    union __tag256 CFDRFDF4_2;                              
    union __tag256 CFDRFDF5_2;                              
    union __tag256 CFDRFDF6_2;                              
    union __tag256 CFDRFDF7_2;                              
    union __tag256 CFDRFDF8_2;                              
    union __tag256 CFDRFDF9_2;                              
    union __tag256 CFDRFDF10_2;                             
    union __tag256 CFDRFDF11_2;                             
    union __tag256 CFDRFDF12_2;                             
    union __tag256 CFDRFDF13_2;                             
    union __tag256 CFDRFDF14_2;                             
    union __tag256 CFDRFDF15_2;                             
    unsigned char  dummy331[52];                            
    union __tag256 CFDRFID3;                                
    union __tag256 CFDRFPTR3;                               
    union __tag256 CFDRFFDSTS3;                             
    union __tag256 CFDRFDF0_3;                              
    union __tag256 CFDRFDF1_3;                              
    union __tag256 CFDRFDF2_3;                              
    union __tag256 CFDRFDF3_3;                              
    union __tag256 CFDRFDF4_3;                              
    union __tag256 CFDRFDF5_3;                              
    union __tag256 CFDRFDF6_3;                              
    union __tag256 CFDRFDF7_3;                              
    union __tag256 CFDRFDF8_3;                              
    union __tag256 CFDRFDF9_3;                              
    union __tag256 CFDRFDF10_3;                             
    union __tag256 CFDRFDF11_3;                             
    union __tag256 CFDRFDF12_3;                             
    union __tag256 CFDRFDF13_3;                             
    union __tag256 CFDRFDF14_3;                             
    union __tag256 CFDRFDF15_3;                             
    unsigned char  dummy332[52];                            
    union __tag256 CFDRFID4;                                
    union __tag256 CFDRFPTR4;                               
    union __tag256 CFDRFFDSTS4;                             
    union __tag256 CFDRFDF0_4;                              
    union __tag256 CFDRFDF1_4;                              
    union __tag256 CFDRFDF2_4;                              
    union __tag256 CFDRFDF3_4;                              
    union __tag256 CFDRFDF4_4;                              
    union __tag256 CFDRFDF5_4;                              
    union __tag256 CFDRFDF6_4;                              
    union __tag256 CFDRFDF7_4;                              
    union __tag256 CFDRFDF8_4;                              
    union __tag256 CFDRFDF9_4;                              
    union __tag256 CFDRFDF10_4;                             
    union __tag256 CFDRFDF11_4;                             
    union __tag256 CFDRFDF12_4;                             
    union __tag256 CFDRFDF13_4;                             
    union __tag256 CFDRFDF14_4;                             
    union __tag256 CFDRFDF15_4;                             
    unsigned char  dummy333[52];                            
    union __tag256 CFDRFID5;                                
    union __tag256 CFDRFPTR5;                               
    union __tag256 CFDRFFDSTS5;                             
    union __tag256 CFDRFDF0_5;                              
    union __tag256 CFDRFDF1_5;                              
    union __tag256 CFDRFDF2_5;                              
    union __tag256 CFDRFDF3_5;                              
    union __tag256 CFDRFDF4_5;                              
    union __tag256 CFDRFDF5_5;                              
    union __tag256 CFDRFDF6_5;                              
    union __tag256 CFDRFDF7_5;                              
    union __tag256 CFDRFDF8_5;                              
    union __tag256 CFDRFDF9_5;                              
    union __tag256 CFDRFDF10_5;                             
    union __tag256 CFDRFDF11_5;                             
    union __tag256 CFDRFDF12_5;                             
    union __tag256 CFDRFDF13_5;                             
    union __tag256 CFDRFDF14_5;                             
    union __tag256 CFDRFDF15_5;                             
    unsigned char  dummy334[52];                            
    union __tag256 CFDRFID6;                                
    union __tag256 CFDRFPTR6;                               
    union __tag256 CFDRFFDSTS6;                             
    union __tag256 CFDRFDF0_6;                              
    union __tag256 CFDRFDF1_6;                              
    union __tag256 CFDRFDF2_6;                              
    union __tag256 CFDRFDF3_6;                              
    union __tag256 CFDRFDF4_6;                              
    union __tag256 CFDRFDF5_6;                              
    union __tag256 CFDRFDF6_6;                              
    union __tag256 CFDRFDF7_6;                              
    union __tag256 CFDRFDF8_6;                              
    union __tag256 CFDRFDF9_6;                              
    union __tag256 CFDRFDF10_6;                             
    union __tag256 CFDRFDF11_6;                             
    union __tag256 CFDRFDF12_6;                             
    union __tag256 CFDRFDF13_6;                             
    union __tag256 CFDRFDF14_6;                             
    union __tag256 CFDRFDF15_6;                             
    unsigned char  dummy335[52];                            
    union __tag256 CFDRFID7;                                
    union __tag256 CFDRFPTR7;                               
    union __tag256 CFDRFFDSTS7;                             
    union __tag256 CFDRFDF0_7;                              
    union __tag256 CFDRFDF1_7;                              
    union __tag256 CFDRFDF2_7;                              
    union __tag256 CFDRFDF3_7;                              
    union __tag256 CFDRFDF4_7;                              
    union __tag256 CFDRFDF5_7;                              
    union __tag256 CFDRFDF6_7;                              
    union __tag256 CFDRFDF7_7;                              
    union __tag256 CFDRFDF8_7;                              
    union __tag256 CFDRFDF9_7;                              
    union __tag256 CFDRFDF10_7;                             
    union __tag256 CFDRFDF11_7;                             
    union __tag256 CFDRFDF12_7;                             
    union __tag256 CFDRFDF13_7;                             
    union __tag256 CFDRFDF14_7;                             
    union __tag256 CFDRFDF15_7;                             
    unsigned char  dummy336[52];                            
    union __tag256 CFDCFID0;                                
    union __tag256 CFDCFPTR0;                               
    union __tag256 CFDCFFDCSTS0;                            
    union __tag256 CFDCFDF0_0;                              
    union __tag256 CFDCFDF1_0;                              
    union __tag256 CFDCFDF2_0;                              
    union __tag256 CFDCFDF3_0;                              
    union __tag256 CFDCFDF4_0;                              
    union __tag256 CFDCFDF5_0;                              
    union __tag256 CFDCFDF6_0;                              
    union __tag256 CFDCFDF7_0;                              
    union __tag256 CFDCFDF8_0;                              
    union __tag256 CFDCFDF9_0;                              
    union __tag256 CFDCFDF10_0;                             
    union __tag256 CFDCFDF11_0;                             
    union __tag256 CFDCFDF12_0;                             
    union __tag256 CFDCFDF13_0;                             
    union __tag256 CFDCFDF14_0;                             
    union __tag256 CFDCFDF15_0;                             
    unsigned char  dummy337[52];                            
    union __tag256 CFDCFID1;                                
    union __tag256 CFDCFPTR1;                               
    union __tag256 CFDCFFDCSTS1;                            
    union __tag256 CFDCFDF0_1;                              
    union __tag256 CFDCFDF1_1;                              
    union __tag256 CFDCFDF2_1;                              
    union __tag256 CFDCFDF3_1;                              
    union __tag256 CFDCFDF4_1;                              
    union __tag256 CFDCFDF5_1;                              
    union __tag256 CFDCFDF6_1;                              
    union __tag256 CFDCFDF7_1;                              
    union __tag256 CFDCFDF8_1;                              
    union __tag256 CFDCFDF9_1;                              
    union __tag256 CFDCFDF10_1;                             
    union __tag256 CFDCFDF11_1;                             
    union __tag256 CFDCFDF12_1;                             
    union __tag256 CFDCFDF13_1;                             
    union __tag256 CFDCFDF14_1;                             
    union __tag256 CFDCFDF15_1;                             
    unsigned char  dummy338[52];                            
    union __tag256 CFDCFID2;                                
    union __tag256 CFDCFPTR2;                               
    union __tag256 CFDCFFDCSTS2;                            
    union __tag256 CFDCFDF0_2;                              
    union __tag256 CFDCFDF1_2;                              
    union __tag256 CFDCFDF2_2;                              
    union __tag256 CFDCFDF3_2;                              
    union __tag256 CFDCFDF4_2;                              
    union __tag256 CFDCFDF5_2;                              
    union __tag256 CFDCFDF6_2;                              
    union __tag256 CFDCFDF7_2;                              
    union __tag256 CFDCFDF8_2;                              
    union __tag256 CFDCFDF9_2;                              
    union __tag256 CFDCFDF10_2;                             
    union __tag256 CFDCFDF11_2;                             
    union __tag256 CFDCFDF12_2;                             
    union __tag256 CFDCFDF13_2;                             
    union __tag256 CFDCFDF14_2;                             
    union __tag256 CFDCFDF15_2;                             
    unsigned char  dummy339[52];                            
    union __tag256 CFDCFID3;                                
    union __tag256 CFDCFPTR3;                               
    union __tag256 CFDCFFDCSTS3;                            
    union __tag256 CFDCFDF0_3;                              
    union __tag256 CFDCFDF1_3;                              
    union __tag256 CFDCFDF2_3;                              
    union __tag256 CFDCFDF3_3;                              
    union __tag256 CFDCFDF4_3;                              
    union __tag256 CFDCFDF5_3;                              
    union __tag256 CFDCFDF6_3;                              
    union __tag256 CFDCFDF7_3;                              
    union __tag256 CFDCFDF8_3;                              
    union __tag256 CFDCFDF9_3;                              
    union __tag256 CFDCFDF10_3;                             
    union __tag256 CFDCFDF11_3;                             
    union __tag256 CFDCFDF12_3;                             
    union __tag256 CFDCFDF13_3;                             
    union __tag256 CFDCFDF14_3;                             
    union __tag256 CFDCFDF15_3;                             
    unsigned char  dummy340[52];                            
    union __tag256 CFDCFID4;                                
    union __tag256 CFDCFPTR4;                               
    union __tag256 CFDCFFDCSTS4;                            
    union __tag256 CFDCFDF0_4;                              
    union __tag256 CFDCFDF1_4;                              
    union __tag256 CFDCFDF2_4;                              
    union __tag256 CFDCFDF3_4;                              
    union __tag256 CFDCFDF4_4;                              
    union __tag256 CFDCFDF5_4;                              
    union __tag256 CFDCFDF6_4;                              
    union __tag256 CFDCFDF7_4;                              
    union __tag256 CFDCFDF8_4;                              
    union __tag256 CFDCFDF9_4;                              
    union __tag256 CFDCFDF10_4;                             
    union __tag256 CFDCFDF11_4;                             
    union __tag256 CFDCFDF12_4;                             
    union __tag256 CFDCFDF13_4;                             
    union __tag256 CFDCFDF14_4;                             
    union __tag256 CFDCFDF15_4;                             
    unsigned char  dummy341[52];                            
    union __tag256 CFDCFID5;                                
    union __tag256 CFDCFPTR5;                               
    union __tag256 CFDCFFDCSTS5;                            
    union __tag256 CFDCFDF0_5;                              
    union __tag256 CFDCFDF1_5;                              
    union __tag256 CFDCFDF2_5;                              
    union __tag256 CFDCFDF3_5;                              
    union __tag256 CFDCFDF4_5;                              
    union __tag256 CFDCFDF5_5;                              
    union __tag256 CFDCFDF6_5;                              
    union __tag256 CFDCFDF7_5;                              
    union __tag256 CFDCFDF8_5;                              
    union __tag256 CFDCFDF9_5;                              
    union __tag256 CFDCFDF10_5;                             
    union __tag256 CFDCFDF11_5;                             
    union __tag256 CFDCFDF12_5;                             
    union __tag256 CFDCFDF13_5;                             
    union __tag256 CFDCFDF14_5;                             
    union __tag256 CFDCFDF15_5;                             
    unsigned char  dummy342[52];                            
    union __tag256 CFDCFID6;                                
    union __tag256 CFDCFPTR6;                               
    union __tag256 CFDCFFDCSTS6;                            
    union __tag256 CFDCFDF0_6;                              
    union __tag256 CFDCFDF1_6;                              
    union __tag256 CFDCFDF2_6;                              
    union __tag256 CFDCFDF3_6;                              
    union __tag256 CFDCFDF4_6;                              
    union __tag256 CFDCFDF5_6;                              
    union __tag256 CFDCFDF6_6;                              
    union __tag256 CFDCFDF7_6;                              
    union __tag256 CFDCFDF8_6;                              
    union __tag256 CFDCFDF9_6;                              
    union __tag256 CFDCFDF10_6;                             
    union __tag256 CFDCFDF11_6;                             
    union __tag256 CFDCFDF12_6;                             
    union __tag256 CFDCFDF13_6;                             
    union __tag256 CFDCFDF14_6;                             
    union __tag256 CFDCFDF15_6;                             
    unsigned char  dummy343[52];                            
    union __tag256 CFDCFID7;                                
    union __tag256 CFDCFPTR7;                               
    union __tag256 CFDCFFDCSTS7;                            
    union __tag256 CFDCFDF0_7;                              
    union __tag256 CFDCFDF1_7;                              
    union __tag256 CFDCFDF2_7;                              
    union __tag256 CFDCFDF3_7;                              
    union __tag256 CFDCFDF4_7;                              
    union __tag256 CFDCFDF5_7;                              
    union __tag256 CFDCFDF6_7;                              
    union __tag256 CFDCFDF7_7;                              
    union __tag256 CFDCFDF8_7;                              
    union __tag256 CFDCFDF9_7;                              
    union __tag256 CFDCFDF10_7;                             
    union __tag256 CFDCFDF11_7;                             
    union __tag256 CFDCFDF12_7;                             
    union __tag256 CFDCFDF13_7;                             
    union __tag256 CFDCFDF14_7;                             
    union __tag256 CFDCFDF15_7;                             
    unsigned char  dummy344[52];                            
    union __tag256 CFDCFID8;                                
    union __tag256 CFDCFPTR8;                               
    union __tag256 CFDCFFDCSTS8;                            
    union __tag256 CFDCFDF0_8;                              
    union __tag256 CFDCFDF1_8;                              
    union __tag256 CFDCFDF2_8;                              
    union __tag256 CFDCFDF3_8;                              
    union __tag256 CFDCFDF4_8;                              
    union __tag256 CFDCFDF5_8;                              
    union __tag256 CFDCFDF6_8;                              
    union __tag256 CFDCFDF7_8;                              
    union __tag256 CFDCFDF8_8;                              
    union __tag256 CFDCFDF9_8;                              
    union __tag256 CFDCFDF10_8;                             
    union __tag256 CFDCFDF11_8;                             
    union __tag256 CFDCFDF12_8;                             
    union __tag256 CFDCFDF13_8;                             
    union __tag256 CFDCFDF14_8;                             
    union __tag256 CFDCFDF15_8;                             
    unsigned char  dummy345[52];                            
    union __tag256 CFDCFID9;                                
    union __tag256 CFDCFPTR9;                               
    union __tag256 CFDCFFDCSTS9;                            
    union __tag256 CFDCFDF0_9;                              
    union __tag256 CFDCFDF1_9;                              
    union __tag256 CFDCFDF2_9;                              
    union __tag256 CFDCFDF3_9;                              
    union __tag256 CFDCFDF4_9;                              
    union __tag256 CFDCFDF5_9;                              
    union __tag256 CFDCFDF6_9;                              
    union __tag256 CFDCFDF7_9;                              
    union __tag256 CFDCFDF8_9;                              
    union __tag256 CFDCFDF9_9;                              
    union __tag256 CFDCFDF10_9;                             
    union __tag256 CFDCFDF11_9;                             
    union __tag256 CFDCFDF12_9;                             
    union __tag256 CFDCFDF13_9;                             
    union __tag256 CFDCFDF14_9;                             
    union __tag256 CFDCFDF15_9;                             
    unsigned char  dummy346[52];                            
    union __tag256 CFDCFID10;                               
    union __tag256 CFDCFPTR10;                              
    union __tag256 CFDCFFDCSTS10;                           
    union __tag256 CFDCFDF0_10;                             
    union __tag256 CFDCFDF1_10;                             
    union __tag256 CFDCFDF2_10;                             
    union __tag256 CFDCFDF3_10;                             
    union __tag256 CFDCFDF4_10;                             
    union __tag256 CFDCFDF5_10;                             
    union __tag256 CFDCFDF6_10;                             
    union __tag256 CFDCFDF7_10;                             
    union __tag256 CFDCFDF8_10;                             
    union __tag256 CFDCFDF9_10;                             
    union __tag256 CFDCFDF10_10;                            
    union __tag256 CFDCFDF11_10;                            
    union __tag256 CFDCFDF12_10;                            
    union __tag256 CFDCFDF13_10;                            
    union __tag256 CFDCFDF14_10;                            
    union __tag256 CFDCFDF15_10;                            
    unsigned char  dummy347[52];                            
    union __tag256 CFDCFID11;                               
    union __tag256 CFDCFPTR11;                              
    union __tag256 CFDCFFDCSTS11;                           
    union __tag256 CFDCFDF0_11;                             
    union __tag256 CFDCFDF1_11;                             
    union __tag256 CFDCFDF2_11;                             
    union __tag256 CFDCFDF3_11;                             
    union __tag256 CFDCFDF4_11;                             
    union __tag256 CFDCFDF5_11;                             
    union __tag256 CFDCFDF6_11;                             
    union __tag256 CFDCFDF7_11;                             
    union __tag256 CFDCFDF8_11;                             
    union __tag256 CFDCFDF9_11;                             
    union __tag256 CFDCFDF10_11;                            
    union __tag256 CFDCFDF11_11;                            
    union __tag256 CFDCFDF12_11;                            
    union __tag256 CFDCFDF13_11;                            
    union __tag256 CFDCFDF14_11;                            
    union __tag256 CFDCFDF15_11;                            
    unsigned char  dummy348[52];                            
    union __tag256 CFDCFID12;                               
    union __tag256 CFDCFPTR12;                              
    union __tag256 CFDCFFDCSTS12;                           
    union __tag256 CFDCFDF0_12;                             
    union __tag256 CFDCFDF1_12;                             
    union __tag256 CFDCFDF2_12;                             
    union __tag256 CFDCFDF3_12;                             
    union __tag256 CFDCFDF4_12;                             
    union __tag256 CFDCFDF5_12;                             
    union __tag256 CFDCFDF6_12;                             
    union __tag256 CFDCFDF7_12;                             
    union __tag256 CFDCFDF8_12;                             
    union __tag256 CFDCFDF9_12;                             
    union __tag256 CFDCFDF10_12;                            
    union __tag256 CFDCFDF11_12;                            
    union __tag256 CFDCFDF12_12;                            
    union __tag256 CFDCFDF13_12;                            
    union __tag256 CFDCFDF14_12;                            
    union __tag256 CFDCFDF15_12;                            
    unsigned char  dummy349[52];                            
    union __tag256 CFDCFID13;                               
    union __tag256 CFDCFPTR13;                              
    union __tag256 CFDCFFDCSTS13;                           
    union __tag256 CFDCFDF0_13;                             
    union __tag256 CFDCFDF1_13;                             
    union __tag256 CFDCFDF2_13;                             
    union __tag256 CFDCFDF3_13;                             
    union __tag256 CFDCFDF4_13;                             
    union __tag256 CFDCFDF5_13;                             
    union __tag256 CFDCFDF6_13;                             
    union __tag256 CFDCFDF7_13;                             
    union __tag256 CFDCFDF8_13;                             
    union __tag256 CFDCFDF9_13;                             
    union __tag256 CFDCFDF10_13;                            
    union __tag256 CFDCFDF11_13;                            
    union __tag256 CFDCFDF12_13;                            
    union __tag256 CFDCFDF13_13;                            
    union __tag256 CFDCFDF14_13;                            
    union __tag256 CFDCFDF15_13;                            
    unsigned char  dummy350[52];                            
    union __tag256 CFDCFID14;                               
    union __tag256 CFDCFPTR14;                              
    union __tag256 CFDCFFDCSTS14;                           
    union __tag256 CFDCFDF0_14;                             
    union __tag256 CFDCFDF1_14;                             
    union __tag256 CFDCFDF2_14;                             
    union __tag256 CFDCFDF3_14;                             
    union __tag256 CFDCFDF4_14;                             
    union __tag256 CFDCFDF5_14;                             
    union __tag256 CFDCFDF6_14;                             
    union __tag256 CFDCFDF7_14;                             
    union __tag256 CFDCFDF8_14;                             
    union __tag256 CFDCFDF9_14;                             
    union __tag256 CFDCFDF10_14;                            
    union __tag256 CFDCFDF11_14;                            
    union __tag256 CFDCFDF12_14;                            
    union __tag256 CFDCFDF13_14;                            
    union __tag256 CFDCFDF14_14;                            
    union __tag256 CFDCFDF15_14;                            
    unsigned char  dummy351[52];                            
    union __tag256 CFDCFID15;                               
    union __tag256 CFDCFPTR15;                              
    union __tag256 CFDCFFDCSTS15;                           
    union __tag256 CFDCFDF0_15;                             
    union __tag256 CFDCFDF1_15;                             
    union __tag256 CFDCFDF2_15;                             
    union __tag256 CFDCFDF3_15;                             
    union __tag256 CFDCFDF4_15;                             
    union __tag256 CFDCFDF5_15;                             
    union __tag256 CFDCFDF6_15;                             
    union __tag256 CFDCFDF7_15;                             
    union __tag256 CFDCFDF8_15;                             
    union __tag256 CFDCFDF9_15;                             
    union __tag256 CFDCFDF10_15;                            
    union __tag256 CFDCFDF11_15;                            
    union __tag256 CFDCFDF12_15;                            
    union __tag256 CFDCFDF13_15;                            
    union __tag256 CFDCFDF14_15;                            
    union __tag256 CFDCFDF15_15;                            
    unsigned char  dummy352[52];                            
    union __tag256 CFDCFID16;                               
    union __tag256 CFDCFPTR16;                              
    union __tag256 CFDCFFDCSTS16;                           
    union __tag256 CFDCFDF0_16;                             
    union __tag256 CFDCFDF1_16;                             
    union __tag256 CFDCFDF2_16;                             
    union __tag256 CFDCFDF3_16;                             
    union __tag256 CFDCFDF4_16;                             
    union __tag256 CFDCFDF5_16;                             
    union __tag256 CFDCFDF6_16;                             
    union __tag256 CFDCFDF7_16;                             
    union __tag256 CFDCFDF8_16;                             
    union __tag256 CFDCFDF9_16;                             
    union __tag256 CFDCFDF10_16;                            
    union __tag256 CFDCFDF11_16;                            
    union __tag256 CFDCFDF12_16;                            
    union __tag256 CFDCFDF13_16;                            
    union __tag256 CFDCFDF14_16;                            
    union __tag256 CFDCFDF15_16;                            
    unsigned char  dummy353[52];                            
    union __tag256 CFDCFID17;                               
    union __tag256 CFDCFPTR17;                              
    union __tag256 CFDCFFDCSTS17;                           
    union __tag256 CFDCFDF0_17;                             
    union __tag256 CFDCFDF1_17;                             
    union __tag256 CFDCFDF2_17;                             
    union __tag256 CFDCFDF3_17;                             
    union __tag256 CFDCFDF4_17;                             
    union __tag256 CFDCFDF5_17;                             
    union __tag256 CFDCFDF6_17;                             
    union __tag256 CFDCFDF7_17;                             
    union __tag256 CFDCFDF8_17;                             
    union __tag256 CFDCFDF9_17;                             
    union __tag256 CFDCFDF10_17;                            
    union __tag256 CFDCFDF11_17;                            
    union __tag256 CFDCFDF12_17;                            
    union __tag256 CFDCFDF13_17;                            
    union __tag256 CFDCFDF14_17;                            
    union __tag256 CFDCFDF15_17;                            
    unsigned char  dummy354[820];                           
    union __tag256 CFDTMID0;                                
    union __tag256 CFDTMPTR0;                               
    union __tag256 CFDTMFDCTR0;                             
    union __tag256 CFDTMDF0_0;                              
    union __tag256 CFDTMDF1_0;                              
    union __tag256 CFDTMDF2_0;                              
    union __tag256 CFDTMDF3_0;                              
    union __tag256 CFDTMDF4_0;                              
    union __tag256 CFDTMID1;                                
    union __tag256 CFDTMPTR1;                               
    union __tag256 CFDTMFDCTR1;                             
    union __tag256 CFDTMDF0_1;                              
    union __tag256 CFDTMDF1_1;                              
    union __tag256 CFDTMDF2_1;                              
    union __tag256 CFDTMDF3_1;                              
    union __tag256 CFDTMDF4_1;                              
    union __tag256 CFDTMID2;                                
    union __tag256 CFDTMPTR2;                               
    union __tag256 CFDTMFDCTR2;                             
    union __tag256 CFDTMDF0_2;                              
    union __tag256 CFDTMDF1_2;                              
    union __tag256 CFDTMDF2_2;                              
    union __tag256 CFDTMDF3_2;                              
    union __tag256 CFDTMDF4_2;                              
    union __tag256 CFDTMID3;                                
    union __tag256 CFDTMPTR3;                               
    union __tag256 CFDTMFDCTR3;                             
    union __tag256 CFDTMDF0_3;                              
    union __tag256 CFDTMDF1_3;                              
    union __tag256 CFDTMDF2_3;                              
    union __tag256 CFDTMDF3_3;                              
    union __tag256 CFDTMDF4_3;                              
    union __tag256 CFDTMID4;                                
    union __tag256 CFDTMPTR4;                               
    union __tag256 CFDTMFDCTR4;                             
    union __tag256 CFDTMDF0_4;                              
    union __tag256 CFDTMDF1_4;                              
    union __tag256 CFDTMDF2_4;                              
    union __tag256 CFDTMDF3_4;                              
    union __tag256 CFDTMDF4_4;                              
    union __tag256 CFDTMID5;                                
    union __tag256 CFDTMPTR5;                               
    union __tag256 CFDTMFDCTR5;                             
    union __tag256 CFDTMDF0_5;                              
    union __tag256 CFDTMDF1_5;                              
    union __tag256 CFDTMDF2_5;                              
    union __tag256 CFDTMDF3_5;                              
    union __tag256 CFDTMDF4_5;                              
    union __tag256 CFDTMID6;                                
    union __tag256 CFDTMPTR6;                               
    union __tag256 CFDTMFDCTR6;                             
    union __tag256 CFDTMDF0_6;                              
    union __tag256 CFDTMDF1_6;                              
    union __tag256 CFDTMDF2_6;                              
    union __tag256 CFDTMDF3_6;                              
    union __tag256 CFDTMDF4_6;                              
    union __tag256 CFDTMID7;                                
    union __tag256 CFDTMPTR7;                               
    union __tag256 CFDTMFDCTR7;                             
    union __tag256 CFDTMDF0_7;                              
    union __tag256 CFDTMDF1_7;                              
    union __tag256 CFDTMDF2_7;                              
    union __tag256 CFDTMDF3_7;                              
    union __tag256 CFDTMDF4_7;                              
    union __tag256 CFDTMID8;                                
    union __tag256 CFDTMPTR8;                               
    union __tag256 CFDTMFDCTR8;                             
    union __tag256 CFDTMDF0_8;                              
    union __tag256 CFDTMDF1_8;                              
    union __tag256 CFDTMDF2_8;                              
    union __tag256 CFDTMDF3_8;                              
    union __tag256 CFDTMDF4_8;                              
    union __tag256 CFDTMID9;                                
    union __tag256 CFDTMPTR9;                               
    union __tag256 CFDTMFDCTR9;                             
    union __tag256 CFDTMDF0_9;                              
    union __tag256 CFDTMDF1_9;                              
    union __tag256 CFDTMDF2_9;                              
    union __tag256 CFDTMDF3_9;                              
    union __tag256 CFDTMDF4_9;                              
    union __tag256 CFDTMID10;                               
    union __tag256 CFDTMPTR10;                              
    union __tag256 CFDTMFDCTR10;                            
    union __tag256 CFDTMDF0_10;                             
    union __tag256 CFDTMDF1_10;                             
    union __tag256 CFDTMDF2_10;                             
    union __tag256 CFDTMDF3_10;                             
    union __tag256 CFDTMDF4_10;                             
    union __tag256 CFDTMID11;                               
    union __tag256 CFDTMPTR11;                              
    union __tag256 CFDTMFDCTR11;                            
    union __tag256 CFDTMDF0_11;                             
    union __tag256 CFDTMDF1_11;                             
    union __tag256 CFDTMDF2_11;                             
    union __tag256 CFDTMDF3_11;                             
    union __tag256 CFDTMDF4_11;                             
    union __tag256 CFDTMID12;                               
    union __tag256 CFDTMPTR12;                              
    union __tag256 CFDTMFDCTR12;                            
    union __tag256 CFDTMDF0_12;                             
    union __tag256 CFDTMDF1_12;                             
    union __tag256 CFDTMDF2_12;                             
    union __tag256 CFDTMDF3_12;                             
    union __tag256 CFDTMDF4_12;                             
    union __tag256 CFDTMID13;                               
    union __tag256 CFDTMPTR13;                              
    union __tag256 CFDTMFDCTR13;                            
    union __tag256 CFDTMDF0_13;                             
    union __tag256 CFDTMDF1_13;                             
    union __tag256 CFDTMDF2_13;                             
    union __tag256 CFDTMDF3_13;                             
    union __tag256 CFDTMDF4_13;                             
    union __tag256 CFDTMID14;                               
    union __tag256 CFDTMPTR14;                              
    union __tag256 CFDTMFDCTR14;                            
    union __tag256 CFDTMDF0_14;                             
    union __tag256 CFDTMDF1_14;                             
    union __tag256 CFDTMDF2_14;                             
    union __tag256 CFDTMDF3_14;                             
    union __tag256 CFDTMDF4_14;                             
    union __tag256 CFDTMID15;                               
    union __tag256 CFDTMPTR15;                              
    union __tag256 CFDTMFDCTR15;                            
    union __tag256 CFDTMDF0_15;                             
    union __tag256 CFDTMDF1_15;                             
    union __tag256 CFDTMDF2_15;                             
    union __tag256 CFDTMDF3_15;                             
    union __tag256 CFDTMDF4_15;                             
    union __tag256 CFDTMID16;                               
    union __tag256 CFDTMPTR16;                              
    union __tag256 CFDTMFDCTR16;                            
    union __tag256 CFDTMDF0_16;                             
    union __tag256 CFDTMDF1_16;                             
    union __tag256 CFDTMDF2_16;                             
    union __tag256 CFDTMDF3_16;                             
    union __tag256 CFDTMDF4_16;                             
    union __tag256 CFDTMID17;                               
    union __tag256 CFDTMPTR17;                              
    union __tag256 CFDTMFDCTR17;                            
    union __tag256 CFDTMDF0_17;                             
    union __tag256 CFDTMDF1_17;                             
    union __tag256 CFDTMDF2_17;                             
    union __tag256 CFDTMDF3_17;                             
    union __tag256 CFDTMDF4_17;                             
    union __tag256 CFDTMID18;                               
    union __tag256 CFDTMPTR18;                              
    union __tag256 CFDTMFDCTR18;                            
    union __tag256 CFDTMDF0_18;                             
    union __tag256 CFDTMDF1_18;                             
    union __tag256 CFDTMDF2_18;                             
    union __tag256 CFDTMDF3_18;                             
    union __tag256 CFDTMDF4_18;                             
    union __tag256 CFDTMID19;                               
    union __tag256 CFDTMPTR19;                              
    union __tag256 CFDTMFDCTR19;                            
    union __tag256 CFDTMDF0_19;                             
    union __tag256 CFDTMDF1_19;                             
    union __tag256 CFDTMDF2_19;                             
    union __tag256 CFDTMDF3_19;                             
    union __tag256 CFDTMDF4_19;                             
    union __tag256 CFDTMID20;                               
    union __tag256 CFDTMPTR20;                              
    union __tag256 CFDTMFDCTR20;                            
    union __tag256 CFDTMDF0_20;                             
    union __tag256 CFDTMDF1_20;                             
    union __tag256 CFDTMDF2_20;                             
    union __tag256 CFDTMDF3_20;                             
    union __tag256 CFDTMDF4_20;                             
    union __tag256 CFDTMID21;                               
    union __tag256 CFDTMPTR21;                              
    union __tag256 CFDTMFDCTR21;                            
    union __tag256 CFDTMDF0_21;                             
    union __tag256 CFDTMDF1_21;                             
    union __tag256 CFDTMDF2_21;                             
    union __tag256 CFDTMDF3_21;                             
    union __tag256 CFDTMDF4_21;                             
    union __tag256 CFDTMID22;                               
    union __tag256 CFDTMPTR22;                              
    union __tag256 CFDTMFDCTR22;                            
    union __tag256 CFDTMDF0_22;                             
    union __tag256 CFDTMDF1_22;                             
    union __tag256 CFDTMDF2_22;                             
    union __tag256 CFDTMDF3_22;                             
    union __tag256 CFDTMDF4_22;                             
    union __tag256 CFDTMID23;                               
    union __tag256 CFDTMPTR23;                              
    union __tag256 CFDTMFDCTR23;                            
    union __tag256 CFDTMDF0_23;                             
    union __tag256 CFDTMDF1_23;                             
    union __tag256 CFDTMDF2_23;                             
    union __tag256 CFDTMDF3_23;                             
    union __tag256 CFDTMDF4_23;                             
    union __tag256 CFDTMID24;                               
    union __tag256 CFDTMPTR24;                              
    union __tag256 CFDTMFDCTR24;                            
    union __tag256 CFDTMDF0_24;                             
    union __tag256 CFDTMDF1_24;                             
    union __tag256 CFDTMDF2_24;                             
    union __tag256 CFDTMDF3_24;                             
    union __tag256 CFDTMDF4_24;                             
    union __tag256 CFDTMID25;                               
    union __tag256 CFDTMPTR25;                              
    union __tag256 CFDTMFDCTR25;                            
    union __tag256 CFDTMDF0_25;                             
    union __tag256 CFDTMDF1_25;                             
    union __tag256 CFDTMDF2_25;                             
    union __tag256 CFDTMDF3_25;                             
    union __tag256 CFDTMDF4_25;                             
    union __tag256 CFDTMID26;                               
    union __tag256 CFDTMPTR26;                              
    union __tag256 CFDTMFDCTR26;                            
    union __tag256 CFDTMDF0_26;                             
    union __tag256 CFDTMDF1_26;                             
    union __tag256 CFDTMDF2_26;                             
    union __tag256 CFDTMDF3_26;                             
    union __tag256 CFDTMDF4_26;                             
    union __tag256 CFDTMID27;                               
    union __tag256 CFDTMPTR27;                              
    union __tag256 CFDTMFDCTR27;                            
    union __tag256 CFDTMDF0_27;                             
    union __tag256 CFDTMDF1_27;                             
    union __tag256 CFDTMDF2_27;                             
    union __tag256 CFDTMDF3_27;                             
    union __tag256 CFDTMDF4_27;                             
    union __tag256 CFDTMID28;                               
    union __tag256 CFDTMPTR28;                              
    union __tag256 CFDTMFDCTR28;                            
    union __tag256 CFDTMDF0_28;                             
    union __tag256 CFDTMDF1_28;                             
    union __tag256 CFDTMDF2_28;                             
    union __tag256 CFDTMDF3_28;                             
    union __tag256 CFDTMDF4_28;                             
    union __tag256 CFDTMID29;                               
    union __tag256 CFDTMPTR29;                              
    union __tag256 CFDTMFDCTR29;                            
    union __tag256 CFDTMDF0_29;                             
    union __tag256 CFDTMDF1_29;                             
    union __tag256 CFDTMDF2_29;                             
    union __tag256 CFDTMDF3_29;                             
    union __tag256 CFDTMDF4_29;                             
    union __tag256 CFDTMID30;                               
    union __tag256 CFDTMPTR30;                              
    union __tag256 CFDTMFDCTR30;                            
    union __tag256 CFDTMDF0_30;                             
    union __tag256 CFDTMDF1_30;                             
    union __tag256 CFDTMDF2_30;                             
    union __tag256 CFDTMDF3_30;                             
    union __tag256 CFDTMDF4_30;                             
    union __tag256 CFDTMID31;                               
    union __tag256 CFDTMPTR31;                              
    union __tag256 CFDTMFDCTR31;                            
    union __tag256 CFDTMDF0_31;                             
    union __tag256 CFDTMDF1_31;                             
    union __tag256 CFDTMDF2_31;                             
    union __tag256 CFDTMDF3_31;                             
    union __tag256 CFDTMDF4_31;                             
    union __tag256 CFDTMID32;                               
    union __tag256 CFDTMPTR32;                              
    union __tag256 CFDTMFDCTR32;                            
    union __tag256 CFDTMDF0_32;                             
    union __tag256 CFDTMDF1_32;                             
    union __tag256 CFDTMDF2_32;                             
    union __tag256 CFDTMDF3_32;                             
    union __tag256 CFDTMDF4_32;                             
    union __tag256 CFDTMID33;                               
    union __tag256 CFDTMPTR33;                              
    union __tag256 CFDTMFDCTR33;                            
    union __tag256 CFDTMDF0_33;                             
    union __tag256 CFDTMDF1_33;                             
    union __tag256 CFDTMDF2_33;                             
    union __tag256 CFDTMDF3_33;                             
    union __tag256 CFDTMDF4_33;                             
    union __tag256 CFDTMID34;                               
    union __tag256 CFDTMPTR34;                              
    union __tag256 CFDTMFDCTR34;                            
    union __tag256 CFDTMDF0_34;                             
    union __tag256 CFDTMDF1_34;                             
    union __tag256 CFDTMDF2_34;                             
    union __tag256 CFDTMDF3_34;                             
    union __tag256 CFDTMDF4_34;                             
    union __tag256 CFDTMID35;                               
    union __tag256 CFDTMPTR35;                              
    union __tag256 CFDTMFDCTR35;                            
    union __tag256 CFDTMDF0_35;                             
    union __tag256 CFDTMDF1_35;                             
    union __tag256 CFDTMDF2_35;                             
    union __tag256 CFDTMDF3_35;                             
    union __tag256 CFDTMDF4_35;                             
    union __tag256 CFDTMID36;                               
    union __tag256 CFDTMPTR36;                              
    union __tag256 CFDTMFDCTR36;                            
    union __tag256 CFDTMDF0_36;                             
    union __tag256 CFDTMDF1_36;                             
    union __tag256 CFDTMDF2_36;                             
    union __tag256 CFDTMDF3_36;                             
    union __tag256 CFDTMDF4_36;                             
    union __tag256 CFDTMID37;                               
    union __tag256 CFDTMPTR37;                              
    union __tag256 CFDTMFDCTR37;                            
    union __tag256 CFDTMDF0_37;                             
    union __tag256 CFDTMDF1_37;                             
    union __tag256 CFDTMDF2_37;                             
    union __tag256 CFDTMDF3_37;                             
    union __tag256 CFDTMDF4_37;                             
    union __tag256 CFDTMID38;                               
    union __tag256 CFDTMPTR38;                              
    union __tag256 CFDTMFDCTR38;                            
    union __tag256 CFDTMDF0_38;                             
    union __tag256 CFDTMDF1_38;                             
    union __tag256 CFDTMDF2_38;                             
    union __tag256 CFDTMDF3_38;                             
    union __tag256 CFDTMDF4_38;                             
    union __tag256 CFDTMID39;                               
    union __tag256 CFDTMPTR39;                              
    union __tag256 CFDTMFDCTR39;                            
    union __tag256 CFDTMDF0_39;                             
    union __tag256 CFDTMDF1_39;                             
    union __tag256 CFDTMDF2_39;                             
    union __tag256 CFDTMDF3_39;                             
    union __tag256 CFDTMDF4_39;                             
    union __tag256 CFDTMID40;                               
    union __tag256 CFDTMPTR40;                              
    union __tag256 CFDTMFDCTR40;                            
    union __tag256 CFDTMDF0_40;                             
    union __tag256 CFDTMDF1_40;                             
    union __tag256 CFDTMDF2_40;                             
    union __tag256 CFDTMDF3_40;                             
    union __tag256 CFDTMDF4_40;                             
    union __tag256 CFDTMID41;                               
    union __tag256 CFDTMPTR41;                              
    union __tag256 CFDTMFDCTR41;                            
    union __tag256 CFDTMDF0_41;                             
    union __tag256 CFDTMDF1_41;                             
    union __tag256 CFDTMDF2_41;                             
    union __tag256 CFDTMDF3_41;                             
    union __tag256 CFDTMDF4_41;                             
    union __tag256 CFDTMID42;                               
    union __tag256 CFDTMPTR42;                              
    union __tag256 CFDTMFDCTR42;                            
    union __tag256 CFDTMDF0_42;                             
    union __tag256 CFDTMDF1_42;                             
    union __tag256 CFDTMDF2_42;                             
    union __tag256 CFDTMDF3_42;                             
    union __tag256 CFDTMDF4_42;                             
    union __tag256 CFDTMID43;                               
    union __tag256 CFDTMPTR43;                              
    union __tag256 CFDTMFDCTR43;                            
    union __tag256 CFDTMDF0_43;                             
    union __tag256 CFDTMDF1_43;                             
    union __tag256 CFDTMDF2_43;                             
    union __tag256 CFDTMDF3_43;                             
    union __tag256 CFDTMDF4_43;                             
    union __tag256 CFDTMID44;                               
    union __tag256 CFDTMPTR44;                              
    union __tag256 CFDTMFDCTR44;                            
    union __tag256 CFDTMDF0_44;                             
    union __tag256 CFDTMDF1_44;                             
    union __tag256 CFDTMDF2_44;                             
    union __tag256 CFDTMDF3_44;                             
    union __tag256 CFDTMDF4_44;                             
    union __tag256 CFDTMID45;                               
    union __tag256 CFDTMPTR45;                              
    union __tag256 CFDTMFDCTR45;                            
    union __tag256 CFDTMDF0_45;                             
    union __tag256 CFDTMDF1_45;                             
    union __tag256 CFDTMDF2_45;                             
    union __tag256 CFDTMDF3_45;                             
    union __tag256 CFDTMDF4_45;                             
    union __tag256 CFDTMID46;                               
    union __tag256 CFDTMPTR46;                              
    union __tag256 CFDTMFDCTR46;                            
    union __tag256 CFDTMDF0_46;                             
    union __tag256 CFDTMDF1_46;                             
    union __tag256 CFDTMDF2_46;                             
    union __tag256 CFDTMDF3_46;                             
    union __tag256 CFDTMDF4_46;                             
    union __tag256 CFDTMID47;                               
    union __tag256 CFDTMPTR47;                              
    union __tag256 CFDTMFDCTR47;                            
    union __tag256 CFDTMDF0_47;                             
    union __tag256 CFDTMDF1_47;                             
    union __tag256 CFDTMDF2_47;                             
    union __tag256 CFDTMDF3_47;                             
    union __tag256 CFDTMDF4_47;                             
    union __tag256 CFDTMID48;                               
    union __tag256 CFDTMPTR48;                              
    union __tag256 CFDTMFDCTR48;                            
    union __tag256 CFDTMDF0_48;                             
    union __tag256 CFDTMDF1_48;                             
    union __tag256 CFDTMDF2_48;                             
    union __tag256 CFDTMDF3_48;                             
    union __tag256 CFDTMDF4_48;                             
    union __tag256 CFDTMID49;                               
    union __tag256 CFDTMPTR49;                              
    union __tag256 CFDTMFDCTR49;                            
    union __tag256 CFDTMDF0_49;                             
    union __tag256 CFDTMDF1_49;                             
    union __tag256 CFDTMDF2_49;                             
    union __tag256 CFDTMDF3_49;                             
    union __tag256 CFDTMDF4_49;                             
    union __tag256 CFDTMID50;                               
    union __tag256 CFDTMPTR50;                              
    union __tag256 CFDTMFDCTR50;                            
    union __tag256 CFDTMDF0_50;                             
    union __tag256 CFDTMDF1_50;                             
    union __tag256 CFDTMDF2_50;                             
    union __tag256 CFDTMDF3_50;                             
    union __tag256 CFDTMDF4_50;                             
    union __tag256 CFDTMID51;                               
    union __tag256 CFDTMPTR51;                              
    union __tag256 CFDTMFDCTR51;                            
    union __tag256 CFDTMDF0_51;                             
    union __tag256 CFDTMDF1_51;                             
    union __tag256 CFDTMDF2_51;                             
    union __tag256 CFDTMDF3_51;                             
    union __tag256 CFDTMDF4_51;                             
    union __tag256 CFDTMID52;                               
    union __tag256 CFDTMPTR52;                              
    union __tag256 CFDTMFDCTR52;                            
    union __tag256 CFDTMDF0_52;                             
    union __tag256 CFDTMDF1_52;                             
    union __tag256 CFDTMDF2_52;                             
    union __tag256 CFDTMDF3_52;                             
    union __tag256 CFDTMDF4_52;                             
    union __tag256 CFDTMID53;                               
    union __tag256 CFDTMPTR53;                              
    union __tag256 CFDTMFDCTR53;                            
    union __tag256 CFDTMDF0_53;                             
    union __tag256 CFDTMDF1_53;                             
    union __tag256 CFDTMDF2_53;                             
    union __tag256 CFDTMDF3_53;                             
    union __tag256 CFDTMDF4_53;                             
    union __tag256 CFDTMID54;                               
    union __tag256 CFDTMPTR54;                              
    union __tag256 CFDTMFDCTR54;                            
    union __tag256 CFDTMDF0_54;                             
    union __tag256 CFDTMDF1_54;                             
    union __tag256 CFDTMDF2_54;                             
    union __tag256 CFDTMDF3_54;                             
    union __tag256 CFDTMDF4_54;                             
    union __tag256 CFDTMID55;                               
    union __tag256 CFDTMPTR55;                              
    union __tag256 CFDTMFDCTR55;                            
    union __tag256 CFDTMDF0_55;                             
    union __tag256 CFDTMDF1_55;                             
    union __tag256 CFDTMDF2_55;                             
    union __tag256 CFDTMDF3_55;                             
    union __tag256 CFDTMDF4_55;                             
    union __tag256 CFDTMID56;                               
    union __tag256 CFDTMPTR56;                              
    union __tag256 CFDTMFDCTR56;                            
    union __tag256 CFDTMDF0_56;                             
    union __tag256 CFDTMDF1_56;                             
    union __tag256 CFDTMDF2_56;                             
    union __tag256 CFDTMDF3_56;                             
    union __tag256 CFDTMDF4_56;                             
    union __tag256 CFDTMID57;                               
    union __tag256 CFDTMPTR57;                              
    union __tag256 CFDTMFDCTR57;                            
    union __tag256 CFDTMDF0_57;                             
    union __tag256 CFDTMDF1_57;                             
    union __tag256 CFDTMDF2_57;                             
    union __tag256 CFDTMDF3_57;                             
    union __tag256 CFDTMDF4_57;                             
    union __tag256 CFDTMID58;                               
    union __tag256 CFDTMPTR58;                              
    union __tag256 CFDTMFDCTR58;                            
    union __tag256 CFDTMDF0_58;                             
    union __tag256 CFDTMDF1_58;                             
    union __tag256 CFDTMDF2_58;                             
    union __tag256 CFDTMDF3_58;                             
    union __tag256 CFDTMDF4_58;                             
    union __tag256 CFDTMID59;                               
    union __tag256 CFDTMPTR59;                              
    union __tag256 CFDTMFDCTR59;                            
    union __tag256 CFDTMDF0_59;                             
    union __tag256 CFDTMDF1_59;                             
    union __tag256 CFDTMDF2_59;                             
    union __tag256 CFDTMDF3_59;                             
    union __tag256 CFDTMDF4_59;                             
    union __tag256 CFDTMID60;                               
    union __tag256 CFDTMPTR60;                              
    union __tag256 CFDTMFDCTR60;                            
    union __tag256 CFDTMDF0_60;                             
    union __tag256 CFDTMDF1_60;                             
    union __tag256 CFDTMDF2_60;                             
    union __tag256 CFDTMDF3_60;                             
    union __tag256 CFDTMDF4_60;                             
    union __tag256 CFDTMID61;                               
    union __tag256 CFDTMPTR61;                              
    union __tag256 CFDTMFDCTR61;                            
    union __tag256 CFDTMDF0_61;                             
    union __tag256 CFDTMDF1_61;                             
    union __tag256 CFDTMDF2_61;                             
    union __tag256 CFDTMDF3_61;                             
    union __tag256 CFDTMDF4_61;                             
    union __tag256 CFDTMID62;                               
    union __tag256 CFDTMPTR62;                              
    union __tag256 CFDTMFDCTR62;                            
    union __tag256 CFDTMDF0_62;                             
    union __tag256 CFDTMDF1_62;                             
    union __tag256 CFDTMDF2_62;                             
    union __tag256 CFDTMDF3_62;                             
    union __tag256 CFDTMDF4_62;                             
    union __tag256 CFDTMID63;                               
    union __tag256 CFDTMPTR63;                              
    union __tag256 CFDTMFDCTR63;                            
    union __tag256 CFDTMDF0_63;                             
    union __tag256 CFDTMDF1_63;                             
    union __tag256 CFDTMDF2_63;                             
    union __tag256 CFDTMDF3_63;                             
    union __tag256 CFDTMDF4_63;                             
    union __tag256 CFDTMID64;                               
    union __tag256 CFDTMPTR64;                              
    union __tag256 CFDTMFDCTR64;                            
    union __tag256 CFDTMDF0_64;                             
    union __tag256 CFDTMDF1_64;                             
    union __tag256 CFDTMDF2_64;                             
    union __tag256 CFDTMDF3_64;                             
    union __tag256 CFDTMDF4_64;                             
    union __tag256 CFDTMID65;                               
    union __tag256 CFDTMPTR65;                              
    union __tag256 CFDTMFDCTR65;                            
    union __tag256 CFDTMDF0_65;                             
    union __tag256 CFDTMDF1_65;                             
    union __tag256 CFDTMDF2_65;                             
    union __tag256 CFDTMDF3_65;                             
    union __tag256 CFDTMDF4_65;                             
    union __tag256 CFDTMID66;                               
    union __tag256 CFDTMPTR66;                              
    union __tag256 CFDTMFDCTR66;                            
    union __tag256 CFDTMDF0_66;                             
    union __tag256 CFDTMDF1_66;                             
    union __tag256 CFDTMDF2_66;                             
    union __tag256 CFDTMDF3_66;                             
    union __tag256 CFDTMDF4_66;                             
    union __tag256 CFDTMID67;                               
    union __tag256 CFDTMPTR67;                              
    union __tag256 CFDTMFDCTR67;                            
    union __tag256 CFDTMDF0_67;                             
    union __tag256 CFDTMDF1_67;                             
    union __tag256 CFDTMDF2_67;                             
    union __tag256 CFDTMDF3_67;                             
    union __tag256 CFDTMDF4_67;                             
    union __tag256 CFDTMID68;                               
    union __tag256 CFDTMPTR68;                              
    union __tag256 CFDTMFDCTR68;                            
    union __tag256 CFDTMDF0_68;                             
    union __tag256 CFDTMDF1_68;                             
    union __tag256 CFDTMDF2_68;                             
    union __tag256 CFDTMDF3_68;                             
    union __tag256 CFDTMDF4_68;                             
    union __tag256 CFDTMID69;                               
    union __tag256 CFDTMPTR69;                              
    union __tag256 CFDTMFDCTR69;                            
    union __tag256 CFDTMDF0_69;                             
    union __tag256 CFDTMDF1_69;                             
    union __tag256 CFDTMDF2_69;                             
    union __tag256 CFDTMDF3_69;                             
    union __tag256 CFDTMDF4_69;                             
    union __tag256 CFDTMID70;                               
    union __tag256 CFDTMPTR70;                              
    union __tag256 CFDTMFDCTR70;                            
    union __tag256 CFDTMDF0_70;                             
    union __tag256 CFDTMDF1_70;                             
    union __tag256 CFDTMDF2_70;                             
    union __tag256 CFDTMDF3_70;                             
    union __tag256 CFDTMDF4_70;                             
    union __tag256 CFDTMID71;                               
    union __tag256 CFDTMPTR71;                              
    union __tag256 CFDTMFDCTR71;                            
    union __tag256 CFDTMDF0_71;                             
    union __tag256 CFDTMDF1_71;                             
    union __tag256 CFDTMDF2_71;                             
    union __tag256 CFDTMDF3_71;                             
    union __tag256 CFDTMDF4_71;                             
    union __tag256 CFDTMID72;                               
    union __tag256 CFDTMPTR72;                              
    union __tag256 CFDTMFDCTR72;                            
    union __tag256 CFDTMDF0_72;                             
    union __tag256 CFDTMDF1_72;                             
    union __tag256 CFDTMDF2_72;                             
    union __tag256 CFDTMDF3_72;                             
    union __tag256 CFDTMDF4_72;                             
    union __tag256 CFDTMID73;                               
    union __tag256 CFDTMPTR73;                              
    union __tag256 CFDTMFDCTR73;                            
    union __tag256 CFDTMDF0_73;                             
    union __tag256 CFDTMDF1_73;                             
    union __tag256 CFDTMDF2_73;                             
    union __tag256 CFDTMDF3_73;                             
    union __tag256 CFDTMDF4_73;                             
    union __tag256 CFDTMID74;                               
    union __tag256 CFDTMPTR74;                              
    union __tag256 CFDTMFDCTR74;                            
    union __tag256 CFDTMDF0_74;                             
    union __tag256 CFDTMDF1_74;                             
    union __tag256 CFDTMDF2_74;                             
    union __tag256 CFDTMDF3_74;                             
    union __tag256 CFDTMDF4_74;                             
    union __tag256 CFDTMID75;                               
    union __tag256 CFDTMPTR75;                              
    union __tag256 CFDTMFDCTR75;                            
    union __tag256 CFDTMDF0_75;                             
    union __tag256 CFDTMDF1_75;                             
    union __tag256 CFDTMDF2_75;                             
    union __tag256 CFDTMDF3_75;                             
    union __tag256 CFDTMDF4_75;                             
    union __tag256 CFDTMID76;                               
    union __tag256 CFDTMPTR76;                              
    union __tag256 CFDTMFDCTR76;                            
    union __tag256 CFDTMDF0_76;                             
    union __tag256 CFDTMDF1_76;                             
    union __tag256 CFDTMDF2_76;                             
    union __tag256 CFDTMDF3_76;                             
    union __tag256 CFDTMDF4_76;                             
    union __tag256 CFDTMID77;                               
    union __tag256 CFDTMPTR77;                              
    union __tag256 CFDTMFDCTR77;                            
    union __tag256 CFDTMDF0_77;                             
    union __tag256 CFDTMDF1_77;                             
    union __tag256 CFDTMDF2_77;                             
    union __tag256 CFDTMDF3_77;                             
    union __tag256 CFDTMDF4_77;                             
    union __tag256 CFDTMID78;                               
    union __tag256 CFDTMPTR78;                              
    union __tag256 CFDTMFDCTR78;                            
    union __tag256 CFDTMDF0_78;                             
    union __tag256 CFDTMDF1_78;                             
    union __tag256 CFDTMDF2_78;                             
    union __tag256 CFDTMDF3_78;                             
    union __tag256 CFDTMDF4_78;                             
    union __tag256 CFDTMID79;                               
    union __tag256 CFDTMPTR79;                              
    union __tag256 CFDTMFDCTR79;                            
    union __tag256 CFDTMDF0_79;                             
    union __tag256 CFDTMDF1_79;                             
    union __tag256 CFDTMDF2_79;                             
    union __tag256 CFDTMDF3_79;                             
    union __tag256 CFDTMDF4_79;                             
    union __tag256 CFDTMID80;                               
    union __tag256 CFDTMPTR80;                              
    union __tag256 CFDTMFDCTR80;                            
    union __tag256 CFDTMDF0_80;                             
    union __tag256 CFDTMDF1_80;                             
    union __tag256 CFDTMDF2_80;                             
    union __tag256 CFDTMDF3_80;                             
    union __tag256 CFDTMDF4_80;                             
    union __tag256 CFDTMID81;                               
    union __tag256 CFDTMPTR81;                              
    union __tag256 CFDTMFDCTR81;                            
    union __tag256 CFDTMDF0_81;                             
    union __tag256 CFDTMDF1_81;                             
    union __tag256 CFDTMDF2_81;                             
    union __tag256 CFDTMDF3_81;                             
    union __tag256 CFDTMDF4_81;                             
    union __tag256 CFDTMID82;                               
    union __tag256 CFDTMPTR82;                              
    union __tag256 CFDTMFDCTR82;                            
    union __tag256 CFDTMDF0_82;                             
    union __tag256 CFDTMDF1_82;                             
    union __tag256 CFDTMDF2_82;                             
    union __tag256 CFDTMDF3_82;                             
    union __tag256 CFDTMDF4_82;                             
    union __tag256 CFDTMID83;                               
    union __tag256 CFDTMPTR83;                              
    union __tag256 CFDTMFDCTR83;                            
    union __tag256 CFDTMDF0_83;                             
    union __tag256 CFDTMDF1_83;                             
    union __tag256 CFDTMDF2_83;                             
    union __tag256 CFDTMDF3_83;                             
    union __tag256 CFDTMDF4_83;                             
    union __tag256 CFDTMID84;                               
    union __tag256 CFDTMPTR84;                              
    union __tag256 CFDTMFDCTR84;                            
    union __tag256 CFDTMDF0_84;                             
    union __tag256 CFDTMDF1_84;                             
    union __tag256 CFDTMDF2_84;                             
    union __tag256 CFDTMDF3_84;                             
    union __tag256 CFDTMDF4_84;                             
    union __tag256 CFDTMID85;                               
    union __tag256 CFDTMPTR85;                              
    union __tag256 CFDTMFDCTR85;                            
    union __tag256 CFDTMDF0_85;                             
    union __tag256 CFDTMDF1_85;                             
    union __tag256 CFDTMDF2_85;                             
    union __tag256 CFDTMDF3_85;                             
    union __tag256 CFDTMDF4_85;                             
    union __tag256 CFDTMID86;                               
    union __tag256 CFDTMPTR86;                              
    union __tag256 CFDTMFDCTR86;                            
    union __tag256 CFDTMDF0_86;                             
    union __tag256 CFDTMDF1_86;                             
    union __tag256 CFDTMDF2_86;                             
    union __tag256 CFDTMDF3_86;                             
    union __tag256 CFDTMDF4_86;                             
    union __tag256 CFDTMID87;                               
    union __tag256 CFDTMPTR87;                              
    union __tag256 CFDTMFDCTR87;                            
    union __tag256 CFDTMDF0_87;                             
    union __tag256 CFDTMDF1_87;                             
    union __tag256 CFDTMDF2_87;                             
    union __tag256 CFDTMDF3_87;                             
    union __tag256 CFDTMDF4_87;                             
    union __tag256 CFDTMID88;                               
    union __tag256 CFDTMPTR88;                              
    union __tag256 CFDTMFDCTR88;                            
    union __tag256 CFDTMDF0_88;                             
    union __tag256 CFDTMDF1_88;                             
    union __tag256 CFDTMDF2_88;                             
    union __tag256 CFDTMDF3_88;                             
    union __tag256 CFDTMDF4_88;                             
    union __tag256 CFDTMID89;                               
    union __tag256 CFDTMPTR89;                              
    union __tag256 CFDTMFDCTR89;                            
    union __tag256 CFDTMDF0_89;                             
    union __tag256 CFDTMDF1_89;                             
    union __tag256 CFDTMDF2_89;                             
    union __tag256 CFDTMDF3_89;                             
    union __tag256 CFDTMDF4_89;                             
    union __tag256 CFDTMID90;                               
    union __tag256 CFDTMPTR90;                              
    union __tag256 CFDTMFDCTR90;                            
    union __tag256 CFDTMDF0_90;                             
    union __tag256 CFDTMDF1_90;                             
    union __tag256 CFDTMDF2_90;                             
    union __tag256 CFDTMDF3_90;                             
    union __tag256 CFDTMDF4_90;                             
    union __tag256 CFDTMID91;                               
    union __tag256 CFDTMPTR91;                              
    union __tag256 CFDTMFDCTR91;                            
    union __tag256 CFDTMDF0_91;                             
    union __tag256 CFDTMDF1_91;                             
    union __tag256 CFDTMDF2_91;                             
    union __tag256 CFDTMDF3_91;                             
    union __tag256 CFDTMDF4_91;                             
    union __tag256 CFDTMID92;                               
    union __tag256 CFDTMPTR92;                              
    union __tag256 CFDTMFDCTR92;                            
    union __tag256 CFDTMDF0_92;                             
    union __tag256 CFDTMDF1_92;                             
    union __tag256 CFDTMDF2_92;                             
    union __tag256 CFDTMDF3_92;                             
    union __tag256 CFDTMDF4_92;                             
    union __tag256 CFDTMID93;                               
    union __tag256 CFDTMPTR93;                              
    union __tag256 CFDTMFDCTR93;                            
    union __tag256 CFDTMDF0_93;                             
    union __tag256 CFDTMDF1_93;                             
    union __tag256 CFDTMDF2_93;                             
    union __tag256 CFDTMDF3_93;                             
    union __tag256 CFDTMDF4_93;                             
    union __tag256 CFDTMID94;                               
    union __tag256 CFDTMPTR94;                              
    union __tag256 CFDTMFDCTR94;                            
    union __tag256 CFDTMDF0_94;                             
    union __tag256 CFDTMDF1_94;                             
    union __tag256 CFDTMDF2_94;                             
    union __tag256 CFDTMDF3_94;                             
    union __tag256 CFDTMDF4_94;                             
    union __tag256 CFDTMID95;                               
    union __tag256 CFDTMPTR95;                              
    union __tag256 CFDTMFDCTR95;                            
    union __tag256 CFDTMDF0_95;                             
    union __tag256 CFDTMDF1_95;                             
    union __tag256 CFDTMDF2_95;                             
    union __tag256 CFDTMDF3_95;                             
    union __tag256 CFDTMDF4_95;                             
    unsigned char  dummy355[5120];                          
    union __tag256 CFDTHLACC0;                              
    union __tag256 CFDTHLACC1;                              
    union __tag256 CFDTHLACC2;                              
    union __tag256 CFDTHLACC3;                              
    union __tag256 CFDTHLACC4;                              
    union __tag256 CFDTHLACC5;                              
    unsigned char  dummy356[1000];                          
    union __tag256 CFDRPGACC0;                              
    union __tag256 CFDRPGACC1;                              
    union __tag256 CFDRPGACC2;                              
    union __tag256 CFDRPGACC3;                              
    union __tag256 CFDRPGACC4;                              
    union __tag256 CFDRPGACC5;                              
    union __tag256 CFDRPGACC6;                              
    union __tag256 CFDRPGACC7;                              
    union __tag256 CFDRPGACC8;                              
    union __tag256 CFDRPGACC9;                              
    union __tag256 CFDRPGACC10;                             
    union __tag256 CFDRPGACC11;                             
    union __tag256 CFDRPGACC12;                             
    union __tag256 CFDRPGACC13;                             
    union __tag256 CFDRPGACC14;                             
    union __tag256 CFDRPGACC15;                             
    union __tag256 CFDRPGACC16;                             
    union __tag256 CFDRPGACC17;                             
    union __tag256 CFDRPGACC18;                             
    union __tag256 CFDRPGACC19;                             
    union __tag256 CFDRPGACC20;                             
    union __tag256 CFDRPGACC21;                             
    union __tag256 CFDRPGACC22;                             
    union __tag256 CFDRPGACC23;                             
    union __tag256 CFDRPGACC24;                             
    union __tag256 CFDRPGACC25;                             
    union __tag256 CFDRPGACC26;                             
    union __tag256 CFDRPGACC27;                             
    union __tag256 CFDRPGACC28;                             
    union __tag256 CFDRPGACC29;                             
    union __tag256 CFDRPGACC30;                             
    union __tag256 CFDRPGACC31;                             
    union __tag256 CFDRPGACC32;                             
    union __tag256 CFDRPGACC33;                             
    union __tag256 CFDRPGACC34;                             
    union __tag256 CFDRPGACC35;                             
    union __tag256 CFDRPGACC36;                             
    union __tag256 CFDRPGACC37;                             
    union __tag256 CFDRPGACC38;                             
    union __tag256 CFDRPGACC39;                             
    union __tag256 CFDRPGACC40;                             
    union __tag256 CFDRPGACC41;                             
    union __tag256 CFDRPGACC42;                             
    union __tag256 CFDRPGACC43;                             
    union __tag256 CFDRPGACC44;                             
    union __tag256 CFDRPGACC45;                             
    union __tag256 CFDRPGACC46;                             
    union __tag256 CFDRPGACC47;                             
    union __tag256 CFDRPGACC48;                             
    union __tag256 CFDRPGACC49;                             
    union __tag256 CFDRPGACC50;                             
    union __tag256 CFDRPGACC51;                             
    union __tag256 CFDRPGACC52;                             
    union __tag256 CFDRPGACC53;                             
    union __tag256 CFDRPGACC54;                             
    union __tag256 CFDRPGACC55;                             
    union __tag256 CFDRPGACC56;                             
    union __tag256 CFDRPGACC57;                             
    union __tag256 CFDRPGACC58;                             
    union __tag256 CFDRPGACC59;                             
    union __tag256 CFDRPGACC60;                             
    union __tag256 CFDRPGACC61;                             
    union __tag256 CFDRPGACC62;                             
    union __tag256 CFDRPGACC63;                             
};
struct __tag560
{                                                           
    union __tag256 VCR00;                                   
    union __tag256 VCR01;                                   
    union __tag256 VCR02;                                   
    union __tag256 VCR03;                                   
    union __tag256 VCR04;                                   
    union __tag256 VCR05;                                   
    union __tag256 VCR06;                                   
    union __tag256 VCR07;                                   
    union __tag256 VCR08;                                   
    union __tag256 VCR09;                                   
    union __tag256 VCR10;                                   
    union __tag256 VCR11;                                   
    union __tag256 VCR12;                                   
    union __tag256 VCR13;                                   
    union __tag256 VCR14;                                   
    union __tag256 VCR15;                                   
    union __tag256 VCR16;                                   
    union __tag256 VCR17;                                   
    union __tag256 VCR18;                                   
    union __tag256 VCR19;                                   
    union __tag256 VCR20;                                   
    union __tag256 VCR21;                                   
    union __tag256 VCR22;                                   
    union __tag256 VCR23;                                   
    union __tag256 VCR24;                                   
    union __tag256 VCR25;                                   
    union __tag256 VCR26;                                   
    union __tag256 VCR27;                                   
    union __tag256 VCR28;                                   
    union __tag256 VCR29;                                   
    union __tag256 VCR30;                                   
    union __tag256 VCR31;                                   
    union __tag256 VCR32;                                   
    union __tag256 VCR33;                                   
    union __tag256 VCR34;                                   
    union __tag256 VCR35;                                   
    unsigned char  dummy357[100];                           
    union __tag256 PWDVCR;                                  
    unsigned char  dummy358[8];                             
    union __tag264 DR00;                                    
    union __tag264 DR02;                                    
    union __tag264 DR04;                                    
    union __tag264 DR06;                                    
    union __tag264 DR08;                                    
    union __tag264 DR10;                                    
    union __tag264 DR12;                                    
    union __tag264 DR14;                                    
    union __tag264 DR16;                                    
    union __tag264 DR18;                                    
    union __tag264 DR20;                                    
    union __tag264 DR22;                                    
    union __tag264 DR24;                                    
    union __tag264 DR26;                                    
    union __tag264 DR28;                                    
    union __tag264 DR30;                                    
    union __tag264 DR32;                                    
    union __tag264 DR34;                                    
    unsigned char  dummy359[48];                            
    union __tag264 PWDTSNDR;                                
    unsigned char  dummy360[132];                           
    unsigned long  DIR00;                                   
    unsigned long  DIR01;                                   
    unsigned long  DIR02;                                   
    unsigned long  DIR03;                                   
    unsigned long  DIR04;                                   
    unsigned long  DIR05;                                   
    unsigned long  DIR06;                                   
    unsigned long  DIR07;                                   
    unsigned long  DIR08;                                   
    unsigned long  DIR09;                                   
    unsigned long  DIR10;                                   
    unsigned long  DIR11;                                   
    unsigned long  DIR12;                                   
    unsigned long  DIR13;                                   
    unsigned long  DIR14;                                   
    unsigned long  DIR15;                                   
    unsigned long  DIR16;                                   
    unsigned long  DIR17;                                   
    unsigned long  DIR18;                                   
    unsigned long  DIR19;                                   
    unsigned long  DIR20;                                   
    unsigned long  DIR21;                                   
    unsigned long  DIR22;                                   
    unsigned long  DIR23;                                   
    unsigned long  DIR24;                                   
    unsigned long  DIR25;                                   
    unsigned long  DIR26;                                   
    unsigned long  DIR27;                                   
    unsigned long  DIR28;                                   
    unsigned long  DIR29;                                   
    unsigned long  DIR30;                                   
    unsigned long  DIR31;                                   
    unsigned long  DIR32;                                   
    unsigned long  DIR33;                                   
    unsigned long  DIR34;                                   
    unsigned long  DIR35;                                   
    unsigned char  dummy361[100];                           
    unsigned long  PWDDIR;                                  
    unsigned char  dummy362[8];                             
    union __tag256 ADHALTR;                                 
    union __tag256 ADCR;                                    
    union __tag264 SGSTR;                                   
    unsigned char  dummy363[40];                            
    union __tag256 SFTCR;                                   
    union __tag264 ULLMTBR0;                                
    union __tag264 ULLMTBR1;                                
    union __tag264 ULLMTBR2;                                
    union __tag256 ECR;                                     
    union __tag256 ULER;                                    
    union __tag256 OWER;                                    
    union __tag256 DGCTL0;                                  
    union __tag264 DGCTL1;                                  
    union __tag264 PDCTL1;                                  
    union __tag256 PDCTL2;                                  
    unsigned char  dummy364[32];                            
    union __tag256 SMPCR;                                   
    unsigned char  dummy365[4];                             
    unsigned char  EMU;                                     
    unsigned char  dummy366[183];                           
    union __tag256 SGSTCR1;                                 
    unsigned char  dummy367[4];                             
    union __tag256 SGCR1;                                   
    union __tag256 SGVCSP1;                                 
    union __tag256 SGVCEP1;                                 
    union __tag256 SGMCYCR1;                                
    union __tag256 SGSEFCR1;                                
    union __tag264 SGTSEL1;                                 
    unsigned char  dummy368[32];                            
    union __tag256 SGSTCR2;                                 
    unsigned char  dummy369[4];                             
    union __tag256 SGCR2;                                   
    union __tag256 SGVCSP2;                                 
    union __tag256 SGVCEP2;                                 
    union __tag256 SGMCYCR2;                                
    union __tag256 SGSEFCR2;                                
    union __tag264 SGTSEL2;                                 
    unsigned char  dummy370[32];                            
    union __tag256 SGSTCR3;                                 
    unsigned char  dummy371[4];                             
    union __tag256 SGCR3;                                   
    union __tag256 SGVCSP3;                                 
    union __tag256 SGVCEP3;                                 
    union __tag256 SGMCYCR3;                                
    union __tag256 SGSEFCR3;                                
    union __tag264 SGTSEL3;                                 
    unsigned char  dummy372[40];                            
    union __tag256 PWDSGCR;                                 
    unsigned char  dummy373[12];                            
    union __tag256 PWDSGSEFCR;                              
};
struct __tag561
{                                                           
    unsigned long  CMP;                                     
    unsigned long  CNT;                                     
    unsigned char  dummy374[8];                             
    unsigned char  TE;                                      
    unsigned char  dummy375[3];                             
    unsigned char  TS;                                      
    unsigned char  dummy376[3];                             
    unsigned char  TT;                                      
    unsigned char  dummy377[7];                             
    unsigned char  CTL;                                     
    unsigned char  dummy378[3];                             
    unsigned char  EMU;                                     
};
struct __tag562
{                                                           
    unsigned char  CTL0;                                    
    unsigned char  dummy379[3];                             
    unsigned long  STR0;                                    
    unsigned short STCR0;                                   
    unsigned char  dummy380[6];                             
    unsigned long  CTL1;                                    
    unsigned short CTL2;                                    
    unsigned char  dummy381[2];                             
    union __tag270 EMU;                                     
    unsigned char  dummy382[4071];                          
    unsigned long  MCTL1;                                   
    unsigned long  MCTL2;                                   
    unsigned long  TX0W;                                    
    unsigned short TX0H;                                    
    unsigned char  dummy383[2];                             
    unsigned long  RX0W;                                    
    unsigned short RX0H;                                    
    unsigned char  dummy384[2];                             
    unsigned long  MRWP0;                                   
    unsigned char  dummy385[36];                            
    unsigned short MCTL0;                                   
    unsigned char  dummy386[2];                             
    unsigned long  CFG0;                                    
    unsigned long  CFG1;                                    
    unsigned long  CFG2;                                    
    unsigned long  CFG3;                                    
    unsigned long  CFG4;                                    
    unsigned long  CFG5;                                    
    unsigned long  CFG6;                                    
    unsigned long  CFG7;                                    
    unsigned char  dummy387[4];                             
    unsigned short BRS0;                                    
    unsigned char  dummy388[2];                             
    unsigned short BRS1;                                    
    unsigned char  dummy389[2];                             
    unsigned short BRS2;                                    
    unsigned char  dummy390[2];                             
    unsigned short BRS3;                                    
};
struct __tag563
{                                                           
    unsigned char  CTL0;                                    
    unsigned char  dummy391[3];                             
    unsigned long  STR0;                                    
    unsigned short STCR0;                                   
    unsigned char  dummy392[6];                             
    unsigned long  CTL1;                                    
    unsigned short CTL2;                                    
    unsigned char  dummy393[2];                             
    union __tag270 EMU;                                     
    unsigned char  dummy394[4071];                          
    unsigned long  MCTL1;                                   
    unsigned long  MCTL2;                                   
    unsigned long  TX0W;                                    
    unsigned short TX0H;                                    
    unsigned char  dummy395[2];                             
    unsigned long  RX0W;                                    
    unsigned short RX0H;                                    
    unsigned char  dummy396[2];                             
    unsigned long  MRWP0;                                   
    unsigned char  dummy397[36];                            
    unsigned short MCTL0;                                   
    unsigned char  dummy398[2];                             
    unsigned long  CFG0;                                    
    unsigned long  CFG1;                                    
    unsigned long  CFG2;                                    
    unsigned long  CFG3;                                    
    unsigned long  CFG4;                                    
    unsigned long  CFG5;                                    
    unsigned char  dummy399[12];                            
    unsigned short BRS0;                                    
    unsigned char  dummy400[2];                             
    unsigned short BRS1;                                    
    unsigned char  dummy401[2];                             
    unsigned short BRS2;                                    
    unsigned char  dummy402[2];                             
    unsigned short BRS3;                                    
};
struct __tag564
{                                                           
    unsigned char  CTL0;                                    
    unsigned char  dummy403[3];                             
    unsigned long  STR0;                                    
    unsigned short STCR0;                                   
    unsigned char  dummy404[6];                             
    unsigned long  CTL1;                                    
    unsigned short CTL2;                                    
    unsigned char  dummy405[2];                             
    union __tag270 EMU;                                     
    unsigned char  dummy406[4071];                          
    unsigned long  MCTL1;                                   
    unsigned long  MCTL2;                                   
    unsigned long  TX0W;                                    
    unsigned short TX0H;                                    
    unsigned char  dummy407[2];                             
    unsigned long  RX0W;                                    
    unsigned short RX0H;                                    
    unsigned char  dummy408[2];                             
    unsigned long  MRWP0;                                   
    unsigned char  dummy409[36];                            
    unsigned short MCTL0;                                   
    unsigned char  dummy410[2];                             
    unsigned long  CFG0;                                    
    unsigned long  CFG1;                                    
    unsigned long  CFG2;                                    
    unsigned long  CFG3;                                    
    unsigned char  dummy411[20];                            
    unsigned short BRS0;                                    
    unsigned char  dummy412[2];                             
    unsigned short BRS1;                                    
    unsigned char  dummy413[2];                             
    unsigned short BRS2;                                    
    unsigned char  dummy414[2];                             
    unsigned short BRS3;                                    
};
struct __tag565
{                                                           
    unsigned char  CTL0;                                    
    unsigned char  dummy415[3];                             
    unsigned long  STR0;                                    
    unsigned short STCR0;                                   
    unsigned char  dummy416[6];                             
    unsigned long  CTL1;                                    
    unsigned short CTL2;                                    
    unsigned char  dummy417[2];                             
    union __tag270 EMU;                                     
    unsigned char  dummy418[4071];                          
    union __tag271 BCTL0;                                   
    unsigned char  dummy419[3];                             
    unsigned long  TX0W;                                    
    unsigned short TX0H;                                    
    unsigned char  dummy420[2];                             
    unsigned short RX0;                                     
    unsigned char  dummy421[2];                             
    unsigned long  CFG0;                                    
};
struct __tag566
{                                                           
    unsigned char  SST;                                     
    unsigned char  dummy422[11];                            
    unsigned short SSER0;                                   
    unsigned char  dummy423[6];                             
    unsigned short SSER2;                                   
    unsigned char  dummy424[102];                           
    unsigned char  HIZCEN0;                                 
    unsigned char  dummy425[15];                            
    unsigned short ADTEN400;                                
    unsigned char  dummy426[2];                             
    unsigned short ADTEN401;                                
    unsigned char  dummy427[2];                             
    unsigned short ADTEN402;                                
    unsigned char  dummy428[38];                            
    unsigned long  REG200;                                  
    unsigned long  REG201;                                  
    unsigned long  REG202;                                  
    unsigned long  REG203;                                  
    unsigned char  dummy429[24];                            
    unsigned long  REG30;                                   
    unsigned long  REG31;                                   
};
struct __tag567
{                                                           
    union __tag256 FSGD02PROT0;                             
    union __tag256 FSGD02PROT1;                             
    union __tag256 FSGD02PROT2;                             
    union __tag256 FSGD02PROT3;                             
    union __tag256 FSGD02PROT4;                             
    union __tag256 FSGD02PROT5;                             
    union __tag256 FSGD02PROT6;                             
    unsigned char  dummy430[4];                             
    union __tag256 FSGD02PROT8;                             
    union __tag256 FSGD02PROT9;                             
    union __tag256 FSGD02PROT10;                            
    union __tag256 FSGD02PROT11;                            
    union __tag256 FSGD02PROT12;                            
    unsigned char  dummy431[4];                             
    union __tag256 FSGD02PROT14;                            
    unsigned char  dummy432[4];                             
    union __tag256 ERRSLV02CTL;                             
    union __tag256 ERRSLV02STAT;                            
    unsigned long  ERRSLV02ADDR;                            
    union __tag264 ERRSLV02TYPE;                            
};
struct __tag568
{                                                           
    union __tag256 FSGD09PROT0;                             
    union __tag256 FSGD09PROT1;                             
    unsigned char  dummy433[56];                            
    union __tag256 ERRSLV09CTL;                             
    union __tag256 ERRSLV09STAT;                            
    unsigned long  ERRSLV09ADDR;                            
    union __tag264 ERRSLV09TYPE;                            
};
struct __tag569
{                                                           
    unsigned short CDR0;                                    
    unsigned char  dummy434[2];                             
    unsigned short CDR1;                                    
    unsigned char  dummy435[2];                             
    unsigned short CDR2;                                    
    unsigned char  dummy436[2];                             
    unsigned short CDR3;                                    
    unsigned char  dummy437[2];                             
    unsigned short CDR4;                                    
    unsigned char  dummy438[2];                             
    unsigned short CDR5;                                    
    unsigned char  dummy439[2];                             
    unsigned short CDR6;                                    
    unsigned char  dummy440[2];                             
    unsigned short CDR7;                                    
    unsigned char  dummy441[2];                             
    unsigned short CDR8;                                    
    unsigned char  dummy442[2];                             
    unsigned short CDR9;                                    
    unsigned char  dummy443[2];                             
    unsigned short CDR10;                                   
    unsigned char  dummy444[2];                             
    unsigned short CDR11;                                   
    unsigned char  dummy445[2];                             
    unsigned short CDR12;                                   
    unsigned char  dummy446[2];                             
    unsigned short CDR13;                                   
    unsigned char  dummy447[2];                             
    unsigned short CDR14;                                   
    unsigned char  dummy448[2];                             
    unsigned short CDR15;                                   
    unsigned char  dummy449[2];                             
    unsigned short TOL;                                     
    unsigned char  dummy450[2];                             
    unsigned short RDT;                                     
    unsigned char  dummy451[2];                             
    unsigned short RSF;                                     
    unsigned char  dummy452[2];                             
    unsigned short TRO;                                     
    unsigned char  dummy453[2];                             
    unsigned short TME;                                     
    unsigned char  dummy454[2];                             
    unsigned short TDL;                                     
    unsigned char  dummy455[2];                             
    unsigned short TO;                                      
    unsigned char  dummy456[2];                             
    unsigned short TOE;                                     
    unsigned char  dummy457[34];                            
    unsigned short CNT0;                                    
    unsigned char  dummy458[2];                             
    unsigned short CNT1;                                    
    unsigned char  dummy459[2];                             
    unsigned short CNT2;                                    
    unsigned char  dummy460[2];                             
    unsigned short CNT3;                                    
    unsigned char  dummy461[2];                             
    unsigned short CNT4;                                    
    unsigned char  dummy462[2];                             
    unsigned short CNT5;                                    
    unsigned char  dummy463[2];                             
    unsigned short CNT6;                                    
    unsigned char  dummy464[2];                             
    unsigned short CNT7;                                    
    unsigned char  dummy465[2];                             
    unsigned short CNT8;                                    
    unsigned char  dummy466[2];                             
    unsigned short CNT9;                                    
    unsigned char  dummy467[2];                             
    unsigned short CNT10;                                   
    unsigned char  dummy468[2];                             
    unsigned short CNT11;                                   
    unsigned char  dummy469[2];                             
    unsigned short CNT12;                                   
    unsigned char  dummy470[2];                             
    unsigned short CNT13;                                   
    unsigned char  dummy471[2];                             
    unsigned short CNT14;                                   
    unsigned char  dummy472[2];                             
    unsigned short CNT15;                                   
    unsigned char  dummy473[2];                             
    unsigned char  CMUR0;                                   
    unsigned char  dummy474[3];                             
    unsigned char  CMUR1;                                   
    unsigned char  dummy475[3];                             
    unsigned char  CMUR2;                                   
    unsigned char  dummy476[3];                             
    unsigned char  CMUR3;                                   
    unsigned char  dummy477[3];                             
    unsigned char  CMUR4;                                   
    unsigned char  dummy478[3];                             
    unsigned char  CMUR5;                                   
    unsigned char  dummy479[3];                             
    unsigned char  CMUR6;                                   
    unsigned char  dummy480[3];                             
    unsigned char  CMUR7;                                   
    unsigned char  dummy481[3];                             
    unsigned char  CMUR8;                                   
    unsigned char  dummy482[3];                             
    unsigned char  CMUR9;                                   
    unsigned char  dummy483[3];                             
    unsigned char  CMUR10;                                  
    unsigned char  dummy484[3];                             
    unsigned char  CMUR11;                                  
    unsigned char  dummy485[3];                             
    unsigned char  CMUR12;                                  
    unsigned char  dummy486[3];                             
    unsigned char  CMUR13;                                  
    unsigned char  dummy487[3];                             
    unsigned char  CMUR14;                                  
    unsigned char  dummy488[3];                             
    unsigned char  CMUR15;                                  
    unsigned char  dummy489[67];                            
    unsigned char  CSR0;                                    
    unsigned char  dummy490[3];                             
    unsigned char  CSR1;                                    
    unsigned char  dummy491[3];                             
    unsigned char  CSR2;                                    
    unsigned char  dummy492[3];                             
    unsigned char  CSR3;                                    
    unsigned char  dummy493[3];                             
    unsigned char  CSR4;                                    
    unsigned char  dummy494[3];                             
    unsigned char  CSR5;                                    
    unsigned char  dummy495[3];                             
    unsigned char  CSR6;                                    
    unsigned char  dummy496[3];                             
    unsigned char  CSR7;                                    
    unsigned char  dummy497[3];                             
    unsigned char  CSR8;                                    
    unsigned char  dummy498[3];                             
    unsigned char  CSR9;                                    
    unsigned char  dummy499[3];                             
    unsigned char  CSR10;                                   
    unsigned char  dummy500[3];                             
    unsigned char  CSR11;                                   
    unsigned char  dummy501[3];                             
    unsigned char  CSR12;                                   
    unsigned char  dummy502[3];                             
    unsigned char  CSR13;                                   
    unsigned char  dummy503[3];                             
    unsigned char  CSR14;                                   
    unsigned char  dummy504[3];                             
    unsigned char  CSR15;                                   
    unsigned char  dummy505[3];                             
    unsigned char  CSC0;                                    
    unsigned char  dummy506[3];                             
    unsigned char  CSC1;                                    
    unsigned char  dummy507[3];                             
    unsigned char  CSC2;                                    
    unsigned char  dummy508[3];                             
    unsigned char  CSC3;                                    
    unsigned char  dummy509[3];                             
    unsigned char  CSC4;                                    
    unsigned char  dummy510[3];                             
    unsigned char  CSC5;                                    
    unsigned char  dummy511[3];                             
    unsigned char  CSC6;                                    
    unsigned char  dummy512[3];                             
    unsigned char  CSC7;                                    
    unsigned char  dummy513[3];                             
    unsigned char  CSC8;                                    
    unsigned char  dummy514[3];                             
    unsigned char  CSC9;                                    
    unsigned char  dummy515[3];                             
    unsigned char  CSC10;                                   
    unsigned char  dummy516[3];                             
    unsigned char  CSC11;                                   
    unsigned char  dummy517[3];                             
    unsigned char  CSC12;                                   
    unsigned char  dummy518[3];                             
    unsigned char  CSC13;                                   
    unsigned char  dummy519[3];                             
    unsigned char  CSC14;                                   
    unsigned char  dummy520[3];                             
    unsigned char  CSC15;                                   
    unsigned char  dummy521[3];                             
    unsigned short TE;                                      
    unsigned char  dummy522[2];                             
    unsigned short TS;                                      
    unsigned char  dummy523[2];                             
    unsigned short TT;                                      
    unsigned char  dummy524[54];                            
    unsigned short CMOR0;                                   
    unsigned char  dummy525[2];                             
    unsigned short CMOR1;                                   
    unsigned char  dummy526[2];                             
    unsigned short CMOR2;                                   
    unsigned char  dummy527[2];                             
    unsigned short CMOR3;                                   
    unsigned char  dummy528[2];                             
    unsigned short CMOR4;                                   
    unsigned char  dummy529[2];                             
    unsigned short CMOR5;                                   
    unsigned char  dummy530[2];                             
    unsigned short CMOR6;                                   
    unsigned char  dummy531[2];                             
    unsigned short CMOR7;                                   
    unsigned char  dummy532[2];                             
    unsigned short CMOR8;                                   
    unsigned char  dummy533[2];                             
    unsigned short CMOR9;                                   
    unsigned char  dummy534[2];                             
    unsigned short CMOR10;                                  
    unsigned char  dummy535[2];                             
    unsigned short CMOR11;                                  
    unsigned char  dummy536[2];                             
    unsigned short CMOR12;                                  
    unsigned char  dummy537[2];                             
    unsigned short CMOR13;                                  
    unsigned char  dummy538[2];                             
    unsigned short CMOR14;                                  
    unsigned char  dummy539[2];                             
    unsigned short CMOR15;                                  
    unsigned char  dummy540[2];                             
    unsigned short TPS;                                     
    unsigned char  dummy541[2];                             
    unsigned char  BRS;                                     
    unsigned char  dummy542[3];                             
    unsigned short TOM;                                     
    unsigned char  dummy543[2];                             
    unsigned short TOC;                                     
    unsigned char  dummy544[2];                             
    unsigned short TDE;                                     
    unsigned char  dummy545[2];                             
    unsigned short TDM;                                     
    unsigned char  dummy546[2];                             
    unsigned short TRE;                                     
    unsigned char  dummy547[2];                             
    unsigned short TRC;                                     
    unsigned char  dummy548[2];                             
    unsigned short RDE;                                     
    unsigned char  dummy549[2];                             
    unsigned short RDM;                                     
    unsigned char  dummy550[2];                             
    unsigned short RDS;                                     
    unsigned char  dummy551[2];                             
    unsigned short RDC;                                     
    unsigned char  dummy552[34];                            
    unsigned char  EMU;                                     
};
struct __tag570
{                                                           
    unsigned short SELB_TAUD0I;                             
};
struct __tag571
{                                                           
    unsigned short CDR0;                                    
    unsigned char  dummy553[2];                             
    unsigned short CDR1;                                    
    unsigned char  dummy554[2];                             
    unsigned short CDR2;                                    
    unsigned char  dummy555[2];                             
    unsigned short CDR3;                                    
    unsigned char  dummy556[2];                             
    unsigned short CDR4;                                    
    unsigned char  dummy557[2];                             
    unsigned short CDR5;                                    
    unsigned char  dummy558[2];                             
    unsigned short CDR6;                                    
    unsigned char  dummy559[2];                             
    unsigned short CDR7;                                    
    unsigned char  dummy560[2];                             
    unsigned short CDR8;                                    
    unsigned char  dummy561[2];                             
    unsigned short CDR9;                                    
    unsigned char  dummy562[2];                             
    unsigned short CDR10;                                   
    unsigned char  dummy563[2];                             
    unsigned short CDR11;                                   
    unsigned char  dummy564[2];                             
    unsigned short CDR12;                                   
    unsigned char  dummy565[2];                             
    unsigned short CDR13;                                   
    unsigned char  dummy566[2];                             
    unsigned short CDR14;                                   
    unsigned char  dummy567[2];                             
    unsigned short CDR15;                                   
    unsigned char  dummy568[2];                             
    unsigned short TOL;                                     
    unsigned char  dummy569[2];                             
    unsigned short RDT;                                     
    unsigned char  dummy570[2];                             
    unsigned short RSF;                                     
    unsigned char  dummy571[10];                            
    unsigned short TDL;                                     
    unsigned char  dummy572[2];                             
    unsigned short TO;                                      
    unsigned char  dummy573[2];                             
    unsigned short TOE;                                     
    unsigned char  dummy574[34];                            
    unsigned short CNT0;                                    
    unsigned char  dummy575[2];                             
    unsigned short CNT1;                                    
    unsigned char  dummy576[2];                             
    unsigned short CNT2;                                    
    unsigned char  dummy577[2];                             
    unsigned short CNT3;                                    
    unsigned char  dummy578[2];                             
    unsigned short CNT4;                                    
    unsigned char  dummy579[2];                             
    unsigned short CNT5;                                    
    unsigned char  dummy580[2];                             
    unsigned short CNT6;                                    
    unsigned char  dummy581[2];                             
    unsigned short CNT7;                                    
    unsigned char  dummy582[2];                             
    unsigned short CNT8;                                    
    unsigned char  dummy583[2];                             
    unsigned short CNT9;                                    
    unsigned char  dummy584[2];                             
    unsigned short CNT10;                                   
    unsigned char  dummy585[2];                             
    unsigned short CNT11;                                   
    unsigned char  dummy586[2];                             
    unsigned short CNT12;                                   
    unsigned char  dummy587[2];                             
    unsigned short CNT13;                                   
    unsigned char  dummy588[2];                             
    unsigned short CNT14;                                   
    unsigned char  dummy589[2];                             
    unsigned short CNT15;                                   
    unsigned char  dummy590[2];                             
    unsigned char  CMUR0;                                   
    unsigned char  dummy591[3];                             
    unsigned char  CMUR1;                                   
    unsigned char  dummy592[3];                             
    unsigned char  CMUR2;                                   
    unsigned char  dummy593[3];                             
    unsigned char  CMUR3;                                   
    unsigned char  dummy594[3];                             
    unsigned char  CMUR4;                                   
    unsigned char  dummy595[3];                             
    unsigned char  CMUR5;                                   
    unsigned char  dummy596[3];                             
    unsigned char  CMUR6;                                   
    unsigned char  dummy597[3];                             
    unsigned char  CMUR7;                                   
    unsigned char  dummy598[3];                             
    unsigned char  CMUR8;                                   
    unsigned char  dummy599[3];                             
    unsigned char  CMUR9;                                   
    unsigned char  dummy600[3];                             
    unsigned char  CMUR10;                                  
    unsigned char  dummy601[3];                             
    unsigned char  CMUR11;                                  
    unsigned char  dummy602[3];                             
    unsigned char  CMUR12;                                  
    unsigned char  dummy603[3];                             
    unsigned char  CMUR13;                                  
    unsigned char  dummy604[3];                             
    unsigned char  CMUR14;                                  
    unsigned char  dummy605[3];                             
    unsigned char  CMUR15;                                  
    unsigned char  dummy606[67];                            
    unsigned char  CSR0;                                    
    unsigned char  dummy607[3];                             
    unsigned char  CSR1;                                    
    unsigned char  dummy608[3];                             
    unsigned char  CSR2;                                    
    unsigned char  dummy609[3];                             
    unsigned char  CSR3;                                    
    unsigned char  dummy610[3];                             
    unsigned char  CSR4;                                    
    unsigned char  dummy611[3];                             
    unsigned char  CSR5;                                    
    unsigned char  dummy612[3];                             
    unsigned char  CSR6;                                    
    unsigned char  dummy613[3];                             
    unsigned char  CSR7;                                    
    unsigned char  dummy614[3];                             
    unsigned char  CSR8;                                    
    unsigned char  dummy615[3];                             
    unsigned char  CSR9;                                    
    unsigned char  dummy616[3];                             
    unsigned char  CSR10;                                   
    unsigned char  dummy617[3];                             
    unsigned char  CSR11;                                   
    unsigned char  dummy618[3];                             
    unsigned char  CSR12;                                   
    unsigned char  dummy619[3];                             
    unsigned char  CSR13;                                   
    unsigned char  dummy620[3];                             
    unsigned char  CSR14;                                   
    unsigned char  dummy621[3];                             
    unsigned char  CSR15;                                   
    unsigned char  dummy622[3];                             
    unsigned char  CSC0;                                    
    unsigned char  dummy623[3];                             
    unsigned char  CSC1;                                    
    unsigned char  dummy624[3];                             
    unsigned char  CSC2;                                    
    unsigned char  dummy625[3];                             
    unsigned char  CSC3;                                    
    unsigned char  dummy626[3];                             
    unsigned char  CSC4;                                    
    unsigned char  dummy627[3];                             
    unsigned char  CSC5;                                    
    unsigned char  dummy628[3];                             
    unsigned char  CSC6;                                    
    unsigned char  dummy629[3];                             
    unsigned char  CSC7;                                    
    unsigned char  dummy630[3];                             
    unsigned char  CSC8;                                    
    unsigned char  dummy631[3];                             
    unsigned char  CSC9;                                    
    unsigned char  dummy632[3];                             
    unsigned char  CSC10;                                   
    unsigned char  dummy633[3];                             
    unsigned char  CSC11;                                   
    unsigned char  dummy634[3];                             
    unsigned char  CSC12;                                   
    unsigned char  dummy635[3];                             
    unsigned char  CSC13;                                   
    unsigned char  dummy636[3];                             
    unsigned char  CSC14;                                   
    unsigned char  dummy637[3];                             
    unsigned char  CSC15;                                   
    unsigned char  dummy638[3];                             
    unsigned short TE;                                      
    unsigned char  dummy639[2];                             
    unsigned short TS;                                      
    unsigned char  dummy640[2];                             
    unsigned short TT;                                      
    unsigned char  dummy641[54];                            
    unsigned short CMOR0;                                   
    unsigned char  dummy642[2];                             
    unsigned short CMOR1;                                   
    unsigned char  dummy643[2];                             
    unsigned short CMOR2;                                   
    unsigned char  dummy644[2];                             
    unsigned short CMOR3;                                   
    unsigned char  dummy645[2];                             
    unsigned short CMOR4;                                   
    unsigned char  dummy646[2];                             
    unsigned short CMOR5;                                   
    unsigned char  dummy647[2];                             
    unsigned short CMOR6;                                   
    unsigned char  dummy648[2];                             
    unsigned short CMOR7;                                   
    unsigned char  dummy649[2];                             
    unsigned short CMOR8;                                   
    unsigned char  dummy650[2];                             
    unsigned short CMOR9;                                   
    unsigned char  dummy651[2];                             
    unsigned short CMOR10;                                  
    unsigned char  dummy652[2];                             
    unsigned short CMOR11;                                  
    unsigned char  dummy653[2];                             
    unsigned short CMOR12;                                  
    unsigned char  dummy654[2];                             
    unsigned short CMOR13;                                  
    unsigned char  dummy655[2];                             
    unsigned short CMOR14;                                  
    unsigned char  dummy656[2];                             
    unsigned short CMOR15;                                  
    unsigned char  dummy657[2];                             
    unsigned short TPS;                                     
    unsigned char  dummy658[6];                             
    unsigned short TOM;                                     
    unsigned char  dummy659[2];                             
    unsigned short TOC;                                     
    unsigned char  dummy660[2];                             
    unsigned short TDE;                                     
    unsigned char  dummy661[14];                            
    unsigned short RDE;                                     
    unsigned char  dummy662[2];                             
    unsigned short RDM;                                     
    unsigned char  dummy663[2];                             
    unsigned short RDS;                                     
    unsigned char  dummy664[2];                             
    unsigned short RDC;                                     
    unsigned char  dummy665[34];                            
    unsigned char  EMU;                                     
};
struct __tag572
{                                                           
    unsigned long  CDR0;                                    
    unsigned long  CDR1;                                    
    unsigned long  CDR2;                                    
    unsigned long  CDR3;                                    
    unsigned long  CNT0;                                    
    unsigned long  CNT1;                                    
    unsigned long  CNT2;                                    
    unsigned long  CNT3;                                    
    unsigned char  CMUR0;                                   
    unsigned char  dummy666[3];                             
    unsigned char  CMUR1;                                   
    unsigned char  dummy667[3];                             
    unsigned char  CMUR2;                                   
    unsigned char  dummy668[3];                             
    unsigned char  CMUR3;                                   
    unsigned char  dummy669[3];                             
    unsigned char  CSR0;                                    
    unsigned char  dummy670[3];                             
    unsigned char  CSR1;                                    
    unsigned char  dummy671[3];                             
    unsigned char  CSR2;                                    
    unsigned char  dummy672[3];                             
    unsigned char  CSR3;                                    
    unsigned char  dummy673[3];                             
    unsigned char  CSC0;                                    
    unsigned char  dummy674[3];                             
    unsigned char  CSC1;                                    
    unsigned char  dummy675[3];                             
    unsigned char  CSC2;                                    
    unsigned char  dummy676[3];                             
    unsigned char  CSC3;                                    
    unsigned char  dummy677[3];                             
    unsigned char  TE;                                      
    unsigned char  dummy678[3];                             
    unsigned char  TS;                                      
    unsigned char  dummy679[3];                             
    unsigned char  TT;                                      
    unsigned char  dummy680[3];                             
    unsigned char  TO;                                      
    unsigned char  dummy681[3];                             
    unsigned char  TOE;                                     
    unsigned char  dummy682[3];                             
    unsigned char  TOL;                                     
    unsigned char  dummy683[3];                             
    unsigned char  RDT;                                     
    unsigned char  dummy684[3];                             
    unsigned char  RSF;                                     
    unsigned char  dummy685[19];                            
    unsigned short CMOR0;                                   
    unsigned char  dummy686[2];                             
    unsigned short CMOR1;                                   
    unsigned char  dummy687[2];                             
    unsigned short CMOR2;                                   
    unsigned char  dummy688[2];                             
    unsigned short CMOR3;                                   
    unsigned char  dummy689[2];                             
    unsigned short TPS;                                     
    unsigned char  dummy690[2];                             
    unsigned char  BRS;                                     
    unsigned char  dummy691[3];                             
    unsigned char  TOM;                                     
    unsigned char  dummy692[3];                             
    unsigned char  TOC;                                     
    unsigned char  dummy693[3];                             
    unsigned char  RDE;                                     
    unsigned char  dummy694[3];                             
    unsigned char  RDM;                                     
    unsigned char  dummy695[3];                             
    unsigned char  EMU;                                     
};
struct __tag573
{                                                           
    unsigned char  SELB_TAUJ0I;                             
};
struct __tag574
{                                                           
    unsigned char  CTL;                                     
    unsigned char  dummy696[3];                             
    unsigned char  STR;                                     
    unsigned char  dummy697[3];                             
    unsigned char  STC;                                     
    unsigned char  dummy698[3];                             
    unsigned char  EMU;                                     
    unsigned char  dummy699[19];                            
    unsigned char  QUE0;                                    
    unsigned char  dummy700[3];                             
    unsigned char  QUE1;                                    
    unsigned char  dummy701[3];                             
    unsigned char  QUE2;                                    
    unsigned char  dummy702[3];                             
    unsigned char  QUE3;                                    
    unsigned char  dummy703[3];                             
    unsigned char  QUE4;                                    
    unsigned char  dummy704[3];                             
    unsigned char  QUE5;                                    
    unsigned char  dummy705[3];                             
    unsigned char  QUE6;                                    
    unsigned char  dummy706[3];                             
    unsigned char  QUE7;                                    
    unsigned char  dummy707[3];                             
    unsigned long  PVCR00_01;                               
    unsigned long  PVCR02_03;                               
    unsigned long  PVCR04_05;                               
    unsigned long  PVCR06_07;                               
    unsigned long  PVCR08_09;                               
    unsigned long  PVCR10_11;                               
    unsigned long  PVCR12_13;                               
    unsigned long  PVCR14_15;                               
    unsigned long  PVCR16_17;                               
    unsigned long  PVCR18_19;                               
    unsigned long  PVCR20_21;                               
    unsigned long  PVCR22_23;                               
    unsigned long  PVCR24_25;                               
    unsigned long  PVCR26_27;                               
    unsigned long  PVCR28_29;                               
    unsigned long  PVCR30_31;                               
    unsigned long  PVCR32_33;                               
    unsigned long  PVCR34_35;                               
    unsigned long  PVCR36_37;                               
    unsigned long  PVCR38_39;                               
    unsigned long  PVCR40_41;                               
    unsigned long  PVCR42_43;                               
    unsigned long  PVCR44_45;                               
    unsigned long  PVCR46_47;                               
    unsigned long  PVCR48_49;                               
    unsigned long  PVCR50_51;                               
    unsigned long  PVCR52_53;                               
    unsigned long  PVCR54_55;                               
    unsigned long  PVCR56_57;                               
    unsigned long  PVCR58_59;                               
    unsigned long  PVCR60_61;                               
    unsigned long  PVCR62_63;                               
};
struct __tag575
{                                                           
    unsigned short CSDR;                                    
    unsigned char  dummy708[2];                             
    unsigned short CRDR;                                    
    unsigned char  dummy709[2];                             
    unsigned short CTDR;                                    
    unsigned char  dummy710[2];                             
    unsigned char  RDT;                                     
    unsigned char  dummy711[3];                             
    unsigned char  RSF;                                     
    unsigned char  dummy712[3];                             
    unsigned short CNT;                                     
    unsigned char  dummy713[10];                            
    unsigned char  CTL;                                     
    unsigned char  dummy714[3];                             
    unsigned short CSBR;                                    
    unsigned char  dummy715[2];                             
    unsigned short CRBR;                                    
    unsigned char  dummy716[2];                             
    unsigned short CTBR;                                    
};
struct __tag576
{                                                           
    unsigned short BRS0;                                    
    unsigned char  dummy717[2];                             
    unsigned short BRS1;                                    
    unsigned char  dummy718[2];                             
    unsigned short BRS2;                                    
    unsigned char  dummy719[2];                             
    unsigned short BRS3;                                    
    unsigned char  dummy720[2];                             
    unsigned char  TE;                                      
    unsigned char  dummy721[3];                             
    unsigned char  TS;                                      
    unsigned char  dummy722[3];                             
    unsigned char  TT;                                      
    unsigned char  dummy723[3];                             
    unsigned char  EMU;                                     
};
struct __tag577
{                                                           
    unsigned long  A0;                                      
    unsigned long  A1;                                      
};
struct __tag578
{                                                           
    union __tag272 CTL0;                                    
    unsigned char  dummy724[3];                             
    union __tag273 CTL1;                                    
    unsigned char  dummy725[3];                             
    union __tag274 CTL2;                                    
    unsigned char  dummy726[3];                             
    unsigned long  SUBC;                                    
    unsigned long  SRBU;                                    
    unsigned char  SEC;                                     
    unsigned char  dummy727[3];                             
    unsigned char  MIN;                                     
    unsigned char  dummy728[3];                             
    unsigned char  HOUR;                                    
    unsigned char  dummy729[3];                             
    unsigned char  WEEK;                                    
    unsigned char  dummy730[3];                             
    unsigned char  DAY;                                     
    unsigned char  dummy731[3];                             
    unsigned char  MONTH;                                   
    unsigned char  dummy732[3];                             
    unsigned char  YEAR;                                    
    unsigned char  dummy733[3];                             
    unsigned long  TIME;                                    
    unsigned long  CAL;                                     
    unsigned char  SUBU;                                    
    unsigned char  dummy734[3];                             
    unsigned long  SCMP;                                    
    unsigned char  ALM;                                     
    unsigned char  dummy735[3];                             
    unsigned char  ALH;                                     
    unsigned char  dummy736[3];                             
    unsigned char  ALW;                                     
    unsigned char  dummy737[3];                             
    unsigned char  SECC;                                    
    unsigned char  dummy738[3];                             
    unsigned char  MINC;                                    
    unsigned char  dummy739[3];                             
    unsigned char  HOURC;                                   
    unsigned char  dummy740[3];                             
    unsigned char  WEEKC;                                   
    unsigned char  dummy741[3];                             
    unsigned char  DAYC;                                    
    unsigned char  dummy742[3];                             
    unsigned char  MONC;                                    
    unsigned char  dummy743[3];                             
    unsigned char  YEARC;                                   
    unsigned char  dummy744[3];                             
    unsigned long  TIMEC;                                   
    unsigned long  CALC;                                    
    unsigned char  dummy745[4];                             
    union __tag270 EMU;                                     
};
struct __tag579
{                                                           
    unsigned short CCR0;                                    
    unsigned char  dummy746[2];                             
    unsigned short CCR1;                                    
    unsigned char  dummy747[2];                             
    unsigned short CNT;                                     
    unsigned char  dummy748[2];                             
    unsigned char  FLG;                                     
    unsigned char  dummy749[3];                             
    unsigned char  FGC;                                     
    unsigned char  dummy750[3];                             
    unsigned char  TE;                                      
    unsigned char  dummy751[3];                             
    unsigned char  TS;                                      
    unsigned char  dummy752[3];                             
    unsigned char  TT;                                      
    unsigned char  dummy753[3];                             
    unsigned char  IOC0;                                    
    unsigned char  dummy754[31];                            
    unsigned short CTL;                                     
    unsigned char  dummy755[2];                             
    unsigned char  IOC1;                                    
    unsigned char  dummy756[3];                             
    unsigned char  EMU;                                     
};
struct __tag580
{                                                           
    unsigned short FLG;                                     
    unsigned char  dummy757[2];                             
    unsigned char  ACWE;                                    
    unsigned char  dummy758[3];                             
    unsigned char  ACTS;                                    
    unsigned char  dummy759[3];                             
    unsigned char  ACTT;                                    
    unsigned char  dummy760[7];                             
    unsigned char  OPHS;                                    
    unsigned char  dummy761[3];                             
    unsigned char  OPHT;                                    
    unsigned char  dummy762[7];                             
    unsigned short CTL0;                                    
    unsigned char  dummy763[2];                             
    unsigned char  CTL1;                                    
    unsigned char  dummy764[3];                             
    unsigned char  EMU;                                     
};
struct __tag581
{                                                           
    unsigned char  WDTE;                                    
    unsigned char  dummy765[3];                             
    unsigned char  EVAC;                                    
    unsigned char  dummy766[3];                             
    unsigned char  REF;                                     
    unsigned char  dummy767[3];                             
    unsigned char  MD;                                      
};
struct __tag582
{                                                           
    union __tag256 VCR00;                                   
    union __tag256 VCR01;                                   
    union __tag256 VCR02;                                   
    union __tag256 VCR03;                                   
    union __tag256 VCR04;                                   
    union __tag256 VCR05;                                   
    union __tag256 VCR06;                                   
    union __tag256 VCR07;                                   
    union __tag256 VCR08;                                   
    union __tag256 VCR09;                                   
    union __tag256 VCR10;                                   
    union __tag256 VCR11;                                   
    union __tag256 VCR12;                                   
    union __tag256 VCR13;                                   
    union __tag256 VCR14;                                   
    union __tag256 VCR15;                                   
    union __tag256 VCR16;                                   
    union __tag256 VCR17;                                   
    union __tag256 VCR18;                                   
    union __tag256 VCR19;                                   
    union __tag256 VCR20;                                   
    union __tag256 VCR21;                                   
    union __tag256 VCR22;                                   
    union __tag256 VCR23;                                   
    union __tag256 VCR24;                                   
    union __tag256 VCR25;                                   
    union __tag256 VCR26;                                   
    union __tag256 VCR27;                                   
    union __tag256 VCR28;                                   
    union __tag256 VCR29;                                   
    union __tag256 VCR30;                                   
    union __tag256 VCR31;                                   
    union __tag256 VCR32;                                   
    union __tag256 VCR33;                                   
    union __tag256 VCR34;                                   
    union __tag256 VCR35;                                   
    union __tag256 VCR36;                                   
    union __tag256 VCR37;                                   
    union __tag256 VCR38;                                   
    union __tag256 VCR39;                                   
    union __tag256 VCR40;                                   
    union __tag256 VCR41;                                   
    union __tag256 VCR42;                                   
    union __tag256 VCR43;                                   
    union __tag256 VCR44;                                   
    union __tag256 VCR45;                                   
    union __tag256 VCR46;                                   
    union __tag256 VCR47;                                   
    union __tag256 VCR48;                                   
    union __tag256 VCR49;                                   
    unsigned char  dummy768[44];                            
    union __tag256 PWDVCR;                                  
    unsigned char  dummy769[8];                             
    union __tag264 DR00;                                    
    union __tag264 DR02;                                    
    union __tag264 DR04;                                    
    union __tag264 DR06;                                    
    union __tag264 DR08;                                    
    union __tag264 DR10;                                    
    union __tag264 DR12;                                    
    union __tag264 DR14;                                    
    union __tag264 DR16;                                    
    union __tag264 DR18;                                    
    union __tag264 DR20;                                    
    union __tag264 DR22;                                    
    union __tag264 DR24;                                    
    union __tag264 DR26;                                    
    union __tag264 DR28;                                    
    union __tag264 DR30;                                    
    union __tag264 DR32;                                    
    union __tag264 DR34;                                    
    union __tag264 DR36;                                    
    union __tag264 DR38;                                    
    union __tag264 DR40;                                    
    union __tag264 DR42;                                    
    union __tag264 DR44;                                    
    union __tag264 DR46;                                    
    union __tag264 DR48;                                    
    unsigned char  dummy770[20];                            
    union __tag264 PWDTSNDR;                                
    unsigned char  dummy771[132];                           
    unsigned long  DIR00;                                   
    unsigned long  DIR01;                                   
    unsigned long  DIR02;                                   
    unsigned long  DIR03;                                   
    unsigned long  DIR04;                                   
    unsigned long  DIR05;                                   
    unsigned long  DIR06;                                   
    unsigned long  DIR07;                                   
    unsigned long  DIR08;                                   
    unsigned long  DIR09;                                   
    unsigned long  DIR10;                                   
    unsigned long  DIR11;                                   
    unsigned long  DIR12;                                   
    unsigned long  DIR13;                                   
    unsigned long  DIR14;                                   
    unsigned long  DIR15;                                   
    unsigned long  DIR16;                                   
    unsigned long  DIR17;                                   
    unsigned long  DIR18;                                   
    unsigned long  DIR19;                                   
    unsigned long  DIR20;                                   
    unsigned long  DIR21;                                   
    unsigned long  DIR22;                                   
    unsigned long  DIR23;                                   
    unsigned long  DIR24;                                   
    unsigned long  DIR25;                                   
    unsigned long  DIR26;                                   
    unsigned long  DIR27;                                   
    unsigned long  DIR28;                                   
    unsigned long  DIR29;                                   
    unsigned long  DIR30;                                   
    unsigned long  DIR31;                                   
    unsigned long  DIR32;                                   
    unsigned long  DIR33;                                   
    unsigned long  DIR34;                                   
    unsigned long  DIR35;                                   
    unsigned long  DIR36;                                   
    unsigned long  DIR37;                                   
    unsigned long  DIR38;                                   
    unsigned long  DIR39;                                   
    unsigned long  DIR40;                                   
    unsigned long  DIR41;                                   
    unsigned long  DIR42;                                   
    unsigned long  DIR43;                                   
    unsigned long  DIR44;                                   
    unsigned long  DIR45;                                   
    unsigned long  DIR46;                                   
    unsigned long  DIR47;                                   
    unsigned long  DIR48;                                   
    unsigned long  DIR49;                                   
    unsigned char  dummy772[44];                            
    unsigned long  PWDDIR;                                  
    unsigned char  dummy773[8];                             
    union __tag256 ADHALTR;                                 
    union __tag256 ADCR;                                    
    union __tag264 SGSTR;                                   
    union __tag256 MPXCURR;                                 
    unsigned char  dummy774[4];                             
    union __tag256 THSMPSTCR;                               
    union __tag256 THCR;                                    
    union __tag256 THAHLDSTCR;                              
    union __tag256 THBHLDSTCR;                              
    union __tag256 THACR;                                   
    union __tag256 THBCR;                                   
    union __tag256 THER;                                    
    union __tag256 THGSR;                                   
    union __tag256 SFTCR;                                   
    union __tag264 ULLMTBR0;                                
    union __tag264 ULLMTBR1;                                
    union __tag264 ULLMTBR2;                                
    union __tag256 ECR;                                     
    union __tag256 ULER;                                    
    union __tag256 OWER;                                    
    union __tag256 DGCTL0;                                  
    union __tag264 DGCTL1;                                  
    union __tag264 PDCTL1;                                  
    union __tag256 PDCTL2;                                  
    unsigned char  dummy775[32];                            
    union __tag256 SMPCR;                                   
    unsigned char  dummy776[4];                             
    unsigned char  EMU;                                     
    unsigned char  dummy777[183];                           
    union __tag256 SGSTCR1;                                 
    unsigned char  dummy778[4];                             
    union __tag256 SGCR1;                                   
    union __tag256 SGVCSP1;                                 
    union __tag256 SGVCEP1;                                 
    union __tag256 SGMCYCR1;                                
    union __tag256 SGSEFCR1;                                
    union __tag264 SGTSEL1;                                 
    unsigned char  dummy779[32];                            
    union __tag256 SGSTCR2;                                 
    unsigned char  dummy780[4];                             
    union __tag256 SGCR2;                                   
    union __tag256 SGVCSP2;                                 
    union __tag256 SGVCEP2;                                 
    union __tag256 SGMCYCR2;                                
    union __tag256 SGSEFCR2;                                
    union __tag264 SGTSEL2;                                 
    unsigned char  dummy781[32];                            
    union __tag256 SGSTCR3;                                 
    unsigned char  dummy782[4];                             
    union __tag256 SGCR3;                                   
    union __tag256 SGVCSP3;                                 
    union __tag256 SGVCEP3;                                 
    union __tag256 SGMCYCR3;                                
    union __tag256 SGSEFCR3;                                
    union __tag264 SGTSEL3;                                 
    unsigned char  dummy783[40];                            
    union __tag256 PWDSGCR;                                 
    unsigned char  dummy784[12];                            
    union __tag256 PWDSGSEFCR;                              
};
struct __tag583
{                                                           
    unsigned long  CIN;                                     
    unsigned long  COUT;                                    
    unsigned char  dummy785[24];                            
    unsigned char  CTL;                                     
};
struct __tag584
{                                                           
    union __tag275 KRM;                                     
};
struct __tag585
{                                                           
    unsigned long  PROTCMD0;                                
    unsigned long  PROTS0;                                  
    unsigned char  dummy786[32760];                         
    unsigned long  PROTCMD1;                                
    unsigned long  PROTS1;                                  
};
struct __tag586
{                                                           
    unsigned long  PSC;                                     
    unsigned char  dummy787[12];                            
    unsigned long  STPT;                                    
};
struct __tag587
{                                                           
    unsigned long  WUF0;                                    
    unsigned long  WUFMSK0;                                 
    unsigned long  WUFC0;                                   
};
struct __tag588
{                                                           
    unsigned long  WUF20;                                   
    unsigned long  WUFMSK20;                                
    unsigned long  WUFC20;                                  
};
struct __tag589
{                                                           
    unsigned long  RESF;                                    
    unsigned char  dummy788[4];                             
    unsigned long  RESFC;                                   
    unsigned char  dummy789[244];                           
    unsigned long  RESFR;                                   
    unsigned char  dummy790[4];                             
    unsigned long  RESFCR;                                  
    unsigned char  dummy791[408];                           
    unsigned long  SWRESA;                                  
    unsigned char  dummy792[11256];                         
    unsigned long  CYCRBASE;                                
};
struct __tag590
{                                                           
    unsigned long  VLVF;                                    
    unsigned char  dummy793[4];                             
    unsigned long  VLVFC;                                   
    unsigned char  dummy794[116];                           
    unsigned long  LVICNT;                                  
    unsigned char  dummy795[9980];                          
    unsigned long  CVMF;                                    
    unsigned long  CVMDE;                                   
    unsigned char  dummy796[12];                            
    unsigned long  CVMDIAG;                                 
    unsigned char  dummy797[232];                           
    unsigned long  PROTCMDCVM;                              
    unsigned long  PROTSCVM;                                
};
struct __tag591
{                                                           
    unsigned long  IOHOLD;                                  
};
struct __tag592
{                                                           
    unsigned long  ROSCE;                                   
    unsigned long  ROSCS;                                   
    unsigned char  dummy798[16];                            
    unsigned long  ROSCSTPM;                                
    unsigned long  ROSCUT;                                  
    unsigned char  dummy799[224];                           
    unsigned long  MOSCE;                                   
    unsigned long  MOSCS;                                   
    unsigned long  MOSCC;                                   
    unsigned long  MOSCST;                                  
    unsigned char  dummy800[8];                             
    unsigned long  MOSCSTPM;                                
    unsigned long  MOSCM;                                   
    unsigned char  dummy801[224];                           
    unsigned long  SOSCE;                                   
    unsigned long  SOSCS;                                   
    unsigned char  dummy802[4];                             
    unsigned long  SOSCST;                                  
    unsigned char  dummy803[3568];                          
    unsigned long  CKSC_AWDTAD_CTL;                         
    unsigned char  dummy804[4];                             
    unsigned long  CKSC_AWDTAD_ACT;                         
    unsigned char  dummy805[12];                            
    unsigned long  CKSC_AWDTAD_STPM;                        
    unsigned char  dummy806[228];                           
    unsigned long  CKSC_ATAUJS_CTL;                         
    unsigned char  dummy807[4];                             
    unsigned long  CKSC_ATAUJS_ACT;                         
    unsigned char  dummy808[244];                           
    unsigned long  CKSC_ATAUJD_CTL;                         
    unsigned char  dummy809[4];                             
    unsigned long  CKSC_ATAUJD_ACT;                         
    unsigned char  dummy810[12];                            
    unsigned long  CKSC_ATAUJD_STPM;                        
    unsigned char  dummy811[228];                           
    unsigned long  CKSC_ARTCAS_CTL;                         
    unsigned char  dummy812[4];                             
    unsigned long  CKSC_ARTCAS_ACT;                         
    unsigned char  dummy813[244];                           
    unsigned long  CKSC_ARTCAD_CTL;                         
    unsigned char  dummy814[4];                             
    unsigned long  CKSC_ARTCAD_ACT;                         
    unsigned char  dummy815[12];                            
    unsigned long  CKSC_ARTCAD_STPM;                        
    unsigned char  dummy816[228];                           
    unsigned long  CKSC_AADCAS_CTL;                         
    unsigned char  dummy817[4];                             
    unsigned long  CKSC_AADCAS_ACT;                         
    unsigned char  dummy818[244];                           
    unsigned long  CKSC_AADCAD_CTL;                         
    unsigned char  dummy819[4];                             
    unsigned long  CKSC_AADCAD_ACT;                         
    unsigned char  dummy820[12];                            
    unsigned long  CKSC_AADCAD_STPM;                        
    unsigned char  dummy821[228];                           
    unsigned long  CKSC_AFOUTS_CTL;                         
    unsigned char  dummy822[4];                             
    unsigned long  CKSC_AFOUTS_ACT;                         
    unsigned char  dummy823[12];                            
    unsigned long  CKSC_AFOUTS_STPM;                        
    unsigned char  dummy824[228];                           
    unsigned long  FOUTDIV;                                 
    unsigned long  FOUTSTAT;                                
    unsigned char  dummy825[26616];                         
    unsigned long  PLLE;                                    
    unsigned long  PLLS;                                    
    unsigned long  PLLC;                                    
    unsigned char  dummy826[4084];                          
    unsigned long  CKSC_CPUCLKS_CTL;                        
    unsigned char  dummy827[4];                             
    unsigned long  CKSC_CPUCLKS_ACT;                        
    unsigned char  dummy828[4];                             
    unsigned long  CKSC_PPLLCLKS_CTL;                       
    unsigned char  dummy829[4];                             
    unsigned long  CKSC_PPLLCLKS_ACT;                       
    unsigned char  dummy830[228];                           
    unsigned long  CKSC_CPUCLKD_CTL;                        
    unsigned char  dummy831[4];                             
    unsigned long  CKSC_CPUCLKD_ACT;                        
    unsigned char  dummy832[244];                           
    unsigned long  CKSC_IPERI1S_CTL;                        
    unsigned char  dummy833[4];                             
    unsigned long  CKSC_IPERI1S_ACT;                        
    unsigned char  dummy834[244];                           
    unsigned long  CKSC_IPERI2S_CTL;                        
    unsigned char  dummy835[4];                             
    unsigned long  CKSC_IPERI2S_ACT;                        
    unsigned char  dummy836[244];                           
    unsigned long  CKSC_ILINS_CTL;                          
    unsigned char  dummy837[4];                             
    unsigned long  CKSC_ILINS_ACT;                          
    unsigned char  dummy838[244];                           
    unsigned long  CKSC_IADCAS_CTL;                         
    unsigned char  dummy839[4];                             
    unsigned long  CKSC_IADCAS_ACT;                         
    unsigned char  dummy840[244];                           
    unsigned long  CKSC_IADCAD_CTL;                         
    unsigned char  dummy841[4];                             
    unsigned long  CKSC_IADCAD_ACT;                         
    unsigned char  dummy842[244];                           
    unsigned long  CKSC_PLLIS_CTL;                          
    unsigned char  dummy843[4];                             
    unsigned long  CKSC_PLLIS_ACT;                          
    unsigned char  dummy844[244];                           
    unsigned long  CKSC_ILIND_CTL;                          
    unsigned char  dummy845[4];                             
    unsigned long  CKSC_ILIND_ACT;                          
    unsigned char  dummy846[12];                            
    unsigned long  CKSC_ILIND_STPM;                         
    unsigned char  dummy847[228];                           
    unsigned long  CKSC_ICANS_CTL;                          
    unsigned char  dummy848[4];                             
    unsigned long  CKSC_ICANS_ACT;                          
    unsigned char  dummy849[12];                            
    unsigned long  CKSC_ICANS_STPM;                         
    unsigned char  dummy850[228];                           
    unsigned long  CKSC_ICANOSCD_CTL;                       
    unsigned char  dummy851[4];                             
    unsigned long  CKSC_ICANOSCD_ACT;                       
    unsigned char  dummy852[12];                            
    unsigned long  CKSC_ICANOSCD_STPM;                      
    unsigned char  dummy853[228];                           
    unsigned long  CKSC_ICSIS_CTL;                          
    unsigned char  dummy854[4];                             
    unsigned long  CKSC_ICSIS_ACT;                          
    unsigned char  dummy855[244];                           
    unsigned long  CKSC_IIICS_CTL;                          
    unsigned char  dummy856[4];                             
    unsigned long  CKSC_IIICS_ACT;                          
};
struct __tag593
{                                                           
    unsigned long  SCTLR;                                   
    unsigned long  EVFR;                                    
    unsigned long  DPSELR0;                                 
    union __tag276 DPSELRM;                                 
    union __tag277 DPSELRH;                                 
    unsigned long  DPDSR0;                                  
    union __tag278 DPDSRM;                                  
    union __tag279 DPDSRH;                                  
    unsigned long  DPDIMR0;                                 
    unsigned char  DPDIMR1;                                 
    unsigned char  dummy857[3];                             
    unsigned char  DPDIMR2;                                 
    unsigned char  dummy858[3];                             
    unsigned char  DPDIMR3;                                 
    unsigned char  dummy859[3];                             
    unsigned char  DPDIMR4;                                 
    unsigned char  dummy860[3];                             
    unsigned char  DPDIMR5;                                 
    unsigned char  dummy861[3];                             
    unsigned char  DPDIMR6;                                 
    unsigned char  dummy862[3];                             
    unsigned char  DPDIMR7;                                 
    unsigned char  dummy863[3];                             
    unsigned short CNTVAL;                                  
    unsigned char  dummy864[2];                             
    unsigned char  SOSTR;                                   
};
struct __tag594
{                                                           
    unsigned long  WUF_ISO0;                                
    unsigned long  WUFMSK_ISO0;                             
    unsigned long  WUFC_ISO0;                               
};
struct __tag595
{                                                           
    unsigned char  CTL0;                                    
    unsigned char  dummy865[7];                             
    unsigned short CMPL;                                    
    unsigned char  dummy866[2];                             
    unsigned short CMPH;                                    
    unsigned char  dummy867[2];                             
    unsigned char  PCMD;                                    
    unsigned char  dummy868[3];                             
    unsigned char  PS;                                      
    unsigned char  dummy869[3];                             
    unsigned char  EMU0;                                    
};
struct __tag596
{                                                           
    unsigned long  TEST;                                    
    unsigned long  TESTS;                                   
    unsigned char  dummy870[248];                           
    unsigned long  PROTCMDCLMA;                             
    unsigned long  PROTSCLMA;                               
};
struct __tag597
{                                                           
    union __tag256 FSGD06PROT0;                             
    union __tag256 FSGD06PROT1;                             
    unsigned char  dummy871[8];                             
    union __tag256 FSGD06PROT4;                             
    union __tag256 FSGD06PROT5;                             
    union __tag256 FSGD06PROT6;                             
    union __tag256 FSGD06PROT7;                             
    union __tag256 FSGD06PROT8;                             
    unsigned char  dummy872[28];                            
    union __tag256 ERRSLV06CTL;                             
    union __tag256 ERRSLV06STAT;                            
    unsigned long  ERRSLV06ADDR;                            
    union __tag264 ERRSLV06TYPE;                            
};
struct __tag598
{                                                           
    union __tag256 FSGD03PROT0;                             
    union __tag256 FSGD03PROT1;                             
    union __tag256 FSGD03PROT2;                             
    union __tag256 FSGD03PROT3;                             
    union __tag256 FSGD03PROT4;                             
    union __tag256 FSGD03PROT5;                             
    union __tag256 FSGD03PROT6;                             
    unsigned char  dummy873[20];                            
    union __tag256 FSGD03PROT12;                            
    unsigned char  dummy874[12];                            
    union __tag256 ERRSLV03CTL;                             
    union __tag256 ERRSLV03STAT;                            
    unsigned long  ERRSLV03ADDR;                            
    union __tag264 ERRSLV03TYPE;                            
};
struct __tag599
{                                                           
    union __tag256 FSGD04PROT0;                             
    union __tag256 FSGD04PROT1;                             
    unsigned char  dummy875[8];                             
    union __tag256 FSGD04PROT4;                             
    union __tag256 FSGD04PROT5;                             
    union __tag256 FSGD04PROT6;                             
    union __tag256 FSGD04PROT7;                             
    union __tag256 FSGD04PROT8;                             
    unsigned char  dummy876[4];                             
    union __tag256 FSGD04PROT10;                            
    union __tag256 FSGD04PROT11;                            
    unsigned char  dummy877[16];                            
    union __tag256 ERRSLV04CTL;                             
    union __tag256 ERRSLV04STAT;                            
    unsigned long  ERRSLV04ADDR;                            
    union __tag264 ERRSLV04TYPE;                            
};
struct __tag600
{                                                           
    union __tag256 FSGD05PROT0;                             
    union __tag256 FSGD05PROT1;                             
    union __tag256 FSGD05PROT2;                             
    union __tag256 FSGD05PROT3;                             
    union __tag256 FSGD05PROT4;                             
    union __tag256 FSGD05PROT5;                             
    union __tag256 FSGD05PROT6;                             
    union __tag256 FSGD05PROT7;                             
    union __tag256 FSGD05PROT8;                             
    union __tag256 FSGD05PROT9;                             
    union __tag256 FSGD05PROT10;                            
    union __tag256 FSGD05PROT11;                            
    unsigned char  dummy878[16];                            
    union __tag256 ERRSLV05CTL;                             
    union __tag256 ERRSLV05STAT;                            
    unsigned long  ERRSLV05ADDR;                            
    union __tag264 ERRSLV05TYPE;                            
};
struct __tag601
{                                                           
    union __tag256 SP;                                      
    unsigned char  dummy879[112];                           
    union __tag256 G0MK;                                    
    union __tag256 G0BA;                                    
    unsigned char  dummy880[8];                             
    union __tag256 G1MK;                                    
    union __tag256 G1BA;                                    
    unsigned char  dummy881[8];                             
    union __tag256 G2MK;                                    
    union __tag256 G2BA;                                    
    unsigned char  dummy882[8];                             
    union __tag256 G3MK;                                    
    union __tag256 G3BA;                                    
};
struct __tag602
{                                                           
    unsigned short CONT;                                    
    unsigned short FLAG;                                    
    unsigned char  dummy883[4];                             
    unsigned long  ADDR;                                    
};
struct __tag603
{                                                           
    union __tag280 ICCSIH2IC_1;                             
    union __tag281 ICCSIH3IC_1;                             
    union __tag282 ICCSIH2IR_1;                             
    union __tag283 ICCSIH2IRE_1;                            
    union __tag284 ICCSIH2IJC_1;                            
    union __tag285 ICCSIH3IR_1;                             
    union __tag286 ICCSIH3IRE_1;                            
    union __tag287 ICCSIH3IJC_1;                            
    union __tag288 ICCSIH1IC_1;                             
    union __tag289 ICCSIH1IR_1;                             
    union __tag290 ICADCA0I0;                               
    union __tag291 ICADCA0I1;                               
    union __tag292 ICADCA0I2;                               
    union __tag293 ICDCUTDI;                                
    union __tag294 ICRCANGERR0;                             
    union __tag295 ICRCANGRECC0;                            
    union __tag296 ICRCAN0ERR;                              
    union __tag297 ICRCAN0REC;                              
    union __tag298 ICRCAN0TRX;                              
    union __tag299 ICCSIG0IC;                               
    union __tag300 ICCSIG0IR;                               
    union __tag301 ICCSIH0IC;                               
    union __tag302 ICCSIH0IR;                               
    union __tag303 ICCSIH0IRE;                              
    unsigned char  dummy884[56];                            
    union __tag304 FNC;                                     
    union __tag305 FIC;                                     
    unsigned char  dummy885[116];                           
    union __tag306 IMR0;                                    
};
struct __tag604
{                                                           
    unsigned long  TL;                                      
    unsigned char  dummy886[28];                            
    unsigned long  ER;                                      
    unsigned char  dummy887[12];                            
    unsigned long  DM0CMV;                                  
    unsigned long  DM1CMV;                                  
    unsigned char  dummy888[4];                             
    unsigned long  CMVC;                                    
    unsigned char  dummy889[192];                           
    unsigned long  DM00CM;                                  
    unsigned long  DM01CM;                                  
    unsigned long  DM02CM;                                  
    unsigned long  DM03CM;                                  
    unsigned long  DM04CM;                                  
    unsigned long  DM05CM;                                  
    unsigned long  DM06CM;                                  
    unsigned long  DM07CM;                                  
    unsigned long  DM10CM;                                  
    unsigned long  DM11CM;                                  
    unsigned long  DM12CM;                                  
    unsigned long  DM13CM;                                  
    unsigned long  DM14CM;                                  
    unsigned long  DM15CM;                                  
    unsigned long  DM16CM;                                  
    unsigned long  DM17CM;                                  
    unsigned char  dummy890[704];                           
    unsigned long  DSA0;                                    
    unsigned long  DDA0;                                    
    unsigned long  DTC0;                                    
    unsigned long  DTCT0;                                   
    unsigned long  DRSA0;                                   
    unsigned long  DRDA0;                                   
    unsigned long  DRTC0;                                   
    unsigned char  dummy891[4];                             
    unsigned long  DCEN0;                                   
    unsigned long  DCST0;                                   
    unsigned long  DCSTS0;                                  
    unsigned long  DCSTC0;                                  
    unsigned long  DTFR0;                                   
    unsigned long  DTFRRQ0;                                 
    unsigned long  DTFRRQC0;                                
    unsigned char  dummy892[4];                             
    unsigned long  DSA1;                                    
    unsigned long  DDA1;                                    
    unsigned long  DTC1;                                    
    unsigned long  DTCT1;                                   
    unsigned long  DRSA1;                                   
    unsigned long  DRDA1;                                   
    unsigned long  DRTC1;                                   
    unsigned char  dummy893[4];                             
    unsigned long  DCEN1;                                   
    unsigned long  DCST1;                                   
    unsigned long  DCSTS1;                                  
    unsigned long  DCSTC1;                                  
    unsigned long  DTFR1;                                   
    unsigned long  DTFRRQ1;                                 
    unsigned long  DTFRRQC1;                                
    unsigned char  dummy894[4];                             
    unsigned long  DSA2;                                    
    unsigned long  DDA2;                                    
    unsigned long  DTC2;                                    
    unsigned long  DTCT2;                                   
    unsigned long  DRSA2;                                   
    unsigned long  DRDA2;                                   
    unsigned long  DRTC2;                                   
    unsigned char  dummy895[4];                             
    unsigned long  DCEN2;                                   
    unsigned long  DCST2;                                   
    unsigned long  DCSTS2;                                  
    unsigned long  DCSTC2;                                  
    unsigned long  DTFR2;                                   
    unsigned long  DTFRRQ2;                                 
    unsigned long  DTFRRQC2;                                
    unsigned char  dummy896[4];                             
    unsigned long  DSA3;                                    
    unsigned long  DDA3;                                    
    unsigned long  DTC3;                                    
    unsigned long  DTCT3;                                   
    unsigned long  DRSA3;                                   
    unsigned long  DRDA3;                                   
    unsigned long  DRTC3;                                   
    unsigned char  dummy897[4];                             
    unsigned long  DCEN3;                                   
    unsigned long  DCST3;                                   
    unsigned long  DCSTS3;                                  
    unsigned long  DCSTC3;                                  
    unsigned long  DTFR3;                                   
    unsigned long  DTFRRQ3;                                 
    unsigned long  DTFRRQC3;                                
    unsigned char  dummy898[4];                             
    unsigned long  DSA4;                                    
    unsigned long  DDA4;                                    
    unsigned long  DTC4;                                    
    unsigned long  DTCT4;                                   
    unsigned long  DRSA4;                                   
    unsigned long  DRDA4;                                   
    unsigned long  DRTC4;                                   
    unsigned char  dummy899[4];                             
    unsigned long  DCEN4;                                   
    unsigned long  DCST4;                                   
    unsigned long  DCSTS4;                                  
    unsigned long  DCSTC4;                                  
    unsigned long  DTFR4;                                   
    unsigned long  DTFRRQ4;                                 
    unsigned long  DTFRRQC4;                                
    unsigned char  dummy900[4];                             
    unsigned long  DSA5;                                    
    unsigned long  DDA5;                                    
    unsigned long  DTC5;                                    
    unsigned long  DTCT5;                                   
    unsigned long  DRSA5;                                   
    unsigned long  DRDA5;                                   
    unsigned long  DRTC5;                                   
    unsigned char  dummy901[4];                             
    unsigned long  DCEN5;                                   
    unsigned long  DCST5;                                   
    unsigned long  DCSTS5;                                  
    unsigned long  DCSTC5;                                  
    unsigned long  DTFR5;                                   
    unsigned long  DTFRRQ5;                                 
    unsigned long  DTFRRQC5;                                
    unsigned char  dummy902[4];                             
    unsigned long  DSA6;                                    
    unsigned long  DDA6;                                    
    unsigned long  DTC6;                                    
    unsigned long  DTCT6;                                   
    unsigned long  DRSA6;                                   
    unsigned long  DRDA6;                                   
    unsigned long  DRTC6;                                   
    unsigned char  dummy903[4];                             
    unsigned long  DCEN6;                                   
    unsigned long  DCST6;                                   
    unsigned long  DCSTS6;                                  
    unsigned long  DCSTC6;                                  
    unsigned long  DTFR6;                                   
    unsigned long  DTFRRQ6;                                 
    unsigned long  DTFRRQC6;                                
    unsigned char  dummy904[4];                             
    unsigned long  DSA7;                                    
    unsigned long  DDA7;                                    
    unsigned long  DTC7;                                    
    unsigned long  DTCT7;                                   
    unsigned long  DRSA7;                                   
    unsigned long  DRDA7;                                   
    unsigned long  DRTC7;                                   
    unsigned char  dummy905[4];                             
    unsigned long  DCEN7;                                   
    unsigned long  DCST7;                                   
    unsigned long  DCSTS7;                                  
    unsigned long  DCSTC7;                                  
    unsigned long  DTFR7;                                   
    unsigned long  DTFRRQ7;                                 
    unsigned long  DTFRRQC7;                                
    unsigned char  dummy906[4];                             
    unsigned long  DSA8;                                    
    unsigned long  DDA8;                                    
    unsigned long  DTC8;                                    
    unsigned long  DTCT8;                                   
    unsigned long  DRSA8;                                   
    unsigned long  DRDA8;                                   
    unsigned long  DRTC8;                                   
    unsigned char  dummy907[4];                             
    unsigned long  DCEN8;                                   
    unsigned long  DCST8;                                   
    unsigned long  DCSTS8;                                  
    unsigned long  DCSTC8;                                  
    unsigned long  DTFR8;                                   
    unsigned long  DTFRRQ8;                                 
    unsigned long  DTFRRQC8;                                
    unsigned char  dummy908[4];                             
    unsigned long  DSA9;                                    
    unsigned long  DDA9;                                    
    unsigned long  DTC9;                                    
    unsigned long  DTCT9;                                   
    unsigned long  DRSA9;                                   
    unsigned long  DRDA9;                                   
    unsigned long  DRTC9;                                   
    unsigned char  dummy909[4];                             
    unsigned long  DCEN9;                                   
    unsigned long  DCST9;                                   
    unsigned long  DCSTS9;                                  
    unsigned long  DCSTC9;                                  
    unsigned long  DTFR9;                                   
    unsigned long  DTFRRQ9;                                 
    unsigned long  DTFRRQC9;                                
    unsigned char  dummy910[4];                             
    unsigned long  DSA10;                                   
    unsigned long  DDA10;                                   
    unsigned long  DTC10;                                   
    unsigned long  DTCT10;                                  
    unsigned long  DRSA10;                                  
    unsigned long  DRDA10;                                  
    unsigned long  DRTC10;                                  
    unsigned char  dummy911[4];                             
    unsigned long  DCEN10;                                  
    unsigned long  DCST10;                                  
    unsigned long  DCSTS10;                                 
    unsigned long  DCSTC10;                                 
    unsigned long  DTFR10;                                  
    unsigned long  DTFRRQ10;                                
    unsigned long  DTFRRQC10;                               
    unsigned char  dummy912[4];                             
    unsigned long  DSA11;                                   
    unsigned long  DDA11;                                   
    unsigned long  DTC11;                                   
    unsigned long  DTCT11;                                  
    unsigned long  DRSA11;                                  
    unsigned long  DRDA11;                                  
    unsigned long  DRTC11;                                  
    unsigned char  dummy913[4];                             
    unsigned long  DCEN11;                                  
    unsigned long  DCST11;                                  
    unsigned long  DCSTS11;                                 
    unsigned long  DCSTC11;                                 
    unsigned long  DTFR11;                                  
    unsigned long  DTFRRQ11;                                
    unsigned long  DTFRRQC11;                               
    unsigned char  dummy914[4];                             
    unsigned long  DSA12;                                   
    unsigned long  DDA12;                                   
    unsigned long  DTC12;                                   
    unsigned long  DTCT12;                                  
    unsigned long  DRSA12;                                  
    unsigned long  DRDA12;                                  
    unsigned long  DRTC12;                                  
    unsigned char  dummy915[4];                             
    unsigned long  DCEN12;                                  
    unsigned long  DCST12;                                  
    unsigned long  DCSTS12;                                 
    unsigned long  DCSTC12;                                 
    unsigned long  DTFR12;                                  
    unsigned long  DTFRRQ12;                                
    unsigned long  DTFRRQC12;                               
    unsigned char  dummy916[4];                             
    unsigned long  DSA13;                                   
    unsigned long  DDA13;                                   
    unsigned long  DTC13;                                   
    unsigned long  DTCT13;                                  
    unsigned long  DRSA13;                                  
    unsigned long  DRDA13;                                  
    unsigned long  DRTC13;                                  
    unsigned char  dummy917[4];                             
    unsigned long  DCEN13;                                  
    unsigned long  DCST13;                                  
    unsigned long  DCSTS13;                                 
    unsigned long  DCSTC13;                                 
    unsigned long  DTFR13;                                  
    unsigned long  DTFRRQ13;                                
    unsigned long  DTFRRQC13;                               
    unsigned char  dummy918[4];                             
    unsigned long  DSA14;                                   
    unsigned long  DDA14;                                   
    unsigned long  DTC14;                                   
    unsigned long  DTCT14;                                  
    unsigned long  DRSA14;                                  
    unsigned long  DRDA14;                                  
    unsigned long  DRTC14;                                  
    unsigned char  dummy919[4];                             
    unsigned long  DCEN14;                                  
    unsigned long  DCST14;                                  
    unsigned long  DCSTS14;                                 
    unsigned long  DCSTC14;                                 
    unsigned long  DTFR14;                                  
    unsigned long  DTFRRQ14;                                
    unsigned long  DTFRRQC14;                               
    unsigned char  dummy920[4];                             
    unsigned long  DSA15;                                   
    unsigned long  DDA15;                                   
    unsigned long  DTC15;                                   
    unsigned long  DTCT15;                                  
    unsigned long  DRSA15;                                  
    unsigned long  DRDA15;                                  
    unsigned long  DRTC15;                                  
    unsigned char  dummy921[4];                             
    unsigned long  DCEN15;                                  
    unsigned long  DCST15;                                  
    unsigned long  DCSTS15;                                 
    unsigned long  DCSTC15;                                 
    unsigned long  DTFR15;                                  
    unsigned long  DTFRRQ15;                                
    unsigned long  DTFRRQC15;                               
};
struct __tag605
{                                                           
    union __tag307 ICADCA0I2_2;                             
    union __tag308 ICRLIN30;                                
    union __tag309 ICRLIN30UR0;                             
    union __tag310 ICRLIN30UR1;                             
    union __tag311 ICRLIN30UR2;                             
    union __tag312 ICP0;                                    
    union __tag313 ICP1;                                    
    union __tag314 ICP2;                                    
    union __tag315 ICWDTA0;                                 
    union __tag316 ICWDTA1;                                 
    unsigned char  dummy922[2];                             
    union __tag317 ICP3;                                    
    union __tag318 ICP4;                                    
    union __tag319 ICP5;                                    
    union __tag320 ICP10;                                   
    union __tag321 ICP11;                                   
    union __tag322 ICTAUD0I1;                               
    union __tag323 ICTAUD0I3;                               
    union __tag324 ICTAUD0I5;                               
    union __tag325 ICTAUD0I7;                               
    union __tag326 ICTAUD0I9;                               
    union __tag327 ICTAUD0I11;                              
    union __tag328 ICTAUD0I13;                              
    union __tag329 ICTAUD0I15;                              
    union __tag330 ICADCA0ERR;                              
    union __tag331 ICCSIG0IRE;                              
    union __tag332 ICRLIN20;                                
    union __tag333 ICRLIN21;                                
    union __tag334 ICDMA0;                                  
    union __tag335 ICDMA1;                                  
    union __tag336 ICDMA2;                                  
    union __tag337 ICDMA3;                                  
    union __tag338 ICDMA4;                                  
    union __tag339 ICDMA5;                                  
    union __tag340 ICDMA6;                                  
    union __tag341 ICDMA7;                                  
    union __tag342 ICDMA8;                                  
    union __tag343 ICDMA9;                                  
    union __tag344 ICDMA10;                                 
    union __tag345 ICDMA11;                                 
    union __tag346 ICDMA12;                                 
    union __tag347 ICDMA13;                                 
    union __tag348 ICDMA14;                                 
    union __tag349 ICDMA15;                                 
    union __tag350 ICRIIC0TI;                               
    union __tag351 ICRIIC0EE;                               
    union __tag352 ICRIIC0RI;                               
    union __tag353 ICRIIC0TEI;                              
    union __tag354 ICTAUJ0I0;                               
    union __tag355 ICTAUJ0I1;                               
    union __tag356 ICTAUJ0I2;                               
    union __tag357 ICTAUJ0I3;                               
    union __tag358 ICOSTM0;                                 
    union __tag359 ICENCA0IOV;                              
    union __tag360 ICENCA0IUD;                              
    union __tag361 ICENCA0I0;                               
    union __tag362 ICENCA0I1;                               
    union __tag363 ICENCA0IEC;                              
    union __tag364 ICKR0;                                   
    union __tag365 ICQFULL;                                 
    union __tag366 ICPWGA0;                                 
    union __tag367 ICPWGA1;                                 
    union __tag368 ICPWGA2;                                 
    union __tag369 ICPWGA3;                                 
    union __tag370 ICPWGA8;                                 
    union __tag371 ICPWGA9;                                 
    union __tag372 ICPWGA10;                                
    union __tag373 ICPWGA11;                                
    union __tag374 ICPWGA12;                                
    union __tag375 ICPWGA13;                                
    union __tag376 ICPWGA14;                                
    union __tag377 ICPWGA15;                                
    unsigned char  dummy923[12];                            
    union __tag378 ICFLERR;                                 
    union __tag379 ICFLENDNM;                               
    union __tag380 ICCWEND;                                 
    union __tag381 ICRCAN1ERR;                              
    union __tag382 ICRCAN1REC;                              
    union __tag383 ICRCAN1TRX;                              
    union __tag384 ICCSIH1IC;                               
    union __tag385 ICCSIH1IR;                               
    union __tag386 ICCSIG0IC_2;                             
    union __tag387 ICCSIG0IR_2;                             
    union __tag388 ICRLIN31;                                
    union __tag389 ICRLIN31UR0;                             
    union __tag390 ICRLIN31UR1;                             
    union __tag391 ICRLIN31UR2;                             
    union __tag392 ICPWGA20;                                
    union __tag393 ICPWGA21;                                
    union __tag394 ICPWGA22;                                
    union __tag395 ICPWGA23;                                
    union __tag396 ICP6;                                    
    union __tag397 ICP7;                                    
    union __tag398 ICP8;                                    
    union __tag399 ICP12;                                   
    union __tag400 ICCSIH2IC;                               
    union __tag401 ICCSIH2IR;                               
    union __tag402 ICCSIH2IRE;                              
    union __tag403 ICCSIH2IJC;                              
    unsigned char  dummy924[12];                            
    union __tag404 ICTAUB0I0;                               
    union __tag405 ICTAUB0I1;                               
    union __tag406 ICTAUB0I2;                               
    union __tag407 ICPWGA16;                                
    union __tag408 ICTAUB0I4;                               
    union __tag409 ICPWGA17;                                
    union __tag410 ICTAUB0I6;                               
    union __tag411 ICPWGA18;                                
    union __tag412 ICTAUB0I8;                               
    union __tag413 ICPWGA19;                                
    union __tag414 ICTAUB0I10;                              
    union __tag415 ICPWGA26;                                
    union __tag416 ICTAUB0I12;                              
    union __tag417 ICPWGA30;                                
    union __tag418 ICTAUB0I14;                              
    union __tag419 ICPWGA31;                                
    union __tag420 ICCSIH3IC;                               
    union __tag421 ICCSIH3IR;                               
    union __tag422 ICCSIH3IRE;                              
    union __tag423 ICCSIH3IJC;                              
    union __tag424 ICRLIN22;                                
    union __tag425 ICRLIN23;                                
    union __tag426 ICRLIN32;                                
    union __tag427 ICRLIN32UR0;                             
    union __tag428 ICRLIN32UR1;                             
    union __tag429 ICRLIN32UR2;                             
    union __tag430 ICTAUJ1I0;                               
    union __tag431 ICTAUJ1I1;                               
    union __tag432 ICTAUJ1I2;                               
    union __tag433 ICTAUJ1I3;                               
    unsigned char  dummy925[24];                            
    union __tag434 ICPWGA24;                                
    union __tag435 ICPWGA25;                                
    union __tag436 ICPWGA27;                                
    union __tag437 ICPWGA28;                                
    union __tag438 ICPWGA29;                                
    union __tag439 ICPWGA32;                                
    union __tag440 ICPWGA33;                                
    union __tag441 ICPWGA34;                                
    union __tag442 ICPWGA35;                                
    union __tag443 ICPWGA36;                                
    union __tag444 ICPWGA37;                                
    union __tag445 ICPWGA38;                                
    union __tag446 ICPWGA39;                                
    union __tag447 ICPWGA40;                                
    union __tag448 ICPWGA41;                                
    union __tag449 ICPWGA42;                                
    union __tag450 ICPWGA43;                                
    union __tag451 ICPWGA44;                                
    union __tag452 ICPWGA45;                                
    union __tag453 ICPWGA46;                                
    union __tag454 ICPWGA47;                                
    union __tag455 ICP9;                                    
    union __tag456 ICP13;                                   
    union __tag457 ICP14;                                   
    union __tag458 ICP15;                                   
    union __tag459 ICRTCA01S;                               
    union __tag460 ICRTCA0AL;                               
    union __tag461 ICRTCA0R;                                
    union __tag462 ICADCA1ERR;                              
    union __tag463 ICADCA1I0;                               
    union __tag464 ICADCA1I1;                               
    union __tag465 ICADCA1I2;                               
    unsigned char  dummy926[2];                             
    union __tag466 ICRCAN2ERR;                              
    union __tag467 ICRCAN2REC;                              
    union __tag468 ICRCAN2TRX;                              
    union __tag469 ICRCAN3ERR;                              
    union __tag470 ICRCAN3REC;                              
    union __tag471 ICRCAN3TRX;                              
    union __tag472 ICCSIG1IC;                               
    union __tag473 ICCSIG1IR;                               
    union __tag474 ICCSIG1IRE;                              
    union __tag475 ICRLIN24;                                
    union __tag476 ICRLIN25;                                
    union __tag477 ICRLIN33;                                
    union __tag478 ICRLIN33UR0;                             
    union __tag479 ICRLIN33UR1;                             
    union __tag480 ICRLIN33UR2;                             
    union __tag481 ICRLIN34;                                
    union __tag482 ICRLIN34UR0;                             
    union __tag483 ICRLIN34UR1;                             
    union __tag484 ICRLIN34UR2;                             
    union __tag485 ICRLIN35;                                
    union __tag486 ICRLIN35UR0;                             
    union __tag487 ICRLIN35UR1;                             
    union __tag488 ICRLIN35UR2;                             
    union __tag489 ICPWGA48;                                
    union __tag490 ICPWGA49;                                
    union __tag491 ICPWGA50;                                
    union __tag492 ICPWGA51;                                
    union __tag493 ICPWGA52;                                
    union __tag494 ICPWGA53;                                
    union __tag495 ICPWGA54;                                
    union __tag496 ICPWGA55;                                
    union __tag497 ICPWGA56;                                
    union __tag498 ICPWGA57;                                
    union __tag499 ICPWGA58;                                
    union __tag500 ICPWGA59;                                
    union __tag501 ICPWGA60;                                
    union __tag502 ICPWGA61;                                
    union __tag503 ICPWGA62;                                
    union __tag504 ICPWGA63;                                
    unsigned char  dummy927[32];                            
    union __tag505 ICRCAN4ERR;                              
    union __tag506 ICRCAN4REC;                              
    union __tag507 ICRCAN4TRX;                              
    unsigned char  dummy928[24];                            
    union __tag508 ICRCAN5ERR;                              
    union __tag509 ICRCAN5REC;                              
    union __tag510 ICRCAN5TRX;                              
    unsigned char  dummy929[132];                           
    union __tag511 ICDPE;                                   
    union __tag512 ICAPE;                                   
    unsigned char  dummy930[312];                           
    union __tag513 IMR1;                                    
    union __tag514 IMR2;                                    
    union __tag515 IMR3;                                    
    union __tag516 IMR4;                                    
    union __tag517 IMR5;                                    
    union __tag518 IMR6;                                    
    union __tag519 IMR7;                                    
    union __tag520 IMR8;                                    
    union __tag521 IMR9;                                    
    unsigned char  dummy931[4];                             
    union __tag522 IMR11;                                   
};


























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 



 



 
 
 
 
 
    
 
 
 
 
 
 
 
 



 
typedef signed char           int8_t;
typedef unsigned char         uint8_t;
typedef signed short          int16_t;
typedef unsigned short        uint16_t;


typedef signed long long      int64_t;
typedef unsigned long long    uint64_t;
typedef unsigned short        MD_STATUS;



 
void R_Systeminit(void);



void LogHalInit(uint8_t mode);
void LogHalPrint(const char *format, ...);
void LogHalSetMode(uint8_t mode);
void LogHalTestMain(uint16_t cycleTime);





typedef enum
{
    E_REMOTE_CONTROL_CMD_NONE                       = 0x00, 

    E_REMOTE_CONTROL_CMD_LOCK_UNLOCK                = 0x01, 
    E_REMOTE_CONTROL_CMD_FIND_VEHICLE               = 0x02, 
    E_REMOTE_CONTROL_CMD_WINDOW                     = 0x03, 
    E_REMOTE_CONTROL_CMD_POWER_TAILGATE             = 0x04, 
    E_REMOTE_CONTROL_CMD_REMOTE_START               = 0x05, 
    E_REMOTE_CONTROL_CMD_REMOTE_START_STOP          = 0x06, 
    E_REMOTE_CONTROL_CMD_SEAT_HEAT                  = 0x07, 
    E_REMOTE_CONTROL_CMD_SEAT_VENT                  = 0x08, 
    E_REMOTE_CONTROL_CMD_AIR_CONDITIONER            = 0x09, 

    E_REMOTE_CONTROL_CMD_BATTERY_HEATING            = 0x10, 
    E_REMOTE_CONTROL_CMD_REMOTE_CHARGE              = 0x11, 
    E_REMOTE_CONTROL_CMD_CHARGE_CURRENT_SET         = 0x12, 
    E_REMOTE_CONTROL_CMD_CHARGE_SOC_LIMIT           = 0x13, 
    E_REMOTE_CONTROL_CMD_SCHEDULE_CHARGE            = 0x14, 
    E_REMOTE_CONTROL_CMD_REMOTE_DISCHARGE           = 0x15, 

    E_REMOTE_CONTROL_CMD_FRIDGE_SWITCH              = 0x16, 
    E_REMOTE_CONTROL_CMD_FRIDGE_KEEP_TEMP           = 0x17, 
    E_REMOTE_CONTROL_CMD_REAR_WINDOW_DEFROST        = 0x18, 

    E_REMOTE_CONTROL_CMD_MAX
} RemoteControlCmd_e;



typedef enum
{
    E_REMOTE_CTRL_RESULT_SUCCESS                     = 0,      

    E_REMOTE_CTRL_RESULT_ERR_RESP_TIMEOUT            = 10001,  
    E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL            = 10002,  
    E_REMOTE_CTRL_RESULT_ERR_EXECUTING               = 10003,  
    E_REMOTE_CTRL_RESULT_ERR_ICC_NODE_LOST           = 10004,  
    E_REMOTE_CTRL_RESULT_ERR_NET_SLEEP               = 10005,  
    E_REMOTE_CTRL_RESULT_ERR_VOLTAGE_ABNORMAL        = 10006,  
    E_REMOTE_CTRL_RESULT_ERR_FUNC_NOT_ENABLE         = 10007,  
    E_REMOTE_CTRL_RESULT_ERR_VEHICLE_MODE_INVALID    = 10008,  
    E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID       = 10009,  
    E_REMOTE_CTRL_RESULT_ERR_BACKUP_POWER_MODE       = 10010,  
    E_REMOTE_CTRL_RESULT_ERR_ICC_ETH_DISCONNECT      = 10011,  

    E_REMOTE_CTRL_RESULT_ERR_CMD_QUEUE_FULL          = 20001,  
} RemoteCtrlResultCode_e;


int16_t RemoteControlSdkInit(int16_t mpuHandle, uint16_t cycleTime);
int16_t RemoteControlSendAck(uint8_t controlCmd);
int16_t RemoteControlSendResult(uint8_t controlCmd, uint8_t* cmdData, uint16_t result, uint8_t vehicleResp, uint8_t type);



typedef enum
{
    E_REMOTE_CONTROL_STATE_IDLE,          
    E_REMOTE_CONTROL_STATE_PRECONDITION,  
    E_REMOTE_CONTROL_STATE_EXECTUE_CMD,   
    E_REMOTE_CONTROL_STATE_WAIT_RESULT,   
}RemoteControlState_e;

typedef enum
{
    E_REMOTE_CONTROL_RESULT_SUCCESS,    
    E_REMOTE_CONTROL_RESULT_FAILURE,    
    E_REMOTE_CONTROL_RESULT_PENDING,    
}RemoteControlResult_e;

typedef struct
{
    uint8_t validFlag;
    RemoteControlCmd_e uartRecvCmd;
    uint8_t  controlType;
    uint32_t timeout;
    uint8_t  cmdData[6];
    uint8_t  failReason;
} RemoteControlReceiveCmd_t;

typedef struct
{
    RemoteControlState_e state;
    uint32_t tick;
    uint32_t Timeout;
    uint8_t receiveCmdNumber;   
    uint8_t exeCmdIndex;        
    uint8_t saveCmdIndex;       
    RemoteControlReceiveCmd_t receiveCmd[25];    
} RemoteControlState_t;

typedef int16_t ( *pRemoteControlPrecondition )( uint8_t *data);                
typedef int16_t ( *pRemoteControlExectue )( uint8_t *data);                     
typedef int16_t ( *pRemoteControlGetResult )(uint8_t *data, uint8_t result);    

typedef struct 
{
    pRemoteControlPrecondition pPreconditionFunction;
    pRemoteControlExectue      pExectueFunction;
    pRemoteControlGetResult    pGetResultFunction;
}RemoteControlFunction_t;

int16_t RemoteControlTaskInit(void);
void RemoteControlTask(void);



typedef enum
{
    UsgMd_0_Sleep,
    UsgMd_1_Standby,
    UsgMd_2_Comfortable,
    UsgMd_3_NormalDriving,
    UsgMd_4_AIPraking,
    UsgMd_5_AIPilot,
    UsgMd_6_XOTA,
}UserMode_e;


typedef enum
{
    VehMd_0_NORMAL,
    VehMd_1_CRASH,
    VehMd_2_FACTORY,
    VehMd_3_TRANSPORT,
    VehMd_4_DYNO,
    VehMd_5_EXHIBITION,
    VehMd_6_Reserved,
    VehMd_7_Reserved,
    VehMd_8_Engineering,
    VehMd_9_Service,
}VehicleMode_e;

typedef struct 
{
    uint8_t iccLost;
    uint8_t userMode;
    uint8_t userModeValid;
    uint8_t vehicleMode;
    uint8_t vehicleModeValid;
}VehicleInfor_t;









uint8_t GetVehicleInfor(VehicleInfor_t *vehicleInfor);
uint8_t CheckVehicleModeIsTransport(void);

void TaskVehicleDataToCpuInit(void);
void TaskVehicleDataToCpu(void);




typedef struct
{
  uint8_t aid;
  uint8_t mid;
  uint8_t subcommand;
  uint16_t dataBufferSize;
  uint16_t dataLength;
  uint8_t* pDataBuffer;
}MpuHalDataPack_t;

typedef struct
{
  uint8_t aid;
  uint8_t midMin;
  uint8_t midMax;
}MpuHalFilter_t;








void MpuHalInit(void);
void MpuHalCycleProcess(uint32_t cycleTime);
int16_t MpuHalOpen(void);
int16_t MpuHalSetRxFilter(int16_t handle,const MpuHalFilter_t* pFilter);
int16_t MpuHalSetRxBuffer(int16_t handle,uint8_t* pBuffer,uint32_t bufferSize);
int16_t MpuHalTransmit(int16_t handle,const MpuHalDataPack_t* pTxMsg);
int16_t MpuHalReceive(int16_t handle,MpuHalDataPack_t* pRxMsg,uint32_t waitTime );
void MpuHalStart(void);
int16_t MpuHalStartIsFinished(void);
void MpuHalReset(void);
int16_t MpuHalResetIsFinished(void);
void MpuHalPowerOff(void);
void MpuHalSetMode(uint8_t wakeMode);
int16_t MpuHalGetWakeMode(void);

void MpuHalRequestIrqFun(void);

void MpuHalTxTaskInit(void);
void MpuHalTxTask(void);
void UartProtocalProcess(uint8_t *pData,uint16_t dataLength,uint8_t IsrFlag);
void MpuHalUartPrintErrState(uint16_t cycleTime);
void MpuHalUartInterruptCallback(uint8_t data);
void MpuHalUartTimerCallback(void);




 
 














 
 






 

typedef void(* typeSetWakeupSourceCallbackPtr)(uint8_t source);
typedef void(* typeSetBatteryModeCallbackPtr)(uint8_t mode);

typedef struct
{
  uint16_t adValue[25];
  uint8_t adValid;  
}AdConvertBuffer_t;








 
void PeripheralHalInit(void);








 
void PeripheralHalSetMode(uint8_t mode);








 









 
int16_t PeripheralHalGetKl15Status (void);
int16_t PeripheralHalGetKl30Status (void);
void PeripheralHalSetSysOn (uint8_t flag);
int16_t PeripheralHalAdGet(uint8_t adChannel,uint32_t *pValue);
void PeripheralHalAdcStart(uint8_t sarNo);

void PeripheralHalMcuHardReset(void);
void PeripheralHalFeedWatchDog(void);

void PeripheralHalSetTestMode(uint8_t testMode);

void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun);


void RtcWakeupInit(uint32_t time);
int16_t RtcWakeUpProcess(uint32_t maxvoltage,uint32_t minvoltage);

void PeripheralHalSetLedFastFlash(void);
void PeripheralHalSetLedNomalFlash(void);














 












 


 












































 

 











































































 



 












 












 



 
 




















 
 



 



 
 



 

























































 


 











 
 




















 
 



 



 
 



 


 









































































 


 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


void __LDSR(int regID, int selID, unsigned int val);

unsigned int __STSR(int regID, int selID);







 



 




 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 



 
 

 

 



 


 



 



 



 




 



 



 


 
typedef signed char         sint8;           
typedef unsigned char       uint8;           
typedef signed short        sint16;          
typedef unsigned short      uint16;          
typedef signed long         sint32;          
typedef unsigned long       uint32;          
typedef float               float32;
typedef double              float64;
typedef signed long long    sint64;         
 
typedef unsigned long long  uint64;           

typedef unsigned long       uint8_least;     
typedef unsigned long       uint16_least;    
typedef unsigned long       uint32_least;    
typedef signed long         sint8_least;     
typedef signed long         sint16_least;    
typedef signed long         sint32_least;    
typedef unsigned char       boolean;         





 




 




 


 



 


 



 



 

 
  typedef unsigned char StatusType;





 
typedef uint8 Std_ReturnType;


typedef struct
{
  uint16  vendorID;
  uint16  moduleID;
  uint8  instanceID;
  uint8  sw_major_version;
  uint8  sw_minor_version;
  uint8  sw_patch_version;
} Std_VersionInfoType;  







 




 

 




















 
 



 


 



 
typedef uint16       PduIdType;

typedef uint16       PduLengthType;




 
typedef struct
{
    uint8 * SduDataPtr;
    uint8 * MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;

 
typedef uint8 PNCHandleType;

 
typedef enum
{
    TP_STMIN = 0x00,  
    TP_BS = 0x01,     
    TP_BC = 0x02     
 
} TPParameterType;

 
typedef enum
{
    BUFREQ_OK = 0x00,        
    BUFREQ_E_NOT_OK = 0x01,  
    BUFREQ_E_BUSY = 0x02,   
 
    BUFREQ_E_OVFL = 0x03     
} BufReq_ReturnType;

 
typedef enum
{
    TP_DATACONF = 0x00,   
 
    TP_DATARETRY = 0x01,  
 
    TP_CONFPENDING = 0x02 
 
} TpDataStateType;


 
typedef struct
{
    TpDataStateType TpDataState; 
 
    PduLengthType TxTpDataCnt;   
 
} RetryInfoType;


 
typedef uint8 NetworkHandleType;



 
typedef uint8 IcomConfigIdType;

typedef enum
{
    ICOM_SWITCH_E_OK = 0x00,
    ICOM_SWITCH_E_FAILED = 0x01
} IcomSwitch_ErrorType;




 
 



 
typedef uint8 Com_RxIPduCounterIdType;

typedef uint8 Com_RxIpduGroupIdType;

typedef uint8 Com_TxIpduGroupIdType;

typedef uint8 Com_RxSigTimeoutIdType;

typedef uint8 Com_RxSigGrpTimeoutIdType;

typedef uint8 Com_GwSourceDescriptionIdType;

typedef uint16 Com_RxSignalIdType;

typedef uint8 Com_RxSignalGroupIdType;

typedef uint8 Com_GwDestinationDescriptionIdType;

typedef uint8 Com_TxSignalIdType;

typedef uint8 Com_TxSignalGroupIdType;

typedef uint8 Com_TxIPduCounterIdType;

typedef uint8 Com_RxSignalInvalidIdType;

typedef uint8 Com_RxSignalFilterIdType;

typedef PduLengthType Com_SignalPositionType;

typedef uint8 Com_TxSignalInvalidIdType;

typedef uint8 Com_TxSignalFilterIdType;

typedef uint8 Com_TxSigErrAndNotifyIdType;

typedef uint8 Com_TxSignalTimeoutIdType;

typedef uint16 Com_RxGroupSignalIdType;

typedef uint8 Com_TxGroupSignalIdType;

typedef uint8 Com_TxSigGrpErrAndNotifyIdType;

typedef uint8 Com_TxSigGrpTimeoutIdType;

typedef uint8 Com_RxGrpSigFilterIdType;

typedef uint8 Com_TxGrpSigFilterIdType;

typedef uint8 Com_DestSignalFilterIdType;

typedef uint16 Com_RxIpduBufIdType;

typedef uint16 Com_TxIpduBufIdType;

typedef uint8 Com_SignalGroupArryIdType;

 
typedef enum
{
    COM_UNINIT = 0u,
    COM_INIT
} Com_StatusType;

 
typedef enum
{
    COM_BIG_ENDIAN = 0u,
    COM_LITTLE_ENDIAN,
    COM_OPAQUE
} Com_SignalEndiannessType;

 
typedef enum
{
    COM_BOOLEAN = 0u,
    COM_FLOAT32,
    COM_FLOAT64,
    COM_SINT16,
    COM_SINT32,
    COM_SINT64,
    COM_SINT8,
    COM_UINT16,
    COM_UINT32,
    COM_UINT64,
    COM_UINT8,
    COM_UINT8_DYN,
    COM_UINT8_N
} Com_SignalType;

 
typedef enum
{
    COM_PENDING = 0u,
    COM_TRIGGERED,
    COM_TRIGGERED_ON_CHANGE,
    COM_TRIGGERED_ON_CHANGE_WITHOUT_REPETITION,
    COM_TRIGGERED_WITHOUT_REPETITION,
    COM_GROUPSIGNAL_TMC_NONE
} Com_TransferPropertyType;

 
typedef enum
{
    COM_FILTER_NONE = 0u,
    COM_ALWAYS,
    COM_MASKED_NEW_DIFFERS_MASKED_OLD,
    COM_MASKED_NEW_DIFFERS_X,
    COM_MASKED_NEW_EQUALS_X,
    COM_NEVER,
    COM_NEW_IS_OUTSIDE,
    COM_NEW_IS_WITHIN,
    COM_ONE_EVERY_N
} Com_FilterAlgorithmType;

typedef enum
{
    COM_TX_MODE_DIRECT = 0u,
    COM_TX_MODE_DIRECT_WITHOUT_REPETITION,
    COM_TX_MODE_MIXED,
    COM_TX_MODE_MIXED_WITHOUT_REPETITION,
    COM_TX_MODE_NONE,
    COM_TX_MODE_PERIODIC
} Com_TxModeModeType;

typedef enum
{
    COM_CONFIRMATION = 0u,
    COM_TRANSMIT,
    COM_TRIGGER_TRANSMIT,
    COM_CLEAR_UP_UNUSED
} Com_TxIPduClearUpdateBitType;

typedef enum
{
    COM_DEFERRED = 0u,
    COM_IMMEDIATE
} Com_IPduSignalProcessingType;

typedef enum
{
    COM_PDU_NORMAL = 0u,
    COM_PDU_TP
} Com_IPduType;

typedef enum
{
    COM_INVALID_ACTION_NOTIFY = 0u,
    COM_INVALID_ACTION_REPLACE,
    COM_INVALID_ACTION_NONE
} Com_DataInvalidActionType;

typedef enum
{
    COM_TIMEOUT_ACTION_NONE = 0u,
    COM_TIMEOUT_ACTION_REPLACE,
    COM_TIMEOUT_ACTION_SUBSTITUTE
} Com_RxDataTimeoutActionType;

typedef enum
{
    COM_TX_SIGNAL = 0u,
    COM_TX_GROUP_SIGNAL,
    COM_TX_DESCRIPTION,
    COM_RX_SIGNAL,
    COM_RX_GROUP_SIGNAL,
    COM_RX_DESCRIPTION,
} Com_SignalConfigType;

 
typedef uint16 Com_SignalIdType;

 
typedef uint16 Com_SignalGroupIdType;

 
typedef uint16 Com_IpduGroupIdType;

typedef uint8 Com_MainFunctionType;

typedef uint8 Com_IpduGroupVector[((2u - 1u) / 8u) + 1u];

 
typedef struct
{
    void (*ComIPduCounterErrorNotification)
    (PduIdType ComPduId, uint8 ExpectedCounter, uint8 ReceivedCounter);
    uint32 ComIPduCounterStartPosition;
    uint8 ComIPduCounterSize;  
    uint8 ComIPduCounterThreshold;
    uint8 ComIPduMaxCounter;
} Com_IPduCounterType;

 
typedef struct
{
    uint8 ComIPduReplicationQuorum;
} Com_IPduReplicationType;

typedef struct
{
    Com_SignalIdType ComGwDestSignalId;
    Com_MainFunctionType ComMainFunctionId;
    Com_SignalConfigType ComGwDestSignalType;
} Com_GwDestType;

 
typedef struct
{
    Com_SignalIdType ComGwSourceSignalId;
    Com_SignalIdType ComGwDestSignalStartId;
    Com_SignalIdType ComGwDestNumber;
    Com_SignalConfigType ComGwSourceSignalType;
} Com_GwMappingType;

 
typedef struct
{
    uint16 ComSigLsbBytePos;
    uint16 ComSignalLength;
    uint16 ComGwIPduRef;
    uint16 GWSignalBufferId;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
} Com_GwSourceSignalType;

 

typedef uint64 Com_FilterMaskType;

typedef uint64 Com_FilterXType;

typedef struct
{
    Com_FilterMaskType ComFilterMask;
    Com_FilterXType ComFilterX;
} Com_FilterMaskNewDifEquXType;

typedef uint64 Com_FilterMaxType;
typedef uint64 Com_FilterMinType;

typedef struct
{
    Com_FilterMaxType ComFilterMax;
    Com_FilterMinType ComFilterMin;
} Com_FilterNewIsWithinOutsideType;

typedef struct
{
    Com_SignalIdType ComFilterOffset;
    Com_SignalIdType ComFilterPeriod;
} Com_FilterONEEVERYNType;

 
typedef struct
{
    uint16 ComGwIPduRef;
    uint16 ComSignalLength;
    uint16 ComSignalInitValueId;
    uint16 ComSignalDataInitValueLength;
    Com_SignalPositionType ComSigLsbBytePos;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_TransferPropertyType ComTransferProperty;
    Com_SignalType ComSignalType;
} Com_GwDestSignalType;

typedef void (*Com_RxTimeoutNotificationType)(void);
typedef void (*Com_RxInvalidNotificationType)(void);

typedef struct
{
    boolean (*ComIPduCallout)
    (PduIdType PduId, const PduInfoType * PduInfoPtr);
    PduLengthType IPduNoDynSignalLength;
    PduLengthType IPduMaxDynSignalLength;
    uint16 ComRxIPduDMFirstTimeout;
    uint16 ComRxIPduDMTimeout;
    Com_RxIpduBufIdType ComRxIPduBufIndex;
    Com_RxSignalIdType ComIpduSignalRefStartId;
    Com_RxSignalIdType ComIPduSignalsRefNumber;
    Com_RxIpduGroupIdType ComIPduGroupsRefStartId;
    Com_RxIpduGroupIdType ComIPduGroupsRefNumber;
    Com_RxSigTimeoutIdType ComIPduSignalsTimeoutRefStartId;
    Com_RxSigTimeoutIdType ComIPduSignalsTimeoutRefNumber;
    Com_RxSignalGroupIdType ComIPduSignalGroupsRefStartId;
    Com_RxSignalGroupIdType ComIPduSignalGroupsRefNumber;
    Com_RxSigGrpTimeoutIdType ComIPduSignalGroupsTimeoutRefStartId;
    Com_RxSigGrpTimeoutIdType ComIPduSignalGroupsTimeoutRefNumber;
    uint8 MetaDataLength;
    boolean ComIPduCancellationSupport;
    Com_IPduSignalProcessingType ComIPduSignalProcessing;
    Com_IPduType ComIPduType;
} Com_RxIPduType;

 
typedef uint8 Com_TxModeNumberOfRepetitionsType;
typedef uint16 Com_TxModeRepetitionPeriodType;
typedef uint16 Com_TxModeTimeOffsetType;
typedef uint16 Com_TxModeTimePeriodType;

typedef struct
{
    Com_TxModeTimeOffsetType ComTxModeTimeOffset;
    Com_TxModeTimePeriodType ComTxModeTimePeriod;
} Com_TxModePeriodType;

typedef struct
{
    Com_TxModeNumberOfRepetitionsType ComTxModeNumberOfRepetitions;
    Com_TxModeRepetitionPeriodType ComTxModeRepetitionPeriod;
} Com_TxModeDirectRepetitionsType;

typedef struct
{
    Com_TxModeTimeOffsetType ComTxModeTimeOffset;
    Com_TxModeTimePeriodType ComTxModeTimePeriod;
    Com_TxModeRepetitionPeriodType ComTxModeRepetitionPeriod;
    Com_TxModeNumberOfRepetitionsType ComTxModeNumberOfRepetitions;
} Com_TxModeMixedRepetitionsType;

typedef struct
{
    boolean (*ComIPduCallout)
    (PduIdType PduId, PduInfoType * PduInfoPtr);
    PduLengthType IPduNoDynSignalLength;
    PduLengthType IPduMaxDynSignalLength;
    uint16 ComTxIpduDM;
    uint16 ComMinimumDelayTime;
    Com_TxIpduBufIdType ComTxIPduBufIndex;
    PduIdType ComPduIdRef;
    PduIdType ComTxModeTrueRefId;
    PduIdType ComTxModeFalseRefId;
    Com_TxSignalIdType ComIpduSignalRefStartId;
    Com_TxSignalIdType ComIPduSignalsRefNumber;
    Com_TxSignalGroupIdType ComIPduSignalGroupsRefStartId;
    Com_TxSignalGroupIdType ComIPduSignalGroupsRefNumber;
    Com_TxIpduGroupIdType ComIPduGroupsRefStartId;
    Com_TxIpduGroupIdType ComIPduGroupsRefNumber;
    Com_TxModeModeType ComTxTrueModeMode;
    Com_TxModeModeType ComTxFalseModeMode;
    uint8 MetaDataLength;
    boolean ComIPduCancellationSupport;
    Com_IPduSignalProcessingType ComIPduSignalProcessing;
    Com_IPduType ComIPduType;
} Com_TxIPduType;

typedef struct
{
    void (*ComNotification)(void);
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 GWSignalBufferId;
    Com_SignalPositionType ComSigLsbBytePos;
    PduIdType ComIpduRefIndex;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalType ComSignalType;
    Com_SignalEndiannessType ComSignalEndianness;
} Com_RxSignalType;

typedef void (*Com_TxTimeoutNotificationType)(void);
typedef void (*Com_ErrorAndNotificationType)(void);
typedef uint8 Com_TxSignalNotifyType;

typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    Com_SignalPositionType ComSigLsbBytePos;
    PduIdType ComIpduRefIndex;
    Com_TxSigErrAndNotifyIdType ComTxSignalErrAndNotifyFncId;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    boolean ComInitialValueOnly;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
    Com_TransferPropertyType ComTransferProperty;
    Com_TxSignalNotifyType ComTxSignalNotificationType;
} Com_TxSignalType;

typedef struct
{
    uint16 ComIPduStartBufIndex;
    uint16 SignalGroupArrayLength;
} Com_SignalGroupArrayType;

typedef struct
{
    void (*ComNotification)(void);
    Com_RxGroupSignalIdType ComGroupSignalRefStartId;
    Com_RxGroupSignalIdType ComGroupSignalRefNumber;
    PduIdType ComIpduRefIndex;
} Com_RxSignalGroupType;

typedef struct
{
    Com_TxGroupSignalIdType ComGroupSignalRefStartId;
    Com_TxGroupSignalIdType ComGroupSignalRefNumber;
    PduIdType ComIpduRefIndex;
    Com_TxSigGrpErrAndNotifyIdType ComTxSigGrpErrAndNotifyFncId;
    Com_TxSignalNotifyType ComTxSignalNotificationType;
    boolean ComInitialValueOnly;
    Com_TransferPropertyType ComTransferProperty;
} Com_TxSignalGroupType;

typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 GWSignalBufferId;
    Com_SignalPositionType ComSigLsbBytePos;
    Com_RxSignalGroupIdType ComSignalGroupRef;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
} Com_RxGroupSignalType;
typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 ComSignalDataInvalidValueLength;
    uint16 ComSignalInvalidBuffRefId;
    Com_SignalPositionType ComSigLsbBytePos;
    Com_TxSignalGroupIdType ComSignalGroupRef;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
    Com_TransferPropertyType ComTransferProperty;
} Com_TxGroupSignalType;
typedef struct
{
    uint16 RxIpduLength;
    uint16 RxIpduBaseDMTimeout;
    PduLengthType RxOffset;
    





 
    uint8 RxIpduRTStFlag;
    uint8 RxIpduDMFlag;
} Com_RxIPduRunTimeStateType;

typedef struct
{
    uint16 TxIpduLength;
    uint16 RptNum;
    uint16 NTimeCnt;
    uint16 DMCnt;
    uint16 PeriodCnt;
    PduLengthType TxOffset;
    





 
    uint8 TxIpduRTStFlag;
    Com_TxModeModeType ipduTxMode;
} Com_TxIPduRunTimeStateType;

typedef struct
{
    uint16 DynamicSignalLength;
    


 
    uint8 TxSigGrpRTStFlag;
} Com_TxSignalGroupRunTimeStateType;

typedef struct
{
    const Com_RxIPduType* ComRxIPdu;
    const Com_TxIPduType* ComTxIPdu;
    const Com_RxSignalType* ComRxSignal;
    const Com_TxSignalType* ComTxSignal;
    const Com_RxSignalGroupType* ComRxSignalGroup;
    const Com_TxSignalGroupType* ComTxSignalGroup;
    const Com_RxGroupSignalType* ComRxGroupSignal;
    const Com_TxGroupSignalType* ComTxGroupSignal;
    const Com_GwMappingType* ComGwMapping;
    const Com_GwSourceSignalType* ComSourceSignal;
    const Com_GwDestSignalType* ComDestSignal;
    const uint16* MainFunctionRxRange;
    const uint16* MainFunctionTxRange;
    Com_SignalIdType ComTxSignalNum;
    Com_SignalIdType ComRxSignalNum;
    PduIdType ComTxPduNum;
    PduIdType ComRxPduNum;
    Com_SignalIdType ComTxGroupSignalNum;
    Com_SignalIdType ComRxGroupSignalNum;
    Com_SignalGroupIdType ComTxSignalGroupNum;
    Com_SignalGroupIdType ComRxSignalGroupNum;
    Com_IpduGroupIdType ComIpduGroupNum;
    Com_MainFunctionType MainFunctionRouteSignalsNum;
    Com_MainFunctionType MainFunctionRxNum;
    Com_MainFunctionType MainFunctionTxNum;
} Com_ConfigType;




 
 


 

 


 






 


 
 
extern const Com_ConfigType * Com_ConfigStd;
 
extern const Com_ConfigType Com_PBConfigData;


 

 










 
 
 











 
 
extern  void Com_Init(const Com_ConfigType * config);
 












 
 
extern  void Com_DeInit(void);

 











 
 
extern  void Com_IpduGroupControl(Com_IpduGroupVector ipduGroupVector, boolean initialize);
 










 
 
extern  void Com_ReceptionDMControl(Com_IpduGroupVector ipduGroupVector);
 









 
 
extern void Com_EnableReceptionDM(Com_IpduGroupIdType IpduGroupId);
 









 
 
extern void Com_DisableReceptionDM(Com_IpduGroupIdType IpduGroupId);
 











 
 
extern  Com_StatusType Com_GetStatus(void);

 









 
 
extern  void Com_ClearIpduGroupVector(Com_IpduGroupVector ipduGroupVector);
 










 
 
extern  void
    Com_SetIpduGroup(Com_IpduGroupVector ipduGroupVector, Com_IpduGroupIdType ipduGroupId, boolean bitval);
 















 
 
extern  uint8
    Com_SendSignal(Com_SignalIdType SignalId, const void * SignalDataPtr);
 
















 
 
extern  uint8
    Com_SendDynSignal(Com_SignalIdType SignalId, const void * SignalDataPtr, uint16 Length);
 










 
 
extern  uint8
    Com_ReceiveSignal(Com_SignalIdType SignalId, void * SignalDataPtr);
 

















 
 
extern  uint8 Com_ReceiveDynSignal(
    Com_SignalIdType SignalId,
    void * SignalDataPtr,
    uint16 * Length);
 














 
 
extern  uint8 Com_SendSignalGroup(Com_SignalGroupIdType SignalGroupId);
 














 
 
extern  uint8 Com_ReceiveSignalGroup(Com_SignalGroupIdType SignalGroupId);
 















 
 
 











 
 
 














 
 
extern  uint8 Com_InvalidateSignal(Com_SignalIdType SignalId);
 















 
 
extern  uint8 Com_InvalidateSignalGroup(Com_SignalGroupIdType SignalGroupId);
 











 
 
extern  Std_ReturnType Com_TriggerIPDUSend(PduIdType PduId);
 















 
 
extern Std_ReturnType Com_TriggerIPDUSendWithMetaData(PduIdType PduId, uint8* MetaData);

 











 
 
extern  void Com_SwitchIpduTxMode(PduIdType PduId, boolean Mode);
 











 
 
extern void Com_MainFunctionRx(Com_MainFunctionType mainFunctionId);
 










 
 
extern void Com_MainFunctionTx(Com_MainFunctionType mainFunctionId);
 









 
 
extern void Com_MainFunctionRouteSignals(Com_MainFunctionType mainFunctionId);




 












 












 
 








































































 


 












 












 

 
 

 
 




















 
 



 




 


 


 

 




extern uint8 NvMBlockRamBuffer1[2];
extern uint8 NvMBlockRamBuffer2[5];
extern uint8 NvMBlockRamBuffer5[3];
extern uint8 NvMBlockRamBuffer6[16];
extern uint8 NvMBlockRamBuffer7[17];
extern uint8 NvMBlockRamBuffer8[11];
extern uint8 NvMBlockRamBuffer9[20];
extern uint8 NvMBlockRamBuffer10[32];
extern uint8 NvMBlockRamBuffer11[64];
extern uint8 NvMBlockRamBuffer12[32];
extern uint8 NvMBlockRamBuffer13[32];
extern uint8 NvMBlockRamBuffer14[64];
extern uint8 NvMBlockRamBuffer15[32];
extern uint8 NvMBlockRamBuffer16[32];
extern uint8 NvMBlockRamBuffer17[32];
extern uint8 NvMBlockRamBuffer18[32];
extern uint8 NvMBlockRamBuffer19[6];
extern uint8 NvMBlockRamBuffer20[32];
extern uint8 NvMBlockRamBuffer21[6];
extern uint8 NvMBlockRamBuffer22[4];
extern uint8 NvMBlockRamBuffer23[2];
extern uint8 NvMBlockRamBuffer24[64];
extern uint8 NvMBlockRamBuffer25[32];
extern uint8 NvMBlockRamBuffer26[32];
extern uint8 NvMBlockRamBuffer27[64];
extern uint8 NvMBlockRamBuffer28[32];
extern uint8 NvMBlockRamBuffer29[32];
extern uint8 NvMBlockRamBuffer30[2];
extern uint8 NvMBlockRamBuffer31[8];
extern uint8 NvMBlockRamBuffer32[14];
extern uint8 NvMBlockRamBuffer33[37];
extern uint8 NvMBlockRamBuffer34[1];
extern uint8 NvMBlockRamBuffer35[2];
extern uint8 NvMBlockRamBuffer36[1];
extern uint8 NvMBlockRamBuffer37[2];
extern uint8 NvMBlockRamBuffer38[8];
extern uint8 NvMBlockRamBuffer39[8];
extern uint8 NvMBlockRamBuffer40[2];
extern uint8 NvMBlockRamBuffer41[8];
extern uint8 NvMBlockRamBuffer42[2];
extern uint8 NvMBlockRamBuffer43[1];
extern uint8 NvMBlockRamBuffer44[1];
extern uint8 NvMBlockRamBuffer45[24];
extern uint8 NvMBlockRamBuffer46[2];
extern uint8 NvMBlockRamBuffer47[254];
extern uint8 NvMBlockRamBuffer48[254];
extern uint8 NvMBlockRamBuffer49[254];
extern uint8 NvMBlockRamBuffer50[1];
extern uint8 NvMBlockRamBuffer51[4];
extern uint8 NvMBlockRamBuffer52[16];
extern uint8 NvMBlockRamBuffer53[16];

extern uint32 NvMCrcBuf_NvMBlock_ConfigID[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF1A9[1];
extern uint32 NvMCrcBuf_NvMBlock_All_EventEntry[1];
extern uint32 NvMCrcBuf_NvMBlock_UDS_InternalData[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF18B[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF18C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF190[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF198[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF1A8[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF130[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC001[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC002[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC003[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC004[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC005[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC006[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC007[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC008[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC009[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00A[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00B[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00D[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC011[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC012[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC013[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC014[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC015[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC016[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC102[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC106[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC109[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCA02[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCA21[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC305[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC306[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC307[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC308[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC309[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30A[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE01[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE05[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE06[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCF00[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30D[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block0[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block1[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block2[1];
extern uint32 NvMCrcBuf_NvMBlock_27Key_error_count[1];
extern uint32 NvMCrcBuf_NvMBlock_SecOc_count[1];
extern uint32 NvMCrcBuf_NvMBlock_SecOc_Key[1];
extern uint32 NvMCrcBuf_NvMBlock_DID0100[1];



 

 




















 
 




 





 
typedef enum
{
     
    NVM_REQ_OK,
     
    NVM_REQ_NOT_OK,
     
    NVM_REQ_PENDING,
    


 
    NVM_REQ_INTEGRITY_FAILED,
    
 
    NVM_REQ_BLOCK_SKIPPED,
     
    NVM_REQ_NV_INVALIDATED,
     
    NVM_REQ_CANCELED,
     
    NVM_REQ_REDUNDANCY_FAILED,
     
    NVM_REQ_RESTORED_FROM_ROM
} NvM_RequestResultType;

typedef uint16 NvM_BlockIdType;      

typedef enum
{
     
    NVM_INIT_READ_BLOCK,
     
    NVM_INIT_RESTORE_BLOCK_DEFAULTS,
     
    NVM_INIT_READ_ALL_BLOCK,
     
    NVM_INIT_FIRST_INIT_ALL
} NvM_InitBlockRequestType;

typedef enum
{
     
    NVM_READ_BLOCK,
     
    NVM_WRITE_BLOCK,
     
    NVM_RESTORE_BLOCK_DEFAULTS,
     
    NVM_ERASE_NV_BLOCK,
     
    NVM_INVALIDATE_NV_BLOCK,
     
    NVM_READ_ALL_BLOCK
} NvM_BlockRequestType;




 

 

 
typedef enum
{
    NVM_CRC_NOT_USED,
    NVM_CRC8,
    NVM_CRC16,
    NVM_CRC32
} NvM_BlockCRCType;

 
typedef enum
{
    NVM_BLOCK_NATIVE = 1,
    NVM_BLOCK_REDUNDANT,
    NVM_BLOCK_DATASET
} NvM_BlockManagementType;

 
typedef enum
{
    NVM_BLOCK_DESC_WRITEBLOCKONCE,
    NVM_BLOCK_DESC_WRITEPROT,
    NVM_BLOCK_DESC_CALCRAMBLOCKCRC,
    NVM_BLOCK_DESC_RESISTANTTOCHANGEDSW,
    NVM_BLOCK_DESC_SELECTBLOCKFORREADALL,
    NVM_BLOCK_DESC_SELECTBLOCKFORWRITEALL,
    NVM_BLOCK_DESC_STATICBLOCKIDCHECK,
    NVM_BLOCK_DESC_WRITEVERIFICATION,
    NVM_BLOCK_DESC_AUTOVALIDATION,
    NVM_BLOCK_DESC_CRCCOMPMECHANISM,
    NVM_BLOCK_DESC_SETRAMSTATUS,
    NVM_BLOCK_DESC_SYNCMECHANISM,
    NVM_BLOCK_DESC_BSWBLOCKSTATUSINFO
} NvM_BlockDescrptorFlagType;

 
typedef enum
{
    NVM_MEMIF_REQ_READ,
    NVM_MEMIF_REQ_WRITE,
    NVM_MEMIF_REQ_ERASE,
    NVM_MEMIF_REQ_INVALID
} NvM_MemIfReqType;

typedef enum
{
    NVM_READ_ALL,         
    NVM_WRITE_ALL,        
    NVM_VALIDATE_ALL,     
    NVM_FIRST_INIT_ALL,   
    NVM_CANCEL_WRITE_ALL  
} NvM_MultiBlockRequestType;







 
typedef Std_ReturnType (*NvM_InitBlockCallbackType)(
    NvM_InitBlockRequestType InitBlockRequest);  







 
typedef Std_ReturnType (*NvM_SingleBlockCallbackType)(
    NvM_BlockRequestType BlockRequest,
    NvM_RequestResultType JobResult);
 







 
typedef Std_ReturnType (*NvM_ReadRamBlockFromNvmCallbackType)(const void* NvMBuffer);
 







 
typedef Std_ReturnType (*NvM_WriteRamBlockToNvmCallbackType)(void* NvMBuffer);
 




 
typedef void (*NvM_MultiBlockCallbackType)(
    NvM_MultiBlockRequestType MultiBlockRequest,
    NvM_RequestResultType JobResult);
 



 
typedef void (*NvM_VoidFuncVoidPtr)(void);




 




 
typedef enum
{
    NVM_INIT_SERV_ID = 0x0,
    NVM_SET_DATA_INDEX_SERV_ID,
    NVM_GET_DATA_INDEX_SERV_ID,
    NVM_SET_BLOCK_PROTECTION_SERV_ID,
    NVM_GET_ERROR_STATUS_SERV_ID,
    NVM_SET_RAM_BLOCK_STATUS_SERV_ID,
    NVM_READ_BLOCK_SERV_ID,
    NVM_WRITE_BLOCK_SERV_ID,
    NVM_RESTORE_BLOCK_DEFAULTS_SERV_ID,
    NVM_ERASE_NV_BLOCK_SERV_ID,
    NVM_CANCEL_WRITE_ALL_SERV_ID,
    NVM_INVALIDATE_NV_BLOCK_SERV_ID,
    NVM_READ_ALL_SERV_ID,
    NVM_WRITE_ALL_SERV_ID,
    NVM_CANCEL_JOBS_SERV_ID = 0x10,
    NVM_SET_BLOCK_LOCK_STATUS_SERV_ID = 0x13,
    NVM_READ_PRAM_BLOCK_SERV_ID = 0x16,
    NVM_WRITE_PRAM_BLOCK_SERV_ID,
    NVM_RESTORE_PRAM_BLOCK_DEFAULTS_SERV_ID,
    NVM_VALIDATE_ALL_SERV_ID,
    NVM_NONE_SERV_ID
} NvM_ServiceIdType;

 
typedef enum
{
    NVM_ATOMJOB_READBLOCK,
    NVM_ATOMJOB_WRITEBLOCK,
    NVM_ATOMJOB_READROM,
    NVM_ATOMJOB_CALCCRC,
    NVM_ATOMJOB_WRITEVERIFICATION,
    NVM_ATOMJOB_MAX_NONE
} NvM_AtomJobEType;

 
typedef enum
{
    NVM_JOB_TYPE_SINGLE_NORMAL,
    NVM_JOB_TYPE_MULTI,
    NVM_JOB_TYPE_NONE
} NvM_JobTypeType;

 
typedef enum
{
    NVM_JOB_STEP_READ_1ST_NV,
    NVM_JOB_STEP_READ_2ND_NV,
    NVM_JOB_STEP_WRITE_1ST_NV,
    NVM_JOB_STEP_WRITE_2ND_NV,
    NVM_JOB_STEP_ERASE_1ST_NV,
    NVM_JOB_STEP_ERASE_2ND_NV,
    NVM_JOB_STEP_INVALID_1ST_NV,
    NVM_JOB_STEP_INVALID_2ND_NV,
    NVM_JOB_STEP_READ_ROM,
    NVM_JOB_STEP_CALC_CRC_READ_1ST_NV,
    NVM_JOB_STEP_CALC_CRC_READ_2ND_NV,
    NVM_JOB_STEP_CALC_CRC,
    NVM_JOB_STEP_IDLE,  
    NVM_JOB_STEP_PENDING,
    NVM_JOB_STEP_CANCEL,
    NVM_JOB_STEP_COPY,
    NVM_JOB_STEP_WRITE_VERIFICATION,
    NVM_JOB_STEP_CHECK
} NvM_JobStepType;

 
typedef enum
{
    NVM_MEMIF_JOB_IDLE,
    NVM_MEMIF_JOB_ASYNC_READY,
    NVM_MEMIF_JOB_ASYNC_PENDING
} NvM_MemIfStateType;

 
typedef enum
{
    NVM_RUNTIME_NONE,
    NVM_RUNTIME_EXTENDED,
    NVM_RUNTIME_NORMAL
} NvM_RuntimeType;

 
typedef struct
{
    uint8 Init;
    NvM_JobTypeType CurrentJobType;
    NvM_RuntimeType RuntimeType;
    NvM_MemIfStateType MemIfJobState;
    NvM_JobStepType JobStep;
} NvM_ModuleType;

 
typedef struct
{
    uint8 Enqueue;
    NvM_ServiceIdType ServiceId;
    uint8 CancelWriteAll;
    uint8 ID1WriteMark;
    NvM_RequestResultType ReqResult;
} NvM_MultiJobType;

 
typedef struct
{
    uint8 Count;
    NvM_AtomJobEType ReqId[NVM_ATOMJOB_MAX_NONE];
} NvM_AtomJobType;

 
typedef struct
{
    NvM_BlockIdType BlockId;
    NvM_BlockIdType StaticId;
    NvM_BlockIdType BlockIdIndex;
    uint8 DeviceId;
    NvM_ServiceIdType ServiceId;
    uint8 Index;
    uint8 NvNum;
    uint8 RomNum;
    uint16 AdminFlagGroup;
    uint8 ReadRetryCounter;
    uint8 WriteTimesCounter;
    uint8 RepeatMirrorCounter;
    NvM_RequestResultType ESingleReqResult;
    NvM_RequestResultType EMultiReqResult;
    NvM_BlockManagementType ManagementType;
    NvM_BlockCRCType CRCType;
    uint16 BaseNumber;
    uint16 Length;
    uint16 VerificationSize;
    uint16 VerificationCounter;
    uint8 * RamAddr;
    uint8 * RomAddr;
    uint8 CrcFlag;
    uint8 * CrcAddr;
    uint16 CrcLength;
    uint32 Crc;
    uint32 TempCrc;
    NvM_ReadRamBlockFromNvmCallbackType NvM_ReadRamBlockFromNvm;
    NvM_WriteRamBlockToNvmCallbackType NvM_WriteRamBlockToNvm;
    NvM_InitBlockCallbackType InitCallback;
    NvM_SingleBlockCallbackType SingleCallback;
} NvM_CurRunningType;

 
typedef struct
{
    uint16 FlagGroup;
    uint8 CurrentIndex;
    NvM_ServiceIdType ServiceID;
    NvM_RequestResultType SingleReqResult;
    boolean ReadReq;
} NvM_AdminBlockType;


 
typedef struct
{
    uint8 Count;
    uint8 HeadIndex;
    uint8 TailIndex;
} NvM_RoundRobinQueueManageType;

 
typedef struct
{
    NvM_BlockIdType BlockId;
    NvM_ServiceIdType ServiceId;
    uint8 * DestSrcPtr;
} NvM_StandQueueType;

typedef struct
{
    uint8 NvmNvramDeviceId;
    NvM_BlockManagementType NvmBlockManagementType;
    NvM_BlockIdType RepaireIndex;
    













 
    uint16 FlagGroup;
    NvM_BlockCRCType NvmBlockCRCType;
    uint16 NvmNvBlockBaseNumber;
    uint16 NvmNvBlockLength;
    uint8 NvmNvBlockNum;
    uint8 NvmRomBlockNum;
    uint8 NvMMaxNumOfReadRetries;
    uint8 NvMMaxNumOfWriteRetries;
    uint16 NvMWriteVerificationDataSize;
    uint32 * NvmBlockCrcBuffAddress;
    uint8 * NvmRamBlockDataAddress;
    uint8 * NvmRomBlockDataAddress;
    NvM_InitBlockCallbackType NvmInitBlockCallback;
    NvM_SingleBlockCallbackType NvmSingleBlockCallback;
    NvM_ReadRamBlockFromNvmCallbackType NvM_ReadRamBlockFromNvm;
    NvM_WriteRamBlockToNvmCallbackType NvM_WriteRamBlockToNvm;
} NvM_BlockDescriptorType;

 
typedef enum
{
    NVM_CRC_REMAIN,
    NVM_CRC_DELETE,
    NVM_CRC_UPDATE
} NvM_CrcChangeType;

 
typedef enum
{
    NVM_CRC_STATICID_NO_USE,
    NVM_CRC_STATICID_NOT_OK,
    NVM_CRC_STATICID_OK
} NvM_CrcStaticIdStatusType;

typedef struct
{
    uint8 idle;  
} NvM_ConfigType;


 

   
 










































 

 

 

extern const NvM_BlockDescriptorType NvM_BlockDescriptor[53U];

extern const NvM_MultiBlockCallbackType NvmMultiBlockCallback;


 











 
 
extern  void NvM_Init(const NvM_ConfigType* ConfigPtr);


 











 
 
extern  void NvM_CancelWriteAll(void);

 











 
 
extern  void NvM_ReadAll(void);
 











 
 
extern  void NvM_WriteAll(void);

 













 
 
extern  Std_ReturnType NvM_WritePRAMBlock(NvM_BlockIdType BlockId);

 













 
 
extern  Std_ReturnType NvM_RestorePRAMBlockDefaults(NvM_BlockIdType BlockId);

 











 
 
extern  void NvM_SetBlockLockStatus(NvM_BlockIdType BlockId, boolean BlockLocked);

 














 
 
extern  Std_ReturnType NvM_SetDataIndex(NvM_BlockIdType BlockId, uint8 DataIndex);

 













 
 
extern  Std_ReturnType
    NvM_GetDataIndex(NvM_BlockIdType BlockId, uint8 * DataIndexPtr);

 













 
 
extern  Std_ReturnType NvM_ReadPRAMBlock(NvM_BlockIdType BlockId);

 













 
 
extern  Std_ReturnType NvM_ReadBlock(NvM_BlockIdType BlockId, void* NvM_DstPtr);

 














 
 
extern  Std_ReturnType NvM_WriteBlock(NvM_BlockIdType BlockId, const void* NvM_SrcPtr);

 













 
 
extern  Std_ReturnType NvM_RestoreBlockDefaults(NvM_BlockIdType BlockId, void* NvM_DestPtr);

 













 
 
extern  Std_ReturnType
    NvM_GetErrorStatus(NvM_BlockIdType BlockId, NvM_RequestResultType* RequestResultPtr);

 













 
 
extern  Std_ReturnType NvM_CancelJobs(NvM_BlockIdType BlockId);

 











 
 
extern  void NvM_ValidateAll(void);


 















 
 
extern  Std_ReturnType NvM_SetBlockProtection(NvM_BlockIdType BlockId, boolean ProtectionEnabled);

 













 
 
extern  Std_ReturnType NvM_InvalidateNvBlock(NvM_BlockIdType BlockId);

 













 
 
extern  Std_ReturnType NvM_EraseNvBlock(NvM_BlockIdType BlockId);


 












 












 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
typedef struct STag_tDet_Error
{  
  uint16 ModuleId;

   
  uint8 InstanceId;

   
  uint8 ApiId;

   
  uint8 ErrorId;

}tDet_Error;




 
extern Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);

extern Std_ReturnType Det_ReportRuntimeError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);


 

static inline void NVM_DET_REPORTRUNTIMEERROR(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportRuntimeError(20U, 0U, ApiId, ErrorId);
}

extern NvM_StandQueueType NvM_StandQueue[(0xau)];
extern NvM_AdminBlockType NvM_AdminBlock[53U];
extern NvM_ModuleType NvM_Module;
extern NvM_MultiJobType NvM_MultiJob;
extern NvM_AtomJobType NvM_AtomJob;
extern NvM_CurRunningType NvM_CurRunning;
extern NvM_RoundRobinQueueManageType NvM_StandQueueManage;
extern  Std_ReturnType NvM_JobEnqueue(
    NvM_BlockIdType BlockId,
    NvM_ServiceIdType ServiceId,
    uint8 * DestSrcPtr);
extern  void NvM_InterRestoreBlockDefaults(void);
extern  Std_ReturnType NvM_JobDequeue(void);
extern  void NvM_InterInvalidateNvBlock(void);
extern  void NvM_InterWriteVerification(void);
extern  void NvM_InterWriteAll(void);
extern  void NvM_InterReadAll(void);
extern  void NvM_InterWriteBlock(void);
extern  void NvM_InterReadBlock(void);
extern  void NvM_InterCalcCrc(void);
extern  void NvM_InterValidateAll(void);
extern  void NvM_SetWordBitState(uint16 * WordPtr, uint8 SetBit, uint8 OnOff);
extern  uint8 NvM_GetWordBitState(uint16 WordNum, uint8 GetBit);
extern  void NvM_InterReadRom(void);

 




static int16_t g_mpuHandle = -1;                      
static uint8_t g_remoteControlRecvDataBuffer[200] = {0};

static uint16_t g_cycleTime = 5; 

static uint8_t g_sendDataBuffer[100] = {0};
static MpuHalDataPack_t g_dataPack;

static RemoteControlState_t g_remoteControlState = {0};

static int16_t RemoteControlGenealPrecondition(uint8_t *cmdData)
{
    return 0;
    uint8 appEnableConfig[8] = {0};
    NvM_RequestResultType nvmStatus = NVM_REQ_PENDING;
    uint32 nvmReadTime = 0;
    uint32_t voltage = 0;
    VehicleInfor_t *vehicleInfor = ((void *) 0);
    
    NvM_ReadBlock(41U, appEnableConfig);   
    do
    {
        nvmReadTime++;
        
        
        
        NvM_GetErrorStatus(41U, &nvmStatus);
        if (nvmReadTime == 5000)
            break;
    }while(nvmStatus != NVM_REQ_OK);
    if(nvmStatus != NVM_REQ_OK)
    {
        
        appEnableConfig[1] |= 0x04;
    }
    if((appEnableConfig[1] & 0x04) == 0)
    {
        return E_REMOTE_CTRL_RESULT_ERR_FUNC_NOT_ENABLE;
    }

    PeripheralHalAdGet(13, &voltage);
    if((voltage < 8500) && (voltage > 16500))
    {
        return E_REMOTE_CTRL_RESULT_ERR_VOLTAGE_ABNORMAL;
    }

    GetVehicleInfor(&vehicleInfor);
    
    switch(vehicleInfor->userMode)
    {
        case UsgMd_0_Sleep:
        case UsgMd_1_Standby:
            break;
        case UsgMd_2_Comfortable:
            if((cmdData[0] == E_REMOTE_CONTROL_CMD_FIND_VEHICLE) || (cmdData[0] == E_REMOTE_CONTROL_CMD_BATTERY_HEATING) || (cmdData[0] == E_REMOTE_CONTROL_CMD_AIR_CONDITIONER) || (cmdData[0] == E_REMOTE_CONTROL_CMD_REAR_WINDOW_DEFROST))
            {
                return E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID;
            }
            break;
        case UsgMd_3_NormalDriving:
        case UsgMd_4_AIPraking:
        case UsgMd_5_AIPilot:
        case UsgMd_6_XOTA:
            return E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID;
            break;
        default:
            return E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID;
            break;
    }
    if(vehicleInfor->vehicleMode == VehMd_8_Engineering)
    {
        return E_REMOTE_CTRL_RESULT_ERR_VEHICLE_MODE_INVALID;
    }

    return 0;
}








 
static int16_t RemoteControlLockUnlockPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x02)
    {
        return -1;
    }
    
    return 0;   
}








 
static int16_t RemoteControlLockUnlockExecute(uint8_t *cmdData)
{
    Com_SendSignal(123u, &cmdData[0]);

    return 0;
}








 
static int16_t RemoteControlLockUnlockGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(414u, &signalData);
    *result = signalData;
    if(signalData == 0xF)
    {
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    }
    else if(signalData != 0x0)
    {
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    }
    else
    {
        return E_REMOTE_CONTROL_RESULT_PENDING;
    }
}








 
static int16_t RemoteControlFindVehiclePrecondition(uint8_t *cmdData)
{
    

    return 0;   
}








 
static int16_t RemoteControlFindVehicleExecute(uint8_t *cmdData)
{
    uint8_t signalData = 0;

    switch (cmdData[0])
    {
        case 0x01:  
            signalData = 3;
            Com_SendSignal(123u, &signalData);
            Com_SendSignal(88u, &cmdData[1]);
            break;
        case 0x02:  
            signalData = 4;
            Com_SendSignal(123u, &signalData);
            Com_SendSignal(88u, &cmdData[1]);
            break;
        case 0x03:  
            signalData = 1;
            Com_SendSignal(123u, &signalData);
            Com_SendSignal(88u, &cmdData[1]);
            break;
        case 0x11:
        case 0x12:
        case 0x13:
            signalData = 2;
            Com_SendSignal(123u, &signalData);
            break;
        default:
            return -1;
            break;
    }
    
    return 0;
}








 
static int16_t RemoteControlFindVehicleGetResult(uint8_t *cmdData, uint8_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(362u, &signalData);
    if(signalData == 0x01)
    {
        Com_ReceiveSignal(360u, &signalData);
        *result = signalData;
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    }
    else if(signalData == 0x02)
    {
        Com_ReceiveSignal(360u, &signalData);
        *result = signalData;
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    }
    else
    {
        return E_REMOTE_CONTROL_RESULT_PENDING;
    }
}

static int16_t RemoteControlWindowPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x04)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlWindowExecute(uint8_t *cmdData)
{
    Com_SendSignal(101u, &cmdData[0]);
    if(cmdData[0] == 0x04)
    {
        Com_SendSignal(106u, &cmdData[1]);
    }
    return 0;
}

static int16_t RemoteControlWindowGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(425u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlTailgatePrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x03)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlTailgateExecute(uint8_t *cmdData)
{
    Com_SendSignal(98u, &cmdData[0]);
    if(cmdData[0] == 0x03)
    {
        Com_SendSignal(107u, &cmdData[1]);
    }
    return 0;
}

static int16_t RemoteControlTailgateGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(405u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlRemoteStartPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 1)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteStartExecute(uint8_t *cmdData)
{
    Com_SendSignal(110u, &cmdData[0]);
    Com_SendSignal(108u, &cmdData[1]);
    return 0;
}

static int16_t RemoteControlRemoteStartGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(426u, &signalData);
    *result = signalData;

    if(signalData == 0x0D)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlRemoteStartStopPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 1)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteStartStopExecute(uint8_t *cmdData)
{
    Com_SendSignal(121u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRemoteStartStopGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(402u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlSeatHeatPrecondition(uint8_t *cmdData)
{
    if((cmdData[0] > 4) || (cmdData[0] > 9))
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlSeatHeatExecute(uint8_t *cmdData)
{
    switch (cmdData[1])
    {
    case 0x1:
        Com_SendSignal(117u, &cmdData[0]);
        break;
    case 0x2:
        Com_SendSignal(115u, &cmdData[0]);
        break;
    case 0x3:
        Com_SendSignal(126u, &cmdData[0]);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_SendSignal(128u, &cmdData[0]);
        break;
    case 0x6:
        Com_SendSignal(105u, &cmdData[0]);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_SendSignal(103u, &cmdData[0]);
        break;
    case 0x9:
        Com_SendSignal(97u, &cmdData[0]);
        break;
    default:
        break;
    }
    
    return 0;
}

static int16_t RemoteControlSeatHeatGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    switch (cmdData[1])
    {
    case 0x1:
        Com_ReceiveSignal(403u, &signalData);
        break;
    case 0x2:
        Com_ReceiveSignal(406u, &signalData);
        break;
    case 0x3:
        Com_ReceiveSignal(408u, &signalData);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_ReceiveSignal(410u, &signalData);
        break;
    case 0x6:
        Com_ReceiveSignal(415u, &signalData);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_ReceiveSignal(412u, &signalData);
        break;
    case 0x9:
        Com_ReceiveSignal(419u, &signalData);
        break;
    default:
        break;
    }

    *result = signalData;
    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlSeatVentPrecondition(uint8_t *cmdData)
{
    if((cmdData[0] > 4) || (cmdData[0] > 9))
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlSeatVentExecute(uint8_t *cmdData)
{
    switch (cmdData[1])
    {
    case 0x1:
        Com_SendSignal(114u, &cmdData[0]);
        break;
    case 0x2:
        Com_SendSignal(124u, &cmdData[0]);
        break;
    case 0x3:
        Com_SendSignal(127u, &cmdData[0]);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_SendSignal(129u, &cmdData[0]);
        break;
    case 0x6:
        Com_SendSignal(102u, &cmdData[0]);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_SendSignal(104u, &cmdData[0]);
        break;
    case 0x9:
        break;
    default:
        break;
    }
    
    return 0;
}

static int16_t RemoteControlSeatVentGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    switch (cmdData[1])
    {
    case 0x1:
        Com_ReceiveSignal(407u, &signalData);
        break;
    case 0x2:
        Com_ReceiveSignal(409u, &signalData);
        break;
    case 0x3:
        Com_ReceiveSignal(411u, &signalData);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_ReceiveSignal(413u, &signalData);
        break;
    case 0x6:
        Com_ReceiveSignal(418u, &signalData);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_ReceiveSignal(416u, &signalData);
        break;
    case 0x9:
        break;
    default:
        break;
    }

    *result = signalData;
    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlAirConditionerPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 7)
    {
        return -1;
    }
    return 0;
}

static int16_t RemoteControlAirConditionerExecute(uint8_t *cmdData)
{
    Com_SendSignal(118u, &cmdData[0]);
    Com_SendSignal(120u, &cmdData[1]);
    Com_SendSignal(122u, &cmdData[2]);
    Com_SendSignal(131u, &cmdData[3]);
    Com_SendSignal(100u, &cmdData[4]);
    Com_SendSignal(130u, &cmdData[5]);

    return 0;
}

static int16_t RemoteControlAirConditionerGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(417u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlBatteryHeatingPrecondition(uint8_t *cmdData)
{
    return 0;
}

static int16_t RemoteControlBatteryHeatingExecute(uint8_t *cmdData)
{
    Com_SendSignal(99u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlBatteryHeatingGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(420u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlRemoteChargePrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x03)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteChargeExecute(uint8_t *cmdData)
{
    Com_SendSignal(133u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRemoteChargeGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(382u, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlChargeCurrentSetPrecondition(uint8_t *cmdData)
{

    return 0;
}

static int16_t RemoteControlChargeCurrentSetExecute(uint8_t *cmdData)
{
    Com_SendSignal(90u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlChargeCurrentSetGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(422u, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlChargeSocLimitPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 100)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlChargeSocLimitExecute(uint8_t *cmdData)
{
    Com_SendSignal(109u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlChargeSocLimitGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(421u, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlScheduleChargePrecondition(uint8_t *cmdData)
{
    if((cmdData[0] > 0x03) || (cmdData[1] > 23) || (cmdData[2] > 59) || (cmdData[3] > 23) || (cmdData[4] > 59))
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlScheduleChargeExecute(uint8_t *cmdData)
{
    Com_SendSignal(112u, &cmdData[0]);

    Com_SendSignal(119u, &cmdData[1]);
    Com_SendSignal(111u, &cmdData[2]);

    Com_SendSignal(116u, &cmdData[3]);
    Com_SendSignal(113u, &cmdData[4]);

    return 0;
}

static int16_t RemoteControlScheduleChargeGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(424u, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlRemoteDischargePrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x03)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteDischargeExecute(uint8_t *cmdData)
{
    Com_SendSignal(132u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRemoteDischargeGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(381u, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlFridgeSwitchPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 4)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlFridgeSwitchExecute(uint8_t *cmdData)
{
    Com_SendSignal(91u, &cmdData[0]);
    Com_SendSignal(96u, &cmdData[1]);
    Com_SendSignal(95u, &cmdData[2]);
    return 0;
}

static int16_t RemoteControlFridgeSwitchGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(423u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlFridgeKeepTempPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 2)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlFridgeKeepTempExecute(uint8_t *cmdData)
{
    Com_SendSignal(92u, &cmdData[0]);
    Com_SendSignal(94u, &cmdData[1]);
    Com_SendSignal(93u, &cmdData[2]);
    return 0;
}

static int16_t RemoteControlFridgeKeepTempGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(404u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}


static int16_t RemoteControlRearDefrostPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 2)
    {
        return -1;
    }
    return 0;
}

static int16_t RemoteControlRearDefrostExecute(uint8_t *cmdData)
{
    Com_SendSignal(125u, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRearDefrostGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(380u, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static const RemoteControlFunction_t g_remoteControlTable[E_REMOTE_CONTROL_CMD_MAX] =
{
    [E_REMOTE_CONTROL_CMD_LOCK_UNLOCK] =
    {
        RemoteControlLockUnlockPrecondition,
        RemoteControlLockUnlockExecute,
        RemoteControlLockUnlockGetResult
    },

    [E_REMOTE_CONTROL_CMD_FIND_VEHICLE] =
    {
        RemoteControlFindVehiclePrecondition,
        RemoteControlFindVehicleExecute,
        RemoteControlFindVehicleGetResult
    },

    [E_REMOTE_CONTROL_CMD_WINDOW] =
    {
        RemoteControlWindowPrecondition,
        RemoteControlWindowExecute,
        RemoteControlWindowGetResult
    },

    [E_REMOTE_CONTROL_CMD_POWER_TAILGATE] =
    {
        RemoteControlTailgatePrecondition,
        RemoteControlTailgateExecute,
        RemoteControlTailgateGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_START] =
    {
        RemoteControlRemoteStartPrecondition,
        RemoteControlRemoteStartExecute,
        RemoteControlRemoteStartGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_START_STOP] =
    {
        RemoteControlRemoteStartStopPrecondition,
        RemoteControlRemoteStartStopExecute,
        RemoteControlRemoteStartStopGetResult
    },

    [E_REMOTE_CONTROL_CMD_SEAT_HEAT] =
    {
        RemoteControlSeatHeatPrecondition,
        RemoteControlSeatHeatExecute,
        RemoteControlSeatHeatGetResult
    },

    [E_REMOTE_CONTROL_CMD_SEAT_VENT] =
    {
        RemoteControlSeatVentPrecondition,
        RemoteControlSeatVentExecute,
        RemoteControlSeatVentGetResult
    },

    [E_REMOTE_CONTROL_CMD_AIR_CONDITIONER] =
    {
        RemoteControlAirConditionerPrecondition,
        RemoteControlAirConditionerExecute,
        RemoteControlAirConditionerGetResult
    },

    [E_REMOTE_CONTROL_CMD_BATTERY_HEATING] =
    {
        RemoteControlBatteryHeatingPrecondition,
        RemoteControlBatteryHeatingExecute,
        RemoteControlBatteryHeatingGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_CHARGE] =
    {
        RemoteControlRemoteChargePrecondition,
        RemoteControlRemoteChargeExecute,
        RemoteControlRemoteChargeGetResult
    },

    [E_REMOTE_CONTROL_CMD_CHARGE_CURRENT_SET] =
    {
        RemoteControlChargeCurrentSetPrecondition,
        RemoteControlChargeCurrentSetExecute,
        RemoteControlChargeCurrentSetGetResult
    },

    [E_REMOTE_CONTROL_CMD_CHARGE_SOC_LIMIT] =
    {
        RemoteControlChargeSocLimitPrecondition,
        RemoteControlChargeSocLimitExecute,
        RemoteControlChargeSocLimitGetResult
    },

    [E_REMOTE_CONTROL_CMD_SCHEDULE_CHARGE] =
    {
        RemoteControlScheduleChargePrecondition,
        RemoteControlScheduleChargeExecute,
        RemoteControlScheduleChargeGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_DISCHARGE] =
    {
        RemoteControlRemoteDischargePrecondition,
        RemoteControlRemoteDischargeExecute,
        RemoteControlRemoteDischargeGetResult
    },

    [E_REMOTE_CONTROL_CMD_FRIDGE_SWITCH] =
    {
        RemoteControlFridgeSwitchPrecondition,
        RemoteControlFridgeSwitchExecute,
        RemoteControlFridgeSwitchGetResult
    },

    [E_REMOTE_CONTROL_CMD_FRIDGE_KEEP_TEMP] =
    {
        RemoteControlFridgeKeepTempPrecondition,
        RemoteControlFridgeKeepTempExecute,
        RemoteControlFridgeKeepTempGetResult
    },

    [E_REMOTE_CONTROL_CMD_REAR_WINDOW_DEFROST] =
    {
        RemoteControlRearDefrostPrecondition,
        RemoteControlRearDefrostExecute,
        RemoteControlRearDefrostGetResult
    }
};








 
int16_t RemoteControlSetCmdParam(uint8_t* receiveData, uint8_t type)
{
    int8_t ret = 0;
    RemoteControlReceiveCmd_t *pReceiveCmd = ((void *) 0);

    if (g_remoteControlState.receiveCmdNumber >= 25) 
    {
        RemoteControlSendResult(receiveData[0], &receiveData[1], E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL, 0, 0);
        return -1;
    }
    else if(g_remoteControlState.state != E_REMOTE_CONTROL_STATE_IDLE)
    {
        pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
        if(receiveData[0] == pReceiveCmd->uartRecvCmd)
        {
            RemoteControlSendResult(receiveData[0], &receiveData[1], E_REMOTE_CTRL_RESULT_ERR_EXECUTING, 0, 0);
            return -1;
        }
    }

    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.saveCmdIndex];
    pReceiveCmd->validFlag = 1;
    pReceiveCmd->controlType = type;

    pReceiveCmd->uartRecvCmd = (RemoteControlCmd_e)receiveData[0];
    pReceiveCmd->timeout = (receiveData[1] << 8) | receiveData[2];
    pReceiveCmd->cmdData[0] = receiveData[3];   
    pReceiveCmd->cmdData[1] = receiveData[4];
    pReceiveCmd->cmdData[2] = receiveData[5];
    pReceiveCmd->cmdData[3] = receiveData[6];
    pReceiveCmd->cmdData[4] = receiveData[7];
    pReceiveCmd->cmdData[5] = receiveData[8];
    g_remoteControlState.saveCmdIndex++;
    if(g_remoteControlState.saveCmdIndex >= 25)
    {
        g_remoteControlState.saveCmdIndex = 0;
    }
    g_remoteControlState.receiveCmdNumber++;

    return 0;
}

void RemoteControlUartCommandProcess(void)
{
    int16_t ret = -1;

    ret = MpuHalReceive(g_mpuHandle, &g_dataPack, 0);
    static uint8_t lastSignalValue = 0;
    uint8_t signalValue = 0;
    uint8_t index = 0;
    
    Com_ReceiveSignal(388u, &signalValue);
    if(signalValue != lastSignalValue)
    {
        lastSignalValue = signalValue;
        LogHalPrint("remote simulate cmd: %d\r\n", signalValue);
        g_dataPack.aid = 0x31;
        g_dataPack.mid = 0x01;
        g_dataPack.subcommand = 0x81;
        switch (signalValue)
        {
        case 0x01:
            g_dataPack.pDataBuffer[index++] = 0x01;         
            g_dataPack.pDataBuffer[index++] = 5000 >> 8;    
            g_dataPack.pDataBuffer[index++] = 5000 & 0x00FF;
            g_dataPack.pDataBuffer[index++] = 0x01;         
            g_dataPack.dataLength = index;
            ret = 0;
            break;
        default:
            break;
        }
    }
    if(ret == 0)    
    {
        LogHalPrint("remote: recv cpu data\r\n");
        if(g_dataPack.aid == 0x31 && g_dataPack.mid == 0x01) 
        {
            if ((g_dataPack.subcommand & 0x7F) == 0x01)
            {
                LogHalPrint("remote: parse cmd - ");
                for(uint8_t i = 0; i < g_dataPack.dataLength; i++)
                {
                    LogHalPrint(" %02X", g_dataPack . pDataBuffer[i]);
                }
                LogHalPrint("\r\n");
                RemoteControlSendAck(g_dataPack.pDataBuffer[0]);
                RemoteControlSetCmdParam(g_dataPack.pDataBuffer, 0);
            }
            else
            {
                
            }
        }
    }
}








 
static void RemoteControlCmdExecuteOver(void)
{
    memset(&g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex], 0, sizeof(g_remoteControlState.receiveCmd[0]));
    if(g_remoteControlState.receiveCmdNumber > 0)
    {
        g_remoteControlState.receiveCmdNumber--;
    }
    g_remoteControlState.exeCmdIndex++;
    if(g_remoteControlState.exeCmdIndex >= 25)
    {
        g_remoteControlState.exeCmdIndex = 0;
    }
    g_remoteControlState.state = E_REMOTE_CONTROL_STATE_IDLE;
    
    
}








 
static void vehicleRemoteControlStateIdle(void)
{
    uint8_t i;

    if(g_remoteControlState.receiveCmdNumber > 0)
    {
        if(g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex].validFlag != 0)
        {
            
            
            g_remoteControlState.state = E_REMOTE_CONTROL_STATE_PRECONDITION;
            
            
        }
        else
        {
            RemoteControlCmdExecuteOver();
        }
    }
}








 
static void vehicleRemoteControlStatePrecondition(void)
{
    int16_t ret = -1;
    RemoteControlReceiveCmd_t *pReceiveCmd = ((void *) 0);
    
    
    
    
    
    
    LogHalPrint("remote: vehicleRemoteControlStatePrecondition\r\n");

    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
    ret = RemoteControlGenealPrecondition(pReceiveCmd->cmdData);

    if (ret == 0)
    {
        g_remoteControlState.state = E_REMOTE_CONTROL_STATE_EXECTUE_CMD;
    }
    else
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, ret, 0, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
    }
}

static void vehicleRemoteControlStateExectueCmd(void)
{
    int16_t ret = -1;
    RemoteControlReceiveCmd_t *pReceiveCmd = ((void *) 0);

    LogHalPrint("remote: vehicleRemoteControlStateExectueCmd\r\n");

    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
    if (g_remoteControlTable[pReceiveCmd->uartRecvCmd].pExectueFunction != ((void *) 0))
    {
        ret = g_remoteControlTable[pReceiveCmd->uartRecvCmd].pExectueFunction(pReceiveCmd->cmdData);
    }
    else
    {
        ret = 0;
    }

    if (ret == 0)
    {
        g_remoteControlState.state = E_REMOTE_CONTROL_STATE_WAIT_RESULT;
        g_remoteControlState.tick = 0;
        g_remoteControlState.Timeout = pReceiveCmd->timeout;
    }
    else
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL, 0, 0);
        RemoteControlCmdExecuteOver();
    }
}








 
static void vehicleRemoteControlStateWaitResult(void)
{
    int16_t ret = -1;
    RemoteControlReceiveCmd_t *pReceiveCmd = ((void *) 0);

    g_remoteControlState.tick++;
    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
    if(g_remoteControlTable[pReceiveCmd->uartRecvCmd].pGetResultFunction != ((void *) 0))
    {
        ret = g_remoteControlTable[pReceiveCmd->uartRecvCmd].pGetResultFunction(pReceiveCmd->cmdData, &pReceiveCmd->failReason);
    }
    else
    {
        ret = E_REMOTE_CONTROL_RESULT_SUCCESS;
    }

    if(ret == E_REMOTE_CONTROL_RESULT_SUCCESS)
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_SUCCESS, 0, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
        return;
    }
    else if(ret == E_REMOTE_CONTROL_RESULT_FAILURE)
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL, pReceiveCmd->failReason, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
        return;
    }

    if (g_remoteControlState.tick >= (g_remoteControlState.Timeout / g_cycleTime))
    {
        LogHalPrint("remote: vehicleRemoteControlStateWaitResult timeout\r\n");
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_ERR_RESP_TIMEOUT, 0, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
    }
}


void RemoteControlStateProcess(void)
{
    switch (g_remoteControlState.state)
    {
    case E_REMOTE_CONTROL_STATE_IDLE:
        vehicleRemoteControlStateIdle();
        break;
    case E_REMOTE_CONTROL_STATE_PRECONDITION:
        vehicleRemoteControlStatePrecondition();
        break;
    case E_REMOTE_CONTROL_STATE_EXECTUE_CMD:
        vehicleRemoteControlStateExectueCmd();
        break;
    case E_REMOTE_CONTROL_STATE_WAIT_RESULT:
        vehicleRemoteControlStateWaitResult();
        break;
    default:
        g_remoteControlState.state = E_REMOTE_CONTROL_STATE_IDLE;
        break;
    }
}

int16_t RemoteControlTaskInit(void)
{
    MpuHalFilter_t filter;

    
    
    
    
    

    
    g_mpuHandle = MpuHalOpen();
    filter.aid = 0x31;
    filter.midMin = 0x01;
    filter.midMax = 0x01;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_remoteControlRecvDataBuffer,sizeof(g_remoteControlRecvDataBuffer));

    g_dataPack.pDataBuffer = g_sendDataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_sendDataBuffer);
    
    
    RemoteControlSdkInit(g_mpuHandle, g_cycleTime);

    return 0;
}

void RemoteControlTask(void)
{
    
    RemoteControlUartCommandProcess();
    
    RemoteControlStateProcess();
}
