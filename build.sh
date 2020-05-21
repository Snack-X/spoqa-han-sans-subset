#!/usr/bin/env bash

for ext in ttf woff woff2; do
  for input_file in spoqa-han-sans/Original/SpoqaHanSans/*.ttf; do
    filename=$(basename "$input_file")
    title="${filename%.*}"
    output_file="subset/${title}Subset.${ext}"

    if [ $ext != ttf ]; then
        flavor=$ext
    fi

    pyftsubset "$input_file" --output-file="$output_file" \
      --flavor=$flavor --text-file=subset.txt --layout-features='*' \
      --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph \
      --notdef-outline --recommended-glyphs --name-IDs='*' --name-legacy \
      --name-languages='*' --drop-tables=
  done
done