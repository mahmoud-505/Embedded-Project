#line 1 "C:/Users/Mahmoud/Desktop/lab/code/MyProject.c"
char counter1=1;
char counter2=1;
char flag1=0;
char flag2=0;
void main() {
 trisb=0b00000001;
 trisa.B4=1;
 trisa.B0=0;
 trisc=0b00000000;
 trisd=0b00000000;
 gie_bit=1;
 inte_bit=1;
 intedg_bit=0;
 for(;;){

 porta.B0=1;
 portb=0b01000010;
 for(counter1=1;counter1<=9;counter1++){
 portc=portd=counter1;
 delay_ms(1000); }
 for(counter1=16;counter1<=21;counter1++){
 if(counter1<=18){
 portc=portd=counter1;
 delay_ms(1000);}
 if(counter1>18){
 portb=0b00100010;
 portc=counter1;
 portd=counter2;
 counter2++;
 delay_ms(1000); }
 }
 counter1=counter2=1;
 portb=0b00011000;
 for(counter1=1;counter1<=9;counter1++){
 portc=portd=counter1;
 delay_ms(1000); }
 for(counter1=16;counter1<=25;counter1++){
 portc=portd=counter1;
 delay_ms(1000); }
 for(counter1=32;counter1<=35;counter1++){
 if(counter1==32){
 portd=portc=counter1;
 delay_ms(1000);}
 else{
 portb=0b00010100;
 portd=counter1;
 portc=counter2;
 counter2++;
 delay_ms(1000); }
 }



 } }

 void interrupt(){
 if(intf_bit==1){
 porta.B0=0;
 if(porta.B4==1&&flag1==0){
 portb=0b00010100;
 delay_ms(3000);
 portb=0b01000010;
 flag1=1;
 delay_ms(1000);}
 if(flag1==1){
 flag2=0;
 portb=0b01000010;
 delay_ms(1000);}
 if(porta.B4==0&&flag2==0){
 portb=0b00100010;
 delay_ms(3000);
 portb=0b00011000;
 flag2=1;
 delay_ms(1000);}
 if(flag2==1){
 flag1=0;
 portb=0b00011000;
 delay_ms(1000);}
 if(portb.B0==1){
 intf_bit=0;
 porta.B0=1;}





 } }
