TITLE	BALL
.MODEL	small
.STACK	1000H
PRINTA_OBJETO	MACRO	MATRIZ, COR, XI, YI, LARGURA, TOTAL
	PUSH 	CX
	PUSH	SI
	;ZERANDO VARIAVEIS, PARA NAO TER NEHUMA INTERFERENCIA
	MOV	X_INICIO,0
	MOV	Y_INICIO, 0
	MOV	TOTAL_M,0
	MOV	LARGURA_M,0
	XOR	SI,SI

	;INICIALIZANDO VARIAVEIS PARA CHAMAR PROCESIMENTO
	MOV	AL, COR
	MOV	X_INICIO, XI
	MOV	Y_INICIO, YI
	MOV	TOTAL_M, TOTAL
	MOV	LARGURA_M, LARGURA
	LEA	SI, MATRIZ

	;CHAMAR PROC 'DISPLAY'
	CALL	 DISPLAY_OBJ

	POP	SI
	POP 	CX

	ENDM
.DATA
MSG 	DB	0AH,0AH,0AH,0AH,0AH,0AH,0AH,0AH,0AH,0DH,'          ','Bem vindo ao Space Invaders$',0AH,0DH

MSG1	DB	0AH,0DH,'    ','Pressione Espaco para comecar o jogo',0AH,0DH,'$'

BLOCO11X11 		DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1
				DB 1,1,1,1,1,1,1,1,1,1,1

CORACAO	DB	0,0,0,0,0,0,0,0,0
	DB	0,1,1,1,0,1,1,1,0
	DB	1,1,1,1,1,1,1,1,1
	DB	1,1,1,1,1,1,1,1,1
	DB	0,1,1,1,1,1,1,1,0
	DB	0,0,1,1,1,1,1,0,0
	DB	0,0,0,0,1,0,0,0,0
	;PRINTA_OBJETO	CORACAO, 39, X, Y, 9, 63


SCORE	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	DB	0,1,1,1,1,0,0,1,1,1,0,0,1,1,0,0,1,1,1,0,0,1,1,1,1,1
	DB	1,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,0,0,1,0,1,0,0,0,0
	DB	0,1,1,1,0,0,1,0,0,0,0,1,0,0,1,0,1,1,1,0,0,1,1,1,1,0
	DB	0,0,0,0,1,0,1,0,0,0,0,1,0,0,1,0,1,0,0,1,0,1,0,0,0,0
	DB	1,1,1,1,0,0,0,1,1,1,0,0,1,1,0,0,1,0,0,1,0,1,1,1,1,1
	;PRINTA_OBJETO	SCORE, 15, X, Y, 26, 156

ET	DB	0,0,0,0,0,0,1,1,1,1,1,0,1,1,1,1,1,0
	DB	0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,0,0,0,0,1,1,0,0,1,1,1,1,1,0,0,1,1
	DB	0,0,0,0,0,1,1,0,0,1,1,1,1,1,0,0,1,1
	DB	0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0
	DB	0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,0,0,0
	DB	0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0
	DB	1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0
	DB	0,0,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0
	DB	0,0,1,1,0,0,1,1,0,0,0,1,1,0,0,1,1,0
	DB	0,0,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0
	DB	0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,0,0
	DB	0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0
	;PRINTA_OBJETO	ET, 06, X, Y, 18, 270



ALIEN	DB	0,0,1,0,0,0,0,0,1,0,0
	DB	0,0,0,1,0,0,0,1,0,0,0
	DB	0,0,1,1,1,1,1,1,1,0,0
	DB	0,1,1,0,1,1,1,0,1,1,0
	DB	1,1,1,1,1,1,1,1,1,1,1
	DB	1,0,1,1,1,1,1,1,1,0,1
	DB	1,0,1,0,0,0,0,0,1,0,1
	DB	0,0,0,1,1,0,1,1,0,0,0
	;PRINTA_OBJETO	ALIEN, 15, X , Y, 11, 88


MADIMBU	DB	0,0,0,0,0,0,0,1,0,0,0,0,0
	DB	0,0,0,0,0,0,1,0,0,0,0,0,0
	DB	0,0,0,1,1,1,1,1,1,1,0,0,0
	DB	0,0,1,1,1,1,1,1,1,1,1,0,0
	DB	0,1,1,1,1,1,1,1,1,1,1,1,0
	DB	0,1,1,0,0,1,1,1,0,0,1,1,0
	DB	0,1,1,0,0,1,1,1,0,0,1,1,0
	DB	0,1,1,1,1,1,1,1,1,1,1,1,0
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	1,1,1,1,0,0,0,0,0,1,1,1,1
	DB	1,1,1,1,0,0,0,0,0,1,1,1,1
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,1,1,1,1,1,0,1,1,1,1,1,0
	;PRINTA_OBJETO	MADIMBU, 63, X, Y, 13, 169


