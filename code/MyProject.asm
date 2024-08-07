
_main:

;MyProject.c,5 :: 		void main() {
;MyProject.c,6 :: 		trisb=0b00000001;
	MOVLW      1
	MOVWF      TRISB+0
;MyProject.c,7 :: 		trisa.B4=1;
	BSF        TRISA+0, 4
;MyProject.c,8 :: 		trisa.B0=0;
	BCF        TRISA+0, 0
;MyProject.c,9 :: 		trisc=0b00000000;
	CLRF       TRISC+0
;MyProject.c,10 :: 		trisd=0b00000000;
	CLRF       TRISD+0
;MyProject.c,11 :: 		gie_bit=1;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;MyProject.c,12 :: 		inte_bit=1;
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
;MyProject.c,13 :: 		intedg_bit=0;
	BCF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;MyProject.c,14 :: 		for(;;){
L_main0:
;MyProject.c,16 :: 		porta.B0=1;
	BSF        PORTA+0, 0
;MyProject.c,17 :: 		portb=0b01000010;
	MOVLW      66
	MOVWF      PORTB+0
;MyProject.c,18 :: 		for(counter1=1;counter1<=9;counter1++){
	MOVLW      1
	MOVWF      _counter1+0
L_main3:
	MOVF       _counter1+0, 0
	SUBLW      9
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;MyProject.c,19 :: 		portc=portd=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTD+0
	MOVF       PORTD+0, 0
	MOVWF      PORTC+0
;MyProject.c,20 :: 		delay_ms(1000); }
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,18 :: 		for(counter1=1;counter1<=9;counter1++){
	INCF       _counter1+0, 1
;MyProject.c,20 :: 		delay_ms(1000); }
	GOTO       L_main3
L_main4:
;MyProject.c,21 :: 		for(counter1=16;counter1<=21;counter1++){
	MOVLW      16
	MOVWF      _counter1+0
L_main7:
	MOVF       _counter1+0, 0
	SUBLW      21
	BTFSS      STATUS+0, 0
	GOTO       L_main8
;MyProject.c,22 :: 		if(counter1<=18){
	MOVF       _counter1+0, 0
	SUBLW      18
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;MyProject.c,23 :: 		portc=portd=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTD+0
	MOVF       PORTD+0, 0
	MOVWF      PORTC+0
;MyProject.c,24 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
L_main10:
;MyProject.c,25 :: 		if(counter1>18){
	MOVF       _counter1+0, 0
	SUBLW      18
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;MyProject.c,26 :: 		portb=0b00100010;
	MOVLW      34
	MOVWF      PORTB+0
;MyProject.c,27 :: 		portc=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTC+0
;MyProject.c,28 :: 		portd=counter2;
	MOVF       _counter2+0, 0
	MOVWF      PORTD+0
;MyProject.c,29 :: 		counter2++;
	INCF       _counter2+0, 1
;MyProject.c,30 :: 		delay_ms(1000); }
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
L_main12:
;MyProject.c,21 :: 		for(counter1=16;counter1<=21;counter1++){
	INCF       _counter1+0, 1
;MyProject.c,31 :: 		}
	GOTO       L_main7
L_main8:
;MyProject.c,32 :: 		counter1=counter2=1;
	MOVLW      1
	MOVWF      _counter2+0
	MOVLW      1
	MOVWF      _counter1+0
;MyProject.c,33 :: 		portb=0b00011000;
	MOVLW      24
	MOVWF      PORTB+0
;MyProject.c,34 :: 		for(counter1=1;counter1<=9;counter1++){
	MOVLW      1
	MOVWF      _counter1+0
L_main14:
	MOVF       _counter1+0, 0
	SUBLW      9
	BTFSS      STATUS+0, 0
	GOTO       L_main15
;MyProject.c,35 :: 		portc=portd=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTD+0
	MOVF       PORTD+0, 0
	MOVWF      PORTC+0
;MyProject.c,36 :: 		delay_ms(1000); }
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;MyProject.c,34 :: 		for(counter1=1;counter1<=9;counter1++){
	INCF       _counter1+0, 1
;MyProject.c,36 :: 		delay_ms(1000); }
	GOTO       L_main14
L_main15:
;MyProject.c,37 :: 		for(counter1=16;counter1<=25;counter1++){
	MOVLW      16
	MOVWF      _counter1+0
L_main18:
	MOVF       _counter1+0, 0
	SUBLW      25
	BTFSS      STATUS+0, 0
	GOTO       L_main19
;MyProject.c,38 :: 		portc=portd=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTD+0
	MOVF       PORTD+0, 0
	MOVWF      PORTC+0
;MyProject.c,39 :: 		delay_ms(1000); }
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;MyProject.c,37 :: 		for(counter1=16;counter1<=25;counter1++){
	INCF       _counter1+0, 1
;MyProject.c,39 :: 		delay_ms(1000); }
	GOTO       L_main18
L_main19:
;MyProject.c,40 :: 		for(counter1=32;counter1<=35;counter1++){
	MOVLW      32
	MOVWF      _counter1+0
L_main22:
	MOVF       _counter1+0, 0
	SUBLW      35
	BTFSS      STATUS+0, 0
	GOTO       L_main23
;MyProject.c,41 :: 		if(counter1==32){
	MOVF       _counter1+0, 0
	XORLW      32
	BTFSS      STATUS+0, 2
	GOTO       L_main25
;MyProject.c,42 :: 		portd=portc=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTC+0
	MOVF       PORTC+0, 0
	MOVWF      PORTD+0
;MyProject.c,43 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	NOP
	NOP
	GOTO       L_main27
L_main25:
;MyProject.c,45 :: 		portb=0b00010100;
	MOVLW      20
	MOVWF      PORTB+0
;MyProject.c,46 :: 		portd=counter1;
	MOVF       _counter1+0, 0
	MOVWF      PORTD+0
;MyProject.c,47 :: 		portc=counter2;
	MOVF       _counter2+0, 0
	MOVWF      PORTC+0
;MyProject.c,48 :: 		counter2++;
	INCF       _counter2+0, 1
;MyProject.c,49 :: 		delay_ms(1000); }
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
	NOP
L_main27:
;MyProject.c,40 :: 		for(counter1=32;counter1<=35;counter1++){
	INCF       _counter1+0, 1
;MyProject.c,50 :: 		}
	GOTO       L_main22
L_main23:
;MyProject.c,54 :: 		} }
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,56 :: 		void interrupt(){
;MyProject.c,57 :: 		if(intf_bit==1){
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt29
;MyProject.c,58 :: 		porta.B0=0;
	BCF        PORTA+0, 0
;MyProject.c,59 :: 		if(porta.B4==1&&flag1==0){
	BTFSS      PORTA+0, 4
	GOTO       L_interrupt32
	MOVF       _flag1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt32
L__interrupt46:
;MyProject.c,60 :: 		portb=0b00010100;
	MOVLW      20
	MOVWF      PORTB+0
;MyProject.c,61 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_interrupt33:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt33
	DECFSZ     R12+0, 1
	GOTO       L_interrupt33
	DECFSZ     R11+0, 1
	GOTO       L_interrupt33
	NOP
;MyProject.c,62 :: 		portb=0b01000010;
	MOVLW      66
	MOVWF      PORTB+0
;MyProject.c,63 :: 		flag1=1;
	MOVLW      1
	MOVWF      _flag1+0
;MyProject.c,64 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt34:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt34
	DECFSZ     R12+0, 1
	GOTO       L_interrupt34
	DECFSZ     R11+0, 1
	GOTO       L_interrupt34
	NOP
	NOP
L_interrupt32:
;MyProject.c,65 :: 		if(flag1==1){
	MOVF       _flag1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt35
;MyProject.c,66 :: 		flag2=0;
	CLRF       _flag2+0
;MyProject.c,67 :: 		portb=0b01000010;
	MOVLW      66
	MOVWF      PORTB+0
;MyProject.c,68 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt36:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt36
	DECFSZ     R12+0, 1
	GOTO       L_interrupt36
	DECFSZ     R11+0, 1
	GOTO       L_interrupt36
	NOP
	NOP
L_interrupt35:
;MyProject.c,69 :: 		if(porta.B4==0&&flag2==0){
	BTFSC      PORTA+0, 4
	GOTO       L_interrupt39
	MOVF       _flag2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt39
L__interrupt45:
;MyProject.c,70 :: 		portb=0b00100010;
	MOVLW      34
	MOVWF      PORTB+0
;MyProject.c,71 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_interrupt40:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt40
	DECFSZ     R12+0, 1
	GOTO       L_interrupt40
	DECFSZ     R11+0, 1
	GOTO       L_interrupt40
	NOP
;MyProject.c,72 :: 		portb=0b00011000;
	MOVLW      24
	MOVWF      PORTB+0
;MyProject.c,73 :: 		flag2=1;
	MOVLW      1
	MOVWF      _flag2+0
;MyProject.c,74 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt41:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt41
	DECFSZ     R12+0, 1
	GOTO       L_interrupt41
	DECFSZ     R11+0, 1
	GOTO       L_interrupt41
	NOP
	NOP
L_interrupt39:
;MyProject.c,75 :: 		if(flag2==1){
	MOVF       _flag2+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt42
;MyProject.c,76 :: 		flag1=0;
	CLRF       _flag1+0
;MyProject.c,77 :: 		portb=0b00011000;
	MOVLW      24
	MOVWF      PORTB+0
;MyProject.c,78 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt43:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt43
	DECFSZ     R12+0, 1
	GOTO       L_interrupt43
	DECFSZ     R11+0, 1
	GOTO       L_interrupt43
	NOP
	NOP
L_interrupt42:
;MyProject.c,79 :: 		if(portb.B0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt44
;MyProject.c,80 :: 		intf_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;MyProject.c,81 :: 		porta.B0=1;}
	BSF        PORTA+0, 0
L_interrupt44:
;MyProject.c,87 :: 		} }
L_interrupt29:
L_end_interrupt:
L__interrupt49:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
