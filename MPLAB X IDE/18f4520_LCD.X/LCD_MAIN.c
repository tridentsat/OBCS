                                                                     
//PROGRAM FOR LCD DISPLAY for 18f4520 
//PD USED FOR DATA PINS
#include<pic18f4520.h>

#pragma config OSC=HS
#pragma config PWRT=OFF
#pragma config WDT=OFF
#pragma config DEBUG=OFF, LVP=OFF 

void lcdcmd(unsigned char value);
void lcddata(unsigned char value);
void msdelay(unsigned int itime);

#define ldata PORTD
#define rs PORTEbits.RE0
#define rw PORTEbits.RE1
#define en PORTEbits.RE2

void main()
{
TRISD = 0x00;
ADCON1=0X0A;
TRISE=0X00;

//en = 0;


msdelay(50); 
lcdcmd(0x38);
msdelay(50);
lcdcmd(0x0E);
msdelay(15);
lcdcmd(0x01);
msdelay(15);
lcdcmd(0x06);
msdelay(15);
lcdcmd(0x81);
msdelay(50);
lcddata('L');
msdelay(50);
lcddata('O');
msdelay(50);
lcddata('G');
msdelay(50);
lcddata('S');
msdelay(50);
lcddata('U');
msdelay(50);
lcddata('N');
msdelay(50);
lcddata(0X14);
lcddata('S');
msdelay(50);
lcddata('Y');
msdelay(50);
lcddata('S');
msdelay(50);
lcddata('T');
msdelay(50);
lcddata('E');
msdelay(50);
lcddata('M');
msdelay(50);
lcddata('S');
msdelay(50);
lcdcmd(0xC1);
lcddata('P');
msdelay(50);
lcddata('I');
msdelay(50);
lcddata('C');
msdelay(50);
lcddata(0x14);
msdelay(50);
lcddata('1');
msdelay(50);
lcddata('8');
msdelay(50);
lcddata('F');
msdelay(15);
lcddata('4');
msdelay(50);
lcddata('5');
msdelay(50);
lcddata('2');
msdelay(50);
lcddata('0');
msdelay(50);

for(;;);
}


 void lcdcmd (unsigned char value)
{

ldata=value;
rs=0;
rw=0;
en=1;

msdelay(1);
en=0;



}
 void lcddata (unsigned char value)
{

ldata=value;
rs=1;
rw=0;
en=1;

msdelay(1);
en=0;


}
 void msdelay (unsigned int itime)
{
int i,j;
for(i=0;i<itime;i++)
for(j=0;j<135;j++);

}





