#!/bin/bash

mkdir -p Sprites
convert Sprites.png -crop 128x128 +adjoin Sprites/Semiotic_%02d.png
