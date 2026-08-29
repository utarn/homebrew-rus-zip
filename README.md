# Homebrew tap for RUS ZIP

**The official Homebrew tap for [RUS ZIP](https://github.com/utarn/rus-zip) — a fast, cross-platform archive tool powered by Tar+Zstandard (`.zrus`).**

Add the tap once, then trust it (recent Homebrew versions refuse to load third-party taps until trusted):

```bash
brew tap utarn/rus-zip
brew trust utarn/rus-zip
```

**CLI** — installed by the Homebrew *formula* into `$(brew --prefix)/bin`:

```bash
brew install rus-zip
rus-zip --version
```

**Desktop** — installed by the Homebrew *cask* into `/Applications`:

```bash
brew install --cask rus-zip
open -a "RUS ZIP"
```

Upgrading later: `brew upgrade rus-zip` and `brew upgrade --cask rus-zip`.

Source code and release assets: [utarn/rus-zip](https://github.com/utarn/rus-zip).

## License

[MIT](https://github.com/utarn/rus-zip/blob/main/LICENSE)
