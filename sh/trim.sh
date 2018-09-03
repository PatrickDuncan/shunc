#!/bin/sh

_trim() {
  printf "%s" "$1" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
}
