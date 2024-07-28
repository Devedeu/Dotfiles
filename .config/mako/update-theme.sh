#!/bin/sh

. "${HOME}/.cache/wal/colors.sh"

conffile="/home/portocala2/.config/mako/config"

# Associative array, color name -> color code.
declare -A colors
colors=(
    ["background-color"]="$background"
    ["text-color"]="$foreground"
    ["border-color"]="$color5"
)

for color_name in "${!colors[@]}"; do
  # replace first occurance of each color in config file
  sed -i "0,/^$color_name.*/{s//$color_name=${colors[$color_name]}/}" $conffile
done

makoctl reload
