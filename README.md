# shunc

[![Build Status](https://travis-ci.org/PatrickDuncan/shunc.svg?branch=master)](https://travis-ci.org/PatrickDuncan/shunc)

The goal of this library is to make shell scripting easier for everyone. Your shell of preference should not matter! This library will automatically check `$SHELL` to determine how to inject the correct files in your script.

## Installation

1. Generate the script:
```
./bin/generate
```
2. The script will be in dist, move it into your own project.
3. Add this to the beginning of your script:
```
. <Path/To/New/Location>/shunc
```

### Examples

```sh
#!/bin/sh

. $HOME/dev/password_check/lib/shunc

[ "$(_length $1)" -gt 8 ] && echo PASS || echo FAIL
```
