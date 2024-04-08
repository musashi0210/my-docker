#!/bin/bash

# オプション
OPTION_EXTRACT_AUDIO='-x --audio-format mp3 --audio-quality 0'
OPTION_FILE_NAME='-o ./%(title)s-%(id)s.%(ext)s'

# ./.envファイルを読み込んで変数として参照できるようにする
source ./.env

function main() {
  # フォルダを作成・移動
  local today=`date +%y-%m-%d`
  local folder_name="/media/movie/${today}"
  mkdir -p "${folder_name}"
  cd "${folder_name}" || exit 1

  # 実行
  for movie in "${movielist[@]}" ; do
    yt-dlp -i https://www.youtube.com/watch?v=${movie} ${OPTION_EXTRACT_AUDIO} ${OPTION_FILE_NAME}
  done
}

main
exit 0

# -o ・・・出力先の指定
