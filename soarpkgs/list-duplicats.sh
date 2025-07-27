#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename=$1

tail -n +3 "$filename" | cut -d'|' -f2 | sed 's/^ *//; s/ *$//' | sort | uniq -d
