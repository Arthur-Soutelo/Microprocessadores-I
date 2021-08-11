;Nome: Arthur Antonio Soutelo Araujo	&	Gabriel Rosado dos Santos Mendes
;Cartão UFRGS: 00304292 	&	 00301564

;Exercício 1:Desenvolva um código em Assembly que implemente a subtração de dois números de
;			 16 bits, salvando o resultado da subtração nos registradores R7 e R6, respectivamente.
;Laboratório 1 - Exercício 1 - Letra B
;-------------------------------------------------------------------------------------
;Programa que subtrai dois numeros de 16 bits
	;O primeiro número vai ser armazenado em R1 e R0
	;O segundo número vai ser armazenado em R3 e R2
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
;Primeiro número:
MOV R0, #00h
MOV R1, #05h
;Segundo número:
MOV R2, #0E6h
MOV R3, #0Ah

;Realização da subtração
MOV A, R0
SUBB A, R2
MOV R6, A
MOV A, R1
SUBB A, R3
MOV R7, A

END