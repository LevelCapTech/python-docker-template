# GitHubでリポジトリを作ったら、まずすること

## 前提条件

このテンプレートプロジェクトは、windows+docker(Windows版)をインストールしている人向けです。linuxの場合もこのテンプレートで環境構築できないわけ無いですが、カスタマイズが少し面倒かもしれません。

## プロジェクトを立ち上げた人

- [ ] 開発環境を初期整備する

1. Codespaceに接続する
2. init_repo.shを編集し、シェルスクリプトを実行する
```
replacement_map["<TODO:application_name>"]="sample-downloader"
replacement_map["<TODO:project_path>"]="d"
replacement_map["<TODO:application_code>"]="xxx"
replacement_map["<TODO:log_dir>"]="/d/Dropbox/logs"
```
3. dockerコンテナを一通り動かしてみる
4. 動かして問題が無かったら、init_repo.shを手動削除する
5. 変更したファイルをコミットしてpushする

## 開発者メンバーへの周知

まず、VSCodeをインストールしてください。
拡張機能のフィルタ条件に@recommendedを入力しワークスペースの推奨事項をすべてインストールする。

## さいごに

### このファイルを編集したい人へ

番号付きリストに改行を加えたいときは行末にスペースを2つ入れて、改行するとうまいように改行します。