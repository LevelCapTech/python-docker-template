#!/bin/bash

# init_repo.sh
# このスクリプトは、テンプレートリポジトリから新しいリポジトリを作成する際に使用します。
# 特定のキーワードを新しいリポジトリの名前やパスに合わせて一括置換します。

# カレントディレクトリを取得
current_directory=$(pwd)

# 置換ターゲットと置換文字列を定義
# 必要に応じて、この辞書のエントリを編集してください。
declare -A replacement_map
replacement_map["<TODO:application_name>"]="sample-downloader"
replacement_map["<TODO:project_path>"]="d"
replacement_map["<TODO:application_code>"]="xxx"
replacement_map["<TODO:log_dir>"]="/d/Dropbox/logs"

# カレントディレクトリ内の .ipynb および .md 以外のファイルを取得し、置換を行う
find "$current_directory" -type f ! \( -name "*.ipynb" -o -name "*.md" -o -name "init_repo.sh" \) | while read -r filepath; do

    for target in "${!replacement_map[@]}"; do
        replacement="${replacement_map[$target]}"
        
        # grepでtargetを含むファイルだけにsed操作を適用
        if grep -q "$target" "$filepath"; then
            # sed の区切り文字を | に変更
            sed -i "s|$target|$replacement|g" "$filepath"
        fi
    done

done

echo "文字列の置換が完了しました。"
