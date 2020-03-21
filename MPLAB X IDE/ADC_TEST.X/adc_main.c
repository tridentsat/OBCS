/* 
 * File:   adc_main.c
 * Author: Upendra
 *
 * Created on 30 July, 2019, 1:05 PM
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


#define _XTAL_FREQ 20000000

//***Define the signal pins of all four displays***//
#define s1 RC0
#define s2 RC1
#define s3 RC2
#define s4 RC3
//***End of definition**////

void ADC_Initialize()
{
  ADCON0 = 0b10000000; //ADC ON and Fosc/16 is selected
  ADCON1 = 0b10000000; // Internal reference voltage is selected
	ADON=1;
}

unsigned int ADC_Read(unsigned char channel)
{
  //ADCON0 &= 0x11000101; //Clearing the Channel Selection Bits
  //ADCON0 |= channel<<3; //Setting the required Bits
  __delay_ms(2); //Acquisition time to charge hold capacitor
  GO_nDONE = 1; //Initializes A/D Conversion
  while(GO_nDONE); //Wait for A/D Conversion to complete
  return ((ADRESH<<8)|ADRESL); //Returns Result
}

void main()
{ unsigned int a,b,c,d,e,f,g,h,adc; //just variables
int i = 0; //the 4-digit value that is to be displayed
int flag =0; //for creating delay

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
//***End of I/O configuration**///

ADC_Initialize();


while(1)
{
    
    if(flag>=50) //wait till flag reaches 100
{
     adc = (ADC_Read(2));
     i = adc*0.488281;
     flag=0; //only if flag is hundred "i" will get the ADC value
}
flag++; //increment flag for each flash

  //***Splitting "i" into four digits***//  
a=i%10;//4th digit is saved here
b=i/10;
c=b%10;//3rd digit is saved here
d=b/10;
e=d%10; //2nd digit is saved here
f=d/10;
g=f%10; //1st digit is saved here
h=f/10;
//***End of splitting***//

PORTD=seg[g];s1=1; //Turn ON display 1 and print 4th digit
__delay_ms(5);s1=0;     //Turn OFF display 1 after 5ms delay
PORTD=seg[e];RD7=1;s2=1; //Turn ON display 2 and print 3rd digit
__delay_ms(5);s2=0;     //Turn OFF display 2 after 5ms delay
PORTD=seg[c];s3=1; //Turn ON display 3 and print 2nd digit
__delay_ms(5);s3=0;     //Turn OFF display 3 after 5ms delay
PORTD=seg[a];s4=1; //Turn ON display 4 and print 1st digit
__delay_ms(5);s4=0;     //Turn OFF display 4 after 5ms delay
  
}
}