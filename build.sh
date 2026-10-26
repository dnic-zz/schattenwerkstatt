#!/bin/sh
# Baut index.html (eigenständige Seite für Datei-Weitergabe und GitHub Pages) aus src/schattenwerkstatt.html.
# Die Quelle selbst ist der Seiteninhalt ohne <html>/<head>, so wie ihn das Claude-Artifact erwartet.
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="de">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<style>:root{color-scheme:light}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat src/schattenwerkstatt.html
  printf '\n%s\n' '</body>' '</html>'
} > index.html
echo "index.html gebaut"
