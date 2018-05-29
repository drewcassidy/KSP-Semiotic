#!/bin/bash

mkdir -p Sprites
#./solidify.sh Moon.png
#./solidify.sh Semiotic.png

convert Semiotic.png -define dds:compression=none -crop 128x128 +adjoin Sprites/Semiotic_%02d.dds
convert Moon.png -define dds:compression=none -crop 128x128 +adjoin Sprites/Moon_%02d.dds

cp Sprites/Moon_{0{0..9},{10..15}}.dds ../Assets/
cp Sprites/Semiotic_{0{0..9},{10..35}}.dds ../Assets

