# 親イメージ
FROM python:3.9

# 環境変数
ENV PYTHONUNBUFFERED 1

# 作業ディレクトリ
WORKDIR /api

# ログ出力先
RUN mkdir -p /var/log/app && \
    touch /var/log/app/info.log && \
    touch /var/log/app/warning.log && \
    touch /var/log/app/error.log 

# パッケージのインストール
ADD requirements.txt /api/
RUN pip install -r requirements.txt