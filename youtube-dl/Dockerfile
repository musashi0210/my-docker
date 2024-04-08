FROM python:3-alpine

# youtube-dlをインストール
RUN pip install --upgrade pip && \
    pip install youtube-dl

# mp3で出力するためにffmpegをインストール
RUN apk add --update --no-cache bash ffmpeg

WORKDIR /media
