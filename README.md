# homebrew-tap

Homebrew formulae for multipile tools.

> [!NOTE]
> **multipile is in early development.** Commands, file formats and output can still change between releases. Try it, and [tell us what you find](https://github.com/multipile/homebrew-tap/issues).

## Install

```sh
brew install multipile/tap/pile
```

This installs [`pile`](https://github.com/multipile/pile-cli), the latest
release, on macOS and Linux, on arm64 and amd64. `brew upgrade` moves it to
the next release.

## How a formula changes

`Formula/pile.rb` is written by `scripts/update-formula`, from the version
of a pile-cli release and that release's `SHA256SUMS`:

```sh
scripts/update-formula 0.1.1 SHA256SUMS
```

Each pile-cli release opens a pull request here that does this, and it
merges once the checks pass. To change the formula itself, change the
script and run it again.
