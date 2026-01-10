//#define SIZE_4096_BIT_IN_BYTE (0x200ul)
//#define SIZE_4096_BIT_IN_WORD (0x200ul / 4ul)

#define SIZE_4096_BIT_IN_BYTE (0x4ul)
#define SIZE_4096_BIT_IN_WORD (SIZE_4096_BIT_IN_BYTE / 4ul)

uint8_t  programData[SIZE_4096_BIT_IN_BYTE] = {    
0x66, 0x66, 0x00, 0x00};
#define PROGRAM_DATA_SIZE_IN_BYTE (sizeof(programData)/sizeof(uint8_t))
#define PROGRAM_DATA_SIZE_IN_WORD (sizeof(programData)/sizeof(uint32_t))

