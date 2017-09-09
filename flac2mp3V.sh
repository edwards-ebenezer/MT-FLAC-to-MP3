#!/bin/bash

f=$1
flac -cd "$f" | lame -m j -q 0 -V 0 --vbr-new --noreplaygain --ignore-tag-errors --add-id3v2 - /tmp/"${f%.*}".mp3;	
