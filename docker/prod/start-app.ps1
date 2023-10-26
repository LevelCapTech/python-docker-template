# 本番環境に異動
Set-Location -Path "<TODO:project_path>\docker\prod"

# コンテナ起動
docker-compose -p <TODO:application_name> up -d

# コンソール出力
Write-Output "Application has been started!"
