FROM python:3-alpine

# mp3で出力するためにffmpegをインストール
RUN apk add --update --no-cache bash ffmpeg

# yt-dlpをインストール
RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp

WORKDIR /media
