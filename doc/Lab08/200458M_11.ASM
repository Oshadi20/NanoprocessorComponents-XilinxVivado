Start:
	MOV	AL,5	; Copy a 5 into the AL register.
	MOV	BL,1	; Copy a 1 into the BL register.
	CALL	30	; Call the procedure at address [30]

	MOV	AL,8A	; 1000 1010
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,FF	; 1111 1111
	OUT	02	; Send the data in AL to Port 02
	ORG	30	; Generate machine code from address [30]		
Rep:
	MUL	BL,AL	; Multiply AL and BL, store the result in BL.
	DEC	AL	; Subtract one from AL.
	JNZ	Rep	; Jump back to Rep if AL was not Zero.

	RET		; Return from the procedure.
	END		; End of the program.