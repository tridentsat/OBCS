
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

//***Define the signal pins for lcd display***//
#define RS RD2
#define EN RD3
#define D4 RD4
#define D5 RD5
#define D6 RD6
#define D7 RD7
//***End of definition**////
int i;
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
//*****************************************LCD FUNCTIONS************************************************************
void Lcd_SetBit(char data_bit) //Based on the Hex value Set the Bits of the Data Lines
{
    if(data_bit& 1) 
        D4 = 1;
    else
        D4 = 0;

    if(data_bit& 2)
        D5 = 1;
    else
        D5 = 0;

    if(data_bit& 4)
        D6 = 1;
    else
        D6 = 0;

    if(data_bit& 8) 
        D7 = 1;
    else
        D7 = 0;
}

void Lcd_Cmd(char a)
{
    RS = 0;           
    Lcd_SetBit(a); //Incoming Hex value
    EN  = 1;         
        __delay_ms(4);
        EN  = 0;         
}

Lcd_Clear()
{
    Lcd_Cmd(0); //Clear the LCD
    Lcd_Cmd(1); //Move the curser to first position
}

void Lcd_Set_Cursor(char a, char b)
{
    char temp,z,y;
    if(a== 1)
    {
      temp = 0x80 + b - 1; //80H is used to move the curser
        z = temp>>4; //upper 8-bits
        y = temp & 0x0F; //lower 8-bits
        Lcd_Cmd(z); //Set Row
        Lcd_Cmd(y); //Set Column
    }
    else if(a== 2)
    {
        temp = 0xC0 + b - 1;
        z = temp>>4; //Lower 8-bits
        y = temp & 0x0F; //Upper 8-bits
        Lcd_Cmd(z); //Set Row
        Lcd_Cmd(y); //Set Column
    }
}
void Lcd_Start()
{
  Lcd_SetBit(0x00);
  for(int i=1065244; i<=0; i--)  NOP();  
  Lcd_Cmd(0x03);
    __delay_ms(5);
  Lcd_Cmd(0x03);
    __delay_ms(11);
  Lcd_Cmd(0x03); 
  Lcd_Cmd(0x02); //02H is used for Return home -> Clears the RAM and initializes the LCD
  Lcd_Cmd(0x02); //02H is used for Return home -> Clears the RAM and initializes the LCD
  Lcd_Cmd(0x08); //Select Row 1
  Lcd_Cmd(0x00); //Clear Row 1 Display
  Lcd_Cmd(0x0C); //Select Row 2
  Lcd_Cmd(0x00); //Clear Row 2 Display
  Lcd_Cmd(0x06);
}

void Lcd_Print_Char(char data)  //Send 8-bits through 4-bit mode
{
   char Lower_Nibble,Upper_Nibble;
   Lower_Nibble = data&0x0F;
   Upper_Nibble = data&0xF0;
   RS = 1;             // => RS = 1
   Lcd_SetBit(Upper_Nibble>>4);             //Send upper half by shifting by 4
   EN = 1;
   for(int i=2130483; i<=0; i--)  NOP(); 
   EN = 0;
   Lcd_SetBit(Lower_Nibble); //Send Lower half
   EN = 1;
   for(int i=2130483; i<=0; i--)  NOP();
   EN = 0;
}

void Lcd_Print_String(char *a)
{
    int i;
    for(i=0;a[i]!='\0';i++)
       Lcd_Print_Char(a[i]);  //Split the string using pointers and call the Char function 
}
void Lcd_Print_Ang(float f)//here f=ivalue+0.fvalue
{
 char str[80];
 int ival = (int) f;
 float fval = f - ival;
 sprintf( str, "%d.%d", ival, (int) 100*fval); // 100*fval to get 3 digits after the decimal
 Lcd_Print_String(str);	
}
//*************************************LCD FUNCTIONS END**********************************************************
void main()
{ 
//short int flag =0; //for creating delay
float x,y,z,negx,negy,r;//5 ANALOG INPUT PINS FOR 5 LDRs...r for magnitude of vector from sun
float A=0,B=0,C=0,D=0,E=0;  //5 angles with 5 axes resp. x,y,z,negx and negy
char a[]="A="; char b[]="B="; char c[]="C="; 
	char d[]="D="; char e[]="E="; 
//*****I/O Configuration****//
TRISD=0x00;
TRISB0=1;
//***End of I/O configuration**///

ADC_Initialize();
Lcd_Start();

while(1)
{
    //if(RB0==0)
	//{
    //if(flag>=1) //wait till flag reaches 50
//{
     x = (ADC_Read(0));
	y = (ADC_Read(1));
	z = (ADC_Read(2));
	negx = (ADC_Read(3));
	negy = (ADC_Read(4));
    // flag=0; 
//}
//flag++; //increment flag for each flash

r= sqrt((x+negx)*(x+negx) + (y+negy)*(y+negy) + z*z)+1;//calculate magnitude of vector.
 A = acos((x/r))*57.29 ;
 B = acos((y/r))*57.29 ;
 C = acos((z/r))*57.29 ;
 D = acos((negx/r))*57.29 ;
 E = acos((negy/r))*57.29 ;
//calculation part done
//now printing result on lcd*/
		Lcd_Clear();
        Lcd_Set_Cursor(1,1);
        Lcd_Print_String(a);	 Lcd_Print_Ang(A);
        Lcd_Set_Cursor(1,8);
        Lcd_Print_String(b);	Lcd_Print_Ang(B);
        Lcd_Set_Cursor(2,1);
        Lcd_Print_String(c);	Lcd_Print_Ang(C);
		Lcd_Set_Cursor(2,8);
        Lcd_Print_String(d);	Lcd_Print_Ang(D);
		__delay_ms(1500);
		Lcd_Clear();
        Lcd_Set_Cursor(1,1);
        Lcd_Print_String(e);	Lcd_Print_Ang(E);
		__delay_ms(1500);


 //} //if end
}//ehile end
}//main end