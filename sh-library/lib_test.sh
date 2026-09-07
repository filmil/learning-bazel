#! /bin/bash
# Smoke test for lib.sh. It keeps `bazel test //...` from failing with
# "no test targets found", and it checks that the library still defines and
# exports the function the binary calls.

source sh-library/lib.sh

readonly _got="$(say_world)"
readonly _want="World (from lib.sh)"

if [[ "${_got}" != "${_want}" ]]; then
  echo "say_world printed '${_got}'; wanted '${_want}'"
  exit 1
fi
