#!/bin/sh
set -eu

cd "$(dirname "$0")/.."
# Publish only this explicit list, never the repository or local configuration.
mkdir -p _site
for entry in _site/* _site/.[!.]* _site/..?*; do
  [ -e "$entry" ] || [ -L "$entry" ] || continue
  case "$entry" in
    _site/index.html|_site/styles.css|_site/app.js|_site/.nojekyll)
      if [ -L "$entry" ] || [ ! -f "$entry" ]; then
        echo "Unexpected output type: $entry" >&2
        exit 1
      fi
      ;;
    *) echo "Unexpected file in public output: $entry" >&2; exit 1 ;;
  esac
done
cp index.html styles.css app.js _site/
touch _site/.nojekyll
echo 'Static site prepared in _site/'
