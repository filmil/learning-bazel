#! /bin/bash

# Note that sourcing here is relative to the *top* level directory.
source sh-library/lib.sh

function bin::main() {
  echo Hello
  say_world
}

bin::main
