# Base directory
$base = "."

# Define folder structure
$dirs = @(
    "$base\docs\commentaries",
    "$base\chapters",
    "$base\translations\english",
    "$base\translations\hindi",
    "$base\translations\other_languages",
    "$base\audio",
    "$base\scripts",
    "$base\assets"
)

# Create directories
foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

# Create files at base level
New-Item -Path "$base\README.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\LICENSE" -ItemType File -Force | Out-Null
New-Item -Path "$base\.gitignore" -ItemType File -Force | Out-Null

# Create docs files
New-Item -Path "$base\docs\overview.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\docs\glossary.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\docs\commentaries\shankaracharya.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\docs\commentaries\madhvacharya.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\docs\commentaries\ramanujacharya.md" -ItemType File -Force | Out-Null

# Create chapters files (chapter01.md to chapter18.md)
1..18 | ForEach-Object {
    $num = "{0:D2}" -f $_
    New-Item -Path "$base\chapters\chapter$num.md" -ItemType File -Force | Out-Null
}

# Create translations files for English and Hindi (add more if needed)
New-Item -Path "$base\translations\english\swami_vivekananda.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\translations\english\gita_press.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\translations\english\eknath_ahanekar.md" -ItemType File -Force | Out-Null
New-Item -Path "$base\translations\hindi\swami_ramanujan.md" -ItemType File -Force | Out-Null

# Create some audio files placeholders
New-Item -Path "$base\audio\chapter01.mp3" -ItemType File -Force | Out-Null

# Create scripts files
New-Item -Path "$base\scripts\generate_html.py" -ItemType File -Force | Out-Null
