#!/bin/sh
# Run from the repo's root

# Load the component
. sh/length.sh

testLengthNoArgs() {
  assertEquals "$(_length)" 0
}

testLengthNoWord() {
  assertEquals "$(_length '')" 0
}

testLengthOneWord() {
  assertEquals "$(_length 'hello')" 5
}

testLengthTwoWords() {
  assertEquals "$(_length 'small Elephant')" 14
}

# Load and run shUnit2.
. shunit2/shunit2
