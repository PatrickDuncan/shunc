#!/bin/sh

_length() {
  printf "%s" "$(printf "%s" "$1" | wc -m | tr -d '[:space:]')"
}
