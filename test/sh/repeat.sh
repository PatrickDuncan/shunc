#!/bin/sh
# Run from the repo's root

# Load the component
. sh/repeat.sh

testRepeatNoArgs() {
  assertFalse "$(_repeat)"
}

testRepeatLetterRepeat() {
  assertEquals "$(_repeat d 5)" 'ddddd'
}

testRepeatLetterRepeatOnce() {
  assertEquals "$(_repeat d 1)" 'd'
}

testRepeatWordRepeat() {
  assertEquals "$(_repeat word 3)" 'wordwordword'
}

testRepeatSentenceRepeat() {
  assertEquals "$(_repeat 'A 3 lb dog.' 2)" 'A 3 lb dog.A 3 lb dog.'
}

# Load and run shUnit2.
. shunit2/shunit2
