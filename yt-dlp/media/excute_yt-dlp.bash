#!/bin/bash

# オプション
OPTION_EXTRACT_AUDIO='-x --audio-format mp3 --audio-quality 0'
OPTION_FILE_NAME='-o ./%(title)s-%(id)s.%(ext)s'

# ./.envファイルを読み込んで変数として参照できるようにする
source ./.env

function main() {
  # フォルダ名に付ける日付
  local today=`date +%y-%m-%d`

  # forで順番に実行していく
  for playlist in "${playlists[@]}" ; do
    local playlist=(${playlist[@]})

    # プレイリスト名を取得
    local list_name=(${playlist[0]})
    
    # フォルダを作成・移動
    local folder_name="/media/playlist/${today}-${list_name}"
    mkdir -p "${folder_name}"
    cd "${folder_name}" || exit 1

    # 実行
    local id=(${playlist[1]})
    yt-dlp -i https://www.youtube.com/playlist?list=${id} ${OPTION_EXTRACT_AUDIO} ${OPTION_FILE_NAME}
  done
}

main
exit 0
