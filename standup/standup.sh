#!/bin/sh

function standup() {
  # Determine the YAML file to parse. Use the most recent (highest number) file
  # in the dir unless the filename is passed.
  if [ -n "$1" ]; then
    file="$1"
  else
    file="$(ls | grep 'yaml' || true | sort -r | head -1)"
  fi

  # Bail if no YAML files found
  if [ "$file" == "" ]; then
    echo "No YAML files found"
    return 1
  fi

  # Copy the standup text into the clipboard via pbcopy.
  cat $file | \
    python -c 'import json, sys, yaml ; y=yaml.safe_load(sys.stdin.read()) ; json.dump(y, sys.stdout)' | \
    jq -r '.standup' | \
    sed 's/^ *//' | \
    pbcopy && \
    pbpaste
}
