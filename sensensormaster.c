/*
 * File:   sensensormaster.c
 * Author: BRIJESH GUJAR
 *
 * Created on 2 February, 2020, 2:53 PM
 */


#include "spi.h"
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
    //SSPBUF=0XFF;
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

int spiRead() //REad the received data
{
    spiReceiveWait();        // wait until the all bits receive
    return(SSPBUF); // read the received data from the buffer
}

int spiReadFloat()
{
    int integral,fractional;
    float result;
    
    integral=spiRead();
    UART_send_string("Integral part read");
    UART_send_char(10);
    UART_send_char(13);
//    fractional=spiRead();
//  UART_send_string("Fractional part read");UART_send_char(10);
//    UART_send_char(13);
//    result=(float)(integral+(fractional/1000));
//    UART_send_string("float calculated");UART_send_char(10);
//    UART_send_char(13);
    return integral;
}

void main()
{
    
    Initialize_UART();
    UART_send_string("Test");
    int a=0xCC;
   TRISD = 0x00;                 //PORTD as output
   PORTD = 0x00;                 //All LEDs OFF
   TRISB7 = 0;
   RB7 = 1;
   float A,B,C,D,E;  //5 angles with 5 axes resp. x,y,z,negx and negy
   float x,y,z,negx,negy,r;
   
   spiInit(SPI_MASTER_OSC_DIV4, SPI_DATA_SAMPLE_MIDDLE, SPI_CLOCK_IDLE_LOW, SPI_IDLE_2_ACTIVE);
   
   while(1)
   {
       RB7 = 0;       //Slave Select
       __delay_ms(100);
       
//       spiWrite(a);
    UART_send_string("Integral part read");
       int temp;
       temp=spiRead();
       UART_send_string("Integral part read");
       if(temp==10)
           RD0=1;
       else
          RD0=0;
//       A= spiRead();
//       x= spiRead();
//       B= spiRead();
//       y= spiRead();
//       C= spiRead();
//       z= spiRead();
//       D= spiRead();
//       negx= spiRead();
//       E= spiRead();
//       negy= spiRead();
        
       __delay_ms(1);
       RB7 = 1;       //Slave Deselect 
       
       __delay_ms(100);
   }
}

