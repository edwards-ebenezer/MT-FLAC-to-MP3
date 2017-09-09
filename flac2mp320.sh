#!/bin/bash

f=$1
flac -cd "$f" | lame -q 0 --cbr -b 320 --noreplaygain --ignore-tag-errors --add-id3v2 - /tmp/"${f%.*}".mp3;
