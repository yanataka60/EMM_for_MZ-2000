MONITOR		EQU		00B1H
MSGPR		EQU		0889H
PRNT		EQU		08C6H
LETLN		EQU		0A2EH
IBUFE		EQU		1140H
FNAME		EQU		1141H
FSIZE		EQU		1152H
SADRS		EQU		1154H
MSHED		EQU		0F803H
MSDAT		EQU		0F806H

EMM		EQU		1			;指定したEMM番号用のEMMLOADを作成

#if emm == 2						;EMM I/Oポート設定
	EMM1		EQU		0A8H
#elif emm == 3
	EMM1		EQU		0ACH
#else
	EMM1		EQU		0A4H
#endif

		ORG	12A0H

START:		XOR	A				;EMMアドレスリセット
		OUT	(EMM1),A
		OUT	(EMM1+1),A
		OUT	(EMM1+2),A

		LD	A,01H				;IFBにファイル種別をセット(実は値が何でもOK)
		LD	(IBUFE),A
		LD	HL,NAME				;IFBにファイル名をセット(実は値が何でもOK)
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
		
LOP2:		PUSH	BC

		PUSH	HL
		PUSH	DE
		CALL	LETLN
		LD	A,C				;ブロック名としてA～Fを表示するための処理
		CP	3AH
		JR	C,ALPHA
		ADD	A,07H
ALPHA:		CALL	PRNT
		LD	DE,MSG2				;' BLOCK SAVEING'を表示
		CALL	MSGPR
		POP	DE
		POP	HL

		LD	HL,BUFF
		LD	DE,8000H
LOP1:		
		IN	A,(EMM1+3)			;EMMから8000H(32KB)分読み出してBUFFへ書き込み
		LD	(HL),A
		INC	HL
		DEC	DE
		LD	A,E
		OR	D
		JR	NZ,LOP1				;32KB分ループ
		
		CALL	MSDAT				;Arduinoへ1ブロックを送信し、SDへ書き込み

		POP	BC
		INC	C
		DJNZ	LOP2				;16回ループ
		
		CALL	LETLN
		LD	DE,MSG1				;'EMMx SAVE END'を表示
		CALL	MSGPR
		JP	MONITOR				;終了

NAME:

#if emm == 2
		DB	'PIO3034-2-SAVE'
#elif emm == 3
		DB	'PIO3034-3-SAVE'
#else
		DB	'PIO3034-1-SAVE'
#endif
		DB	0DH
NAME_END:

MSG1:
#if emm == 2
		DB	'EMM2 SAVE END'
#elif emm == 3
		DB	'EMM3 SAVE END'
#else
		DB	'EMM1 SAVE END'
#endif
		DB	0DH

MSG2:		DB	' BLOCK SAVEING'
		DB	0DH
BUFF:
		DS	8000H
		END

