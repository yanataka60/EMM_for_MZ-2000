# SDからEMMへLOAD、EMMからSDへSAVE for MZ-2000_SD

MZ-2000_SDを使い、EMMボートの512K S-RAMの内容をまるごとSDへSAVE、またSDにSAVEされたS-RAMの内容をまるごとEMMボートへLOADするプログラムです。

SDアクセスルーチンがF800h以降に存在する起動直後のMZ-2000_SDでの利用を想定しています。

F800h以降にSDアクセスルーチンが無い状態で実行すると暴走します。

SDカードに保存されたEMM DUMPファイルはMZTファイルのヘッダが付加され512KB+128Byte=524416Byteになります。

なお、EMM DUMPファイルはWindowsパソコンのエミュレーター2種類で利用可能であることを確認しています。

## 利用可能なエミュレーター

### kuran_kuranさんのEmuZ-80B/2200

武田さんの Common Source Code Project EmuZ-2200/EmuZ-80Bをkuran_kuranさんがMZ2000_SD、CMU-800、PIO-3034に対応させたエミュレーターです。

https://github.com/kuran-kuran/CommonSourceCodeProject/releases

　EMM DUMPファイルから128Byteのヘッダを除去し、PIO3034_x.BIN(PIO3034_0.BIN、PIO3034_1.BIN、PIO3034_2.BIN、PIO3034_3.BIN)にリネームしてmz2200.exeと同じフォルダに置けばエミュレーターから利用できるようになります。

　また、PIO3034_x.BIN(PIO3034_0.BIN、PIO3034_1.BIN、PIO3034_2.BIN、PIO3034_3.BIN)に128Byteのヘッダをつけて拡張子をmztとすればEMM DUMPファイルとして使えます。

　この時、付加する128Byteのヘッダの内容はどんな内容でも構わないので00hを128Byte等好きにつけてください。

### FUKUI, Toshioさんの"emz2000 / EmuZ-2000" TF-Edition

http://fukui.s17.xrea.com/retro/mz2080b/emulator.html

　kuran_kuranさんのEmuZ-80B/2200と基本的には同様です。

　EMM DUMPファイルから128Byteのヘッダを除去し、PIO-3034EMMx.MEM(PIO-3034EMM0.MEM、PIO-3034EMM1.MEM、PIO-3034EMM2.MEM、PIO-3034EMM3.MEM)にリネームしてEmuZ2000TF.exeと同じフォルダに置けばエミュレーターから利用できるようになります。

　ただし、"emz2000 / EmuZ-2000" TF-Editionは320KB EMMしかサポートしていないようです。512KBのPIO-3034EMMx.MEMを置いても"emz2000 / EmuZ-2000" TF-Editionで利用した後には320KBのPIO-3034EMMx.MEMになってしまいます。

　PIO-3034EMMx.MEM(PIO-3034EMM0.MEM、PIO-3034EMM1.MEM、PIO-3034EMM2.MEM、PIO-3034EMM3.MEM)に128Byteのヘッダをつけて拡張子をmztとすればEMM DUMPファイルとして使えます。ファイル長は320KB+128Byte=327808Byteですが、EMMへのLOADにそのまま使えます。

　付加する128Byteのヘッダの内容はどんな内容でも構わないので00hを128Byte等好きにつけてください。

## EMMSAVEの使い方
　Z80フォルダ、SDtoEMM,EMMtoSDフォルダ、EMMSAVEフォルダ内のEMM1SAVE.mzt、EMM2SAVE.mzt、EMM3SAVE.mztのいずれかをSDカードにコピーして使ってください。

　MZ-2000_SDで使うことが前提ですのでEMM0SAVE.mztは存在しません。

　EMMxSAVE.mzt(EMM1SAVE.mzt、EMM2SAVE.mzt、EMM3SAVE.mzt)を起動するとPIO3034-x-SAVE.mzt(PIO3034-1-SAVE.mzt、PIO3034-2-SAVE.mzt、PIO3034-3-SAVE.mzt)というファイルがSDカードに作成されます。

　同名のファイルがあると上書きされます。SDに保存されるファイル名はPIO3034-x-SAVE.mzt(PIO3034-1-SAVE.mzt、PIO3034-2-SAVE.mzt、PIO3034-3-SAVE.mzt)に固定されていて指定はできません。

例)

FD EMM1SAVE[CR]

FD EMM2SAVE[CR]

FD EMM3SAVE[CR]


## EMMLOADの使い方
　Z80フォルダ、SDtoEMM,EMMtoSDフォルダ、EMMLOADフォルダ内のEMM1LOAD.mzt、EMM2LOAD.mzt、EMM3LOAD.mztのいずれかをSDカードにコピーして使ってください。

　MZ-2000_SDで使うことが前提ですのでEMM0LOAD.mztは存在しません。

　起動すると「FNAME:」と聞いてきますので次のうちから選択して入力します。

### [BREAK]キー
　処理が中断されたものとしてMONITOR入力待ちに戻ります。

### DOSファイル名を入力せずそのまま[CR]キー
　起動したEMM1LOAD.mzt、EMM2LOAD.mzt、EMM3LOAD.mztに対応するPIO3034_x.mzt(PIO3034_1.mzt、PIO3034_2.mzt、PIO3034_3.mzt)をDOSファイル名としてSDカードからEMMに転送します。

### DOSファイル名を入力して[CR]キー
　入力されたDOSファイル名のファイルをSDカードからEMMに転送します。拡張子の「mzt」は省略可能です。

### *FDL xxx[CR]キー
　SDカードに保存されている文字列xxxから始まるDOSファイル名を一覧表示します。xxxを省略した場合はすべてのファイルが一覧表示対象となります。

　20件表示したところで指示待ちになるので打ち切るならSHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

　検索結果の行頭には「FNAME:」を付加して表示してあるのでLOADしたいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOADが可能です。

例)

FNAME:[CR]

FNAME:PIO-3034EMM1[CR]

FNAME:*FDL PIO[CR]
