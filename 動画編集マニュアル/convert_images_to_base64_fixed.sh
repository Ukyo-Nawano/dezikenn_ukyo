#!/bin/bash

# 出力ファイル名
output_file="manual_box_ready.md"

# マークダウンファイルの開始部分
cat > "$output_file" << 'EOF'
本マニュアルでは、動画編集ツール「Clipchamp」の基本的な使い方を説明します。

### 1. Clipchampとは
Clipchampは、Microsoftが提供する無料の動画編集ツールです。直感的な操作で、動画のトリミング、結合、BGMの追加、テキスト挿入など、基本的な動画編集を簡単に行うことができます。

### 2. Clipchampでの動画編集の基本的な流れ

EOF

# 各画像をBASE64エンコードして埋め込み
echo "1.  **Clipchampを開く**" >> "$output_file"
echo "    * Google ChromeなどのWebブラウザを開き、検索バーに「Clipchamp」と入力して検索します。" >> "$output_file"
echo "    ![Clipchamp検索画面](data:image/png;base64,$(base64 -i screenshots/00_04.png))" >> "$output_file"
echo "    * 検索結果から「Clipchamp | Microsoft acquired Clipchamp」と表示された公式ウェブサイトをクリックします。" >> "$output_file"
echo "    ![Clipchamp公式サイト](data:image/png;base64,$(base64 -i screenshots/00_07.png))" >> "$output_file"
echo "    * Clipchampのトップページが表示されたら、「無料で試す」ボタンをクリックします。" >> "$output_file"
echo "    ![Clipchampトップページ](data:image/png;base64,$(base64 -i screenshots/00_11.png))" >> "$output_file"
echo "    * アカウントの選択画面が表示されたら、Microsoftアカウントでログインします." >> "$output_file"
echo "" >> "$output_file"

echo "2.  **新しい動画プロジェクトを作成する**" >> "$output_file"
echo "    * Clipchampのホーム画面に移動したら、「新しいビデオを作成」をクリックします。" >> "$output_file"
echo "    ![新しいビデオ作成](data:image/png;base64,$(base64 -i screenshots/00_18.png))" >> "$output_file"
echo "    * 新しい動画編集画面が開きます." >> "$output_file"
echo "" >> "$output_file"

echo "3.  **動画ファイルをインポートする**" >> "$output_file"
echo "    * 画面左上の「メディアのインポート」をクリックします。" >> "$output_file"
echo "    ![メディアのインポート](data:image/png;base64,$(base64 -i screenshots/00_26.png))" >> "$output_file"
echo "    * ファイル選択ダイアログが表示されるので、編集したい動画ファイルを選択し、「開く」をクリックします。" >> "$output_file"
echo "        * **補足**: 動画ファイルは事前にPCに保存しておいてください。" >> "$output_file"
echo "    ![ファイル選択](data:image/png;base64,$(base64 -i screenshots/00_36.png))" >> "$output_file"
echo "    * インポートが完了すると、選択した動画ファイルがメディアライブラリに表示されます。" >> "$output_file"
echo "    ![メディアライブラリ](data:image/png;base64,$(base64 -i screenshots/00_37.png))" >> "$output_file"
echo "" >> "$output_file"

echo "4.  **動画をタイムラインに配置する**" >> "$output_file"
echo "    * インポートした動画ファイルを、メディアライブラリから画面下部のタイムライン（「＋テキストを追加」と表示されているエリア）にドラッグ＆ドロップします。" >> "$output_file"
echo "    ![タイムライン配置](data:image/png;base64,$(base64 -i screenshots/00_43.png))" >> "$output_file"
echo "    * タイムラインに動画が配置され、プレビュー画面で動画が再生可能になります。" >> "$output_file"
echo "    ![プレビュー画面](data:image/png;base64,$(base64 -i screenshots/00_44.png))" >> "$output_file"
echo "" >> "$output_file"

