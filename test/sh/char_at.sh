#!/bin/sh
# Run from the repo's root

# Load the component
. sh/char_at.sh
. sh/length.sh

testCharAtNoArgs() {
  assertFalse "$(_char_at)"
}

testCharAtIncorrectSecondArg() {
  assertFalse "$(_char_at elephant d)"
}

testCharAtOneArg() {
  assertFalse "$(_char_at elephant)"
}

testCharAtFirstChar() {
  assertEquals "$(_char_at 'elephant' 0)" 'e'
}

testCharAtFifthChar() {
  assertEquals "$(_char_at 'elephant' 5)" 'a'
}

testCharAtLastChar() {
  assertEquals "$(_char_at 'elephant' 7)" 't'
}

testCharAtNegativeIndex() {
  assertEquals "$(_char_at 'elephant' -1)" 't'
}
testCharAtNegativeIndex2() {
  assertEquals "$(_char_at 'elephant' -4)" 'h'
}

testCharAtOutOfBounds() {
  assertEquals "$(_char_at 'elephant' 100)" ''
}

# Load and run shUnit2.
. shunit2/shunit2
