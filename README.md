# shunc

[![Build Status](https://travis-ci.org/PatrickDuncan/shunc.svg?branch=master)](https://travis-ci.org/PatrickDuncan/shunc)

The goal of this library is to make shell scripting easier for everyone. Your shell of preference should not matter! This library will automatically check `$SHELL` to determine how to inject the correct files in your script.

This script will not change the state of your variables. Meaning that if a function needs to declare a variable it will save the previous value and reset the variable's value after execution.

## Installation

1. Generate the script:
```
./bin/generate
```
2. The script will be in _dist_, move it into your own project.
3. Add this to the beginning of your script:
```
. <Path/To/New/Location>/shunc
```

## Examples

```sh
#!/bin/sh

. $HOME/dev/password_check/lib/shunc

[ "$(_length $1)" -gt 8 ] && echo PASS || echo FAIL
```

## Documentation

You can find documentation for the various functions on the [wiki](https://github.com/PatrickDuncan/shunc/wiki).

## Linting

```
docker run -e SHELLCHECK_OPTS="-e SC1091" -v "$PWD:/mnt" koalaman/shellcheck <FILE>
```