echo "5.  **不要な部分をカットする（トリミング）**" >> "$output_file"
echo "    * 動画の不要な部分を特定するために、プレビュー画面下の再生ヘッド（縦線）を動かして、カットしたい開始地点に移動させます。" >> "$output_file"
echo "    ![再生ヘッド移動](data:image/png;base64,$(base64 -i screenshots/01_23.png))" >> "$output_file"
echo "    * 再生ヘッドのアイコン（ハサミのマーク）をクリックするか、キーボードの「Ctrl + B」を押して動画を分割します。" >> "$output_file"
echo "    ![動画分割](data:image/png;base64,$(base64 -i screenshots/01_24.png))" >> "$output_file"
echo "    * 同様に、カットしたい終了地点に再生ヘッドを移動させ、再度ハサミのアイコンをクリックして動画を分割します。" >> "$output_file"
echo "    ![終了地点分割](data:image/png;base64,$(base64 -i screenshots/01_43.png))" >> "$output_file"
echo "    * 分割された不要なクリップ（動画の断片）を選択し、右クリックしてメニューから「削除」を選択します。" >> "$output_file"
echo "        * **注意点**: 削除したクリップは元に戻せないので、慎重に操作してください。" >> "$output_file"
echo "    ![不要クリップ削除](data:image/png;base64,$(base64 -i screenshots/02_35.png))" >> "$output_file"
echo "    * 削除後、残ったクリップの間に隙間ができた場合は、自動で詰めることができます。" >> "$output_file"
echo "    * 動画のつながりを確認するために、再生ボタン（▶）をクリックしてプレビューします。" >> "$output_file"
echo "    ![プレビュー再生](data:image/png;base64,$(base64 -i screenshots/02_58.png))" >> "$output_file"
echo "" >> "$output_file"

echo "6.  **画像ファイルをインポートして追加する**" >> "$output_file"
echo "    * 新しいタブでGoogle画像検索を開き、追加したい画像を検索します。" >> "$output_file"
echo "    ![Google画像検索](data:image/png;base64,$(base64 -i screenshots/03_52.png))" >> "$output_file"
echo "    * 検索結果から画像をクリックし、画像を右クリックして「画像をコピー」を選択します。" >> "$output_file"
echo "    ![画像コピー](data:image/png;base64,$(base64 -i screenshots/04_09.png))" >> "$output_file"
echo "    * Clipchampの画面に戻り、左上の「メディアのインポート」をクリックし、画像をインポートします。" >> "$output_file"
echo "    ![画像インポート](data:image/png;base64,$(base64 -i screenshots/04_18.png))" >> "$output_file"
echo "    * インポートされた画像ファイルをタイムラインの好きな位置にドラッグ＆ドロップします。" >> "$output_file"
echo "    ![画像配置](data:image/png;base64,$(base64 -i screenshots/04_20.png))" >> "$output_file"
echo "    * 画像を表示する長さを変更するには、タイムライン上の画像の端をドラッグして調整します。" >> "$output_file"
echo "    ![画像表示時間調整](data:image/png;base64,$(base64 -i screenshots/04_39.png))" >> "$output_file"
echo "    * 画像のサイズを変更するには、プレビュー画面上の画像の角をドラッグして調整します。" >> "$output_file"
echo "    ![画像サイズ調整](data:image/png;base64,$(base64 -i screenshots/04_50.png))" >> "$output_file"
echo "    * 動画と画像の表示順序を変更したい場合は、タイムライン上でクリップを上下にドラッグします。上にあるクリップが前面に表示されます。" >> "$output_file"
echo "    ![表示順序変更](data:image/png;base64,$(base64 -i screenshots/05_07.png))" >> "$output_file"
echo "    * 不要になった画像を削除する場合は、画像を選択し、右クリックして「プロジェクトから削除」を選択します。" >> "$output_file"
echo "    ![画像削除](data:image/png;base64,$(base64 -i screenshots/05_16.png))" >> "$output_file"
echo "" >> "$output_file"

echo "7.  **編集した動画をエクスポートする**" >> "$output_file"
echo "    * 動画編集が完了したら、画面右上の「エクスポート」ボタンをクリックします。" >> "$output_file"
echo "    ![エクスポート開始](data:image/png;base64,$(base64 -i screenshots/05_25.png))" >> "$output_file"
echo "    * 動画の解像度（画質）を選択します。通常は1080pが推奨されます。" >> "$output_file"
echo "        * **補足**: 解像度が高いほどファイルサイズが大きくなります。" >> "$output_file"
echo "    ![解像度選択](data:image/png;base64,$(base64 -i screenshots/05_28.png))" >> "$output_file"
echo "    * エクスポートが開始され、進捗状況が表示されます。" >> "$output_file"
echo "    ![エクスポート進捗](data:image/png;base64,$(base64 -i screenshots/05_37.png))" >> "$output_file"
echo "    * エクスポートが完了すると、動画がPCに自動的に保存されます。保存先は通常、ダウンロードフォルダです。" >> "$output_file"
echo "    ![エクスポート完了](data:image/png;base64,$(base64 -i screenshots/05_43.png))" >> "$output_file"

echo "BASE64エンコードされたマークダウンファイルが作成されました: $output_file" 