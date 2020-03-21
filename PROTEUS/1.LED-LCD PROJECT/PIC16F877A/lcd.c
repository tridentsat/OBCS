#include<pic.h>
#include<stdlib.h>
#include<stdio.h>
#define rs RE0
#define rw RE1
#define en RE2
int i,u=0;
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

