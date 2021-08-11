;Nome: Arthur Antonio Soutelo Araujo	&	Gabriel Rosado dos Santos Mendes
;Cart�o UFRGS: 00304292 	&	 00301564

;Exerc�cio 1:Desenvolva um c�digo em Assembly que implemente a subtra��o de dois n�meros de
;			 16 bits, salvando o resultado da subtra��o nos registradores R7 e R6, respectivamente.
;Laborat�rio 1 - Exerc�cio 1 - Letra A
;-------------------------------------------------------------------------------------
;Programa que subtrai dois numeros de 16 bits
	;O primeiro n�mero vai ser armazenado em R1 e R0
	;O segundo n�mero vai ser armazenado em R3 e R2
	;O resultado deve ser armazenado em R7 e R6

;		R1	R0
;	-	R3	R2
;	------------
;		R7	R6

;Testar com 1349 - 873 = 476
	;Primeiro devemos passar os valores para hexadecimal:
	;545 - 369 = 1DC	<--------- VALORES EM HEXA

;Inicializando os registradores com os valores de teste
;Primeiro n�mero:
MOV R0, #45h
MOV R1, #05h
;Segundo n�mero:
MOV R2, #69h
MOV R3, #03h

;Realiza��o da subtra��o
MOV A, R0
SUBB A, R2
MOV R6, A
MOV A, R1
SUBB A, R3
MOV R7, A

END