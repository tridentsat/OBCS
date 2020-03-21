/* 
 * File:   lcd.c
 * Author: Upendra
 *
 * Created on 23 May, 2019, 7:02 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include<pic.h>
#include <xc.h>
#define _XTAL_FREQ 4000000



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


