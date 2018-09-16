#!/bin/sh
# Run from the repo's root

# Load the component
. sh/substring.sh

testSubstringNoArgs() {
  assertEquals "$(_substring)" ''
}

testSubstringIncorrectSecondArg() {
  assertFalse "$(_substring elephant d)"
}

testSubstringIncorrectThirdArg() {
  assertFalse "$(_substring elephant 3 d)"
}

testSubstringOneArg() {
  assertEquals "$(_substring elephant)" 'elephant'
}

testSubstringFullLength() {
  assertEquals "$(_substring 'elephant' 0 8)" 'elephant'
}

testSubstringOnlySecondArg() {
  assertEquals "$(_substring 'elephant' 5)" 'ant'
}

testSubstringBothBoundArgs1() {
  assertEquals "$(_substring 'elephant' 2 3)" 'e'
}

testSubstringBothBoundArgs2() {
  assertEquals "$(_substring 'Big Rock' 1 5)" 'ig R'
}

testSubstringSameBoundArgs() {
  assertEquals "$(_substring 'elephant' 3 3)" ''
}

# Load and run shUnit2.
. shunit2/shunit2
