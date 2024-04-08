#!/bin/bash

# プレイリスト
playlists=(
  "名付けたいプレイリスト名 プレイリストID"
  "名付けたいプレイリスト名 プレイリストID"
)

# オプション
OPTION_EXTRACT_AUDIO='-x --audio-format mp3 --audio-quality 0'
OPTION_FILE_NAME='-o ./%(title)s-%(id)s.%(ext)s'

# ダウンロード済みの動画をスキップするために使用するファイル
ARCHIVE_FILE='./archive'

function main() {
  for playlist in "${playlists[@]}" ; do
    playlist=(${playlist[@]})

    # プレイリスト名のフォルダを作成・移動
    today=`date +%m-%d-%y`
    list_name=(${playlist[0]})
    mkdir "/media/${today}-${list_name}"
    cd "/media/${today}-${list_name}"

    # 実行
    id=(${playlist[1]})
    youtube-dl -i --download-archive ${ARCHIVE_FILE} https://www.youtube.com/playlist?list=${id} ${OPTION_EXTRACT_AUDIO} ${OPTION_FILE_NAME} --write-thumbnail
  done
}

main
exit
