#ifndef _GSENSORHAL_H
#define _GSENSORHAL_H

#define LSM6DSM_WHO_AM_I        0x0FU
#define LSM6DSM_CTRL1_XL        0x10U

void GSensorHalInit(void);
void IICtest(void);

#endif  //_GSENSORHAL_H