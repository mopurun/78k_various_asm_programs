「はじめての78Kマイコン」の付録基板(UPD78F9222)をアセンブリ言語で動かしてみました。

### WriteEZ2での書き込み

- あらかじめパラメータファイル等の設定をしておく。(Frequency=8.00MHz,Multiply rate=1.00,Speed=115200)
- SW4をPROG側にしてUSBをPCと接続する。ポートの設定をする。
- 生成したhexファイルを読み込む（生成するたびに読み込ませる）
- AutoProcedure(Epv)で書き込み
- SW4をRUN側にしてUSBを抜き差しして動作確認

Windows11、WriteEZ2 V1.00で動作確認しました。
