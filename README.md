# EMM for MZ-2000

![TITLE](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM_MZ-2000.JPG)

　MZ-2000、MZ-2200、MZ-80B、MZ-2500(2000モード、80Bモード)用の512K S-RAM EMMボードを作ってみました。

　このボードの特徴としては、

　1)I/Oポートは、I・Oデータ機器 PIO-3034互換なのでそのままPIO-3034(320K EMM)として使えます。

　1)CR-2032のバックアップにより電源を切ってもメモリ内容が保存されます。

　2)I/Oポートから直接EMMを読み書きすれば512K外部RAMとして使えます。

　3)MZ-2000_SDと併用すれば512KまるごとSDカードからLOAD、SAVEが可能です。

　4)ジャンパによりEMM0～EMM3のいずれかに設定して使えます。(MZ-2000_SDと併用するときはEMM0としては使えません。EMM1～EMM3として使ってください。)

　なお、MZ-2000_SDと併用した場合のLOAD、SAVEプログラム、EMMボードを使ったパラパラアニメプログラムなどのSAMPLEについては、順次公開する予定です。

## 回路図
　KiCadフォルダ内にEMMとEMM&CMUの２種類があります。CMU-800を接続するにはCMU-800から出ているフラットケーブルのカードエッジコネクタを接続する必要があり、CMU-800所有者がスロット不足に悩まなくて済むようカードエッジをつけ足したもので回路は全く同じものです。

　お好きな方を使ってください。

[回路図](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/Kicad/EMM/MZ-2000_EMM.pdf)
![回路図](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/Kicad/EMM/MZ-2000_EMM_1.jpg)

[回路図](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/Kicad/EMM%26CMU/MZ-2000_EMM_CMU.pdf)
![回路図](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/Kicad/EMM%26CMU/MZ-2000_EMM_CMU_1.jpg)

## 部品表
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|C1-C15|積層セラミックコンデンサ 0.1uF|15||
|C16|積層セラミックコンデンサ 220pF|1||
|C17|電解コンデンサ 100uF|1||
|D1,D2|ダイオード 1S4|2|秋月電子通商など|
|R1|カーボン抵抗 100Ω|1||
|R2|カーボン抵抗 10k|1||
|S1,S2|3Pスライドスイッチ又は1x3ピンヘッダとジャンパーピン|1|秋月電子通商 SS12D01G4又はPH-1X3SG,MJ-254-6BK等|
|U1,U2|74LS04|2|樫木総業等|
|U3|74LS14|1|樫木総業等|
|U4,U15|74LS245|2|樫木総業等|
|U5|74LS30|1|樫木総業等|
|U6-U10|74LS193|5|樫木総業等|
|U11,U12|74LS138|2|樫木総業等|
|U13|SRAM HM628512|1|注1)|
|U14|74LS11|1|樫木総業等|
|BT1|ボタン電池基板取付用ホルダー CR2032用(小型タイプ)|1|秋月電子通商 CH25-2032LFなど|

注1)DIPで設計しています。SOPを入手した場合にはこちらの変換基板を使うことで装着できます。

![SOP2DIP](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/SOP2DIP.JPG)
