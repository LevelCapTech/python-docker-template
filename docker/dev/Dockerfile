# 使用するベースイメージ
FROM python:3

# OSのパッケージリストを更新
RUN apt-get update

# pipをアップデート
RUN pip install --upgrade pip

# タイムゾーンをAsia/Tokyoに設定
RUN apt-get install -y tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone

# ロケールの設定
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# 作業ディレクトリを設定
WORKDIR /<TODO:application_code>

# requirements.txtを使用してPythonの依存関係をインストール
COPY . /<TODO:application_code>/
RUN pip install -r /<TODO:application_code>/requirements.txt

# 実行ファイルに実行権限を追加します
RUN chmod +x /<TODO:application_code>/run.sh

# pythonファイルに実行権限を付与します
RUN find /<TODO:application_code>/app -type f -name "*.py" -exec chmod +x {} \;

