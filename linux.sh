#!/bin/bash
# Script to download the latest x64 linux version of custom ffmpeg build for yt-dlp
# The binary will be placed in the root dir of the app

if ls ffmpeg* 1> /dev/null 2>&1; then
    rm ffmpeg*
fi
# >> Check if curl is installed or nor
if ! command -V curl > /dev/null 2>&1; then
    echo "curl not installed, please install it and try again"
    exit
fi

curl -SL --progress-bar "https://github.com/paulsavluc/ffmpeg-builds/releases/download/v6/ffmpeg_linux_amd64" -o ffmpeg

chmod +x ffmpeg

