MONITOR		EQU		00B1H
PRTBYT		EQU		05F3H
GETL		EQU		06A4H
GETKEY		EQU		0832H
MSGPR		EQU		0889H
PRNT		EQU		08C6H
LETLN		EQU		0A2EH
LBUF		EQU		10ABH
IBUFE		EQU		1140H
FNAME		EQU		1141H
FSIZE		EQU		1152H
SADRS		EQU		1154H
MSHED		EQU		0F803H
MSDAT		EQU		0F806H
MLDAT		EQU		0F80CH
DIRLIST		EQU		0F9AFH
MLHED2		EQU		0FD5DH
CMPSTR		EQU		0FDEEH
CMD1		EQU		0FE02H

EMM		EQU		0A4H



		ORG	12A0H

		LD	DE,TITLE			;'******** EMMLOAD,EMMSAVE MENU ********'表示
		CALL	MSGPR
		CALL	LETLN
MENU:		CALL	LETLN
		LD	DE,EMENU			;'1)EMM1 2)EMM2 3)EMM3 4)EXIT?'表示
		CALL	MSGPR
EKEY:		CALL	GETKEY				;1文字入力待ち
		CP	00H
		JR	Z,EKEY
		LD	B,A
EMM1:		CP	'1'				;EMM1
		JR	NZ,EMM2
		CALL	PRNT
		LD	A,0A4H				;EMM I/Oアドレス A4H
		CALL	EMMADRS
		JR	MENUS
EMM2:		CP	'2'				;EMM2
		JR	NZ,EMM3
		CALL	PRNT
		LD	A,0A8H				;EMM I/Oアドレス A8H
		CALL	EMMADRS
		JR	MENUS
EMM3:		CP	'3'				;EMM3
		JR	NZ,EMM4
		CALL	PRNT
		LD	A,0ACH				;EMM I/Oアドレス ACH
		CALL	EMMADRS
		JR	MENUS
EMM4:		CP	'4'				;EXIT
		JR	NZ,MENU
		CALL	PRNT
		CALL	LETLN
		JR	EXIT
		
	
MENUS:		LD	A,B
		LD	(LNAME+8),A			;EMM0～EMM3の文字を変更
		LD	(MSG1+3),A
		LD	(SNAME+8),A
		LD	(MSG4+3),A
MS2:		CALL	LETLN
		LD	DE,SMENU			;'1)EMMLOAD 2)EMMSAVE 3)EXIT ?'表示
		CALL	MSGPR
SKEY:		CALL	GETKEY				;1文字入力待ち
		CP	00H
		JR	Z,SKEY
		CP	'1'
		JR	NZ,SK1
		CALL	PRNT
		CALL	LETLN
		JR	LSTART				;EMMLOAD
SK1:		CP	'2'
		JR	NZ,SK2
		CALL	PRNT
		CALL	LETLN
		JP	SSTART				;EMMSAVE
SK2:		CP	'3'
		JR	NZ,MS2
		CALL	PRNT
EXIT:		CALL	LETLN
		LD	DE,ENDMSG			;'Run Again:[J 12A0]'表示
		CALL	MSGPR
		JP	MONITOR

LSTART:
		LD	DE,MSG3				;「FNAME:」を表示する
		CALL	MSGPR
		LD	DE,LBUF				;DOSファイル名を入力
		CALL	GETL
		LD	A,(LBUF)
		CP	0BH				;BREAKキーが押されたらキャンセル
		JP	Z,EXIT
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
		JR	LSTART				;そうでなければ「*FDL」処理を中止

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
		JP	LSTART

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
		JR	LSTART

;********************************** EMMLOAD処理本体 ************************************
ST0:		CALL	LETLN
ML1:		LD	DE,LNAME				;DOSファイル名表示
		CALL	MSGPR
		LD	DE,MSG0				;' LOAD START!'表示
		CALL	MSGPR

		CALL	EMMRESET

		CALL	MLHED				;DOSファイル名をArduinoに送信してファイルオープン
		JP	C,EXIT				;DOSファイル名のファイルが存在しない等のエラーがあれば中止
		
		LD	HL,8000H			;IFBにファイル長(8000H)をセット
		LD	(FSIZE),HL
		LD	HL,BUFF
		LD	(SADRS),HL			;IFBにメインメモリ格納先頭アドレス(BUFF)をセット
		LD	B,10H				;SDからのLOADを8000H(32KB)を16回繰り返し
		LD	C,30H				;ブロック名として0～Fを便宜的に表示
		
LOP2:		PUSH	BC
		PUSH	HL
		PUSH	DE
		CALL	BPRINT
		LD	DE,MSG2				;' BLOCK LOADING'を表示
		CALL	MSGPR
		POP	DE
		POP	HL

		CALL	MLDAT				;Arduinoから1ブロックを読み込み
		
		LD	HL,BUFF
		LD	DE,8000H
