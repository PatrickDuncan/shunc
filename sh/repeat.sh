#!/bin/sh

_repeat() {
  if [ $# != 2 ] || echo "$2" | grep -Eq "^[^0-9]+$"; then
    echo 'Incorrect arguments passed to _repeat'
    exit 1
  fi
  for _ in $(seq 1 "$2"); do
    shunc_var1="$shunc_var1$1"
  done
  printf "%s" "$shunc_var1"
  unset shunc_var1
}
