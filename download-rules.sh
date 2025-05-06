#!/bin/sh
set -e

API_URL="https://api.github.com/repos/johnlindquist/rules-for-tools/contents/.cursor/rules"
RAW_URL="https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/.cursor/rules"

# Warn if jq is not installed
if ! command -v jq >/dev/null 2>&1; then
  echo "[WARNING] jq is not installed. Falling back to a less robust method for parsing file list." >&2
  echo "         For best results, install jq: brew install jq" >&2
  echo "         More info: https://github.com/jqlang/jq" >&2
fi

mkdir -p .cursor/rules
cd .cursor/rules

echo "Fetching rule file list..."

# Try to use jq if available, otherwise fallback to grep/sed/awk
if command -v jq >/dev/null 2>&1; then
  curl -fsSL "$API_URL" | jq -r '.[] | select(.name | endswith(".mdc")) | .name' | while read -r file; do
    echo "  - $file"
    curl -fsSLO "$RAW_URL/$file"
  done
else
  curl -fsSL "$API_URL" | grep '"name":' | grep '.mdc' | sed -E 's/.*"name": "([^"]+)".*/\1/' | while read -r file; do
    echo "  - $file"
    curl -fsSLO "$RAW_URL/$file"
  done
fi

echo "All rules installed to $(pwd)" 