GERAL_LOGICO	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
VEL_X	DW	0
VEL_Y	DW	0
IX	DW	0
IY	DW	0
X	DW	0
Y	DW	0
;inicio de variaveis utilizadas pelo PRINTA_OBJETO; NAO MUDAR;;;;;;;;;;;;;;;;;;;
LARGURA_M	DW	0
TOTAL_M	DW	0
X_INICIO	DW	0
Y_INICIO	DW	0
LADO_X	DW	0
LADO_Y	DW	0
COUNT	DW	0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.CODE

MAIN	PROC
	CALL	SET_DISPLAY_MODE ;INICIALIZA MODO GRAFICO
	MOV 	AX,@DATA	;INICIALIZA DATA
	MOV 	DS,AX
;;;;;;;;;;;;;;;;;;INCIO MENU ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INICIOMENU:LEA 	DX,MSG		;Le mensagem de saudações
	MOV 	AH,9
	INT 	21h

	;pula linha

	;PRINTA_OBJETO	ALIEN_MENU, 15, 10, 30, 121, 10648
	LEA 	DX,MSG1 	;Le mensagem informando o usuario que precisa pressionar o espaço para começar o jogo
	MOV 	AH,9
	INT 	21h

	MOV 	AH,1		;Compara o caracter que o usuario digitou com espaço
	INT 	21h
	CMP 	AL, ' '
	JNE 	INICIOMENU	;Se o usuario digitou espaço pulo para INICIO_GAME

	CALL	SET_DISPLAY_MODE
	CALL	INICIO_GAME			;Se o usurario digitar algo diferente volta para o inicio
;;;;;;;;;;;;;;;;;;;FIM MENU;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



JOGO:





MAIN	ENDP
INICIO_GAME	PROC

	MOV 	AH,1
	INT 	21h
	CMP 	AL, 27
	JNE	NAO_SAI
	CALL	FIM

NAO_SAI:
	CALL	PRINTA_MATRIZ

	RET
INICIO_GAME	ENDP

FIM		PROC

;RENICIALIZA O GRAPHIC DO DOS________________________________
	MOV	AH,0	;SET MODEL
	MOV	AL,3H	;MODE 0bh, 320X200 many COLOR
	INT	10H
	MOV	AH,0BH
	MOV	BH,1
	MOV	BL,1
	INT	10H
	MOV	BH,3
	MOV	BL,0
	INT	10H
;______________________________________________________________

	MOV	AH, 4CH
	INT 	21H
FIM	ENDP



DISPLAY_OBJ		PROC
	MOV	LADO_X,0
	MOV	LADO_Y,0
	MOV	COUNT,0

INICIO:
	MOV	CX, X_INICIO
	ADD	CX, LADO_X
	INC	LADO_X
	MOV	DX, Y_INICIO
	ADD	DX, LADO_Y

	MOV	BL, [SI]

	CMP	BL, 0
	JE	PRINT0

	MOV	AH, 0CH
	INT	10H

PRINT0:	INC	SI
	INC	COUNT

	MOV	BX, LARGURA_M
	CMP	LADO_X, BX
	JL	CONTINUA

	MOV	LADO_X, 0
	INC	LADO_Y

CONTINUA:	MOV	BX, TOTAL_M
	CMP	COUNT, BX
	JL	INICIO

	RET

DISPLAY_OBJ	ENDP
SET_DISPLAY_MODE		PROC
	MOV	AH,0	;SET MODEL
	MOV	AL,13H	;MODE 0bh, 320X200 many COLOR
	INT	10H
	MOV	AH,0BH
	MOV	BH,1
	MOV	BL,1
	INT	10H
	MOV	BH,3
	MOV	BL,0
	INT	10H

	RET
SET_DISPLAY_MODE	ENDP

PRINTA_MATRIZ		PROC;MATRIZ PARA PRINTAR O QUE ESTIVER NA MATRIZ LOGICA
	PUSH	CX
	PUSH	DX
	MOV	X,0
	MOV	Y,0
	XOR	SI,SI
	LEA	SI,GERAL_LOGICO
RETORNA:
	MOV	CX,X
	MOV	DX,Y
	CMP	[SI], 1
	JNE	FOWARD1
	PRINTA_OBJETO	ALIEN, 15, CX, DX, 11, 88
FOWARD1:
	INC	SI
	ADD	X,20
	CMP	X,320
	JB	RETORNA
	MOV	X,0
	ADD	Y,20
	CMP	Y,200
	JB	RETORNA

	POP	CX
	POP	DX

	RET
PRINTA_MATRIZ	ENDP



END	MAIN
