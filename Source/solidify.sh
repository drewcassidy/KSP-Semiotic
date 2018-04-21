#!/bin/bash
for file in "$@"
do
	echo "$file"
	convert \( "$file" \
	\( +clone -channel RGBA -blur 0x1 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x1 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x1 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x1 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x1 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x2 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x2 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x2 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x2 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x2 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x3 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x3 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x3 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x4 \) -compose DstOver -composite \
	\( +clone -channel RGBA -blur 0x4 \) -compose DstOver -composite \
	\) "$file" -compose CopyOpacity -composite "$file"
done
 
