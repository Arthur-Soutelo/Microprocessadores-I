;Nome: Arthur Antonio Soutelo Araujo	&	Gabriel Rosado dos Santos Mendes
;Cart�o UFRGS: 00304292 	&	 00301564

;Exerc�cio 1:Desenvolva um c�digo em Assembly que implemente a subtra��o de dois n�meros de
;			 16 bits, salvando o resultado da subtra��o nos registradores R7 e R6, respectivamente.
;Laborat�rio 1 - Exerc�cio 1 - Letra B
;-------------------------------------------------------------------------------------
;Programa que subtrai dois numeros de 16 bits
	;O primeiro n�mero vai ser armazenado em R1 e R0
	;O segundo n�mero vai ser armazenado em R3 e R2
	;O resultado deve ser armazenado em R7 e R6

;		R1	R0
;	-	R3	R2
;	------------
;		R7	R6

;Testar com 1280 - 2790 = -1510
	;Primeiro devemos passar os valores para hexadecimal:
	;500 - AE6 = -5E6									<--------- VALORES EM HEXA
	;101 0000 0000 - 1010 1110 0110 = - 101 1110 0110	<--------- VALORES EM BIN	

;Inicializando os registradores com os valores de teste
;Primeiro n�mero:
MOV R0, #00h
MOV R1, #05h
;Segundo n�mero:
MOV R2, #0E6h
MOV R3, #0Ah

;Realiza��o da subtra��o
MOV A, R0
SUBB A, R2
MOV R6, A
MOV A, R1
SUBB A, R3
MOV R7, A

END