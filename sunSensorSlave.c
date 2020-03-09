/*
 * File:   sunSensorSlave.c
 * Author: BRIJESH GUJAR
 *
 * Created on 1 February, 2020, 12:19 PM
 */


#include <xc.h>
#include"spi.h"



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

//**Function to convert string to byte**//
void UART_send_string(char* st_pt)
{
    while(*st_pt) //if there is a char
        UART_send_char(*st_pt++); //process it as a byte data
}
void spiInit(Spi_Type sType, Spi_Data_Sample sDataSample, Spi_Clock_Idle sClockIdle, Spi_Transmit_Edge sTransmitEdge)
{
    
    TRISC5 = 0;
    if(sType & 0b00000100) //If Slave Mode
    {
        SSPSTAT = sTransmitEdge;
        TRISC3 = 1;
    }
    else              //If Master Mode
    {
        SSPSTAT = sDataSample | sTransmitEdge;
        TRISC3 = 0;
    }
    
    SSPCON = sType | sClockIdle;
}

static void spiReceiveWait()
{
    while ( !SSPSTATbits.BF ); // Wait for Data Transmit/Receipt complete
}

void spiWrite(char dat)  //Write data to SPI bus
{
    SSPBUF = dat;
}

unsigned spiDataReady() //Check whether the data is ready to read
{
    if(SSPSTATbits.BF)
        return 1;
    else
        return 0;
}

//char spiRead() //REad the received data
//{
//    spiReceiveWait();        // wait until the all bits receive
//    return(SSPBUF); // read the received data from the buffer
//}

void spi_sendint(unsigned int a)
{
    SSPBUF=a;
}

void SPI_sendfloat(float bt)
{
    int i;
    i=(int)bt;
    bt=bt-i;
    
    spi_sendint(i);
    UART_send_string("Integral part sent");
    UART_send_char(10);
    UART_send_char(13);
   // spi_sendint(bt*1000);

}


void main()
{ 
   
//short int flag =0; //for creating delay
float x,y,z,negx,negy,r;//5 ANALOG INPUT PINS FOR 5 LDRs...r for magnitude of vector from sun
float A,B,C,D,E;  //5 angles with 5 axes resp. x,y,z,negx and negy
int a=0b01010101;
TRISB=0X00;
TRISB0=1;

ADC_Initialize();

spiInit(SPI_SLAVE_SS_EN, SPI_DATA_SAMPLE_END, SPI_CLOCK_IDLE_LOW, SPI_IDLE_2_ACTIVE);
while(1)
{
    

	ADC_Initialize();
     x = (ADC_Read(0));
	y = (ADC_Read(1));
	z = (ADC_Read(2));
	negx = (ADC_Read(3));
	negy = (ADC_Read(4));


r= sqrt((x+negx)*(x+negx) + (y+negy)*(y+negy) + z*z)+1;//calculate magnitude of vector.
 A = acos((x/r))*57.29 ;
 B = acos((y/r))*57.29 ;
 C = acos((z/r))*57.29 ;
 D = acos((negx/r))*57.29 ;
 E = acos((negy/r))*57.29 ;//calculation part done
 
 //SPI_sendfloat(12.255);
 UART_send_string("Integral part sent");
 spi_sendint(10);
 UART_send_string("Integral part sent");
 __delay_ms(2000);
//now printing result on pc using usart*/
//AASCI VALUES OF DIGITS 0-9 ARE 48-57 ...AND FOR DECIMAL POINT 46 
//UART_send_string(" X AXIS: ");
 
    //spi_sendFloat(A);
   // __delay_ms(100);
    //spiWrite(0b11111111);
//    UART_send_char(13);
      //spi_sendFloat(x);
//    UART_send_char(13);
//    UART_send_string(" Y AXIS: "); 
    //spi_sendFloat(B);
//    UART_send_char(13);
    //spi_sendFloat(y);
//    UART_send_char(13);
//    UART_send_string(" Z AXIS: "); 
    //spi_sendFloat(C);
//    UART_send_char(13);
    //spi_sendFloat(negx);
//    UART_send_char(13);
//    UART_send_string(" NEG X AXIS: "); 
   //spi_sendFloat(D);
//    UART_send_char(13);
    //spi_sendFloat(negy);
//    UART_send_char(13);
//    UART_send_string(" NEG Y AXIS:"); 
    //spi_sendFloat(E);
//    UART_send_char(13);	
    //spi_sendFloat(z);	
//    UART_send_char(13);
//	__delay_ms(1000);
//    UART_send_char(13);
//    UART_send_char(13);
 //} //if end
}//while end
}//main end

