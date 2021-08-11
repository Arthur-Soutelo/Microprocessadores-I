;Nome: Arthur Antonio Soutelo Araujo	&	Gabriel Rosado dos Santos Mendes
;Cart�o UFRGS: 00304292 	&	 00301564

;Exerc�cio 2:Desenvolva um c�digo em Assembly que leia uma lista de 10 n�meros e informe no
;			 registrador R 1 qual o maior numero da lista e no registrador R0 qual o menor.
;Laborat�rio 1 - Exerc�cio 2
;-------------------------------------------------------------------------------------
; Aponta para inicio da lista
MOV DPTR, #LISTA
; Move para A �ndice da lista
MOV A, #0
; Le valor
MOVC A, @A+DPTR
;-------------------------------------------
; 				Meu c�digo
MOV R0, A	;Registrador R0 guarda o menor n�mero
MOV R1, A	;Registrador R1 guarda o maior n�mero

MOV R7, #10	;Tamanho do array
MOV R6, #0	;Inicializa o contador
STARTLOOP:
	CLR C
	INC R6	;Contador
	MOV A, R6
	SUBB A, R7
	JNC ENDLOOP	; Caso a flag do carry for 0, sai do loop

	MOV A, R6
	MOVC A, @A+DPTR

	CLR C	;Zera a flag do carry
	SUBB A, R0	; = A - R0
	JNC PULA1	; Caso a flag do carry for 0 (A > R0), pula para o endere�o PULA1

	; A < R0
	MOV A, R6
	MOVC A, @A+DPTR
	MOV R0, A

	;A > R0
	PULA1:
		MOV A, R6
		MOVC A, @A+DPTR
		CLR C

		SUBB A, R1	; = A - R1
		JC PULA2	; Caso a flag do carry for 1 (A < R1), pula para o endere�o PULA2
		
		;A > R1
		MOV A, R6
		MOVC A, @A+DPTR
		MOV R1, A
		
		;A < R1
		PULA2:	
	
	JMP STARTLOOP

;-------------------------------------------
	LISTA:
		DB 23, 8, 10, 68, 31, 17, 9, 36, 19, 37
;-------------------------------------------
ENDLOOP:
	END