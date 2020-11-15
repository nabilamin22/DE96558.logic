#include<p18F4550.inc>
			org 0x00
			goto start
			org 0x08
			retfie
			org 0x18
			retfie
		
subr_cmd	CLRF	PORTD, A
			MOVLW	B'00101010'
			XORWF	PORTD
			INCF	PORTD, F, A
			RETURN
		
start	CLRF	TRISD, A
		CALL	subr_cmd
		
		NOP
		END
