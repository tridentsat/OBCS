#include <xc.h>
#define _XTAL_FREQ 4000000
int led()
	{
		for(int i=0;i<5;i++)
		{TRISC=0X00;
		RC0=1;
		__delay_ms(1000);
		RC0=0;
		__delay_ms(1000);
		}
		return 0;
	}
	