MONITOR		EQU		00B1H
GETKEY		EQU		0832H
MSGPR		EQU		0889H
PRNT		EQU		08C6H
LETLN		EQU		0A2EH
EMM:		EQU		0A0H

		ORG	12A0H

		LD	DE,TITLE1			;'******** EMMANIME '表示
		CALL	MSGPR
		CALL	MZ
		JR	C,T80B
		CALL	GCLR
		LD	DE,TITLE2000
		JR	MENU
T80B:		CALL	GCLR2
		LD	DE,TITLE80B
MENU:		CALL	MSGPR
		LD	DE,TITLE2			;' ********'表示
		CALL	MSGPR

		CALL	LETLN
MENU0:		CALL	LETLN
		LD	DE,EMENU			;'0)EMM0 1)EMM1 2)EMM2 3)EMM3 4)EXIT?'表示
		CALL	MSGPR
EKEY:		CALL	GETKEY				;1文字入力待ち
		CP	00H
		JR	Z,EKEY
		LD	B,A
EMM0:		CP	'0'				;EMM0
		JR	NZ,EMM1
		CALL	PRNT
		LD	A,0A0H				;EMM I/Oアドレス A0H
		CALL	EMMADRS
		JR	MENUS
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
		JR	NZ,MENU0
		CALL	PRNT
		CALL	LETLN
		JP	MONITOR

MENUS:
		CALL	MZ
		JR	C,MZ80B

;***************************** MZ-2000 ************************************
MZ2000:
		CALL	GCLR

		CALL	EMMRESET

		LD	A,9FH			;G-RAMアクセス
		OUT	(0E8H),A

		XOR	A
		OUT	(0F6H),A		;G-RAM表示なし
		INC	A
ANI1:		OUT	(0F7H),A		;G-RAM(BLUE)書き込み
		CALL	GWRITE
		
		LD	A,01H
		OUT	(0F6H),A		;G-RAM(BLUE)表示
		INC	A
		OUT	(0F7H),A		;G-RAM(RED)書き込み
		CALL	GWRITE
		
		CALL	GETKEY			;何かキーが押されていれば終了
		CP	00H
		JR	NZ,MON

		LD	A,02H
		OUT	(0F6H),A		;G-RAM(RED)表示
		DEC	A
		JR	ANI1
		
MON:		LD	A,5FH			;メインメモリに切り替え
		OUT	(0E8H),A
		JP	MONITOR			;モニターに戻る


GWRITE:
		LD	HL,0C000H		;G-RAM先頭アドレス
		LD	DE,4000H		;G-RAMの大きさは3E7FHだが、4000HとしてEMMへの格納簡略化
LOP1:		
		IN	A,(EMM+3)		;EMMからG-RAMへ1画面分転送
		LD	(HL),A
		INC	HL
		DEC	DE
		LD	A,E
		OR	D
		JR	NZ,LOP1
		RET



GCLR:		LD	A,9FH			;G-RAMアクセス
		OUT	(0E8H),A
		LD	B,03H			;3画面分繰り返し
		
		LD	A,01H
GC1:		OUT	(0F7H),A
		PUSH	BC
		
		LD	HL,C000H		;G-RAMクリア
		LD	DE,C001H
		LD	BC,3E7FH
		LD	(HL),00H
		LDIR
		
		POP	BC
		INC	A
		DJNZ	GC1
		LD	A,5FH			;メインメモリに切り替え
		OUT	(0E8H),A
		
		RET
		
;***************************** MZ80B ********************************
MZ80B:
		CALL	GCLR2
		CALL	EMMRESET

		LD	A,9FH			;G-RAMアクセス
		OUT	(0E8H),A

		XOR	A			;G-RAM1書き込み、G-RAM1,G-RAM2非表示
ANI2:		OUT	(0F4H),A
		CALL	GWRITE2
		
		LD	A,03H			;G-RAM2書き込み、G-RAM1表示
		OUT	(0F4H),A
		CALL	GWRITE2
		
		CALL	GETKEY			;何かキーが押されていれば終了
		CP	00H
		JR	NZ,MON2

		LD	A,04H			;G-RAM1書き込み、G-RAM2表示
		JR	ANI2
		
MON2:		LD	A,1FH			;メインメモリに切り替え
		OUT	(0E8H),A
		JP	MONITOR			;モニターに戻る


GWRITE2:
		LD	HL,0E000H		;G-RAM先頭アドレス
		LD	DE,2000H		;G-RAMの大きさは1F3FHだが、2000HとしてEMMへの格納簡略化したため
LOP2:		
		IN	A,(EMM+3)		;EMMからG-RAMへ1画面分転送
		LD	(HL),A
		INC	HL
		DEC	DE
		LD	A,E
		OR	D
		JR	NZ,LOP2
		RET

GCLR2:		LD	A,9FH			;G-RAMアクセス
		OUT	(0E8H),A
		LD	B,02H
		
		XOR	A			;G-RAM1書き込み、G-RAM非表示
GC2:		OUT	(0F4H),A
		PUSH	BC
		
		LD	HL,E000H		;G-RAMクリア
		LD	DE,E001H
		LD	BC,1F3FH
		LD	(HL),00H
		LDIR
		
		POP	BC
		INC	A			;G-RAM2書き込み、G-RAM非表示
		DJNZ	GC2
		LD	A,1FH			;メインメモリに切り替え
		OUT	(0E8H),A
		
		RET
		
MZ:
		IN		A,(0E0H)               ;MZ-2000、MZ-80Bを判別
		CP		0FFH
		JP		NZ,MZ8
MZ2:		XOR		A
		RET
MZ8:		SCF
		RET

EMMADRS:
		LD	(EMMRESET+2),A
		INC	A
		LD	(EMMRESET+4),A
		INC	A
		LD	(EMMRESET+6),A
		INC	A
		LD	(LOP1+1),A
		LD	(LOP2+1),A
		RET

EMMRESET:
		XOR	A			;EMMアドレスリセット
		OUT	(EMM),A
		OUT	(EMM+1),A
		OUT	(EMM+2),A
		RET

TITLE1:
		DB	'******** EMMANIME '
		DB	0DH
TITLE2000:
		DB	'MZ-2000'
		DB	0DH
TITLE80B:
		DB	'MZ-80B'
		DB	0DH
TITLE2:
		DB	' ********'
		DB	0DH

EMENU:		DB	'0)EMM0 1)EMM1 2)EMM2 3)EMM3 4)EXIT?'
		DB	0DH

		END

