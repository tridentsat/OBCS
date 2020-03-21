/*
 * File:   main.c
 * Author: Sourav Gupta
 *
 * Created on 11 April 2018, 17:57
 */

/*
 * Configuration Related settings. Specific for microcontroller unit.
 */
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
#define _XTAL_FREQ 20000000
/*
 * System Header files inclusions
 */

#include <xc.h>
#include <string.h>
#include "supporting c files/ds18b20.h"
#include "supporting c files/lcd.h"


/*
 * Ds18b20 related definition
 */

#define skip_rom 0xCC
#define	convert_temp 0x44 
#define	write_scratchpad 0x4E
#define	resolution_12bit 0x7F
#define read_scratchpad 0xBE

/*
 * User interface related definitions
 */

#define temp_gap  20

float pre_val=0, aft_val=0;

/*
 * Program flow related functions
 */

void sw_delayms(unsigned int d);


/* Main function / single Thread*/
void main(void) {
    TRISD = 0xFF;
    TRISA = 0x00;
    TRISB = 0x00;           
    //TRISDbits_t.TRISD6 = 1;
    unsigned short TempL, TempH;
	unsigned int t, t2;
	float difference1=0, difference2=0;        
    lcd_init();    
    while(1){
        float i=0;
/* This is for presence detection of temp-sensing probe*/		
		while(ow_reset()){
			lcd_com(0x80);
			lcd_puts ("Please Connect   ");
			lcd_com (0xC0);
			lcd_puts("Temp-Sense Probe");
		}
/*------------------------------------------------------*/        
		
        lcd_puts ("                ");
		ow_reset();		
		write_byte(write_scratchpad);
	    write_byte(0);
		write_byte(0);
		write_byte(resolution_12bit); // 12bit resolution
		ow_reset();
		write_byte(skip_rom); 
		write_byte(convert_temp); 
		
		while (read_byte()==0xff)
			__delay_ms(500); 
			
			ow_reset();
			
			write_byte(skip_rom);
			write_byte(read_scratchpad);
		
			TempL = read_byte();
			TempH = read_byte();
            
	/*This is for Negative temperature*/
            
	/*If result  (TempH [Bitwise and] 1000 0000) = not 0
     *then this condition get true.
	case1. -0.5 degree value = 1111 1111. [1111 1111 & 1000 0000 = 1000 0000 which is not 0.]
	case2. -55 degree value = 1111 1100. [1111 1100 & 1000 0000 = 1000 0000 which is not 0]
	0x80 = 1000 0000 	
	Test Case -10.125  output 1111 1111 0101 1110*/   
                        
		if((TempH & 0x80)!=0){    // If condition will execute as TempH = 1111 1111 & 1000 0000 = 1000 0000. 
			t=TempH;// Store tempH value in t = 1111 1111  .
	        t<<=8;//after bitwise left shift 8 times value in t will be 1111 1111 0000 0000.  
	        t=t|TempL;// t = 1111 1111 0000 0000 | 0101 1110 [ result t = 1111 1111 0101 1110] 
	        t=t-1;//t = t-1 in this case t = 1111 1111 0101 1101.
	        t=~t;// t = 0000 0000 1010 0010.
	        t>>=4;// t = 0000 0000 0000 1010.
			t=t*100;// t = 10 * 100 = 1000.
			t2=TempL; //Store tempL value = 0101 1110.
			t2=t2-1;// t2= 0101 1101
	        t2=~t2;//t2 = 1010 0010
	        t2=t2&0x0f;// t2 = 1010 0010 | 0000 1111 = 0000 0010
			t2=t2 * 6.25; // 0000 00010 = 2 x 6.25 = 12.50
			i=((unsigned int)t ) + (unsigned int)t2; //put both value in one variable 1000 + 12.5 = 1012.5
		
/*This if-else condition done because LCD would not refresh till temperature change -.20 or +.20 degree*/
			
			pre_val=aft_val;	 
            
			difference1 = pre_val - i; 
			difference2 = i - pre_val; 	
			
			if(difference1 > temp_gap || difference2 > temp_gap){
						aft_val = i;
						lcd_com (0x80);
						lcd_puts ("Circuit Digest");
						lcd_com (0xc0);
						lcd_puts("-");
						lcd_bcd (5,aft_val);
						lcd_data(223);
						lcd_puts("C    ");
					 						
					}
			
			else{
						lcd_com (0x80);
						lcd_puts ("Circuit Digest");
						lcd_com (0xc0);
						lcd_puts("-");
						lcd_bcd (5,pre_val);
						lcd_data(223);
						lcd_puts("C    ");
						
					
			}

			
		}
	/*This is for positive Temperature*/
	else {
			i=((unsigned int)TempH << 8 ) + (unsigned int)TempL; //put both value in one variable
			i = i * 6.25;   //calculations used from the table provided in the data sheet of ds18b20
			
/*This if-else condition done because LCD would not refresh till temperature change -.20 or +.20 degree*/
			pre_val=aft_val;	 
					 

			difference1 = pre_val - i; 
			difference2 = i - pre_val; 	
			
			if(difference1 > temp_gap || difference2 > temp_gap){
						aft_val = i;
						lcd_com (0x80);
						lcd_puts ("TEMPERATURE IN CELCIUS");
						lcd_com (0xc0);
						lcd_bcd (5,aft_val);
						lcd_data(223);
						lcd_puts("C    ");
											 						
					}		
			else{
						lcd_com (0x80);
						lcd_puts ("TEMPERATURE IN CELCIUS");
						lcd_com (0xc0);
						lcd_bcd (5,pre_val);
						lcd_data(223);
						lcd_puts("C    ");		
			}		
        
        }            
    }         
    return;
}

void sw_delayms(unsigned int d){
	int x, y;
	for(x=0;x<d;x++)
		for(y=0;y<=1275;y++);
}