#!/bin/sh -eu

font_dir="${XDG_DATA_HOME:-$HOME/.local/share}/fonts"
download_dir=$(mktemp -d)
trap 'rm -rf "$download_dir"' EXIT

npm pack --pack-destination "$download_dir" \
  @expo-google-fonts/lato@0.4.1 @expo-google-fonts/ibm-plex-mono@0.4.2

mkdir -p "$font_dir"
for archive in "$download_dir"/*.tgz; do
  tar -xzf "$archive" -C "$font_dir" --strip-components=2 --wildcards 'package/*/*.ttf'
done
