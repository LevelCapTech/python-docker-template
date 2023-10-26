# 開発環境へ移動
Set-Location -Path "<TODO:project_path>\docker\prod"

# 滅びの魔法
docker-compose down --rmi all --volumes --remove-orphans

# ビルド実行
docker-compose build

# TODO:start-app.ps1を参照するように変更する
# コンテナ起動
docker-compose -p <TODO:application_name> up -d

# 起動待機
Start-Sleep -Milliseconds 3500

# 起動状態確認
docker ps
