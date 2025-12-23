MONITOR		EQU		00B1H
PRTBYT		EQU		05F3H
GETL		EQU		06A4H
MSGPR		EQU		0889H
PRNT		EQU		08C6H
LETLN		EQU		0A2EH
LBUF		EQU		10ABH
FSIZE		EQU		1152H
SADRS		EQU		1154H
MLDAT		EQU		0F80CH
DIRLIST		EQU		0F9AFH
MLHED2		EQU		0FD5DH
CMPSTR		EQU		0FDEEH
CMD1		EQU		0FE02H

EMM		EQU		1			;指定したEMM番号用のEMMLOADを作成

#if emm == 2						;EMM I/Oポート設定
	EMM1		EQU		0A8H
#elif emm == 3
	EMM1		EQU		0ACH
#else
	EMM1		EQU		0A4H
#endif



		ORG	12A0H

START:
		LD	DE,MSG3				;「FNAME:」を表示する
		CALL	MSGPR
		LD	DE,LBUF				;DOSファイル名を入力
		CALL	GETL
		LD	A,(LBUF)
		CP	0BH				;BREAKキーが押されたらキャンセル
		JP	Z,MONITOR
		LD	DE,LBUF+6			;DOSファイル名をCHECK
		LD	A,(DE)
ST1:		CP	0DH				;入力なしならDefaultの「PIO3034_1」～「PIO3034_3」を採用
		JR	Z,ST0
		CP	' '				;SPACEは読み飛ばし
		JR	NZ,ST2
		INC	DE
		JR	ST1
ST2:		CP	'*'				;*が入力されたら「*FDL」処理へ
		JR	Z,ST3
		LD	(ML0+1),DE			;DOSファイル名が入力されていたらそちらを採用
		LD	(ML1+1),DE
		JR	ST0

;**** FDL処理 ****
ST3:
;**** HL、DE、BCレジスタを保存 ****
		PUSH	HL
		PUSH	DE
		PUSH	BC
		INC	DE
		LD	B,03H
;**** FDLコマンド ****
		LD	HL,CMD1				;「*FDL」と入力されているかチェック
		CALL	CMPSTR
		JR	Z,MLHCMD2
		POP	BC
		POP	DE
		POP	HL
;**** DOSファイル名入力へ復帰 ****
		JR	START				;そうでなければ「*FDL」処理を中止

MLHCMD2:
		INC	DE
		INC	DE
		INC	DE
		LD	HL,MSG3				;行頭に'FNAME:'を付けることでカーソルを移動させリターンで実行できるように
		LD	BC,MSG3END-MSG3
;**** FDLコマンド呼び出し ****
		CALL	DIRLIST				;*FDLの後に入力された文字列から始まるファイル名を一覧表示
		AND	A				;00以外ならERROR
		JR	NZ,SERR
		POP	BC
		POP	DE
		POP	HL
;**** DOSファイル名入力へ復帰 ****
		JP	START

;******* アプリケーション内SD-CARD操作処理用ERROR処理 **************
SERR:
		CP	0F0H
		JR	NZ,SERR3
		LD	DE,MSG_F0
		JR	SERRMSG
		
SERR3:	CP		0F1H
		JR	NZ,SERR99
		LD	DE,MSG_F1
		JR	SERRMSG
		
SERR99:	CALL	PRTBYT
		LD	DE,MSG99
		
SERRMSG:
		CALL	MSGPR
		CALL	LETLN
		POP	BC
		POP	DE
		POP	HL
;**** DOSファイル名入力へ復帰 ****
		JR	START

;********************************** EMMLOAD処理本体 ************************************
ST0:		CALL	LETLN
ML1:		LD	DE,NAME				;DOSファイル名表示
		CALL	MSGPR
		LD	DE,MSG0				;' LOAD START!'表示
		CALL	MSGPR

		XOR	A				;EMMアドレスリセット
		OUT	(EMM1),A
		OUT	(EMM1+1),A
		OUT	(EMM1+2),A

		CALL	MLHED				;DOSファイル名をArduinoに送信してファイルオープン
		JP	C,MONITOR			;DOSファイル名のファイルが存在しない等のエラーがあれば中止
		
		LD	HL,8000H			;IFBにファイル長(8000H)をセット
		LD	(FSIZE),HL
		LD	HL,BUFF
		LD	(SADRS),HL			;IFBにメインメモリ格納先頭アドレス(BUFF)をセット
		LD	B,10H				;SDからのLOADを8000H(32KB)を16回繰り返し
		LD	C,30H				;ブロック名として0～Fを便宜的に表示
		
LOP2:		PUSH	BC
		PUSH	HL
		PUSH	DE
		CALL	LETLN
		LD	A,C				;ブロック名としてA～Fを表示するための処理
		CP	3AH
		JR	C,ALPHA
		ADD	A,07H
ALPHA:		CALL	PRNT
		LD	DE,MSG2				;' BLOCK LOADING'を表示
		CALL	MSGPR
		POP	DE
		POP	HL

		CALL	MLDAT				;Arduinoから1ブロックを読み込み
		
		LD	HL,BUFF
		LD	DE,8000H
LOP1:		
		LD	A,(HL)
		OUT	(EMM1+3),A			;BUFFから8000H(32KB)を1Byteずつ読み込み、EMMへ書き込み
		INC	HL
		DEC	DE
		LD	A,E
		OR	D
		JR	NZ,LOP1				;32KB分ループ

		POP	BC
		INC	C
		DJNZ	LOP2				;16回ループ
		
		CALL	LETLN
		LD	DE,MSG1				;'EMMx LOAD END'を表示
		CALL	MSGPR
		JP	MONITOR				;終了

;************************ セットされたDOSファイル名でファイルオープンするためのMLHED処理 **************
MLHED:		PUSH	DE
		PUSH	BC
		PUSH	HL
ML0:		LD	DE,NAME
		JP	MLHED2

NAME:

#if emm == 2
		DB	'PIO3034_2'
#elif emm == 3
		DB	'PIO3034_3'
#else
		DB	'PIO3034_1'
#endif
		DB	0DH
NAME_END:

MSG0:		DB	' LOAD START!'
		DB	0DH

MSG1:
#if emm == 2
		DB	'EMM2 LOAD END'
#elif emm == 3
		DB	'EMM3 LOAD END'
#else
		DB	'EMM1 LOAD END'
#endif
		DB	0DH

MSG2:		DB	' BLOCK LOADING'
		DB	0DH
		
MSG3:		DB	'FNAME:'
MSG3END:
		DB	0DH

MSG_F0:
		DB	'SD-CARD INITIALIZE ERROR'
		DB	0DH
		
MSG_F1:
		DB	'NOT FIND FILE'
		DB	0DH
		
MSG99:
		DB	' ERROR'
		DB	0DH
		
BUFF:
		DS	8000H
		END

