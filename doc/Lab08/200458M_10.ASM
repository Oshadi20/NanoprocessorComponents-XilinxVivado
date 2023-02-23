Start:
	MOV	AL,DC	; 1101 1100
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,FF	; 1111 1111
	OUT	02	; Send the data in AL to Port 02
	
	END
; ======================================================