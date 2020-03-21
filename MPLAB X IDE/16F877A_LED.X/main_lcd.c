/* 
 * File:   lcd.c
 * Author: Upendra
 *
 * Created on 23 May, 2019, 7:02 PM
 */
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF        // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#include <stdio.h>
#include <stdlib.h>
#include<pic.h>
#include <xc.h>

#define rs RE0
#define rw RE1
#define en RE2
int i,u=0;

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
	
void lcd_command(unsigned char a)
{
    PORTB =a;
    rs=0;
    rw=0;
    en=1;
    for(i=0;i<100;i++)
        en=0;
}

void lcd_data(unsigned char b)
{
    PORTB =b;
    rs=1;
    rw=0;
    en=1;
    for(i=0;i<100;i++)
        en=0;
}
int LCD()
{   
    int i;
    char b[]="BLINK 5 TIMES.";
    char c[]="DONE!!!";
	TRISB=0X00;
    ADCON1=0X07;
    TRISE=0X00;
    lcd_command(0X38);
    lcd_command(0X80);
    lcd_command(0X0E);
    lcd_command(0X01);
	
	if(u==0)
	{
   for(i=0;b[i]!='\0';i++)
	{lcd_data(b[i]);}
	u=1;
	}
	else
	{
		for(i=0;c[i]!='\0';i++)
	{lcd_data(c[i]);}
	u=0;
	}
    return 0;
}


int main()
{   
	LCD();
	__delay_ms(2000);
	led();
	LCD();
	__delay_ms(2000);
    return 0;
}
/*
 * 
 */



