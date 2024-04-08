#!/bin/bash

INPUT_PATH='/work/input'
OUTPUT_PATH='/work/output'

function main() {
  cd ${INPUT_PATH} || exit 1
  for vob_file in ./*.VOB ; do
    ffmpeg -i ${vob_file} ${OUTPUT_PATH}/${vob_file%VOB}mp4
  done 
}

main
exit 0
