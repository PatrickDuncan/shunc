#!/bin/sh

# Dependent on _length
_char_at() {
  if [ $# != 2 ] || echo "$2" | grep -Eq "^-?[^0-9]+$"; then
    echo 'Incorrect arguments passed to _char_at'
    exit 1
  fi
  # Calculate index compatible with cut
  if echo "$2" | grep -Eq "^-"; then
    shunc_length=$(_length $1)
    shunc_index="$(($shunc_length + $2 + 1))"
  else
    shunc_index="$(($2 + 1))"
  fi
  shunc_char=$(printf "%s" "$1" | cut -c"$shunc_index")
  printf "%s" "$shunc_char"
  unset shunc_char shunc_index shunc_length
}
