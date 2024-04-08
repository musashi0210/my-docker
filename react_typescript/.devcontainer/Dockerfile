# ベースイメージとバージョンの選択
FROM ubuntu:20.04

# 非対話型に切り替える
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    # 日本語設定
    language-pack-ja-base \
    language-pack-ja \
    # curl: URLからデータを転送するためのコマンドラインツール
    curl \
    # file: ファイルの種類を特定するためのユーティリティ
    file \
    # procps: /procファイルシステムを利用してシステム情報を表示する一連のコマンド（ps、topなど）
    procps \
    # vim: 高機能なテキストエディタ
    vim \
    # nano: 初心者にも扱いやすいシンプルなテキストエディタ
    nano \
    # less: ファイルコンテンツの閲覧に使用するページャープログラム
    less \
    # build-essential: C言語でのプログラミングに必要なコンパイラ（gccなど）、makeツール、その他必要なファイルを含むパッケージ群
    build-essential \
    # locales: システムのロケールを設定するためのパッケージ。文字コードや言語、通貨形式などの設定を含む
    locales \
    && apt-get clean \
    && apt-get auto-remove -y \
    && rm -rf /var/lib/apt/lists/*

# 日本語を使用できるように
ENV LANG=ja_JP.UTF-8

# less for japanese
ENV LESSCHARSET="utf-8"
