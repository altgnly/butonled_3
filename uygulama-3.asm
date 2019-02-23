	__CONFIG H'3F31'
	LIST P=16F877A
	#INCLUDE <P16F877A.INC>
	ORG 0X00
	GOTO ANA_METOT

ANA_METOT
	BANKSEL TRISC
	MOVLW 0XFF
	MOVWF TRISC
	MOVLW 0X00
	MOVWF TRISD
	BANKSEL PORTC
	BSF PORTC,0
	BSF PORTC,1

	BCF PORTD,0
	BCF PORTD,1

KONTROL
	BTFSC PORTC,0
	GOTO LED_D0
	BTFSC PORTC,1
	GOTO LED_D1
	GOTO LED_SONDUR
	GOTO KONTROL

LED_D0
	BSF PORTD,0
	GOTO KONTROL

LED_D1
	BSF PORTD,1
	GOTO KONTROL

LED_SONDUR
	BCF PORTD,0
	BCF PORTD,1
	GOTO KONTROL

END