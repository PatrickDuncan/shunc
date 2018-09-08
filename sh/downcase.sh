#!/bin/sh

_downcase() {
  printf "%s" "$1" | tr '[:upper:]' '[:lower:]'
}
