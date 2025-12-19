# EMMボード for MZ-2000

![TITLE](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM_MZ-2000.JPG)

　MZ-2000、MZ-2200、MZ-80B、MZ-2500(2000モード、80Bモード)用の512K S-RAM EMMボードを作ってみました。

　特徴としては、

　1)I/Oポートは、I・Oデータ機器 PIO-3034互換なのでそのままPIO-3034(320K EMM)として使えます。

　2)CR-2032のバックアップにより電源を切ってもメモリ内容が保持されます。

　3)I/Oポートから直接EMMを読み書きすれば512K外部RAMとして使えます。

　4)MZ-2000_SDと併用すれば512KまるごとSDカードからLOAD、SAVEが可能です。

　5)ジャンパによりEMM0～EMM3のいずれかに設定して使えます。(MZ-2000_SDと併用するときはEMM0としては使えません。EMM1～EMM3として使ってください。)

　6)おまけでアドレスカウンタリセットを付けました。

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

https://github.com/yanataka60/SOPtoDIP32

![SOP2DIP](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/SOP2DIP.JPG)

## I/Oポート
### EMM0
ジャンパピンA3、A2とも0の位置にします。

#### 注)EMM0の設定ではMZ-2000_SDと共存できません。MZ-2000_SDと共存させたい場合は、EMM1～EMM3の設定で使ってください。

![EMM0](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM0.JPG)

|アドレス|R/W|説明|
| ------------ | ------------ | ------------ |
|A0h|R|アドレスカウンタリセット|
|A0h|W|アドレスカウンタ Bit[7:0]|
|A1h|W|アドレスカウンタ Bit[15:8]|
|A2h|W|アドレスカウンタ Bit[18:16]|
|A3h|R|データ読み出し:アドレスカウンタ+1|
|A3h|W|データ書き込み:アドレスカウンタ+1|
### EMM1
ジャンパピンA3を0、A2を1の位置にします。

![EMM0](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM1.JPG)

|アドレス|R/W|説明|
| ------------ | ------------ | ------------ |
|A4h|R|アドレスカウンタリセット|
|A4h|W|アドレスカウンタ Bit[7:0]|
|A5h|W|アドレスカウンタ Bit[15:8]|
|A6h|W|アドレスカウンタ Bit[18:16]|
|A7h|R|データ読み出し:アドレスカウンタ+1|
|A7h|W|データ書き込み:アドレスカウンタ+1|
### EMM2
ジャンパピンA3を1、A2を0の位置にします。

![EMM0](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM2.JPG)

|アドレス|R/W|説明|
| ------------ | ------------ | ------------ |
|A8h|R|アドレスカウンタリセット|
|A8h|W|アドレスカウンタ Bit[7:0]|
|A9h|W|アドレスカウンタ Bit[15:8]|
|AAh|W|アドレスカウンタ Bit[18:16]|
|ABh|R|データ読み出し:アドレスカウンタ+1|
|ABh|W|データ書き込み:アドレスカウンタ+1|
### EMM3
ジャンパピンA3、A2とも1の位置にします。

![EMM0](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM3.JPG)

|アドレス|R/W|説明|
| ------------ | ------------ | ------------ |
|ACh|R|アドレスカウンタリセット|
|ACh|W|アドレスカウンタ Bit[7:0]|
|ADh|W|アドレスカウンタ Bit[15:8]|
|AEh|W|アドレスカウンタ Bit[18:16]|
|AFh|R|データ読み出し:アドレスカウンタ+1|
|AFh|W|データ書き込み:アドレスカウンタ+1|
