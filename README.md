# EMMボード for MZ-2000

![TITLE](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/EMM_MZ-2000.JPG)

　MZ-2000、MZ-2200、MZ-80B、MZ-2500(2000モード、80Bモード)用の512K S-RAM EMMボードを作ってみました。

　特徴としては、

　1)I/Oポートは、I・Oデータ機器 PIO-3034互換なのでそのままPIO-3034(320K EMM)として使えます。

　2)CR-2032のバックアップにより電源を切ってもメモリ内容が保持されます。

### 2026.1.22 Rev1.2基板にてバッテリーバックアップが正常に動作するようになりました。

　3)スイッチにより書込み禁止にできます。

　4)I/Oポートから直接EMMを読み書きすれば512K外部RAMとして使えます。

　5)MZ-2000_SDと併用すれば512KまるごとSDカードからLOAD、SAVEが可能です。

　6)ジャンパによりEMM0～EMM3のいずれかに設定して使えます。(MZ-2000_SDと併用するときはEMM0としては使えません。EMM1～EMM3として使ってください。)

　7)おまけでアドレスカウンタリセットを付けました。


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
|D1-D3|ダイオード 1S4|3||
|R1|カーボン抵抗 100Ω|1||
|R2,R3|カーボン抵抗 10k|2||
|S1,S2|3Pスライドスイッチ又は1x3ピンヘッダとジャンパーピン|2|秋月電子通商 SS12D01G4又はPH-1X3SG,MJ-254-6BK等|
|S3|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4|
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

## SAMPLEプログラム
　SAMPLEフォルダ内にEMMANIME、EMMMENU、EMMCHECK、EMMTESTを置きました。

　使い方については、各フォルダ内のREADME.mdを参照してください。

## 初期基板をバッテリーバックアップ対応とするには
　以下に示すパターンカット、ジャンパ、追加部品(抵抗10k×1本、ダイオード1S4×1本)で改造することで初期基板をバッテリーバックアップ対応とすることが可能です。

　ただし、パターンカット個所がU2 74LS04 ICソケット内側にもあるのでEMMボード組み立て済みの場合にはICソケットを一旦取り外す必要があります。

　また、EMM基板とEMM&CMU基板ではパターンカットの個所が若干違いがあります。ジャンパは共通です。

### EMM基板パターンカット個所
　U2 74LS04の3Pin、5Pin、9Pin、11PinをGNDから切り離します。

　HM628512の29PinとU12 74LS138 12Pinとの接続をカットします。

　HM628512の22、24Pin、R2 10Kとの接続点とU5 74LS30 8Pinとの接続をカットします。

部品面全体
![cut0](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/emm_CUT(0).JPG)

部品面拡大1
![cut1](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/emm_CUT(1).JPG)

部品面拡大2
![cut2](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/emm_CUT(2).JPG)

ハンダ面全体
![cut3](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/emm_CUT(3).jpg)

ハンダ面拡大1
![cut4](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/emm_CUT(4).JPG)

ハンダ面拡大2
![cut5](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/emm_CUT(5).JPG)

### EMM&CMU基板パターンカット個所
　切り離すポイントはEMM基板と同じですが、基板上のカット位置は若干異なります。

部品面全体
![cut0](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/cmu_cut(0).JPG)

部品面拡大1
![cut1](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/cmu_cut(1).JPG)

ハンダ面全体
![cut2](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/cmu_cut(2).JPG)

ハンダ面拡大1
![cut3](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/cmu_cut(3).JPG)

ハンダ面拡大2
![cut4](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/cmu_cut(4).JPG)

### ジャンパ個所
　U12 74LS138 5PinとU2 74LS04 3Pin

　U2 74LS04 4Pinと5Pin

　U2 74LS04 6PinとU13 HM628512 24Pin

　U12 74LS138 12PinとU2 74LS04 11Pin

　U2 74LS04 10Pinと9Pin

　U2 74LS04 8Pinとダイオード 1S4 アノード

　ダイオード 1S4 カソードとU13 HM628512 29Pin

　U13 HM628512 29Pinと抵抗 10KとU13 HM628512 32Pin

ハンダ面全体
![cut1](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/jumper(1).JPG)

ハンダ面拡大1
![cut2](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/jumper(2).JPG)

ハンダ面拡大2
![cut3](https://github.com/yanataka60/EMM_for_MZ-2000/blob/main/JPEG/jumper(3).JPG)

## 追記
2025.12.20 SAMPLEプログラムを追加しました。

2025.12.23 EMMLOAD、EMMSAVEを統合し、EMMMENUとしました。

2025.12.23 EMMANIME2000、EMMANIME80Bを統合し、EMMANIMEとしました。

2025.12.27 EMMMENUにSDアクセスルーチンを内包しました。

2025.12.28 バッテリーバックアップしていてもメモリ内容が変わってしまう症状が時々発生しています。原因と対策を検討中です。

2026.1.1 簡単な修正では症状を抑えることが出来ないのでこのバージョンではバッテリーバックアップは断念し、対策を練りなおします。

2026.1.22 バッテリーバックアップ正常版(Rev1.2)に更新。初期基板をバッテリーバックアップ対応とするための改修方法を記述。
