# Using a binary from a different repository

This is an example of using a binary from a different repository
to help a script.

This script uses the [gotopt2][gotopt] binary for flag parsing.

  [gotopt]: https://github.com/filmil/gotopt2

# Example use:

``` bash
bazel run //sh-gotopt2:bin -- --help
```

The above command will stop, and print options help.

# Notes

- It was necessary to pull in the entire contents of the `WORKSPACE`
  file from `gotopt2` to make it compile locally.  Interesting.
- We didn't really need to compile it from source since binaries are
  available, we could probably have pulled the binary only.
- The `rlocation` stunt is needed to resolve the actual place of the
  `gotopt2` binary on disk.  This seems mightily weird, but that's
  what it is now.

