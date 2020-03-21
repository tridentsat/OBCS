/* 
 * File:   7SEG_16_MAIN.c
 * Author: Upendra
 *
 * Created on 15 July, 2019, 9:23 PM
 */

// program for onboard 7 segment display
#include<pic16f877a.h>
void delay (unsigned int itime);
#pragma config FOSC=HS,WDTE=OFF,BOREN=OFF,PWRTE=OFF
#pragma config LVP=OFF,CP=OFF,WRT=OFF,CPD=OFF,DEBUG=OFF

void main()
{
TRISB = 0;	   // PORTB AS OUTPUT PORT
TRISD = 0x03;
{
while(1)
{
PORTB = 0XC0;         // FOR 0 DISPLAY 
delay(200);
PORTB = 0XF9;        // FOR 1 DISPLAY 	   
delay(200);
PORTB = 0XA4;        // FOR 2 DISPLAY 	   
delay (200);
PORTB = 0XB0;        // FOR 3 DISPLAY 	   
delay(200);
PORTB = 0X99;        // FOR 4 DISPLAY 	   
delay (200);
PORTB = 0X92;	   
delay(200);
PORTB = 0X82;	   
delay (200);
PORTB = 0XF8;	   
delay(200);
PORTB = 0X80;	   
delay (200);
PORTB = 0X90;        // FOR 9 DISPLAY 	   
delay (200);
}
}
}


void delay (unsigned int itime)
{
 int i,j;
for(i=0;i<=itime;i++)
for(j=0;j<=1275;j++);

}

