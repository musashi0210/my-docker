#!/bin/bash

INPUT_PATH='/work/input'
OUTPUT_PATH='/work/output'

function main() {
  cd ${INPUT_PATH} || exit 1
  for mp4_file in ./*.mp4 ; do
    ffmpeg -i ${mp4_file} -r 20 ${OUTPUT_PATH}/${mp4_file%mp4}gif
  done 
}

main
exit 0
