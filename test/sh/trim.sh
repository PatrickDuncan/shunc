#!/bin/sh
# Run from the repo's root

# Load the component
. sh/trim.sh

testTrimNoArgs() {
  assertEquals "$(_trim)" ''
}

testTrimNoChange() {
  assertEquals "$(_trim 'Gurren Lagann')" 'Gurren Lagann'
}

testTrimLeftWhiteSpace() {
  assertEquals "$(_trim '  Arbitrary')" 'Arbitrary'
}

testTrimRightWhiteSpace() {
  assertEquals "$(_trim 'Arbitrary   ')" 'Arbitrary'
}

testTrimLeftRightWhiteSpace() {
  assertEquals "$(_trim '    Arbitrary    ')" 'Arbitrary'
}

testTrimNewLine() {
  assertEquals "$(_trim '  A \n new \nline  ')" 'A \n new \nline'
}

testTrimSpaceInbetween() {
  assertEquals "$(_trim '  Gurren Lagann  ')" 'Gurren Lagann'
}

# Load and run shUnit2.
. shunit2/shunit2
