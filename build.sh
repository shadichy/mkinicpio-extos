#!/bin/sh

mkdir -p dist

MINIFY=./minifier/minifier.sh

for dir in hooks installs; do
  for file in "$dir"/*; do
    $MINIFY -sh /usr/bin/sh -o "dist/$file" "$file"
  done
done