LOP1:		
		LD	A,(HL)
ML3:		OUT	(EMM+3),A			;BUFFから8000H(32KB)を1Byteずつ読み込み、EMMへ書き込み
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
		JP	EXIT				;終了

;************************ セットされたDOSファイル名でファイルオープンするためのMLHED処理 **************
MLHED:		PUSH	DE
		PUSH	BC
		PUSH	HL
ML0:		LD	DE,LNAME
		JP	MLHED2

;**************************** EMMSAVE ***************************************************
SSTART:
		CALL	LETLN
		LD	DE,SNAME			;DOSファイル名表示
		CALL	MSGPR
		LD	DE,MSG6				;' SAVE START!'表示
		CALL	MSGPR

		CALL	EMMRESET
		LD	A,01H				;IFBにファイル種別をセット(実は値が何でもOK)
		LD	(IBUFE),A
		LD	HL,SNAME				;IFBにファイル名をセット(実は値が何でもOK)
		LD	DE,FNAME
		LD	BC,10H
		LDIR
		
		LD	HL,8000H			;IFBにファイル長をセット(実は値が何でもOK)
		LD	(FSIZE),HL
		LD	HL,BUFF				;IFBにメインメモリ格納先頭アドレスをセット(実は値が何でもOK)
		LD	(SADRS),HL

		CALL	MSHED				;ArduinoにIFBを送信、DOSファイルオープン
		
		LD	HL,8000H			;IFBにファイル長(8000H)をセット
		LD	(FSIZE),HL
		LD	HL,BUFF
		LD	(SADRS),HL			;IFBにメインメモリ格納先頭アドレス(BUFF)をセット
		LD	B,10H				;EMMから8000H(32KB)分読み出しを16回繰り返し
		LD	C,30H				;ブロック名として0～Fを便宜的に表示
		
LOP3:		PUSH	BC

		PUSH	HL
		PUSH	DE
		CALL	BPRINT
		LD	DE,MSG5				;' BLOCK SAVEING'を表示
		CALL	MSGPR
		POP	DE
		POP	HL

		LD	HL,BUFF
		LD	DE,8000H
LOP4:
ML4:		
		IN	A,(EMM+3)			;EMMから8000H(32KB)分読み出してBUFFへ書き込み
		LD	(HL),A
		INC	HL
		DEC	DE
		LD	A,E
		OR	D
		JR	NZ,LOP4				;32KB分ループ
		
		CALL	MSDAT				;Arduinoへ1ブロックを送信し、SDへ書き込み

		POP	BC
		INC	C
		DJNZ	LOP3				;16回ループ
		
		CALL	LETLN
		LD	DE,MSG4				;'EMMx SAVE END'を表示
		CALL	MSGPR
		JP	EXIT				;終了


EMMRESET:
		XOR	A				;EMMアドレスリセット
ML2:		OUT	(EMM),A
		OUT	(EMM+1),A
		OUT	(EMM+2),A
		RET

EMMADRS:
		LD	(ML2+1),A
		INC	A
		LD	(ML2+3),A
		INC	A
		LD	(ML2+5),A
		INC	A
		LD	(ML3+1),A
		LD	(ML4+1),A
		RET

BPRINT:
		CALL	LETLN
		LD	A,C				;ブロック名としてA～Fを表示するための処理
		CP	3AH
		JR	C,ALPHA
		ADD	A,07H
ALPHA:		CALL	PRNT
		RET

TITLE:
		DB	'******** EMMLOAD,EMMSAVE MENU ********'
		DB	0DH

EMENU:		DB	'1)EMM1 2)EMM2 3)EMM3 4)EXIT?'
		DB	0DH

SMENU:		DB	'1)EMMLOAD 2)EMMSAVE 3)EXIT ?'
		DB	0DH

ENDMSG:		DB	'Run Again:[J 12A0]'
		DB	0DH

LNAME:
		DB	'PIO3034_1'
		DB	0DH
NAME_END:

SNAME:
		DB	'PIO3034-1-SAVE'
		DB	0DH
SNAME_END:


MSG0:		DB	' LOAD START!'
		DB	0DH

MSG1:
		DB	'EMM1 LOAD END'
		DB	0DH

MSG2:		DB	' BLOCK LOADING'
		DB	0DH
		
MSG3:		DB	'FNAME:'
MSG3END:
		DB	0DH

MSG4:
		DB	'EMM1 SAVE END'
		DB	0DH

MSG5:		DB	' BLOCK SAVEING'
		DB	0DH

MSG6:		DB	' SAVE START!'
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

