MONITOR		EQU		00B1H
GETKEY		EQU		0832H

EMM		EQU		1			;指定したEMM番号用のEMMLOADを作成

#if emm == 0						;EMM I/Oポート設定
	EMM1		EQU		0A0H
#elif emm == 2
	EMM1		EQU		0A8H
#elif emm == 3
	EMM1		EQU		0ACH
#else
	EMM1		EQU		0A4H
#endif


		ORG	12A0H

START:
		CALL	GCLR

		XOR	A			;EMMアドレスリセット
		OUT	(EMM1),A
		OUT	(EMM1+1),A
		OUT	(EMM1+2),A

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
		IN	A,(EMM1+3)		;EMMからG-RAMへ1画面分転送
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
		
		END

