# ScienciaLAB Homebrew Tap

Homebrew casks for ScienciaLAB apps.

## Frost

[Frost](https://sciencialab.github.io/Frost/) is a menu bar manager for macOS, continuing [Ice](https://github.com/jordanbaird/Ice).

```sh
brew install --cask sciencialab/tap/frost
```

Frost isn't notarized by Apple yet, so macOS blocks its first launch. Clear the download flag before opening it:

```sh
xattr -dr com.apple.quarantine /Applications/Frost.app
```

Frost updates itself. `brew upgrade` also works, and `brew uninstall --zap --cask frost` removes Frost together with its settings.
