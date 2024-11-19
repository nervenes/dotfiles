# dotfiles

My personal dotfiles for macOS.

### Installation

Prerequisites
- [Xcode](https://apps.apple.com/se/app/xcode/id497799835?mt=12)
- [Secretive](https://github.com/maxgoedjen/secretive/releases)
- [Homebrew](https://brew.sh)

1. Clone the repo ``git clone git@github.com:nervenes/dotfiles.git ~/.dotfiles``
2. Install plugins ``git -C ~/.dotfiles submodule update --init --recursive``
2. Install brew formulaes ``brew bundle install --file=~/.dotfiles/Brewfile`` 
3. Symlink dotfiles ``stow -d ~/.dotfiles -t ~ .``

### Uninstallation

1. Remove symlinks ``stow -d ~/.dotfiles -t ~ -D .``
2. Uninstall brew formulaes ``awk '/^brew / {print $2}' ~/.dotfiles/Brewfile | xargs brew uninstall && brew autoremove && brew cleanup``
3. Delete the repo ``rm -rf ~/.dotfiles``
