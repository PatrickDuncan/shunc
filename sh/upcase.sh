#!/bin/sh

_upcase() {
  printf "%s" "$1" | tr '[:lower:]' '[:upper:]'
}
