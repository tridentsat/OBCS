/* 
 * File:   sun_7seg.c
 * Author: Upendra
 *
 * Created on 31 July, 2019, 4:01 PM
 */
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#include <xc.h>
#include <math.h>
#include<stdio.h>
#define _XTAL_FREQ 20000000
//***Define the signal pins of all four displays***//
#define s1 RC0
#define s2 RC1
#define s3 RC2
#define s4 RC3
//***End of definition**////
/*
 * 
 */
void ADC_Initialize()
{
  ADCON0 = 0b10000000; //Fosc/32 is selected
  ADCON1 = 0b10000000; // right justifield
	ADON=1;				//ADC ON
}

unsigned int ADC_Read(unsigned char channel)
{
  ADCON0 |= channel<<3; //Setting the required Bits
  __delay_ms(2); //Acquisition time to charge hold capacitor
  GO_nDONE = 1; //Initializes A/D Conversion
  while(GO_nDONE); //Wait for A/D Conversion to complete
  return ((ADRESH<<8)|ADRESL); //Returns Result
}
void main()
{ 
short int flag =0; //for creating delay
double x,y,z,negx,negy,r;//5 ANALOG INPUT PINS FOR 5 LDRs...r for magnitude of vector from sun
double A[5];  //5 angles with 5 axes resp. x,y,z,negx and negy
short int i;
unsigned int a,b,c,d,e,f,g,h;
unsigned int seg[]={0XC0, //Hex value to display the number 0
                    0XF9, //Hex value to display the number 1
                    0XA4, //Hex value to display the number 2
                    0XB0, //Hex value to display the number 3
                    0X99, //Hex value to display the number 4
                    0X92, //Hex value to display the number 5
                    0X82, //Hex value to display the number 6
                    0XF8, //Hex value to display the number 7
                    0X80, //Hex value to display the number 8
                    0X90  //Hex value to display the number 9
                   }; //End of Array for displaying numbers from 0 to 9

//*****I/O Configuration****//
TRISC=0X00;
PORTC=0X00;
TRISD=0x00;
PORTD=0X00;
TRISB0=1;
//***End of I/O configuration**///

ADC_Initialize();

while(1)
{
    //if(RB0==0)
	//{
    if(flag>=50) //wait till flag reaches 50
{
     x = (ADC_Read(0));
	y = (ADC_Read(1));
	z = (ADC_Read(2));
	negx = (ADC_Read(3));
	negy = (ADC_Read(4));
     flag=0; 
}
flag++; //increment flag for each flash

r= sqrt((x+negx)*(x+negx) + (y+negy)*(y+negy) + z*z)+1;//calculate magnitude of vector.
 A[0] = acos((x/r))*57.29 ;
 A[1] = acos((y/r))*57.29 ;
 A[2] = acos((z/r))*57.29 ;
 A[3] = acos((negx/r))*57.29 ;
 A[4] = acos((negy/r))*57.29 ;
//calculation part done
//now printing result on lcd*/
 for(i=0;i<5;i++)
 {
     unsigned int ival=(unsigned int)A[i];
     double fval=A[i]-ival;
     unsigned int fa=(unsigned int)fval*100;
      //***Splitting "i" into four digits***//  
a=ival%10;//4th digit is saved here
b=ival/10;
c=b%10;//3rd digit is saved here
d=b/10;
e=fa%10; //2nd digit is saved here
f=fa/10;
g=f%10; //1st digit is saved here
h=f/10;
//***End of splitting***//

PORTD=seg[g];s1=1; //Turn ON display 1 and print 4th digit
__delay_ms(500);s1=0;     //Turn OFF display 1 after 5ms delay
PORTD=seg[e];RD7=1;s2=1; //Turn ON display 2 and print 3rd digit
__delay_ms(500);s2=0;     //Turn OFF display 2 after 5ms delay
PORTD=seg[c];s3=1; //Turn ON display 3 and print 2nd digit
__delay_ms(500);s3=0;     //Turn OFF display 3 after 5ms delay
PORTD=seg[a];s4=1; //Turn ON display 4 and print 1st digit
__delay_ms(500);s4=0;     //Turn OFF display 4 after 5ms delay

 }
 
 

 //} //if end
}//ehile end
}//main end

