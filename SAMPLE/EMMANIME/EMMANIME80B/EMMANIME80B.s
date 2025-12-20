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

		XOR	A			;G-RAM1書き込み、G-RAM1,G-RAM2非表示
ANI1:		OUT	(0F4H),A
		CALL	GWRITE
		
		LD	A,03H			;G-RAM2書き込み、G-RAM1表示
		OUT	(0F4H),A
		CALL	GWRITE
		
		CALL	GETKEY			;何かキーが押されていれば終了
		CP	00H
		JR	NZ,MON

		LD	A,04H			;G-RAM1書き込み、G-RAM2表示
		JR	ANI1
		
MON:		LD	A,1FH			;メインメモリに切り替え
		OUT	(0E8H),A
		JP	MONITOR			;モニターに戻る


GWRITE:
		LD	HL,0E000H		;G-RAM先頭アドレス
		LD	DE,2000H		;G-RAMの大きさは1F3FHだが、2000HとしてEMMへの格納簡略化したため
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
		LD	B,02H
		
		XOR	A			;G-RAM1書き込み、G-RAM非表示
GC1:		OUT	(0F4H),A
		PUSH	BC
		
		LD	HL,E000H		;G-RAMクリア
		LD	DE,E001H
		LD	BC,1F3FH
		LD	(HL),00H
		LDIR
		
		POP	BC
		INC	A			;G-RAM2書き込み、G-RAM非表示
		DJNZ	GC1
		LD	A,1FH			;メインメモリに切り替え
		OUT	(0E8H),A
		
		RET
		
		END

