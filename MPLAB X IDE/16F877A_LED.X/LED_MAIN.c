

// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF        // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
   // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#define _XTAL_FREQ 20000000

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.


#include <xc.h>
#include<pic16F877A.h>
void delay (unsigned int itime);


void main()
{
    ADCON1=0X07;
    TRISE=0X00;
TRISD = 0;     //PORTD AS OUTPUT PORT
TRISC =0;   //PORTC AS OUTPUT PORT 
TRISB = 0;	   // PORTB AS OUTPUT PORT
{
while(1)
{
    PORTE= 0X00;
PORTD = 0X00;     //PORTD AS HIGH
PORTC =0X00;    //PORTC AS HIGH
PORTB = 0X00;	   // PORTB AS HIGH
delay(1000);
PORTD = 0Xff;     //PORTD AS LOW
PORTC = 0Xff;     //PORTC AS LOW
PORTB = 0Xff;
PORTE = 0Xff;// PORTB AS LOW
delay (1000);
}
}
	}
void delay (unsigned int itime)
{
 int i,j;
for(i=0;i<=itime;i++)
for(j=0;j<=1275;j++);

}
