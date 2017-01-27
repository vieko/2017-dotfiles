# My Dotfiles

## Clean OS X Setup

1. Install / Update OS X
2. Install Xcode
3. Install OS X Command Line Tools `xcode-select --install`
4. Copy public and private SSH keys to `~/.ssh`
5. Clone repo to `~/.dotfiles`
6. Append `/usr/local/bin/bash` to `/etc/shells`
7. Run `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
8. Run `install.sh` to start the installation
9. Make sure Dropbox is set up and synced.
10. [Install other apps](./apps.md)
11. Restore preferences `mackup restore`
12. Restart

## Thanks

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for the great resource
- [Dries Vints](https://github.com/driesvints/dotfiles) for a fresh take
- [Anish Athalye](https://github.com/anishathalye/dotbot) for Dotbot
- [Github does dotfiles](https://dotfiles.github.io/)

:heart:

## License

The MIT License. Please see [the license file](license.md) for more information.
