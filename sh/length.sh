#!/bin/sh

_length() {
  str="$1"
  printf "%s" "$(printf "%s" "$str" | wc -m | tr -d '[:space:]')"
}
