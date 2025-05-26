#!/bin/bash

sid="$SID" # Provided by SketchyBar for each space instance

active=$(yabai -m query --spaces --space | jq .index)
if [ "$sid" -eq "$active" ]; then
  sketchybar --set "space.$sid" label.color=0xffaaff00 # highlight active
else
  sketchybar --set "space.$sid" label.color=0xffffffff # normal color
fi
