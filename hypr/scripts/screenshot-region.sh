#!/bin/bash

DIR=~/Pictures/Screenshots/$(date +%Y)/$(date +%m-%d)
mkdir -p "$DIR"

grim -g "$(slurp)" - | satty --filename - --output-filename "$DIR/$(date +%H-%M-%S).png" --copy-command "wl-copy"
