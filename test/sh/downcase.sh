#!/bin/sh
# Run from the repo's root

# Load the component
. sh/downcase.sh

testDowncaseFromNothing() {
  assertEquals "$(_downcase '')" ''
}

testDowncaseFromLower() {
  assertEquals "$(_downcase 'two words')" 'two words'
}

testDowncaseFromUpper() {
  assertEquals "$(_downcase 'TWO WORDS')" 'two words'
}

testDowncaseFromMixed() {
  assertEquals "$(_downcase 'twO WoRds')" 'two words'
}

testDowncaseNumbers() {
  assertEquals "$(_downcase 'twO WoRds123')" 'two words123'
}

# Load and run shUnit2.
. shunit2/shunit2
