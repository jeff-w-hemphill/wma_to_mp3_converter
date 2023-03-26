#!/bin/bash

# Recursive function to find and convert WMA files to MP3
function convert_wma_to_mp3 {
  for file in "$1"/*
  do
    if [ -d "$file" ]
    then
      # If file is a directory, call function recursively
      convert_wma_to_mp3 "$file"
    else
      # If file is a WMA file, convert it to MP3
      if [[ "${file##*.}" == "wma" ]]
      then
        # Check if file already exists in MP3 format
        mp3_file="${file%.*}.mp3"
        if [[ ! -f "$mp3_file" ]] || [[ "${mp3_file##*.}" != "mp3" ]]
        then
          # Convert WMA file to MP3
          echo "Converting $file to MP3 format..."
          ffmpeg -i "$file" -acodec libmp3lame -q:a 2 "${file%.*}.mp3"
        else
          echo "$mp3_file already exists and is not an MP3 file. Skipping..."
        fi
      fi
    fi
  done
}

# Call function with the directory to start from
convert_wma_to_mp3 "./"
