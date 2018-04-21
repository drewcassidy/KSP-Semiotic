#!/bin/bash

mkdir -p Sprites

convert Semiotic.png -crop 128x128 +adjoin Sprites/Semiotic_%02d.png
convert Moon.png -crop 128x128 +adjoin Sprites/Moon_%02d.png
./solidify.sh Sprites/*

