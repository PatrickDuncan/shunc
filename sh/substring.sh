#!/bin/sh

_substring() {
  # Lower/upper bound must be an integer. Lower must be > 0 and <= the upper
  if ([ ! -z "$2" ] && echo "$2" | grep -Eq "^[^0-9]+$") ||
     ([ ! -z "$3" ] && echo "$3" | grep -Eq "^[^0-9]+$") ||
     ([ ! -z "$2" ] && [ "$2" -lt 0 ]) ||
     ([ ! -z "$3" ] && [ "$2" -gt "$3" ])
  then
    echo 'Incorrect arguments passed to _substring'
    exit 1
  fi
  # cut's index starts at 1
  shunc_lower="$(($2 + 1))"
  shunc_substring=$(printf "%s" "$1" | cut -c"$shunc_lower-$3")
  printf "%s" "$shunc_substring"
  unset shunc_lower shunc_substring
}
