# 開発環境へ移動
Set-Location -Path "<TODO:project_path>\docker\dev"

# 滅びの魔法
docker-compose down --rmi all --volumes --remove-orphans

# ビルド実行
docker-compose build

# コンテナ起動
docker-compose -p dev-<TODO:application_name> up -d

# 起動待機
Start-Sleep -Milliseconds 3500

# 起動状態確認
docker ps

# コンソール出力
Write-Output "Application has been started!"

# コンテナ接続
docker container exec -it dev-<TODO:application_name>-app-1 bash