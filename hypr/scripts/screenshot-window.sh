#!/bin/bash

DIR=~/Pictures/Screenshots/$(date +%Y)/$(date +%m-%d)
mkdir -p "$DIR"

GEOMETRY=$(hyprctl clients -j | jq -r '.[] | "\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"' | slurp -r)

grim -g "$GEOMETRY" - | satty --filename - --output-filename "$DIR/$(date +%H-%M-%S).png" --copy-command "wl-copy"
