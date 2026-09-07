# learning-bazel

[![Test](https://github.com/filmil/learning-bazel/actions/workflows/test.yml/badge.svg)](https://github.com/filmil/learning-bazel/actions/workflows/test.yml)

My experiments learning bazel.

## Building

```bash
bazel build //...
bazel test //...
```

The repository pins its Bazel version in `.bazelversion`, so use `bazelisk`
installed under the name `bazel` and the right version is fetched for you.
