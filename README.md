# Homebrew Tap for Toucan

This is the official [Homebrew](https://brew.sh) tap for installing the [Toucan CLI](https://github.com/toucansites/toucan), a static site generator written in Swift.

---

## Quick Install

```bash
brew tap toucansites/toucan
brew install toucan
```

Or install directly without tapping:

```bash
brew install toucansites/toucan/toucan
```

---

## Available Commands

This tap installs the following executables:

- `toucan`
- `toucan-init`
- `toucan-generate`
- `toucan-serve`
- `toucan-watch`

After installation, run:

```bash
toucan --help
```

---

## Updating

Upgrade to the latest version:

```bash
brew upgrade toucan
```

Force-refresh formula and reinstall:

```bash
brew update
brew reinstall toucan
```

---

## Verifying Installation

```bash
toucan --version
toucan-init --help
```

---

## Troubleshooting

If you see a SHA256 mismatch or install issue:

1. Run `brew update-reset`
2. Clear Homebrew's cache:

   ```bash
   rm -rf ~/Library/Caches/Homebrew/downloads/*
   ```

3. Reinstall:

   ```bash
   brew reinstall toucan
   ```

---

## Related Repositories

- [Toucan](https://github.com/toucansites/toucan)

---

## License

MIT — see the [Toucan source repository](https://github.com/toucansites/toucan) for license details.
