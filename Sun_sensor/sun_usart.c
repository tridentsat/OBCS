/* 
 * File:   sun_usart.c
 * Author: Upendra
 *
 * Created on 6 August, 2019, 2:37 PM
 */
// CONFIG
#pragma config FOSC = HS       // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF       // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
// End of configuration
#include <xc.h>
#include <math.h>
#define _XTAL_FREQ 20000000
#define Baud_rate 9600
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
void Initialize_UART(void)
{
   
    TRISC6 = 0; // TX Pin set as output
    TRISC7 = 1; // RX Pin set as input
    //________I/O pins set __________//
    
    
   
    SPBRG = ((_XTAL_FREQ/16)/Baud_rate) - 1;
    BRGH  = 1;  // for high baud_rate
    //_________End of baud_rate setting_________//
    
    
    SYNC  = 0;    // Asynchronous
    SPEN  = 1;    // Enable serial port pins
    //_____Asynchronous serial port enabled_______//

    
    TXEN  = 1;    // enable transmission
    CREN  = 1;    // enable reception
    //__UART module up and ready for transmission and reception__//
    
    //**Select 8-bit mode**//  
    TX9   = 0;    // 8-bit reception selected
    RX9   = 0;    // 8-bit reception mode selected
       
}
//________UART module Initialized__________//

//**Function to send one byte of date to UART**//
void UART_send_char(char bt)  
{
    while(!TXIF);  // hold the program till TX buffer is free
    TXREG = bt; //Load the transmitter buffer with the received value
}
//**Function to get one byte of date from UART**//
/*char UART_get_char()   
{
    if(OERR) // check for Error 
    {
        CREN = 0; //If error -> Reset 
        CREN = 1; //If error -> Reset 
    }
    
    while(!RCIF);  // hold the program till RX buffer is free
    
    return RCREG; //receive the value and send it to main function
}*/
//_____________End of function________________//

 

//**Function to convert string to byte**//
void UART_send_string(char* st_pt)
{
    while(*st_pt) //if there is a char
        UART_send_char(*st_pt++); //process it as a byte data
}
void UART_send_float( float bt)  
{
	int ival=(int)bt;
	float f=bt-ival;
	int fval=f*100;
	int ival1=ival%10;
	ival=ival/10;
	int fval1=fval%10;
	fval=fval/10;
    UART_send_char(48+ival);
	UART_send_char(48+ival1);
	UART_send_char(46);
	UART_send_char(48+fval); 
	UART_send_char(48+fval1); 
}
void main()
{ 
    short int flag;
float x,y,z,negx,negy,r;//5 ANALOG INPUT PINS FOR 5 LDRs...r for magnitude of vector from sun
float A,B,C,D,E;  //5 angles with 5 axes resp. x,y,z,negx and negy

TRISB=0X00;
TRISB0=1;

ADC_Initialize();
Initialize_UART();

UART_send_string("UART Module Initialized and active"); 
for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 
UART_send_string("SUN SENSOR WORKING..."); 
for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 
while(1)
{
    //if(RB0==0)
	//{
    if(flag>=3)
    {  ADC_Initialize();
     x = (ADC_Read(0));
	y = (ADC_Read(1));
	z = (ADC_Read(2));
	negx = (ADC_Read(4));
	negy = (ADC_Read(5));
     flag=0;}
    flag++;
r= sqrt((x+negx)*(x+negx) + (y+negy)*(y+negy) + z*z);//calculate magnitude of vector.
 A = acos((x/r))*57.29 ;
 B = acos((y/r))*57.29 ;
 C = acos((z/r))*57.29 ;
 D = acos((negx/r))*57.29 ;
 E = acos((negy/r))*57.29 ;
//calculation part done
//now printing result on pc using usart*/
//AASCI VALUES OF DIGITS 0-9 ARE 48-57 ...AND FOR DECIMAL POINT 46 
 

UART_send_string(" X AXIS: "); 
    UART_send_float(A);UART_send_float(x);	for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 	
UART_send_string(" Y AXIS: "); 
    UART_send_float(B);UART_send_float(y);	for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 
    UART_send_string(" Z AXIS: "); 
    UART_send_float(C);UART_send_float(z);	for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 	
UART_send_string(" NEG X AXIS: "); 
    UART_send_float(D);UART_send_float(negx);	for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 	
UART_send_string(" NEG Y AXIS:"); 
    UART_send_float(E);UART_send_float(negy);	for(int i=0;i<10;i++)
UART_send_char(9);
UART_send_string(" "); 
	__delay_ms(1000);
 
 //} //if end
}//ehile end
}//main end


