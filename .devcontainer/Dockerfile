# 使用するベースイメージ
FROM python:3

# OSのパッケージリストを更新
RUN apt-get update

# pipをアップデート
RUN pip install --upgrade pip

# ロケールの設定
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# 作業ディレクトリを設定
WORKDIR /app
