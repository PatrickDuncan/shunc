#!/bin/sh
# Run from the repo's root

# Load the component
. sh/upcase.sh

testUpcaseFromNothing() {
  assertEquals "$(_upcase '')" ''
}

testUpcaseFromLower() {
  assertEquals "$(_upcase 'two words')" 'TWO WORDS'
}

testUpcaseFromUpper() {
  assertEquals "$(_upcase 'TWO WORDS')" 'TWO WORDS'
}

testUpcaseFromMixed() {
  assertEquals "$(_upcase 'twO WoRds')" 'TWO WORDS'
}

testUpcaseNumbers() {
  assertEquals "$(_upcase 'twO WoRds123')" 'TWO WORDS123'
}

# Load and run shUnit2.
. shunit2/shunit2
