#!/bin/bash

base="bhagavad-gita"

# Create directories
mkdir -p "$base/docs/commentaries"
mkdir -p "$base/chapters"
mkdir -p "$base/translations/english"
mkdir -p "$base/translations/hindi"
mkdir -p "$base/translations/other_languages"
mkdir -p "$base/audio"
mkdir -p "$base/scripts"
mkdir -p "$base/assets"

# Create files at base level
touch "$base/README.md"
touch "$base/LICENSE"
touch "$base/.gitignore"

# Create docs files
touch "$base/docs/overview.md"
touch "$base/docs/glossary.md"
touch "$base/docs/commentaries/shankaracharya.md"
touch "$base/docs/commentaries/madhvacharya.md"
touch "$base/docs/commentaries/ramanujacharya.md"

# Create chapters files (chapter01.md to chapter18.md)
for i in $(seq -w 1 18); do
  touch "$base/chapters/chapter${i}.md"
done

# Create translation files
touch "$base/translations/english/swami_vivekananda.md"
touch "$base/translations/english/gita_press.md"
touch "$base/translations/english/eknath_ahanekar.md"
touch "$base/translations/hindi/swami_ramanujan.md"

# Create audio files placeholders
touch "$base/audio/chapter01.mp3"

# Create scripts files
touch "$base/scripts/generate_html.py"
